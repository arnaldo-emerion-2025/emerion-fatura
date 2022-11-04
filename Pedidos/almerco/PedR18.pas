unit PedR18;

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

  TfmPedR18 = class(TfmPadrao)
    PedR18: TwwQuery;
    DsR18: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdPsqApeEmp: TdxColorEdit;
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
    grR18: TdxDBGrid;
    bImprimir: TBitBtn;
    Label26: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    bPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    Label7: TLabel;
    EdPsqCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    EdPsqNomCli: TdxColorEdit;
    PedR18TOTBRT: TFloatField;
    PedR18TOTLIQ: TFloatField;
    PedR18DSCPER: TFloatField;
    PedR18DSCPRT: TFloatField;
    PedR18DIFDSC: TFloatField;
    PedR18MARPRE: TFloatField;
    PedR18MARPED: TFloatField;
    PedR18LUCROL: TFloatField;
    PedR18LUCROP: TFloatField;
    PedR18TOTNAT: TFloatField;
    grR18TOTBRT: TdxDBGridMaskColumn;
    grR18TOTLIQ: TdxDBGridMaskColumn;
    grR18DSCPER: TdxDBGridMaskColumn;
    grR18DSCPRT: TdxDBGridMaskColumn;
    grR18DIFDSC: TdxDBGridMaskColumn;
    grR18MARPRE: TdxDBGridMaskColumn;
    grR18MARPED: TdxDBGridMaskColumn;
    grR18LUCROL: TdxDBGridMaskColumn;
    grR18LUCROP: TdxDBGridMaskColumn;
    grR18TOTNAT: TdxDBGridMaskColumn;
    grR18CSTPRT: TdxDBGridColumn;
    PedR18CSTPRT: TFloatField;
    PedR18TOTPER: TFloatField;
    grR18TOTPER: TdxDBGridColumn;
    PedR18CSTPFI: TFloatField;
    PedR18CSTVME: TFloatField;
    grR18CSTVME: TdxDBGridColumn;
    grR18CSTPFI: TdxDBGridColumn;
    grR18MARCA: TdxDBGridColumn;
    PedR18PRTFAT: TFloatField;
    PedR18PRTCST: TFloatField;
    grR18PRTFAT: TdxDBGridColumn;
    grR18PRTCST: TdxDBGridColumn;
    PedR18MARCA: TStringField;
    Label3: TLabel;
    EdPsqCodGve: TdxColorEdit;
    bPsqGve: TSpeedButton;
    EdPsqNomGve: TdxColorEdit;
    Colunas1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grR18ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq : string;
  end;

var
  fmPedR18: TfmPedR18;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, PsqEmp, PsqVen,
     PsqAtd, PsqGCl, PsqCCl, PsqMcr, PsqMrg, PsqSet, PsqMst, PsqCli, PsqGve,
     ManCol;

{$R *.DFM}

procedure TfmPedR18.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR18.FormCreate(Sender: TObject);
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

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);
  
end;

procedure TfmPedR18.bSelecionarClick(Sender: TObject);
var
  sFiltro : string;
  sTotPed,sTotCst : real;
