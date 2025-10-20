unit CmpR02;

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

  TfmCmpR02 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdDteres2: TdxColorDateEdit;
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
    grRes: TdxDBGrid;
    PedResQTDREG: TIntegerField;
    PedResQTDPED: TFloatField;
    PedResQTDEST: TFloatField;
    PedResQTDSLD: TFloatField;
    PedResDSCPRO: TStringField;
    PedResCODITE: TStringField;
    grResQTDREG: TdxDBGridMaskColumn;
    grResQTDPED: TdxDBGridMaskColumn;
    grResQTDEST: TdxDBGridMaskColumn;
    grResQTDSLD: TdxDBGridMaskColumn;
    grResDSCPRO: TdxDBGridMaskColumn;
    bImprime: TBitBtn;
    Label5: TLabel;
    EdCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    EdNomEmp: TdxColorEdit;
    rgExibir: TRadioGroup;
    rgStatus: TRadioGroup;
    PedResQTDMIN: TFloatField;
    grResQTDMIN: TdxDBGridColumn;
    rgMinimo: TRadioGroup;
    Colunas1: TMenuItem;
    rgMaximo: TRadioGroup;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label3: TLabel;
    EdCodCat: TdxColorEdit;
    EdCodTip: TdxColorEdit;
    EdCodMrc: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodPro: TdxColorEdit;
    bPsqPro: TSpeedButton;
    bPsqSub: TSpeedButton;
    bPsqGru: TSpeedButton;
    bPsqClp: TSpeedButton;
    bPsqMrc: TSpeedButton;
    bPsqTip: TSpeedButton;
    bPsqCat: TSpeedButton;
    EdNomCat: TdxColorEdit;
    EdNomTip: TdxColorEdit;
    EdNomMrc: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdDscPro: TdxColorEdit;
    PedResQTDMAX: TFloatField;
    grResQTDMAX: TdxDBGridColumn;
    PedResQTAEST: TFloatField;
    grResQTAEST: TdxDBGridColumn;
    PedResCODCLP: TStringField;
    PedResCODGRU: TStringField;
    PedResCODSUB: TStringField;
    PedResCODPRO: TStringField;
    PedResMARCA: TStringField;
    grResMARCA: TdxDBGridColumn;
    PedResSEQARQ: TStringField;
    PedResCODEMP: TIntegerField;
    PedResCODFIL: TIntegerField;
    PedResLANEST: TStringField;
    PedResIDEPRO: TStringField;
    grResIDEPRO: TdxDBGridColumn;
    grResCODGRU: TdxDBGridColumn;
    grResCODSUB: TdxDBGridColumn;
    grResCODPRO: TdxDBGridColumn;
    grResREFPRO: TdxDBGridColumn;
    PedResREFPRO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimeClick(Sender: TObject);
    procedure grResReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqClpClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    sBase,sFiltro,SeqArq : string;
  end;

var
  fmCmpR02: TfmCmpR02;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqGru, PsqSub, PsqPro,
     PsqClp, ManCol, PsqTip, ManGDB, AuxIni, AuxPsq, PsqEs2;

{$R *.DFM}

procedure TfmCmpR02.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmCmpR02.FormCreate(Sender: TObject);
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

