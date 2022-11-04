unit FatR10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, ppDB, ppDBPipe, ppBands,
  ppClass, ppCtrls, ppStrtch, ppMemo, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, dxColorPickEdit, dxColorEdit, dxColorDateEdit, clipbrd;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmFatR10 = class(TfmPadrao)
    FatR10: TwwQuery;
    DsR10: TwwDataSource;
    Label28: TLabel;
    EdPsqDteFat1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteFat2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqCli: TSpeedButton;
    bPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    bImprimir: TBitBtn;
    Label4: TLabel;
    Label9: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    FatR10SEQARQ: TStringField;
    FatR10CODEMP: TIntegerField;
    FatR10DTERES: TDateTimeField;
    FatR10NUMRES: TIntegerField;
    FatR10SEQLIB: TIntegerField;
    FatR10NRONFS: TIntegerField;
    FatR10NUMCRE: TFloatField;
    FatR10DTEFAT: TDateTimeField;
    FatR10CODCLI: TIntegerField;
    FatR10APECLI: TStringField;
    FatR10CODVEN: TIntegerField;
    FatR10APEVEN: TStringField;
    FatR10TOTGER: TFloatField;
    FatR10VENDEDOR: TStringField;
    FatR10CLIENTE: TStringField;
    p1Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel22: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    p1Filtro1: TppMemo;
    p1Filtro2: TppMemo;
    ppDetailBand1: TppDetailBand;
    ppNumCre: TppDBText;
    ppDteFat: TppDBText;
    ppTotCst: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppTotVen: TppDBCalc;
    ppLabel10: TppLabel;
    p1Tot9981: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    p1Tot9991: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    dbReport: TppDBPipeline;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText1: TppDBText;
    ppCliente: TppDBText;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBCalc1: TppDBCalc;
    p1Tot9992: TppLabel;
    p1Tot9982: TppLabel;
    ppLabel13: TppLabel;
    p1TotNfs1: TppLabel;
    ppLabel17: TppLabel;
    p1TotNfs2: TppLabel;
    p2Report: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel19: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    p2Filtro1: TppMemo;
    p2Filtro2: TppMemo;
    ppDetailBand2: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppDBCalc2: TppDBCalc;
    p2Tot9992: TppLabel;
    p2Tot9982: TppLabel;
    ppLabel26: TppLabel;
    p2TotNfs2: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    p2DteFat: TppDBText;
    ppLabel33: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    p2Tot9981: TppLabel;
    p2Tot9991: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel39: TppLabel;
    p2TotNfs1: TppLabel;
    ppDBText3: TppDBText;
    ppLabel30: TppLabel;
    rgOrdem: TRadioGroup;
    ppFooterBand1: TppFooterBand;
    ppApeEmp1: TppLabel;
    ppFooterBand2: TppFooterBand;
    ppApeEmp2: TppLabel;
    ckIgnorarCanceladas: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure grR10ReloadGroupList(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppHeaderBand2BeforePrint(Sender: TObject);
    procedure p1ReportBeforePrint(Sender: TObject);
    procedure ppDetailBand1AfterPrint(Sender: TObject);
    procedure ppGroupFooterBand1AfterPrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand2BeforePrint(Sender: TObject);
    procedure ppSummaryBand1AfterPrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ppFooterBand1BeforePrint(Sender: TObject);
    procedure ppFooterBand2BeforePrint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    SeqArq: string;
  end;

var
  pTotNfs: real;
  pTot999: real;
  pTot998: real;
  gTotNfs: real;
  gTot999: real;
  gTot998: real;
  fmFatR10: TfmFatR10;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, PsqPfa,
  AuxPsq, ManGDB, ManPri, FPreview;

{$R *.DFM}

procedure TfmFatR10.FormCreate(Sender: TObject);
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

procedure TfmFatR10.bbPesquisaClick(Sender: TObject);
var
  sFiltro, sOrdem: string;
begin

  ActiveControl := nil;

      if (debughook > 0) then
        clipboard.AsText := '';

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

  case rgOrdem.Itemindex of
    0: sOrdem := ' Order by CodVen,NumCre';
    1: sOrdem := ' Order by DteFat,NumCre';
  end;

  sFiltro := ' Where PedLib.IntFin = ' + QuotedStr('Sim') + ' and ( ( PedLib.SitLib = ' + QuotedStr('Faturado') + ' )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = ' + QuotedStr('Devolvido') + ' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )';

  if(ckIgnorarCanceladas.Checked) then
     sFiltro := sFiltro + ' or ( PedLib.SitLib = ' + QuotedStr('Cancelado') + ' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) )';

  sFiltro := sFiltro + ' )';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FinCre.CodCli = ' + QuotedStr(EdPsqCodCli.Text);
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and FinCre.CodVen = ' + QuotedStr(EdPsqCodVen.Text);
  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.ModPfa = ' + QuotedStr(EdPsqModPfa.Text);

  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat >= ' + QuotedStr(fDateToSQL(EdPsqDteFat1.Date));
  if Trim(fLimpaStr(EdPsqDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat <= ' + QuotedStr(fDateToSQL(EdPsqDteFat2.Date));

  if GFlgAce = 'Sim' then
  begin

    sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = ' + QuotedStr('Sim');

    if GEmpLog > 0 then
      sFiltro := sFiltro + ' and FinCre.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
    else
      sFiltro := sFiltro + ' and GerEmp.CodFil > 0';

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatR10 Where SeqArq = ' + QuotedStr(SeqArq);
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR10(SeqArq,CodEmp,DteRes,NumRes,SeqLib,NroNfs,NumCre,DteFat,CodCli,ApeCli,CodVen,ApeVen,TotGer)' +
      ' Select ' + QuotedStr(SeqArq) + ',' +
      '        FinCre.EmpFat,' +
      '        FinCre.DteFat,' +
      '        FinCre.ResFat,' +
      '        FinCre.LibFat,' +
      '        FinCre.NroNfs,' +
      '        FinCre.NumCre,' +
      '        FinCre.DteCre,' +
      '        FinCre.CodCli,' +
      '        FinCli.ApeCli,' +
      '        FinCre.CodVen,' +
      '        FinVen.ApeVen,' +
      '        FinCre.TotCre ' +
      ' From FinCre LEFT JOIN PedLib ON (FinCre.EmpFat = PedLib.CodEmp ' +
      '                             AND  FinCre.DteFat = PedLib.DteRes ' +
      '                             AND  FinCre.ResFat = PedLib.NumRes ' +
      '                             AND  FinCre.LibFat = PedLib.SeqLib)' +
      '             LEFT JOIN FinCli ON (FinCre.CodCli = FinCli.CodCli)' +
      '             LEFT JOIN FinVen ON (FinCre.CodVen = FinVen.CodVen)' +
      '             LEFT JOIN GerEmp ON (FinCre.CodEmp = GerEmp.CodEmp)' + sFiltro;
    ExecSQL;

    if (debughook > 0) then
        clipboard.AsText := clipboard.AsText+Text+_BR+_BR+_BR;
  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR10(SeqArq,CodEmp,DteRes,NumRes,SeqLib,NroNfs,NumCre,DteFat,CodCli,ApeCli,CodVen,ApeVen,TotGer)' +
      ' Select ' + QuotedStr(SeqArq) + ',' +
      ' FinCre.EmpOrc,' +
      ' FinCre.DteOrc,' +
      ' FinCre.ResOrc,' +
      ' FinCre.LibOrc,' +
      ' FinCre.NroNfs,' +
      ' FinCre.NumCre,' +
      ' FinCre.DteCre,' +
      ' FinCre.CodCli,' +
      ' FinCli.ApeCli,' +
      ' FinCre.CodVen,' +
      ' FinVen.ApeVen,' +
      ' FinCre.TotCre' +
      ' From FinCre LEFT JOIN PedLib ON (FinCre.EmpOrc = PedLib.CodEmp ' +
      '      AND  FinCre.DteOrc = PedLib.DteRes ' +
      '      AND  FinCre.ResOrc = PedLib.NumRes ' +
      '      AND  FinCre.LibOrc = PedLib.SeqLib)' +
      ' LEFT JOIN FinCli ON (FinCre.CodCli = FinCli.CodCli)' +
      ' LEFT JOIN FinVen ON (FinCre.CodVen = FinVen.CodVen)' +
      ' LEFT JOIN GerEmp ON (FinCre.CodEmp = GerEmp.CodEmp)' + sFiltro;
    ExecSQL;
    if (debughook > 0) then
        clipboard.AsText := clipboard.AsText+Text+_BR+_BR+_BR;
  end;

  sFiltro := ' Where SeqArq = ' + QuotedStr(SeqArq);

  with FatR10, SQL do
  begin

    Close;
    Text := ' Select FatR10.*,' +
      '        TextoOcor(IntStrZeros(CodCli,5),' + QuotedStr('-') + ',ApeCli,' + QuotedStr('') + ',' + QuotedStr('') + ',' + QuotedStr('') + ',' + QuotedStr('')
        + ') as Cliente, ' +
      '        TextoOcor(IntStrZeros(CodVen,3),' + QuotedStr('-') + ',ApeVen,' + QuotedStr('') + ',' + QuotedStr('') + ',' + QuotedStr('') + ',' + QuotedStr('')
        + ') as Vendedor ' +
      ' From FatR10 ' + sFiltro + sOrdem;
    Open;

    if (debughook > 0) then
        clipboard.AsText := clipboard.AsText+Text+_BR+_BR+_BR;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatR10 Where SeqArq = ' + QuotedStr(SeqArq);
    ExecSQL;

  end;

  if FatR10NumRes.Value > 0 then
  begin

    bImprimir.Enabled := True;

    bImprimir.SetFocus;

  end
  else
    bImprimir.Enabled := False;

end;

procedure TfmFatR10.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmFatR10.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmFatR10.bPsqEmpClick(Sender: TObject);
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

procedure TfmFatR10.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

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

    EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmFatR10.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqCli := TfmPsqCli.Create(Self);

      fmPsqCli.ShowModal;

      if fmPsqCli.CodCli > 0 then
      begin

        EdPsqNomCli.Text := fmPsqCli.NomCli;
        EdPsqCodCli.Text := IntToStr(fmPsqCli.CodCli);

      end;

    finally

      FreeAndNil(fmPsqCli);

    end;
  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'C';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodCli > 0 then
      begin

        EdPsqNomCli.Text := fmAuxPsq.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxPsq.CodCli);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;
  end;
end;

procedure TfmFatR10.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmFatR10.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqVen := TfmPsqVen.Create(Self);

      fmPsqVen.ShowModal;

      if fmPsqVen.CodVen > 0 then
      begin

        EdPsqNomVen.Text := fmPsqVen.NomVen;
        EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);

      end;

    finally

      FreeAndNil(fmPsqVen);

    end;
  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'V';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodVen > 0 then
      begin

        EdPsqNomVen.Text := fmAuxPsq.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;
  end;
end;

procedure TfmFatR10.bPsqCliClick(Sender: TObject);
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

procedure TfmFatR10.bPsqVenClick(Sender: TObject);
begin

  try

    fmPsqVen := TfmPsqVen.Create(Self);

    fmPsqVen.ShowModal;

    if fmPsqVen.CodVen > 0 then
    begin

      EdPsqNomVen.Text := fmPsqVen.NomVen;
      EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);

    end;

  finally

    FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmFatR10.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then
    bImprimir.OnClick(Sender);
