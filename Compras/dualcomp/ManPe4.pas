unit ManPe4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, dxDBColorPickEdit,
  dxDBColorMemo, dxDBColorLookupEdit, dxDBColorEdit;

type
  TfmManPe4 = class(TfmShowPadrao)
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
    EdObsPed: TdxDBColorMemo;
    EdUfeEnt: TdxDBColorPickEdit;
    Label2: TLabel;
    Label3: TLabel;
    sbPsqCep: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbPsqCepClick(Sender: TObject);
    procedure EdCepEntExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    Cepanterior : string;
  end;

var
  fmManPe4: TfmManPe4;

implementation

uses dxDemoUtils, ShellApi, BbMensag, Bbgeral, PsqTra, AuxPsq, ManPed,
     ManPe2, PsqCep, ManGDB;

{$R *.DFM}

procedure TfmManPe4.FormCreate(Sender: TObject);
begin
  inherited;

  fmManPed.CmpPed.Edit;

  Cepanterior := fmManPed.CmpPedCepEnt.Value;

end;

procedure TfmManPe4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManPe4.FormShow(Sender: TObject);
begin
  inherited;
  EdCepEnt.SetFocus;
end;

procedure TfmManPe4.bRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManPe4.bContinuarClick(Sender: TObject);
begin

  fmManPed.CmpPedObsPed.Value := EdObsPed.Text;

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

procedure TfmManPe4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManPed.CmpPed.State <> dsBrowse then fmManPed.CmpPed.CancelUpdates;
end;

procedure TfmManPe4.sbPsqCepClick(Sender: TObject);
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

procedure TfmManPe4.EdCepEntExit(Sender: TObject);
begin
  if Trim( fmManPed.CmpPedCepEnt.Value ) <> '' then begin

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

procedure TfmManPe4.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.

