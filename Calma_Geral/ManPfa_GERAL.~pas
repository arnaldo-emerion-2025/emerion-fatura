unit ManPfa_GERAL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, hNavigator, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery, StdCtrls,
  Mask, DBCtrls, hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, ComCtrls,
  wwdblook, Buttons, AlignEdit, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass,
  ppProd, ppReport, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, dxDBColorLookupEdit,
  dxDBColorCurrencyEdit, dxDBColorEdit, dxDBColorPickEdit, dxColorPickEdit,
  dxColorEdit, clipbrd;

type
  TfmManPfa_GERAL = class(TfmPadrao)
    EstPfa: TwwQuery;
    DsPfa: TwwDataSource;
    UpPfa: TUpdateSQL;
    quSql: TwwQuery;
    FinTCl: TwwQuery;
    FinTClNOMTCL: TStringField;
    FinTClCODTCL: TIntegerField;
    EstPfaTIPPFA: TStringField;
    EstPfaINTFIN: TStringField;
    EstPfaGERLIV: TStringField;
    EstPfaFRTICM: TFloatField;
    EstPfaICMFRT: TFloatField;
    EstPfaSEGICM: TFloatField;
    EstPfaICMSEG: TFloatField;
    EstPfaDESICM: TFloatField;
    EstPfaICMDES: TFloatField;
    EstPfaFRTIPI: TFloatField;
    EstPfaIPIFRT: TFloatField;
    EstPfaSEGIPI: TFloatField;
    EstPfaIPISEG: TFloatField;
    EstPfaDESIPI: TFloatField;
    EstPfaIPIDES: TFloatField;
    EstPfaATUEST: TStringField;
    EstPfaCONSUM: TStringField;
    pcPfa: TPageControl;
    pcPag1: TTabSheet;
    Shape3: TShape;
    Shape1: TShape;
    Label8: TLabel;
    Shape2: TShape;
    Label24: TLabel;
    Shape4: TShape;
    Shape11: TShape;
    Label25: TLabel;
    bbPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Panel1: TPanel;
    grPfa: ThGrid;
    pcPag2: TTabSheet;
    EdPsqCodPfa: TdxColorEdit;
    EdPsqTipPfa: TdxColorPickEdit;
    Label27: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    EdTipPfa: TdxDBColorPickEdit;
    EdCodPfa: TdxDBColorEdit;
    Label32: TLabel;
    EdCodCf1: TdxDBColorEdit;
    Label36: TLabel;
    EdLocPfa: TdxDBColorPickEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label26: TLabel;
    Label21: TLabel;
    Shape8: TShape;
    Label22: TLabel;
    Label23: TLabel;
    Label40: TLabel;
    nvPfa: ThDBNavigator;
    EdFrtIpi: TdxDBColorCurrencyEdit;
    EdSegIpi: TdxDBColorCurrencyEdit;
    EdDesIpi: TdxDBColorCurrencyEdit;
    EstPfaLOCPFA: TStringField;
    EstPfaCODCF1: TStringField;
    EstPfaCODCF2: TStringField;
    EstPfaCODPFA: TStringField;
    EstPfaDSRPFA: TStringField;
    EstPfaTXFICM: TStringField;
    EstPfaTXFIPI: TStringField;
    EdPsqDscPfa: TdxColorEdit;
    EdDscPfa: TdxDBColorEdit;
    Label11: TLabel;
    EdDsrPfa: TdxDBColorEdit;
    TxfIpi: TwwQuery;
    DsIpi: TwwDataSource;
    TxfIpiCODTXF: TStringField;
    TxfIpiTIPTXF: TStringField;
    TxfIpiDSRTXF: TStringField;
    DsIcm: TwwDataSource;
    TxfIcm: TwwQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    EstPfaDSCPFA: TStringField;
    Label10: TLabel;
    EdModPfa: TdxDBColorPickEdit;
    EstPfaMODPFA: TStringField;
    EstPfaCODIPI: TStringField;
    EstPfaTIPIPI: TStringField;
    EstPfaCODICM: TStringField;
    EstPfaTIPICM: TStringField;
    EstIcm: TwwQuery;
    EstIpi: TwwQuery;
    DsEstIpi: TwwDataSource;
    DsEstIcm: TwwDataSource;
    DsReport: TppDBPipeline;
    ppReport: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel50: TppLabel;
    dbReport: TppDetailBand;
    ppLabel64: TppLabel;
    ppCodCli: TppDBText;
    ppNomCli: TppDBText;
    ppLabel58: TppLabel;
    ppLabel71: TppLabel;
    ppLabel73: TppLabel;
    ppLabel78: TppLabel;
    ppLabel139: TppLabel;
    ppApeCli: TppDBText;
    ppCgcCli: TppDBText;
    ppLabel22: TppLabel;
    ppIntFin: TppDBText;
    ppAtuEst: TppDBText;
    ppConSum: TppDBText;
    ppLocPfa: TppDBText;
    ppLabel2: TppLabel;
    ppCodIpi: TppDBText;
    ppLabel3: TppLabel;
    ppCodIcm: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppTxfIcm: TppDBText;
    ppTxfIpi: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppIcmFrt: TppDBText;
    ppIcmSeg: TppDBText;
    ppIcmDes: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppIpiDes: TppDBText;
    ppIpiSeg: TppDBText;
    ppIpiFrt: TppDBText;
    ppLabel1: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel14: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    EstPfaNROPFA: TIntegerField;
    EstPfaTRBPIS: TStringField;
    EstPfaTRBCOF: TStringField;
    EstPis: TwwQuery;
    dsEstPis: TwwDataSource;
    EstPfaID_ESTPIS: TIntegerField;
    EstPfaID_ESTCOF: TIntegerField;
    EstCof: TwwQuery;
    DsEstCof: TwwDataSource;
    EstCofID_ESTCOF: TIntegerField;
    EstSip: TwwQuery;
    dsEstSip: TwwDataSource;
    EstPfaID_ESTSIP: TIntegerField;
    EstIpiCODIPI: TStringField;
    EstIpiTIPIPI: TStringField;
    EstIpiNOMIPI: TStringField;
    EstIpiREGIPI: TStringField;
    EstIpiTRBIPI: TStringField;
    EstIpiPERIPI: TFloatField;
    EstIpiREDIPI: TFloatField;
    EstIpiRECIPI: TFloatField;
    EstIpiBASIPI: TFloatField;
    EstIpiCLSIPI: TStringField;
    EstIpiPERIMP: TFloatField;
    EstIpiCODTXF: TStringField;
    EstIpiID_ESTNCM: TIntegerField;
    EstIcmCODICM: TStringField;
    EstIcmTIPICM: TStringField;
    EstIcmNOMICM: TStringField;
    EstIcmTRBICM: TStringField;
    EstIcmPERICM: TFloatField;
    EstIcmREDICM: TFloatField;
    EstIcmRECICM: TFloatField;
    EstIcmBASICM: TFloatField;
    EstIcmINCREV: TFloatField;
    EstIcmINCFIN: TFloatField;
    EstIcmITECON: TStringField;
    EstIcmCODST1: TStringField;
    EstIcmCODST2: TStringField;
    EstPisID_ESTPIS: TIntegerField;
    EstPisNOMPIS: TStringField;
    EstPisSIGNFE: TStringField;
    EstSipID_ESTSIP: TIntegerField;
    EstSipNOMSIP: TStringField;
    EstSipTIPSIP: TStringField;
    EstSipSIGNFE: TStringField;
    EstCofSIGNFE: TStringField;
    EstCofNOMCOF: TStringField;
    EstPfasignfePis: TStringField;
    EstPfasignfeCof: TStringField;
    EstPfasignfeSip: TStringField;
    Label45: TLabel;
    edTipClass: TdxColorPickEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    CbNomPis: TdxDBColorLookupEdit;
    edCSTPIS: TdxDBColorEdit;
    GroupBox2: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    EdTxfIcm: TdxDBColorEdit;
    CbNomTxfIcm: TdxDBColorLookupEdit;
    co: TdxDBColorEdit;
    CbNomIcm: TdxDBColorLookupEdit;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label16: TLabel;
    EdTxfIpi: TdxDBColorEdit;
    CbNomTxfIpi: TdxDBColorLookupEdit;
    EdCodIpi: TdxDBColorEdit;
    CbNomIpi: TdxDBColorLookupEdit;
    GroupBox4: TGroupBox;
    Label7: TLabel;
    CbNomCof: TdxDBColorLookupEdit;
    edCSTCOF: TdxDBColorEdit;
    Label18: TLabel;
    EdTrbCof: TdxDBColorPickEdit;
    Label17: TLabel;
    EdTrbPis: TdxDBColorPickEdit;
    GroupBox5: TGroupBox;
    Label34: TLabel;
    Label38: TLabel;
    EdIntFin: TdxDBColorPickEdit;
    EdAtuEst: TdxDBColorPickEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label41: TLabel;
    EdId_EstSip: TdxDBColorEdit;
    CbNomSip: TdxDBColorLookupEdit;
    dxDBColorEdit1: TdxDBColorEdit;
    edAliquotaCof: TdxDBColorCurrencyEdit;
    Label35: TLabel;
    edAliquotaPis: TdxDBColorCurrencyEdit;
    Label37: TLabel;
    EstPfaALIQPIS: TFloatField;
    EstPfaALIQCOF: TFloatField;
    EstPfaCSTPIS: TStringField;
    EstPfaCSTCOF: TStringField;
    TxfIpiDSCTXF: TMemoField;
    TxfIcmDSCTXF: TMemoField;
    Shape7: TShape;
    Label2: TLabel;
    Label44: TLabel;
    EdFrtIcm: TdxDBColorCurrencyEdit;
    EdSegIcm: TdxDBColorCurrencyEdit;
    EdDesIcm: TdxDBColorCurrencyEdit;
    EdConSum: TdxDBColorPickEdit;
    Label12: TLabel;
    dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit;
    Label3: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label31: TLabel;
    Shape9: TShape;
    Label33: TLabel;
    Label39: TLabel;
    dxDBColorCurrencyEdit4: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit5: TdxDBColorCurrencyEdit;
    dxDBColorPickEdit1: TdxDBColorPickEdit;
    dxDBColorCurrencyEdit6: TdxDBColorCurrencyEdit;
    Label42: TLabel;
    Label43: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    dxDBColorCurrencyEdit3: TdxDBColorCurrencyEdit;
    EstPfaCONSUMST: TFloatField;
    EstPfaDSCICM: TFloatField;
    EstPfaDSCIPI: TFloatField;
    EstPfaFRTSUB: TFloatField;
    EstPfaSEGSUB: TFloatField;
    EstPfaDESSUB: TFloatField;
    EstPfaDSCSUB: TFloatField;
    EstIcmUFEMITENTE: TStringField;
    EstIcmCODREGTRIB: TIntegerField;
    EstIcmID_ESTICM: TIntegerField;
    EstPfaID_ESTICM: TIntegerField;
    EstPfaID_ESTIPI: TIntegerField;
    Shape10: TShape;
    Shape12: TShape;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    dxDBColorPickEdit2: TdxDBColorPickEdit;
    dxDBColorCurrencyEdit7: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit8: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit9: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit10: TdxDBColorCurrencyEdit;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    dxDBColorPickEdit3: TdxDBColorPickEdit;
    dxDBColorCurrencyEdit11: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit12: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit13: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit14: TdxDBColorCurrencyEdit;
    Label58: TLabel;
    Label59: TLabel;
    ckStatus: TDBCheckBox;
    Label60: TLabel;
    edPsqStatus: TdxColorPickEdit;
    EstPfaFRTPIS: TFloatField;
    EstPfaSEGPIS: TFloatField;
    EstPfaDESPIS: TFloatField;
    EstPfaDSCPIS: TFloatField;
    EstPfaCONSUMPIS: TFloatField;
    EstPfaFRTCOF: TFloatField;
    EstPfaSEGCOF: TFloatField;
    EstPfaDESCOF: TFloatField;
    EstPfaDSCCOF: TFloatField;
    EstPfaCONSUMCOF: TFloatField;
    EstPfaFLGATIVO: TSmallintField;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    EstPfaSOMAR_FRETE_NA_BASE_COFINS: TSmallintField;
    EstPfaSOMAR_FRETE_NA_BASE_PIS: TSmallintField;
    procedure EstPfaNewRecord(DataSet: TDataSet);
    procedure bbPesquisaClick(Sender: TObject);
    procedure nvPfaImprime(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure grPfaDblClick(Sender: TObject);
    procedure EdCodCf1Exit(Sender: TObject);
    procedure EdTipPfaExit(Sender: TObject);
    procedure nvPfaBeforeSalva(Sender: TObject);
    procedure EdLocPfaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsPfaDataChange(Sender: TObject; Field: TField);
    procedure EdCodCf1KeyPress(Sender: TObject; var Key: Char);
    procedure EdTrbPisChange(Sender: TObject);
    procedure EdTrbCofChange(Sender: TObject);
    procedure EstPfaAfterOpen(DataSet: TDataSet);
    procedure EstPfaAfterScroll(DataSet: TDataSet);
    procedure ckStatusClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sFiltro, sOrdem: string;
  end;

var
  fmManPfa_GERAL: TfmManPfa_GERAL;

implementation

uses Bbgeral, BbMensag, ManPri, Fpreview, ManGDB,bbfuncao;

{$R *.DFM}

procedure TfmManPfa_GERAL.EstPfaNewRecord(DataSet: TDataSet);
begin
  inherited;

  if copy(GFprm, 1, 1) <> 'S' then
    Abort;

  EstPfa.DisableControls;
  try
    EstPfaSegIcm.Value := 0;
    EstPfaIcmSeg.Value := 0;
    EstPfaDesIcm.Value := 0;
    EstPfaIcmDes.Value := 0;
    EstPfaDesIcm.Value := 0;
    EstPfaFrtIpi.Value := 0;
    EstPfaDesIpi.Value := 0;
    EstPfaSegIpi.Value := 0;
    EstPfaIpiFrt.Value := 0;
    EstPfaIpiSeg.Value := 0;
    EstPfaIpiDes.Value := 0;
    EstPfaIcmFrt.Value := 18;
    EstPfaFrtIcm.Value := 100;
    EstPfaTrbPis.Value := 'Nao';
    EstPfaTrbCof.Value := 'Nao';
    EstPfaIntFin.Value := 'Sim';
    EstPfaGerLiv.Value := 'Sim';
    EstPfaAtuEst.Value := 'Sim';
    EstPfaTrbPis.Value := 'Sim';
    EstPfaTrbCof.Value := 'Sim';

    EstPfaConSum.Value := 'Nao';
    EstPfaLocPfa.Value := 'Estadual';
  finally
    EstPfa.EnableControls;
  end;

  PcPfa.ActivePage := pcPag2;

  if EstPfa.State <> dsInsert then
    EstPfa.Insert;

  EdCodPfa.Enabled := True;
  EdTipPfa.Enabled := True;

  EdCodPfa.Font.Style := [];
  EdTipPfa.Font.Style := [];

  EstIcm.Close;
  EstIcm.Params[0].AsString := EstPfaTipPfa.Value;
  EstIcm.Open;

  EstIpi.Close;
  EstIpi.Params[0].AsString := EstPfaTipPfa.Value;
  EstIpi.Open;

  EdCodPfa.Setfocus;

end;

procedure TfmManPfa_GERAL.bbPesquisaClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
    0: sOrdem := ' Order by CodPfa';
    1: sOrdem := ' Order by DscPfa';
  end;

  if (EdpsqCodPfa.Text <> '') then
  begin
    if Rgbusca.ItemIndex = 0 then
      sFiltro := ' and CodPfa LIKE ' + quotedstr(EdpsqCodPfa.Text + '%')
    else
      sFiltro := ' and CodPfa LIKE ' + quotedstr('%' + EdpsqCodPfa.Text + '%');
  end;

  if Rgbusca.ItemIndex = 0 then
  begin
    if (EdpsqDscPfa.Text <> '') then
      sFiltro := ' and DscPfa LIKE ' + quotedstr(EdpsqDscPfa.Text + '%');
  end
  else
  begin
    if (EdpsqDscPfa.Text <> '') then
      sFiltro := ' and DscPfa LIKE ' + quotedstr('%' + EdpsqDscPfa.Text + '%');
  end;

  if EdPsqTipPfa.Text <> '' then
  begin
    if EdPsqTipPfa.Text <> 'Todos' then
      sFiltro := sFiltro + ' and TipPfa = ' + quotedstr(EdPsqTipPfa.Text);
  end;

  if edTipClass.ItemIndex > 0 then
  begin
    sFiltro := sFiltro + ' and LTRIM(RTRIM(MODPFA)) = ' + quotedstr(trim(edTipClass.Text));
  end;

  with EstPfa, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;
end;

procedure TfmManPfa_GERAL.nvPfaImprime(Sender: TObject);
begin
  inherited;

  EstPfa.First;

  if not EstPfa.Eof then
  begin

    try

      ppReport.DeviceType := 'Screen';
      fmPreview := TfmPreview.Create(fmManPfa_GERAL);
      fmPreview.ppViewer.Report := ppReport;
      ppReport.PrintToDevices;
      fmPreview.ShowModal;

      if Assigned(ppReport.AfterPrint) then
        ppReport.AfterPrint(Sender);

    finally

      FreeAndNil(fmPreview);

    end;
  end;
end;

procedure TfmManPfa_GERAL.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodPfa.SetFocus;
end;

procedure TfmManPfa_GERAL.pcPag2Show(Sender: TObject);
begin
  inherited;
  if EdCodPfa.Enabled then
    EdCodPfa.Setfocus
  else
    EdDscPfa.SetFocus;
end;

procedure TfmManPfa_GERAL.grPfaDblClick(Sender: TObject);
begin
  inherited;
  pcPfa.ActivePage := pcPag2;
end;

procedure TfmManPfa_GERAL.EdCodCf1Exit(Sender: TObject);
begin
  inherited;
  if nvPfa.Salvar then
  begin

    if Trim(EstPfaCodCf1.Value) <> '' then
    begin

      if (copy(EstPfaCodCf1.Value, 1, 1) = '1') or (copy(EstPfaCodCf1.Value, 1, 1) = '2') or (copy(EstPfaCodCf1.Value, 1, 1) = '3') or
        (copy(EstPfaCodCf1.Value, 1, 1) = '5') or (copy(EstPfaCodCf1.Value, 1, 1) = '6') or (copy(EstPfaCodCf1.Value, 1, 1) = '7') then
      begin

        if copy(EstPfaCodCf1.Value, 1, 1) = '1' then
        begin
          EstPfaTipPfa.Value := 'Entrada';
          EstPfaLocPfa.Value := 'Mesmo Estado';
        end;

        if copy(EstPfaCodCf1.Value, 1, 1) = '2' then
        begin
          EstPfaTipPfa.Value := 'Entrada';
          EstPfaLocPfa.Value := 'Outros Estados';
        end;

        if copy(EstPfaCodCf1.Value, 1, 1) = '3' then
        begin
          EstPfaTipPfa.Value := 'Entrada';
          EstPfaLocPfa.Value := 'Importacao ou Exportacao';
        end;

        if copy(EstPfaCodCf1.Value, 1, 1) = '5' then
        begin
          EstPfaTipPfa.Value := 'Saida';
          EstPfaLocPfa.Value := 'Mesmo Estado';
        end;

        if copy(EstPfaCodCf1.Value, 1, 1) = '6' then
        begin
          EstPfaTipPfa.Value := 'Saida';
          EstPfaLocPfa.Value := 'Outros Estados';
        end;

        if copy(EstPfaCodCf1.Value, 1, 1) = '7' then
        begin
          EstPfaTipPfa.Value := 'Saida';
          EstPfaLocPfa.Value := 'Importacao ou Exportacao';
        end;

      end
      else
        fmsgErro('CFOP Informada com Caractere Invalido.', EdCodCf1);

    end;
  end;
end;

procedure TfmManPfa_GERAL.EdTipPfaExit(Sender: TObject);
begin
  inherited;
  if nvPfa.Salvar then
  begin

    EstPfaTipIpi.Value := EstPfaTipPfa.Value;
    EstPfaTipIcm.Value := EstPfaTipPfa.Value;

    EstIcm.Close;
    EstIcm.Params[0].AsString := EstPfaTipPfa.Value;
    EstIcm.Open;

    EstIpi.Close;
    EstIpi.Params[0].AsString := EstPfaTipPfa.Value;
    EstIpi.Open;

    if Trim(EstPfaTipPfa.Value) <> '' then
    begin

      if Trim(EstPfaCodCf1.Value) <> '' then
      begin

        if EstPfaTipPfa.Value = 'Entrada' then
        begin

          if (copy(Trim(EstPfaCodCf1.Value), 1, 1) <> '1') and (copy(Trim(EstPfaCodCf1.Value), 1, 1) <> '2') and
            (copy(Trim(EstPfaCodCf1.Value), 1, 1) <> '3') then
            fmsgErro('Tipo de Padrao de Faturamento informado Esta Incorreto. CFOP Informada de Saidas.', EdTipPfa);

        end
        else
        begin

          if (copy(Trim(EstPfaCodCf1.Value), 1, 1) <> '5') and (copy(Trim(EstPfaCodCf1.Value), 1, 1) <> '6') and
            (copy(Trim(EstPfaCodCf1.Value), 1, 1) <> '7') then
            fmsgErro('Tipo de Padrao de Faturamento informado Esta Incorreto. CFOP Informada de Entradas.', EdTipPfa);

        end;
      end;
    end;
  end;
end;

procedure TfmManPfa_GERAL.EdLocPfaExit(Sender: TObject);
begin
  inherited;
  if nvPfa.Salvar then
  begin

    if Trim(EstPfaLocPfa.Value) <> '' then
    begin

      if Trim(EstPfaCodCf1.Value) <> '' then
      begin

        if EstPfaLocPfa.Value = 'Mesmo Estado' then
        begin

          if (copy(Trim(EstPfaCodCf1.Value), 1, 1) <> '1') and (copy(Trim(EstPfaCodCf1.Value), 1, 1) <> '5') then
          begin

            if (copy(Trim(EstPfaCodCf1.Value), 1, 1) = '2') or (copy(Trim(EstPfaCodCf1.Value), 1, 1) = '6') then
            begin

              if fMsg('Origem/Destino do padrao de faturamento informado esta incorreto. CFOP informado de outros estados. Confirma ?', 'O') then
              else
              begin

                pcPfa.ActivePage := PcPag2;

                EdLocPfa.SetFocus;

                Abort;

              end;

            end
            else
            begin

              if fMsg('Origem/Destino do padrao de faturamento informado esta incorreto. CFOP informado de importacao ou exportacao. Confirma ?', 'O') then
              else
              begin

                pcPfa.ActivePage := PcPag2;

                EdLocPfa.SetFocus;

                Abort;

              end;
            end;
          end;

        end
        else
        begin

          if EstPfaLocPfa.Value = 'Outros Estados' then
          begin

            if (copy(Trim(EstPfaCodCf1.Value), 1, 1) <> '2') and (copy(Trim(EstPfaCodCf1.Value), 1, 1) <> '6') then
            begin

              if (copy(Trim(EstPfaCodCf1.Value), 1, 1) = '1') or (copy(Trim(EstPfaCodCf1.Value), 1, 1) = '5') then
              begin

                if fMsg('Origem/Destino do padrao de faturamento informado esta incorreto. CFOP informado de mesmo estado. Confirma ?', 'O') then
                else
                begin

                  pcPfa.ActivePage := PcPag2;

                  EdLocPfa.SetFocus;

                  Abort;

                end;

              end
              else
              begin

                if fMsg('Origem/Destino do padrao de faturamento informado esta incorreto. CFOP informado de importacao ou exportacao. Confirma ?', 'O') then
                else
                begin

                  pcPfa.ActivePage := PcPag2;

                  EdLocPfa.SetFocus;

                  Abort;

                end;
              end;
            end;

          end
          else
          begin

            if (copy(Trim(EstPfaCodCf1.Value), 1, 1) <> '3') and (copy(Trim(EstPfaCodCf1.Value), 1, 1) <> '7') then
            begin

              if (copy(Trim(EstPfaCodCf1.Value), 1, 1) = '1') or (copy(Trim(EstPfaCodCf1.Value), 1, 1) = '5') then
              begin

                if fMsg('Origem/Destino do padrao de faturamento informado esta incorreto. CFOP informado de mesmo estado. Confirma ?', 'O') then
                else
                begin

                  pcPfa.ActivePage := PcPag2;

                  EdLocPfa.SetFocus;

                  Abort;

                end;

              end
              else
              begin

                if fMsg('Origem/Destino do padrao de faturamento informado esta incorreto. CFOP informado de outros estados. Confirma ?', 'O') then
                else
                begin

                  pcPfa.ActivePage := PcPag2;

                  EdLocPfa.SetFocus;

                  Abort;

                end;
              end;
            end;
          end;
        end;
      end;

    end
    else
      fmsgErro('Campo de preenchimento obrigatório não informado.', EdLocPfa);
  end;
end;

procedure TfmManPfa_GERAL.nvPfaBeforeSalva(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  EstPfaCodPfa.Value := Trim(EstPfaCodPfa.Value);
  EstPfaTipPfa.Value := Trim(EstPfaTipPfa.Value);
  EstPfaLocPfa.Value := Trim(EstPfaLocPfa.Value);
  EstPfaModPfa.Value := Trim(EstPfaModPfa.Value);
  EstPfaCodIpi.Value := Trim(EstPfaCodIpi.Value);
  EstPfaCodIcm.Value := Trim(EstPfaCodIcm.Value);
  EstPfaTxfIpi.Value := Trim(EstPfaTxfIpi.Value);
  EstPfaTxfIcm.Value := Trim(EstPfaTxfIcm.Value);

  if Trim(EstPfaCodIcm.AsString) <> '' then
     EstPfaID_ESTICM.AsInteger := EstIcmID_ESTICM.AsInteger
  else
     EstPfaID_ESTICM.AsInteger := 0;

  if Trim(EstPfaCodIpi.Value) = '' then
  begin

    EstPfaCodIpi.Clear;
    EstPfaTipIpi.Clear;

  end
  else
    EstPfaTipIpi.Value := EstPfaTipPfa.Value;

  if Trim(EstPfaCodIcm.Value) = '' then
  begin

    EstPfaCodIcm.Clear;
    EstPfaTipIcm.Clear;

  end
  else
    EstPfaTipIcm.Value := EstPfaTipPfa.Value;

  if Trim(EstPfaTxfIpi.Value) = '' then
    EstPfaTxfIpi.Clear;
  if Trim(EstPfaTxfIcm.Value) = '' then
    EstPfaTxfIcm.Clear;

  if Trim(EstPfaCodCf1.Value) <> '' then
  begin

    if (copy(EstPfaCodCf1.Value, 1, 1) = '1') or
      (copy(EstPfaCodCf1.Value, 1, 1) = '2') or
      (copy(EstPfaCodCf1.Value, 1, 1) = '3') or
      (copy(EstPfaCodCf1.Value, 1, 1) = '5') or
      (copy(EstPfaCodCf1.Value, 1, 1) = '6') or
      (copy(EstPfaCodCf1.Value, 1, 1) = '7') then
    begin

      if copy(EstPfaCodCf1.Value, 1, 1) = '1' then
        EstPfaTipPfa.Value := 'Entrada';
      if copy(EstPfaCodCf1.Value, 1, 1) = '2' then
        EstPfaTipPfa.Value := 'Entrada';
      if copy(EstPfaCodCf1.Value, 1, 1) = '3' then
        EstPfaTipPfa.Value := 'Entrada';

      if copy(EstPfaCodCf1.Value, 1, 1) = '5' then
        EstPfaTipPfa.Value := 'Saida';
      if copy(EstPfaCodCf1.Value, 1, 1) = '6' then
        EstPfaTipPfa.Value := 'Saida';
      if copy(EstPfaCodCf1.Value, 1, 1) = '7' then
        EstPfaTipPfa.Value := 'Saida';

    end
    else
      fmsgErro('CFOP Informada com Caractere Invalido.', EdCodCf1);

  end
  else
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCodCf1);
end;

procedure TfmManPfa_GERAL.FormCreate(Sender: TObject);
begin
  inherited;
  self.Top := 0;
  self.Left := 0;
  sBase := ' Select * From EstPfa where 1 = 1 ';
  pcPfa.ActivePage := pcPag1;
end;

procedure TfmManPfa_GERAL.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManPfa_GERAL.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPfa_GERAL := nil;
end;

procedure TfmManPfa_GERAL.DsPfaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvPfa.Salvar then
  begin

    if EstPfaCodPfa.Value <> '' then
    begin

      EdCodPfa.Enabled := False;
      EdTipPfa.Enabled := False;

      EdCodPfa.Font.Style := [fsBold];
      EdTipPfa.Font.Style := [fsBold];

    end
    else
    begin

      EdCodPfa.Enabled := True;
      EdTipPfa.Enabled := True;

      EdCodPfa.Font.Style := [];
      EdTipPfa.Font.Style := [];

    end;
  end;

  if EstIcm.Params[0].AsString <> EstPfaTipPfa.Value then
  begin

    EstIcm.Close;
    EstIcm.Params[0].AsString := EstPfaTipPfa.Value;
    EstIcm.Open;

  end;

  if EstIpi.Params[0].AsString <> EstPfaTipPfa.Value then
  begin

    EstIpi.Close;
    EstIpi.Params[0].AsString := EstPfaTipPfa.Value;
    EstIpi.Open;

  end;

  if EstSip.Params[0].AsString <> EstPfaTipPfa.Value then
  begin

    EstSip.Close;
    EstSip.Params[0].AsString := EstPfaTipPfa.Value;
    EstSip.Open;

  end;

  if estpfa.State in [dsEdit] then
  begin
    if EstPfaTRBPIS.AsString = 'Sim' then
    begin
      edAliquotaPis.Enabled := False;
      CbNomPis.Enabled := False;
      edCSTPIS.Enabled := False;

    end
    else
    begin
      edAliquotaPis.Enabled := True;
      CbNomPis.Enabled := True;
      edCSTPIS.Enabled := True;

      //EdId_EstPis.Text := '';
      //edAliquotaPis.Value := 0;

    end;

    if EstPfaTRBCOF.AsString = 'Sim' then
    begin
      edAliquotaCof.Enabled := False;
      CbNomCof.Enabled := False;
      edCSTCOF.Enabled := False;

    end
    else
    begin
      edAliquotaCof.Enabled := True;
      CbNomCof.Enabled := True;
      edCSTCOF.Enabled := True;

      //EdId_EstCof.Text := '';
      //edAliquotaCof.Value := 0;
    end;

  end;

end;

procedure TfmManPfa_GERAL.EdCodCf1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not (key in ['0'..'9'])) and (not (key in ['.'])) then
    key := #0;