end;

procedure TfmFatR10.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;

  if GCodVen_Id > 0 then
  begin

    EdPsqNomVen.Text := GNomVen_Id;
    EdPsqCodVen.Text := IntToStr(GCodVen_Id);

    if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then
    begin

      bPsqVen.Enabled := False;

      EdPsqCodVen.Enabled := False;

      EdPsqCodVen.Font.Style := [fsBold];

    end;
  end;
end;

procedure TfmFatR10.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmFatR10.bImprimirClick(Sender: TObject);
begin
  inherited;

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

  if FatR10NumRes.Value > 0 then
  begin

    if rgOrdem.Itemindex = 0 then
    begin

      try

        p1Report.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmFatR10);
        fmPreview.ppViewer.Report := p1Report;
        p1Report.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(p1Report.AfterPrint) then
          p1Report.AfterPrint(Sender);

      finally

        FreeAndNil(fmPreview);

      end;
    end;

    if rgOrdem.Itemindex = 1 then
    begin

      try

        p2Report.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmFatR10);
        fmPreview.ppViewer.Report := p2Report;
        p2Report.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(p2Report.AfterPrint) then
          p2Report.AfterPrint(Sender);

      finally

        FreeAndNil(fmPreview);

      end;
    end;
  end;
end;

procedure TfmFatR10.grR10ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmFatR10.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  inherited;

  p1Filtro1.Lines.Clear;
  p1Filtro2.Lines.Clear;

  p1Filtro1.Lines.Add(' ');
  p1Filtro2.Lines.Add(' ');

  if Trim(EdPsqCodEmp.Text) <> '' then
  begin

    p1Filtro1.Lines.Add('Empresa');
    p1Filtro2.Lines.Add(fNumZeros(EdPsqCodEmp.Text, 3) + ' - ' + EdPsqApeEmp.Text);

  end;

  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    p1Filtro1.Lines.Add('Cliente');
    p1Filtro2.Lines.Add(fNumZeros(EdPsqCodCli.Text, 5) + ' - ' + EdPsqNomCli.Text);

  end;

  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    p1Filtro1.Lines.Add('Vendedor');
    p1Filtro2.Lines.Add(fNumZeros(EdPsqCodVen.Text, 7) + ' - ' + EdPsqNomVen.Text);

  end;

  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then
  begin

    p1Filtro1.Lines.Add('Emitido no Periodo de');
    p1Filtro2.Lines.Add(FormatDateTime('dd/mm/yyyy', EdPsqDteFat1.Date) + ' a ' + FormatDateTime('dd/mm/yyyy', EdPsqDteFat2.Date));

  end;

  p1Filtro1.Lines.Add(' ');
  p1Filtro2.Lines.Add(' ');

