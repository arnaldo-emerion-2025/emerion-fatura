unit PsqRe4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, FShowPadrao, dxDBColorEdit, dxDBColorCurrencyEdit,
  dxDBColorDateEdit, dxDBEdtr, dxDBColorLookupEdit, Buttons, Menus;

type
  TfmPsqRe4 = class(TfmShowPadrao)
    PedRe4: TwwQuery;
    DsPedRe4: TwwDataSource;
    PedRe4APEFOR: TStringField;
    PedRe4ULTCMP: TFloatField;
    PedRe4ULTQTD: TFloatField;
    PedRe4DULCMP: TDateTimeField;
    Panel2: TPanel;
    Label17: TLabel;
    Label21: TLabel;
    EdJurRe4: TdxDBColorCurrencyEdit;
    EdDs1Re4: TdxDBColorCurrencyEdit;
    Label32: TLabel;
    EdDs2Re4: TdxDBColorCurrencyEdit;
    Label33: TLabel;
    EdDs3Re4: TdxDBColorCurrencyEdit;
    Label35: TLabel;
    EdDs4Re4: TdxDBColorCurrencyEdit;
    Label36: TLabel;
    EdVluRe4: TdxDBColorCurrencyEdit;
    Label14: TLabel;
    EdPerIcm: TdxDBColorCurrencyEdit;
    EdPerIpi: TdxDBColorCurrencyEdit;
    Label10: TLabel;
    Label42: TLabel;
    EdPerMva: TdxDBColorCurrencyEdit;
    Label26: TLabel;
    Label37: TLabel;
    EdAcrRe4: TdxDBColorCurrencyEdit;
    Label19: TLabel;
    EdObsRe4: TdxDBColorEdit;
    Label27: TLabel;
    Label18: TLabel;
    EdValFin: TdxDBColorCurrencyEdit;
    EdQtpRe4: TdxDBColorCurrencyEdit;
    Label3: TLabel;
    EdQtdMin: TdxDBColorCurrencyEdit;
    Label4: TLabel;
    EdNomCon: TdxDBColorEdit;
    UpPedRe4: TUpdateSQL;
    PaintBox: TPaintBox;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label8: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    dxDBEdit28: TdxDBColorEdit;
    grRe4: ThGrid;
    PaintBox1: TPaintBox;
    EdPraEnt: TdxDBColorCurrencyEdit;
    Label22: TLabel;
    EdDteEnt: TdxDBColorDateEdit;
    EdDs5Re4: TdxDBColorCurrencyEdit;
    Label23: TLabel;
    PedRe4QTDREQ: TFloatField;
    Label25: TLabel;
    EdFlgCst: TdxDBCheckEdit;
    Label29: TLabel;
    PedRe4ID_PEDRE4: TIntegerField;
    PedRe4ID_PEDRE2: TIntegerField;
    PedRe4ID_CMPPFO: TIntegerField;
    PedRe4QTPRE4: TFloatField;
    PedRe4PRAENT: TIntegerField;
    PedRe4DTEENT: TDateTimeField;
    PedRe4QTDMIN: TFloatField;
    PedRe4VLURE4: TFloatField;
    PedRe4DS1RE4: TFloatField;
    PedRe4DS2RE4: TFloatField;
    PedRe4DS3RE4: TFloatField;
    PedRe4DS4RE4: TFloatField;
    PedRe4DS5RE4: TFloatField;
    PedRe4JURRE4: TFloatField;
    PedRe4ACRRE4: TFloatField;
    PedRe4PERIPI: TFloatField;
    PedRe4PERICM: TFloatField;
    PedRe4PERMVA: TFloatField;
    PedRe4TOTICM: TFloatField;
    PedRe4TOTSUB: TFloatField;
    PedRe4MARKUP: TFloatField;
    PedRe4VALFIN: TFloatField;
    PedRe4OBSRE4: TStringField;
    PedRe4NOMCON: TStringField;
    PedRe4QTAREQ: TFloatField;
    PedRe4QTNREQ: TFloatField;
    PedRe4SLDREQ: TFloatField;
    PedRe4FLGCST: TStringField;
    PedRe4DTEATU: TDateTimeField;
    PedRe4HREATU: TStringField;
    PedRe4CODUSU: TIntegerField;
    PedRe4FLGATU: TStringField;
    PedRe4FLGCOT: TStringField;
    Label28: TLabel;
    Label31: TLabel;
    EdQtdReq: TdxDBColorCurrencyEdit;
    Label5: TLabel;
    EdCodFor: TdxDBColorEdit;
    PedRe4CODFOR: TIntegerField;
    PedRe4FLGINT: TStringField;
    FinFor: TQuery;
    DsFinFor: TwwDataSource;
    FinForAPEFOR: TStringField;
    CbApeFor: TdxDBColorLookupEdit;
    bPsqFor: TSpeedButton;
    FinForCODFOR: TIntegerField;
    PedRe4NRORE4: TIntegerField;
    quSql: TwwQuery;
    PopupMenu1: TPopupMenu;
    IncluirNovo1: TMenuItem;
    ExcluirAmbiente1: TMenuItem;
    PedRe4CODPFO: TStringField;
    pnTexto: TLabel;
    pnQtdCot: TLabel;
    procedure incluir;
    procedure excluir;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdVluRe4Exit(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure EdNomConEnter(Sender: TObject);
    procedure EdPraEntExit(Sender: TObject);
    procedure grRe4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grRe4Enter(Sender: TObject);
    procedure DsPedRe4DataChange(Sender: TObject; Field: TField);
    procedure EdCodForKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodForEnter(Sender: TObject);
    procedure EdCodForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqForClick(Sender: TObject);
    procedure PedRe4NewRecord(DataSet: TDataSet);
    procedure EdCodForExit(Sender: TObject);
    procedure IncluirNovo1Click(Sender: TObject);
    procedure ExcluirAmbiente1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    pSaida : string;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqRe4: TfmPsqRe4;

implementation

uses Bbfuncao, ManGDB, dxDemoUtils, Bbgeral, Bbmensag, ManPed, AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmPsqRe4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if PedRe4.State <> dsBrowse then begin

        if EdCodFor.Enabled then begin

           pSaida := 'Nao';

           bPsqFor.Enabled := False;

           EdCodFor.Enabled := False;

           pSaida := 'Sim';
           
        end;
     
        PedRe4.CancelUpdates;

        grRe4.SetFocus;

        end
     else
        close;

  end;      
end;

procedure TfmPsqRe4.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqRe4.FormShow(Sender: TObject);
begin
  inherited;
  grRe4.SetFocus;
end;

procedure TfmPsqRe4.EdVluRe4Exit(Sender: TObject);
begin
  inherited;
  if PedRe4.State <> dsBrowse then begin
  
     PedRe4ValFin.Value := PedRe4VluRe4.Value;

     if PedRe4VluRe4.Value > 0 then begin

        PedRe4TotIcm.Value := 0;
        PedRe4TotSub.Value := 0;

        if PedRe4Ds1Re4.Value > 0 then PedRe4ValFin.Value := fRound(PedRe4ValFin.Value - ((PedRe4ValFin.Value * PedRe4Ds1Re4.Value)/100),4);
        if PedRe4Ds2Re4.Value > 0 then PedRe4ValFin.Value := fRound(PedRe4ValFin.Value - ((PedRe4ValFin.Value * PedRe4Ds2Re4.Value)/100),4);
        if PedRe4Ds3Re4.Value > 0 then PedRe4ValFin.Value := fRound(PedRe4ValFin.Value - ((PedRe4ValFin.Value * PedRe4Ds3Re4.Value)/100),4);
        if PedRe4Ds4Re4.Value > 0 then PedRe4ValFin.Value := fRound(PedRe4ValFin.Value - ((PedRe4ValFin.Value * PedRe4Ds4Re4.Value)/100),4);

        if PedRe4JurRe4.Value > 0 then PedRe4ValFin.Value := fRound(PedRe4ValFin.Value + ((PedRe4ValFin.Value * PedRe4JurRe4.Value)/100),4);
        if PedRe4AcrRe4.Value > 0 then PedRe4ValFin.Value := fRound(PedRe4ValFin.Value + ((PedRe4ValFin.Value * PedRe4AcrRe4.Value)/100),4);

        if PedRe4PerIcm.Value > 0 then PedRe4TotIcm.Value := fRound((PedRe4ValFin.Value * PedRe4PerIcm.Value)/100,4);

        if PedRe4PerIpi.Value > 0 then PedRe4ValFin.Value := fRound(PedRe4ValFin.Value + ((PedRe4ValFin.Value * PedRe4PerIpi.Value)/100),4);

        if PedRe4PerMva.Value > 0 then begin

           PedRe4TotSub.Value := fRound(PedRe4ValFin.Value + ((PedRe4ValFin.Value * PedRe4PerMva.Value)/100),4);

           PedRe4TotSub.Value := fRound(((PedRe4TotSub.Value * PedRe4PerIcm.Value)/100) - PedRe4TotIcm.Value,4);

           PedRe4ValFin.Value := fRound(PedRe4ValFin.Value + PedRe4TotSub.Value,4);

        end
     end;
  end;   
end;

procedure TfmPsqRe4.Panel2Exit(Sender: TObject);
var
  Id_PedRe2,Id_PedRe4 : integer;
begin
  inherited;
  if pSaida = 'Sim' then begin
  
     if PedRe4.State <> dsBrowse then begin

        if PedRe4CodFor.Value = 0 then fmsgErro('Campo de preenchimento obrigatorio não informado.',EdCodFor);
        if PedRe4QtpRe4.Value = 0 then fmsgErro('Campo de preenchimento obrigatorio não informado.',EdQtpRe4);
        if PedRe4VluRe4.Value = 0 then fmsgErro('Campo de preenchimento obrigatorio não informado.',EdVluRe4);

        Id_PedRe2 := fmManPed.PedRe2Id_PedRe2.Value;

        if PedRe4.State = dsInsert then begin

           if Trim(PedRe4CodPfo.Value) = '' then
              PedRe4CodPfo.Value := fmManPed.PedRe2CodClp.Value+'-'+
                                    fmManPed.PedRe2CodGru.Value+'.'+
                                    fmManPed.PedRe2CodSub.Value+'.'+
                                    fmManPed.PedRe2CodPro.Value;

           with PedRe4 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedRe4.State = dsBrowse then PedRe4.Edit;

                   EdCodFor.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedRe4.Close;
           PedRe4.Open;

           fmManPed.PedRes.Close;
           fmManPed.PedRes.Open;

           fmManPed.PedRe2.Close;
           fmManPed.PedRe2.Open;

           fmManPed.PedRe2.Locate('Id_PedRe2',Id_PedRe2,[LoPartialKey]);

           PedRe4.Append;

           EdCodFor.SetFocus;

           end
        else
           begin

           Id_PedRe4 := PedRe4Id_PedRe4.Value;

           with PedRe4 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedRe4.State <> dsBrowse then PedRe4.CancelUpdates;

                   EdNomCon.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedRe4.Close;
           PedRe4.Open;

           fmManPed.PedRes.Close;
           fmManPed.PedRes.Open;

           fmManPed.PedRe2.Close;
           fmManPed.PedRe2.Open;

           fmManPed.PedRe2.Locate('Id_PedRe2',Id_PedRe2,[LoPartialKey]);

           PedRe4.Locate('Id_PedRe4',Id_PedRe4,[LoPartialKey]);

           if PedRe4NroRe4.Value = fmManPed.PedRe2QtiRe4.Value then
              PedRe4.Append
           else
              begin

              PedRe4.Next;

              EdCodFor.Enabled := False;

              grRe4.SetFocus;

           end;
        end;
     end;
  end;   
end;

procedure TfmPsqRe4.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmPsqRe4.EdNomConEnter(Sender: TObject);
begin
  inherited;

  pnTexto.Caption := '';
  
  if PedRe4.State = dsBrowse then PedRe4.Edit;

end;

procedure TfmPsqRe4.EdPraEntExit(Sender: TObject);
begin
  inherited;
  PedRe4DteEnt.Value := fmManPed.PedResDtfRes.Value + PedRe4PraEnt.Value;
end;

procedure TfmPsqRe4.grRe4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Id_PedRe2,Id_PedRe4 : integer;
begin
  inherited;
  if key = 32 then begin

     if PedRe4Id_PedRe4.Value > 0 then begin

        Id_PedRe2 := fmManPed.PedRe2Id_PedRe2.Value;

        Id_PedRe4 := PedRe4Id_PedRe4.Value;
     
        PedRe4.Edit;

        if PedRe4FlgCot.Value = 'Nao' then
           PedRe4FlgCot.Value := 'Sim'
        else
           PedRe4FlgCot.Value := 'Nao';

        with PedRe4 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedRe4.State <> dsBrowse then PedRe4.CancelUpdates;

                grRe4.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedRe4.Close;
        PedRe4.Open;

        fmManPed.PedRes.Close;
        fmManPed.PedRes.Open;

        fmManPed.PedRe2.Close;
        fmManPed.PedRe2.Open;

        fmManPed.PedRe2.Locate('Id_PedRe2',Id_PedRe2,[LoPartialKey]);

        PedRe4.Locate('Id_PedRe4',Id_PedRe4,[LoPartialKey]);

     end;
  end;

  if key = 40 then begin // Tecla - Seta para Baixo //

     if PedRe4NroRe4.Value = fmManPed.PedRe2QtiRe4.Value then incluir;

  end;

  if key = 46 then excluir // Tecla - DEL //

end;

procedure TfmPsqRe4.grRe4Enter(Sender: TObject);
begin
  inherited;
  pnTexto.Caption := 'Barra de espaço-Confirmar envio de cotação ENTER-Alterar informações  Seta para Baixo- Avançar/Inserir novo fornecedor';
end;

procedure TfmPsqRe4.DsPedRe4DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if FinFor.Params[0].AsInteger <> PedRe4CodFor.Value then begin

     FinFor.Close;
     FinFor.Params[0].AsInteger := PedRe4CodFor.Value;
     FinFor.Open;

  end;
  
  if PedRe4FlgCot.Value = 'Sim' then begin

     if not EdNomCon.Enabled then begin

        EdNomCon.Enabled := True;
        EdQtpRe4.Enabled := True;
        EdQtdMin.Enabled := True;
        EdPraEnt.Enabled := True;
        EdVluRe4.Enabled := True;
        EdDs1Re4.Enabled := True;
        EdDs2Re4.Enabled := True;
        EdDs3Re4.Enabled := True;
        EdDs4Re4.Enabled := True;
        EdDs5Re4.Enabled := True;
        EdJurRe4.Enabled := True;
        EdAcrRe4.Enabled := True;
        EdPerIcm.Enabled := True;
        EdPerIpi.Enabled := True;
        EdPerMva.Enabled := True;
        EdObsRe4.Enabled := True;
        EdFlgCst.Enabled := True;
        EdQtdReq.Enabled := True;

     end;
     
     end
  else
     begin

     if EdNomCon.Enabled then begin

        EdNomCon.Enabled := False;
        EdQtpRe4.Enabled := False;
        EdQtdMin.Enabled := False;
        EdPraEnt.Enabled := False;
        EdVluRe4.Enabled := False;
        EdDs1Re4.Enabled := False;
        EdDs2Re4.Enabled := False;
        EdDs3Re4.Enabled := False;
        EdDs4Re4.Enabled := False;
        EdDs5Re4.Enabled := False;
        EdJurRe4.Enabled := False;
        EdAcrRe4.Enabled := False;
        EdPerIcm.Enabled := False;
        EdPerIpi.Enabled := False;
        EdPerMva.Enabled := False;
        EdObsRe4.Enabled := False;
        EdFlgCst.Enabled := False;
        EdQtdReq.Enabled := False;

     end;
  end;
end;

procedure TfmPsqRe4.EdCodForKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPsqRe4.EdCodForEnter(Sender: TObject);
begin
  inherited;
  pnTexto.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmPsqRe4.EdCodForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           PedRe4CodFor.Value := fmAuxIni.CodFor;

           EdCodFor.Text := IntToStr(PedRe4CodFor.Value);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if PedRe4CodFor.Value > 0 then EdNomCon.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           PedRe4CodFor.Value := fmAuxPsq.CodFor;

           EdCodFor.Text := IntToStr(PedRe4CodFor.Value);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if PedRe4CodFor.Value > 0 then EdNomCon.SetFocus;

  end;
end;

procedure TfmPsqRe4.bPsqForClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        PedRe4CodFor.Value := fmAuxIni.CodFor;

        EdCodFor.Text := IntToStr(PedRe4CodFor.Value);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if PedRe4CodFor.Value > 0 then EdNomCon.SetFocus;

end;

procedure TfmPsqRe4.PedRe4NewRecord(DataSet: TDataSet);
begin
  inherited;

  PedRe4.Disablecontrols;

  PedRe4Id_PedRe4.Value := 1;

  PedRe4Id_PedRe2.Value := fmManPed.PedRe2Id_PedRe2.Value;

  PedRe4QtpRe4.Value := 0;
  PedRe4PraEnt.Value := 0;
  PedRe4QtdMin.Value := 0;
  PedRe4VluRe4.Value := 0;
  PedRe4Ds1Re4.Value := 0;
  PedRe4Ds2Re4.Value := 0;
  PedRe4Ds3Re4.Value := 0;
  PedRe4Ds4Re4.Value := 0;
  PedRe4Ds5Re4.Value := 0;
  PedRe4JurRe4.Value := 0;
  PedRe4AcrRe4.Value := 0;
  PedRe4PerIpi.Value := 0;
  PedRe4PerIcm.Value := 0;
  PedRe4PerMva.Value := 0;
  PedRe4TotIcm.Value := 0;
  PedRe4TotSub.Value := 0;
  PedRe4Markup.Value := 0;
  PedRe4ValFin.Value := 0;
  PedRe4QtdReq.Value := 0;
  PedRe4QtaReq.Value := 0;
  PedRe4QtnReq.Value := 0;
  PedRe4SldReq.Value := 0;
  PedRe4FlgAtu.Value := ' ';  
  PedRe4FlgInt.Value := 'Nao';
  PedRe4FlgCst.Value := 'Nao';
  PedRe4FlgCot.Value := 'Sim';
  PedRe4CodUsu.Value := GUsu_Id;
  PedRe4DteEnt.Value := fmManPed.PedResDtfRes.Value;
  PedRe4NroRe4.Value := fmManPed.PedRe2QtiRe4.Value + 1;
  
  PedRe4.Enablecontrols;

  bPsqFor.Enabled := True;
  
  EdCodFor.Enabled := True;
  EdNomCon.Enabled := True;
  EdQtpRe4.Enabled := True;
  EdQtdMin.Enabled := True;
  EdPraEnt.Enabled := True;
  EdVluRe4.Enabled := True;
  EdDs1Re4.Enabled := True;
  EdDs2Re4.Enabled := True;
  EdDs3Re4.Enabled := True;
  EdDs4Re4.Enabled := True;
  EdDs5Re4.Enabled := True;
  EdJurRe4.Enabled := True;
  EdAcrRe4.Enabled := True;
  EdPerIcm.Enabled := True;
  EdPerIpi.Enabled := True;
  EdPerMva.Enabled := True;
  EdObsRe4.Enabled := True;
  EdFlgCst.Enabled := True;
  EdQtdReq.Enabled := True;

  EdCodFor.SetFocus;

end;

procedure TfmPsqRe4.EdCodForExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not grRe4.Focused then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedRe4.State <> dsBrowse then begin

           if PedRe4CodFor.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select FinFor.CodFor,'+
                           '        FinFor.ApeFor '+
                           ' From FinFor'+
                           ' Where FinFor.CodFor = '+ QuotedStr(IntToStr(PedRe4CodFor.Value));
                   Open;

              end;

              if quSql.FieldbyName('CodFor').AsInteger <> PedRe4CodFor.Value then
                 fmsgErro('Fornecedor Informado não localizado.',EdCodFor);

              end
           else
              fmsgErro('Campo de preenchimento obrigátorio não informado.',EdCodFor);

        end;
     end;

     end
  else
     begin

     if Tecla = 'UP' then begin

        if fmManPed.PedRe2QtiRe4.Value > 0 then begin

           bPsqFor.Enabled := False;
           
           EdCodFor.Enabled := False;

           if PedRe4.State <> dsBrowse then
              PedRe4.CancelUpdates
           else
              begin

              if not PedRe4.BOF then PedRe4.Prior;

           end;

           grRe4.SetFocus;

           end
        else
           EdCodFor.SetFocus;
           
     end;
  end;
end;

procedure TfmPsqRe4.incluir;
begin
  PedRe4.Append;
end;

procedure TfmPsqRe4.excluir;
var
  NroRe4,Id_PedRe2 : integer;
begin
  if PedRe4Id_PedRe4.Value > 0 then begin

     if PedRe4FlgInt.Value = 'Nao' then begin

        NroRe4 := PedRe4NroRe4.Value;

        Id_PedRe2 := fmManPed.PedRe2Id_PedRe2.Value;
        
        PedRe4.Delete;

        with PedRe4 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedRe4.State <> dsBrowse then PedRe4.CancelUpdates;

                PedRe4.Close;
                PedRe4.Open;

                fmManPed.PedRes.Close;
                fmManPed.PedRes.Open;

                fmManPed.PedRe2.Close;
                fmManPed.PedRe2.Open;

                fmManPed.PedRe2.Locate('Id_PedRe2',Id_PedRe2,[LoPartialKey]);

                PedRe4.Locate('Id_PedRe2;NroRe4',VarArrayOf([fmManPed.PedRe2Id_PedRe2.Value,NroRe4]),[LoPartialKey]);

                grRe4.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedRe4.Close;
        PedRe4.Open;

        fmManPed.PedRes.Close;
        fmManPed.PedRes.Open;

        fmManPed.PedRe2.Close;
        fmManPed.PedRe2.Open;

        fmManPed.PedRe2.Locate('Id_PedRe2',Id_PedRe2,[LoPartialKey]);

        if NroRe4 < fmManPed.PedRe2QtiRe4.Value then
           PedRe4.Locate('Id_PedRe2;NroRe4',VarArrayOf([fmManPed.PedRe2Id_PedRe2.Value,NroRe4]),[LoPartialKey])
        else
           begin

           if fmManPed.PedRe2QtiRe4.Value = 0 then
              PedRe4.Append
           else
              PedRe4.Last;

        end;

        end
     else
        fmsgErro('Operação não pode ser realizada. Lançamento realizado pelo sistema.',Nil);
        
  end;
end;

procedure TfmPsqRe4.IncluirNovo1Click(Sender: TObject);
begin
  inherited;
  incluir;
end;

procedure TfmPsqRe4.ExcluirAmbiente1Click(Sender: TObject);
begin
  inherited;
  excluir;
end;

procedure TfmPsqRe4.FormCreate(Sender: TObject);
begin
  inherited;
  pSaida := 'Sim';
end;

end.
