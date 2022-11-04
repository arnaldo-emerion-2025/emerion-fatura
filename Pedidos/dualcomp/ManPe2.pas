unit ManPe2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, dxDBColorPickEdit,
  dxDBColorMemo, dxDBColorLookupEdit, dxDBColorEdit;

type
  TfmManPe2 = class(TfmShowPadrao)
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
    EdCepCli: TdxDBColorEdit;
    EdTenCli: TdxDBColorEdit;
    CbNomTit: TdxDBColorLookupEdit;
    EdEndCli: TdxDBColorEdit;
    EdRefCli: TdxDBColorEdit;
    EdBaiCli: TdxDBColorEdit;
    EdCidCli: TdxDBColorEdit;
    EdNumCli: TdxDBColorEdit;
    Label9: TLabel;
    Label12: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    EdObsRes: TdxDBColorMemo;
    EdUfeCli: TdxDBColorPickEdit;
    Label2: TLabel;
    Label3: TLabel;
    sbPsqCep: TSpeedButton;
    Label61: TLabel;
    EdCgeCli: TdxDBColorEdit;
    Label62: TLabel;
    EdIneCli: TdxDBColorEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EdNomEnt: TdxDBColorEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCepCliExit(Sender: TObject);
    procedure sbPsqCepClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCgeCliExit(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    cepanterior : string;
  end;

var
  fmManPe2: TfmManPe2;

implementation

uses dxDemoUtils, ShellApi, Bbgeral, BbMensag, ManPed, ManPe3, PsqCep,
  ManGDB;

{$R *.DFM}

procedure TfmManPe2.FormCreate(Sender: TObject);
begin
  inherited;

  fmManPed.PedRes.Edit;

end;

procedure TfmManPe2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManPe2.FormShow(Sender: TObject);
begin
  inherited;

  cepanterior := fmManPed.PedResCepCli.Value;

  if Trim( fmManPed.PedResCgeCli.Value ) <> '' then begin

     if Length(Trim( fmManPed.PedResCgeCli.Value )) > 11 then
        fmManPed.PedResCgeCli.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManPed.PedResCgeCli.EditMask := '!999.999.999\-99;0;';

     end
  else
     fmManPed.PedResCgeCli.EditMask := '';

  EdNomEnt.SetFocus;

end;

procedure TfmManPe2.bRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManPe2.bContinuarClick(Sender: TObject);
begin

  if fmManPed.PedRes.State = dsBrowse then fmManPed.PedRes.Edit;
  
  fmManPed.PedResObsRes.Value := EdObsRes.Text;

  with fmManPed.PedRes do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManPed.PedRes.State = dsBrowse then fmManPed.PedRes.Edit;

          EdCepCli.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  try

     fmManPe3 := TfmManPe3.Create(Self);
     fmManPe3.ShowModal;

  finally

     FreeAndNil(fmManPe3);

  end;

  if fmManPed.Finalizar = 'S' then
     Close
  else
     begin

     fmManPed.PedRes.Close;
     fmManPed.PedRes.Open;

     fmManPed.PedRes.Edit;

     EdCepCli.SetFocus;

  end;
end;

procedure TfmManPe2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManPed.PedRes.State <> dsBrowse then fmManPed.PedRes.CancelUpdates;
end;

procedure TfmManPe2.EdCepCliExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManPed.PedResCepCli.Value)) <> '' then begin

     if fmManPed.PedResCepCli.Value <> cepanterior then begin

        with fmManPed.quSql,SQL do begin

             Close;
             Text := ' Select * From GerCep '+
                     ' Where NumCep = '''+fmManPed.PedResCepCli.Value+'''';
             Open;

        end;

        fmManPed.PedResEndCli.Value := fLimpaCep(fmManPed.quSql.FieldByName('EndCep').AsString);
        fmManPed.PedResTenCli.Value := fmManPed.quSql.FieldByName('TipCep').AsString;
        fmManPed.PedResBaiCli.Value := fmManPed.quSql.FieldByName('BaiCep').AsString;
        fmManPed.PedResCidCli.Value := fmManPed.quSql.FieldByName('CidCep').AsString;
        fmManPed.PedResUfeCli.Value := fmManPed.quSql.FieldByName('SigUfe').AsString;

     end;
  end;
end;

procedure TfmManPe2.sbPsqCepClick(Sender: TObject);
begin

  try

     fmPsqCep := TfmPsqCep.Create(Self);

     fmPsqCep.ShowModal;

     if Trim( fmPsqCep.sCepCli ) <> '' then begin

        if Trim( fmPsqCep.sCepCli ) <> '' then fmManPed.PedResCepCli.Value := fmPsqCep.sCepCli;
        if Trim( fmPsqCep.sTenCli ) <> '' then fmManPed.PedResTenCli.Value := fmPsqCep.sTenCli;
        if Trim( fmPsqCep.sEndCli ) <> '' then fmManPed.PedResEndCli.Value := fmPsqCep.sEndCli;
        if Trim( fmPsqCep.sBaiCli ) <> '' then fmManPed.PedResBaiCli.Value := fmPsqCep.sBaiCli;
        if Trim( fmPsqCep.sCidCli ) <> '' then fmManPed.PedResCidCli.Value := fmPsqCep.sCidCli;
        if Trim( fmPsqCep.sUfeCli ) <> '' then fmManPed.PedResUfeCli.Value := fmPsqCep.sUfeCli;

     end;

  finally

     FreeAndNil(fmPsqCep);

  end;

  EdNumCli.SetFocus;

end;

procedure TfmManPe2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe2.EdCgeCliExit(Sender: TObject);
begin
  inherited;

  if Trim( fmManPed.PedResCgeCli.Value ) <> '' then begin

     if Length(Trim( fmManPed.PedResCgeCli.Value )) > 11 then
        fmManPed.PedResCgeCli.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManPed.PedResCgeCli.EditMask := '!999.999.999\-99;0;';

     end
  else
     fmManPed.PedResCgeCli.EditMask := '';

end;

end.

