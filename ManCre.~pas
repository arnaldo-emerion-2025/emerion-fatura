unit ManCre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxDBEdtr, ppVar, ppPrnabl, ppClass, ppCtrls,
  ppDB, ppCache, ppBands, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  ppStrtch, ppMemo, dxDBColorLookupEdit, dxDBColorEdit, dxDBColorDateEdit,
  dxDBColorMemo, dxColorEdit, dxColorDateEdit;

type
  TfmManCre = class(TfmPadrao)
    FatCre: TwwQuery;
    DsCre: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteCr1: TdxColorDateEdit;
    EdPsqNumRes: TdxColorEdit;
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
    rgOrdem: TRadioGroup;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    grCre: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    quSql: TwwQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    pnNomCli: TPanel;
    pnApeVen: TPanel;
    bIncluir: TSpeedButton;
    grPe21: TdxDBGraphicEdit;
    FatCreCODEMP: TIntegerField;
    FatCreDTERES: TDateTimeField;
    FatCreNUMRES: TIntegerField;
    FatCreSEQCRE: TIntegerField;
    FatCreNUMNFS: TIntegerField;
    FatCreDTECRE: TDateTimeField;
    FatCreHRECRE: TStringField;
    FatCreOBSCRE: TMemoField;
    FatCreCODUSU: TIntegerField;
    FatCreCODCLI: TIntegerField;
    FatCreNOMCLI: TStringField;
    FatCreCODVEN: TIntegerField;
    FatCreAPEVEN: TStringField;
    FatCreLOGUSU: TStringField;
    FatCreINSCLI: TStringField;
    FatCreCGCCLI: TStringField;
    FatCreTOTCRE: TFloatField;
    FatCreMEDCOM: TFloatField;
    EdObsCre: TdxDBColorMemo;
    bExcluir: TSpeedButton;
    UpCre: TUpdateSQL;
    bEditar: TSpeedButton;
    FatCreDTEATU: TDateTimeField;
    FatCreHREATU: TStringField;
    FatCreUSUATU: TIntegerField;
    Label1: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    EdDteAtu: TdxDBColorDateEdit;
    EdUsuAtu: TdxDBColorEdit;
    Label15: TLabel;
    EdHreAtu: TdxDBColorEdit;
    Bevel4: TBevel;
    CbNomAtu: TdxDBColorLookupEdit;
    GerUsu: TwwQuery;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    DsUsu: TwwDataSource;
    rgStatus: TRadioGroup;
    FatCreBASCOM: TFloatField;
    FatCreTOTCOM: TFloatField;
    FatCreSITCRE: TStringField;
    bImprimir: TSpeedButton;
    DsReport: TppDBPipeline;
    ppReport: TppReport;
    TppDetailBand1: TppDetailBand;
    ppLabel22: TppLabel;
    ppLabel1: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel2: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppApeEmp: TppDBText;
    FatCreAPEEMP: TStringField;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppObsCre: TppDBMemo;
    ppDBText6: TppDBText;
    SeqRel: TwwQuery;
    DsRel: TwwDataSource;
    SeqRelCODEMP: TIntegerField;
    SeqRelDTERES: TDateTimeField;
    SeqRelNUMRES: TIntegerField;
    SeqRelSEQCRE: TIntegerField;
    SeqRelCODCLI: TIntegerField;
    SeqRelCODVEN: TIntegerField;
    SeqRelNUMNFS: TIntegerField;
    SeqRelDTECRE: TDateTimeField;
    SeqRelHRECRE: TStringField;
    SeqRelTOTCRE: TFloatField;
    SeqRelMEDCOM: TFloatField;
    SeqRelBASCOM: TFloatField;
    SeqRelTOTCOM: TFloatField;
    SeqRelOBSCRE: TMemoField;
    SeqRelCODUSU: TIntegerField;
    SeqRelSITCRE: TStringField;
    SeqRelDTEATU: TDateTimeField;
    SeqRelHREATU: TStringField;
    SeqRelUSUATU: TIntegerField;
    SeqRelAPEEMP: TStringField;
    SeqRelNOMCLI: TStringField;
    SeqRelAPEVEN: TStringField;
    SeqRelLOGUSU: TStringField;
    SeqRelINSCLI: TStringField;
    SeqRelCGCCLI: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqNumResExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bIncluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bExcluirClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DsCreDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    DteRes: TDateTime;
    sBase, sFiltro, sOrdem: string;
    CodEmp, NumRes, SeqCre: integer;
  end;

