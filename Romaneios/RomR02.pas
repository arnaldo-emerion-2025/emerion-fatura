unit RomR02;

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

  TfmRomR02 = class(TfmPadrao)
    FatOrc: TwwQuery;
    DsOrc: TwwDataSource;
    PaintBox: TPaintBox;
    Label28: TLabel;
    EdPsqDteOr1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteOr2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqCli: TSpeedButton;
    bPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqNomEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label1: TLabel;
    EdPsqUfeRes: TdxColorPickEdit;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    ImageList1: TImageList;
    grOrc: TdxDBGrid;
    bImprimir: TBitBtn;
    Label3: TLabel;
    FatOrcAPECLI: TStringField;
    FatOrcNUMRES: TIntegerField;
    FatOrcCODVEN: TIntegerField;
    FatOrcTOTGER: TFloatField;
    grOrcAPECLI: TdxDBGridMaskColumn;
    grOrcNUMRES: TdxDBGridMaskColumn;
    grOrcCODVEN: TdxDBGridMaskColumn;
    grOrcTOTGER: TdxDBGridMaskColumn;
    FatOrcLOGUSU: TStringField;
    grOrcLOGUSU: TdxDBGridColumn;
    grOrcOBSCOR: TdxDBGridMemoColumn;
    grOrcDTEORC: TdxDBGridColumn;
    grOrcDTECOR: TdxDBGridColumn;
    Label4: TLabel;
    Label12: TLabel;
    EdPsqDtcOr1: TdxColorDateEdit;
    Label13: TLabel;
    EdPsqDtcOr2: TdxColorDateEdit;
    Label9: TLabel;
    Label14: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    FatOrcOBSCOR: TMemoField;
    FatOrcDTECOR: TDateTimeField;
    FatOrcDTEORC: TDateTimeField;
    FatOrcMODPFA: TStringField;
    grOrcMODPFA: TdxDBGridColumn;
    rgTipo: TRadioGroup;
    FatOrcTOTFRT: TFloatField;
    grOrcTOTFRT: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure grOrcReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
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
  fmRomR02: TfmRomR02;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, AuxIni, AuxPsq, ManGDB,
     ManPri;

{$R *.DFM}

procedure TfmRomR02.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmRomR02.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select FatOrc.NumRes,'+
           '        FinCli.ApeCli,'+
           '        FatOrc.CodVen,'+
           '        FatOrc.ModPfa,'+
           '        FatOrc.TotFrt,'+
           '        FatOrc.TotGer,'+
           '        FatOrc.ObsCor,'+
           '        GerUsu.LogUsu,'+
           '        FatOrc.DteCor,'+
           '        FatOrc.DteOrc'+
           ' From FatOrc LEFT JOIN FinCli ON (FatOrc.CodCli = FinCli.CodCli)'+
           '             LEFT JOIN GerUsu ON (FatOrc.UsuCor = GerUsu.CodUsu)';

end;

