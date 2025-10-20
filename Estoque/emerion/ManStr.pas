unit ManStr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, hNavigator, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery, StdCtrls,
  Mask, DBCtrls, hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, ComCtrls,
  wwdblook, Buttons, AlignEdit, ppBands, ppClass, ppDB, ppCtrls, ppVar,
  ppPrnabl, ppProd, ppReport, ppComm, ppRelatv, ppCache, ppDBPipe, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, wwriched, dxDBEdtr,
  dxDBColorCurrencyEdit, dxDBColorPickEdit, dxDBColorEdit, dxColorPickEdit,
  dxColorEdit, dxDBColorLookupEdit, dxDBColorDateEdit;

type
  TfmManStr = class(TfmPadrao)
    pcStr: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    quSql: TwwQuery;
    nvStr: ThDBNavigator;
    EstStr: TwwQuery;
    DsStr: TwwDataSource;
    UpStr: TUpdateSQL;
    Label12: TLabel;
    Shape11: TShape;
    Panel3: TPanel;
    grStr: ThGrid;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    EdPsqNomStr: TdxColorEdit;
    EdPsqCodStr: TdxColorEdit;
    Label8: TLabel;
    Shape2: TShape;
    BbPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Shape3: TShape;
    EdPsqTipStr: TdxColorPickEdit;
    Label11: TLabel;
    Label13: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdCodStr: TdxDBColorEdit;
    EdNomStr: TdxDBColorEdit;
    EdTipStr: TdxDBColorPickEdit;
    Shape7: TShape;
    Shape1: TShape;
    EstStrCODSTR: TStringField;
    EstStrNOMSTR: TStringField;
    EstStrTIPSTR: TStringField;
    Panel8: TPanel;
    nvUfe: ThDBNavigator;
    Shape6: TShape;
    Label73: TLabel;
    EstUfe: TwwQuery;
    DsEstUfe: TwwDataSource;
    EstUfeCODSTR: TStringField;
    EstUfeTIPSTR: TStringField;
    EstUfeSIGUFE: TStringField;
    EstUfeICMSUB: TFloatField;
    EstUfeMRGSUB: TFloatField;
    EstUfeBASESB: TFloatField;
    EstUfeCODCFO: TStringField;
    EstUfeREGICM: TStringField;
    EstUfeTIPICM: TStringField;
    EstUfeREGIPI: TStringField;
    EstUfeTIPIPI: TStringField;
    EstUfeCODTXF: TStringField;
    Panel5: TPanel;
    EstUfeNOMUFE: TStringField;
    UpEstUfe: TUpdateSQL;
    Panel4: TPanel;
    EdIcmSub1: TdxDBColorCurrencyEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    EdMrgSub1: TdxDBColorCurrencyEdit;
    EdBasesb1: TdxDBColorCurrencyEdit;
    EdCodCfo1: TdxDBColorEdit;
    Label10: TLabel;
    Label17: TLabel;
    Label107: TLabel;
    EdRegIcm1: TdxDBColorEdit;
    CbNomIcm1: TdxDBColorLookupEdit;
    Label18: TLabel;
    EdCodTxf1: TdxDBColorEdit;
    CbNomTxf1: TdxDBColorLookupEdit;
    EstIcm: TwwQuery;
    StringField2: TStringField;
    EstIcmCODICM: TStringField;
    EstIcmPERICM: TFloatField;
    dsEstIcm: TwwDataSource;
    EstTxf: TwwQuery;
    DsTxf: TwwDataSource;
    EstTxfCODTXF: TStringField;
    EstTxfTIPTXF: TStringField;
    EstTxfDSRTXF: TStringField;
    EstTxfDSCTXF: TStringField;
    Label19: TLabel;
    EdSigUfe: TdxDBColorEdit;
    CbNomUfe: TdxDBColorLookupEdit;
    GerUfe: TwwQuery;
    DsGerUfe: TwwDataSource;
    GerUfeSIGUFE: TStringField;
    GerUfeNOMUFE: TStringField;
    Label20: TLabel;
    EdCodTme1: TdxDBColorEdit;
    CbNomTme: TdxDBColorLookupEdit;
    EstUfeCODTME: TStringField;
    EstTme: TwwQuery;
    DsTme: TwwDataSource;
    EstTmeCODTME: TStringField;
    EstTmeNOMTME: TStringField;
    EstUfeDTEENV: TDateTimeField;
    Label21: TLabel;
    EdDteEnv1: TdxDBColorDateEdit;
    Label22: TLabel;
    EstUfeCODTCL: TIntegerField;
    Label48: TLabel;
    EdCodTCl1: TdxDBColorEdit;
    CbNomTCl: TdxDBColorLookupEdit;
    FinTCl: TwwQuery;
    FinTClNOMTCL: TStringField;
    FinTClCODTCL: TIntegerField;
    DsTCl: TwwDataSource;
    TabSheet1: TTabSheet;
    Label23: TLabel;
    Label24: TLabel;
    EdNomStr1: TdxDBColorEdit;
    EdCodStr1: TdxDBColorEdit;
    Label25: TLabel;
    EdTipStr1: TdxDBColorPickEdit;
    Label26: TLabel;
    Shape8: TShape;
    Shape9: TShape;
    Panel1: TPanel;
    nvUfc: ThDBNavigator;
    Shape10: TShape;
    Label27: TLabel;
    Panel2: TPanel;
    EstUfc: TwwQuery;
    UpEstUfc: TUpdateSQL;
    dsEstUfc: TwwDataSource;
    EstUfcCODSTR: TStringField;
    EstUfcTIPSTR: TStringField;
    EstUfcCODCLI: TIntegerField;
    EstUfcICMSUB: TFloatField;
    EstUfcMRGSUB: TFloatField;
    EstUfcBASESB: TFloatField;
    EstUfcCODCFO: TStringField;
    EstUfcREGICM: TStringField;
    EstUfcTIPICM: TStringField;
    EstUfcREGIPI: TStringField;
    EstUfcTIPIPI: TStringField;
    EstUfcCODTXF: TStringField;
    EstUfcNOMCLI: TStringField;
    FinCli: TwwQuery;
    dsFinCli: TwwDataSource;
    FinCliCODCLI: TIntegerField;
    FinCliNOMCLI: TStringField;
    EstIcc: TwwQuery;
    StringField1: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    dsEstIcc: TwwDataSource;
    grUfe: ThGrid;
    grUfc: ThGrid;
    Panel6: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label35: TLabel;
    Label31: TLabel;
    Label36: TLabel;
    Label32: TLabel;
    Label37: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    EdCodCli: TdxDBColorEdit;
    CbNomCli: TdxDBColorLookupEdit;
    EdIcmSub2: TdxDBColorCurrencyEdit;
    EdMrgSub2: TdxDBColorCurrencyEdit;
    EdBasesb2: TdxDBColorCurrencyEdit;
    EdCodCfo2: TdxDBColorEdit;
    EdRegIcm2: TdxDBColorEdit;
    CbNomIcm2: TdxDBColorLookupEdit;
    EdCodTxf2: TdxDBColorEdit;
    CbNomTxf2: TdxDBColorLookupEdit;
    procedure FormCreate(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure grStrDblClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EstStrNewRecord(DataSet: TDataSet);
    procedure DsStrDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel4Exit(Sender: TObject);
    procedure EstUfeNewRecord(DataSet: TDataSet);
    procedure EstUfeBeforeEdit(DataSet: TDataSet);
    procedure EstUfeAfterCancel(DataSet: TDataSet);
    procedure EstStrBeforeEdit(DataSet: TDataSet);
    procedure EstStrAfterCancel(DataSet: TDataSet);
    procedure nvUfeBeforeSalva(Sender: TObject);
    procedure EdRegIcm1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsEstUfeDataChange(Sender: TObject; Field: TField);
    procedure EdRegIcm1Exit(Sender: TObject);
    procedure EdCodTCl1KeyPress(Sender: TObject; var Key: Char);
    procedure dsEstUfcDataChange(Sender: TObject; Field: TField);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdRegIcm2Exit(Sender: TObject);
    procedure EdRegIcm2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCfo1KeyPress(Sender: TObject; var Key: Char);
    procedure Panel6Exit(Sender: TObject);
    procedure EstUfcAfterCancel(DataSet: TDataSet);
    procedure EstUfcBeforeEdit(DataSet: TDataSet);
    procedure EstUfcNewRecord(DataSet: TDataSet);
    procedure nvUfcBeforeSalva(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sFiltro, sOrdem, pSaida : string;
  end;

var
  fmManStr: TfmManStr;

implementation

uses Bbgeral, BbMensag, ManPri, Fpreview, AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmManStr.FormCreate(Sender: TObject);
begin
  inherited;

  pSaida := 'S';
  
  sBase := ' Select * From EstStr ';
  
end;

procedure TfmManStr.bbPesquisaClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by CodStr';
       1: sOrdem := ' Order by NomStr';
       2: sOrdem := ' Order by TipStr';
  end;

  if (EdPsqTipStr.Text <> '') and (EdPsqTipStr.Text <> 'Todos') then sFiltro := ' Where TipStr = '''+EdPsqTipStr.Text+'''';

  if (EdPsqCodStr.Text <> '') then begin
     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where CodStr = '''+ EdPsqCodStr.Text +''''
     else
        sFiltro := sFiltro + ' and CodStr = '''+ EdPsqCodStr.Text +'''';
  end;

  if Rgbusca.ItemIndex = 0 then begin

     if (EdPsqNomStr.Text <> '') then begin
        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where NomStr LIKE '''+ EdPsqNomStr.Text +'%'''
        else
           sFiltro := sFiltro + ' and NomStr LIKE '''+ EdPsqNomStr.Text +'%''';
     end;

     end
  else
     begin

     if (EdPsqNomStr.Text <> '') then begin
        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where NomStr LIKE ''%' + EdPsqNomStr.Text + '%'''
        else
           sFiltro := sFiltro + ' and NomStr LIKE ''%' + EdPsqNomStr.Text + '%''';
     end;
  end;

  with EstStr,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManStr.DsStrDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvStr.Salvar then begin

     if Trim(EstStrCodStr.Value) <> '' then begin

        EdCodStr.Enabled := False;
        EdTipStr.Enabled := False;

        EdCodStr.Font.Style := [fsBold];
        EdTipStr.Font.Style := [fsBold];

        end
     else
        begin

        EdCodStr.Enabled := True;
        EdTipStr.Enabled := True;

        EdCodStr.Font.Style := [];
        EdTipStr.Font.Style := [];

     end;
  end;
end;

procedure TfmManStr.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodStr.SetFocus;
end;

procedure TfmManStr.EstStrNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstStr.DisableControls;

  EstStrTipStr.Value := 'Saida';

  EstStr.EnableControls;

  PcStr.ActivePage := pcPag2;

  EdCodStr.Enabled := True;
  EdTipStr.Enabled := True;

  EdCodStr.Font.Style := [];
  EdTipStr.Font.Style := [];

  if EdIcmSub1.Enabled then begin

     pSaida := 'N';

     nvUfe.Enabled := False;
     grUfe.Enabled := False;
     nvUfc.Enabled := False;
     grUfc.Enabled := False;

     EdIcmSub1.Enabled := False;
     EdMrgSub1.Enabled := False;
     EdBaseSb1.Enabled := False;
     EdRegIcm1.Enabled := False;
     EdCodTxf1.Enabled := False;
     EdCodTme1.Enabled := False;
     EdCodTCl1.Enabled := False;
     EdDteEnv1.Enabled := False;
     EdIcmSub2.Enabled := False;
     EdMrgSub2.Enabled := False;
     EdBaseSb2.Enabled := False;
     EdRegIcm2.Enabled := False;
     EdCodTxf2.Enabled := False;

     EdIcmSub1.Font.Style := [fsBold];
     EdMrgSub1.Font.Style := [fsBold];
     EdBaseSb1.Font.Style := [fsBold];
     EdRegIcm1.Font.Style := [fsBold];
     EdCodTxf1.Font.Style := [fsBold];
     EdCodTme1.Font.Style := [fsBold];
     EdCodTCl1.Font.Style := [fsBold];
     EdDteEnv1.Font.Style := [fsBold];
     EdIcmSub2.Font.Style := [fsBold];
     EdMrgSub2.Font.Style := [fsBold];
     EdBaseSb2.Font.Style := [fsBold];
     EdRegIcm2.Font.Style := [fsBold];
     EdCodTxf2.Font.Style := [fsBold];

     pSaida := 'S';

  end;
  
  EdCodStr.Setfocus;

end;

procedure TfmManStr.grStrDblClick(Sender: TObject);
begin
  inherited;
  pcStr.ActivePage := pcPag2;
end;

procedure TfmManStr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManStr.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManStr := Nil;
end;

procedure TfmManStr.FormShow(Sender: TObject);
begin
  inherited;
  pcStr.ActivePage := pcPag1;
end;

procedure TfmManStr.Panel4Exit(Sender: TObject);
var
  Operac : string;
begin
  inherited;
  if pSaida = 'S' then begin
  
     if nvUfe.Salvar then begin

        if Trim(EstUfeSigUfe.Value) = '' then
           fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdSigUfe);

        if Trim(EstUfeCodTme.Value) = '' then EstUfeCodTme.Clear;
           
        if Trim(EstUfeRegIcm.Value) = '' then begin

           EstUfeRegIcm.Clear;
           EstUfeTipIcm.Clear;

           end
        else
           EstUfeTipIcm.Value := EstUfeTipStr.Value;

        if Trim(EstUfeCodTxf.Value) = '' then EstUfeCodTxf.Clear;

        if EstUfe.State = dsInsert then Operac := 'dsInsert';

        if Trim(EstUfeCodStr.Value) <> '' then begin

           nvUfe.SBSalvaClick(Sender);

           if (Operac = 'dsInsert') and (not nvUfe.Salvar) then begin

              nvUfe.SBIncluiClick(Sender);

              EdSigUfe.SetFocus;

              end
           else
              begin

              if not EstUfe.EOF then begin

                 EstUfe.Next;

                 EdIcmSub1.SetFocus;

              end;
           end;   
        end;
     end;
  end;   
end;

procedure TfmManStr.EstUfeNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstUfe.DisableControls;

  EstUfeIcmSub.Value := 0;
  EstUfeMrgSub.Value := 0;
  EstUfeBaseSb.Value := 100;
  EstUfeCodStr.Value := EstStrCodStr.Value;
  EstUfeTipStr.Value := EstStrTipStr.Value;
  EstUfeTipIcm.Value := EstStrTipStr.Value;

  EstUfe.EnableControls;

  pSaida := 'N';
  
  EdSigUfe.Enabled := True;
  CbNomUfe.Enabled := True;

  EdSigUfe.Font.Style := [];
  CbNomUfe.Font.Style := [];

  pSaida := 'S';
  
  if EdNomStr.Enabled then begin

     nvStr.Enabled := False;
     grStr.Enabled := False;
     nvUfc.Enabled := False;
     grUfc.Enabled := False;

     EdNomStr.Enabled := False;

     EdIcmSub2.Enabled := False;
     EdMrgSub2.Enabled := False;
     EdBasesb2.Enabled := False;
     EdCodCfo2.Enabled := False;
     EdRegIcm2.Enabled := False;
     EdCodTxf2.Enabled := False;

     EdNomStr.Font.Style := [fsBold];

     EdIcmSub2.Font.Style := [fsBold];
     EdMrgSub2.Font.Style := [fsBold];
     EdBasesb2.Font.Style := [fsBold];
     EdCodCfo2.Font.Style := [fsBold];
     EdRegIcm2.Font.Style := [fsBold];
     EdCodTxf2.Font.Style := [fsBold];

  end;

  EdSigUfe.SetFocus;

end;

procedure TfmManStr.EstUfeBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if EdNomStr.Enabled then begin

     nvStr.Enabled := False;
     grStr.Enabled := False;
     nvUfc.Enabled := False;
     grUfc.Enabled := False;

     EdNomStr.Enabled := False;

     EdIcmSub2.Enabled := False;
     EdMrgSub2.Enabled := False;
     EdBasesb2.Enabled := False;
     EdCodCfo2.Enabled := False;
     EdRegIcm2.Enabled := False;
     EdCodTxf2.Enabled := False;

     EdNomStr.Font.Style := [fsBold];

     EdIcmSub2.Font.Style := [fsBold];
     EdMrgSub2.Font.Style := [fsBold];
     EdBasesb2.Font.Style := [fsBold];
     EdCodCfo2.Font.Style := [fsBold];
     EdRegIcm2.Font.Style := [fsBold];
     EdCodTxf2.Font.Style := [fsBold];

  end;
end;

procedure TfmManStr.EstUfeAfterCancel(DataSet: TDataSet);
begin
  inherited;  
  if not EdNomStr.Enabled then begin

     nvStr.Enabled := True;
     grStr.Enabled := True;

     nvUfc.Enabled := True;
     grUfc.Enabled := True;

     EdNomStr.Enabled := True;

     EdIcmSub2.Enabled := True;
     EdMrgSub2.Enabled := True;
     EdBasesb2.Enabled := True;
     EdCodCfo2.Enabled := True;
     EdRegIcm2.Enabled := True;
     EdCodTxf2.Enabled := True;

     EdNomStr.Font.Style := [];

     EdIcmSub2.Font.Style := [];
     EdMrgSub2.Font.Style := [];
     EdBasesb2.Font.Style := [];
     EdCodCfo2.Font.Style := [];
     EdRegIcm2.Font.Style := [];
     EdCodTxf2.Font.Style := [];
     
  end;
end;

procedure TfmManStr.EstStrBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if EdIcmSub1.Enabled then begin

     pSaida := 'N';

     nvUfe.Enabled := False;
     grUfe.Enabled := False;
     nvUfc.Enabled := False;
     grUfc.Enabled := False;

     EdIcmSub1.Enabled := False;
     EdMrgSub1.Enabled := False;
     EdBaseSb1.Enabled := False;
     EdRegIcm1.Enabled := False;
     EdCodTxf1.Enabled := False;
     EdCodTme1.Enabled := False;
     EdCodTCl1.Enabled := False;
     EdDteEnv1.Enabled := False;
     EdIcmSub2.Enabled := False;
     EdMrgSub2.Enabled := False;
     EdBaseSb2.Enabled := False;
     EdRegIcm2.Enabled := False;
     EdCodTxf2.Enabled := False;

     EdIcmSub1.Font.Style := [fsBold];
     EdMrgSub1.Font.Style := [fsBold];
     EdBaseSb1.Font.Style := [fsBold];
     EdRegIcm1.Font.Style := [fsBold];
     EdCodTxf1.Font.Style := [fsBold];
     EdCodTme1.Font.Style := [fsBold];
     EdCodTCl1.Font.Style := [fsBold];
     EdDteEnv1.Font.Style := [fsBold];
     EdIcmSub2.Font.Style := [fsBold];
     EdMrgSub2.Font.Style := [fsBold];
     EdBaseSb2.Font.Style := [fsBold];
     EdRegIcm2.Font.Style := [fsBold];
     EdCodTxf2.Font.Style := [fsBold];

     pSaida := 'S';

  end;
end;

procedure TfmManStr.EstStrAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if not EdIcmSub1.Enabled then begin

     pSaida := 'N';

     nvUfe.Enabled := True;
     grUfe.Enabled := True;
     nvUfc.Enabled := True;
     grUfc.Enabled := True;

     EdIcmSub1.Enabled := True;
     EdMrgSub1.Enabled := True;
     EdBaseSb1.Enabled := True;
     EdRegIcm1.Enabled := True;
     EdCodTxf1.Enabled := True;
     EdCodTme1.Enabled := True;
     EdCodTCl1.Enabled := True;
     EdDteEnv1.Enabled := True;
     EdIcmSub2.Enabled := True;
     EdMrgSub2.Enabled := True;
     EdBaseSb2.Enabled := True;
     EdRegIcm2.Enabled := True;
     EdCodTxf2.Enabled := True;

     EdIcmSub1.Font.Style := [];
     EdMrgSub1.Font.Style := [];
     EdBaseSb1.Font.Style := [];
     EdRegIcm1.Font.Style := [];
     EdCodTxf1.Font.Style := [];
     EdCodTme1.Font.Style := [];
     EdCodTCl1.Font.Style := [];
     EdDteEnv1.Font.Style := [];
     EdIcmSub2.Font.Style := [];
     EdMrgSub2.Font.Style := [];
     EdBaseSb2.Font.Style := [];
     EdRegIcm2.Font.Style := [];
     EdCodTxf2.Font.Style := [];

     pSaida := 'S';
     
  end;
end;

procedure TfmManStr.nvUfeBeforeSalva(Sender: TObject);
begin
  inherited;

  if Trim(EstUfeCodTme.Value) = '' then EstUfeCodTme.Clear;
  
  if Trim(EstUfeRegIcm.Value) = '' then begin

     EstUfeRegIcm.Clear;
     EstUfeTipIcm.Clear;

     end
  else
     EstUfeTipIcm.Value := EstUfeTipStr.Value;

  if Trim(EstUfeCodTxf.Value) = '' then EstUfeCodTxf.Clear;

end;

procedure TfmManStr.EdRegIcm1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'ICMS';

        fmAuxIni.TipIcm := Trim(EstStrTipStr.Value);

        fmAuxIni.ShowModal;                        

        if Trim( fmAuxIni.CodIcm ) <> '' then begin

           if not nvUfe.Salvar then begin

              if Trim( EstUfeCodStr.Value ) <> '' then
                 EstUfe.Edit
              else
                 EstUfe.Insert;

           end;

           EstUfeRegIcm.Value := fmAuxIni.CodIcm;
           EstUfeTipIcm.Value := fmAuxIni.TipIcm;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdRegIcm1.SetFocus;

  end;
end;

procedure TfmManStr.DsEstUfeDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvUfe.Salvar then begin

     if Trim(EstUfeSigUfe.Value) <> '' then begin

        EdSigUfe.Enabled := False;
        CbNomUfe.Enabled := False;

        EdSigUfe.Font.Style := [fsBold];
        CbNomUfe.Font.Style := [fsBold];

        end
     else
        begin

        EdSigUfe.Enabled := True;
        CbNomUfe.Enabled := True;

        EdSigUfe.Font.Style := [];
        CbNomUfe.Font.Style := [];

     end;
  end;

  if (EstIcm.Params[0].AsString <> EstUfeRegIcm.Value) or
     (EstIcm.Params[1].AsString <> EstUfeTipIcm.Value) then begin

     EstIcm.Close;
     EstIcm.Params[0].AsString := EstUfeRegIcm.Value;
     EstIcm.Params[1].AsString := EstUfeTipIcm.Value;
     EstIcm.Open;

  end;
end;

procedure TfmManStr.EdRegIcm1Exit(Sender: TObject);
begin
  inherited;
  if EstUfe.State <> dsBrowse then begin

     if Trim(EstUfeRegIcm.Value) <> '' then EstUfeTipIcm.Value := EstUfeTipStr.Value;

  end;   
end;

procedure TfmManStr.EdCodTCl1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManStr.dsEstUfcDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvUfc.Salvar then begin

     if EstUfcCodCli.Value > 0 then begin

        EdCodCli.Enabled := False;

        EdCodCli.Font.Style := [fsBold];

        end
     else
        begin

        EdCodCli.Enabled := True;

        EdCodCli.Font.Style := [];

     end;
  end;

  if FinCli.Params[0].AsInteger <> EstUfcCodCli.Value then begin

     FinCli.Close;
     FinCli.Params[0].AsInteger := EstUfcCodCli.Value;
     FinCli.Open;

  end;

  if (EstIcc.Params[0].AsString <> EstUfcRegIcm.Value) or
     (EstIcc.Params[1].AsString <> EstUfcTipIcm.Value) then begin

     EstIcc.Close;
     EstIcc.Params[0].AsString := EstUfcRegIcm.Value;
     EstIcc.Params[1].AsString := EstUfcTipIcm.Value;
     EstIcc.Open;

  end;
end;

procedure TfmManStr.EdCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           if not nvUfc.Salvar then begin

              if Trim(EstUfcCodStr.Value) <> '' then
                 EstUfc.Edit
              else
                 EstUfc.Insert;

           end;

           EstUfcCodCli.Value := fmAuxIni.CodCli;

        end;

      finally

        FreeAndNil(fmAuxIni);

     end;

     if EstUfcCodCli.Value > 0 then EdIcmSub2.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';
        
        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           if not nvUfc.Salvar then begin

              if Trim(EstUfcCodStr.Value) <> '' then
                 EstUfc.Edit
              else
                 EstUfc.Insert;

           end;

           EstUfcCodCli.Value := fmAuxPsq.CodCli;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if EstUfcCodCli.Value > 0 then EdIcmSub2.SetFocus;

  end;
end;

procedure TfmManStr.EdRegIcm2Exit(Sender: TObject);
begin
  inherited;
  if EstUfc.State <> dsBrowse then begin

     if Trim(EstUfcRegIcm.Value) <> '' then EstUfcTipIcm.Value := EstUfcTipStr.Value;

  end;
end;

procedure TfmManStr.EdRegIcm2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'ICMS';

        fmAuxIni.TipIcm := Trim(EstStrTipStr.Value);

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodIcm ) <> '' then begin

           if not nvUfc.Salvar then begin

              if Trim( EstUfcCodStr.Value ) <> '' then
                 EstUfc.Edit
              else
                 EstUfc.Insert;

           end;

           EstUfcRegIcm.Value := fmAuxIni.CodIcm;
           EstUfcTipIcm.Value := fmAuxIni.TipIcm;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdRegIcm2.SetFocus;

  end;