end;

procedure TfmFatR10.ppHeaderBand2BeforePrint(Sender: TObject);
begin
  inherited;

  p2Filtro1.Lines.Clear;
  p2Filtro2.Lines.Clear;

  p2Filtro1.Lines.Add(' ');
  p2Filtro2.Lines.Add(' ');

  if Trim(EdPsqCodEmp.Text) <> '' then
  begin

    p2Filtro1.Lines.Add('Empresa');
    p2Filtro2.Lines.Add(fNumZeros(EdPsqCodEmp.Text, 3) + ' - ' + EdPsqApeEmp.Text);

  end;

  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    p2Filtro1.Lines.Add('Cliente');
    p2Filtro2.Lines.Add(fNumZeros(EdPsqCodCli.Text, 5) + ' - ' + EdPsqNomCli.Text);

  end;

  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    p2Filtro1.Lines.Add('Vendedor');
    p2Filtro2.Lines.Add(fNumZeros(EdPsqCodVen.Text, 7) + ' - ' + EdPsqNomVen.Text);

  end;

  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then
  begin

    p2Filtro1.Lines.Add('Emitido no Periodo de');
    p2Filtro2.Lines.Add(FormatDateTime('dd/mm/yyyy', EdPsqDteFat1.Date) + ' a ' + FormatDateTime('dd/mm/yyyy', EdPsqDteFat2.Date));

  end;

  p2Filtro1.Lines.Add(' ');
  p2Filtro2.Lines.Add(' ');

