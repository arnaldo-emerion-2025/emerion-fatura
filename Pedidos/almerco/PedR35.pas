unit PedR35;

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

  TfmPedR35 = class(TfmPadrao)
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
    Colunas1: TMenuItem;
    Label17: TLabel;
    Label3: TLabel;
    EdPsqCodTve: TdxColorEdit;
    bPsqTve: TSpeedButton;
    EdPsqNomTve: TdxColorEdit;
    EdPsqMes: TdxColorPickEdit;
    EdPsqAno: TdxColorEdit;
    PedResSEQARQ: TStringField;
    PedResCODVEN: TIntegerField;
    PedResMETM01: TFloatField;
    PedResTOTM01: TFloatField;
    PedResPRTM01: TFloatField;
    PedResMETM02: TFloatField;
    PedResTOTM02: TFloatField;
    PedResPRTM02: TFloatField;
    PedResMETM03: TFloatField;
    PedResTOTM03: TFloatField;
    PedResPRTM03: TFloatField;
    PedResVENDEDOR: TStringField;
    METM01: TdxDBGridColumn;
    TOTM01: TdxDBGridColumn;
    METM02: TdxDBGridColumn;
    METM03: TdxDBGridColumn;
    TOTM03: TdxDBGridColumn;
    TOTM02: TdxDBGridColumn;
    PRTM01: TdxDBGridColumn;
    PRTM02: TdxDBGridColumn;
    PRTM03: TdxDBGridColumn;
    PedResTOTV01: TFloatField;
    PedResTOTV02: TFloatField;
    PedResTOTV03: TFloatField;
    TOTV01: TdxDBGridColumn;
    TOTV02: TdxDBGridColumn;
    TOTV03: TdxDBGridColumn;
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
    SeqArq,SeqAnt,sFiltro,sFiltro1,sFiltro2 : string;
  end;

var
  fmPedR35: TfmPedR35;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManPri, PsqEmp, AuxIni, PsqGve,
     PsqCve, ManCol, ManGDB, PsqTve;

{$R *.DFM}

procedure TfmPedR35.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR35.FormCreate(Sender: TObject);
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

procedure TfmPedR35.bSelecionarClick(Sender: TObject);
var
  AnoPer : string;
  SeqOpe : integer;
  SeqMes : integer;
  DtInic : TDateTime;
  DtFina : TDateTime;
