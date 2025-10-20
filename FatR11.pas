unit FatR11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, dxColorEdit,
  dxColorDateEdit, dxColorPickEdit;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmFatR11 = class(TfmPadrao)
    FatCre: TwwQuery;
    DsCre: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteCr1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteCr2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqCli: TSpeedButton;
    BbPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    grCre: TdxDBGrid;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    ImageList1: TImageList;
    SaveDialog: TSaveDialog;
    bImprimir: TBitBtn;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    FatCreCODEMP: TIntegerField;
    FatCreDTERES: TDateTimeField;
    FatCreNUMRES: TIntegerField;
    FatCreDTEDEV: TDateTimeField;
    FatCreHREDEV: TStringField;
    FatCreNOMCLI: TStringField;
    FatCreNOMVEN: TStringField;
    FatCreLOGUSU: TStringField;
    FatCreTOTDEV: TFloatField;
    FatCreBASCOM: TFloatField;
    FatCreTOTCOM: TFloatField;
    FatCreOBSDEV: TMemoField;
    FatCreNUMNFS: TIntegerField;
    FatCreCODUSU: TIntegerField;
    grCreDTERES: TdxDBGridDateColumn;
    grCreNUMRES: TdxDBGridMaskColumn;
    grCreDTEDEV: TdxDBGridDateColumn;
    grCreNOMCLI: TdxDBGridMaskColumn;
    grCreNOMVEN: TdxDBGridMaskColumn;
    grCreLOGUSU: TdxDBGridMaskColumn;
    grCreTOTDEV: TdxDBGridMaskColumn;
    grCreTOTCOM: TdxDBGridMaskColumn;
    grCreOBSDEV: TdxDBGridMemoColumn;
    grCreNUMNFS: TdxDBGridMaskColumn;
    Label1: TLabel;
    Label3: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    FatCreTOTIPI: TFloatField;
    grCreTOTIPI: TdxDBGridColumn;
    rgTipo: TRadioGroup;
    Label4: TLabel;
    Label8: TLabel;
    EdPsqDteFat1: TdxColorDateEdit;
    Label11: TLabel;
    EdPsqDteFat2: TdxColorDateEdit;
    FatCreNFSCLI: TIntegerField;
    FatCreNFSDEV: TIntegerField;
    grCreNFSCLI: TdxDBGridMaskColumn;
    grCreNFSDEV: TdxDBGridMaskColumn;
    procedure FormShow(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bImprimirClick(Sender: TObject);
    procedure grCreReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq: string;
  end;

var
  Linha: integer;
  fmFatR11: TfmFatR11;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqCli, PsqVen,
  ManPri;

{$R *.DFM}

procedure TfmFatR11.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin

    DefaultExt := ADefaultExt;

    Filter := AFilter;

    FileName := AFileName;

    if Execute then
      AMethod(FileName, True);

  end;
end;

procedure TfmFatR11.bSelecionarClick(Sender: TObject);
var
  sFiltro: string;
begin

  ActiveControl := nil;

  if GFlgAce <> 'Sim' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FLGDEL,SEQIMP from GerPar';
      Open;

      if Trim(FieldbyName('FLGDEL').AsString) = '*' then
      begin

        GFlgAce := 'Sim';

        if FieldbyName('SEQIMP').AsInteger > 0 then
          GEmpLog := FieldbyName('SEQIMP').AsInteger;

      end
      else
      begin

        GEmpLog := 0;
        GFlgAce := 'Nao';

      end;
    end;
  end;

  sFiltro := ' Where FatDev.SitDev = ''' + 'Devolvido' + ''' and FatDev.FlgDif = ''' + 'Nao' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.CodEmp = ''' + EdPsqCodEmp.Text + '''';
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodCli = ''' + EdPsqCodCli.Text + '''';
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodVen = ''' + EdPsqCodVen.Text + '''';
  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.ModPfa = ''' + EdPsqModPfa.Text + '''';

  if Trim(fLimpaStr(EdPsqDteCr1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdPsqDteCr1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteCr2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdPsqDteCr2.Date) + '''';

  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat >= ''' + fDateToSQL(EdPsqDteFat1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat <= ''' + fDateToSQL(EdPsqDteFat2.Date) + '''';

  case rgTipo.Itemindex of
    0: sFiltro := sFiltro + ' and FatDev.FlgTot = ' + QuotedStr('Nao');
    1: sFiltro := sFiltro + ' and FatDev.FlgTot = ' + QuotedStr('Sim');
  end;

  if GFlgAce = 'Sim' then
    sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = ' + QuotedStr('Sim');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatR11 Where SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR11(SeqArq,CodEmp,DteRes,NumRes,SeqLib,NumNfs,DteDev,HreDev,CodCli,ApeCli,CodVen,ApeVen,TotDev,TotIpi,BasCom,TotCom,ObsDev,CodUsu,NfsCli,NfsDev,LogUsu)'
      +
      ' Select ''' + SeqArq + ''',' +
      ' FatDev.CodEmp,' +
      ' PedLib.DteFat,' +
      ' FatDev.NumRes,' +
      ' FatDev.SeqLib,' +
      ' FatDev.NumNfs,' +
      ' FatDev.DteDev,' +
      ' FatDev.HreDev,' +
      ' PedLib.CodCli,' +
      ' FinCli.ApeCli,' +
      ' PedLib.CodVen,' +
      ' FinVen.ApeVen,' +
      ' FatDev.TotDev - FatDev.TotDsr,' +
      ' FatDev.TotIpi,' +
      ' FatDev.BasCom,' +
      ' FatDev.TotCom,' +
      ' FatDev.ObsMdv,' +
      ' FatDev.CodUsu,' +
      ' FatDev.NroNfs,' +
      ' FatDev.NfsCli,' +
      ' GerUsu.LogUsu' +
      ' From FatDev LEFT JOIN PedLib ON (FatDev.CodEmp = PedLib.CodEmp ' +
      ' AND  FatDev.DteRes = PedLib.DteRes ' +
      ' AND  FatDev.NumRes = PedLib.NumRes ' +
      ' AND  FatDev.SeqLib = PedLib.SeqLib)' +
      ' LEFT JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli)' +
      ' LEFT JOIN FinVen ON (PedLib.CodVen = FinVen.CodVen)' +
      ' LEFT JOIN GerUsu ON (FatDev.CodUsu = GerUsu.CodUsu)' + sFiltro;
    ExecSQL;

  end;

  sFiltro := ' Where FatDep.SitDep = ''' + 'Concluido' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDep.CodEmp = ''' + EdPsqCodEmp.Text + '''';
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodCli = ''' + EdPsqCodCli.Text + '''';
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodVen = ''' + EdPsqCodVen.Text + '''';
  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.ModPfa = ''' + EdPsqModPfa.Text + '''';

  if Trim(fLimpaStr(EdPsqDteCr1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDep.DteDep >= ''' + fDateToSQL(EdPsqDteCr1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteCr2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDep.DteDep <= ''' + fDateToSQL(EdPsqDteCr2.Date) + '''';

  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat >= ''' + fDateToSQL(EdPsqDteFat1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat <= ''' + fDateToSQL(EdPsqDteFat2.Date) + '''';

  case rgTipo.Itemindex of
    0: sFiltro := sFiltro + ' and FatDep.FlgTot = ' + QuotedStr('Nao');
    1: sFiltro := sFiltro + ' and FatDep.FlgTot = ' + QuotedStr('Sim');
  end;

  if GFlgAce = 'Sim' then
    sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = ' + QuotedStr('Sim');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR11(SeqArq,CodEmp,DteRes,NumRes,SeqLib,DteDev,HreDev,CodCli,ApeCli,CodVen,ApeVen,TotDev,BasCom,TotCom,ObsDev,CodUsu,LogUsu,NfsCli,NfsDev,TotIpi)'
      +
      ' Select ''' + SeqArq + ''',' +
      ' FatDep.CodEmp,' +
      ' PedLib.DteFat,' +
      ' FatDep.NumRes,' +
      ' FatDep.SeqLib,' +
      ' FatDep.DteDep,' +
      ' FatDep.HreDep,' +
      ' PedLib.CodCli,' +
      ' FinCli.ApeCli,' +
      ' PedLib.CodVen,' +
      ' FinVen.ApeVen,' +
      ' FatDep.TotDep,' +
      ' FatDep.BasCom,' +
      ' FatDep.TotCom,' +
      ' FatDep.ObsDep,' +
      ' FatDep.CodUsu,' +
      ' 0,0,' +
      ' GerUsu.LogUsu,''' + '0' + '''' +
      ' From FatDep LEFT JOIN PedLib ON (FatDep.CodEmp = PedLib.CodEmp ' +
      ' AND  FatDep.DteRes = PedLib.DteRes ' +
      ' AND  FatDep.NumRes = PedLib.NumRes ' +
      ' AND  FatDep.SeqLib = PedLib.SeqLib)' +
      ' LEFT JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli)' +
      ' LEFT JOIN FinVen ON (PedLib.CodVen = FinVen.CodVen)' +
      ' LEFT JOIN GerUsu ON (FatDep.CodUsu = GerUsu.CodUsu)' + sFiltro;
    ExecSQL;

  end;

  with FatCre, SQL do
  begin

    Close;
    Text := ' Select CodEmp,DteRes,NumRes,DteDev,HreDev,' +
      ' TextoOcor(IntStrZeros(CodCli,05),''' + '-' + ''',ApeCli,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as NomCli,' +
      ' TextoOcor(IntStrZeros(CodVen,05),''' + '-' + ''',ApeVen,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as NomVen,' +
      ' TextoOcor(IntStrZeros(CodUsu,03),''' + '-' + ''',LogUsu,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as LogUsu,' +
      ' TotIpi,TotDev,BasCom,TotCom,ObsDev,NumNfs,NfsCli,NfsDev,CodUsu ' +
      ' From FatR11 ' +
      ' Where SeqArq = ''' + SeqArq + '''';
    Open;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatR11 Where SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  grCre.FullExpand;

  grCre.SetFocus;

end;

procedure TfmFatR11.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim(EdPsqCodEmp.Text) <> '' then
  begin

    if GFlgAce <> 'Sim' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select FLGDEL,SEQIMP from GerPar';
        Open;

        if Trim(FieldbyName('FLGDEL').AsString) = '*' then
        begin

          GFlgAce := 'Sim';

          if FieldbyName('SEQIMP').AsInteger > 0 then
            GEmpLog := FieldbyName('SEQIMP').AsInteger;

        end
        else
        begin

          GEmpLog := 0;
          GFlgAce := 'Nao';

        end;
      end;
    end;

    with quSql, SQL do
    begin

      Close;
      Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('ApeEmp').AsString) <> '' then
        EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
      else
      begin

        EdPsqApeEmp.Text := '';

        fmsgErro('Empresa Informada não Encontrada.', EdPsqCodEmp);

      end;
    end;

  end
  else
    EdPsqApeEmp.Text := '';
end;

procedure TfmFatR11.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select NomCli From FinCli Where CodCli = ''' + EdPsqCodCli.Text + '''';
      Open;

      EdPsqNomCli.Text := quSql.FieldByName('NomCli').AsString;
    end;

  end
  else
    EdPsqNomCli.Text := '';
end;

procedure TfmFatR11.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
      EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmFatR11.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select NomVen From FinVen Where CodVen = ''' + EdPsqCodVen.Text + '''';
      Open;

      EdPsqNomVen.Text := quSql.FieldByName('NomVen').AsString;
    end;

  end
  else
    EdPsqNomVen.Text := '';
end;

procedure TfmFatR11.BbPsqCliClick(Sender: TObject);
begin

  try

    fmPsqCli := TfmPsqCli.Create(Self);

    fmPsqCli.ShowModal;

    if fmPsqCli.CodCli > 0 then
    begin

      EdPsqCodCli.Text := IntToStr(fmPsqCli.CodCli);
      EdPsqNomCli.Text := fmPsqCli.NomCli;

    end;

  finally

    FreeAndNil(fmPsqCli);

  end;
end;

procedure TfmFatR11.BbPsqVenClick(Sender: TObject);
begin

  try

    fmPsqVen := TfmPsqVen.Create(Self);

    fmPsqVen.ShowModal;

    if fmPsqVen.CodVen > 0 then
    begin

      EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);
      EdPsqNomVen.Text := fmPsqVen.NomVen;

    end;

  finally

    FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmFatR11.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqModPfa.SetFocus;
end;

procedure TfmFatR11.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmFatR11.FormDestroy(Sender: TObject);
begin
  inherited;
  fmFatR11 := nil;
end;

procedure TfmFatR11.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmFatR11.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    Close;
end;

procedure TfmFatR11.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GApeEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRazEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GEndEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRefEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : ' + EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : ' + EdPsqCodCli.Text + ' - ' + EdPsqNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : ' + EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Realizadas no Periodo de : ' + EdPsqDteCr1.Text + ' a ' + EdPsqDteCr2.Text);

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmFatR11.grCreReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmFatR11.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Devoluções de Pedidos Realizadas no Periodo.htm', grCre.SaveToHTML);
end;

procedure TfmFatR11.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Devoluções de Pedidos Realizadas no Periodo.xls', grCre.SaveToXLS);
end;

procedure TfmFatR11.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Devoluções de Pedidos Realizadas no Periodo.xml', grCre.SaveToXML);
end;

procedure TfmFatR11.FormCreate(Sender: TObject);
begin
  inherited;

  SeqArq := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
    copy(TimeToStr(Time), 1, 2) +
    copy(TimeToStr(Time), 4, 2) +
    copy(TimeToStr(Time), 7, 2) +
    FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
    FNumZeros(Trim(IntToStr(Random(50000))), 5);

end;

procedure TfmFatR11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

end.
