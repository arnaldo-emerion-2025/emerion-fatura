unit ManFor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, dxDBColorPickEdit,
  dxDBColorLookupEdit, dxDBColorHyperLinkEdit, dxDBColorEdit, dxColorEdit;

type
  TfmManFor = class(TfmPadrao)
    GerUfe: TwwQuery;
    GerUfeSIGUFE: TStringField;
    GerUfeNOMUFE: TStringField;
    UpFor: TUpdateSQL;
    FinPlc: TwwQuery;
    FinPlcNOMPLC: TStringField;
    FinPlcCONPLC: TIntegerField;
    FinPlcCODCEN: TIntegerField;
    FinPlcCODAGC: TIntegerField;
    CepTit: TwwQuery;
    CepTitNOMTIT: TStringField;
    CepTitABRTIT: TStringField;
    FinFor: TwwQuery;
    FinForCODFOR: TIntegerField;
    FinForNOMFOR: TStringField;
    FinForAPEFOR: TStringField;
    FinForCGCFOR: TStringField;
    FinForPRTFOR: TStringField;
    FinForFONFOR: TStringField;
    FinForCODBAN: TIntegerField;
    FinForNOMCNB: TStringField;
    FinForCONPLC: TIntegerField;
    FinForSUBPLC: TIntegerField;
    FinForINSFOR: TStringField;
    FinForFAXFOR: TStringField;
    FinForEMAFOR: TStringField;
    FinForWEBFOR: TStringField;
    FinForTENFOR: TStringField;
    FinForENDFOR: TStringField;
    FinForREFFOR: TStringField;
    FinForBAIFOR: TStringField;
    FinForCIDFOR: TStringField;
    FinForSIGUFE: TStringField;
    FinForCEPFOR: TStringField;
    FinForNUMFOR: TStringField;
    FinForPRFFOR: TStringField;
    dsFor: TwwDataSource;
    quSql: TwwQuery;
    FinSub: TwwQuery;
    FinSubNOMSUB: TStringField;
    FinSubCONPLC: TIntegerField;
    FinSubSUBPLC: TIntegerField;
    FinBan: TwwQuery;
    FinBanNOMBAN: TStringField;
    FinBanCODBAN: TIntegerField;
    pcFor: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel1: TPanel;
    nvFor: ThDBNavigator;
    DsTit: TwwDataSource;
    DsUfe: TwwDataSource;
    DsPlc: TwwDataSource;
    DsSub: TwwDataSource;
    DsBan: TwwDataSource;
    FinForCONFOR: TStringField;
    ppReport: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel50: TppLabel;
    dbReport: TppDetailBand;
    DsReport: TppDBPipeline;
    FinForNOMPLC: TStringField;
    FinForNOMSUB: TStringField;
    FinForNOMBAN: TStringField;
    psFor: TwwQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField2: TIntegerField;
    StringField6: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    dsPsFor: TwwDataSource;
    pcPag3: TTabSheet;
    Label5: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    EdCodFor: TdxDBColorEdit;
    Label9: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EdCgcFor: TdxDBColorEdit;
    EdNomFor: TdxDBColorEdit;
    Label6: TLabel;
    EdApeFor: TdxDBColorEdit;
    Label12: TLabel;
    EdInsFor: TdxDBColorEdit;
    Label14: TLabel;
    Shape8: TShape;
    Shape12: TShape;
    Label24: TLabel;
    EdEmaFor: TdxDBColorEdit;
    Label25: TLabel;
    EdWebFor: TdxDBColorHyperLinkEdit;
    EdConPlc: TdxDBColorEdit;
    Label27: TLabel;
    Label28: TLabel;
    Shape13: TShape;
    Label26: TLabel;
    Shape14: TShape;
    CbNomPlc: TdxDBColorLookupEdit;
    CbNomSub: TdxDBColorLookupEdit;
    Label29: TLabel;
    Shape15: TShape;
    CbNomBan: TdxDBColorLookupEdit;
    EdCodBan: TdxDBColorEdit;
    EdCodAgb: TdxDBColorEdit;
    EdCodCnb: TdxDBColorEdit;
    Label33: TLabel;
    EdNomCnb: TdxDBColorEdit;
    Label32: TLabel;
    Label31: TLabel;
    Label30: TLabel;
    Shape16: TShape;
    EdSubPlc: TdxDBColorEdit;
    Label2: TLabel;
    Shape6: TShape;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomFor: TdxColorEdit;
    EdPsqCodFor: TdxColorEdit;
    Label11: TLabel;
    EdPsqApeFor: TdxColorEdit;
    Shape2: TShape;
    Bbselecionar: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Shape4: TShape;
    Label3: TLabel;
    Shape5: TShape;
    Panel3: TPanel;
    grFor: ThGrid;
    Label34: TLabel;
    Shape11: TShape;
    Label36: TLabel;
    Shape1: TShape;
    Label37: TLabel;
    Label38: TLabel;
    Label45: TLabel;
    Label39: TLabel;
    EdPrtFor: TdxDBColorEdit;
    EdRefFor: TdxDBColorEdit;
    EdEndFor: TdxDBColorEdit;
    EdCepFor: TdxDBColorEdit;
    sbPsqCep1: TSpeedButton;
    Shape3: TShape;
    Label63: TLabel;
    EdTenFor: TdxDBColorEdit;
    CbNomTit1: TdxDBColorLookupEdit;
    Label85: TLabel;
    EdNumFor: TdxDBColorEdit;
    EdSigUfe: TdxDBColorPickEdit;
    Label84: TLabel;
    Label83: TLabel;
    EdCidFor: TdxDBColorEdit;
    EdBaiFor: TdxDBColorEdit;
    Label82: TLabel;
    Label40: TLabel;
    EdFonFor: TdxDBColorEdit;
    EdPrfFor: TdxDBColorEdit;
    EdFaxFor: TdxDBColorEdit;
    Label41: TLabel;
    EdConFor: TdxDBColorEdit;
    Label42: TLabel;
    Shape7: TShape;
    Label43: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    EdPtrFor: TdxDBColorEdit;
    EdRerFor: TdxDBColorEdit;
    EdEnrFor: TdxDBColorEdit;
    EdCerFor: TdxDBColorEdit;
    sbPsqCep2: TSpeedButton;
    EdForFor: TdxDBColorEdit;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    EdTerFor: TdxDBColorEdit;
    CbNomTit2: TdxDBColorLookupEdit;
    Label51: TLabel;
    Label52: TLabel;
    EdFarFor: TdxDBColorEdit;
    EdPfrFor: TdxDBColorEdit;
    EdBarFor: TdxDBColorEdit;
    EdCirFor: TdxDBColorEdit;
    EdCorFor: TdxDBColorEdit;
    Label53: TLabel;
    EdUfeRet: TdxDBColorPickEdit;
    EdNurFor: TdxDBColorEdit;
    Label54: TLabel;
    Shape17: TShape;
    FinForCERFOR: TStringField;
    FinForENRFOR: TStringField;
    FinForRERFOR: TStringField;
    FinForTERFOR: TStringField;
    FinForNURFOR: TStringField;
    FinForBARFOR: TStringField;
    FinForCIRFOR: TStringField;
    FinForUFERET: TStringField;
    FinForPTRFOR: TStringField;
    FinForFORFOR: TStringField;
    FinForPFRFOR: TStringField;
    FinForFARFOR: TStringField;
    FinForCORFOR: TStringField;
    psForCERFOR: TStringField;
    psForENRFOR: TStringField;
    psForRERFOR: TStringField;
    psForTERFOR: TStringField;
    psForNURFOR: TStringField;
    psForBARFOR: TStringField;
    psForCIRFOR: TStringField;
    psForUFERET: TStringField;
    psForPTRFOR: TStringField;
    psForFORFOR: TStringField;
    psForPFRFOR: TStringField;
    psForFARFOR: TStringField;
    psForCORFOR: TStringField;
    FinForCODAGB: TStringField;
    FinForCODCNB: TStringField;
    ppSystemVariable4: TppSystemVariable;
    ppLabel8: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel45: TppLabel;
    psForCODAGB: TStringField;
    psForCODCNB: TStringField;
    psForQTDPFO: TIntegerField;
    psForSEQPFO: TIntegerField;
    psForFLGTRG: TStringField;
    EstPfa: TwwQuery;
    EstPfaCODPFA: TStringField;
    EstPfaTIPPFA: TStringField;
    EstPfaDSCPFA: TStringField;
    DsPfa: TwwDataSource;
    FinForQTDPFO: TIntegerField;
    FinForSEQPFO: TIntegerField;
    FinForFLGTRG: TStringField;
    FinTmo: TwwQuery;
    FinTmoNOMTMO: TStringField;
    FinTmoCODTMO: TIntegerField;
    DsTmo: TwwDataSource;
    FinForCODTMO: TIntegerField;
    FinForCODPFA: TStringField;
    FinForTIPPFA: TStringField;
    Label10: TLabel;
    Shape18: TShape;
    Shape19: TShape;
    EdCodTmo: TdxDBColorEdit;
    EdCodPfa: TdxDBColorEdit;
    CbNomPfa: TdxDBColorLookupEdit;
    CbNomTmo: TdxDBColorLookupEdit;
    Label13: TLabel;
    Label108: TLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    FinForTELEFONE: TStringField;
    FinGFo: TwwQuery;
    DsGFo: TwwDataSource;
    FinGFoCODGFO: TIntegerField;
    FinGFoNOMGFO: TStringField;
    Label15: TLabel;
    EdCodGFo: TdxDBColorEdit;
    CbNomGfo: TdxDBColorLookupEdit;
    FinForCODGFO: TIntegerField;
    FinForCODSUP: TIntegerField;
    FinForPERACR: TFloatField;
    GerUsu: TwwQuery;
    DsUsu: TwwDataSource;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    Label16: TLabel;
    EdCodSup: TdxDBColorEdit;
    CbNomSup: TdxDBColorLookupEdit;
    FinTFo: TwwQuery;
    DsTFo: TwwDataSource;
    FinTFoCODTFO: TIntegerField;
    FinTFoNOMTFO: TStringField;
    FinForFLGATI: TStringField;
    FinForDCAFOR: TDateTimeField;
    FinForCODUSU: TIntegerField;
    FinForFLGINT: TStringField;
    FinForOBSFOR: TMemoField;
    FinForCODTFO: TIntegerField;
    Label17: TLabel;
    EdCodTFo: TdxDBColorEdit;
    CbNomTFo: TdxDBColorLookupEdit;
    procedure fChkForm(PTras: string);
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCepForExit(Sender: TObject);
    procedure grForDblClick(Sender: TObject);
    procedure nvForBeforeSalva(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure FinForNewRecord(DataSet: TDataSet);
    procedure EdEmaForDblClick(Sender: TObject);
    procedure EdPsqCodForKeyPress(Sender: TObject; var Key: Char);
    procedure nvForImprime(Sender: TObject);
    procedure pcPag3Show(Sender: TObject);
    procedure sbPsqCep1Click(Sender: TObject);
    procedure sbPsqCep2Click(Sender: TObject);
    procedure EdCerForExit(Sender: TObject);
    procedure EdCgcForExit(Sender: TObject);
    procedure dsForDataChange(Sender: TObject; Field: TField);
    procedure nvForSalva(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodAnt, CodEmp, NumPed : integer;
    CepAnt1,CepAnt2,sBase, sOrdem, sFiltro : string;
  end;

var
  AntLocPfa  : string;
  fmManFor   : TfmManFor;

implementation

uses ShellAPI, BbMensag, Bbacesso, Bbgeral, PsqCep, ManGDB, ManPri, Fpreview;

{$R *.DFM}

procedure TfmManFor.FormCreate(Sender: TObject);
begin
  inherited;

  AntLocPfa := '';

  CodAnt := FinForCodFor.Value;

  sBase  := ' Select FinFor.*,'+
            '        FinPlc.NomPlc,'+
            '        FinSub.NomSub,'+
            '        FinBan.NomBan,'+
            '        TextoOcor('''+ '(' +''',PrtFor,'''+ ')' +''','''+ ' ' +''',FonFor,'''+ '' +''','''+ '' +''') as Telefone'+
            ' From FinFor LEFT JOIN FinSub ON (FinFor.ConPlc = FinSub.ConPlc)'+
            '                             AND (FinFor.SubPlc = FinSub.SubPlc)'+
            '             LEFT JOIN FinPlc ON (FinSub.ConPlc = FinPlc.ConPlc)'+
            '             LEFT JOIN FinBan ON (FinFor.CodBan = FinBan.CodBan)';

end;

procedure TfmManFor.EdCepForExit(Sender: TObject);
begin
  inherited;
  if nvFor.Salvar then begin

     if Trim( FinForCepFor.Value ) <> '' then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select * From GerCep '+
                     ' Where NumCep = '''+FinForCepFor.Value+'''';
             Open;

        end;

        if CepAnt1 <> FinForCepFor.Value then begin

           CepAnt1 := FinForCepFor.Value;

           FinForTenFor.Value := quSql.FieldByName('TipCep').AsString;
           FinForBaiFor.Value := quSql.FieldByName('BaiCep').AsString;
           FinForCidFor.Value := quSql.FieldByName('CidCep').AsString;
           FinForSigUfe.Value := quSql.FieldByName('SigUfe').AsString;
           FinForEndFor.Value := fLimpaCep(quSql.FieldByName('EndCep').AsString);

           end
        else
           begin

           if Trim( FinForTenFor.Value ) = '' then FinForTenFor.Value := quSql.FieldByName('TipCep').AsString;
           if Trim( FinForBaiFor.Value ) = '' then FinForBaiFor.Value := quSql.FieldByName('BaiCep').AsString;
           if Trim( FinForCidFor.Value ) = '' then FinForCidFor.Value := quSql.FieldByName('CidCep').AsString;
           if Trim( FinForSigUfe.Value ) = '' then FinForSigUfe.Value := quSql.FieldByName('SigUfe').AsString;
           if Trim( FinForEndFor.Value ) = '' then FinForEndFor.Value := fLimpaCep(quSql.FieldByName('EndCep').AsString);

        end;
     end;
  end;
end;

procedure TfmManFor.BbselecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by FinFor.CodFor';
       1: sOrdem := ' Order by FinFor.ApeFor';
       2: sOrdem := ' Order by FinFor.NomFor';
  end;

  if (EdpsqCodFor.Text <> '') then sFiltro := ' Where FinFor.CodFor = '''+ EdPsqCodFor.Text +'''';

  if Rgbusca.ItemIndex = 0 then begin

     if Trim( EdpsqApeFor.Text ) <> '' then sFiltro := ' Where FinFor.ApeFor LIKE '''+ EdPsqApeFor.Text +'%''';
     if Trim( EdpsqNomFor.Text ) <> '' then sFiltro := ' Where FinFor.NomFor LIKE '''+ EdPsqNomFor.Text +'%''';

     end
  else
     begin

     if Trim( EdpsqApeFor.Text ) <> '' then sFiltro := ' Where FinFor.ApeFor LIKE ''%'+ EdPsqApeFor.Text +'%''';
     if Trim( EdpsqNomFor.Text ) <> '' then sFiltro := ' Where FinFor.NomFor LIKE ''%'+ EdPsqNomFor.Text +'%''';

  end;

  with FinFor,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManFor.FinForNewRecord(DataSet: TDataSet);
begin
  inherited;

  FinFor.DisableControls;

  FinForCodTFo.Value := 1;
  FinForTipPfa.Value := 'Entrada';

  FinFor.EnableControls;

  PcFor.ActivePage := pcPag2;

  AntLocPfa := ' ';
  
  EdApeFor.SetFocus;

end;

procedure TfmManFor.nvForBeforeSalva(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  if Trim( FinForNomFor.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigátorio não Informado', EdNomFor);

  if Trim( FinForCgcFor.Value ) <> '' then begin

     if not FConsCnpj(FinForCgcFor.Value) then begin

        if fMsg('CNPJ do Fornecedor com Conteudo Invalido. Confirma?','S') then begin

           end
        else
           begin

           pcFor.ActivePage := pcPag1;
           
           EdCgcFor.SetFocus;

           Abort;

        end;
     end;
  end;

  if FinFor.State = dsInsert then begin

     if (Trim( FinForCerFor.Value ) = '') and (Trim( FinForCepFor.Value ) <> '') then FinForCerFor.Value := FinForCepFor.Value;
     if (Trim( FinForTerFor.Value ) = '') and (Trim( FinForTenFor.Value ) <> '') then FinForTerFor.Value := FinForTenFor.Value;
     if (Trim( FinForEnrFor.Value ) = '') and (Trim( FinForEndFor.Value ) <> '') then FinForEnrFor.Value := FinForEndFor.Value;
     if (Trim( FinForRerFor.Value ) = '') and (Trim( FinForRefFor.Value ) <> '') then FinForRerFor.Value := FinForRefFor.Value;
     if (Trim( FinForNurFor.Value ) = '') and (Trim( FinForNumFor.Value ) <> '') then FinForNurFor.Value := FinForNumFor.Value;
     if (Trim( FinForBarFor.Value ) = '') and (Trim( FinForBaiFor.Value ) <> '') then FinForBarFor.Value := FinForBaiFor.Value;
     if (Trim( FinForCirFor.Value ) = '') and (Trim( FinForCidFor.Value ) <> '') then FinForCirFor.Value := FinForCidFor.Value;
     if (Trim( FinForUfeRet.Value ) = '') and (Trim( FinForSigUfe.Value ) <> '') then FinForUfeRet.Value := FinForSigUfe.Value;
     if (Trim( FinForCorFor.Value ) = '') and (Trim( FinForConFor.Value ) <> '') then FinForCorFor.Value := FinForConFor.Value;
     if (Trim( FinForPtrFor.Value ) = '') and (Trim( FinForPrtFor.Value ) <> '') then FinForPtrFor.Value := FinForPrtFor.Value;
     if (Trim( FinForForFor.Value ) = '') and (Trim( FinForFonFor.Value ) <> '') then FinForForFor.Value := FinForFonFor.Value;
     if (Trim( FinForPfrFor.Value ) = '') and (Trim( FinForPrfFor.Value ) <> '') then FinForPfrFor.Value := FinForPrfFor.Value;
     if (Trim( FinForFarFor.Value ) = '') and (Trim( FinForFaxFor.Value ) <> '') then FinForFarFor.Value := FinForFaxFor.Value;

  end;

  FinForTipPfa.Value := 'Entrada';

  if Trim( FinForCodPfa.Value ) = '' then begin

     FinForCodPfa.Clear;
     FinForTipPfa.Clear;

  end;
end;

procedure TfmManFor.fChkForm(PTras: string);
var
cForm: TComponent;
begin

  {A mesma transação só pode ser ativada uma única vez}
  cForm := FindComponent('fm' + PTras);

  if (cForm <> nil) then begin
    //MessageBeep(0);
    TForm(cForm).WindowState := wsNormal;
    TForm(cForm).BringToFront;
    Abort;
  end;
end;

procedure TfmManFor.pcPag2Show(Sender: TObject);
begin
  inherited;
  EdApeFor.SetFocus;
end;

procedure TfmManFor.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodFor.SetFocus;
end;

procedure TfmManFor.grForDblClick(Sender: TObject);
begin
  inherited;
  pcFor.ActivePage := pcPag2;
end;

procedure TfmManFor.FormShow(Sender: TObject);
begin
  inherited;

  PcFor.ActivePage := PcPag1;

  EdPsqCodFor.SetFocus;

end;

procedure TfmManFor.EdEmaForDblClick(Sender: TObject);
var
cemail : string;
begin
  inherited;

  if Pos('@', EdEmaFor.Text)= 0 Then
     begin

     fMsgErro('E-Mail Incorreto',EdEmaFor);

     end
  else
     begin

     cEMail := 'mailto:' + Trim(EdEmaFor.Text) + ' <' + Trim( EdEmaFor.Text ) + '>';
     ShellExecute(Handle, 'Open', PChar(cEMail), Nil, '', sw_ShowNormal);

  end;
end;

procedure TfmManFor.EdPsqCodForKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManFor.nvForImprime(Sender: TObject);
begin
  inherited;
  if FinForCodFor.Value > 0 then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManFor);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        FreeAndNil(fmPreview);
        
     end;
  end;
end;

procedure TfmManFor.pcPag3Show(Sender: TObject);
begin
  inherited;

  CepAnt1 := FinForCepFor.Value;
  CepAnt2 := FinForCerFor.Value;

  EdCepFor.SetFocus;

end;

procedure TfmManFor.sbPsqCep1Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqCep := TfmPsqCep.Create(Self);

     fmPsqCep.ShowModal;

     if Trim( fmPsqCep.sCepCli ) <> '' then begin

        if not nvFor.Salvar then begin

           if FinForCodFor.Value > 0 then
              FinFor.Edit
           else
              FinFor.Insert;

        end;

        FinForCepFor.Value := fmPsqCep.sCepCli;
        FinForTenFor.Value := fmPsqCep.sTenCli;
        FinForBaiFor.Value := fmPsqCep.sBaiCli;
        FinForCidFor.Value := fmPsqCep.sCidCli;
        FinForSigUfe.Value := fmPsqCep.sUfeCli;
        FinForEndFor.Value := fLimpaCep(fmPsqCep.sEndCli);

     end;

  finally   

     FreeAndNil(fmPsqCep);

  end;

  if Trim( FinForCepFor.Value ) <> '' then EdNumFor.SetFocus;

end;

procedure TfmManFor.sbPsqCep2Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqCep := TfmPsqCep.Create(Self);

     fmPsqCep.ShowModal;

     if Trim( fmPsqCep.sCepCli ) <> '' then begin

        if not nvFor.Salvar then begin

           if FinForCodFor.Value > 0 then
              FinFor.Edit
           else
              FinFor.Insert;

        end;

        FinForCerFor.Value := fmPsqCep.sCepCli;
        FinForTerFor.Value := fmPsqCep.sTenCli;
        FinForBarFor.Value := fmPsqCep.sBaiCli;
        FinForCirFor.Value := fmPsqCep.sCidCli;
        FinForUfeRet.Value := fmPsqCep.sUfeCli;
        FinForEnrFor.Value := fLimpaCep(fmPsqCep.sEndCli);

     end;

  finally   

     FreeAndNil(fmPsqCep);

  end;

  if Trim( FinForCerFor.Value ) <> '' then EdNurFor.SetFocus;

end;

procedure TfmManFor.EdCerForExit(Sender: TObject);
begin
  inherited;
  if nvFor.Salvar then begin

     if Trim( FinForCerFor.Value ) <> '' then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select * From GerCep '+
                     ' Where NumCep = '''+FinForCerFor.Value+'''';
             Open;

        end;

        if CepAnt2 <> FinForCerFor.Value then begin

           CepAnt2 := FinForCerFor.Value;

           FinForTerFor.Value := quSql.FieldByName('TipCep').AsString;
           FinForBarFor.Value := quSql.FieldByName('BaiCep').AsString;
           FinForCirFor.Value := quSql.FieldByName('CidCep').AsString;
           FinForUfeRet.Value := quSql.FieldByName('SigUfe').AsString;
           FinForEnrFor.Value := fLimpaCep(quSql.FieldByName('EndCep').AsString);

           end
        else
           begin

           if Trim( FinForTerFor.Value ) = '' then FinForTerFor.Value := quSql.FieldByName('TipCep').AsString;
           if Trim( FinForBarFor.Value ) = '' then FinForBarFor.Value := quSql.FieldByName('BaiCep').AsString;
           if Trim( FinForCirFor.Value ) = '' then FinForCirFor.Value := quSql.FieldByName('CidCep').AsString;
           if Trim( FinForUfeRet.Value ) = '' then FinForUfeRet.Value := quSql.FieldByName('SigUfe').AsString;
           if Trim( FinForEnrFor.Value ) = '' then FinForEnrFor.Value := fLimpaCep(quSql.FieldByName('EndCep').AsString);

        end;
     end;
  end;
end;

procedure TfmManFor.EdCgcForExit(Sender: TObject);
begin
  inherited;
  if (nvFor.Salvar) and (Trim( FinForCgcFor.Value ) <> '') then begin

     if FinFor.State = dsInsert then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as Reg From FinFor'+
                     ' Where CgcFor = '''+FinForCgcFor.Value +'''';
             Open;

        end;

        end
     else
        begin

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as Reg From FinFor'+
                     ' Where CgcFor = '''+FinForCgcFor.Value +''''+
                     '   and CodFor <> '''+IntToStr(FinForCodFor.Value)+'''';
             Open;

        end;
     end;

     if quSql.FieldbyName('Reg').AsInteger > 0 then begin

        if not fMsg('Encontrados Fornecedores com o Mesmo CNPJ. Continua?','O') then begin

           sFiltro := ' Where CgcFor = '''+FinForCgcFor.Value +'''';

           with FinFor,SQL do begin

                Close;
                Text := sBase + sFiltro + sOrdem;
                Open;

           end;

           pcFor.ActivePage := pcPag1;

           grFor.SetFocus;

        end;
     end;
  end;
end;

procedure TfmManFor.dsForDataChange(Sender: TObject; Field: TField);
var
LocPfa : string;
begin
  inherited;
  if Trim( EdSigUfe.Text ) <> '' then begin

     if EdSigUfe.Text = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if EdSigUfe.Text <> GUfeEmp then
           LocPfa := 'Outros Estados'
        else
           LocPfa := 'Mesmo Estado';

     end;

     if LocPfa <> AntLocPfa then begin

        AntLocPfa := LocPfa;

        EstPfa.Close;
        EstPfa.Params[0].AsString := LocPfa;
        EstPfa.Open;

     end;

     end
  else
     begin

     AntLocPfa := ' ';

     EstPfa.Close;
     EstPfa.Params[0].AsString := '';
     EstPfa.Open;

  end;

  if CodAnt <> FinForConPlc.Value then begin

     CodAnt := FinForConPlc.Value;

     FinSub.Close;
     FinSub.Params[0].AsInteger := FinForConPlc.Value;
     FinSub.Open;

  end;
end;

procedure TfmManFor.nvForSalva(Sender: TObject);
begin
  inherited;

  FinSub.Close;
  FinSub.Params[0].AsInteger := FinForConPlc.Value;
  FinSub.Open;
  
end;

procedure TfmManFor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManFor.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManFor := nil;
end;

end.