end;

procedure TfmManPfa_GERAL.EdTrbPisChange(Sender: TObject);
begin
  inherited;
  if EdTrbPis.Text = 'Sim' then
  begin
    edAliquotaPis.Enabled := False;
    CbNomPis.Enabled := False;
    edCSTPIS.Enabled := False;

  end
  else
  begin
    edAliquotaPis.Enabled := True;
    CbNomPis.Enabled := True;
    edCSTPIS.Enabled := True;

    //EdId_EstPis.Text := '';
    //edAliquotaPis.Value := 0;

  end;
end;

procedure TfmManPfa_GERAL.EdTrbCofChange(Sender: TObject);
begin
  inherited;
  if EdTrbCof.Text = 'Sim' then
  begin
    edAliquotaCof.Enabled := False;
    CbNomCof.Enabled := False;
    edCSTCOF.Enabled := False;

  end
  else
  begin
    edAliquotaCof.Enabled := True;
    CbNomCof.Enabled := True;
    edCSTCOF.Enabled := True;

    //EdId_EstCof.Text := '';
    //edAliquotaCof.Value := 0;
  end;
end;

procedure TfmManPfa_GERAL.EstPfaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  EdTrbCof.OnChange(EdTrbCof);
  EdTrbPis.OnChange(EdTrbPis);

end;

procedure TfmManPfa_GERAL.EstPfaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  EdTrbCof.OnChange(EdTrbCof);
  EdTrbPis.OnChange(EdTrbPis);
end;



procedure TfmManPfa_GERAL.ckStatusClick(Sender: TObject);
begin
  inherited;
        if(EstPfa.State in [dsEdit])then
        begin
           if (ckstatus.Checked = false)then
           begin
               if (validaUsoPfa(estpfacodpfa.AsString)) then
               begin
                   MessageBox(handle, 'Este padrão de faturamento não pode ser inativado por estar em uso. Os cliente que utilizam estão listados na ''Área de transferência''.','validação do Padrão de Faturamento',mb_ok+MB_ICONEXCLAMATION);
                   ckstatus.Checked := true;
                   abort;
               end;
           end;

        end;
end;

end.
