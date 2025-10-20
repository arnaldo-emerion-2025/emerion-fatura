unit EstR07;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, Buttons, ComCtrls, Db, DBTables, Wwquery, ExtCtrls, FlEdit,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, Wwdatsrc, Mask, hEdits, wwdbedit,
  Wwdotdot, Wwdbcomb, DBCtrls, AlignEdit, QuickRpt, ppDB, ppDBPipe, ppBands,
  ppClass, ppStrtch, ppMemo, ppVar, jpeg, ppCtrls, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppModule, daDatMod, wwdbdatetimepicker,
  dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, ImgList, Menus,
  dxCntner, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxExEdtr,
  dxColorEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmEstR07 = class(TfmPadrao)
    EstR07: TwwQuery;
    quSql: TwwQuery;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    SaveDialog: TSaveDialog;
    PaintBox: TPaintBox;
    grR07: TdxDBGrid;
    Label10: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label7: TLabel;
    EdCodPro: TdxColorEdit;
    bPsqPro: TSpeedButton;
    EdNomPro: TdxColorEdit;
    bPesquisa: TBitBtn;
    bImprimir: TBitBtn;
    Label2: TLabel;
    Bevel2: TBevel;
    DsR07: TwwDataSource;
    rgStatus: TRadioGroup;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    EdCodSub: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodMrc: TdxColorEdit;
    EdCodTip: TdxColorEdit;
    EdCodCat: TdxColorEdit;
    bPsqCat: TSpeedButton;
    bPsqTip: TSpeedButton;
    PsqMrc: TSpeedButton;
    bPsqClp: TSpeedButton;
    bPsqGru: TSpeedButton;
    bPsqSub: TSpeedButton;
    EdNomSub: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    EdNomMrc: TdxColorEdit;
    EdNomTip: TdxColorEdit;
    EdNomCat: TdxColorEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EstR07NOMCAT: TStringField;
    EstR07NOMMRC: TStringField;
    EstR07NOMGRU: TStringField;
    EstR07NOMSUB: TStringField;
    EstR07DSCPRO: TStringField;
    grR07NOMCAT: TdxDBGridMaskColumn;
    grR07NOMGRU: TdxDBGridMaskColumn;
    grR07NOMSUB: TdxDBGridMaskColumn;
    grR07CODITE: TdxDBGridMaskColumn;
    grR07DSCPRO: TdxDBGridMaskColumn;
    EstR07CODSIT: TStringField;
    EstR07PERIPI: TFloatField;
    EstR07PERICM: TFloatField;
    EstR07CLSIPI: TStringField;
    grR07CLSIPI: TdxDBGridColumn;
    grR07CODSIT: TdxDBGridColumn;
    grR07PERICM: TdxDBGridColumn;
    grR07PERIPI: TdxDBGridColumn;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    EstR07CBAPRO: TStringField;
    grR07CBAPRO: TdxDBGridColumn;
    EstR07CODANT: TStringField;
    grR07CODANT: TdxDBGridColumn;
    EstR07CODITE: TStringField;
    Colunas1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grR07ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bPsqClpClick(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodCatExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure PsqMrcClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    sDate, sBase, sFiltro : string;
  end;

var
  fmEstR07: TfmEstR07;

implementation

uses dxDemoUtils, ShellAPI, Bbgeral, BbMensag, Bbfuncao, ManGDB, FPreview,
     PsqEmp, PsqClp, ManPri, AuxIni, ManCol;

{$R *.DFM}

procedure TfmEstR07.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmEstR07.FormCreate(Sender: TObject);
begin

  sDate := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
           copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
           copy(FormatDateTime('dd/mm/yyyy',Date),7,4);

  sBase := ' Select TextoOcor(IntStrZeros(EstPro.CodCat,3),'''+ '-' +''',EstCat.NomCat,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomCat,'+
           '        TextoOcor(IntStrZeros(EstPro.CodMrc,3),'''+ '-' +''',EstMrc.NomMrc,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomMrc,'+
           '        TextoOcor(EstPro.CodGru,'''+ '-' +''',EstGru.NomGru,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomGru,'+
           '        TextoOcor(EstPro.CodSub,'''+ '-' +''',EstSub.NomSub,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomSub,'+
           '        TextoOcor(EstIcm.CodSt1,EstIcm.CodSt2,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as CodSit,'+
           '        EstPro.DscPro,'+
           '        EstIpi.PerIpi,'+
           '        EstIcm.PerIcm,'+
           '        EstIpi.ClsIpi,'+
           '        EstPro.CbaPro,'+
           '        EstPro.CodAnt,'+
           '        EstPro.CodClp || _UNICODE_FSS '''+ '-' +''' || EstPro.CodGru || _UNICODE_FSS '''+ '.' +''' || EstPro.CodSub || _UNICODE_FSS '''+ '.' +''' || EstPro.CodPro as CodIte'+
           ' From EstPro LEFT JOIN EstCat ON (EstPro.CodCat = EstCat.CodCat)'+
           '             LEFT JOIN EstMrc ON (EstPro.CodMrc = EstMrc.CodMrc)'+
           '             LEFT JOIN EstSub ON (EstPro.CodGru = EstSub.CodGru)'+
           '                             AND (EstPro.CodSub = EstSub.CodSub)'+
           '             LEFT JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)'+
           '             LEFT JOIN EstIcm ON (EstPro.IcmSai = EstIcm.CodIcm)'+
           '                             AND (EstPro.IcmTsd = EstIcm.TipIcm)'+
           '             LEFT JOIN EstIpi ON (EstPro.IpiSai = EstIpi.CodIpi)'+
           '                             AND (EstPro.IpiTsd = EstIpi.TipIpi)';

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

end;

procedure TfmEstR07.FormShow(Sender: TObject);
begin
  EdCodCat.SetFocus;
end;

procedure TfmEstR07.grR07ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmEstR07.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'EstR07' +sDate+ '.htm', grR07.SaveToHTML);
end;

procedure TfmEstR07.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'EstR07' +sDate+ '.xls', grR07.SaveToXLS);
end;

procedure TfmEstR07.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'EstR07' +sDate+ '.xml', grR07.SaveToXML);
end;

procedure TfmEstR07.bPesquisaClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  if Trim( EdCodCat.Text ) <> '' then sFiltro := ' Where EstPro.CodCat = '''+ EdCodCat.Text +'''';

  if pos('Where',sFiltro) = 0 then begin

     case rgStatus.Itemindex of
          0: sFiltro := ' Where EstPro.FlbPro = '''+ ' ' +'''';
          1: sFiltro := ' Where EstPro.FlbPro = '''+ '*' +'''';
     end;

     end
  else
     begin

     case rgStatus.Itemindex of
          0: sFiltro := sFiltro + ' and EstPro.FlbPro = '''+ ' ' +'''';
          1: sFiltro := sFiltro + ' and EstPro.FlbPro = '''+ '*' +'''';
     end;
  end;

  if Trim( EdCodClp.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodClp = '''+ EdCodClp.Text +''''
     else
        sFiltro := ' Where EstPro.CodClp = '''+ EdCodClp.Text +'''';

  end;

  if Trim( EdCodTip.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodTip = '''+ EdCodTip.Text +''''
     else
        sFiltro := ' Where EstPro.CodTip = '''+ EdCodTip.Text +'''';

  end;

  if Trim( EdCodMrc.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodMrc = '''+ EdCodMrc.Text +''''
     else
        sFiltro := ' Where EstPro.CodMrc = '''+ EdCodMrc.Text +'''';

  end;

  if Trim( EdCodGru.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodGru = '''+ EdCodGru.Text +''''
     else
        sFiltro := ' Where EstPro.CodGru = '''+ EdCodGru.Text +''''

  end;

  if Trim( EdCodSub.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodSub = '''+ EdCodSub.Text +''''
     else
        sFiltro := ' Where EstPro.CodSub = '''+ EdCodSub.Text +'''';

  end;

  if Trim( EdCodPro.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodPro = '''+ EdCodPro.Text +''''
     else
        sFiltro := ' Where EstPro.CodPro = '''+ EdCodPro.Text +'''';

  end;

  with EstR07,SQL do begin

       Close;
       Text := sBase + sFiltro + ' Order by EstPro.CodCat,EstPro.CodGru,EstPro.CodSub,EstPro.DscPro';
       Open;

  end;

  grR07.FullExpand;

  grR07.SetFocus;

end;

procedure TfmEstR07.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

     fmAuxIni.TipoPesq := 'Cls';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodClp ) <> '' then begin

        EdCodClp.Text := fmAuxIni.CodClp;
        EdNomClp.Text := fmAuxIni.NomClp;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdCodClp.Text ) <> '' then EdCodGru.SetFocus;

end;

procedure TfmEstR07.bPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );
     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;

     fmAuxIni.TipoPesq := 'G';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdCodGru.Text ) <> '' then EdCodSub.SetFocus;

end;

procedure TfmEstR07.bPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );
     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;
     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;

     fmAuxIni.TipoPesq := 'S';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodSub ) <> '' then begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;
        EdCodSub.Text := fmAuxIni.CodSub;
        EdNomSub.Text := fmAuxIni.NomSub;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdCodSub.Text ) <> '' then EdCodPro.SetFocus;

end;

procedure TfmEstR07.bPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );
     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;
     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;
     if Trim( EdCodSub.Text ) <> '' then fmAuxIni.CodGru := EdCodSub.Text;

     fmAuxIni.TipoPesq := 'I';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodPro ) <> '' then begin

        EdCodClp.Text := fmAuxIni.CodClp;
        EdNomClp.Text := fmAuxIni.NomClp;
        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;
        EdCodSub.Text := fmAuxIni.CodSub;
        EdNomSub.Text := fmAuxIni.NomSub;
        EdCodPro.Text := fmAuxIni.CodPro;
        EdNomPro.Text := fmAuxIni.DscPro;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdCodPro.Text ) <> '' then bPesquisa.SetFocus;

end;

procedure TfmEstR07.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp Where CodClp = '''+ EdCodClp.Text +'''';
          Open;

          EdNomClp.Text := FieldByName('NomClp').AsString;

     end;

     end
  else
     EdNomClp.Text := '';
end;

procedure TfmEstR07.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGru.Text ) <> '' then begin

     EdCodGru.Text := FNumZeros(EdCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru Where CodGru = '''+ EdCodGru.Text +'''';
          Open;

          EdNomGru.Text := FieldByName('NomGru').AsString;

     end;

     end
  else
     EdNomGru.Text := '';
end;

procedure TfmEstR07.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodSub.Text ) <> '' then begin

     EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub '+
                  ' Where CodGru = '''+ EdCodGru.Text +''''+
                  '   and CodSub = '''+ EdCodSub.Text +'''';
          Open;

          EdNomSub.Text := FieldByName('NomSub').AsString;

     end;

     end
  else
     EdNomSub.Text := '';
end;

procedure TfmEstR07.EdCodProExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodPro.Text ) <> '' then begin

     EdCodPro.Text := FNumStrZero(EdCodPro.Text);

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPro From EstPro '+
                  ' Where CodClp = :CodClp'+
                  '   and CodGru = :CodGru'+
                  '   and CodSub = :CodSub'+
                  '   and CodPro = :CodPro';

          with Params do begin

               Params[0].AsString := EdCodClp.Text;
               Params[1].AsString := EdCodGru.Text;
               Params[2].AsString := EdCodSub.Text;
               Params[3].AsString := EdCodPro.Text;

          end;

          Open;

     end;

     if Trim( quSQL.FieldbyName('DscPro').AsString ) <> '' then
        EdNomPro.Text := quSql.FieldByName('DscPro').AsString
     else
        fmsgErro('Item Informado não Encontrado.',EdCodPro);

     end
  else
     EdNomPro.Text := '';
end;

procedure TfmEstR07.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : '+ EdCodCat.Text + ' - ' + EdNomCat.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo : '+ EdCodTip.Text + ' - ' + EdNomTip.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Marca : '+ EdCodMrc.Text + ' - ' + EdNomMrc.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação : '+ EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo : '+ EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : '+ EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmEstR07.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmEstR07.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmEstR07.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCat.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCat From EstCat Where CodCat = '''+ EdCodCat.Text +'''';
          Open;

          EdNomCat.Text := FieldByName('NomCat').AsString;

     end;

     end
  else
     EdNomCat.Text := '';
end;

procedure TfmEstR07.bPsqCatClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Categoria';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCat > 0 then begin

        EdNomCat.Text := fmAuxIni.NomCat;
        EdCodCat.Text := IntToStr( fmAuxIni.CodCat );

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdCodCat.Text ) <> '' then EdCodTip.SetFocus;

end;

procedure TfmEstR07.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodTip.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomTip From EstTip Where CodTip = '''+ EdCodTip.Text +'''';
          Open;

          EdNomTip.Text := FieldByName('NomTip').AsString;

     end;

     end
  else
     EdNomTip.Text := '';
end;

procedure TfmEstR07.bPsqTipClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );

     fmAuxIni.TipoPesq := 'Tipo';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodTip > 0 then begin

        EdNomTip.Text := fmAuxIni.NomTip;
        EdCodTip.Text := IntToStr( fmAuxIni.CodTip );

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdCodTip.Text ) <> '' then EdCodMrc.SetFocus;

end;

procedure TfmEstR07.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodMrc.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomMrc From EstMrc Where CodMrc = '''+ EdCodMrc.Text +'''';
          Open;

          EdNomMrc.Text := FieldByName('NomMrc').AsString;

     end;

     end
  else
     EdNomMrc.Text := '';
end;

procedure TfmEstR07.PsqMrcClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );

     fmAuxIni.TipoPesq := 'Marca';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodMrc > 0 then begin

        EdNomMrc.Text := fmAuxIni.NomMrc;
        EdCodMrc.Text := IntToStr( fmAuxIni.CodMrc );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdCodMrc.Text ) <> '' then EdCodClp.SetFocus;

end;

procedure TfmEstR07.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmEstR07.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEstR07 := Nil;
end;

procedure TfmEstR07.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmEstR07.grR07);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

end.
