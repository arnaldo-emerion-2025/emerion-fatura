unit ManDes;

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
  TfmManDes = class(TfmPadrao)
    GerUfe: TwwQuery;
    GerUfeSIGUFE: TStringField;
    GerUfeNOMUFE: TStringField;
    UpCmpDes: TUpdateSQL;
    CepTit: TwwQuery;
    CepTitNOMTIT: TStringField;
    CepTitABRTIT: TStringField;
    CmpDes: TwwQuery;
    dsCmpDes: TwwDataSource;
    quSql: TwwQuery;
    pcDes: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel1: TPanel;
    nvDes: ThDBNavigator;
    DsTit: TwwDataSource;
    DsUfe: TwwDataSource;
    Shape2: TShape;
    Shape6: TShape;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomDes: TdxColorEdit;
    EdPsqId_CmpDes: TdxColorEdit;
    Label11: TLabel;
    EdPsqApeDes: TdxColorEdit;
    Bbselecionar: TBitBtn;
    Shape4: TShape;
    Label3: TLabel;
    Shape5: TShape;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Panel3: TPanel;
    grDes: ThGrid;
    Label34: TLabel;
    Shape11: TShape;
    Label5: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    EdId_CmpDes: TdxDBColorEdit;
    Label9: TLabel;
    Label7: TLabel;
    EdNomDes: TdxDBColorEdit;
    Label6: TLabel;
    EdApeDes: TdxDBColorEdit;
    Label14: TLabel;
    Shape8: TShape;
    Shape12: TShape;
    sbPsqCep: TSpeedButton;
    EdCepDes: TdxDBColorEdit;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EdWebDes: TdxDBColorHyperLinkEdit;
    EdEmaDes: TdxDBColorEdit;
    EdPrtDes: TdxDBColorEdit;
    EdFonDes: TdxDBColorEdit;
    EdBaiDes: TdxDBColorEdit;
    EdRefDes: TdxDBColorEdit;
    EdEndDes: TdxDBColorEdit;
    EdTenDes: TdxDBColorEdit;
    Label15: TLabel;
    CbNomTit: TdxDBColorLookupEdit;
    Label18: TLabel;
    EdNumDes: TdxDBColorEdit;
    EdSigUfe: TdxDBColorLookupEdit;
    Label21: TLabel;
    EdCidDes: TdxDBColorEdit;
    Label20: TLabel;
    Label23: TLabel;
    EdPrfDes: TdxDBColorEdit;
    EdFaxDes: TdxDBColorEdit;
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
    ppId_CmpDes: TppDBText;
    ppNomDes: TppDBText;
    ppCgcDes: TppDBText;
    ppEndDes: TppDBText;
    pDBPipeline: TppDBPipeline;
    ppCepDes: TppDBText;
    ppFonDes: TppDBText;
    ppSystemVariable4: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel45: TppLabel;
    Label63: TLabel;
    EdFlgAti: TdxDBCheckEdit;
    rgStatus: TRadioGroup;
    Label10: TLabel;
    CmpDesNOMDES: TStringField;
    CmpDesAPEDES: TStringField;
    CmpDesCEPDES: TStringField;
    CmpDesENDDES: TStringField;
    CmpDesREFDES: TStringField;
    CmpDesTENDES: TStringField;
    CmpDesNUMDES: TStringField;
    CmpDesBAIDES: TStringField;
    CmpDesCIDDES: TStringField;
    CmpDesSIGUFE: TStringField;
    CmpDesCGCDES: TStringField;
    CmpDesINSDES: TStringField;
    CmpDesPRTDES: TStringField;
    CmpDesFONDES: TStringField;
    CmpDesPRFDES: TStringField;
    CmpDesFAXDES: TStringField;
    CmpDesEMADES: TStringField;
    CmpDesWEBDES: TStringField;
    CmpDesFLGATI: TStringField;
    CmpDesFLGINT: TStringField;
    CmpDesCGCCPF: TStringField;
    CmpDesENDERECO: TStringField;
    CmpDesTELEFONE: TStringField;
    CmpDesID_CMPDES: TIntegerField;
    CmpDesOBSDES: TMemoField;
    EdObsDes: TdxDBColorMemo;
    Label8: TLabel;
    EdConDes: TdxDBColorEdit;
    CmpDesCONDES: TStringField;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCepDesExit(Sender: TObject);
    procedure sbPsqCepClick(Sender: TObject);
    procedure grDesDblClick(Sender: TObject);
    procedure nvDesBeforeSalva(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure CmpDesNewRecord(DataSet: TDataSet);
    procedure EdEmaDesDblClick(Sender: TObject);
    procedure EdPsqId_CmpDesKeyPress(Sender: TObject; var Key: Char);
    procedure nvDesImprime(Sender: TObject);
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
  fmManDes: TfmManDes;

implementation

uses ShellAPI, BbMensag, Bbacesso, Bbgeral, PsqCep, ManPri, ManGDB, Fpreview;

{$R *.DFM}

procedure TfmManDes.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select CmpDes.*,'+
           '        FormatCgcCpf(CgcDes) as CgcCpf,'+
           '        Endereco(TenDes,EndDes,NumDes,RefDes,BaiDes,CidDes,SigUfe) as Endereco,'+
           '        TextoOcor('''+ '(' +''',PrtDes,'''+ ')' +''','''+ ' ' +''',FonDes,'''+ '' +''','''+ '' +''') as Telefone'+
           ' From CmpDes';
end;

procedure TfmManDes.EdCepDesExit(Sender: TObject);
begin
  inherited;
  if nvDes.Salvar then begin

     if Trim( CmpDesCepDes.Value ) <> '' then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select * From GerCep '+
                     ' Where NumCep = '''+CmpDesCepDes.Value+'''';
             Open;

        end;

        if CepAnt <> CmpDesCepDes.Value then begin

           CepAnt := CmpDesCepDes.Value;

           CmpDesTenDes.Value := quSql.FieldByName('TipCep').AsString;
           CmpDesBaiDes.Value := quSql.FieldByName('BaiCep').AsString;
           CmpDesCidDes.Value := quSql.FieldByName('CidCep').AsString;
           CmpDesSigUfe.Value := quSQL.FieldByName('SigUfe').AsString;
           CmpDesEndDes.Value := fLimpaCep(quSql.FieldByName('EndCep').AsString);

           end
        else
           begin

           if Trim( CmpDesTenDes.Value ) = '' then CmpDesTenDes.Value := quSql.FieldByName('TipCep').AsString;
           if Trim( CmpDesBaiDes.Value ) = '' then CmpDesBaiDes.Value := quSql.FieldByName('BaiCep').AsString;
           if Trim( CmpDesCidDes.Value ) = '' then CmpDesCidDes.Value := quSql.FieldByName('CidCep').AsString;
           if Trim( CmpDesSigUfe.Value ) = '' then CmpDesSigUfe.Value := quSql.FieldByName('SigUfe').AsString;
           if Trim( CmpDesEndDes.Value ) = '' then CmpDesEndDes.Value := fLimpaCep(quSql.FieldByName('EndCep').AsString);

        end;
     end;
  end;
end;

procedure TfmManDes.sbPsqCepClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCep := TfmPsqCep.Create(Self);

     fmPsqCep.ShowModal;

     if Trim( fmPsqCep.sCepCli ) <> '' then begin

        if not nvDes.Salvar then begin

           if CmpDesId_CmpDes.Value > 0 then
              CmpDes.Edit
           else
              CmpDes.Insert;

        end;

        CmpDesCepDes.Value := fmPsqCep.sCepCli;
        CmpDesTenDes.Value := fmPsqCep.sTenCli;
        CmpDesBaiDes.Value := fmPsqCep.sBaiCli;
        CmpDesCidDes.Value := fmPsqCep.sCidCli;
        CmpDesSigUfe.Value := fmPsqCep.sUfeCli;
        CmpDesEndDes.Value := fLimpaCep(fmPsqCep.sEndCli);

     end;

  finally

     FreeAndNil(fmPsqCep);

  end;

  if Trim( CmpDesCepDes.Value ) <> '' then EdNumDes.SetFocus;

end;

procedure TfmManDes.BbselecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order By CmpDes.Id_CmpDes';
       1: sOrdem := ' Order By CmpDes.ApeDes';
       2: sOrdem := ' Order By CmpDes.NomDes';
  end;

  if Trim(EdPsqId_CmpDes.Text) <> '' then sFiltro := ' Where CmpDes.Id_CmpDes = '+ QuotedStr(EdpsqId_CmpDes.Text);

  if Rgbusca.ItemIndex = 0 then begin

     if Trim(EdPsqApeDes.Text) <> '' then sFiltro := ' Where CmpDes.ApeDes LIKE '+ QuotedStr(EdPsqApeDes.Text +'%');
     if Trim(EdPsqNomDes.Text) <> '' then sFiltro := ' Where CmpDes.NomDes LIKE '+ QuotedStr(EdPsqNomDes.Text +'%');

     end
  else
     begin

     if Trim(EdPsqApeDes.Text) <> '' then sFiltro := ' Where CmpDes.ApeDes LIKE '+ QuotedStr('%'+ EdPsqApeDes.Text +'%');
     if Trim(EdPsqNomDes.Text) <> '' then sFiltro := ' Where CmpDes.NomDes LIKE '+ QuotedStr('%'+ EdPsqNomDes.Text +'%');

  end;

  if pos('Where',sFiltro) > 0 then begin

     case rgStatus.ItemIndex of
          0: sFiltro := sFiltro + ' and CmpDes.FlgAti = '+ QuotedStr('Sim');
          1: sFiltro := sFiltro + ' and CmpDes.FlgAti = '+ QuotedStr('Nao');
     end;

     end
  else
     begin

     case rgStatus.ItemIndex of
          0: sFiltro := ' Where CmpDes.FlgAti = '+ QuotedStr('Sim');
          1: sFiltro := ' Where CmpDes.FlgAti = '+ QuotedStr('Nao');
     end;
  end;

  with CmpDes,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManDes.CmpDesNewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpDes.DisableControls;

  CmpDesFlgAti.Value := 'Sim';

  CmpDes.EnableControls;

  PcDes.ActivePage := pcPag2;

  EdApeDes.SetFocus;

end;

procedure TfmManDes.nvDesBeforeSalva(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  if Trim( CmpDesNomDes.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigátorio não Informado', EdNomDes);

end;

procedure TfmManDes.pcPag2Show(Sender: TObject);
begin
  inherited;

  CepAnt := CmpDesCepDes.Value;

  EdApeDes.SetFocus;

end;

procedure TfmManDes.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqId_CmpDes.SetFocus;
end;

procedure TfmManDes.grDesDblClick(Sender: TObject);
begin
  inherited;
  pcDes.ActivePage := pcPag2;
end;

procedure TfmManDes.FormShow(Sender: TObject);
begin
  inherited;

  PcDes.ActivePage := PcPag1;

  EdPsqId_CmpDes.SetFocus;

end;

procedure TfmManDes.EdEmaDesDblClick(Sender: TObject);
var
cemail : string;
begin
  inherited;

  if Pos('@', EdEmaDes.Text)= 0 then
     fMsgErro('E-Mail Incorreto',EdEmaDes)
  else
     begin

     cEMail := 'mailto:' + Trim(EdEmaDes.Text) + ' <' + Trim( EdEmaDes.Text ) + '>';
     ShellExecute(Handle, 'Open', PChar(cEMail), Nil, '', sw_ShowNormal);

  end;
end;

procedure TfmManDes.EdPsqId_CmpDesKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManDes.nvDesImprime(Sender: TObject);
begin
  inherited;

  CmpDes.First;

  if CmpDesId_CmpDes.Value > 0 then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManDes);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManDes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManDes.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManDes := Nil;
end;

procedure TfmManDes.EdLocTr1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '1'..'9' ] ) then key := #0;
end;

end.
