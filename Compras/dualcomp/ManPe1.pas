unit ManPe1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, dxDBColorPickEdit,
  dxDBColorLookupEdit, dxDBColorEdit;

type
  TfmManPe1 = class(TfmShowPadrao)
    CepTit: TwwQuery;
    CepTitNOMTIT: TStringField;
    CepTitABRTIT: TStringField;
    DsTit: TDataSource;
    PaintBox: TPaintBox;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    EdCepEnt: TdxDBColorEdit;
    EdTenEnt: TdxDBColorEdit;
    CbNomTit: TdxDBColorLookupEdit;
    EdEndEnt: TdxDBColorEdit;
    EdRefEnt: TdxDBColorEdit;
    EdBaiEnt: TdxDBColorEdit;
    EdCidEnt: TdxDBColorEdit;
    EdNumEnt: TdxDBColorEdit;
    Label9: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    EdUfeEnt: TdxDBColorPickEdit;
    sbPsqCep: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCepEntExit(Sender: TObject);
    procedure sbPsqCepClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    cepanterior : string;
  end;

var
  fmManPe1: TfmManPe1;

implementation

uses dxDemoUtils, ShellApi, Bbgeral, BbMensag, ManPed, ManPe2, PsqCep,
  ManGDB;

{$R *.DFM}

procedure TfmManPe1.FormCreate(Sender: TObject);
begin
  inherited;

  fmManPed.CmpPed.Edit;

end;

procedure TfmManPe1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManPe1.FormShow(Sender: TObject);
begin
  inherited;

  cepanterior := fmManPed.CmpPedCepEnt.Value;

  EdCepEnt.SetFocus;

end;

procedure TfmManPe1.bRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManPe1.bContinuarClick(Sender: TObject);
begin

  with fmManPed.CmpPed do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManPed.CmpPed.State = dsBrowse then fmManPed.CmpPed.Edit;

          EdCepEnt.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  try

     fmManPe2 := TfmManPe2.Create(Self);

     fmManPe2.ShowModal;

  finally

     FreeAndNil(fmManPe2);

  end;

  if fmManPed.Finalizar = 'S' then
     Close
  else
     begin

     fmManPed.CmpPed.Edit;

     EdCepEnt.SetFocus;

  end;
end;

procedure TfmManPe1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManPed.CmpPed.State <> dsBrowse then fmManPed.CmpPed.CancelUpdates;
end;

procedure TfmManPe1.EdCepEntExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManPed.CmpPedCepEnt.Value)) <> '' then begin

     if fmManPed.CmpPedCepEnt.Value <> cepanterior then begin

        with fmManPed.quSql,SQL do begin

             Close;
             Text := ' Select * From GerCep '+
                     ' Where NumCep = '''+fmManPed.CmpPedCepEnt.Value+'''';
             Open;

        end;

        fmManPed.CmpPedEndEnt.Value := fLimpaCep(fmManPed.quSql.FieldByName('EndCep').AsString);
        fmManPed.CmpPedTenEnt.Value := fmManPed.quSql.FieldByName('TipCep').AsString;
        fmManPed.CmpPedBaiEnt.Value := fmManPed.quSql.FieldByName('BaiCep').AsString;
        fmManPed.CmpPedCidEnt.Value := fmManPed.quSql.FieldByName('CidCep').AsString;
        fmManPed.CmpPedUfeEnt.Value := fmManPed.quSql.FieldByName('SigUfe').AsString;

     end;
  end;
end;

procedure TfmManPe1.sbPsqCepClick(Sender: TObject);
begin

  try

     fmPsqCep := TfmPsqCep.Create(Self);

     fmPsqCep.ShowModal;

     if Trim( fmPsqCep.sCepCli ) <> '' then begin

        if Trim( fmPsqCep.sCepCli ) <> '' then fmManPed.CmpPedCepEnt.Value := fmPsqCep.sCepCli;
        if Trim( fmPsqCep.sTenCli ) <> '' then fmManPed.CmpPedTenEnt.Value := fmPsqCep.sTenCli;
        if Trim( fmPsqCep.sEndCli ) <> '' then fmManPed.CmpPedEndEnt.Value := fmPsqCep.sEndCli;
        if Trim( fmPsqCep.sBaiCli ) <> '' then fmManPed.CmpPedBaiEnt.Value := fmPsqCep.sBaiCli;
        if Trim( fmPsqCep.sCidCli ) <> '' then fmManPed.CmpPedCidEnt.Value := fmPsqCep.sCidCli;
        if Trim( fmPsqCep.sUfeCli ) <> '' then fmManPed.CmpPedUfeEnt.Value := fmPsqCep.sUfeCli;

     end;

  finally

     FreeAndNil(fmPsqCep);

  end;

  EdNumEnt.SetFocus;

end;

procedure TfmManPe1.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe1.FormDestroy(Sender: TObject);
begin
  inherited;
  Screen.OnActiveControlChange := nil;
end;

end.