end;

procedure TfmManStr.EdCodCfo1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not ( key in [ '0'..'9' ] )) and (not ( key in ['.'] )) then key := #0;
end;

procedure TfmManStr.Panel6Exit(Sender: TObject);
var
  Operac : string;
begin
  inherited;
  if pSaida = 'S' then begin
  
     if nvUfc.Salvar then begin

        if EstUfcCodCli.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodCli);

        if Trim(EstUfcRegIcm.Value) = '' then begin

           EstUfcRegIcm.Clear;
           EstUfcTipIcm.Clear;

           end
        else
           EstUfcTipIcm.Value := EstUfcTipStr.Value;

        if Trim(EstUfcCodTxf.Value) = '' then EstUfcCodTxf.Clear;

        if EstUfc.State = dsInsert then Operac := 'dsInsert';

        if Trim(EstUfcCodStr.Value) <> '' then begin

           nvUfc.SBSalvaClick(Sender);

           if (Operac = 'dsInsert') and (not nvUfc.Salvar) then begin

              nvUfc.SBIncluiClick(Sender);

              EdCodCli.SetFocus;

              end
           else
              begin

              if not EstUfc.EOF then begin

                 EstUfc.Next;

                 EdIcmSub2.SetFocus;

              end;
           end;
        end;
     end;
  end;   