begin

  ActiveControl := nil;

  if Trim( EdPsqMes.Text ) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqMes);
  if Trim( EdPsqAno.Text ) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqAno);

  if Length(EdPsqAno.Text) < 2 then fmsgErro('Ano informado para o periodo incorreto.',EdPsqAno);

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR24 Where PedR24.SeqArq = '+ QuotedStr(SeqAnt);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR24 Where PedR24.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  sFiltro1 := ' and PedMve.DtiMve between :DtInic and :DtFina and PedMve.DtfMve between :DtInic and :DtFina';

  sFiltro  := '';
  
  if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);
  if Trim( EdPsqCodCve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);
  if Trim( EdPsqCodTve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodTve = '+ QuotedStr(EdPsqCodTve.Text);
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  case EdPsqMes.ItemIndex of
       0: SeqMes := 01;
       1: SeqMes := 04;
       2: SeqMes := 07;
       3: SeqMes := 10;
  end;

  for SeqOpe := 1 to 3 do begin

      DtInic := StrToDate('01' +'/'+ IntToStr(SeqMes) +'/'+ EdPsqAno.Text);

      if SeqMes < 12 then
         DtFina := StrToDate('01' +'/'+ IntToStr(SeqMes + 1) +'/'+ EdPsqAno.Text)- 1
      else
         DtFina := StrToDate('01' +'/'+ '01' +'/'+ IntToStr(StrToInt(EdPsqAno.Text) + 1) )- 1;
         
      with quSQL,SQL do begin

           Close;
           Text := ' Insert Into PedR24(SeqArq,CodVen,MetM'+fNumZeros(IntToStr(SeqOpe),2)+')'+
                   ' Select '+ QuotedStr(SeqArq) +','+
                   '        PedMv2.CodVen,'+
                   '        Sum(PedMv2.TotMv2)'+
                   ' From PedMv2,PedMve,FinVen'+
                   ' Where PedMv2.Id_PedMve = PedMve.Id_PedMve and PedMv2.CodVen = FinVen.CodVen'+ sFiltro1 + sFiltro +' Group by PedMv2.CodVen';

           with Params do begin

                Params[0].AsDateTime := DtInic;
                Params[1].AsDateTime := DtFina;
                Params[2].AsDateTime := DtInic;
                Params[3].AsDateTime := DtFina;
           
           end;
                   
           ExecSQL;

      end;

      Inc(SeqMes);

  end;
  
  sFiltro1 := ' and PedLib.DteFat >= :DtInic and PedLib.DteFat <= :DtFina';

  sFiltro1 := sFiltro1 + ' and PedRes.IntFin = '+ QuotedStr('Sim') +' and PedRes.ModPfa = '+ QuotedStr('Vendas');

  sFiltro1 := sFiltro1 + ' and ( ( PedLib.SitLib = '+ QuotedStr('Faturado') +' )';

  sFiltro1 := sFiltro1 + ' or ( PedLib.SitLib = '+ QuotedStr('Devolvido') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )';

  sFiltro1 := sFiltro1 + ' or ( PedLib.SitLib = '+ QuotedStr('Cancelado') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) )';

  sFiltro1 := sFiltro1 + ' )';

  sFiltro2 := ' Where PedRes.DteRes >= :DtInic and PedRes.DteRes <= :DtFina';

  sFiltro2 := sFiltro2 + ' and not PedRes.SitRes = '+ QuotedStr('Nao Concluido') +' and not PedRes.SitRes = '+ QuotedStr('Cancelado') + ' and PedRes.ModPfa = '+ QuotedStr('Vendas');

  case EdPsqMes.ItemIndex of
       0: SeqMes := 01;
       1: SeqMes := 04;
       2: SeqMes := 07;
       3: SeqMes := 10;
  end;

  for SeqOpe := 1 to 3 do begin

      DtInic := StrToDate('01' +'/'+ IntToStr(SeqMes) +'/'+ EdPsqAno.Text);

      if SeqMes < 12 then
         DtFina := StrToDate('01' +'/'+ IntToStr(SeqMes + 1) +'/'+ EdPsqAno.Text)- 1
      else
         DtFina := StrToDate('01' +'/'+ '01' +'/'+ IntToStr(StrToInt(EdPsqAno.Text) + 1) )- 1;

      with quSQL,SQL do begin

           Close;
           Text := ' Insert Into PedR24(SeqArq,CodVen,TotV'+fNumZeros(IntToStr(SeqOpe),2)+',TotM'+fNumZeros(IntToStr(SeqOpe),2)+')'+
                   ' Select '+ QuotedStr(SeqArq) +','+
                   '        PedRes.CodVen,'+
                   '        Sum(PedRes.TotRes - PedRes.TotDsr),'+ QuotedStr('0') +
                   ' From PedRes LEFT JOIN FinVen ON (PedRes.CodVen = FinVen.CodVen)'+ sFiltro2 + sFiltro + ' Group by PedRes.CodVen';

           with Params do begin

                Params[0].AsDateTime := DtInic;
                Params[1].AsDateTime := DtFina;

           end;

           ExecSQL;

      end;

      with quSQL,SQL do begin

           Close;
           Text := ' Insert Into PedR24(SeqArq,CodVen,TotM'+fNumZeros(IntToStr(SeqOpe),2)+',TotV'+fNumZeros(IntToStr(SeqOpe),2)+')'+
                   ' Select '+ QuotedStr(SeqArq) +','+
                   '        PedRes.CodVen,'+
                   '        Sum(PedLib.TotLib - PedLib.TotDsr),'+ QuotedStr('0') +
                   ' From PedLib,PedRes,FinVen'+
                   ' Where PedLib.Id_PedRes = PedRes.Id_PedRes and PedRes.CodVen = FinVen.CodVen'+ sFiltro1 + sFiltro + ' Group by PedRes.CodVen';

           with Params do begin

                Params[0].AsDateTime := DtInic;
                Params[1].AsDateTime := DtFina;

           end;

           ExecSQL;

      end;

      Inc(SeqMes);

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
       Text := ' Insert Into PedR24(SeqArq,CodVen,MetM01,MetM02,MetM03,TotM01,TotM02,TotM03,TotV01,TotV02,TotV03)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        PedR24.CodVen,'+
               '        Sum(PedR24.MetM01),'+
               '        Sum(PedR24.MetM02),'+
               '        Sum(PedR24.MetM03),'+
               '        Sum(PedR24.TotM01),'+
               '        Sum(PedR24.TotM02),'+
               '        Sum(PedR24.TotM03),'+
               '        Sum(PedR24.TotV01),'+
               '        Sum(PedR24.TotV02),'+
               '        Sum(PedR24.TotV03)'+
               ' From PedR24'+
               ' Where PedR24.SeqArq = '+ QuotedStr(SeqAnt)+
               ' Group by PedR24.CodVen';
       ExecSQL;

  end;

  with PedRes,SQL do begin

       Close;
       Text := ' Select PedR24.*,'+
               '        TextoOcor(IntStrZeros(PedR24.CodVen,5),'+ QuotedStr('-') +',FinVen.ApeVen,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as Vendedor'+
               ' From PedR24 LEFT JOIN FinVen ON (PedR24.CodVen = FinVen.CodVen)'+
               ' Where PedR24.SeqArq = '+ QuotedStr(SeqArq) +
               ' Order by PedR24.CodVen';
       Open;

  end;

  AnoPer := copy(EdPsqAno.Text,Length(EdPsqAno.Text)-2+1,2);

  if EdPsqMes.ItemIndex = 0 then begin

     grRes.Columns[01].Caption := 'Objetivo JAN/' + AnoPer;
     grRes.Columns[02].Caption := 'Vendido JAN/' + AnoPer;
     grRes.Columns[03].Caption := 'Faturado JAN/' + AnoPer;

     grRes.Columns[05].Caption := 'Objetivo FEV/' + AnoPer;
     grRes.Columns[06].Caption := 'Vendido FEV/' + AnoPer;
     grRes.Columns[07].Caption := 'Faturado FEV/' + AnoPer;

     grRes.Columns[09].Caption := 'Objetivo MAR/' + AnoPer;
     grRes.Columns[10].Caption := 'Vendido MAR/' + AnoPer;
     grRes.Columns[11].Caption := 'Faturado MAR/' + AnoPer;

  end;

  if EdPsqMes.ItemIndex = 1 then begin

     grRes.Columns[01].Caption := 'Objetivo ABR/' + AnoPer;
     grRes.Columns[02].Caption := 'Vendido ABR/' + AnoPer;
     grRes.Columns[03].Caption := 'Faturado ABR/' + AnoPer;

     grRes.Columns[05].Caption := 'Objetivo MAI/' + AnoPer;
     grRes.Columns[06].Caption := 'Vendido MAI/' + AnoPer;
     grRes.Columns[07].Caption := 'Faturado MAI/' + AnoPer;

     grRes.Columns[09].Caption := 'Objetivo JUN/' + AnoPer;
     grRes.Columns[10].Caption := 'Vendido JUN/' + AnoPer;
     grRes.Columns[11].Caption := 'Faturado JUN/' + AnoPer;

  end;

  if EdPsqMes.ItemIndex = 2 then begin

     grRes.Columns[01].Caption := 'Objetivo JUL/' + AnoPer;
     grRes.Columns[02].Caption := 'Vendido JUL/' + AnoPer;
     grRes.Columns[03].Caption := 'Faturado JUL/' + AnoPer;

     grRes.Columns[05].Caption := 'Objetivo AGO/' + AnoPer;
     grRes.Columns[06].Caption := 'Vendido AGO/' + AnoPer;
     grRes.Columns[07].Caption := 'Faturado AGO/' + AnoPer;

     grRes.Columns[09].Caption := 'Objetivo SET/' + AnoPer;
     grRes.Columns[10].Caption := 'Vendido SET/' + AnoPer;
     grRes.Columns[11].Caption := 'Faturado SET/' + AnoPer;

  end;

  if EdPsqMes.ItemIndex = 3 then begin

     grRes.Columns[01].Caption := 'Objetivo OUT/' + AnoPer;
     grRes.Columns[02].Caption := 'Vendido OUT/' + AnoPer;
     grRes.Columns[03].Caption := 'Faturado OUT/' + AnoPer;

     grRes.Columns[05].Caption := 'Objetivo NOV/' + AnoPer;
     grRes.Columns[06].Caption := 'Vendido NOV/' + AnoPer;
     grRes.Columns[07].Caption := 'Faturado NOV/' + AnoPer;

     grRes.Columns[09].Caption := 'Objetivo DEZ/' + AnoPer;
     grRes.Columns[10].Caption := 'Vendido DEZ/' + AnoPer;
     grRes.Columns[11].Caption := 'Faturado DEZ/' + AnoPer;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR24 Where PedR24.SeqArq = '+ QuotedStr(SeqAnt);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR24 Where PedR24.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grRes.FullExpand;

  grRes.SetFocus;

