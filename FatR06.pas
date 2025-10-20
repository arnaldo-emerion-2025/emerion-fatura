unit FatR06;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppCache, ppCtrls, ppStrtch,
  ppMemo, ppVar, ppPrnabl, dxColorPickEdit, dxColorEdit, dxColorDateEdit;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmFatR06 = class(TfmPadrao)
    FatPed: TwwQuery;
    DsFat: TwwDataSource;
    PaintBox: TPaintBox;
    Label28: TLabel;
    EdPsqDteFt1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteFt2: TdxColorDateEdit;
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
    bSelecionar: TBitBtn;
    Label1: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    Label10: TLabel;
    Bevel1: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    bImprimir: TBitBtn;
    Label3: TLabel;
    FatPedNRONFS: TIntegerField;
    FatPedCLIENTE: TStringField;
    FatPedVENDEDOR: TStringField;
    FatPedNUMRES: TIntegerField;
    FatPedTOTGER: TFloatField;
    FatPedTOTCST: TFloatField;
    FatPedTOTREN: TFloatField;
    dbReport: TppDBPipeline;
    ppReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    FatPedSEQREL: TStringField;
    FatPedDTEFAT: TDateTimeField;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel22: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    p1Filtro1: TppMemo;
    p1Filtro2: TppMemo;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppNroNfs: TppDBText;
    ppCliente: TppDBText;
    ppVendedor: TppDBText;
    ppNumRes: TppDBText;
    ppTotCst: TppDBText;
    ppTotRen: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppTotLib: TppDBCalc;
    ppCstVen: TppDBCalc;
    ppLabel10: TppLabel;
    ppTotMrk: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppTotLiq: TppLabel;
    Label2: TLabel;
    Label4: TLabel;
    EdPsqCodGve: TdxColorEdit;
    bPsqGve: TSpeedButton;
    EdPsqNomGve: TdxColorEdit;
    ppFooterBand1: TppFooterBand;
    ppApeEmp: TppLabel;
    FatPedTOTIPC: TFloatField;
    ppTotIpc: TppDBCalc;
    FatPedTOTIPI: TFloatField;
    ppLabel15: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel16: TppLabel;
    ppTotVen: TppDBCalc;
    FatPedTOTLIB: TFloatField;
    ppLabel17: TppLabel;
    ppDBText1: TppDBText;
    FatPedTOTDSR: TFloatField;
    ppTotPro: TppLabel;
    ppTotDsr: TppDBCalc;
    ppTotGer: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ppFooterBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    SeqArq, sBase, sFiltro, sOrdem: string;
  end;

var
  fmFatR06: TfmFatR06;

implementation

uses FPreview, dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen,
  AuxPsq, ManGDB, ManPri, PsqGve;

{$R *.DFM}

