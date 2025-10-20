unit EstR03;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, Buttons, ComCtrls, Db, DBTables, Wwquery, ExtCtrls, FlEdit,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, Wwdatsrc, Mask, hEdits, wwdbedit,
  Wwdotdot, Wwdbcomb, DBCtrls, AlignEdit, QuickRpt, ppDB, ppDBPipe, ppBands,
  ppClass, ppStrtch, ppMemo, ppVar, jpeg, ppCtrls, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppModule, daDatMod, wwdbdatetimepicker,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxExEdtr, dxEdLib,
  dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, Menus,
  ImgList, dxDBTLCl, dxGrClms, dxColorEdit, dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmEstR03 = class(TfmPadrao)
    EstR03: TwwQuery;
    DsR03: TwwDataSource;
    quSql: TwwQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label17: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    EdCodEmp: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodPro: TdxColorEdit;
    EdPsqDtInic: TdxColorDateEdit;
    Label18: TLabel;
    BbPsqPro: TSpeedButton;
    BbPsqSub: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqClp: TSpeedButton;
    BbPsqEmp: TSpeedButton;
    EdApeEmp: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdNomPro: TdxColorEdit;
    EdPsqDtFina: TdxColorDateEdit;
    bPesquisa: TBitBtn;
    bImprimir: TBitBtn;
    Label2: TLabel;
    Bevel2: TBevel;
    grR03: TdxDBGrid;
    PaintBox: TPaintBox;
    ImageList1: TImageList;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    SaveDialog: TSaveDialog;
    EstR03DTEHIS: TDateTimeField;
    EstR03CODUNS: TStringField;
    EstR03OPERACAO: TStringField;
    EstR03QTMOVI: TFloatField;
    EstR03DSCPRO: TStringField;
    EstR03ITEM: TStringField;
    DTEHIS: TdxDBGridDateColumn;
    OPERACAO: TdxDBGridMaskColumn;
    QTMOVI: TdxDBGridMaskColumn;
    ITEM: TdxDBGridMaskColumn;
    DSCPRO: TdxDBGridMaskColumn;
    NUMENT: TdxDBGridColumn;
    EstR03NRONFE: TIntegerField;
    EstR03NUMFAT: TIntegerField;
    NUMFAT: TdxDBGridColumn;
    NUMLOJ: TdxDBGridColumn;
    EstR03NUMLOJ: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure BbPsqClpClick(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure grR03ReloadGroupList(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    sBase : string;
  end;

var
  QtdPar   : real;
  QtdGer   : real;
  fmEstR03: TfmEstR03;

implementation

uses dxDemoUtils, ShellAPI, Bbgeral, BbMensag, Bbfuncao, ManGDB, FPreview,
     PsqEmp, PsqClp, ManPri, AuxIni;

{$R *.DFM}

procedure TfmEstR03.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmEstR03.FormCreate(Sender: TObject);
begin

  sBase := ' Select EstHis.DteHis,'+
           '        EstPro.DscPro,'+
           '        EstHis.QtMovi,'+
           '        EstHis.NroNfe,'+
           '        EstHis.NumFat,'+
           '        EstHis.NumLoj,'+
           '        EstPro.CodUns,'+
           '        TextoOcor(EstHis.CodOpe,'+ QuotedStr('-') +',EstOpe.NomOpe,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as Operacao,'+
           '        EstHis.CodClp || _UNICODE_FSS '+ QuotedStr('-') +' || EstHis.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || EstHis.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || EstHis.CodPro as Item'+
           ' From EstHis,EstPro,EstOpe,GerEmp'+
           ' Where EstHis.CodClp = EstPro.CodClp'+
           '   and EstHis.CodGru = EstPro.CodGru'+
           '   and EstHis.CodSub = EstPro.CodSub'+
           '   and EstHis.CodPro = EstPro.CodPro'+
           '   and EstHis.CodOpe = EstOpe.CodOpe'+
           '   and EstHis.CodEmp = GerEmp.CodEmp';

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

end;

procedure TfmEstR03.FormShow(Sender: TObject);
begin
  inherited;
  EdCodEmp.SetFocus;
end;

procedure TfmEstR03.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmEstR03.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdCodEmp.Text + ' - ' + EdApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação : '+ EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo : '+ EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : '+ EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Periodo de : '+ EdPsqDtInic.Text + ' a ' + EdPsqDtFina.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmEstR03.bPesquisaClick(Sender: TObject);
var
sFiltro,sOrdem : string;
begin
  inherited;

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
  
  sOrdem := ' Order by EstHis.DteHis,EstHis.CodClp,EstHis.CodGru,EstHis.CodSub,EstHis.CodPro';
  
  if Trim( EdCodEmp.Text ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Empresa.',EdCodEmp);

  if (Trim( EdCodGru.Text ) = '') and (Trim( EdCodSub.Text ) = '') and (Trim( EdCodPro.Text ) = '') then begin

     if Trim(fLimpaStr( EdPsqDtInic.Text )) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Periodo Inicial.',EdPsqDtInic);
     if Trim(fLimpaStr( EdPsqDtFina.Text )) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Periodo Final.',EdPsqDtFina);

     if Trim(fLimpaStr( EdPsqDtInic.Text )) <> '' then begin

        if Trim(fLimpaStr( EdPsqDtFina.Text )) <> '' then begin

           if EdPsqDtFina.Date < EdPsqDtInic.Date then
              fmsgErro('Periodo Final Informado Inferior ao Periodo Inicial. Por Favor Verificar.',EdPsqDtFina)
           else
              begin

              if (EdPsqDtFina.Date - EdPsqDtInic.Date) > 30 then
                 fmsgErro('Para Periodos de Pesquisa Maiores que 30 dias Por Favor Informar dados do Item.',EdCodGru);
              
           end;   
        end;
     end;
  end;

  sFiltro := '';

  if Trim(fLimpaStr( EdPsqDtInic.Text )) <> '' then sFiltro := sFiltro + ' and EstHis.DteHis >= '''+ fDateToSQL( EdPsqDtInic.Date ) +'''';
  if Trim(fLimpaStr( EdPsqDtFina.Text )) <> '' then sFiltro := sFiltro + ' and EstHis.DteHis <= '''+ fDateToSQL( EdPsqDtFina.Date ) +'''';

  if Trim( EdCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and EstHis.CodEmp = '''+ EdCodEmp.Text +'''';
  if Trim( EdCodClp.Text ) <> '' then sFiltro := sFiltro + ' and EstHis.CodClp = '''+ EdCodClp.Text +'''';
  if Trim( EdCodGru.Text ) <> '' then sFiltro := sFiltro + ' and EstHis.CodGru = '''+ EdCodGru.Text +'''';
  if Trim( EdCodSub.Text ) <> '' then sFiltro := sFiltro + ' and EstHis.CodSub = '''+ EdCodSub.Text +'''';
  if Trim( EdCodPro.Text ) <> '' then sFiltro := sFiltro + ' and EstHis.CodPro = '''+ EdCodPro.Text +'''';

  sFiltro := sFiltro + ' and EstOpe.TipOpe = '''+ 'E' +'''';

  if GFlgAce = 'Sim' then begin

     if GEmpLog > 0 then
        sFiltro := sFiltro + ' and EstHis.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
     else
        sFiltro := sFiltro + ' and GerEmp.CodFil > 0';

  end;

  with EstR03,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grR03.FullExpand;

  grR03.SetFocus;

end;

procedure TfmEstR03.BbPsqEmpClick(Sender: TObject);
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

  if Trim( EdCodEmp.Text ) <> '' then EdCodClp.SetFocus;

end;

procedure TfmEstR03.BbPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqClp := TfmPsqClp.Create(Self);

     fmPsqClp.ShowModal;

     if Trim( fmPsqClp.CodClp ) <> '' then begin

        EdCodClp.Text := fmPsqClp.CodClp;
        EdNomClp.Text := fmPsqClp.NomClp;

     end;

  finally   

     FreeAndNil(fmPsqClp);

  end;
  
  if Trim( EdCodClp.Text ) <> '' then EdCodGru.SetFocus;

end;

procedure TfmEstR03.BbPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdCodClp.Text;

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

procedure TfmEstR03.BbPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdCodClp.Text;
     fmAuxIni.CodGru := EdCodGru.Text;

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

procedure TfmEstR03.BbPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdCodClp.Text;
     fmAuxIni.CodGru := EdCodGru.Text;
     fmAuxIni.CodSub := EdCodSub.Text;

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

procedure TfmEstR03.EdCodEmpExit(Sender: TObject);
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

procedure TfmEstR03.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp '+
                  ' Where CodClp = '''+EdCodClp.Text+'''';
          Open;


     end;

     if Trim( quSQL.FieldbyName('NomClp').AsString ) <> '' then
        EdNomClp.Text := quSql.FieldByName('NomClp').AsString
     else
        fmsgErro('Classificação Informada não Encontrada.',EdCodClp);

     end
  else
     EdNomClp.Text := '';
end;

procedure TfmEstR03.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGru.Text ) <> '' then begin

     EdCodGru.Text := FNumZeros(EdCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru '+
                  ' Where CodGru = '''+EdCodGru.Text+'''';
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomGru').AsString ) <> '' then
        EdNomGru.Text := quSql.FieldByName('NomGru').AsString
     else
        fmsgErro('Grupo Informado não Encontrado.',EdCodGru);

     end
  else
     EdNomGru.Text := '';
end;

procedure TfmEstR03.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodSub.Text ) <> '' then begin

     EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub '+
                  ' Where CodGru = '''+EdCodGru.Text+''''+
                  '   and CodSub = '''+EdCodSub.Text+'''';
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomSub').AsString ) <> '' then
        EdNomSub.Text := quSql.FieldByName('NomSub').AsString
     else
        fmsgErro('SubGrupo Informado não Encontrado.',EdCodSub);

     end
  else
     EdNomSub.Text := '';
end;

procedure TfmEstR03.EdCodProExit(Sender: TObject);
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

procedure TfmEstR03.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Entradas.htm', grR03.SaveToHTML);
end;

procedure TfmEstR03.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Entradas.xls', grR03.SaveToXLS);
end;

procedure TfmEstR03.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Entradas.xml', grR03.SaveToXML);
end;

procedure TfmEstR03.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmEstR03.grR03ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmEstR03.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmEstR03.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEstR03 := Nil;
end;

end.