end;

procedure TfmPedR35.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR35.FormShow(Sender: TObject);
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

procedure TfmPedR35.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR35.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo de vendedores: '+ EdPsqCodGve.Text + ' - ' + EdPsqNomGve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria de vendedores: '+ EdPsqCodCve.Text + ' - ' + EdPsqNomCve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de vendedores: '+ EdPsqCodTve.Text + ' - ' + EdPsqNomTve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor: '+ EdPsqCodVen.Text + ' - ' + EdPsqApeVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no periodo de: '+ EdPsqMes.Text + '/' +EdPsqAno.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR35.grResReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR35.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de objetivos por vendedor - Trimestral.htm', grRes.SaveToHTML);
end;

procedure TfmPedR35.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de objetivos por vendedor - Trimestral.xls', grRes.SaveToXLS);
end;

procedure TfmPedR35.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de objetivos por vendedor - Trimestral.xml', grRes.SaveToXML);
end;

procedure TfmPedR35.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR35.bPsqGveClick(Sender: TObject);
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

procedure TfmPedR35.EdPsqCodGveExit(Sender: TObject);
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

procedure TfmPedR35.bPsqCveClick(Sender: TObject);
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

procedure TfmPedR35.EdPsqCodCveExit(Sender: TObject);
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

procedure TfmPedR35.bPsqVenClick(Sender: TObject);
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

procedure TfmPedR35.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmPedR35.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmPedR35.grRes);
     
     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

procedure TfmPedR35.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR24 Where PedR24.SeqArq = '+ QuotedStr(SeqAnt);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR24 Where PedR24.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := caFree;
  
end;

procedure TfmPedR35.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR35 := nil;
end;

procedure TfmPedR35.EdPsqCodTveExit(Sender: TObject);
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

procedure TfmPedR35.bPsqTveClick(Sender: TObject);
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