end;

procedure TfmFatR10.p1ReportBeforePrint(Sender: TObject);
begin
  inherited;

  pTotNfs := 0;
  pTot999 := 0;
  pTot998 := 0;
  gTotNfs := 0;
  gTot999 := 0;
  gTot998 := 0;

end;

procedure TfmFatR10.ppDetailBand1AfterPrint(Sender: TObject);
begin
  inherited;

  if pos('998', FloatToStr(FatR10NumCre.Value)) > 0 then
    pTot998 := pTot998 + FatR10TotGer.Value
  else
  begin

    if pos('999', FloatToStr(FatR10NumCre.Value)) > 0 then
      pTot999 := pTot999 + FatR10TotGer.Value
    else
      pTotNfs := pTotNfs + FatR10TotGer.Value;

  end;
end;

procedure TfmFatR10.ppGroupFooterBand1AfterPrint(Sender: TObject);
begin
  inherited;

  gTotNfs := gTotNfs + pTotNfs;
  gTot999 := gTot999 + pTot999;
  gTot998 := gTot998 + pTot998;

  pTotNfs := 0;
  pTot999 := 0;
  pTot998 := 0;

end;

procedure TfmFatR10.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  inherited;

  p1TotNfs1.Caption := FormatFloat('###,###,##0.00', pTotNfs);

  if GFlgAce = 'Sim' then
  begin

    ppLabel11.Visible := False;
    ppLabel12.Visible := False;

    p1Tot9991.Visible := False;
    p1Tot9981.Visible := False;

    ppLabel10.Top := 0.375;

    ppTotVen.Top := 0.375;

  end
  else
  begin

    p1Tot9991.Caption := FormatFloat('###,###,##0.00', pTot999);
    p1Tot9981.Caption := FormatFloat('###,###,##0.00', pTot998);

  end;
