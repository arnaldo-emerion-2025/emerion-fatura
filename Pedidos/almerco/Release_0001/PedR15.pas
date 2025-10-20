unit PedR15;

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

  TfmPedR15 = class(TfmPadrao)
    PedR15: TwwQuery;
    DsR15: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdPsqApeEmp: TdxColorEdit;
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
    grR15: TdxDBGrid;
    bImprimir: TBitBtn;
    Label26: TLabel;
    Label22: TLabel;
    Label3: TLabel;
    Label20: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodGve: TdxColorEdit;
    EdPsqCodCve: TdxColorEdit;
    bPsqCCl: TSpeedButton;
    bPsqGve: TSpeedButton;
    bPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomGve: TdxColorEdit;
    EdPsqNomCve: TdxColorEdit;
    Label7: TLabel;
    EdPsqCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    EdPsqNomCli: TdxColorEdit;
    PedR15DTERES: TDateTimeField;
    PedR15NRONFS: TIntegerField;
    PedR15DTEFAT: TDateTimeField;
    PedR15TOTBRT: TFloatField;
    PedR15TOTLIQ: TFloatField;
    PedR15DSCPER: TFloatField;
    PedR15DSCPRT: TFloatField;
    PedR15DIFDSC: TFloatField;
    PedR15MARPRE: TFloatField;
    PedR15MARPED: TFloatField;
    PedR15LUCROL: TFloatField;
    PedR15LUCROP: TFloatField;
    PedR15TOTNAT: TFloatField;
    PedR15CLIENTE: TStringField;
    PedR15VENDEDOR: TStringField;
    DTERES: TdxDBGridDateColumn;
    ID_PEDRES: TdxDBGridMaskColumn;
    NRONFS: TdxDBGridMaskColumn;
    DTEFAT: TdxDBGridDateColumn;
    TOTBRT: TdxDBGridMaskColumn;
    TOTLIQ: TdxDBGridMaskColumn;
    DSCPER: TdxDBGridMaskColumn;
    DSCPRT: TdxDBGridMaskColumn;
    DIFDSC: TdxDBGridMaskColumn;
    MARPRE: TdxDBGridMaskColumn;
    MARPED: TdxDBGridMaskColumn;
    LUCROL: TdxDBGridMaskColumn;
    LUCROP: TdxDBGridMaskColumn;
    TOTNAT: TdxDBGridMaskColumn;
    CLIENTE: TdxDBGridMaskColumn;
    VENDEDOR: TdxDBGridMaskColumn;
    CSTPRT: TdxDBGridColumn;
    PedR15CSTPRT: TFloatField;
    PedR15TOTPER: TFloatField;
    TOTPER: TdxDBGridColumn;
    PedR15CSTPFI: TFloatField;
    PedR15CSTVME: TFloatField;
    CSTVME: TdxDBGridColumn;
    CSTPFI: TdxDBGridColumn;
    Colunas1: TMenuItem;
    PedR15ID_PEDRES: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grR15ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure bPsqCClClick(Sender: TObject);
    procedure EdPsqCodCveExit(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq : string;
  end;

var
  fmPedR15: TfmPedR15;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, PsqEmp, PsqVen,
     PsqAtd, PsqCli, PsqGve, PsqCve, ManCol;

{$R *.DFM}

procedure TfmPedR15.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR15.FormCreate(Sender: TObject);
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

procedure TfmPedR15.bSelecionarClick(Sender: TObject);
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
  
  sFiltro := ' and PedRes.ModPfa = '+ QuotedStr('Vendas') +' and ( ( PedLib.SitLib = '+ QuotedStr('Faturado') +' )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Devolvido') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Cancelado') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) )';

  sFiltro := sFiltro + ' )';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodCli.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
  if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);
  if Trim( EdPsqCodCve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.CodTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');
  
  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR15 Where SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR15(SeqArq,Id_PedRes,DteRes,NroNfs,DteFat,CodCli,CodVen,TotLiq,TotBrt,CstPrt,CstPfi,CstVme,DscPer,DscPrt,TotNat)'+
               ' Select '+ QuotedStr(SeqArq) + ',' +
               '        PedLib.Id_PedRes,'+
               '        PedRes.DteRes,'+
               '        PedLib.NroNfs,'+
               '        PedLib.DteFat,'+
               '        PedRes.CodCli,'+
               '        PedRes.CodVen,'+
               '        Round(Sum(PedLb2.TotLb2 - PedLb2.TotDsr),2) as TotLiq,'+
               '        Round(Sum((PedLb2.UltQts * ( PedRe2.VluRe2 - PedRe2.VdrRe2 )) - PedLb2.TotDsr),2) as TotBrt,'+
               '        Round(Sum(PedLb2.TotCst + PedLb2.TotCli),4) as CstPrt,'+
               '        Round(Sum(PedLb2.UltQts * PedRe2.VpfCst),4) as CstPfi,'+
               '        Round(Sum(PedLb2.UltQts * PedRe2.VmeCst),4) as CstVme,'+
               '        Round(Sum(PedLb2.UltQts * (( PedRe2.VluRe2 * PedRe2.DscPer )/100)),2) as DscPer,'+
               '        Round(Sum(PedLb2.TotDsc),2) as DscPra,'+
               '        Round(Sum(PedLb2.SldLb2 * ( PedRe2.VlqRe2 - PedRe2.VdrRe2 )),4) as TotNat'+
               ' From PedLb2,PedLib,PedRe2,PedRes,FinVen'+
               ' Where PedLb2.Id_PedLib = PedLib.Id_PedLib'+
               '   and PedLb2.Id_PedRe2 = PedRe2.Id_PedRe2'+
               '   and PedRe2.Id_PedRes = PedRes.Id_PedRes and PedRes.CodVen = FinVen.CodVen'+ sFiltro +
               ' Group by PedLib.Id_PedRes,PedRes.DteRes,PedLib.NroNfs,PedLib.DteFat,PedRes.CodCli,PedRes.CodVen';
       ExecSQL;

  end;

  with PedR15,SQL do begin

       Close;
       Text := ' Select Id_PedRes,'+
               '        DteRes,'+
               '        NroNfs,'+
               '        DteFat,'+
               '        TotBrt,'+
               '        TotLiq,'+
               '        DscPer,'+
               '        DscPrt,'+
               '        DifDsc,'+
               '        MarPre,'+
               '        MarPed,'+
               '        LucroL,'+
               '        LucroP,'+
               '        TotNat,'+
               '        CstPrt,'+
               '        CstPfi,'+
               '        CstVme,'+
               '        TotPer,'+
               '        TextoOcor(IntStrZeros(CodCli,5),'+ QuotedStr('-') +',FinCli.NomCli,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as Cliente,'+
               '        TextoOcor(IntStrZeros(CodVen,3),'+ QuotedStr('-') +',FinVen.ApeVen,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as Vendedor'+
               ' From PedR15 LEFT JOIN FinVen ON (PedR15.CodVen = FinVen.CodVen)'+
               '             LEFT JOIN FinCli ON (PedR15.CodCli = FinCli.CodCli)'+
               ' Where PedR15.SeqArq = '+ QuotedStr(SeqArq) +
               ' Order by PedR15.Id_PedRes';
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR15 Where PedR15.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grR15.FullExpand;

  grR15.SetFocus;

end;

procedure TfmPedR15.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR15.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR15.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR15.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa: '+ EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente: '+ EdPsqCodCli.Text + ' - ' + EdPsqNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo de vendedores: '+ EdPsqCodGve.Text + ' - ' + EdPsqNomGve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria de vendedores: '+ EdPsqCodCve.Text + ' - ' + EdPsqNomCve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor: '+ EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no periodo de: '+ EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR15.grR15ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR15.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Analise de pedidos realizados no periodo.htm', grR15.SaveToHTML);
end;

procedure TfmPedR15.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Analise de pedidos realizados no periodo.xls', grR15.SaveToXLS);
end;

procedure TfmPedR15.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Analise de pedidos realizados no periodo.xml', grR15.SaveToXML);
end;

procedure TfmPedR15.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR15.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmPedR15.EdPsqCodEmpExit(Sender: TObject);
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
          Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('ApeEmp').AsString ) <> '' then
             EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
          else
             begin

             EdPsqApeEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmPedR15.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqVen := TfmPsqVen.Create(Self);

     fmPsqVen.ShowModal;

     if fmPsqVen.CodVen > 0 then begin

        EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);
        EdPsqNomVen.Text := fmPsqVen.NomVen;

     end;

  finally

     FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmPedR15.EdPsqCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
          Open;

          EdPsqNomVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqNomVen.Text := '';
