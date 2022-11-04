unit PedR37;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorDateEdit,
  dxColorEdit, dxColorPickEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR37 = class(TfmPadrao)
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
    Label1: TLabel;
    EdPsqCodVen: TdxColorEdit;
    bPsqVen: TSpeedButton;
    EdPsqApeVen: TdxColorEdit;
    PaintBox: TPaintBox;
    VENDEDOR: TdxDBGridMaskColumn;
    Colunas1: TMenuItem;
    Label17: TLabel;
    EdPsqMes: TdxColorPickEdit;
    EdPsqAno: TdxColorEdit;
    PedResSEQARQ: TStringField;
    PedResCODVEN: TIntegerField;
    PedResDTEFAT: TDateTimeField;
    PedResTOTFAT: TFloatField;
    PedResTOTMET: TFloatField;
    PedResPRTMET: TFloatField;
    PedResTOTACU: TFloatField;
    PedResFLGOPE: TStringField;
    PedResVENDEDOR: TStringField;
    DTEFAT: TdxDBGridColumn;
    TOTFAT: TdxDBGridColumn;
    TOTACU: TdxDBGridColumn;
    TOTMET: TdxDBGridColumn;
    PRTMET: TdxDBGridColumn;
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
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq,SeqAnt,sFiltro : string;
  end;

var
  fmPedR37: TfmPedR37;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManPri, PsqEmp, AuxIni, ManCol,
     ManGDB;

{$R *.DFM}

procedure TfmPedR37.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR37.FormCreate(Sender: TObject);
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

procedure TfmPedR37.bSelecionarClick(Sender: TObject);
var
  TotMet : real;
  QtdDia : integer;
  SeqOpe : integer;
  DteOpe : TDateTime;  
  DtInic : TDateTime;
  DtFina : TDateTime;