end;

procedure TfmFatR10.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  inherited;

  p1TotNfs2.Caption := FormatFloat('###,###,##0.00', gTotNfs);

  if GFlgAce = 'Sim' then
  begin

    ppLabel5.Visible := False;
    ppLabel8.Visible := False;

    p1Tot9992.Visible := False;
    p1Tot9982.Visible := False;

    ppLabel9.Top := 0.3958;

    ppDBCalc1.Top := 0.3958;

  end
  else
  begin

    p1Tot9992.Caption := FormatFloat('###,###,##0.00', gTot999);
    p1Tot9982.Caption := FormatFloat('###,###,##0.00', gTot998);

  end;
end;

procedure TfmFatR10.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
  inherited;

  p2TotNfs1.Caption := FormatFloat('###,###,##0.00', pTotNfs);

  if GFlgAce = 'Sim' then
  begin

    ppLabel35.Visible := False;
    ppLabel36.Visible := False;

    p2Tot9991.Visible := False;
    p2Tot9981.Visible := False;

    ppLabel34.Top := 0.375;

    ppDBCalc3.Top := 0.3958;

  end
  else
  begin

    p2Tot9991.Caption := FormatFloat('###,###,##0.00', pTot999);
    p2Tot9981.Caption := FormatFloat('###,###,##0.00', pTot998);

  end;
end;

procedure TfmFatR10.ppSummaryBand2BeforePrint(Sender: TObject);
begin
  inherited;

  p2TotNfs2.Caption := FormatFloat('###,###,##0.00', gTotNfs);

  if GFlgAce = 'Sim' then
  begin

    ppLabel21.Visible := False;
    ppLabel20.Visible := False;

    p2Tot9992.Visible := False;
    p2Tot9982.Visible := False;

    ppLabel23.Top := 0.3958;

    ppDBCalc2.Top := 0.3958;

  end
  else
  begin

    p2Tot9992.Caption := FormatFloat('###,###,##0.00', gTot999);
    p2Tot9982.Caption := FormatFloat('###,###,##0.00', gTot998);

  end;
end;

procedure TfmFatR10.ppSummaryBand1AfterPrint(Sender: TObject);
begin
  inherited;

  gTotNfs := 0;
  gTot999 := 0;
  gTot998 := 0;

end;

procedure TfmFatR10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmFatR10.FormDestroy(Sender: TObject);
begin
  inherited;
  fmFatR10 := nil;
end;

procedure TfmFatR10.ppFooterBand1BeforePrint(Sender: TObject);
begin
  inherited;
  ppApeEmp1.Caption := GApeEmp;
end;

procedure TfmFatR10.ppFooterBand2BeforePrint(Sender: TObject);
begin
  inherited;
  ppApeEmp2.Caption := GApeEmp;
end;

end.
