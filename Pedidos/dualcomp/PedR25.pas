unit PedR25;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorEdit,
  dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR25 = class(TfmPadrao)
    FinCli: TwwQuery;
    DsCli: TwwDataSource;
    PaintBox: TPaintBox;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grCli: TdxDBGrid;
    bImprimir: TBitBtn;
    Label6: TLabel;
    EdPsqCodVen: TdxColorEdit;
    bPsqVen: TSpeedButton;
    EdPsqApeVen: TdxColorEdit;
    rgEndereco: TRadioGroup;
    FinCliCODCLI: TIntegerField;
    FinCliNOMCLI: TStringField;
    FinCliCGCCPF: TStringField;
    FinCliENDERECO: TStringField;
    FinCliTELEFONE: TStringField;
    FinCliAPECLI: TStringField;
    CODCLI: TdxDBGridMaskColumn;
    NOMCLI: TdxDBGridMaskColumn;
    ENDERECO: TdxDBGridMaskColumn;
    TELEFONE: TdxDBGridMaskColumn;
    APECLI: TdxDBGridMaskColumn;
    FinCliCEPCLI: TStringField;
    CEPCLI: TdxDBGridColumn;
    FinCliEMACLI: TStringField;
    EMACLI: TdxDBGridColumn;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label1: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    FinCliDULPED: TDateTimeField;
    FinCliTOTPED: TFloatField;
    DULPED: TdxDBGridColumn;
    TOTPED: TdxDBGridColumn;
    Colunas1: TMenuItem;
    FinCliVENDEDOR: TStringField;
    VENDEDOR: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grCliReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqCodVenKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    {Private declarations}
    SeqArq : string;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
  end;

var
  fmPedR25: TfmPedR25;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, AuxIni, AuxPsq,
     ManCol;

{$R *.DFM}

procedure TfmPedR25.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR25.FormCreate(Sender: TObject);
begin
  inherited;

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
            copy(TimeToStr(Time),1,2)+
            copy(TimeToStr(Time),4,2)+
            copy(TimeToStr(Time),7,2)+
            FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
            FNumZeros(Trim( IntToStr(Random(50000)) ),5);

end;