procedure TfmRomR02.bbPesquisaClick(Sender: TObject);
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
  
  sOrdem := ' Order by FatOrc.NumRes';

  sFiltro := ' Where FatOrc.SitOrc = '''+ 'Cancelado' +'''';

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and FatOrc.CodEmp = '''+ EdPsqCodEmp.Text +'''';
  if Trim( EdPsqCodCli.Text ) <> '' then sFiltro := sFiltro + ' and FatOrc.CodCli = '''+ EdPsqCodCli.Text +'''';
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and FatOrc.CodVen = '''+ EdPsqCodVen.Text +'''';
  if Trim( EdPsqUfeRes.Text ) <> '' then sFiltro := sFiltro + ' and FatOrc.UfeOrc = '''+ EdPsqUfeRes.Text +'''';
  if Trim( EdPsqModPfa.Text ) <> '' then sFiltro := sFiltro + ' and FatOrc.ModPfa = '''+ EdPsqModPfa.Text +'''';

  if Trim(fLimpaStr(EdPsqDteOr1.Text)) <> '' then sFiltro := sFiltro + ' and FatOrc.DteOrc >= '''+ fDateToSQL(EdPsqDteOr1.Date) +'''';
  if Trim(fLimpaStr(EdPsqDteOr2.Text)) <> '' then sFiltro := sFiltro + ' and FatOrc.DteOrc <= '''+ fDateToSQL(EdPsqDteOr2.Date) +'''';

  if Trim(fLimpaStr(EdPsqDtcOr1.Text)) <> '' then sFiltro := sFiltro + ' and FatOrc.DteCor >= '''+ fDateToSQL(EdPsqDtcOr1.Date) +'''';
  if Trim(fLimpaStr(EdPsqDtcOr2.Text)) <> '' then sFiltro := sFiltro + ' and FatOrc.DteCor <= '''+ fDateToSQL(EdPsqDtcOr2.Date) +'''';

  case rgTipo.Itemindex of
       0: sFiltro := sFiltro + ' and FatOrc.IntFin = '''+ 'Sim' +'''';
       1: sFiltro := sFiltro + ' and FatOrc.IntFin = '''+ 'Nao' +'''';
  end;

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and FatOrc.SitOrc = '+ QuotedStr('Transferencias');

  with FatOrc,SQL do begin

       Close;
       Text := sBase+ sFiltro + sOrdem;
       Open;

  end;

  grOrc.FullExpand;

  grOrc.SetFocus;

end;

procedure TfmRomR02.EdPsqCodEmpExit(Sender: TObject);
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
          Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('NomEmp').AsString ) <> '' then
             EdPsqNomEmp.Text := FieldByName('NomEmp').AsString
          else
             begin

             EdPsqNomEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqNomEmp.Text := '';
end;

procedure TfmRomR02.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomCli From FinCli Where CodCli = '''+EdPsqCodCli.Text+'''';
          Open;

          EdPsqNomCli.Text := quSql.FieldByName('NomCli').AsString;
     end;

     end
  else
     EdPsqNomCli.Text := '';
end;

procedure TfmRomR02.bPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmRomR02.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmRomR02.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxIni.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxPsq.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxPsq.CodCli);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmRomR02.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomVen From FinVen Where CodVen = '''+EdPsqCodVen.Text+'''';
          Open;

          EdPsqNomVen.Text := quSql.FieldByName('NomVen').AsString;
     end;

     end
  else
     EdPsqNomVen.Text := '';
end;

procedure TfmRomR02.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqNomVen.Text := fmAuxIni.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           EdPsqNomVen.Text := fmAuxPsq.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmRomR02.bPsqCliClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'C';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCli > 0 then begin

        EdPsqNomCli.Text := fmAuxIni.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmRomR02.bPsqVenClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdPsqNomVen.Text := fmAuxIni.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmRomR02.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmRomR02.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqUfeRes.SetFocus;
end;

procedure TfmRomR02.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmRomR02.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmRomR02.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GApeEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRazEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GEndEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRefEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Estado de : '+ EdPsqUfeRes.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdPsqCodEmp.Text + ' - ' + EdPsqNomEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : '+ EdPsqCodCli.Text + ' - ' + EdPsqNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : '+ EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Emitidos no Periodo de : '+ EdPsqDteOr1.Text + ' a ' + EdPsqDteOr2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cancelados no Periodo de : '+ EdPsqDtcOr1.Text + ' a ' + EdPsqDtcOr2.Text);

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmRomR02.grOrcReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmRomR02.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de Romaneios Cancelados no Periodo.htm', grOrc.SaveToHTML);
end;

procedure TfmRomR02.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de Romaneios Cancelados no Periodo.xls', grOrc.SaveToXLS);
end;

procedure TfmRomR02.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de Romaneios Cancelados no Periodo.xml', grOrc.SaveToXML);
end;

procedure TfmRomR02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmRomR02.FormDestroy(Sender: TObject);
begin
  inherited;
  fmRomR02 := Nil;
end;

end.

