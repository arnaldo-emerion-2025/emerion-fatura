unit PedR07;

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

  TfmPedR07 = class(TfmPadrao)
    PedR17: TwwQuery;
    DsR17: TwwDataSource;
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
    Label5: TLabel;
    Label9: TLabel;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grR17: TdxDBGrid;
    bImprimir: TBitBtn;
    Label26: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    EdPsqCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    EdPsqNomCli: TdxColorEdit;
    PedR17TOTBRT: TFloatField;
    PedR17TOTLIQ: TFloatField;
    PedR17DSCPER: TFloatField;
    PedR17DSCPRT: TFloatField;
    PedR17DIFDSC: TFloatField;
    PedR17MARPRE: TFloatField;
    PedR17MARPED: TFloatField;
    PedR17LUCROL: TFloatField;
    PedR17LUCROP: TFloatField;
    PedR17TOTNAT: TFloatField;
    grR17TOTBRT: TdxDBGridMaskColumn;
    grR17TOTLIQ: TdxDBGridMaskColumn;
    grR17DSCPER: TdxDBGridMaskColumn;
    grR17DSCPRT: TdxDBGridMaskColumn;
    grR17DIFDSC: TdxDBGridMaskColumn;
    grR17MARPRE: TdxDBGridMaskColumn;
    grR17MARPED: TdxDBGridMaskColumn;
    grR17LUCROL: TdxDBGridMaskColumn;
    grR17LUCROP: TdxDBGridMaskColumn;
    grR17TOTNAT: TdxDBGridMaskColumn;
    grR17CSTPRT: TdxDBGridColumn;
    PedR17CSTPRT: TFloatField;
    PedR17TOTPER: TFloatField;
    grR17TOTPER: TdxDBGridColumn;
    PedR17CSTPFI: TFloatField;
    PedR17CSTVME: TFloatField;
    grR17CSTVME: TdxDBGridColumn;
    grR17CSTPFI: TdxDBGridColumn;
    grR17TIPO: TdxDBGridColumn;
    PedR17TIPO: TStringField;
    PedR17PRTFAT: TFloatField;
    PedR17PRTCST: TFloatField;
    grR17PRTFAT: TdxDBGridColumn;
    grR17PRTCST: TdxDBGridColumn;
    Label20: TLabel;
    Label6: TLabel;
    EdPsqCodGve: TdxColorEdit;
    bPsqGve: TSpeedButton;
    EdPsqNomGve: TdxColorEdit;
    Label1: TLabel;
    Label3: TLabel;
    EdPsqCodCve: TdxColorEdit;
    bPsqCve: TSpeedButton;
    EdPsqNomCve: TdxColorEdit;
    Colunas1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grR17ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqCliClick(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure bPsqCveClick(Sender: TObject);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure EdPsqCodCveExit(Sender: TObject);
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
  fmPedR07: TfmPedR07;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, PsqEmp, PsqVen,
     PsqAtd, PsqGCl, PsqCCl, PsqMcr, PsqMrg, PsqSet, PsqMst, PsqCli, PsqGve,
     PsqCve, ManCol;

{$R *.DFM}

procedure TfmPedR07.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR07.FormCreate(Sender: TObject);
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

procedure TfmPedR07.bSelecionarClick(Sender: TObject);
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
  
  sFiltro := ' and PedLib.ModPfa = '+ QuotedStr('Vendas') +' and ( ( PedLib.SitLib = '+ QuotedStr('Faturado') +' )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Devolvido') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )';
  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Cancelado') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) )';

  sFiltro := sFiltro + ' )';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodCli.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodCli = '+ QuotedStr(EdPsqCodCli.Text);

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');
  
  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR17 Where SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select Round(Sum(PedLb2.TotLb2 - (PedLb2.TotIpc + PedLb2.TotDsr)),2) as TotLiq,'+
               '        Round(Sum(PedLb2.TotCst),4) as CstPrt'+
               ' From PedLb2,PedLib'+
               ' Where PedLb2.CodEmp = PedLib.CodEmp'+
               '   and PedLb2.DteRes = PedLib.DteRes'+
               '   and PedLb2.NumRes = PedLib.NumRes'+
               '   and PedLb2.SeqLib = PedLib.SeqLib'+ sFiltro;
       Open;

       sTotPed := FieldbyName('TotLiq').AsFloat;
       sTotCst := FieldbyName('CstPrt').AsFloat;

  end;

  if sTotPed > 0 then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR17'+
                  ' Select '+ QuotedStr(SeqArq) + ',' +
                  '        PedLib.CodVen,'+
                  '        FinVen.ApeVen,'+
                  '        Round(Sum(PedLb2.TotLb2 - (PedLb2.TotDsr + PedLb2.TotIpc)),2) as TotLiq,'+
                  '        Round(Sum((PedLb2.UltQts * ( PedLb2.VluLb2 - PedLb2.VdrLb2 )) - (PedLb2.TotIpc + PedLb2.TotDsr)),2) as TotBrt,'+
                  '        Round(Sum(PedLb2.TotCst),4) as CstPrt,'+
                  '        Round(Sum(PedLb2.UltQts * PedLb2.VpfCst),4) as CstPfi,'+
                  '        Round(Sum(PedLb2.UltQts * PedLb2.VmeCst),4) as CstVme,'+
                  '        Round(Sum(PedLb2.UltQts * (( PedLb2.VluLb2 * PedLb2.DscPer )/100)),2) as DscPer,'+
                  '        Round(Sum(PedLb2.TotDsc),2) as DscPra,'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  '        Round(Sum(PedLb2.SldLb2 * ( PedLb2.VlqLb2 - PedLb2.VdrLb2 )),4) as TotNat,'+
                  QuotedStr('0') +','+
                  QuotedStr(fConvertValor(FloatToStr(sTotPed))) +','+
                  QuotedStr(fConvertValor(FloatToStr(sTotCst))) +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +
                  ' From PedLb2,PedLib,FinVen'+
                  ' Where PedLb2.CodEmp = PedLib.CodEmp'+
                  '   and PedLb2.DteRes = PedLib.DteRes'+
                  '   and PedLb2.NumRes = PedLib.NumRes'+
                  '   and PedLb2.SeqLib = PedLib.SeqLib'+
                  '   and PedLib.CodVen = FinVen.CodVen'+ sFiltro +
                  ' Group by PedLib.CodVen,FinVen.ApeVen';
          ExecSQL;

     end;

     with PedR17,SQL do begin

          Close;
          Text := ' Select TotBrt,'+
                  '        TotLiq,'+
                  '        DscPer,'+
                  '        DscPrt,'+
                  '        DifDsc,'+
                  '        MarPre,'+
                  '        MarPed,'+
                  '        LucroL,'+
                  '        LucroP,'+
                  '        TotNat,'+
                  '        CstPrt,'+
                  '        CstPfi,'+
                  '        CstVme,'+
                  '        TotPer,'+
                  '        PrtFat,'+
                  '        PrtCst,'+
                  '        NomTip as Tipo'+
                  ' From PedR17 LEFT JOIN FinVen ON (PedR17.CodTip = FinVen.CodVen)'+
                  ' Where PedR17.SeqArq = '+ QuotedStr(SeqArq);

          if Trim( EdPsqCodGve.Text ) <> '' then Text := Text + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);
          if Trim( EdPsqCodCve.Text ) <> '' then Text := Text + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);
        
          Text := Text + ' Order by PedR17.NomTip';
          
          Open;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Delete From PedR17 Where SeqArq = '+ QuotedStr(SeqArq);
          ExecSQL;

     end;
  end;
  
  grR17.FullExpand;

  grR17.SetFocus;

end;

procedure TfmPedR07.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR07.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR07.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR07.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : '+ EdPsqCodCli.Text + ' - ' + EdPsqNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no Periodo de : '+ EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR07.grR17ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR07.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Curva ABC de Vendedores.htm', grR17.SaveToHTML);
end;

procedure TfmPedR07.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Curva ABC de Vendedores.xls', grR17.SaveToXLS);
end;

procedure TfmPedR07.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Curva ABC de Vendedores.xml', grR17.SaveToXML);
end;

procedure TfmPedR07.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR07.BbPsqEmpClick(Sender: TObject);
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

procedure TfmPedR07.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmPedR07.bPsqCliClick(Sender: TObject);
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

procedure TfmPedR07.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmPedR07.bPsqGveClick(Sender: TObject);
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

procedure TfmPedR07.bPsqCveClick(Sender: TObject);
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

procedure TfmPedR07.EdPsqCodGveExit(Sender: TObject);
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

procedure TfmPedR07.EdPsqCodCveExit(Sender: TObject);
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

procedure TfmPedR07.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR07.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR07 := nil;
end;

procedure TfmPedR07.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmPedR07.grR17);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

end.