procedure TfmPedR25.bSelecionarClick(Sender: TObject);
var
sFiltro,sBase : string;
begin

  ActiveControl := nil;

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPsqDteRes1);
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPsqDteRes2);

  sFiltro := '';

  if rgEndereco.ItemIndex = 0 then sBase := ' Select FinCli.CodCli,'+
                                            '        FinCli.NomCli,'+
                                            '        FinCli.ApeCli,'+
                                            '        FinCli.CeeCli as CepCli,'+
                                            '        FinCli.Em1Cli as EmaCli,'+
                                            '        FormatCgcCpf(FinCli.CgcCli) as CgcCpf,'+
                                            '        TextoOcor(IntStrZeros(FinCli.CodVen,5),'''+ '-' +''',FinVen.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Vendedor,'+
                                            '        Endereco(FinCli.TeeCli,FinCli.EneCli,FinCli.NreCli,FinCli.RfeCli,FinCli.BaeCli,FinCli.CieCli,FinCli.UfeCli) as Endereco,'+
                                            '        TextoOcor('''+ '(' +''',FinCli.Pt4Cli,'''+ ')' +''','''+ ' ' +''',FinCli.Fo4Cli,'''+ '' +''','''+ '' +''') as Telefone,'+
                                            '        (Select First 1 DteRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Dulped,'+
                                            '        (Select First 1 TotRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Totped'+
                                            ' From FinCli,FinVen'+
                                            ' Where FinCli.CodVen = FinVen.CodVen';

  if rgEndereco.ItemIndex = 1 then sBase := ' Select FinCli.CodCli,'+
                                            '        FinCli.NomCli,'+
                                            '        FinCli.ApeCli,'+
                                            '        FinCli.CeaCli as CepCli,'+
                                            '        FinCli.Em1Cli as EmaCli,'+
                                            '        FormatCgcCpf(FinCli.CgcCli) as CgcCpf,'+
                                            '        TextoOcor(IntStrZeros(FinCli.CodVen,5),'''+ '-' +''',FinVen.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Vendedor,'+
                                            '        Endereco(FinCli.TeaCli,FinCli.EnaCli,FinCli.NraCli,FinCli.RfaCli,FinCli.BaaCli,FinCli.CiaCli,FinCli.UfaCli) as Endereco,'+
                                            '        TextoOcor('''+ '(' +''',FinCli.Pt3Cli,'''+ ')' +''','''+ ' ' +''',FinCli.Fo3Cli,'''+ '' +''','''+ '' +''') as Telefone,'+
                                            '        (Select First 1 DteRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Dulped,'+
                                            '        (Select First 1 TotRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Totped'+
                                            ' From FinCli,FinVen'+
                                            ' Where FinCli.CodVen = FinVen.CodVen';

  if rgEndereco.ItemIndex = 2 then sBase := ' Select FinCli.CodCli,'+
                                            '        FinCli.NomCli,'+
                                            '        FinCli.ApeCli,'+
                                            '        FinCli.CecCli as CepCli,'+
                                            '        FinCli.Em1Cli as EmaCli,'+
                                            '        FormatCgcCpf(FinCli.CgcCli) as CgcCpf,'+
                                            '        TextoOcor(IntStrZeros(FinCli.CodVen,5),'''+ '-' +''',FinVen.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Vendedor,'+
                                            '        Endereco(FinCli.TecCli,FinCli.EncCli,FinCli.NrcCli,FinCli.RfcCli,FinCli.BacCli,FinCli.CicCli,FinCli.UfcCli) as Endereco,'+
                                            '        TextoOcor('''+ '(' +''',FinCli.Pt2Cli,'''+ ')' +''','''+ ' ' +''',FinCli.Fo2Cli,'''+ '' +''','''+ '' +''') as Telefone,'+
                                            '        (Select First 1 DteRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Dulped,'+
                                            '        (Select First 1 TotRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Totped'+
                                            ' From FinCli,FinVen'+
                                            ' Where FinCli.CodVen = FinVen.CodVen';

  if rgEndereco.ItemIndex = 3 then sBase := ' Select FinCli.CodCli,'+
                                            '        FinCli.NomCli,'+
                                            '        FinCli.ApeCli,'+
                                            '        FinCli.CefCli as CepCli,'+
                                            '        FinCli.Em1Cli as EmaCli,'+
                                            '        FormatCgcCpf(FinCli.CgcCli) as CgcCpf,'+
                                            '        TextoOcor(IntStrZeros(FinCli.CodVen,5),'''+ '-' +''',FinVen.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Vendedor,'+
                                            '        Endereco(FinCli.TefCli,FinCli.EnfCli,FinCli.NrfCli,FinCli.RffCli,FinCli.BafCli,FinCli.CifCli,FinCli.UffCli) as Endereco,'+
                                            '        TextoOcor('''+ '(' +''',FinCli.Pt1Cli,'''+ ')' +''','''+ ' ' +''',FinCli.Fo1Cli,'''+ '' +''','''+ '' +''') as Telefone,'+
                                            '        (Select First 1 DteRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Dulped,'+
                                            '        (Select First 1 TotRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Totped'+
                                            ' From FinCli,FinVen'+
                                            ' Where FinCli.CodVen = FinVen.CodVen';

  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := ' and FinCli.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  sFiltro := sFiltro + ' and ( not Exists(Select * from PedRes Where PedRes.DteRes >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date)) +
                       '                                         and PedRes.DteRes <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date)) +
                       '                                         and PedRes.CodCli = FinCli.CodCli)'+
                       '   and not Exists(Select * from LojPed Where LojPed.DtePed >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date)) +
                       '                                         and LojPed.DtePed <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date)) +
                       '                                         and LojPed.CodCli = FinCli.CodCli) )';
  
  with FinCli,SQL do begin

       Close;
       Text := sBase + sFiltro;
       Open;

  end;

  grCli.FullExpand;

  grCli.SetFocus;

end;

procedure TfmPedR25.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR25.FormShow(Sender: TObject);
begin
  inherited;
  if GCodVen_Id > 0 then begin

     EdPsqApeVen.Text := GNomVen_Id;
     EdPsqCodVen.Text := IntToStr( GCodVen_Id );

     bPsqVen.Enabled := False;

     EdPsqCodVen.Enabled := False;

     EdPsqCodVen.Font.Style := [fsBold];

     end
  else
     EdPsqCodVen.SetFocus;
end;

procedure TfmPedR25.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR25.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor: '+ EdPsqCodVen.Text + ' - ' + EdPsqApeVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Inativos desde o periodo de: '+ EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR25.grCliReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR25.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de clientes inativos.htm', grCli.SaveToHTML);
end;

procedure TfmPedR25.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de clientes inativos.xls', grCli.SaveToXLS);
end;

procedure TfmPedR25.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de clientes inativos.xml', grCli.SaveToXML);
end;

procedure TfmPedR25.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdPsqApeVen.Text := fmAuxIni.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqCodVen.SetFocus;
  
end;

procedure TfmPedR25.EdPsqCodVenKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR25.EdPsqCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
          Open;

          EdPsqApeVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqApeVen.Text := '';
end;

procedure TfmPedR25.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR25.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR25 := nil;
end;

procedure TfmPedR25.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmPedR25.grCli);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

end.

