unit ManPe1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, dxDBColorLookupEdit,
  dxDBColorEdit;

type
  TfmManPe1 = class(TfmShowPadrao)
    FinTra: TwwQuery;
    dsTra: TwwDataSource;
    PaintBox: TPaintBox;
    Label24: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label3: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    EdCodTra: TdxDBColorEdit;
    EdNomTra: TdxDBColorEdit;
    EdCepTra: TdxDBColorEdit;
    EdTenTra: TdxDBColorEdit;
    EdApeTra: TdxDBColorEdit;
    EdEndTra: TdxDBColorEdit;
    EdRefTra: TdxDBColorEdit;
    EdBaiTra: TdxDBColorEdit;
    EdPrtTra: TdxDBColorEdit;
    EdFonTra: TdxDBColorEdit;
    EdEmaTra: TdxDBColorEdit;
    EdWebTra: TdxDBColorEdit;
    EdPrfTra: TdxDBColorEdit;
    EdFaxTra: TdxDBColorEdit;
    EdCidTra: TdxDBColorEdit;
    EdUfeTra: TdxDBColorLookupEdit;
    EdNumTra: TdxDBColorEdit;
    Label1: TLabel;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    LbText: TLabel;
    Label40: TLabel;
    Label39: TLabel;
    EdId_FinCie: TdxDBColorEdit;
    pnId_FinCie: TPanel;
    EdId_FinUfe: TdxDBColorEdit;
    pnId_FinUfe: TPanel;
    EdNomCie: TdxDBColorEdit;
    pnNomCie: TPanel;
    FinTraAPETRA: TStringField;
    FinTraNOMTRA: TStringField;
    FinTraCEPTRA: TStringField;
    FinTraTENTRA: TStringField;
    FinTraENDTRA: TStringField;
    FinTraNUMTRA: TStringField;
    FinTraREFTRA: TStringField;
    FinTraBAITRA: TStringField;
    FinTraCIDTRA: TStringField;
    FinTraSIGUFE: TStringField;
    FinTraID_FINUFE: TIntegerField;
    FinTraID_FINCIE: TIntegerField;
    FinTraPRTTRA: TStringField;
    FinTraFONTRA: TStringField;
    FinTraPRFTRA: TStringField;
    FinTraFAXTRA: TStringField;
    FinTraEMATRA: TStringField;
    FinTraWEBTRA: TStringField;
    FinCie: TwwQuery;
    FinCieNOMCIE: TStringField;
    DsFinCie: TwwDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCodTraExit(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure EdEmaTraDblClick(Sender: TObject);
    procedure EdWebTraDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodTraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodTraEnter(Sender: TObject);
    procedure EdCodTraKeyPress(Sender: TObject; var Key: Char);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPe1: TfmManPe1;

implementation

uses dxDemoUtils, ShellApi, BbMensag, AuxIni, AuxPsq, ManPed, ManPe2,
  ManGDB;

{$R *.DFM}

procedure TfmManPe1.FormCreate(Sender: TObject);
begin
  inherited;
  fmManPed.PedRes.Edit;
end;

procedure TfmManPe1.EdEmaTraDblClick(Sender: TObject);
var
cemail : string;
begin
  inherited;

  if Pos('@', EdEmaTra.Text)= 0 Then begin

     fMsgErro('E-Mail Incorreto',EdEmaTra);

     end
  else
     begin

     cEMail := 'mailto:' + Trim(EdEmaTra.Text) + ' <' + TrimLeft(TrimRight(EdEmaTra.Text)) + '>';
     ShellExecute(Handle, 'Open', PChar(cEMail), Nil, '', sw_ShowNormal);

  end;
end;

procedure TfmManPe1.EdWebTraDblClick(Sender: TObject);
var
pagina : string;
begin
  inherited;

  pagina := 'http://'+EdWebTra.Text;

  ShellExecute(0, Nil, PChar(pagina), Nil, Nil, sw_Normal);

end;

procedure TfmManPe1.EdCodTraKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'T';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodTra > 0 then begin

           fmManPed.PedResCodTra.Value := fmAuxIni.CodTra;

           EdCodTra.Text := IntToStr(fmAuxIni.CodTra);

           FinTra.Close;
           FinTra.Params[0].AsInteger := fmManPed.PedResCodTra.Value;
           FinTra.Open;

           if FinTraId_FinUfe.Value > 0 then
              pnId_FinUfe.Caption := IntToStr(FinTraId_FinUfe.Value)
           else
              pnId_FinUfe.Caption := '';

           if FinTraId_FinCie.Value > 0 then
              pnId_FinCie.Caption := IntToStr(FinTraId_FinCie.Value)
           else
              pnId_FinCie.Caption := '';

           FinCie.Close;
           FinCie.Params[0].AsInteger := FinTraId_FinCie.Value;
           FinCie.Open;

           pnNomCie.Caption := FinCieNomCie.Value;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'T';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodTra > 0 then begin

           fmManPed.PedResCodTra.Value := fmAuxPsq.CodTra;

           EdCodTra.Text := IntToStr(fmAuxPsq.CodTra);

           FinTra.Close;
           FinTra.Params[0].AsInteger := fmManPed.PedResCodTra.Value;
           FinTra.Open;

           if FinTraId_FinUfe.Value > 0 then
              pnId_FinUfe.Caption := IntToStr(FinTraId_FinUfe.Value)
           else
              pnId_FinUfe.Caption := '';

           if FinTraId_FinCie.Value > 0 then
              pnId_FinCie.Caption := IntToStr(FinTraId_FinCie.Value)
           else
              pnId_FinCie.Caption := '';

           FinCie.Close;
           FinCie.Params[0].AsInteger := FinTraId_FinCie.Value;
           FinCie.Open;

           pnNomCie.Caption := FinCieNomCie.Value;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManPe1.EdCodTraExit(Sender: TObject);
begin

  FinTra.Close;
  FinTra.Params[0].AsInteger := fmManPed.PedResCodTra.Value;
  FinTra.Open;

  if FinTraId_FinUfe.Value > 0 then 
     pnId_FinUfe.Caption := IntToStr(FinTraId_FinUfe.Value)
  else
     pnId_FinUfe.Caption := '';

  if FinTraId_FinCie.Value > 0 then
     pnId_FinCie.Caption := IntToStr(FinTraId_FinCie.Value)
  else
     pnId_FinCie.Caption := '';
  
  FinCie.Close;
  FinCie.Params[0].AsInteger := FinTraId_FinCie.Value;
  FinCie.Open;

  pnNomCie.Caption := FinCieNomCie.Value;

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
  if fmManPed.PedResCodTra.Value > 0 then begin

     EdCodTra.Text := IntToStr(fmManPed.PedResCodTra.Value);

     FinTra.Close;
     FinTra.Params[0].AsInteger := fmManPed.PedResCodTra.Value;
     FinTra.Open;

     if FinTraId_FinUfe.Value > 0 then
        pnId_FinUfe.Caption := IntToStr(FinTraId_FinUfe.Value)
     else
        pnId_FinUfe.Caption := '';

     if FinTraId_FinCie.Value > 0 then
        pnId_FinCie.Caption := IntToStr(FinTraId_FinCie.Value)
     else
        pnId_FinCie.Caption := '';

     FinCie.Close;
     FinCie.Params[0].AsInteger := FinTraId_FinCie.Value;
     FinCie.Open;

     pnNomCie.Caption := FinCieNomCie.Value;
     
  end;
  
  EdCodTra.SetFocus;

end;

procedure TfmManPe1.bRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManPe1.bContinuarClick(Sender: TObject);
begin

  ActiveControl := nil;
  
  if Trim(EdCodTra.Text) <> '' then fmManPed.PedResCodTra.Value := StrToInt(EdCodTra.Text);

  with fmManPed.PedRes do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManPed.PedRes.State = dsBrowse then fmManPed.PedRes.Edit;

          EdCodTra.SetFocus;

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

     fmManPed.PedRes.Close;
     fmManPed.PedRes.Open;
     
     fmManPed.PedRes.Edit;

     EdCodTra.SetFocus;

  end;
end;

procedure TfmManPe1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManPed.PedRes.State <> dsBrowse then fmManPed.PedRes.CancelUpdates;
end;

procedure TfmManPe1.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe1.EdCodTraEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmManPe1.EdCodTraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

end.

