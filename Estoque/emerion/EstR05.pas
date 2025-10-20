unit EstR05;

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

  TfmEstR05 = class(TfmPadrao)
    PaintBox: TPaintBox;
    Label5: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    Label13: TLabel;
    EdCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdNomEmp: TdxColorEdit;
    bPesquisa: TBitBtn;
    bImprimir: TBitBtn;
    Label2: TLabel;
    Bevel2: TBevel;
    rgStatus: TRadioGroup;
    grR05: TdxDBGrid;
    EstR05: TwwQuery;
    DsR05: TwwDataSource;
    SaveDialog: TSaveDialog;
    quSql: TwwQuery;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    grR05QTMITE: TdxDBGridMaskColumn;
    grR05QTRITE: TdxDBGridMaskColumn;
    grR05QTDITE: TdxDBGridMaskColumn;
    EstR05CODEMP: TIntegerField;
    EstR05QTMITE: TFloatField;
    EstR05QTRITE: TFloatField;
    EstR05QTDITE: TFloatField;
    EstR05DSCPRO: TStringField;
    grR05CODITE: TdxDBGridColumn;
    grR05DSCPRO: TdxDBGridColumn;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    EdCodCat: TdxColorEdit;
    EdCodTip: TdxColorEdit;
    EdCodMrc: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodPro: TdxColorEdit;
    BbPsqPro: TSpeedButton;
    EdNomPro: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    BbPsqSub: TSpeedButton;
    BbPsqGru: TSpeedButton;
    EdNomGru: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    BbPsqClp: TSpeedButton;
    bPsqMrc: TSpeedButton;
    EdNomMrc: TdxColorEdit;
    EdNomTip: TdxColorEdit;
    bPsqTip: TSpeedButton;
    bPsqCat: TSpeedButton;
    EdNomCat: TdxColorEdit;
    Colunas1: TMenuItem;
    EstR05CODITE: TStringField;
    EstR05QMAITE: TFloatField;
    grR05QMAITE: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
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
    procedure bImprimirClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure grR05ReloadGroupList(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    sBase, sFiltro, sOrdem : string;
  end;

var
  fmEstR05: TfmEstR05;

implementation

uses dxDemoUtils, ShellAPI, Bbgeral, BbMensag, Bbfuncao, ManGDB, FPreview,
     PsqEmp, PsqClp, ManPri, AuxIni, ManCol;

{$R *.DFM}

procedure TfmEstR05.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmEstR05.FormCreate(Sender: TObject);
begin

  sBase := ' Select EstIte.CodEmp,'+
           '        EstPro.DscPro,'+
           '        EstIte.QmaIte,'+
           '        EstIte.QtmIte,'+
           '        EstIte.QtrIte,'+
           '        Round(EstIte.QtdIte - EstIte.QtrIte,4) as QtdIte,'+
           '        EstIte.CodClp || _UNICODE_FSS '+ QuotedStr('-') +' || EstIte.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || EstIte.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || EstIte.CodPro as CodIte'+
           ' From EstIte LEFT JOIN EstPro ON (EstIte.CodClp = EstPro.CodClp '+
           '                             AND  EstIte.CodGru = EstPro.CodGru '+
           '                             AND  EstIte.CodSub = EstPro.CodSub '+
           '                             AND  EstIte.CodPro = EstPro.CodPro)'+
           '             LEFT JOIN GerEmp ON (EstIte.CodEmp = GerEmp.CodEmp)';

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

end;

procedure TfmEstR05.FormShow(Sender: TObject);
begin
  EdCodEmp.SetFocus;
end;

procedure TfmEstR05.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Itens Abaixo do Estoque Minimo Estabelecido.htm', grR05.SaveToHTML);
end;

procedure TfmEstR05.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Itens Abaixo do Estoque Minimo Estabelecido.xls', grR05.SaveToXLS);
end;

procedure TfmEstR05.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Itens Abaixo do Estoque Minimo Estabelecido.xml', grR05.SaveToXML);
end;

procedure TfmEstR05.bPesquisaClick(Sender: TObject);
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
  
  if Trim( EdCodEmp.Text ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Empresa.',EdCodEmp);
  
  sFiltro := ' Where EstPro.FlbPro = '+ QuotedStr(' ');

  case rgStatus.ItemIndex of
       0: sFiltro := sFiltro + ' and Round(EstIte.QtdIte - EstIte.QtrIte,4) = '+ QuotedStr('0');
       1: sFiltro := sFiltro + ' and Round(EstIte.QtdIte - EstIte.QtrIte,4) < '+ QuotedStr('0');
       2: sFiltro := sFiltro + ' and Round(EstIte.QtdIte - EstIte.QtrIte,4) < EstIte.QtmIte ';
       3: sFiltro := sFiltro + ' and Round(EstIte.QtdIte - EstIte.QtrIte,4) < EstIte.QmaIte ';
       4: sFiltro := sFiltro + ' and Round(EstIte.QtdIte - EstIte.QtrIte,4) > 0 and Round(EstIte.QtdIte - EstIte.QtrIte,4) <= EstIte.QtmIte';
       5: sFiltro := sFiltro + ' and Round(EstIte.QtdIte - EstIte.QtrIte,4) > EstIte.QtmIte and Round(EstIte.QtdIte - EstIte.QtrIte,4) <= EstIte.QmaIte';
  end;

  if Trim( EdCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and EstIte.CodEmp = '+ QuotedStr(EdCodEmp.Text);
  if Trim( EdCodClp.Text ) <> '' then sFiltro := sFiltro + ' and EstIte.CodClp = '+ QuotedStr(EdCodClp.Text);
  if Trim( EdCodGru.Text ) <> '' then sFiltro := sFiltro + ' and EstIte.CodGru = '+ QuotedStr(EdCodGru.Text);
  if Trim( EdCodSub.Text ) <> '' then sFiltro := sFiltro + ' and EstIte.CodSub = '+ QuotedStr(EdCodSub.Text);
  if Trim( EdCodPro.Text ) <> '' then sFiltro := sFiltro + ' and EstIte.CodPro = '+ QuotedStr(EdCodPro.Text);
  if Trim( EdCodCat.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodCat = '+ QuotedStr(EdCodCat.Text);
  if Trim( EdCodTip.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodTip = '+ QuotedStr(EdCodTip.Text);
  if Trim( EdCodMrc.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodMrc = '+ QuotedStr(EdCodMrc.Text);

  if GFlgAce = 'Sim' then begin

     if GEmpLog > 0 then
        sFiltro := sFiltro + ' and EstIte.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
     else
        sFiltro := sFiltro + ' and GerEmp.CodFil > 0';

  end;

  with EstR05,SQL do begin

       Close;
       Text := sBase + sFiltro + ' Order by EstIte.CodEmp,EstIte.CodClp,EstIte.CodGru,EstIte.CodSub,EstIte.CodPro';
       Open;

  end;

  grR05.FullExpand;

  grR05.SetFocus;

end;

procedure TfmEstR05.BbPsqEmpClick(Sender: TObject);
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

  if Trim( EdCodEmp.Text ) <> '' then EdCodCat.SetFocus;

end;

procedure TfmEstR05.BbPsqClpClick(Sender: TObject);
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

procedure TfmEstR05.BbPsqGruClick(Sender: TObject);
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

procedure TfmEstR05.BbPsqSubClick(Sender: TObject);
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

procedure TfmEstR05.BbPsqProClick(Sender: TObject);
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

procedure TfmEstR05.EdCodEmpExit(Sender: TObject);
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

procedure TfmEstR05.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '+ QuotedStr(EdCodClp.Text);
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

procedure TfmEstR05.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGru.Text ) <> '' then begin

     EdCodGru.Text := FNumZeros(EdCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstGru.NomGru From EstGru Where EstGru.CodGru = '+ QuotedStr(EdCodGru.Text);
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

procedure TfmEstR05.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodSub.Text ) <> '' then begin

     EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstSub.NomSub'+
                  ' From EstSub '+
                  ' Where EstSub.CodGru = '+ QuotedStr(EdCodGru.Text)+
                  '   and EstSub.CodSub = '+ QuotedStr(EdCodSub.Text);
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

procedure TfmEstR05.EdCodProExit(Sender: TObject);
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

procedure TfmEstR05.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdCodEmp.Text + ' - ' + EdNomEmp.Text);
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

procedure TfmEstR05.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmEstR05.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmEstR05.grR05ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmEstR05.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmEstR05.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEstR05 := Nil;
end;

procedure TfmEstR05.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmEstR05.grR05);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

end.