end;

procedure TfmManStr.EstUfcAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if not EdNomStr.Enabled then begin

     nvStr.Enabled := True;
     grStr.Enabled := True;

     nvUfe.Enabled := True;
     grUfe.Enabled := True;

     EdNomStr.Enabled := True;

     EdIcmSub1.Enabled := True;
     EdMrgSub1.Enabled := True;
     EdBasesb1.Enabled := True;
     EdCodCfo1.Enabled := True;
     EdRegIcm1.Enabled := True;
     EdCodTxf1.Enabled := True;
     EdCodTme1.Enabled := True;
     EdCodTCl1.Enabled := True;
     EdDteEnv1.Enabled := True;

     EdNomStr.Font.Style := [];

     EdIcmSub1.Font.Style := [];
     EdMrgSub1.Font.Style := [];
     EdBasesb1.Font.Style := [];
     EdCodCfo1.Font.Style := [];
     EdRegIcm1.Font.Style := [];
     EdCodTxf1.Font.Style := [];
     EdCodTme1.Font.Style := [];
     EdCodTCl1.Font.Style := [];
     EdDteEnv1.Font.Style := [];

  end;
end;

procedure TfmManStr.EstUfcBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if EdNomStr.Enabled then begin

     nvStr.Enabled := False;
     grStr.Enabled := False;
     nvUfe.Enabled := False;
     grUfe.Enabled := False;

     EdNomStr.Enabled := False;

     EdIcmSub1.Enabled := False;
     EdMrgSub1.Enabled := False;
     EdBasesb1.Enabled := False;
     EdCodCfo1.Enabled := False;
     EdRegIcm1.Enabled := False;
     EdCodTxf1.Enabled := False;
     EdCodTme1.Enabled := False;
     EdCodTCl1.Enabled := False;
     EdDteEnv1.Enabled := False;

     EdNomStr.Font.Style := [fsBold];

     EdIcmSub1.Font.Style := [fsBold];
     EdMrgSub1.Font.Style := [fsBold];
     EdBasesb1.Font.Style := [fsBold];
     EdCodCfo1.Font.Style := [fsBold];
     EdRegIcm1.Font.Style := [fsBold];
     EdCodTxf1.Font.Style := [fsBold];
     EdCodTme1.Font.Style := [fsBold];
     EdCodTCl1.Font.Style := [fsBold];
     EdDteEnv1.Font.Style := [fsBold];

  end;
