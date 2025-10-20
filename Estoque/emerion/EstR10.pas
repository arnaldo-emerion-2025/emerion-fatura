unit EstR10;

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

  TfmEstR10 = class(TfmPadrao)
    EstR10: TwwQuery;
    DsR10: TwwDataSource;
    quSql: TwwQuery;
    Label6: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    EdCodClp: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodPro: TdxColorEdit;
    BbPsqPro: TSpeedButton;
    BbPsqSub: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqClp: TSpeedButton;
    EdNomClp: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdNomPro: TdxColorEdit;
    bPesquisa: TBitBtn;
    bImprimir: TBitBtn;
    Label2: TLabel;
    Bevel2: TBevel;
    grR10: TdxDBGrid;
    PaintBox: TPaintBox;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    SaveDialog: TSaveDialog;
    EstR10SEQARQ: TStringField;
    EstR10CODCLP: TStringField;
    EstR10CODGRU: TStringField;
    EstR10CODSUB: TStringField;
    EstR10CODPRO: TStringField;
    EstR10CODB01: TStringField;
    EstR10CUBB01: TFloatField;
    EstR10QTDB01: TFloatField;
    EstR10CODB02: TStringField;
    EstR10CUBB02: TFloatField;
    EstR10QTDB02: TFloatField;
    EstR10CODB03: TStringField;
    EstR10CUBB03: TFloatField;
    EstR10QTDB03: TFloatField;
    EstR10CODB04: TStringField;
    EstR10CUBB04: TFloatField;
    EstR10QTDB04: TFloatField;
    EstR10DSCPRO: TStringField;
    EstR10ITEM: TStringField;
    ITEM: TdxDBGridColumn;
    DSCPRO: TdxDBGridColumn;
    CODB01: TdxDBGridColumn;
    CUBB01: TdxDBGridColumn;
    QTDB01: TdxDBGridColumn;
    CODB02: TdxDBGridColumn;
    CUBB02: TdxDBGridColumn;
    QTDB02: TdxDBGridColumn;
    CODB03: TdxDBGridColumn;
    CUBB03: TdxDBGridColumn;
    QTDB03: TdxDBGridColumn;
    CODB04: TdxDBGridColumn;
    CUBB04: TdxDBGridColumn;
    QTDB04: TdxDBGridColumn;
    Colunas1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure BbPsqClpClick(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure grR10ReloadGroupList(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    {Private declarations}
    SeqArq : string;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
  end;

var
  fmEstR10: TfmEstR10;

implementation

uses dxDemoUtils, ShellAPI, Bbgeral, BbMensag, Bbfuncao, ManGDB, FPreview,
     PsqEmp, PsqClp, ManPri, AuxIni, ManCol;

{$R *.DFM}

procedure TfmEstR10.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmEstR10.FormCreate(Sender: TObject);
begin

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

procedure TfmEstR10.FormShow(Sender: TObject);
begin
  inherited;
  EdCodClp.SetFocus;
end;

procedure TfmEstR10.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmEstR10.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação : '+ EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo : '+ EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : '+ EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmEstR10.bPesquisaClick(Sender: TObject);
var
sFiltro : string;
begin
  inherited;

  ActiveControl := nil;

  sFiltro := '';

  if Trim( EdCodClp.Text ) <> '' then sFiltro := ' Where EstPro.CodClp = '+ QuotedStr(EdCodClp.Text);
  
  if Trim( EdCodGru.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodGru = '+ QuotedStr(EdCodGru.Text)
     else
        sFiltro := ' Where EstPro.CodGru = '+ QuotedStr(EdCodGru.Text);
        
  end;   

  if Trim( EdCodSub.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodSub = '+ QuotedStr(EdCodSub.Text)
     else
        sFiltro := ' Where EstPro.CodSub = '+ QuotedStr(EdCodSub.Text);
        
  end;

  if Trim( EdCodPro.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodPro = '+ QuotedStr(EdCodPro.Text)
     else
        sFiltro := ' Where EstPro.CodPro = '+ QuotedStr(EdCodPro.Text);
        
  end;

  if pos('Where',sFiltro) > 0 then
     sFiltro := sFiltro + ' and EstPro.FlbPro = '+ QuotedStr(' ')
  else
     sFiltro := ' Where EstPro.FlbPro = '+ QuotedStr(' ');
  
  with quSQL,SQL do begin

       Close;
       Text := ' Delete From EstR10 Where EstR10.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into EstR10(SeqArq,CodClp,CodGru,CodSub,CodPro)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        EstPro.CodClp,'+
               '        EstPro.CodGru,'+
               '        EstPro.CodSub,'+
               '        EstPro.CodPro'+
               ' From EstPro'+ sFiltro;
       ExecSQL;

  end;

  EstR10.Close;
  EstR10.Params[0].AsString := SeqArq;
  EstR10.Open;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From EstR10 Where EstR10.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grR10.FullExpand;

  grR10.SetFocus;

end;

procedure TfmEstR10.BbPsqClpClick(Sender: TObject);
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

procedure TfmEstR10.BbPsqGruClick(Sender: TObject);
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

procedure TfmEstR10.BbPsqSubClick(Sender: TObject);
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

procedure TfmEstR10.BbPsqProClick(Sender: TObject);
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

procedure TfmEstR10.EdCodClpExit(Sender: TObject);
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

procedure TfmEstR10.EdCodGruExit(Sender: TObject);
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

procedure TfmEstR10.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodSub.Text ) <> '' then begin

     EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstSub.NomSub From EstSub '+
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

procedure TfmEstR10.EdCodProExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodPro.Text ) <> '' then begin

     EdCodPro.Text := FNumStrZero(EdCodPro.Text);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstPro.DscPro From EstPro '+
                  ' Where EstPro.CodClp = :CodClp'+
                  '   and EstPro.CodGru = :CodGru'+
                  '   and EstPro.CodSub = :CodSub'+
                  '   and EstPro.CodPro = :CodPro';

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

procedure TfmEstR10.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de Códigos de Barras.htm', grR10.SaveToHTML);
end;

procedure TfmEstR10.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de Códigos de Barras.xls', grR10.SaveToXLS);
end;

procedure TfmEstR10.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de Códigos de Barras.xml', grR10.SaveToXML);
end;

procedure TfmEstR10.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmEstR10.grR10ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmEstR10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From EstR10 Where EstR10.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmEstR10.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEstR10 := Nil;
end;

procedure TfmEstR10.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmEstR10.grR10);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

end.
