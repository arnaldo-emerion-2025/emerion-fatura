unit ManPor;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms, 
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, hNavigator,
  Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, dxDBColorLookupEdit,
  dxDBColorHyperLinkEdit, dxDBColorEdit, dxColorEdit, dxColorMaskEdit,
  ComCtrls, Grids, ImgList, dxDBColorMemo;

type
  TfmManPor = class(TfmPadrao)
    GerUfe: TwwQuery;
    GerUfeSIGUFE: TStringField;
    GerUfeNOMUFE: TStringField;
    UpPor: TUpdateSQL;
    CepTit: TwwQuery;
    CepTitNOMTIT: TStringField;
    CepTitABRTIT: TStringField;
    CmpPor: TwwQuery;
    dsPor: TwwDataSource;
    quSql: TwwQuery;
    pcPor: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel1: TPanel;
    nvPor: ThDBNavigator;
    DsTit: TwwDataSource;
    DsUfe: TwwDataSource;
    Shape2: TShape;
    Shape6: TShape;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomPor: TdxColorEdit;
    EdPsqId_CmpPor: TdxColorEdit;
    Label11: TLabel;
    EdPsqApePor: TdxColorEdit;
    Bbselecionar: TBitBtn;
    Shape4: TShape;
    Label3: TLabel;
    Shape5: TShape;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Panel3: TPanel;
    grPor: ThGrid;
    Label34: TLabel;
    Shape11: TShape;
    Label5: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    EdId_CmpPor: TdxDBColorEdit;
    Label9: TLabel;
    Label7: TLabel;
    EdNomPor: TdxDBColorEdit;
    Label6: TLabel;
    EdApePor: TdxDBColorEdit;
    Label14: TLabel;
    Shape8: TShape;
    Shape12: TShape;
    sbPsqCep: TSpeedButton;
    EdCepPor: TdxDBColorEdit;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EdWebPor: TdxDBColorHyperLinkEdit;
    EdEmaPor: TdxDBColorEdit;
    EdPrtPor: TdxDBColorEdit;
    EdFonPor: TdxDBColorEdit;
    EdBaiPor: TdxDBColorEdit;
    EdRefPor: TdxDBColorEdit;
    EdEndPor: TdxDBColorEdit;
    EdTenPor: TdxDBColorEdit;
    Label15: TLabel;
    CbNomTit: TdxDBColorLookupEdit;
    Label18: TLabel;
    EdNumPor: TdxDBColorEdit;
    EdSigUfe: TdxDBColorLookupEdit;
    Label21: TLabel;
    EdCidPor: TdxDBColorEdit;
    Label20: TLabel;
    Label23: TLabel;
    EdPrfPor: TdxDBColorEdit;
    EdFaxPor: TdxDBColorEdit;
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
    ppId_CmpPor: TppDBText;
    ppNomPor: TppDBText;
    ppCgcPor: TppDBText;
    ppEndPor: TppDBText;
    pDBPipeline: TppDBPipeline;
    ppCepPor: TppDBText;
    ppFonPor: TppDBText;
    ppSystemVariable4: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel45: TppLabel;
    Label63: TLabel;
    EdFlgAti: TdxDBCheckEdit;
    rgStatus: TRadioGroup;
    CmpPorCEPPOR: TStringField;
    CmpPorENDPOR: TStringField;
    CmpPorREFPOR: TStringField;
    CmpPorTENPOR: TStringField;
    CmpPorNUMPOR: TStringField;
    CmpPorBAIPOR: TStringField;
    CmpPorCIDPOR: TStringField;
    CmpPorSIGUFE: TStringField;
    CmpPorCGCPOR: TStringField;
    CmpPorINSPOR: TStringField;
    CmpPorPRTPOR: TStringField;
    CmpPorFONPOR: TStringField;
    CmpPorPRFPOR: TStringField;
    CmpPorFAXPOR: TStringField;
    CmpPorEMAPOR: TStringField;
    CmpPorWEBPOR: TStringField;
    CmpPorFLGATI: TStringField;
    CmpPorFLGINT: TStringField;
    CmpPorCGCCPF: TStringField;
    CmpPorENDERECO: TStringField;
    CmpPorTELEFONE: TStringField;
    Label8: TLabel;
    EdQtdDia: TdxDBColorEdit;
    CmpPorQTDDIA: TIntegerField;
    Label10: TLabel;
    EdQtdPer: TdxDBColorEdit;
    CmpPorQTDPER: TIntegerField;
    CmpPorAPEPOR: TStringField;
    CmpPorID_CMPPOR: TIntegerField;
    CmpPorNOMPOR: TStringField;
    Label12: TLabel;
    CmpPorOBSPOR: TMemoField;
    Label26: TLabel;
    EdObsPor: TdxDBColorMemo;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCepPorExit(Sender: TObject);
    procedure sbPsqCepClick(Sender: TObject);
    procedure grPorDblClick(Sender: TObject);
    procedure nvPorBeforeSalva(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure CmpPorNewRecord(DataSet: TDataSet);
    procedure EdEmaPorDblClick(Sender: TObject);
    procedure EdPsqId_CmpPorKeyPress(Sender: TObject; var Key: Char);
    procedure nvPorImprime(Sender: TObject);
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
  fmManPor: TfmManPor;

implementation

uses ShellAPI, BbMensag, Bbacesso, Bbgeral, PsqCep, ManPri, ManGDB, Fpreview;

{$R *.DFM}

procedure TfmManPor.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select CmpPor.*,'+
           '        FormatCgcCpf(CgcPor) as CgcCpf,'+
           '        Endereco(TenPor,EndPor,NumPor,RefPor,BaiPor,CidPor,SigUfe) as Endereco,'+
           '        TextoOcor('''+ '(' +''',PrtPor,'''+ ')' +''','''+ ' ' +''',FonPor,'''+ '' +''','''+ '' +''') as Telefone'+
           ' From CmpPor';
end;

procedure TfmManPor.EdCepPorExit(Sender: TObject);
begin
  inherited;
  if nvPor.Salvar then begin

     if Trim( CmpPorCepPor.Value ) <> '' then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select * From GerCep '+
                     ' Where NumCep = '''+CmpPorCepPor.Value+'''';
             Open;

        end;

        if CepAnt <> CmpPorCepPor.Value then begin

           CepAnt := CmpPorCepPor.Value;

           CmpPorTenPor.Value := quSql.FieldByName('TipCep').AsString;
           CmpPorBaiPor.Value := quSql.FieldByName('BaiCep').AsString;
           CmpPorCidPor.Value := quSql.FieldByName('CidCep').AsString;
           CmpPorSigUfe.Value := quSQL.FieldByName('SigUfe').AsString;
           CmpPorEndPor.Value := fLimpaCep(quSql.FieldByName('EndCep').AsString);

           end
        else
           begin

           if Trim( CmpPorTenPor.Value ) = '' then CmpPorTenPor.Value := quSql.FieldByName('TipCep').AsString;
           if Trim( CmpPorBaiPor.Value ) = '' then CmpPorBaiPor.Value := quSql.FieldByName('BaiCep').AsString;
           if Trim( CmpPorCidPor.Value ) = '' then CmpPorCidPor.Value := quSql.FieldByName('CidCep').AsString;
           if Trim( CmpPorSigUfe.Value ) = '' then CmpPorSigUfe.Value := quSql.FieldByName('SigUfe').AsString;
           if Trim( CmpPorEndPor.Value ) = '' then CmpPorEndPor.Value := fLimpaCep(quSql.FieldByName('EndCep').AsString);

        end;
     end;
  end;
end;

procedure TfmManPor.sbPsqCepClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCep := TfmPsqCep.Create(Self);

     fmPsqCep.ShowModal;

     if Trim( fmPsqCep.sCepCli ) <> '' then begin

        if not nvPor.Salvar then begin

           if CmpPorId_CmpPor.Value > 0 then
              CmpPor.Edit
           else
              CmpPor.Insert;

        end;

        CmpPorCepPor.Value := fmPsqCep.sCepCli;
        CmpPorTenPor.Value := fmPsqCep.sTenCli;
        CmpPorBaiPor.Value := fmPsqCep.sBaiCli;
        CmpPorCidPor.Value := fmPsqCep.sCidCli;
        CmpPorSigUfe.Value := fmPsqCep.sUfeCli;
        CmpPorEndPor.Value := fLimpaCep(fmPsqCep.sEndCli);

     end;

  finally

     FreeAndNil(fmPsqCep);

  end;

  if Trim( CmpPorCepPor.Value ) <> '' then EdNumPor.SetFocus;

end;

procedure TfmManPor.BbselecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order By CmpPor.Id_CmpPor';
       1: sOrdem := ' Order By CmpPor.ApePor';
       2: sOrdem := ' Order By CmpPor.NomPor';
  end;

  if Trim(EdpsqId_CmpPor.Text) <> '' then sFiltro := ' Where CmpPor.Id_CmpPor = '''+ EdpsqId_CmpPor.Text +'''';

  if Rgbusca.ItemIndex = 0 then begin

     if Trim(EdpsqApePor.Text) <> '' then sFiltro := ' Where CmpPor.ApePor LIKE '''+ EdpsqApePor.Text +'%''';
     if Trim(EdpsqNomPor.Text) <> '' then sFiltro := ' Where CmpPor.NomPor LIKE '''+ EdpsqNomPor.Text +'%''';

     end
  else
     begin

     if Trim(EdpsqApePor.Text) <> '' then sFiltro := ' Where CmpPor.ApePor LIKE ''%' + EdpsqApePor.Text + '%''';
     if Trim(EdpsqNomPor.Text) <> '' then sFiltro := ' Where CmpPor.NomPor LIKE ''%' + EdpsqNomPor.Text + '%''';

  end;

  if pos('Where',sFiltro) > 0 then begin

     case rgStatus.ItemIndex of
          0: sFiltro := sFiltro + ' and CmpPor.FlgAti = '''+ 'Sim' +'''';
          1: sFiltro := sFiltro + ' and CmpPor.FlgAti = '''+ 'Nao' +'''';
     end;

     end
  else
     begin

     case rgStatus.ItemIndex of
          0: sFiltro := ' Where CmpPor.FlgAti = '''+ 'Sim' +'''';
          1: sFiltro := ' Where CmpPor.FlgAti = '''+ 'Nao' +'''';
     end;
  end;

  with CmpPor,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManPor.CmpPorNewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpPor.DisableControls;

  CmpPorQtdDia.Value := 0;
  CmpPorQtdPer.Value := 0;
  CmpPorFlgAti.Value := 'Sim';

  CmpPor.EnableControls;

  PcPor.ActivePage := pcPag2;

  EdApePor.SetFocus;

end;

procedure TfmManPor.nvPorBeforeSalva(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  if Trim( CmpPorNomPor.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigátorio não Informado', EdNomPor);

end;

procedure TfmManPor.pcPag2Show(Sender: TObject);
begin
  inherited;

  CepAnt := CmpPorCepPor.Value;

  EdApePor.SetFocus;

end;

procedure TfmManPor.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqId_CmpPor.SetFocus;
end;

procedure TfmManPor.grPorDblClick(Sender: TObject);
begin
  inherited;
  pcPor.ActivePage := pcPag2;
end;

procedure TfmManPor.FormShow(Sender: TObject);
begin
  inherited;

  PcPor.ActivePage := PcPag1;

  EdPsqId_CmpPor.SetFocus;

end;

procedure TfmManPor.EdEmaPorDblClick(Sender: TObject);
var
cemail : string;
begin
  inherited;

  if Pos('@', EdEmaPor.Text)= 0 then
     fMsgErro('E-Mail Incorreto',EdEmaPor)
  else
     begin

     cEMail := 'mailto:' + Trim(EdEmaPor.Text) + ' <' + Trim( EdEmaPor.Text ) + '>';
     ShellExecute(Handle, 'Open', PChar(cEMail), Nil, '', sw_ShowNormal);

  end;
end;

procedure TfmManPor.EdPsqId_CmpPorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPor.nvPorImprime(Sender: TObject);
begin
  inherited;

  CmpPor.First;

  if CmpPorId_CmpPor.Value > 0 then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManPor);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManPor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManPor.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPor := Nil;
end;

procedure TfmManPor.EdLocTr1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '1'..'9' ] ) then key := #0;
end;

end.