end;

procedure TfmManStr.EstUfcNewRecord(DataSet: TDataSet);
begin
  inherited;
  
  EstUfc.DisableControls;

  EstUfcIcmSub.Value := 0;
  EstUfcMrgSub.Value := 0;
  EstUfcBaseSb.Value := 100;
  EstUfcCodStr.Value := EstStrCodStr.Value;
  EstUfcTipStr.Value := EstStrTipStr.Value;
  EstUfcTipIcm.Value := EstStrTipStr.Value;

  EstUfc.EnableControls;

  pSaida := 'N';

  EdCodCli.Enabled := True;

  EdCodCli.Font.Style := [];

  pSaida := 'S';
  
  if EdNomStr.Enabled then begin

     nvStr.Enabled := False;
     grStr.Enabled := False;
     nvUfe.Enabled := False;
     grUfe.Enabled := False;

     EdNomStr.Enabled := False;

     EdIcmSub1.Enabled := False;
     EdMrgSub1.Enabled := False;
     EdBasesb1.Enabled := False;
     EdCodCfo1.Enabled := False;
     EdRegIcm1.Enabled := False;
     EdCodTxf1.Enabled := False;
     EdCodTme1.Enabled := False;
     EdCodTCl1.Enabled := False;
     EdDteEnv1.Enabled := False;

     EdNomStr.Font.Style := [fsBold];

     EdIcmSub1.Font.Style := [fsBold];
     EdMrgSub1.Font.Style := [fsBold];
     EdBasesb1.Font.Style := [fsBold];
     EdCodCfo1.Font.Style := [fsBold];
     EdRegIcm1.Font.Style := [fsBold];
     EdCodTxf1.Font.Style := [fsBold];
     EdCodTme1.Font.Style := [fsBold];
     EdCodTCl1.Font.Style := [fsBold];
     EdDteEnv1.Font.Style := [fsBold];

  end;

  EdCodCli.SetFocus;

end;

procedure TfmManStr.nvUfcBeforeSalva(Sender: TObject);
begin
  inherited;

  if Trim(EstUfcRegIcm.Value) = '' then begin

     EstUfcRegIcm.Clear;
     EstUfcTipIcm.Clear;

     end
  else
     EstUfcTipIcm.Value := EstUfcTipStr.Value;

  if Trim(EstUfcCodTxf.Value) = '' then EstUfcCodTxf.Clear;

end;

end.