end;

procedure TfmPedR15.bPsqGveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGve := TfmPsqGve.Create(Self);

     fmPsqGve.ShowModal;

     if fmPsqGve.CodGve > 0 then begin

        EdPsqCodGve.Text := IntToStr(fmPsqGve.CodGve);
        EdPsqNomGve.Text := fmPsqGve.NomGve;

     end;

  finally

     FreeAndNil(fmPsqGve);

  end;
end;

procedure TfmPedR15.EdPsqCodGveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinGve.NomGve From FinGve Where FinGve.CodGve = '+ QuotedStr(EdPsqCodGve.Text);
          Open;

          EdPsqNomGve.Text := FieldByName('NomGve').AsString;

     end;

     end
  else
     EdPsqNomGve.Text := '';
end;

procedure TfmPedR15.bPsqCClClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCve := TfmPsqCve.Create(Self);

     fmPsqCve.ShowModal;

     if fmPsqCve.CodCve > 0 then begin

        EdPsqCodCve.Text := IntToStr(fmPsqCve.CodCve);
        EdPsqNomCve.Text := fmPsqCve.NomCve;

     end;

  finally

     FreeAndNil(fmPsqCve);

  end;
end;

procedure TfmPedR15.EdPsqCodCveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinCve.NomCve From FinCve Where FinCve.CodCve = '+ QuotedStr(EdPsqCodCve.Text);
          Open;

          EdPsqNomCve.Text := FieldByName('NomCve').AsString;

     end;

     end
  else
     EdPsqNomCve.Text := '';
end;

procedure TfmPedR15.bPsqCliClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCli := TfmPsqCli.Create(Self);

     fmPsqCli.ShowModal;

     if fmPsqCli.CodCli > 0 then begin

        EdPsqNomCli.Text := fmPsqCli.NomCli;
        EdPsqCodCli.Text := IntToStr(fmPsqCli.CodCli);

     end;

  finally

     FreeAndNil(fmPsqCli);

  end;
end;

procedure TfmPedR15.EdPsqCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinCli.NomCli From FinCli Where FinCli.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
          Open;

          EdPsqNomCli.Text := FieldByName('NomCli').AsString;

     end;

     end
  else
     EdPsqNomCli.Text := '';
end;

procedure TfmPedR15.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR15.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR15 := nil;
end;

procedure TfmPedR15.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmPedR15.grR15);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

end.

