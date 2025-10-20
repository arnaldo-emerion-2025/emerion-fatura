unit CmpR13;

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

  TfmCmpR13 = class(TfmPadrao)
    CmpPe5: TwwQuery;
    DsPe5: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDtePed1: TdxColorDateEdit;
    EdPsqDtePed2: TdxColorDateEdit;
    bPesquisa: TBitBtn;
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
    grPe5: TdxDBGrid;
    bImprime: TBitBtn;
    Label5: TLabel;
    EdCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdNomEmp: TdxColorEdit;
    Label13: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    Label15: TLabel;
    EdCodFor: TdxColorEdit;
    BbPsqFor: TSpeedButton;
    EdNomFor: TdxColorEdit;
    Label16: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    EdPsqDpePed2: TdxColorDateEdit;
    EdPsqDpePed1: TdxColorDateEdit;
    CmpPe5CODEMP: TIntegerField;
    CmpPe5DTEPED: TDateTimeField;
    CmpPe5NUMPED: TIntegerField;
    CmpPe5SEQPE5: TIntegerField;
    CmpPe5CODFOR: TIntegerField;
    CmpPe5DTVPE5: TDateTimeField;
    CmpPe5VALPE5: TFloatField;
    CmpPe5NROPE5: TIntegerField;
    CmpPe5APEFOR: TStringField;
    CmpPe5DPEPED: TDateTimeField;
    grPe5DTEPED: TdxDBGridDateColumn;
    grPe5NUMPED: TdxDBGridMaskColumn;
    grPe5DTVPE5: TdxDBGridDateColumn;
    grPe5VALPE5: TdxDBGridMaskColumn;
    grPe5APEFOR: TdxDBGridMaskColumn;
    grPe5DPEPED: TdxDBGridDateColumn;
    rgTipo: TRadioGroup;
    grPe5FLGPAG: TdxDBGridColumn;
    CmpPe5FLGPAG: TStringField;
    CmpPe5FLGINT: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimeClick(Sender: TObject);
    procedure grPe5ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodForExit(Sender: TObject);
    procedure BbPsqForClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmCmpR13: TfmCmpR13;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, ManGDB, AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmCmpR13.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmCmpR13.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select CmpPe5.*,'+
           '        CmpPed.DpePed,'+
           '        TextoOcor(IntStrZeros(CmpPe5.CodFor,5),'''+ '-' +''',FinFor.ApeFor,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as ApeFor'+
           ' From CmpPe5 LEFT JOIN CmpPed ON (CmpPe5.CodEmp = CmpPed.CodEmp)'+
           '                             AND (CmpPe5.DtePed = CmpPed.DtePed)'+
           '                             AND (CmpPe5.NumPed = CmpPed.NumPed)'+
           '             LEFT JOIN FinFor ON (CmpPe5.CodFor = FinFor.CodFor)';

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

end;

procedure TfmCmpR13.bPesquisaClick(Sender: TObject);
begin

  ActiveControl := nil;

  sOrdem := ' Order by CmpPe5.CodFor,CmpPe5.DtvPe5';
  
  sFiltro := ' Where CmpPed.AtuEst = '''+ 'Sim' +'''';

  if rgTipo.Itemindex = 0 then sFiltro := sFiltro + ' and CmpPe5.FlgPag = '''+ 'Sim' +'''';
  if rgTipo.Itemindex = 1 then sFiltro := sFiltro + ' and CmpPe5.FlgPag = '''+ 'Nao' +'''';

  if Trim( EdCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and CmpPe5.CodEmp = '''+ EdCodEmp.Text +'''';
  if Trim( EdCodFor.Text ) <> '' then sFiltro := sFiltro + ' and CmpPed.CodFor = '''+ EdCodFor.Text +'''';

  if Trim(fLimpaStr(EdPsqDtePed1.Text)) <> '' then sFiltro := sFiltro + ' and CmpPe5.DtePed >= '''+ fDateToSQL( EdPsqDtePed1.Date ) +'''';
  if Trim(fLimpaStr(EdPsqDtePed2.Text)) <> '' then sFiltro := sFiltro + ' and CmpPe5.DtePed <= '''+ fDateToSQL( EdPsqDtePed2.Date ) +'''';
  if Trim(fLimpaStr(EdPsqDpePed1.Text)) <> '' then sFiltro := sFiltro + ' and CmpPed.DpePed >= '''+ fDateToSQL( EdPsqDpePed1.Date ) +'''';
  if Trim(fLimpaStr(EdPsqDpePed2.Text)) <> '' then sFiltro := sFiltro + ' and CmpPed.DpePed <= '''+ fDateToSQL( EdPsqDpePed2.Date ) +'''';

  with CmpPe5,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;
       
  end;

  grPe5.FullExpand;

  grPe5.SetFocus;

end;

procedure TfmCmpR13.FormShow(Sender: TObject);
begin
  inherited;
  EdCodEmp.SetFocus;
end;

procedure TfmCmpR13.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmCmpR13.bImprimeClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdCodEmp.Text + ' - ' + EdNomEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Fornecedor : '+ EdCodFor.Text + ' - ' + EdNomFor.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Emitidos no Periodo de : '+ EdPsqDtePed1.Text + ' a ' + EdPsqDtePed2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Previstos para Entrega no Periodo de : '+ EdPsqDpePed1.Text + ' a ' + EdPsqDpePed2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmCmpR13.grPe5ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmCmpR13.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de Pagamentos Previstos para o Pedidos de Compras Pendentes.htm', grPe5.SaveToHTML);
end;

procedure TfmCmpR13.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de Pagamentos Previstos para o Pedidos de Compras Pendentes.xls', grPe5.SaveToXLS);
end;

procedure TfmCmpR13.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de Pagamentos Previstos para o Pedidos de Compras Pendentes.xml', grPe5.SaveToXML);
end;

procedure TfmCmpR13.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdNomEmp.Text := fmPsqEmp.NomEmp;
        EdCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;

  EdCodEmp.SetFocus;

end;

procedure TfmCmpR13.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodEmp.Text ) <> '' then begin

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
          Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('NomEmp').AsString ) <> '' then
             EdNomEmp.Text := FieldByName('NomEmp').AsString
          else
             begin

             EdNomEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdCodEmp);

          end;
     end;

     end
  else
     EdNomEmp.Text := '';
end;

procedure TfmCmpR13.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmCmpR13.EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           EdNomFor.Text := fmAuxIni.NomFor;
           EdCodFor.Text := IntToStr(fmAuxIni.CodFor);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           EdNomFor.Text := fmAuxPsq.NomFor;
           EdCodFor.Text := IntToStr(fmAuxPsq.CodFor);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmCmpR13.EdCodForExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select ApeFor From FinFor Where CodFor = '''+EdCodFor.Text+'''';
          Open;

          EdNomFor.Text := FieldByName('ApeFor').AsString;

     end;

     end
  else
     EdNomFor.Text := '';
end;

procedure TfmCmpR13.BbPsqForClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        EdNomFor.Text := fmAuxIni.NomFor;
        EdCodFor.Text := IntToStr(fmAuxIni.CodFor);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmCmpR13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmCmpR13.FormDestroy(Sender: TObject);
begin
  inherited;
  fmCmpR13 := nil;
end;

end.

