unit CmpR12;

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

  TfmCmpR12 = class(TfmPadrao)
    DsNf2: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDtePed1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDtePed2: TdxColorDateEdit;
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
    grPe2: TdxDBGrid;
    bImprime: TBitBtn;
    Label5: TLabel;
    EdCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdApeEmp: TdxColorEdit;
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
    ID_CMPPED: TdxDBGridMaskColumn;
    DTEPED: TdxDBGridDateColumn;
    QTPPE2: TdxDBGridMaskColumn;
    QTRPE2: TdxDBGridMaskColumn;
    SLDPE2: TdxDBGridMaskColumn;
    VLUPE2: TdxDBGridMaskColumn;
    CODUND: TdxDBGridMaskColumn;
    IPIPE2: TdxDBGridMaskColumn;
    ICMPE2: TdxDBGridMaskColumn;
    LOGUSU: TdxDBGridMaskColumn;
    APEFOR: TdxDBGridMaskColumn;
    CODITE: TdxDBGridColumn;
    Label14: TLabel;
    Label20: TLabel;
    Label15: TLabel;
    EdCodFor: TdxColorEdit;
    BbPsqFor: TSpeedButton;
    EdNomFor: TdxColorEdit;
    TOTNAT: TdxDBGridColumn;
    CmpNf2DTEPED: TDateTimeField;
    CmpNf2DPEPED: TDateTimeField;
    CmpNf2CODCLP: TStringField;
    CmpNf2CODGRU: TStringField;
    CmpNf2CODSUB: TStringField;
    CmpNf2QTPPE2: TFloatField;
    CmpNf2QTRPE2: TFloatField;
    CmpNf2SLDPE2: TFloatField;
    CmpNf2VLUPE2: TFloatField;
    CmpNf2CODUND: TStringField;
    CmpNf2IPIPE2: TFloatField;
    CmpNf2ICMPE2: TFloatField;
    CmpNf2DSCPE2: TFloatField;
    CmpNf2PACPE2: TFloatField;
    CmpNf2LOGUSU: TStringField;
    CmpNf2APEFOR: TStringField;
    CmpNf2DSCPRO: TStringField;
    CmpNf2TOTNAT: TFloatField;
    CmpNf2: TwwQuery;
    CmpNf2NRONFS: TIntegerField;
    NRONFS: TdxDBGridColumn;
    CmpNf2ID_CMPPED: TIntegerField;
    DSCPRO: TdxDBGridColumn;
    CmpNf2CODITE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimeClick(Sender: TObject);
    procedure grPe2ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure BbPsqClpClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure EdCodForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodForExit(Sender: TObject);
    procedure BbPsqForClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq,sFiltro,sOrdem : string;
  end;

var
  fmCmpR12: TfmCmpR12;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqGru, PsqSub, PsqPro,
     PsqClp, ManCol, PsqTip, ManGDB, AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmCmpR12.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmCmpR12.FormCreate(Sender: TObject);
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

