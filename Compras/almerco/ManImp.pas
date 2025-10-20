unit ManImp;

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
  TfmManImp = class(TfmPadrao)
    GerUfe: TwwQuery;
    GerUfeSIGUFE: TStringField;
    GerUfeNOMUFE: TStringField;
    UpImp: TUpdateSQL;
    CepTit: TwwQuery;
    CepTitNOMTIT: TStringField;
    CepTitABRTIT: TStringField;
    CmpImp: TwwQuery;
    dsImp: TwwDataSource;
    quSql: TwwQuery;
    pcImp: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel1: TPanel;
    nvImp: ThDBNavigator;
    DsTit: TwwDataSource;
    DsUfe: TwwDataSource;
    Shape2: TShape;
    Shape6: TShape;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    EdPsqCgcImp: TdxColorMaskEdit;
    EdPsqNomImp: TdxColorEdit;
    EdPsqId_CmpImp: TdxColorEdit;
    Label11: TLabel;
    EdPsqApeImp: TdxColorEdit;
    Bbselecionar: TBitBtn;
    Shape4: TShape;
    Label3: TLabel;
    Shape5: TShape;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Panel3: TPanel;
    grImp: ThGrid;
    Label34: TLabel;
    Shape11: TShape;
    Label5: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    EdId_CmpImp: TdxDBColorEdit;
    Label9: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EdCgcImp: TdxDBColorEdit;
    EdNomImp: TdxDBColorEdit;
    Label6: TLabel;
    EdApeImp: TdxDBColorEdit;
    Label12: TLabel;
    EdInsImp: TdxDBColorEdit;
    Label14: TLabel;
    Shape8: TShape;
    Shape12: TShape;
    sbPsqCep: TSpeedButton;
    EdCepImp: TdxDBColorEdit;
    Label13: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    EdWebImp: TdxDBColorHyperLinkEdit;
    EdEmaImp: TdxDBColorEdit;
    EdPrtImp: TdxDBColorEdit;
    EdFonImp: TdxDBColorEdit;
    EdBaiImp: TdxDBColorEdit;
    EdRefImp: TdxDBColorEdit;
    EdEndImp: TdxDBColorEdit;
    EdTenImp: TdxDBColorEdit;
    Label15: TLabel;
    CbNomTit: TdxDBColorLookupEdit;
    Label18: TLabel;
    EdNumImp: TdxDBColorEdit;
    EdSigUfe: TdxDBColorLookupEdit;
    Label21: TLabel;
    EdCidImp: TdxDBColorEdit;
    Label20: TLabel;
    Label23: TLabel;
    EdPrfImp: TdxDBColorEdit;
    EdFaxImp: TdxDBColorEdit;
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
    ppId_CmpImp: TppDBText;
    ppNomImp: TppDBText;
    ppCgcImp: TppDBText;
    ppEndImp: TppDBText;
    pDBPipeline: TppDBPipeline;
    ppCepImp: TppDBText;
    ppFonImp: TppDBText;
    ppSystemVariable4: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel45: TppLabel;
    Label63: TLabel;
    EdFlgAti: TdxDBCheckEdit;
    rgStatus: TRadioGroup;
    CmpImpCEPIMP: TStringField;
    CmpImpENDIMP: TStringField;
    CmpImpREFIMP: TStringField;
    CmpImpTENIMP: TStringField;
    CmpImpNUMIMP: TStringField;
    CmpImpBAIIMP: TStringField;
    CmpImpCIDIMP: TStringField;
    CmpImpSIGUFE: TStringField;
    CmpImpCGCIMP: TStringField;
    CmpImpINSIMP: TStringField;
    CmpImpPRTIMP: TStringField;
    CmpImpFONIMP: TStringField;
    CmpImpPRFIMP: TStringField;
    CmpImpFAXIMP: TStringField;
    CmpImpEMAIMP: TStringField;
    CmpImpWEBIMP: TStringField;
    CmpImpFLGATI: TStringField;
    CmpImpFLGINT: TStringField;
    CmpImpCGCCPF: TStringField;
    CmpImpENDERECO: TStringField;
    CmpImpTELEFONE: TStringField;
    CmpImpNOMIMP: TStringField;
    CmpImpAPEIMP: TStringField;
    CmpImpID_CMPIMP: TIntegerField;
    CmpImpCONIMP: TStringField;
    CmpImpOBSIMP: TMemoField;
    Label26: TLabel;
    EdConImp: TdxDBColorEdit;
    Label27: TLabel;
    EdObsImp: TdxDBColorMemo;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCepImpExit(Sender: TObject);
    procedure sbPsqCepClick(Sender: TObject);
    procedure grImpDblClick(Sender: TObject);
    procedure nvImpBeforeSalva(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure CmpImpNewRecord(DataSet: TDataSet);
    procedure EdEmaImpDblClick(Sender: TObject);
    procedure EdPsqId_CmpImpKeyPress(Sender: TObject; var Key: Char);
    procedure EdCgcImpKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCgcImpMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EdCgcImpExit(Sender: TObject);
    procedure nvImpImprime(Sender: TObject);
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
  fmManImp: TfmManImp;

implementation

uses ShellAPI, BbMensag, Bbacesso, Bbgeral, PsqCep, ManPri, ManGDB, Fpreview;

{$R *.DFM}

procedure TfmManImp.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select CmpImp.*,'+
           '        FormatCgcCpf(CgcImp) as CgcCpf,'+
           '        Endereco(TenImp,EndImp,NumImp,RefImp,BaiImp,CidImp,SigUfe) as Endereco,'+
           '        TextoOcor('+ QuotedStr('(') +',PrtImp,'+ QuotedStr(')') +','+ QuotedStr(' ') +',FonImp,'+ QuotedStr('') +','+ QuotedStr('') +') as Telefone'+
           ' From CmpImp';
end;

procedure TfmManImp.EdCepImpExit(Sender: TObject);
begin
  inherited;
  if nvImp.Salvar then begin

     if Trim( CmpImpCepImp.Value ) <> '' then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select * From GerCep '+
                     ' Where GerCep.NumCep = '+ QuotedStr(CmpImpCepImp.Value);
             Open;

        end;

        if CepAnt <> CmpImpCepImp.Value then begin

           CepAnt := CmpImpCepImp.Value;

           CmpImpTenImp.Value := quSql.FieldByName('TipCep').AsString;
           CmpImpBaiImp.Value := quSql.FieldByName('BaiCep').AsString;
           CmpImpCidImp.Value := quSql.FieldByName('CidCep').AsString;
           CmpImpSigUfe.Value := quSQL.FieldByName('SigUfe').AsString;
           CmpImpEndImp.Value := fLimpaCep(quSql.FieldByName('EndCep').AsString);

           end
        else
           begin

           if Trim( CmpImpTenImp.Value ) = '' then CmpImpTenImp.Value := quSql.FieldByName('TipCep').AsString;
           if Trim( CmpImpBaiImp.Value ) = '' then CmpImpBaiImp.Value := quSql.FieldByName('BaiCep').AsString;
           if Trim( CmpImpCidImp.Value ) = '' then CmpImpCidImp.Value := quSql.FieldByName('CidCep').AsString;
           if Trim( CmpImpSigUfe.Value ) = '' then CmpImpSigUfe.Value := quSql.FieldByName('SigUfe').AsString;
           if Trim( CmpImpEndImp.Value ) = '' then CmpImpEndImp.Value := fLimpaCep(quSql.FieldByName('EndCep').AsString);

        end;
     end;
  end;
end;

procedure TfmManImp.sbPsqCepClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCep := TfmPsqCep.Create(Self);

     fmPsqCep.ShowModal;

     if Trim( fmPsqCep.sCepCli ) <> '' then begin

        if not nvImp.Salvar then begin

           if CmpImpId_CmpImp.Value > 0 then
              CmpImp.Edit
           else
              CmpImp.Insert;

        end;

        CmpImpCepImp.Value := fmPsqCep.sCepCli;
        CmpImpTenImp.Value := fmPsqCep.sTenCli;
        CmpImpBaiImp.Value := fmPsqCep.sBaiCli;
        CmpImpCidImp.Value := fmPsqCep.sCidCli;
        CmpImpSigUfe.Value := fmPsqCep.sUfeCli;
        CmpImpEndImp.Value := fLimpaCep(fmPsqCep.sEndCli);

     end;

  finally

     FreeAndNil(fmPsqCep);

  end;

  if Trim( CmpImpCepImp.Value ) <> '' then EdNumImp.SetFocus;

end;

procedure TfmManImp.BbselecionarClick(Sender: TObject);
var
PsqcgcImp : string;
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order By CmpImp.CodImp';
       1: sOrdem := ' Order By CmpImp.ApeImp';
       2: sOrdem := ' Order By CmpImp.NomImp';
       3: sOrdem := ' Order By CmpImp.CgcImp';
  end;

  PsqcgcImp := fLimpaStr(Trim( EdPsqCgcImp.Text ));

  if Trim(EdpsqId_CmpImp.Text) <> '' then sFiltro := ' Where CmpImp.Id_CmpImp = '+ QuotedStr(EdpsqId_CmpImp.Text);

  if Rgbusca.ItemIndex = 0 then begin

     if Trim(EdPsqApeImp.Text) <> '' then sFiltro := ' Where CmpImp.ApeImp LIKE '+ QuotedStr(EdPsqApeImp.Text +'%');
     if Trim(EdPsqNomImp.Text) <> '' then sFiltro := ' Where CmpImp.NomImp LIKE '+ QuotedStr(EdPsqNomImp.Text +'%');

     if Trim(PsqCgcImp) <> '' then sFiltro := ' Where CmpImp.CgcImp LIKE '+ QuotedStr(PsqCgcImp +'%');

     end
  else
     begin

     if Trim(EdPsqApeImp.Text) <> '' then sFiltro := ' Where CmpImp.ApeImp LIKE '+ QuotedStr('%'+ EdPsqApeImp.Text +'%');
     if Trim(EdPsqNomImp.Text) <> '' then sFiltro := ' Where CmpImp.NomImp LIKE '+ QuotedStr('%'+ EdPsqNomImp.Text +'%');

     if Trim(PsqCgcImp) <> '' then sFiltro := ' Where CmpImp.CgcImp LIKE '+ QuotedStr('%'+ PsqCgcImp +'%');

  end;

  if pos('Where',sFiltro) > 0 then begin

     case rgStatus.ItemIndex of
          0: sFiltro := sFiltro + ' and CmpImp.FlgAti = '+ QuotedStr('Sim');
          1: sFiltro := sFiltro + ' and CmpImp.FlgAti = '+ QuotedStr('Nao');
     end;

     end
  else
     begin

     case rgStatus.ItemIndex of
          0: sFiltro := ' Where CmpImp.FlgAti = '+ QuotedStr('Sim');
          1: sFiltro := ' Where CmpImp.FlgAti = '+ QuotedStr('Nao');
     end;
  end;

  with CmpImp,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManImp.CmpImpNewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpImp.DisableControls;

  CmpImpFlgAti.Value := 'Sim';

  CmpImp.EnableControls;

  PcImp.ActivePage := pcPag2;

  EdApeImp.SetFocus;

end;

procedure TfmManImp.nvImpBeforeSalva(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  if Trim( CmpImpNomImp.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigátorio não Informado', EdNomImp);

  if Trim( CmpImpCgcImp.Value ) <> '' then begin

     if not FConsCnpj(CmpImpCgcImp.Value) then begin

        if fMsg('CNPJ do Importador com Conteudo Invalido. Confirma?','S') then begin

           end
        else
           begin

           EdCgcImp.SetFocus;

           Abort;

        end;
     end;
  end;
end;

procedure TfmManImp.pcPag2Show(Sender: TObject);
begin
  inherited;

  if Trim( CmpImpCgcImp.Value ) <> '' then
     CmpImpCgcImp.EditMask := '!99.999.999/9999\-99;0;'
  else
     CmpImpCgcImp.EditMask := '';

  CepAnt := CmpImpCepImp.Value;

  EdApeImp.SetFocus;

end;

procedure TfmManImp.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqId_CmpImp.SetFocus;
end;

procedure TfmManImp.grImpDblClick(Sender: TObject);
begin
  inherited;
  pcImp.ActivePage := pcPag2;
end;

procedure TfmManImp.FormShow(Sender: TObject);
begin
  inherited;

  PcImp.ActivePage := PcPag1;

  EdPsqId_CmpImp.SetFocus;

end;

procedure TfmManImp.EdEmaImpDblClick(Sender: TObject);
var
cemail : string;
begin
  inherited;

  if Pos('@', EdEmaImp.Text)= 0 then
     fMsgErro('E-Mail Incorreto',EdEmaImp)
  else
     begin

     cEMail := 'mailto:' + Trim(EdEmaImp.Text) + ' <' + Trim( EdEmaImp.Text ) + '>';
     ShellExecute(Handle, 'Open', PChar(cEMail), Nil, '', sw_ShowNormal);

  end;
end;

procedure TfmManImp.EdPsqId_CmpImpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManImp.EdCgcImpKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if CmpImpCgcImp.EditMask <> '' then CmpImpCgcImp.EditMask := '';
end;

procedure TfmManImp.EdCgcImpMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if CmpImpCgcImp.EditMask <> '' then CmpImpCgcImp.EditMask := '';
end;

procedure TfmManImp.EdCgcImpExit(Sender: TObject);
begin
  inherited;
  if Trim( CmpImpCgcImp.Value ) <> '' then
     CmpImpCgcImp.EditMask := '!99.999.999/9999\-99;0;'
  else
     CmpImpCgcImp.EditMask := '';
end;

procedure TfmManImp.nvImpImprime(Sender: TObject);
begin
  inherited;

  CmpImp.First;

  if CmpImpId_CmpImp.Value > 0 then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManImp);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManImp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManImp.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManImp := Nil;
end;

procedure TfmManImp.EdLocTr1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '1'..'9' ] ) then key := #0;
end;

end.
