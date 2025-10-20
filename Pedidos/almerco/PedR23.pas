unit PedR23;

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

  TfmPedR23 = class(TfmPadrao)
    PedR23: TwwQuery;
    DsR23: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdDteres2: TdxColorDateEdit;
    EdCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    EdApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
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
    grR23: TdxDBGrid;
    bImprimir: TBitBtn;
    Label26: TLabel;
    Label22: TLabel;
    EdCodVen: TdxColorEdit;
    bPsqVen: TSpeedButton;
    EdNomVen: TdxColorEdit;
    Label7: TLabel;
    EdCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    EdNomCli: TdxColorEdit;
    grR23DSCPRO: TdxDBGridMaskColumn;
    grR23CODITE: TdxDBGridMaskColumn;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label4: TLabel;
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
    EdNomPro: TdxColorEdit;
    Label20: TLabel;
    EdCodGve: TdxColorEdit;
    bPsqGve: TSpeedButton;
    EdNomGve: TdxColorEdit;
    PedR23QTDNAT: TFloatField;
    PedR23TOTNAT: TFloatField;
    PedR23DSCPRO: TStringField;
    grR23QTDNAT: TdxDBGridColumn;
    grR23TOTNAT: TdxDBGridColumn;
    Colunas1: TMenuItem;
    PedR23CODITE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grR23ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdCodVenExit(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure bPsqClpClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure EdCodGveExit(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq,sFiltro,sOrdem : string;
  end;

var
  fmPedR23: TfmPedR23;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, PsqEmp, PsqVen,
     PsqAtd, PsqGCl, PsqCCl, PsqMcr, PsqMrg, PsqSet, PsqMst, PsqCli, AuxIni,
     PsqGve, ManCol;

{$R *.DFM}

procedure TfmPedR23.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR23.FormCreate(Sender: TObject);
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

procedure TfmPedR23.bSelecionarClick(Sender: TObject);
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
  
  sOrdem  := ' Order by PedLib.Id_PedRes,PedRe2.CodGru,PedRe2.CodSub,PedRe2.CodPro';

  sFiltro := ' and PedRes.ModPfa = '+ QuotedStr('Vendas') +' and ( ( PedLib.SitLib = '+ QuotedStr('Faturado') +' )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Devolvido') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Cancelado') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) )';

  sFiltro := sFiltro + ' )';

  if Trim(fLimpaStr(EdDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdDteRes1.Date));
  if Trim(fLimpaStr(EdDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdDteRes2.Date));

  if Trim( EdCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr(EdCodGve.Text);
  if Trim( EdCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodVen = '+ QuotedStr(EdCodVen.Text);
  if Trim( EdCodCli.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodCli = '+ QuotedStr(EdCodCli.Text);
  if Trim( EdCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodEmp = '+ QuotedStr(EdCodEmp.Text);

  if Trim( EdCodClp.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodClp = '+ QuotedStr(EdCodClp.Text);
  if Trim( EdCodGru.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodGru = '+ QuotedStr(EdCodGru.Text);
  if Trim( EdCodSub.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodSub = '+ QuotedStr(EdCodSub.Text);
  if Trim( EdCodPro.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodPro = '+ QuotedStr(EdCodPro.Text);

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.CodTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');
  
  sFiltro := sFiltro + ' and PedLb2.SldLb2 > '+ QuotedStr('0');

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR23 Where PedR23.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR23'+
               ' Select '+ QuotedStr(SeqArq) + ',' +
               '        PedRe2.CodClp,'+
               '        PedRe2.CodGru,'+
               '        PedRe2.CodSub,'+
               '        PedRe2.CodPro,'+
               '        Sum(PedLb2.SldLb2),'+
               '        Round(Sum(PedLb2.SldLb2 * ( PedRe2.VlqRe2 - PedRe2.VdrRe2 )),2)'+
               ' From PedLb2,PedLib,PedRe2,PedRes,FinCli,FinVen'+
               ' Where PedLb2.Id_PedLib = PedLib.Id_PedLib'+
               '   and PedLb2.Id_PedRe2 = PedRe2.Id_PedRe2'+
               '   and PedRe2.Id_PedRes = PedRes.Id_PedRes'+
               '   and PedRes.CodCli = FinCli.CodCli'+
               '   and PedRes.CodVen = FinVen.CodVen'+ sFiltro +
               ' Group by PedRe2.CodClp,PedRe2.CodGru,PedRe2.CodSub,PedRe2.CodPro';
       ExecSQL;

  end;

  with PedR23,SQL do begin

       Close;
       Text := ' Select PedR23.QtdNat,'+
               '        PedR23.TotNat,'+
               '        EstPro.DscPro,'+
               '        PedR23.CodClp || _UNICODE_FSS '+ QuotedStr('-') +' || PedR23.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || PedR23.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || PedR23.CodPro as CodIte'+
               ' From PedR23,EstPro'+
               ' Where PedR23.CodClp = EstPro.CodClp'+
               '   and PedR23.CodGru = EstPro.CodGru'+
               '   and PedR23.CodSub = EstPro.CodSub'+
               '   and PedR23.CodPro = EstPro.CodPro'+
               '   and PedR23.SeqArq = '+ QuotedStr(SeqArq);

       if Trim( EdCodCat.Text ) <> '' then Text := Text + ' and EstPro.CodCat = '+ QuotedStr(EdCodCat.Text);
       if Trim( EdCodTip.Text ) <> '' then Text := Text + ' and EstPro.CodTip = '+ QuotedStr(EdCodTip.Text);
       if Trim( EdCodMrc.Text ) <> '' then Text := Text + ' and EstPro.CodMrc = '+ QuotedStr(EdCodMrc.Text);

       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR23 Where PedR23.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grR23.FullExpand;

  grR23.SetFocus;

end;

procedure TfmPedR23.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR23.FormShow(Sender: TObject);
begin
  inherited;
  EdCodEmp.SetFocus;
end;

procedure TfmPedR23.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR23.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdCodEmp.Text + ' - ' + EdApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : '+ EdCodCat.Text + ' - ' + EdNomCat.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo : '+ EdCodTip.Text + ' - ' + EdNomTip.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Marca : '+ EdCodMrc.Text + ' - ' + EdNomMrc.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação : '+ EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo : '+ EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : '+ EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : '+ EdCodCli.Text + ' - ' + EdNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo de Vendedores : '+ EdCodGve.Text + ' - ' + EdNomGve.Text);  
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : '+ EdCodVen.Text + ' - ' + EdNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no Periodo de : '+ EdDteRes1.Text + ' a ' + EdDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR23.grR23ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR23.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Curva ABC de itens não atendidos.htm', grR23.SaveToHTML);
end;

procedure TfmPedR23.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Curva ABC de itens não atendidos.xls', grR23.SaveToXLS);
end;

procedure TfmPedR23.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Curva ABC de itens não atendidos.xml', grR23.SaveToXML);
end;

procedure TfmPedR23.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR23.bPsqEmpClick(Sender: TObject);
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
end;

procedure TfmPedR23.EdCodEmpExit(Sender: TObject);
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

procedure TfmPedR23.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqVen := TfmPsqVen.Create(Self);

     fmPsqVen.ShowModal;

     if fmPsqVen.CodVen > 0 then begin

        EdCodVen.Text := IntToStr(fmPsqVen.CodVen);
        EdNomVen.Text := fmPsqVen.NomVen;

     end;

  finally

     FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmPedR23.EdCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdCodVen.Text);
          Open;

          EdNomVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdNomVen.Text := '';
end;

procedure TfmPedR23.bPsqCliClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCli := TfmPsqCli.Create(Self);

     fmPsqCli.ShowModal;

     if fmPsqCli.CodCli > 0 then begin

        EdNomCli.Text := fmPsqCli.NomCli;
        EdCodCli.Text := IntToStr(fmPsqCli.CodCli);

     end;

  finally   

     FreeAndNil(fmPsqCli);

  end;
end;

procedure TfmPedR23.EdCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinCli.NomCli From FinCli Where FinCli.CodCli = '+ QuotedStr(EdCodCli.Text);
          Open;

          EdNomCli.Text := FieldByName('NomCli').AsString;

     end;

     end
  else
     EdNomCli.Text := '';
end;

procedure TfmPedR23.EdCodCatExit(Sender: TObject);
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

procedure TfmPedR23.bPsqCatClick(Sender: TObject);
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

procedure TfmPedR23.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodTip.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstTip.NomTip From EstTip Where EstTip.CodTip = '+ QuotedStr(EdCodTip.Text);
          Open;

          EdNomTip.Text := FieldByName('NomTip').AsString;

     end;

     end
  else
     EdNomTip.Text := '';
end;

procedure TfmPedR23.bPsqTipClick(Sender: TObject);
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

procedure TfmPedR23.EdCodMrcExit(Sender: TObject);
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

procedure TfmPedR23.bPsqMrcClick(Sender: TObject);
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

procedure TfmPedR23.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '+ QuotedStr(EdCodClp.Text);
          Open;

          EdNomClp.Text := FieldByName('NomClp').AsString;

     end;

     end
  else
     EdNomClp.Text := '';
end;

procedure TfmPedR23.bPsqClpClick(Sender: TObject);
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

procedure TfmPedR23.EdCodGruExit(Sender: TObject);
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

procedure TfmPedR23.bPsqGruClick(Sender: TObject);
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

procedure TfmPedR23.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodSub.Text ) <> '' then begin

     EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstSub.NomSub'+
                  ' From EstSub'+
                  ' Where EstSub.CodGru = '+ QuotedStr(EdCodGru.Text)+
                  '   and EstSub.CodSub = '+ QuotedStr(EdCodSub.Text);
          Open;

          EdNomSub.Text := FieldByName('NomSub').AsString;

     end;

     end
  else
     EdNomSub.Text := '';
end;

procedure TfmPedR23.bPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;
     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;
     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

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

procedure TfmPedR23.EdCodProExit(Sender: TObject);
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

          EdNomPro.Text := FieldByName('DscPro').AsString;

     end;

     end
  else
     EdNomPro.Text := '';
end;

procedure TfmPedR23.bPsqProClick(Sender: TObject);
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
  
  EdCodPro.SetFocus;
  
end;

procedure TfmPedR23.EdCodGveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinGve.NomGve From FinGve Where FinGve.CodGve = '+ QuotedStr(EdCodGve.Text);
          Open;

          EdNomGve.Text := FieldByName('NomGve').AsString;

     end;

     end
  else
     EdNomGve.Text := '';
end;

procedure TfmPedR23.bPsqGveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGve := TfmPsqGve.Create(Self);

     fmPsqGve.ShowModal;

     if fmPsqGve.CodGve > 0 then begin

        EdCodGve.Text := IntToStr(fmPsqGve.CodGve);
        EdNomGve.Text := fmPsqGve.NomGve;

     end;

  finally   

     FreeAndNil(fmPsqGve);

  end;
end;

procedure TfmPedR23.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR23.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR23 := nil;
end;

procedure TfmPedR23.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmPedR23.grR23);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

end.