procedure TfmCmpR02.bPesquisaClick(Sender: TObject);
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

  sFiltro := ' and PedRes.FlgRes = '+ QuotedStr('Sim') +' and PedRes.AtuEst = '+ QuotedStr('Sim') +' and PedRe2.SldRe2 > '+ QuotedStr('0');

  if Trim( EdCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodEmp = '+ QuotedStr(EdCodEmp.Text);
  if Trim( EdCodClp.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodClp = '+ QuotedStr(EdCodClp.Text);
  if Trim( EdCodGru.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodGru = '+ QuotedStr(EdCodGru.Text);
  if Trim( EdCodSub.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodSub = '+ QuotedStr(EdCodSub.Text);
  if Trim( EdCodPro.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodPro = '+ QuotedStr(EdCodPro.Text);

  if Trim(fLimpaStr(EdDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedRes.DteRes >= '+ QuotedStr(fDateToSQL(EdDteRes1.Date));
  if Trim(fLimpaStr(EdDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedRes.DteRes <= '+ QuotedStr(fDateToSQL(EdDteRes2.Date));

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR02 Where CmpR02.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into CmpR02(SeqArq,CodEmp,CodFil,LanEst,CodClp,CodGru,CodSub,CodPro,QtdReg,QtdPed)'+
               ' Select '+ QuotedStr(SeqArq) + ',' +
               '        PedRe2.CodEit,'+
               '        PedRes.CodFil,'+
               '        PedRes.LanEst,'+
               '        PedRe2.CodClp,'+
               '        PedRe2.CodGru,'+
               '        PedRe2.CodSub,'+
               '        PedRe2.CodPro,'+
               '        Count(*) as QtdReg,'+
               '        Round(Sum(PedRe2.SldRe2),4) as QtdPed'+
               ' From PedRe2,PedRes'+
               ' Where PedRe2.Id_PedRes = PedRes.Id_PedRes'+ sFiltro +
               ' Group by PedRe2.CodEit,PedRes.CodFil,PedRes.LanEst,PedRe2.CodClp,PedRe2.CodGru,PedRe2.CodSub,PedRe2.CodPro';
       ExecSQL;

  end;

  sFiltro := ' Where CmpR02.SeqArq = '+ QuotedStr(SeqArq);

  case rgExibir.Itemindex of
       0: sFiltro := sFiltro + ' and CmpR02.QtdSld >  0';
       1: sFiltro := sFiltro + ' and CmpR02.QtdSld <= 0';
  end;

  case rgMinimo.Itemindex of
       0: sFiltro := sFiltro + ' and CmpR02.QtdSld >= CmpR02.QtdMin';
       1: sFiltro := sFiltro + ' and CmpR02.QtdSld <  CmpR02.QtdMin';
  end;

  case rgMaximo.Itemindex of
       0: sFiltro := sFiltro + ' and CmpR02.QtdSld >= CmpR02.QtdMax';
       1: sFiltro := sFiltro + ' and CmpR02.QtdSld <  CmpR02.QtdMax';
  end;

  case rgStatus.Itemindex of
       0: sFiltro := sFiltro + ' and EstPro.FlbPro = '+ QuotedStr(' ');
       1: sFiltro := sFiltro + ' and EstPro.FlbPro = '+ QuotedStr('*');
  end;

  with PedRes,SQL do begin

       Close;
       Text := ' Select CmpR02.*,'+
               '        EstPro.DscPro,'+
               '        EstPro.IdePro,'+
               '        EstPro.RefPro,'+
               '        TextoOcor(IntStrZeros(EstPro.CodMrc,3),'+ QuotedStr('-') +',EstMrc.NomMrc,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as Marca,'+
               '        CmpR02.CodClp || _UNICODE_FSS '+ QuotedStr('-') +' || CmpR02.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || CmpR02.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || CmpR02.CodPro as CodIte'+
               ' From CmpR02 LEFT JOIN EstPro ON (CmpR02.CodClp = EstPro.CodClp '+
               '                             AND  CmpR02.CodGru = EstPro.CodGru '+
               '                             AND  CmpR02.CodSub = EstPro.CodSub '+
               '                             AND  CmpR02.CodPro = EstPro.CodPro)'+
               '             LEFT JOIN EstMrc ON (EstPro.CodMrc = EstMrc.CodMrc)'+ sFiltro;

       if Trim( EdCodCat.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodCat = '+ QuotedStr(EdCodCat.Text);
       if Trim( EdCodTip.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodTip = '+ QuotedStr(EdCodTip.Text);
       if Trim( EdCodMrc.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodMrc = '+ QuotedStr(EdCodMrc.Text);

       Text := Text + ' Order by CmpR02.CodGru,CmpR02.CodSub,CmpR02.CodPro';

       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR02 Where SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grRes.FullExpand;

  grRes.SetFocus;

end;

procedure TfmCmpR02.FormShow(Sender: TObject);
begin
  inherited;

  EdCodClp.Text := '1';

  EdNomClp.Text := 'ACABADO';

  EdCodEmp.SetFocus;

end;

procedure TfmCmpR02.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmCmpR02.bImprimeClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa: '+ EdCodEmp.Text + ' - ' + EdNomEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria: '+ EdCodCat.Text + ' - ' + EdNomCat.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo: '+ EdCodTip.Text + ' - ' + EdNomTip.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Marca: '+ EdCodMrc.Text + ' - ' + EdNomMrc.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação: '+ EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo: '+ EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo: '+ EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item: '+ EdCodPro.Text + ' - ' + EdDscPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Emitidos no Periodo de: '+ EdDteRes1.Text + ' a ' + EdDteRes2.Text);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmCmpR02.grResReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmCmpR02.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Base para compras.htm', grRes.SaveToHTML);
end;

procedure TfmCmpR02.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Base para compras.xls', grRes.SaveToXLS);
end;

procedure TfmCmpR02.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Base para compras.xml', grRes.SaveToXML);
end;

procedure TfmCmpR02.bPsqEmpClick(Sender: TObject);
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

procedure TfmCmpR02.EdCodEmpExit(Sender: TObject);
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

procedure TfmCmpR02.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmCmpR02.bPsqClpClick(Sender: TObject);
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

procedure TfmCmpR02.EdCodClpExit(Sender: TObject);
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

procedure TfmCmpR02.bPsqGruClick(Sender: TObject);
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

procedure TfmCmpR02.EdCodGruExit(Sender: TObject);
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

procedure TfmCmpR02.bPsqSubClick(Sender: TObject);
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

procedure TfmCmpR02.EdCodSubExit(Sender: TObject);
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

procedure TfmCmpR02.bPsqProClick(Sender: TObject);
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
        EdDscPro.Text := fmAuxIni.DscPro;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodPro.Text ) <> '' then EdDteRes1.SetFocus;

end;

procedure TfmCmpR02.EdCodProExit(Sender: TObject);
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

          EdDscPro.Text := FieldByName('DscPro').AsString;

     end;

     end
  else
     EdDscPro.Text := '';
end;

procedure TfmCmpR02.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmCmpR02.grRes);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

procedure TfmCmpR02.bPsqTipClick(Sender: TObject);
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

procedure TfmCmpR02.EdCodTipExit(Sender: TObject);
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

procedure TfmCmpR02.bPsqCatClick(Sender: TObject);
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

procedure TfmCmpR02.EdCodCatExit(Sender: TObject);
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

procedure TfmCmpR02.bPsqMrcClick(Sender: TObject);
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

procedure TfmCmpR02.EdCodMrcExit(Sender: TObject);
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

procedure TfmCmpR02.EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmCmpR02.EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmCmpR02.EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmCmpR02.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmCmpR02.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmCmpR02.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmCmpR02.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
           EdDscPro.Text := fmAuxIni.DscPro;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodPro.Text ) <> '' then EdDteRes1.SetFocus;

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
           EdDscPro.Text := fmAuxPsq.DscPro;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdCodPro.Text ) <> '' then EdDteRes1.SetFocus;

  end;
end;

procedure TfmCmpR02.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

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
end;

procedure TfmCmpR02.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 115 then begin // F4 - Estoque //

     try

        fmPsqEs2 := TfmPsqEs2.Create(Self);

        fmPsqEs2.sEntr := 'N';

        fmPsqEs2.sCodClp := PedResCodClp.Value;

        if ( Trim(PedResCodGru.Value) <> '' ) or
           ( Trim(PedResCodSub.Value) <> '' ) or
           ( Trim(PedResCodPro.Value) <> '' ) then begin

           with fmPsqEs2.EstPro,SQL do begin

                Close;
                Text := ' Select EstPro.CodClp,'+
                        '        EstPro.CodGru,'+
                        '        EstPro.CodSub,'+
                        '        EstPro.CodPro,'+
                        '        EstPro.DscPro,'+
                        '        EstPro.RefPro,'+
                        '        EstPro.LocPro,'+
                        '        EstPro.CodUne,'+
                        '        EstPro.CodUns,'+
                        '        EstPro.QtePro,'+
                        '        EstPro.QtsPro,'+
                        '        EstPro.EntIpi,'+
                        '        EstPro.SaiIpi,'+
                        '        EstPro.ClfEnt,'+
                        '        EstPro.ClfSai,'+
                        '        EstPro.EntIcm,'+
                        '        EstPro.SaiIcm,'+
                        '        EstPro.SimPro,'+
                        '        EstPro.CodSt1,'+
                        '        EstPro.CodSt2,'+
                        '        EstPro.QtdEmb,'+
                        '        EstPro.ImgPro,'+
                        '        EstPro.FlgPro,'+
                        '        EstPro.CbaPro,'+
                        '        EstPro.WebPro,'+
                        '        EstPro.CodCat,'+
                        '        EstPro.CodTip,'+
                        '        EstPro.CodMrc,'+
                        '        EstPro.NumPro,'+
                        '        EstPro.CodAnt,'+
                        '        EstPro.IdePro'+
                        ' From EstPro'+
                        ' Where EstPro.CodClp = '+ QuotedStr('1') +
                        '   and EstPro.FlbPro = '+ QuotedStr(' ') ;

                if Trim( PedResCodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '+ QuotedStr(PedResCodGru.Value);
                if Trim( PedResCodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '+ QuotedStr(PedResCodSub.Value);
                if Trim( PedResCodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '+ QuotedStr(PedResCodPro.Value);

                Text := Text + ' Order by EstPro.DscPro';

                Open;

           end;
        end;

        fmPsqEs2.ShowModal;

     finally

        FreeAndNil(fmPsqEs2);

     end;
  end;
end;

procedure TfmCmpR02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR02 Where CmpR02.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmCmpR02.FormDestroy(Sender: TObject);
begin
  inherited;
  fmCmpR02 := nil;
end;

end.

