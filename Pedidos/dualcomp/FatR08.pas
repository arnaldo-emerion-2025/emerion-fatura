unit FatR08;

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

  TfmFatR08 = class(TfmPadrao)
    PedLb2: TwwQuery;
    DsLb2: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdDteFat1: TdxColorDateEdit;
    Label18: TLabel;
    EdDteFat2: TdxColorDateEdit;
    bPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label9: TLabel;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    ImageList1: TImageList;
    grLb2: TdxDBGrid;
    bImprime: TBitBtn;
    Label5: TLabel;
    EdCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    EdNomCli: TdxColorEdit;
    Label13: TLabel;
    Colunas1: TMenuItem;
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
    Label11: TLabel;
    Label12: TLabel;
    EdCodCat: TdxColorEdit;
    EdCodTip: TdxColorEdit;
    EdCodMrc: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodPro: TdxColorEdit;
    BbPsqPro: TSpeedButton;
    BbPsqSub: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqClp: TSpeedButton;
    bPsqMrc: TSpeedButton;
    bPsqTip: TSpeedButton;
    bPsqCat: TSpeedButton;
    EdNomCat: TdxColorEdit;
    EdNomTip: TdxColorEdit;
    EdNomMrc: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdNomPro: TdxColorEdit;
    PedLb2CODCLI: TIntegerField;
    PedLb2ULTQTS: TFloatField;
    PedLb2TOTLB2: TFloatField;
    PedLb2NOMCLI: TStringField;
    ULTQTS: TdxDBGridMaskColumn;
    TOTLB2: TdxDBGridMaskColumn;
    NOMCLI: TdxDBGridMaskColumn;
    PedLb2CODITE: TStringField;
    CODITE: TdxDBGridColumn;
    PedLb2NUMRES: TIntegerField;
    PedLb2DTERES: TDateTimeField;
    PedLb2NRONFS: TIntegerField;
    PedLb2DTEFAT: TDateTimeField;
    DTERES: TdxDBGridColumn;
    DTEFAT: TdxDBGridColumn;
    NRONFS: TdxDBGridColumn;
    NUMRES: TdxDBGridColumn;
    PedLb2APEVEN: TStringField;
    APEVEN: TdxDBGridColumn;
    PedLb2DTESDA: TDateTimeField;
    PedLb2DTEENT: TDateTimeField;
    DTESDA: TdxDBGridColumn;
    DTEENT: TdxDBGridColumn;
    Label14: TLabel;
    Label15: TLabel;
    EdCodVen: TdxColorEdit;
    bPsqVen: TSpeedButton;
    EdNomVen: TdxColorEdit;
    PedLb2TOTCST: TFloatField;
    TOTCST: TdxDBGridColumn;
    PedLb2FLGTAB: TStringField;
    PedLb2VCSLB2: TFloatField;
    VCSLB2: TdxDBGridColumn;
    FLGTAB: TdxDBGridColumn;
    PedLb2VLQLB2: TFloatField;
    VLQLB2: TdxDBGridColumn;
    PedLb2TOTREN: TFloatField;
    TOTREN: TdxDBGridColumn;
    Label16: TLabel;
    Label19: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    PedLb2SEQARQ: TStringField;
    PedLb2CODVEN: TIntegerField;
    PedLb2CODCLP: TStringField;
    PedLb2CODGRU: TStringField;
    PedLb2CODSUB: TStringField;
    PedLb2CODPRO: TStringField;
    PedLb2VLULB2: TFloatField;
    VLULB2: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimeClick(Sender: TObject);
    procedure grLb2ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodCliKeyPress(Sender: TObject; var Key: Char);
    procedure BbPsqClpClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodVenExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq,sBase,sFiltro : string;
  end;

var
  fmFatR08: TfmFatR08;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqGru, PsqSub, PsqPro, PsqClp,
     PsqTip, ManGDB, AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmFatR08.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmFatR08.FormCreate(Sender: TObject);
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

