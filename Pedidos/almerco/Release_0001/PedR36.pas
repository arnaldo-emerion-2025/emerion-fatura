unit PedR36;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorDateEdit,
  dxColorEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR36 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
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
    grRes: TdxDBGrid;
    bImprimir: TBitBtn;
    Label22: TLabel;
    Label1: TLabel;
    EdPsqCodCve: TdxColorEdit;
    EdPsqCodVen: TdxColorEdit;
    bPsqVen: TSpeedButton;
    bPsqCve: TSpeedButton;
    EdPsqNomCve: TdxColorEdit;
    EdPsqApeVen: TdxColorEdit;
    Label7: TLabel;
    EdPsqCodGve: TdxColorEdit;
    bPsqGve: TSpeedButton;
    EdPsqNomGve: TdxColorEdit;
    PaintBox: TPaintBox;
    VENDEDOR: TdxDBGridMaskColumn;
    METVEN: TdxDBGridMaskColumn;
    TOTFAT: TdxDBGridMaskColumn;
    PRTVEN: TdxDBGridMaskColumn;
    ATIVEN: TdxDBGridColumn;
    Colunas1: TMenuItem;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    PedResSEQARQ: TStringField;
    PedResCODVEN: TIntegerField;
    PedResMETVEN: TFloatField;
    PedResTOTPED: TFloatField;
    PedResATIVEN: TFloatField;
    PedResTOTGER: TFloatField;
    PedResPRTVEN: TFloatField;
    PedResQTDCLI: TIntegerField;
    PedResNOVCLI: TIntegerField;
    PedResQTDPED: TIntegerField;
    PedResVENDEDOR: TStringField;
    PedResNOMTVE: TStringField;
    Label3: TLabel;
    EdPsqCodTve: TdxColorEdit;
    bPsqTve: TSpeedButton;
    EdPsqNomTve: TdxColorEdit;
    PedResTOTFAT: TFloatField;
    TOTPED: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grResReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqCveClick(Sender: TObject);
    procedure EdPsqCodCveExit(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqCodTveExit(Sender: TObject);
    procedure bPsqTveClick(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq,sFiltro : string;
  end;

var
  fmPedR36: TfmPedR36;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManPri, PsqEmp, AuxIni, PsqGve,
     PsqCve, ManCol, ManGDB, PsqTve;

{$R *.DFM}

procedure TfmPedR36.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR36.FormCreate(Sender: TObject);
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

procedure TfmPedR36.bSelecionarClick(Sender: TObject);
var
TotFat : real;
begin

  ActiveControl := nil;

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqDteRes1);
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqDteRes2);

  sFiltro := ' and PedMve.DtiMve between '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date)) +' and '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date))+
             ' and PedMve.DtfMve between '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date)) +' and '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);
  if Trim( EdPsqCodCve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);
  if Trim( EdPsqCodTve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodTve = '+ QuotedStr(EdPsqCodTve.Text);
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR09 Where PedR09.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR21 Where PedR21.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR09(SeqArq,CodVen,MetVen,TotPed,TotFat,TotGer,PrtVen,QtdCli,NovCli,QtdPed)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        PedMv2.CodVen,'+
               '        Round(Sum(TotMv2),2),'+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('0') +
               ' From PedMv2,PedMve,FinVen'+
               ' Where PedMv2.Id_PedMve = PedMve.Id_PedMve and PedMv2.CodVen = FinVen.CodVen'+ sFiltro +' Group by PedMv2.CodVen';
       ExecSQL;

  end;

  sFiltro := ' and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date)) +' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  sFiltro := sFiltro + ' and ( ( PedLib.SitLib = '+ QuotedStr('Faturado') +' )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Devolvido') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Cancelado') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) )';

  sFiltro := sFiltro + ' )';

  sFiltro := sFiltro + ' and PedRes.ModPfa = '+ QuotedStr('Vendas');

  if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);
  if Trim( EdPsqCodCve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);
  if Trim( EdPsqCodTve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodTve = '+ QuotedStr(EdPsqCodTve.Text);
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(PedLib.TotLib - PedLib.TotDsr) as TotFat'+
               ' From PedLib,PedRes,FinVen'+
               ' Where PedLib.Id_PedRes = PedRes.Id_PedRes and PedRes.CodVen = FinVen.CodVen'+ sFiltro;
       Open;

       TotFat := FieldbyName('TotFat').AsFloat;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR09(SeqArq,CodVen,MetVen,TotPed,TotFat,TotGer,PrtVen,QtdCli,NovCli,QtdPed)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        PedRes.CodVen,'+ QuotedStr('0') +','+ QuotedStr('0') +','+
               '        Sum(PedLib.TotLib - PedLib.TotDsr),'+ QuotedStr(fConvertValor(FloatToStr(TotFat))) +','+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('0') +','+
               '        Count(*) as QtdPed'+
               ' From PedLib,PedRes,FinVen'+
               ' Where PedLib.Id_PedRes = PedRes.Id_PedRes and PedRes.CodVen = FinVen.CodVen'+ sFiltro + ' Group by PedRes.CodVen';
       ExecSQL;

  end;

  sFiltro := ' and PedRes.DteRes >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date)) +' and PedRes.DteRes <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  sFiltro := sFiltro + ' and not PedRes.SitRes = '+ QuotedStr('Nao Concluido') +' and not PedRes.SitRes = '+ QuotedStr('Cancelado') + ' and PedRes.ModPfa = '+ QuotedStr('Vendas');

  if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);
  if Trim( EdPsqCodCve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);
  if Trim( EdPsqCodTve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodTve = '+ QuotedStr(EdPsqCodTve.Text);
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR09(SeqArq,CodVen,MetVen,TotPed,TotFat,TotGer,PrtVen,QtdCli,NovCli,QtdPed)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        PedRes.CodVen,'+ QuotedStr('0') +','+
               '        Sum(PedRes.TotRes - PedRes.TotDsr),'+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('0') +
               ' From PedRes,FinVen'+
               ' Where PedRes.CodVen = FinVen.CodVen'+ sFiltro + ' Group by PedRes.CodVen';
       ExecSQL;

  end;

  sFiltro := ' and FinCli.DcaCli >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date))+
             ' and FinCli.DcaCli <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);
  if Trim( EdPsqCodCve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);
  if Trim( EdPsqCodTve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodTve = '+ QuotedStr(EdPsqCodTve.Text);
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR09(SeqArq,CodVen,MetVen,TotPed,TotFat,TotGer,PrtVen,QtdCli,NovCli,QtdPed)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        FinCli.CodVen,'+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('0') +','+
               '        Count(FinCli.CodCli),'+ QuotedStr('0') +','+ QuotedStr('0') +
               ' From FinCli,FinVen'+
               ' Where FinCli.CodVen = FinVen.CodVen'+ sFiltro +
               ' Group by FinCli.CodVen';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR21(SeqArq,CodVen,MetVen,TotPed,TotFat,TotGer,PrtVen,QtdCli,NovCli,QtdPed)'+
               ' Select PedR09.SeqArq,'+
               '        PedR09.CodVen,'+
               '        Sum(PedR09.MetVen),'+
               '        Sum(PedR09.TotPed),'+
               '        Sum(PedR09.TotFat),'+
               '        Sum(PedR09.TotGer),'+
               '        Sum(PedR09.PrtVen),'+
               '        Sum(PedR09.QtdCli),'+
               '        Sum(PedR09.NovCli),'+
               '        Sum(PedR09.QtdPed) '+
               ' From PedR09 Where PedR09.SeqArq = '+ QuotedStr(SeqArq) +
               ' Group by PedR09.SeqArq,PedR09.CodVen';
       ExecSQL;

  end;

  with PedRes,SQL do begin

       Close;
       Text := ' Select PedR21.*,'+
               '        FinTve.NomTve,'+
               '        TextoOcor(IntStrZeros(PedR21.CodVen,5),'''+ '-' +''',FinVen.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Vendedor'+
               ' From PedR21 LEFT JOIN FinVen ON (PedR21.CodVen = FinVen.CodVen)'+
               '             LEFT JOIN FinTve ON (FinVen.CodTve = FinTve.CodTve)'+
               ' Where PedR21.SeqArq = '+ QuotedStr(SeqArq) +
               ' Order by PedR21.CodVen';
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR09 Where PedR09.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR21 Where PedR21.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grRes.FullExpand;

  grRes.SetFocus;

end;

procedure TfmPedR36.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR36.FormShow(Sender: TObject);
begin
  inherited;

  if GCodVen_Id > 0 then begin

     EdPsqApeVen.Text := GNomVen_Id;
     EdPsqCodVen.Text := IntToStr( GCodVen_Id );

     if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then begin

        bPsqVen.Enabled := False;

        EdPsqCodVen.Enabled := False;

        EdPsqCodVen.Font.Style := [fsBold];

     end;
  end;

  EdPsqCodGve.SetFocus;
    
end;

procedure TfmPedR36.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR36.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo de vendedores: '+ EdPsqCodGve.Text + ' - ' + EdPsqNomGve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria de vendedores: '+ EdPsqCodCve.Text + ' - ' + EdPsqNomCve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de vendedores: '+ EdPsqCodTve.Text + ' - ' + EdPsqNomTve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('vendedor: '+ EdPsqCodVen.Text + ' - ' + EdPsqApeVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no periodo de: '+ EdPsqDteRes1.Text + ' a ' +EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR36.grResReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR36.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de objetivos por vendedor.htm', grRes.SaveToHTML);
end;

procedure TfmPedR36.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de objetivos por vendedor.xls', grRes.SaveToXLS);
end;

procedure TfmPedR36.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de objetivos por vendedor.xml', grRes.SaveToXML);
end;

procedure TfmPedR36.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR36.bPsqGveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGve := TfmPsqGve.Create(Self);
     fmPsqGve.ShowModal;

     if fmPsqGve.CodGve > 0 then begin

        EdPsqNomGve.Text := fmPsqGve.NomGve;
        EdPsqCodGve.Text := IntToStr(fmPsqGve.CodGve);

     end;

  finally

     FreeAndNil(fmPsqGve);

  end;
end;

procedure TfmPedR36.EdPsqCodGveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinGve.NomGve From FinGve Where FinGve.CodGve = '+ QuotedStr(EdPsqCodGve.Text);
          Open;

          EdPsqNomGve.Text := FieldByName('NomGve').AsString;

     end;

     end
  else
     EdPsqNomGve.Text := '';
end;

procedure TfmPedR36.bPsqCveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCve := TfmPsqCve.Create(Self);
     fmPsqCve.ShowModal;

     if fmPsqCve.CodCve > 0 then begin

        EdPsqCodCve.Text := IntToStr(fmPsqCve.CodCve);
        EdPsqNomCve.Text := fmPsqCve.NomCve;

     end;

  finally

     FreeAndNil(fmPsqCve);

  end;
end;

procedure TfmPedR36.EdPsqCodCveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinCve.NomCve From FinCve Where FinCve.CodCve = '+ QuotedStr(EdPsqCodCve.Text);
          Open;

          EdPsqNomCve.Text := FieldByName('NomCve').AsString;

     end;

     end
  else
     EdPsqNomCve.Text := '';
end;

procedure TfmPedR36.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     if Trim(EdPsqCodCve.Text) <> '' then fmAuxIni.sCodCve := StrToInt(EdPsqCodCve.Text);
     
     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);
        EdPsqApeVen.Text := fmAuxIni.NomVen;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmPedR36.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmPedR36.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmPedR36.grRes);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

procedure TfmPedR36.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR09 Where PedR09.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR21 Where PedR21.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := caFree;
  
end;

procedure TfmPedR36.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR36 := nil;
end;

procedure TfmPedR36.EdPsqCodTveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodTve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinTve.NomTve From FinTve Where FinTve.CodTve = '+ QuotedStr(EdPsqCodTve.Text);
          Open;

          EdPsqNomTve.Text := FieldByName('NomTve').AsString;

     end;

     end
  else
     EdPsqNomTve.Text := '';
end;

procedure TfmPedR36.bPsqTveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqTve := TfmPsqTve.Create(Self);
     fmPsqTve.ShowModal;

     if fmPsqTve.CodTve > 0 then begin

        EdPsqCodTve.Text := IntToStr(fmPsqTve.CodTve);
        EdPsqNomTve.Text := fmPsqTve.NomTve;

     end;

  finally

     FreeAndNil(fmPsqTve);

  end;
end;

end.