procedure TfmCmpR12.bPesquisaClick(Sender: TObject);
begin

  ActiveControl := nil;

  sFiltro := '';

  if Trim( EdCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and CmpNf2.CodEmp = '+ QuotedStr(EdCodEmp.Text);

  if Trim(fLimpaStr(EdPsqDtePed1.Text)) <> '' then sFiltro := sFiltro + ' and CmpNfs.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDtePed1.Date));
  if Trim(fLimpaStr(EdPsqDtePed2.Text)) <> '' then sFiltro := sFiltro + ' and CmpNfs.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDtePed2.Date));

  if Trim( EdCodClp.Text ) <> '' then sFiltro := sFiltro + ' and CmpNf2.CodClp = '+ QuotedStr(EdCodClp.Text);
  if Trim( EdCodGru.Text ) <> '' then sFiltro := sFiltro + ' and CmpNf2.CodGru = '+ QuotedStr(EdCodGru.Text);
  if Trim( EdCodSub.Text ) <> '' then sFiltro := sFiltro + ' and CmpNf2.CodSub = '+ QuotedStr(EdCodSub.Text);
  if Trim( EdCodPro.Text ) <> '' then sFiltro := sFiltro + ' and CmpNf2.CodPro = '+ QuotedStr(EdCodPro.Text);
  if Trim( EdCodFor.Text ) <> '' then sFiltro := sFiltro + ' and CmpNfs.CodFor = '+ QuotedStr(EdCodFor.Text);

  sFiltro := sFiltro + ' and CmpNfs.SitNfs <> '+ QuotedStr('Recebido') +
                       ' and CmpNfs.SitNfs <> '+ QuotedStr('Nao Concluido') +
                       ' and CmpNfs.SitNfs <> '+ QuotedStr('Saldo Nao Atendido');

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR12 Where CmpR12.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into CmpR12(SeqArq,CodEmp,DtePed,DpePed,Id_CmpPed,CodFil,CodFor,LanEst,CodClp,CodGru,CodSub,CodPro,CodUnd,DesPe2,QtpPe2,QtrPe2,SldPe2,VluPe2,IpiPe2,IcmPe2,DscPe2,PacPe2,CodUsu,NroNfs)'+
               ' Select '+ QuotedStr(SeqArq) + ',' +
               '        CmpNfs.CodEmp,'+
               '        CmpNfs.DteFat,'+
               '        CmpNfs.DteFat,'+
               '        CmpNf2.Id_CmpNfs,'+
               '        CmpNfs.CodFil,'+
               '        CmpNfs.CodFor,'+
               '        CmpNfs.LanEst,'+
               '        CmpNf2.CodClp,'+
               '        CmpNf2.CodGru,'+
               '        CmpNf2.CodSub,'+
               '        CmpNf2.CodPro,'+
               '        CmpNf2.CodUnd,'+
               '        CmpNf2.DesNf2,'+
               '        CmpNf2.QtpNf2,'+
               '        CmpNf2.QtdNf2,'+
               '        CmpNf2.SldNf2,'+
               '        CmpNf2.VluNf2,'+
               '        CmpNf2.IpiNf2,'+
               '        CmpNf2.IcmNf2,'+ QuotedStr('0') +','+ QuotedStr('0') +','+
               '        CmpNfs.CodUsu,'+
               '        CmpNfs.NroNfs '+
               ' From CmpNf2,CmpNfs'+
               ' Where CmpNf2.Id_CmpNfs = CmpNfs.Id_CmpNfs'+ sFiltro;
       ExecSQL;

  end;

  with CmpNf2,SQL do begin

       Close;
       Text := ' Select CmpR12.Id_CmpPed,'+
               '        CmpR12.DtePed,'+
               '        CmpR12.DpePed,'+
               '        CmpR12.CodClp,'+
               '        CmpR12.CodGru,'+
               '        CmpR12.CodSub,'+
               '        CmpR12.QtpPe2,'+
               '        CmpR12.QtrPe2,'+
               '        CmpR12.SldPe2,'+
               '        CmpR12.VluPe2,'+
               '        CmpR12.CodUnd,'+
               '        CmpR12.IpiPe2,'+
               '        CmpR12.IcmPe2,'+
               '        EstPro.DscPro,'+
               '        CmpR12.DscPe2,'+
               '        CmpR12.PacPe2,'+
               '        GerUsu.LogUsu,'+
               '        CmpR12.NroNfs,'+
               '        Round(CmpR12.SldPe2 * CmpR12.VluPe2,4) as TotNat,'+
               '        TextoOcor(IntStrZeros(CmpR12.CodFor,5),'+ QuotedStr('-') +',FinFor.NomFor,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as ApeFor,'+
               '        CmpR12.CodClp || _UNICODE_FSS '+ QuotedStr('-') +' || CmpR12.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || CmpR12.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || CmpR12.CodPro as CodIte'+
               ' From CmpR12 LEFT JOIN EstPro ON (CmpR12.CodClp = EstPro.CodClp'+
               '                             AND  CmpR12.CodGru = EstPro.CodGru'+
               '                             AND  CmpR12.CodSub = EstPro.CodSub'+
               '                             AND  CmpR12.CodPro = EstPro.CodPro)'+
               '             LEFT JOIN FinFor ON (CmpR12.CodFor = FinFor.CodFor)'+
               '             LEFT JOIN GerUsu ON (CmpR12.CodUsu = GerUsu.CodUsu)'+
               ' Where CmpR12.SeqArq = '+ QuotedStr(SeqArq);

       if Trim( EdCodCat.Text ) <> '' then Text := Text + ' and EstPro.CodCat = '+ QuotedStr(EdCodCat.Text);
       if Trim( EdCodTip.Text ) <> '' then Text := Text + ' and EstPro.CodTip = '+ QuotedStr(EdCodTip.Text);
       if Trim( EdCodMrc.Text ) <> '' then Text := Text + ' and EstPro.CodMrc = '+ QuotedStr(EdCodMrc.Text);

       Text := Text + ' and CmpR12.SldPe2 > 0';

       Text := Text + ' Order by CmpR12.CodGru,CmpR12.CodSub,CmpR12.CodPro,CmpR12.Id_CmpPed';

       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR12 Where CmpR12.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grPe2.FullExpand;

  grPe2.SetFocus;

end;

procedure TfmCmpR12.FormShow(Sender: TObject);
begin
  inherited;
  EdCodEmp.SetFocus;
end;

procedure TfmCmpR12.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmCmpR12.bImprimeClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdCodEmp.Text + ' - ' + EdApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classifica��o : '+ EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo : '+ EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : '+ EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Emitidos no Periodo de : '+ EdPsqDtePed1.Text + ' a ' + EdPsqDtePed2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmCmpR12.grPe2ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmCmpR12.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Rela��o de romaneios pendentes.htm', grPe2.SaveToHTML);
end;

procedure TfmCmpR12.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Rela��o de romaneios pendentes.xls', grPe2.SaveToXLS);
end;

procedure TfmCmpR12.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Rela��o de romaneios pendentes.xml', grPe2.SaveToXML);
end;

procedure TfmCmpR12.BbPsqEmpClick(Sender: TObject);
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

procedure TfmCmpR12.EdCodEmpExit(Sender: TObject);
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
          Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdCodEmp.Text);

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

             fmsgErro('Empresa Informada n�o Encontrada.',EdCodEmp);

          end;
     end;

     end
  else
     EdApeEmp.Text := '';