begin

  ActiveControl := nil;

  if GFlgAce <> 'Sim' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select FLGDEL,SEQIMP from GerPar';
          Open;

          if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

             GFlgAce := 'Sim';

             if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

             end
          else
             begin

             GEmpLog := 0;
             GFlgAce := 'Nao';

          end;
     end;
  end;
  
  sFiltro := ' and PedRes.ModPfa = '+ QuotedStr('Vendas') +' and ( ( PedLib.SitLib = '+ QuotedStr('Faturado') +' )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Devolvido') +' and MonthOfYear(PedLib.DteFat) <> MonthOfYear(PedLib.DteDev) )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Cancelado') +' and MonthOfYear(PedLib.DteFat) <> MonthOfYear(PedLib.DteDel) )';

  sFiltro := sFiltro + ' )';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodCli.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
  if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.CodTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR17 Where PedR17.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select Round(Sum(PedLb2.TotLb2 - PedLb2.TotDsr),2) as TotLiq,'+
               '        Round(Sum(PedLb2.TotCst + PedLb2.TotCli),4) as CstPrt'+
               ' From PedLb2,PedLib,PedRes,FinVen'+
               ' Where PedLb2.Id_PedLib = PedLib.Id_PedLib'+
               '   and PedLib.Id_PedRes = PedRes.Id_PedRes'+
               '   and PedRes.CodVen = FinVen.CodVen'+ sFiltro;
       Open;

       sTotPed := FieldbyName('TotLiq').AsFloat;
       sTotCst := FieldbyName('CstPrt').AsFloat;

  end;

  if sTotPed > 0 then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR17(SeqArq,CodTip,TotLiq,TotBrt,CstPrt,CstPfi,CstVme,DscPer,DscPrt,TotNat,TotFat,CstFat)'+
                  ' Select '+ QuotedStr(SeqArq) + ',' +
                  '        EstPro.CodMrc,'+
                  '        Round(Sum(PedLb2.TotLb2 - PedLb2.TotDsr),2) as TotLiq,'+
                  '        Round(Sum((PedLb2.UltQts * ( PedRe2.VluRe2 - PedRe2.VdrRe2 )) - PedLb2.TotDsr),2) as TotBrt,'+
                  '        Round(Sum(PedLb2.TotCst + PedLb2.TotCli),4) as CstPrt,'+
                  '        Round(Sum(PedLb2.UltQts * PedRe2.VpfCst),4) as CstPfi,'+
                  '        Round(Sum(PedLb2.UltQts * PedRe2.VmeCst),4) as CstVme,'+
                  '        Round(Sum(PedLb2.UltQts * (( PedRe2.VluRe2 * PedRe2.DscPer )/100)),2) as DscPer,'+
                  '        Round(Sum(PedLb2.TotDsc),2) as DscPra,'+
                  '        Round(Sum(PedLb2.SldLb2 * ( PedRe2.VlqRe2 - PedRe2.VdrRe2 )),4) as TotNat,'+
                  QuotedStr(fConvertValor(FloatToStr(sTotPed))) + ',' +
                  QuotedStr(fConvertValor(FloatToStr(sTotCst))) +
                  ' From PedLb2,PedLib,PedRe2,EstPro,PedRes,FinVen'+
                  ' Where PedLb2.Id_PedLib = PedLib.Id_PedLib'+
                  '   and PedLb2.Id_PedRe2 = PedRe2.Id_PedRe2'+
                  '   and PedRe2.CodClp = EstPro.CodClp'+
                  '   and PedRe2.CodGru = EstPro.CodGru'+
                  '   and PedRe2.CodSub = EstPro.CodSub'+
                  '   and PedRe2.CodPro = EstPro.CodPro'+
                  '   and PedRe2.Id_PedRes = PedRes.Id_PedRes and PedRes.CodVen = FinVen.CodVen'+ sFiltro +
                  ' Group by EstPro.CodMrc';
          ExecSQL;

     end;

     with PedR18,SQL do begin

          Close;
          Text := ' Select PedR17.TotBrt,'+
                  '        PedR17.TotLiq,'+
                  '        PedR17.DscPer,'+
                  '        PedR17.DscPrt,'+
                  '        PedR17.DifDsc,'+
                  '        PedR17.MarPre,'+
                  '        PedR17.MarPed,'+
                  '        PedR17.LucroL,'+
                  '        PedR17.LucroP,'+
                  '        PedR17.TotNat,'+
                  '        PedR17.CstPrt,'+
                  '        PedR17.CstPfi,'+
                  '        PedR17.CstVme,'+
                  '        PedR17.TotPer,'+
                  '        PedR17.PrtFat,'+
                  '        PedR17.PrtCst,'+
                  '        EstMrc.NomMrc as Marca'+
                  ' From PedR17 LEFT JOIN EstMrc ON PedR17.CodTip = EstMrc.CodMrc'+
                  ' Where PedR17.SeqArq = '+ QuotedStr(SeqArq) +
                  ' Order by EstMrc.NomMrc';
          Open;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Delete From PedR17 Where SeqArq = '+ QuotedStr(SeqArq);
          ExecSQL;

     end;
  end;
  
  grR18.FullExpand;

  grR18.SetFocus;

end;

procedure TfmPedR18.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR18.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR18.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR18.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa: '+ EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente: '+ EdPsqCodCli.Text + ' - ' + EdPsqNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo de vendedores: '+ EdPsqCodGve.Text + ' - ' + EdPsqNomGve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor: '+ EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no periodo de: '+ EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR18.grR18ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR18.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Curva ABC por Marca de Produtos.htm', grR18.SaveToHTML);
end;

procedure TfmPedR18.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Curva ABC por Marca de Produtos.xls', grR18.SaveToXLS);
end;

procedure TfmPedR18.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Curva ABC por Marca de Produtos.xml', grR18.SaveToXML);
end;

procedure TfmPedR18.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR18.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmPedR18.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if GFlgAce <> 'Sim' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FLGDEL,SEQIMP from GerPar';
             Open;

             if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

                GFlgAce := 'Sim';

                if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

                end
             else
                begin

                GEmpLog := 0;
                GFlgAce := 'Nao';

             end;
        end;
     end;
     
     with quSql,SQL do begin

          Close;
          Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('ApeEmp').AsString ) <> '' then
             EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
          else
             begin

             EdPsqApeEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmPedR18.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqVen := TfmPsqVen.Create(Self);

     fmPsqVen.ShowModal;

     if fmPsqVen.CodVen > 0 then begin

        EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);
        EdPsqNomVen.Text := fmPsqVen.NomVen;

     end;

  finally

     FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmPedR18.EdPsqCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
          Open;

          EdPsqNomVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqNomVen.Text := '';
end;

procedure TfmPedR18.bPsqCliClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCli := TfmPsqCli.Create(Self);

     fmPsqCli.ShowModal;

     if fmPsqCli.CodCli > 0 then begin

        EdPsqNomCli.Text := fmPsqCli.NomCli;
        EdPsqCodCli.Text := IntToStr(fmPsqCli.CodCli);

     end;

  finally

     FreeAndNil(fmPsqCli);

  end;
end;

procedure TfmPedR18.EdPsqCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinCli.NomCli From FinCli Where FinCli.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
          Open;

          EdPsqNomCli.Text := FieldByName('NomCli').AsString;

     end;

     end
  else
     EdPsqNomCli.Text := '';
end;

procedure TfmPedR18.bPsqGveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGve := TfmPsqGve.Create(Self);

     fmPsqGve.ShowModal;

     if fmPsqGve.CodGve > 0 then begin

        EdPsqCodGve.Text := IntToStr(fmPsqGve.CodGve);
        EdPsqNomGve.Text := fmPsqGve.NomGve;

     end;

  finally

     FreeAndNil(fmPsqGve);

  end;
end;

procedure TfmPedR18.EdPsqCodGveExit(Sender: TObject);
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

procedure TfmPedR18.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR17 Where PedR17.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmPedR18.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR18 := nil;
end;

procedure TfmPedR18.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmPedR18.grR18);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

end.