procedure TfmFatR08.bPesquisaClick(Sender: TObject);
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
  
  if Trim( EdCodCli.Text ) = '' then begin

     if Trim( EdCodVen.Text ) = '' then begin

        if Trim( EdCodGru.Text ) = '' then begin

           if Trim( EdCodSub.Text ) = '' then begin

              if Trim( EdCodPro.Text ) = '' then fmsgErro('Por Favor Informe algum Item,Vendedor ou Cliente para Emissão do Relatorio.',Nil);

           end;
        end;
     end;
  end;
  
  sFiltro := ' and PedLib.SitLib = '+ QuotedStr('Faturado') +
             ' and PedLib.AtuEst = '+ QuotedStr('Sim')      +
             ' and PedLb2.FlgSep = '+ QuotedStr('Sim')      ;

  if Trim( EdPsqModPfa.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.ModPfa = '+ QuotedStr(EdPsqModPfa.Text);

  if Trim(fLimpaStr( EdDteFat1.Text )) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat >= '+ QuotedStr(fDateToSQL( EdDteFat1.Date ));
  if Trim(fLimpaStr( EdDteFat2.Text )) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL( EdDteFat2.Date ));

  if Trim( EdCodCli.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodCli = '+ QuotedStr(EdCodCli.Text);
  if Trim( EdCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodVen = '+ QuotedStr(EdCodVen.Text);
  if Trim( EdCodGru.Text ) <> '' then sFiltro := sFiltro + ' and PedLb2.CodGru = '+ QuotedStr(EdCodGru.Text);
  if Trim( EdCodSub.Text ) <> '' then sFiltro := sFiltro + ' and PedLb2.CodSub = '+ QuotedStr(EdCodSub.Text);
  if Trim( EdCodPro.Text ) <> '' then sFiltro := sFiltro + ' and PedLb2.CodPro = '+ QuotedStr(EdCodPro.Text);

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');
  
  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FatR08 Where FatR08.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  try
  
     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into FatR08(SeqArq,CodCli,CodVen,NumRes,FlgTab,DteRes,NroNfs,DteFat,DteSda,DteEnt,CodClp,CodGru,CodSub,CodPro,UltQts,TotCst,TotRen,VcsLb2,VluLb2,TotLb2,VlqLb2)'+
                  ' Select '''+ SeqArq +''','+
                  '        PedLib.CodCli,'+
                  '        PedLib.CodVen,'+
                  '        PedLib.NumRes,'+
                  '        PedLib.FlgTab,'+
                  '        PedLib.DteRes,'+
                  '        PedLib.NroNfs,'+
                  '        PedLib.DteFat,'+
                  '        PedLib.DteSda,'+
                  '        PedLib.DteEnt,'+
                  '        PedLb2.CodClp,'+
                  '        PedLb2.CodGru,'+
                  '        PedLb2.CodSub,'+
                  '        PedLb2.CodPro,'+
                  '        PedLb2.UltQts,'+
                  '        PedLb2.TotCst,'+
                  '        PedLb2.TotRen,'+
                  '        PedLb2.VcsLb2,'+
                  '        PedLb2.VluLb2,'+                  
                  '        PedLb2.TotGe2 as TotLb2,'+
                  '        Round(PedLb2.VlqLb2 - PedLb2.VdrLb2,4) as VlqLb2'+
                  ' From PedLb2,PedLib'+
                  ' Where PedLb2.CodEmp = PedLib.CodEmp'+
                  '   and PedLb2.DteRes = PedLib.DteRes'+
                  '   and PedLb2.NumRes = PedLib.NumRes'+
                  '   and PedLb2.SeqLib = PedLib.SeqLib'+ sFiltro;
          ExecSQL;

     end;

     with PedLb2,SQL do begin

          Close;
          Text := ' Select FatR08.*,'+
                  '        TextoOcor(IntStrZeros(FatR08.CodVen,7),'''+ '-' +''',FinVen.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as ApeVen,'+
                  '        TextoOcor(IntStrZeros(FatR08.CodCli,7),'''+ '-' +''',FinCli.NomCli,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomCli,'+
                  '        TextoOcor(FatR08.CodGru,'''+ '.' +''',FatR08.CodSub,'''+ '.' +''',FatR08.CodPro,'''+ '-' +''',EstPro.DscPro) as CodIte'+
                  ' From FatR08,EstPro,FinVen,FinCli'+
                  ' Where FatR08.CodClp = EstPro.CodClp'+
                  '   and FatR08.CodGru = EstPro.CodGru'+
                  '   and FatR08.CodSub = EstPro.CodSub'+
                  '   and FatR08.CodPro = EstPro.CodPro'+
                  '   and FatR08.CodVen = FinVen.CodVen'+
                  '   and FatR08.CodCli = FinCli.CodCli';

          Text := Text + ' and FatR08.SeqArq = '+ QuotedStr(SeqArq);

          if Trim( EdCodClp.Text ) <> '' then Text := Text + ' and EstPro.CodClp = '+ QuotedStr(EdCodClp.Text);
          if Trim( EdCodCat.Text ) <> '' then Text := Text + ' and EstPro.CodCat = '+ QuotedStr(EdCodCat.Text);
          if Trim( EdCodTip.Text ) <> '' then Text := Text + ' and EstPro.CodTip = '+ QuotedStr(EdCodTip.Text);
          if Trim( EdCodMrc.Text ) <> '' then Text := Text + ' and EstPro.CodMrc = '+ QuotedStr(EdCodMrc.Text);

          Open;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Delete From FatR08 Where FatR08.SeqArq = '+ QuotedStr(SeqArq);
          ExecSQL;

     end;

  except

     with quSQL,SQL do begin

          Close;
          Text := ' Delete From FatR08 Where FatR08.SeqArq = '+ QuotedStr(SeqArq);
          ExecSQL;

     end;
  end;
  
  grLb2.FullExpand;

  grLb2.SetFocus;

end;

procedure TfmFatR08.FormShow(Sender: TObject);
begin
  inherited;

  EdCodClp.Text := '1';

  EdNomClp.Text := 'ACABADO';

  if GCodVen_Id > 0 then begin

     EdNomVen.Text := GNomVen_Id;
     EdCodVen.Text := IntToStr( GCodVen_Id );

     if GGus_Id <> 1 then begin

        bPsqVen.Enabled := False;

        EdCodVen.Enabled := False;

        EdCodVen.Font.Style := [fsBold];

        grLb2.ColumnByFieldName('VCSLB2').Visible := False;
        grLb2.ColumnByFieldName('TOTREN').Visible := False;        
        grLb2.ColumnByFieldName('FLGTAB').Visible := False;                
        grLb2.ColumnByFieldName('TOTLB2').Visible := False;
        grLb2.ColumnByFieldName('TOTCST').Visible := False;

     end;
  end;

  EdCodCli.SetFocus;
  
end;

procedure TfmFatR08.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmFatR08.bImprimeClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : '+ EdCodCli.Text + ' - ' + EdNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação : '+ EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo : '+ EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : '+ EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no Periodo de : '+ EdDteFat1.Text + ' a ' + EdDteFat2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmFatR08.grLb2ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmFatR08.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Perfil de Consumo.htm', grLb2.SaveToHTML);
end;

procedure TfmFatR08.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Perfil de Consumo.xls', grLb2.SaveToXLS);
end;

procedure TfmFatR08.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Perfil de Consumo.xml', grLb2.SaveToXML);
end;

procedure TfmFatR08.bPsqCliClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'C';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCli > 0 then begin

        EdNomCli.Text := fmAuxIni.NomCli;
        EdCodCli.Text := IntToStr( fmAuxIni.CodCli );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodCli.Text ) <> '' then begin

     if EdCodVen.Enabled then
        EdCodVen.SetFocus
     else
        EdCodCat.SetFocus;

  end;     
end;

procedure TfmFatR08.EdCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCli From FinCli '+
                  ' Where CodCli = '''+EdCodCli.Text+'''';
          Open;

          EdNomCli.Text := FieldByName('NomCli').AsString;

     end;

     end
  else
     EdNomCli.Text := '';
end;

procedure TfmFatR08.EdCodCliKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmFatR08.BbPsqClpClick(Sender: TObject);
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

procedure TfmFatR08.EdCodClpExit(Sender: TObject);
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

procedure TfmFatR08.BbPsqGruClick(Sender: TObject);
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

procedure TfmFatR08.EdCodGruExit(Sender: TObject);
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

procedure TfmFatR08.BbPsqSubClick(Sender: TObject);
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

procedure TfmFatR08.EdCodSubExit(Sender: TObject);
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

procedure TfmFatR08.BbPsqProClick(Sender: TObject);
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

procedure TfmFatR08.EdCodProExit(Sender: TObject);
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

procedure TfmFatR08.bPsqTipClick(Sender: TObject);
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

procedure TfmFatR08.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodTip.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomTip From EstTip Where CodTip = '''+ EdCodTip.Text +'''';
          Open;

          EdNomTip.Text := FieldByName('NomTip').AsString

     end;

     end
  else
     EdNomTip.Text := '';
end;

procedure TfmFatR08.bPsqCatClick(Sender: TObject);
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

procedure TfmFatR08.EdCodCatExit(Sender: TObject);
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

procedure TfmFatR08.bPsqMrcClick(Sender: TObject);
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

procedure TfmFatR08.EdCodMrcExit(Sender: TObject);
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

procedure TfmFatR08.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdNomVen.Text := fmAuxIni.NomVen;
        EdCodVen.Text := IntToStr( fmAuxIni.CodVen );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodVen.Text ) <> '' then EdCodCat.SetFocus;

end;

procedure TfmFatR08.EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

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
end;

procedure TfmFatR08.EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

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
end;

procedure TfmFatR08.EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

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
end;

procedure TfmFatR08.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

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
end;

procedure TfmFatR08.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

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

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

            EdCodGru.Text := fmAuxPsq.CodGru;
            EdNomGru.Text := fmAuxPsq.NomGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdCodGru.Text ) <> '' then EdCodSub.SetFocus;

  end;
end;

procedure TfmFatR08.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;
        fmAuxIni.CodGru := EdCodGru.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

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

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;
        fmAuxPsq.CodGru := EdCodGru.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxPsq.CodGru;
           EdNomGru.Text := fmAuxPsq.NomGru;
           EdCodSub.Text := fmAuxPsq.CodSub;
           EdNomSub.Text := fmAuxPsq.NomSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
     
     if Trim( EdCodSub.Text ) <> '' then EdCodPro.SetFocus;

  end;
end;

procedure TfmFatR08.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;
        fmAuxIni.CodGru := EdCodGru.Text;
        fmAuxIni.CodSub := EdCodSub.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

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
     
     if Trim( EdCodPro.Text ) <> '' then EdDteFat1.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;
        fmAuxPsq.CodGru := EdCodGru.Text;
        fmAuxPsq.CodSub := EdCodSub.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxPsq.CodGru;
           EdNomGru.Text := fmAuxPsq.NomGru;
           EdCodSub.Text := fmAuxPsq.CodSub;
           EdNomSub.Text := fmAuxPsq.NomSub;
           EdCodPro.Text := fmAuxPsq.CodPro;
           EdNomPro.Text := fmAuxPsq.DscPro;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
     
     if Trim( EdCodPro.Text ) <> '' then EdDteFat1.SetFocus;

  end;
end;

procedure TfmFatR08.EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           EdNomCli.Text := fmAuxIni.NomCli;
           EdCodCli.Text := IntToStr(fmAuxIni.CodCli);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
     
     EdCodCli.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           EdNomCli.Text := fmAuxPsq.NomCli;
           EdCodCli.Text := IntToStr(fmAuxPsq.CodCli);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
     
     EdCodCli.SetFocus;

  end;
end;

procedure TfmFatR08.EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdNomVen.Text := fmAuxIni.NomVen;
           EdCodVen.Text := IntToStr( fmAuxIni.CodVen );

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
     
     if Trim( EdCodVen.Text ) <> '' then EdCodCat.SetFocus;

  end;
end;

procedure TfmFatR08.EdCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select ApeVen From FinVen Where CodVen = '''+ EdCodVen.Text +'''';
          Open;

          EdNomVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdNomVen.Text := '';
end;

procedure TfmFatR08.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FatR08 Where FatR08.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmFatR08.FormDestroy(Sender: TObject);
begin
  inherited;
  fmFatR08 := nil;
end;

end.