procedure TfmFatR06.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedLib.NroNfs,''' + '1' + ''' as SeqRel,' +
    '        TextoOcor(IntStrZeros(PedLib.CodCli,7),''' + '-' + ''',FinCli.ApeCli,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as Cliente,' +
    '        TextoOcor(IntStrZeros(PedLib.CodVen,7),''' + '-' + ''',FinVen.ApeVen,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as Vendedor,' +
    '        PedLib.NumRes,' +
    '        PedLib.TotLib,' +
    '        PedLib.TotGer,' +
    '        PedLib.TotIpc,' +
    '        PedLib.TotCst,' +
    '        PedLib.DteFat,' +
    '        PedLib.TotRen,' +
    '        (Select Round(Sum(TotIpi),2) From FatPed Where FatPed.CodEmp = PedLib.CodEmp' +
    '                                                   and FatPed.DteRes = PedLib.DteRes' +
    '                                                   and FatPed.NumRes = PedLib.NumRes' +
    '                                                   and FatPed.SeqLib = PedLib.SeqLib) as TotIpi,' +
    '        (Select Round(Sum(TotDsr),2) From FatPed Where FatPed.CodEmp = PedLib.CodEmp' +
    '                                                   and FatPed.DteRes = PedLib.DteRes' +
    '                                                   and FatPed.NumRes = PedLib.NumRes' +
    '                                                   and FatPed.SeqLib = PedLib.SeqLib) as TotDsr' +
    ' From PedLib,FinCli,FinVen' +
    ' Where PedLib.CodCli = FinCli.CodCli' +
    '   and PedLib.CodVen = FinVen.CodVen';

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
    copy(TimeToStr(Time), 1, 2) +
    copy(TimeToStr(Time), 4, 2) +
    copy(TimeToStr(Time), 7, 2) +
    FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
    FNumZeros(Trim(IntToStr(Random(50000))), 5);

end;

procedure TfmFatR06.bSelecionarClick(Sender: TObject);
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

  sOrdem := ' Order by PedLib.NroNfs';

  sFiltro := ' and PedLib.IntFin = ''' + 'Sim' + ''' and ( ( PedLib.SitLib = ''' + 'Faturado' + ''' )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = ''' + 'Devolvido' + ''' and MonthOfYear(PedLib.DteFat) <> MonthOfYear(PedLib.DteDev) )';
  sFiltro := sFiltro + ' or ( PedLib.SitLib = ''' + 'Cancelado' + ''' and MonthOfYear(PedLib.DteFat) <> MonthOfYear(PedLib.DteDel) )';

  sFiltro := sFiltro + ' )';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodEmp = ''' + EdPsqCodEmp.Text + '''';
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodCli = ''' + EdPsqCodCli.Text + '''';
  if Trim(EdPsqCodGve.Text) <> '' then
    sFiltro := sFiltro + ' and FinVen.CodGve = ''' + EdPsqCodGve.Text + '''';
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.CodVen = ''' + EdPsqCodVen.Text + '''';
  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and PedLib.ModPfa = ''' + EdPsqModPfa.Text + '''';

  if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';

  if GFlgAce = 'Sim' then
    sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = ' + QuotedStr('Sim');

  with FatPed, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;

  if FatPedNumRes.Value > 0 then
  begin

    bImprimir.Enabled := True;

    bImprimir.SetFocus;

  end
  else
  begin

    bImprimir.Enabled := False;

    bSelecionar.SetFocus;

  end;
end;

procedure TfmFatR06.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmFatR06.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmFatR06.bPsqEmpClick(Sender: TObject);
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

procedure TfmFatR06.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmFatR06.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmFatR06.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmFatR06.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmFatR06.bPsqCliClick(Sender: TObject);
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

procedure TfmFatR06.bPsqVenClick(Sender: TObject);
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

procedure TfmFatR06.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then
    bImprimir.OnClick(Sender);
end;

procedure TfmFatR06.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqModPfa.SetFocus;
end;

procedure TfmFatR06.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmFatR06.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmFatR06.bImprimirClick(Sender: TObject);
begin
  inherited;
  if FatPedNumRes.Value > 0 then
  begin

    try

      ppReport.DeviceType := 'Screen';
      fmPreview := TfmPreview.Create(fmFatR06);
      fmPreview.ppViewer.Report := ppReport;
      ppReport.PrintToDevices;
      fmPreview.ShowModal;

      if Assigned(ppReport.AfterPrint) then
        ppReport.AfterPrint(Sender);

    finally

      FreeAndNil(fmPreview);

    end;
  end;
end;

procedure TfmFatR06.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  inherited;

  ppTotGer.Caption := FormatFloat('###,###,##0.00', (ppTotLib.Value - (ppTotIpc.Value + ppTotDsr.Value)));

  ppTotLiq.Caption := FormatFloat('###,###,##0.00', fRound((ppTotLib.Value - ppTotIpc.Value) - ppCstVen.Value, 2));

  if ppCstVen.Value > 0 then
    ppTotMrk.Caption := FormatFloat('###,###,##0.00', fRound((((ppTotLib.Value - ppTotIpc.Value) - ppCstVen.Value) * 100) / ppCstVen.Value, 2))
  else
    ppTotMrk.Caption := '0' + DecimalSeparator + '00';

end;

procedure TfmFatR06.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  inherited;

  p1Filtro1.Lines.Clear;
  p1Filtro2.Lines.Clear;

  p1Filtro1.Lines.Add(' ');
  p1Filtro2.Lines.Add(' ');

  if Trim(EdPsqModPfa.Text) <> '' then
  begin

    p1Filtro1.Lines.Add('Tipo de Operação');
    p1Filtro2.Lines.Add(EdPsqModPfa.Text);

  end;

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

  if Trim(EdPsqCodGve.Text) <> '' then
  begin

    p1Filtro1.Lines.Add('Grupo de Vendedores');
    p1Filtro2.Lines.Add(fNumZeros(EdPsqCodGve.Text, 3) + ' - ' + EdPsqNomGve.Text);

  end;

  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    p1Filtro1.Lines.Add('Vendedor');
    p1Filtro2.Lines.Add(fNumZeros(EdPsqCodVen.Text, 7) + ' - ' + EdPsqNomVen.Text);

  end;

  if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
  begin

    p1Filtro1.Lines.Add('Emitido no Periodo de');
    p1Filtro2.Lines.Add(FormatDateTime('dd/mm/yyyy', EdPsqDteFt1.Date) + ' a ' + FormatDateTime('dd/mm/yyyy', EdPsqDteFt2.Date));

  end;

  p1Filtro1.Lines.Add(' ');
  p1Filtro2.Lines.Add(' ');

end;

procedure TfmFatR06.EdPsqCodGveExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodGve.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select NomGve From FinGve Where CodGve = ''' + EdPsqCodGve.Text + '''';
      Open;

      EdPsqNomGve.Text := FieldByName('NomGve').AsString;

    end;

  end
  else
    EdPsqNomGve.Text := '';
end;

procedure TfmFatR06.bPsqGveClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqGve := TfmPsqGve.Create(Self);

    fmPsqGve.ShowModal;

    if fmPsqGve.CodGve > 0 then
    begin

      EdPsqCodGve.Text := IntToStr(fmPsqGve.CodGve);
      EdPsqNomGve.Text := fmPsqGve.NomGve;

    end;

  finally

    FreeAndNil(fmPsqGve);

  end;
end;

procedure TfmFatR06.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmFatR06.FormDestroy(Sender: TObject);
begin
  inherited;
  fmFatR06 := nil;
end;

procedure TfmFatR06.ppFooterBand1BeforePrint(Sender: TObject);
begin
  inherited;
  ppApeEmp.Caption := GApeEmp;
end;

procedure TfmFatR06.ppDetailBand1BeforePrint(Sender: TObject);
begin
  inherited;
  if FatPedTotDsr.Value > 0 then
    ppTotPro.Caption := FormatFloat('###,###,##0.00', FatPedTotLib.Value - (FatPedTotDsr.Value + FatPedTotIpc.Value))
  else
    ppTotPro.Caption := FormatFloat('###,###,##0.00', FatPedTotLib.Value - FatPedTotIpc.Value);
end;

end.
