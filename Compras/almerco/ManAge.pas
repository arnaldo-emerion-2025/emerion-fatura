unit ManAge;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms, 
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, hNavigator,
  Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, dxDBColorLookupEdit,
  dxDBColorHyperLinkEdit, dxDBColorEdit, dxColorEdit, dxColorMaskEdit,
  ComCtrls, Grids, ImgList, dxDBColorPickEdit, dxDBColorMemo;

type
  TfmManAge = class(TfmPadrao)
    GerUfe: TwwQuery;
    GerUfeSIGUFE: TStringField;
    GerUfeNOMUFE: TStringField;
    UpAge: TUpdateSQL;
    CepTit: TwwQuery;
    CepTitNOMTIT: TStringField;
    CepTitABRTIT: TStringField;
    CmpAge: TwwQuery;
    dsAge: TwwDataSource;
    quSql: TwwQuery;
    pcAge: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel1: TPanel;
    nvAge: ThDBNavigator;
    DsTit: TwwDataSource;
    DsUfe: TwwDataSource;
    Shape2: TShape;
    Shape6: TShape;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomAge: TdxColorEdit;
    EdPsqId_CmpAge: TdxColorEdit;
    Label11: TLabel;
    EdPsqApeAge: TdxColorEdit;
    Bbselecionar: TBitBtn;
    Shape4: TShape;
    Label3: TLabel;
    Shape5: TShape;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Panel3: TPanel;
    grAge: ThGrid;
    Label34: TLabel;
    Shape11: TShape;
    Label5: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    EdId_CmpAge: TdxDBColorEdit;
    Label9: TLabel;
    Label7: TLabel;
    EdNomAge: TdxDBColorEdit;
    Label6: TLabel;
    EdApeAge: TdxDBColorEdit;
    Label14: TLabel;
    Shape8: TShape;
    Shape12: TShape;
    sbPsqCep: TSpeedButton;
    EdCepAge: TdxDBColorEdit;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EdWebAge: TdxDBColorHyperLinkEdit;
    EdEmaAge: TdxDBColorEdit;
    EdPrtAge: TdxDBColorEdit;
    EdFonAge: TdxDBColorEdit;
    EdBaiAge: TdxDBColorEdit;
    EdRefAge: TdxDBColorEdit;
    EdEndAge: TdxDBColorEdit;
    EdTenAge: TdxDBColorEdit;
    Label15: TLabel;
    CbNomTit: TdxDBColorLookupEdit;
    Label18: TLabel;
    EdNumAge: TdxDBColorEdit;
    EdSigUfe: TdxDBColorLookupEdit;
    Label21: TLabel;
    EdCidAge: TdxDBColorEdit;
    Label20: TLabel;
    Label23: TLabel;
    EdPrfAge: TdxDBColorEdit;
    EdFaxAge: TdxDBColorEdit;
    ppReport: TppReport;
    hbReport: TppHeaderBand;
    ppLabel20: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    dbReport: TppDetailBand;
    ppId_CmpAge: TppDBText;
    ppNomAge: TppDBText;
    ppCgcAge: TppDBText;
    ppEndAge: TppDBText;
    pDBPipeline: TppDBPipeline;
    ppCepAge: TppDBText;
    ppFonAge: TppDBText;
    ppSystemVariable4: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel45: TppLabel;
    Label63: TLabel;
    EdFlgAti: TdxDBCheckEdit;
    rgStatus: TRadioGroup;
    FinGTr: TwwQuery;
    DsGTr: TwwDataSource;
    FinGTrCODGTR: TIntegerField;
    FinGTrNOMGTR: TStringField;
    CmpAgeNOMAGE: TStringField;
    CmpAgeAPEAGE: TStringField;
    CmpAgeCEPAGE: TStringField;
    CmpAgeENDAGE: TStringField;
    CmpAgeREFAGE: TStringField;
    CmpAgeTENAGE: TStringField;
    CmpAgeNUMAGE: TStringField;
    CmpAgeBAIAGE: TStringField;
    CmpAgeCIDAGE: TStringField;
    CmpAgeSIGUFE: TStringField;
    CmpAgeCGCAGE: TStringField;
    CmpAgeINSAGE: TStringField;
    CmpAgePRTAGE: TStringField;
    CmpAgeFONAGE: TStringField;
    CmpAgePRFAGE: TStringField;
    CmpAgeFAXAGE: TStringField;
    CmpAgeEMAAGE: TStringField;
    CmpAgeWEBAGE: TStringField;
    CmpAgeFLGATI: TStringField;
    CmpAgeFLGINT: TStringField;
    CmpAgeCGCCPF: TStringField;
    CmpAgeENDERECO: TStringField;
    CmpAgeTELEFONE: TStringField;
    rgTipo: TRadioGroup;
    Label8: TLabel;
    CmpAgeTIPAGE: TStringField;
    EdTipAge: TdxDBColorPickEdit;
    CmpAgeCONAGE: TStringField;
    Label10: TLabel;
    EdConAge: TdxDBColorEdit;
    CmpAgeID_CMPAGE: TIntegerField;
    CmpAgeOBSAGE: TMemoField;
    Label26: TLabel;
    EdObsPor: TdxDBColorMemo;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCepAgeExit(Sender: TObject);
    procedure sbPsqCepClick(Sender: TObject);
    procedure grAgeDblClick(Sender: TObject);
    procedure nvAgeBeforeSalva(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure CmpAgeNewRecord(DataSet: TDataSet);
    procedure EdEmaAgeDblClick(Sender: TObject);
    procedure EdPsqId_CmpAgeKeyPress(Sender: TObject; var Key: Char);
    procedure nvAgeImprime(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdLocTr1KeyPress(Sender: TObject; var Key: Char);
  private
    {Private declarations}
  public
    {Public declarations}
    CodEmp, NumPed : integer;
    CepAnt, sBase, sOrdem, sFiltro : string;
  end;

var
  fmManAge: TfmManAge;

implementation

uses ShellAPI, BbMensag, Bbacesso, Bbgeral, PsqCep, ManPri, ManGDB, Fpreview;

{$R *.DFM}

procedure TfmManAge.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select CmpAge.*,'+
           '        FormatCgcCpf(CgcAge) as CgcCpf,'+
           '        Endereco(TenAge,EndAge,NumAge,RefAge,BaiAge,CidAge,SigUfe) as Endereco,'+
           '        TextoOcor('+ QuotedStr('(') +',PrtAge,'+ QuotedStr(')') +','+ QuotedStr(' ') +',FonAge,'+ QuotedStr('') +','+ QuotedStr('') +') as Telefone'+
           ' From CmpAge';
end;

procedure TfmManAge.EdCepAgeExit(Sender: TObject);
begin
  inherited;
  if nvAge.Salvar then begin

     if Trim( CmpAgeCepAge.Value ) <> '' then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select * From GerCep '+
                     ' Where GerCep.NumCep = '+ QuotedStr(CmpAgeCepAge.Value);
             Open;

        end;

        if CepAnt <> CmpAgeCepAge.Value then begin

           CepAnt := CmpAgeCepAge.Value;

           CmpAgeTenAge.Value := quSql.FieldByName('TipCep').AsString;
           CmpAgeBaiAge.Value := quSql.FieldByName('BaiCep').AsString;
           CmpAgeCidAge.Value := quSql.FieldByName('CidCep').AsString;
           CmpAgeSigUfe.Value := quSQL.FieldByName('SigUfe').AsString;
           CmpAgeEndAge.Value := fLimpaCep(quSql.FieldByName('EndCep').AsString);

           end
        else
           begin

           if Trim( CmpAgeTenAge.Value ) = '' then CmpAgeTenAge.Value := quSql.FieldByName('TipCep').AsString;
           if Trim( CmpAgeBaiAge.Value ) = '' then CmpAgeBaiAge.Value := quSql.FieldByName('BaiCep').AsString;
           if Trim( CmpAgeCidAge.Value ) = '' then CmpAgeCidAge.Value := quSql.FieldByName('CidCep').AsString;
           if Trim( CmpAgeSigUfe.Value ) = '' then CmpAgeSigUfe.Value := quSql.FieldByName('SigUfe').AsString;
           if Trim( CmpAgeEndAge.Value ) = '' then CmpAgeEndAge.Value := fLimpaCep(quSql.FieldByName('EndCep').AsString);

        end;
     end;
  end;
end;

procedure TfmManAge.sbPsqCepClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCep := TfmPsqCep.Create(Self);

     fmPsqCep.ShowModal;

     if Trim( fmPsqCep.sCepCli ) <> '' then begin

        if not nvAge.Salvar then begin

           if CmpAgeId_CmpAge.Value > 0 then
              CmpAge.Edit
           else
              CmpAge.Insert;

        end;

        CmpAgeCepAge.Value := fmPsqCep.sCepCli;
        CmpAgeTenAge.Value := fmPsqCep.sTenCli;
        CmpAgeBaiAge.Value := fmPsqCep.sBaiCli;
        CmpAgeCidAge.Value := fmPsqCep.sCidCli;
        CmpAgeSigUfe.Value := fmPsqCep.sUfeCli;
        CmpAgeEndAge.Value := fLimpaCep(fmPsqCep.sEndCli);

     end;

  finally

     FreeAndNil(fmPsqCep);

  end;

  if Trim( CmpAgeCepAge.Value ) <> '' then EdNumAge.SetFocus;

end;

procedure TfmManAge.BbselecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order By CmpAge.Id_CmpAge';
       1: sOrdem := ' Order By CmpAge.ApeAge';
       2: sOrdem := ' Order By CmpAge.NomAge';
  end;

  if Trim(EdPsqId_CmpAge.Text) <> '' then sFiltro := ' Where CmpAge.Id_CmpAge = '+ QuotedStr(EdPsqId_CmpAge.Text);

  if Rgbusca.ItemIndex = 0 then begin

     if Trim(EdPsqApeAge.Text) <> '' then sFiltro := ' Where CmpAge.ApeAge LIKE '+ QuotedStr(EdPsqApeAge.Text +'%');
     if Trim(EdPsqNomAge.Text) <> '' then sFiltro := ' Where CmpAge.NomAge LIKE '+ QuotedStr(EdPsqNomAge.Text +'%');

     end
  else
     begin

     if Trim(EdPsqApeAge.Text) <> '' then sFiltro := ' Where CmpAge.ApeAge LIKE '+ QuotedStr('%'+ EdPsqApeAge.Text +'%');
     if Trim(EdPsqNomAge.Text) <> '' then sFiltro := ' Where CmpAge.NomAge LIKE '+ QuotedStr('%'+ EdPsqNomAge.Text +'%');

  end;

  if pos('Where',sFiltro) > 0 then begin

     case rgStatus.ItemIndex of
          0: sFiltro := sFiltro + ' and CmpAge.FlgAti = '+ QuotedStr('Sim');
          1: sFiltro := sFiltro + ' and CmpAge.FlgAti = '+ QuotedStr('Nao');
     end;

     end
  else
     begin

     case rgStatus.ItemIndex of
          0: sFiltro := ' Where CmpAge.FlgAti = '+ QuotedStr('Sim');
          1: sFiltro := ' Where CmpAge.FlgAti = '+ QuotedStr('Nao');
     end;
  end;

  if pos('Where',sFiltro) > 0 then begin

     case rgTipo.ItemIndex of
          0: sFiltro := sFiltro + ' and CmpAge.TipAge = '+ QuotedStr('Interno');
          1: sFiltro := sFiltro + ' and CmpAge.TipAge = '+ QuotedStr('Externo');
     end;

     end
  else
     begin

     case rgTipo.ItemIndex of
          0: sFiltro := ' Where CmpAge.TipAge = '+ QuotedStr('Interno');
          1: sFiltro := ' Where CmpAge.TipAge = '+ QuotedStr('Externo');
     end;
  end;

  with CmpAge,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManAge.CmpAgeNewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpAge.DisableControls;

  CmpAgeFlgAti.Value := 'Sim';

  CmpAge.EnableControls;

  PcAge.ActivePage := pcPag2;

  EdApeAge.SetFocus;

end;

procedure TfmManAge.nvAgeBeforeSalva(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  if Trim( CmpAgeNomAge.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigátorio não Informado', EdNomAge);

end;

procedure TfmManAge.pcPag2Show(Sender: TObject);
begin
  inherited;

  CepAnt := CmpAgeCepAge.Value;

  EdApeAge.SetFocus;

end;

procedure TfmManAge.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqId_CmpAge.SetFocus;
end;

procedure TfmManAge.grAgeDblClick(Sender: TObject);
begin
  inherited;
  pcAge.ActivePage := pcPag2;
end;

procedure TfmManAge.FormShow(Sender: TObject);
begin
  inherited;

  PcAge.ActivePage := PcPag1;

  EdPsqId_CmpAge.SetFocus;

end;

procedure TfmManAge.EdEmaAgeDblClick(Sender: TObject);
var
cemail : string;
begin
  inherited;

  if Pos('@', EdEmaAge.Text)= 0 then
     fMsgErro('E-Mail Incorreto',EdEmaAge)
  else
     begin

     cEMail := 'mailto:' + Trim(EdEmaAge.Text) + ' <' + Trim( EdEmaAge.Text ) + '>';
     ShellExecute(Handle, 'Open', PChar(cEMail), Nil, '', sw_ShowNormal);

  end;
end;

procedure TfmManAge.EdPsqId_CmpAgeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManAge.nvAgeImprime(Sender: TObject);
begin
  inherited;

  CmpAge.First;

  if CmpAgeId_CmpAge.Value > 0 then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManAge);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManAge.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManAge.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManAge := Nil;
end;

procedure TfmManAge.EdLocTr1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '1'..'9' ] ) then key := #0;
end;

end.