end;

procedure TfmCmpR12.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmCmpR12.BbPsqClpClick(Sender: TObject);
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

procedure TfmCmpR12.EdCodClpExit(Sender: TObject);
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
        fmsgErro('Classifica��o Informada n�o Encontrada.',EdCodClp);

     end
  else
     EdNomClp.Text := '';
end;

procedure TfmCmpR12.BbPsqGruClick(Sender: TObject);
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

procedure TfmCmpR12.EdCodGruExit(Sender: TObject);
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
        fmsgErro('Grupo Informado n�o Encontrado.',EdCodGru);

     end
  else
     EdNomGru.Text := '';
end;

procedure TfmCmpR12.BbPsqSubClick(Sender: TObject);
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

procedure TfmCmpR12.EdCodSubExit(Sender: TObject);
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
        fmsgErro('SubGrupo Informado n�o Encontrado.',EdCodSub);

     end
  else
     EdNomSub.Text := '';
end;

procedure TfmCmpR12.BbPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );
     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;
     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;
     if Trim( EdCodSub.Text ) <> '' then fmAuxIni.CodSub := EdCodSub.Text;

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

procedure TfmCmpR12.EdCodProExit(Sender: TObject);
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
        fmsgErro('Item Informado n�o Encontrado.',EdCodPro);

     end
  else
     EdNomPro.Text := '';
end;

procedure TfmCmpR12.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmCmpR12.grPe2);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

procedure TfmCmpR12.bPsqTipClick(Sender: TObject);
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

procedure TfmCmpR12.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodTip.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstTip.NomTip From EstTip Where EstTip.CodTip = '+ QuotedStr(EdCodTip.Text);
          Open;

          EdNomTip.Text := FieldByName('NomTip').AsString

     end;

     end
  else
     EdNomTip.Text := '';
end;

procedure TfmCmpR12.bPsqCatClick(Sender: TObject);
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

procedure TfmCmpR12.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCat.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstCat.NomCat From EstCat Where EstCat.CodCat = '+ QuotedStr(EdCodCat.Text);
          Open;

          EdNomCat.Text := FieldByName('NomCat').AsString;

     end;

     end
  else
     EdNomCat.Text := '';
end;

procedure TfmCmpR12.bPsqMrcClick(Sender: TObject);
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

procedure TfmCmpR12.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodMrc.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstMrc.NomMrc From EstMrc Where EstMrc.CodMrc = '+ QuotedStr(EdCodMrc.Text);
          Open;

          EdNomMrc.Text := FieldByName('NomMrc').AsString;

     end;

     end
  else
     EdNomMrc.Text := '';
end;

procedure TfmCmpR12.EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmCmpR12.EdCodForExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinFor.NomFor From FinFor Where FinFor.CodFor = '+ QuotedStr(EdCodFor.Text);
          Open;

          EdNomFor.Text := FieldByName('NomFor').AsString;

     end;

     end
  else
     EdNomFor.Text := '';
end;

procedure TfmCmpR12.BbPsqForClick(Sender: TObject);
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

procedure TfmCmpR12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR12 Where CmpR12.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmCmpR12.FormDestroy(Sender: TObject);
begin
  inherited;
  fmCmpR12 := nil;
end;

end.

