unit CmpR11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorPickEdit,
  dxColorEdit, dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmCmpR11 = class(TfmPadrao)
    CmpR11: TwwQuery;
    DsR11: TwwDataSource;
    PaintBox: TPaintBox;
    Label28: TLabel;
    EdDteDoc1: TdxColorDateEdit;
    Label29: TLabel;
    EdDteDoc2: TdxColorDateEdit;
    Label26: TLabel;
    EdCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    EdApeEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
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
    grR11: TdxDBGrid;
    bImprimir: TBitBtn;
    Label4: TLabel;
    EdModPfa: TdxColorPickEdit;
    Label14: TLabel;
    EdCodGfo: TdxColorEdit;
    bPsqGfo: TSpeedButton;
    EdNomGfo: TdxColorEdit;
    Label111: TLabel;
    EdCodTip: TdxColorEdit;
    PsqTip: TSpeedButton;
    EdNomTip: TdxColorEdit;
    Colunas1: TMenuItem;
    CmpR11APEFOR: TStringField;
    CmpR11TOTENT: TFloatField;
    grR11TOTENT: TdxDBGridMaskColumn;
    grR11APEFOR: TdxDBGridMaskColumn;
    procedure FormShow(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure grR11ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPsqGfoClick(Sender: TObject);
    procedure EdCodGfoExit(Sender: TObject);
    procedure EdCodGfoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PsqTipClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
  end;

var
  fmCmpR11: TfmCmpR11;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqPfa, AuxPsq,
     ManGDB, ManPri, PsqFor, PsqTmo, AuxIni, PsqClp, CmpC07, PsqGFo;

{$R *.DFM}

procedure TfmCmpR11.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmCmpR11.bbPesquisaClick(Sender: TObject);
var
  sFiltro : string;
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

  sFiltro := ' Where EstHis.CodOpe = '+ QuotedStr('EP') +' and EstHis.Id_CmpEn2 is not null';

  if Trim( EdCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and EstHis.CodEmp = '+ QuotedStr(EdCodEmp.Text);
  if Trim( EdCodGFo.Text ) <> '' then sFiltro := sFiltro + ' and FinFor.CodGFo = '+ QuotedStr(EdCodGFo.Text);
  if Trim( EdCodTip.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodTip = '+ QuotedStr(EdCodTip.Text);
  if Trim( EdModPfa.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.ModPfa = '+ QuotedStr(EdModPfa.Text);

  if Trim(fLimpaStr(EdDteDoc1.Text)) <> '' then sFiltro := sFiltro + ' and EstHis.DteHis >= '+ QuotedStr(fDateToSQL(EdDteDoc1.Date));
  if Trim(fLimpaStr(EdDteDoc2.Text)) <> '' then sFiltro := sFiltro + ' and EstHis.DteHis <= '+ QuotedStr(fDateToSQL(EdDteDoc2.Date));

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and not CmpEnt.CodTip = '+ QuotedStr('3');

  with CmpR11,SQL do begin

       Close;
       Text := ' Select TextoOcor(IntStrZeros(CmpEnt.CodFor,5),'+ QuotedStr('-') +',FinFor.ApeFor,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as ApeFor,'+
               '        Round(Sum(EstHis.QtMovi * EstHis.VpfHis),4) as TotEnt'+
               ' From EstHis LEFT JOIN CmpEn2 ON (EstHis.Id_CmpEn2 = CmpEn2.Id_CmpEn2)'+
               '             LEFT JOIN CmpEnt ON (CmpEn2.Id_CmpEnt = CmpEnt.Id_CmpEnt)'+
               '             LEFT JOIN FinFor ON (CmpEnt.CodFor = FinFor.CodFor)'+ sFiltro +
               ' Group by TextoOcor(IntStrZeros(CmpEnt.CodFor,5),'+ QuotedStr('-') +',FinFor.ApeFor,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +')';
       Open;

  end;

  grR11.FullExpand;

  grR11.SetFocus;

end;

procedure TfmCmpR11.EdCodEmpExit(Sender: TObject);
begin
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
          Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('ApeEmp').AsString ) <> '' then
             EdApeEmp.Text := FieldByName('ApeEmp').AsString
          else
             begin

             EdApeEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdCodEmp);

          end;
     end;

     end
  else
     EdApeEmp.Text := '';
end;

procedure TfmCmpR11.bPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdApeEmp.Text := fmPsqEmp.ApeEmp;
        EdCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;

  EdCodEmp.SetFocus;

end;

procedure TfmCmpR11.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdApeEmp.Text := fmPsqEmp.ApeEmp;
           EdCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;
  end;
end;

procedure TfmCmpR11.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmCmpR11.FormShow(Sender: TObject);
begin
  inherited;
  EdCodEmp.SetFocus;
end;

procedure TfmCmpR11.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmCmpR11.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmCmpR11.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GApeEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRazEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GEndEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRefEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de nota de Entrada: '+ EdModPfa.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa: '+ EdCodEmp.Text + ' - ' + EdApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo de fornecedores: '+ EdCodGFo.Text + ' - ' + EdNomGFo.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo: '+ EdCodTip.Text + ' - ' + EdNomTip.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Realizadas no periodo de: '+ EdDteDoc1.Text + ' a ' + EdDteDoc2.Text);

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmCmpR11.grR11ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmCmpR11.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação sintética de entrada de mercadorias por tipo de produto.htm', grR11.SaveToHTML);
end;

procedure TfmCmpR11.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação sintética de entrada de mercadorias por tipo de produto.xls', grR11.SaveToXLS);
end;

procedure TfmCmpR11.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação sintética de entrada de mercadorias por tipo de produto.xml', grR11.SaveToXML);
end;

procedure TfmCmpR11.bPsqGfoClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGFo := TfmPsqGFo.Create(Self);

     fmPsqGFo.ShowModal;

     if fmPsqGFo.CodGFo > 0 then begin

        EdNomGFo.Text := fmPsqGFo.NomGFo;
        EdCodGFo.Text := IntToStr(fmPsqGFo.CodGFo);

     end;

  finally

     FreeAndNil(fmPsqGFo);

  end;
end;

procedure TfmCmpR11.EdCodGfoExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGFo.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGFo From FinGFo Where CodGFo = '''+ EdCodGFo.Text +'''';
          Open;

          EdNomGFo.Text := FieldByName('NomGFo').AsString;

     end;

     end
  else
     EdNomGFo.Text := '';
end;

procedure TfmCmpR11.EdCodGfoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqGFo := TfmPsqGFo.Create(Self);

        fmPsqGFo.ShowModal;

        if fmPsqGFo.CodGFo > 0 then begin

           EdNomGFo.Text := fmPsqGFo.NomGFo;
           EdCodGFo.Text := IntToStr(fmPsqGFo.CodGFo);

        end;

     finally

        FreeAndNil(fmPsqGFo);

     end;
  end;
end;

procedure TfmCmpR11.EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Tipo';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodTip > 0 then begin

           EdNomTip.Text := fmAuxIni.NomTip;
           EdCodTip.Text := IntToStr( fmAuxIni.CodTip );

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodTip.Text ) <> '' then EdDteDoc1.SetFocus;

  end;
end;

procedure TfmCmpR11.PsqTipClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Tipo';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodTip > 0 then begin

        EdNomTip.Text := fmAuxIni.NomTip;
        EdCodTip.Text := IntToStr( fmAuxIni.CodTip );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodTip.Text ) <> '' then EdDteDoc1.SetFocus;

end;

procedure TfmCmpR11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmCmpR11.FormDestroy(Sender: TObject);
begin
  inherited;
  fmCmpR11 := nil;
end;

end.