begin

  ActiveControl := nil;

  if Trim( EdPsqMes.Text ) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqMes);
  if Trim( EdPsqAno.Text ) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqAno);

  if Trim( EdPsqCodVen.Text ) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqCodVen);

  if Length(EdPsqAno.Text) < 2 then fmsgErro('Ano informado para o periodo incorreto.',EdPsqAno);

  DtInic := StrToDate('01' +'/'+ IntToStr(fNroMes2(UpperCase(copy(EdPsqMes.Text,1,3))))   +'/'+ EdPsqAno.Text);

  if EdPsqMes.Text = 'Dezembro' then
     DtFina := StrToDate('01' +'/'+ '01' +'/'+ IntToStr(StrToInt(EdPsqAno.Text) + 1) )- 1
  else
     DtFina := StrToDate('01' +'/'+ IntToStr(fNroMes2(UpperCase(copy(EdPsqMes.Text,1,3)))+1) +'/'+ EdPsqAno.Text)- 1;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR25 Where PedR25.SeqArq = '+ QuotedStr(SeqAnt);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR25 Where PedR25.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  sFiltro := '';
  
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := ' Where FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  QtdDia := 0;
  DteOpe := DtInic;

  for SeqOpe := 1 to StrToInt(copy(FormatDateTime('dd/MM/yyyy',DtFina),1,2)) do begin

      Inc(QtdDia);

      with quSQL,SQL do begin

           Close;
           Text := ' Insert Into PedR25(SeqArq,CodVen,DteFat,TotFat,FlgOpe)'+
                   ' Select '+ QuotedStr(SeqArq) +','+
                   '        FinVen.CodVen,'+ QuotedStr(fDateToSQL(DteOpe)) +','+ QuotedStr('0') +','+ QuotedStr('Nao') +
                   ' From FinVen '+ sFiltro;
           ExecSQL;

      end;

      DteOpe := DteOpe + 1;
      
  end;

  sFiltro := ' and PedMve.DtiMve between '+ QuotedStr(fDateToSQL(DtInic)) +' and '+ QuotedStr(fDateToSQL(DtFina)) +' and PedMve.DtfMve between '+ QuotedStr(fDateToSQL(DtInic)) +' and '+ QuotedStr(fDateToSQL(DtFina));

  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(TotMv2) as TotMet'+
               ' From PedMv2,PedMve,FinVen'+
               ' Where PedMv2.Id_PedMve = PedMve.Id_PedMve and PedMv2.CodVen = FinVen.CodVen'+ sFiltro;
       Open;

       TotMet := fRound(FieldbyName('TotMet').AsFloat / QtdDia,4);

  end;
  
  sFiltro := ' and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(DtInic)) +' and PedLib.DteFat <= '+QuotedStr(fDateToSQL(DtFina));

  sFiltro := sFiltro + ' and PedRes.ModPfa = '+ QuotedStr('Vendas');

  sFiltro := sFiltro + ' and ( ( PedLib.SitLib = '+ QuotedStr('Faturado') +' )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Devolvido') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Cancelado') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) )';

  sFiltro := sFiltro + ' )';

  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR25(SeqArq,CodVen,DteFat,TotFat,FlgOpe)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        PedRes.CodVen,'+
               '        PedLib.DteFat,'+
               '        Sum(PedLib.TotLib - PedLib.TotDsr),'+ QuotedStr('Nao') +
               ' From PedLib,PedRes,FinVen'+
               ' Where PedLib.Id_PedRes = PedRes.Id_PedRes and PedRes.CodVen = FinVen.CodVen'+ sFiltro + ' Group by PedRes.CodVen,PedLib.DteFat';
       ExecSQL;

  end;

  SeqAnt := SeqArq;

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
            copy(TimeToStr(Time),1,2)+
            copy(TimeToStr(Time),4,2)+
            copy(TimeToStr(Time),7,2)+
            FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
            FNumZeros(Trim( IntToStr(Random(50000)) ),5);

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR25(SeqArq,CodVen,DteFat,TotFat,TotMet,FlgOpe)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        PedR25.CodVen,'+
               '        PedR25.DteFat,'+
               '        Sum(PedR25.TotFat),'+ QuotedStr(fConvertValor(FloatToStr(TotMet))) +','+ QuotedStr('Sim') +
               ' From PedR25'+
               ' Where PedR25.SeqArq = '+ QuotedStr(SeqAnt) +
               '   and PedR25.FlgOpe = '+ QuotedStr('Nao')  +
               ' Group by PedR25.CodVen,PedR25.DteFat'+
               ' Order by PedR25.CodVen,PedR25.DteFat';
       ExecSQL;

  end;

  with PedRes,SQL do begin

       Close;
       Text := ' Select PedR25.*,'+
               '        TextoOcor(IntStrZeros(PedR25.CodVen,5),'+ QuotedStr('-') +',FinVen.ApeVen,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as Vendedor'+
               ' From PedR25 LEFT JOIN FinVen ON (PedR25.CodVen = FinVen.CodVen)'+
               ' Where PedR25.SeqArq = '+ QuotedStr(SeqArq) +
               ' Order by PedR25.CodVen,PedR25.DteFat';
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR25 Where PedR25.SeqArq = '+ QuotedStr(SeqAnt);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR25 Where PedR25.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grRes.FullExpand;

  grRes.SetFocus;

end;

procedure TfmPedR37.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR37.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR37.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor: '+ EdPsqCodVen.Text + ' - ' + EdPsqApeVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no periodo de: '+ EdPsqMes.Text + '/' +EdPsqAno.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR37.grResReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR37.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Resumo diário por vendedor.htm', grRes.SaveToHTML);
end;

procedure TfmPedR37.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Resumo diário por vendedor.xls', grRes.SaveToXLS);
end;

procedure TfmPedR37.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Resumo diário por vendedor.xml', grRes.SaveToXML);
end;

procedure TfmPedR37.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR37.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);
        EdPsqApeVen.Text := fmAuxIni.NomVen;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmPedR37.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmPedR37.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmPedR37.grRes);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

procedure TfmPedR37.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR25 Where PedR25.SeqArq = '+ QuotedStr(SeqAnt);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR25 Where PedR25.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := caFree;
  
end;

procedure TfmPedR37.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR37 := nil;
end;

procedure TfmPedR37.FormShow(Sender: TObject);
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

  if EdPsqCodVen.Enabled then
     EdPsqCodVen.SetFocus
  else
     EdPsqMes.SetFocus;
     
end;

end.