var
  Linha: integer;
  fmManCre: TfmManCre;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqCli, PsqVen,
  ManPri, ManCr1, FPreview;

{$R *.DFM}

procedure TfmManCre.FormCreate(Sender: TObject);
begin
  inherited;

  EdPsqDteCr1.Date := Date;
  EdPsqDteCr2.Date := Date;

  FatCre.Close;
  FatCre.Params[0].AsDateTime := EdPsqDteCr1.Date;
  FatCre.Open;

  sBase := ' Select FatCre.*,' +
    '        TextoOcor(IntStrZeros(FatCre.CodEmp,3),''' + '-' + ''',GerEmp.ApeEmp,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as ApeEmp,' +
    '        TextoOcor(IntStrZeros(FatCre.CodCli,7),''' + '-' + ''',FinCli.NomCli,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as NomCli,' +
    '        TextoOcor(IntStrZeros(FatCre.CodVen,7),''' + '-' + ''',FinVen.ApeVen,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as ApeVen,' +
    '        GerUsu.LogUsu,' +
    '        FinCli.Inscli,' +
    '        FinCli.CgcCli' +
    ' From FatCre LEFT JOIN PedRes ON (FatCre.CodEmp = PedRes.CodEmp)' +
    '                             AND (FatCre.DteRes = PedRes.DteRes)' +
    '                             AND (FatCre.NumRes = PedRes.NumRes)' +
    '             LEFT JOIN FinCli ON (FatCre.CodCli = FinCli.CodCli)' +
    '             LEFT JOIN FinVen ON (FatCre.CodVen = FinVen.CodVen)' +
    '             LEFT JOIN GerUsu ON (FatCre.CodUsu = GerUsu.CodUsu)' +
    '             LEFT JOIN GerEmp ON (FatCre.CodEmp = GerEmp.CodEmp)';

end;

procedure TfmManCre.bSelecionarClick(Sender: TObject);
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

  sFiltro := '';

  case rgOrdem.Itemindex of
    0: sOrdem := ' Order by PedRes.CodCli,FatCre.CodEmp,FatCre.DteRes,FatCre.NumRes,FatCre.SeqCre';
    1: sOrdem := ' Order by PedRes.CodVen,FatCre.CodEmp,FatCre.DteRes,FatCre.NumRes,FatCre.SeqCre';
    2: sOrdem := ' Order by FatCre.DteCre,FatCre.CodEmp,FatCre.DteRes,FatCre.NumRes,FatCre.SeqCre';
    3: sOrdem := ' Order by FatCre.NumRes';
  end;

  case rgStatus.ItemIndex of
    0: sFiltro := ' Where FatCre.SitCre = ''' + 'Diferido' + '''';
    1: sFiltro := ' Where FatCre.SitCre = ''' + 'Indeferido' + '''';
  end;

  if Trim(EdPsqNumRes.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatCre.NumRes = ''' + EdPsqNumRes.Text + ''''
    else
      sFiltro := sFiltro + ' and FatCre.NumRes = ''' + EdPsqNumRes.Text + '''';

  end;

  if Trim(EdPsqCodEmp.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatCre.CodEmp = ''' + EdPsqCodEmp.Text + ''''
    else
      sFiltro := sFiltro + ' and FatCre.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  end;

  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatCre.CodCli = ''' + EdPsqCodCli.Text + ''''
    else
      sFiltro := sFiltro + ' and FatCre.CodCli = ''' + EdPsqCodCli.Text + '''';

  end;

  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatCre.CodVen = ''' + EdPsqCodVen.Text + ''''
    else
      sFiltro := sFiltro + ' and FatCre.CodVen = ''' + EdPsqCodVen.Text + '''';

  end;

  if Trim(fLimpaStr(EdPsqDteCr1.Text)) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatCre.DteCre >= ''' + fDateToSQL(EdPsqDteCr1.Date) + ''''
    else
      sFiltro := sFiltro + ' and FatCre.DteCre >= ''' + fDateToSQL(EdPsqDteCr1.Date) + '''';

  end;

  if Trim(fLimpaStr(EdPsqDteCr2.Text)) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatCre.DteCre <= ''' + fDateToSQL(EdPsqDteCr2.Date) + ''''
    else
      sFiltro := sFiltro + ' and FatCre.DteCre <= ''' + fDateToSQL(EdPsqDteCr2.Date) + '''';

  end;

  with FatCre, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;

  grCre.SetFocus;

end;

procedure TfmManCre.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmManCre.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmManCre.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManCre.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmManCre.BbPsqCliClick(Sender: TObject);
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

procedure TfmManCre.BbPsqVenClick(Sender: TObject);
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

procedure TfmManCre.EdPsqNumResExit(Sender: TObject);
begin
  if Trim(EdPsqNumRes.Text) <> '' then
  begin

    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;

    EdPsqDteCr1.Clear;
    EdPsqDteCr2.Clear;

  end;
end;

procedure TfmManCre.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumRes.SetFocus;
end;

procedure TfmManCre.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCre.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCre := nil;
end;

procedure TfmManCre.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManCre.bIncluirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    Found := -1;

    for i := 0 to Screen.FormCount - 1 do
    begin

      if Screen.Forms[i] is TfmManCr1 then
        Found := i;

    end;

    if Found >= 0 then
    begin

      fmManCr1.WindowState := wsNormal;
      fmManCr1.BringToFront;

    end
    else
    begin

      CodEmp := 0;
      NumRes := 0;
      SeqCre := 0;

      fmManCr1 := TfmManCr1.Create(Self);
      fmManCr1.Show;

    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManCre.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    Close;

  if key = 114 then
    bEditar.OnClick(Sender);

  if key = 115 then
    bIncluir.OnClick(Sender);

  if key = 116 then
    bImprimir.OnClick(Sender);

  if key = 117 then
    bExcluir.OnClick(Sender);

end;

procedure TfmManCre.bExcluirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    Found := -1;

    for i := 0 to Screen.FormCount - 1 do
    begin

      if Screen.Forms[i] is TfmManCr1 then
        Found := i;

    end;

    if Found >= 0 then
    begin

      fmManCr1.WindowState := wsNormal;
      fmManCr1.BringToFront;

    end
    else
    begin

      if FatCreCodEmp.Value > 0 then
      begin

        if fMsg('Confirma a Exclusão da Devolução ?', 'S') then
        begin

          FatCre.Delete;

          with FatCre do
          begin

            fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
            ;

            try

              ApplyUpdates; {Tenta aplicar as alterações}
              ;

              fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
              ;

            except

              fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
              ;

              if FatCre.State <> dsBrowse then
                FatCre.CancelUpdates;

              grCre.SetFocus;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;

          FatCre.Close;
          FatCre.Open;

          grCre.SetFocus;

        end;
      end;
    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManCre.bEditarClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    Found := -1;

    for i := 0 to Screen.FormCount - 1 do
    begin

      if Screen.Forms[i] is TfmManCr1 then
        Found := i;

    end;

    if Found >= 0 then
    begin

      fmManCr1.WindowState := wsNormal;
      fmManCr1.BringToFront;

    end
    else
    begin

      if FatCreNumRes.Value > 0 then
      begin

        CodEmp := FatCreCodEmp.Value;
        DteRes := FatCreDteRes.Value;
        NumRes := FatCreNumRes.Value;
        SeqCre := FatCreSeqCre.Value;

        fmManCr1 := TfmManCr1.Create(Self);
        fmManCr1.Show;

      end;
    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManCre.bImprimirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is TfmManCr1 then
      Found := i;

  end;

  if Found >= 0 then
  begin

    fmManCr1.WindowState := wsNormal;
    fmManCr1.BringToFront;

  end
  else
  begin

    if FatCreCodEmp.Value > 0 then
    begin

      SeqRel.Close;
      SeqRel.Params[0].AsInteger := FatCreCodEmp.Value;
      SeqRel.Params[1].AsDateTime := FatCreDteRes.Value;
      SeqRel.Params[2].AsInteger := FatCreNumRes.Value;
      SeqRel.Params[3].AsInteger := FatCreSeqCre.Value;
      SeqRel.Open;

      if SeqRelCodEmp.Value > 0 then
      begin

        try

          ppReport.DeviceType := 'Screen';
          fmPreview := TfmPreview.Create(fmManCre);
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
  end;
end;

procedure TfmManCre.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
  Found: Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is TfmManCr1 then
      Found := i;

  end;

  if Found >= 0 then
    fmsgErro('Existem Operações em Andamento. Por Favor Feche o Formulario.', nil)
  else
    Action := CaFree;

end;

procedure TfmManCre.DsCreDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnNomCli.Caption := ' ' + FatCreNomCli.Value;
  pnApeVen.Caption := ' ' + FatCreApeVen.Value;

  if GerUsuCodUsu.Value <> FatCreUsuAtu.Value then
  begin

    GerUsu.Close;
    GerUsu.Params[0].AsInteger := FatCreUsuAtu.Value;
    GerUsu.Open;

  end;
end;

end.
