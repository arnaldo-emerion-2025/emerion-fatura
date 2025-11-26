unit ManLn7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxDBELib, dxColorPickEdit,
  dxColorCurrencyEdit, dxColorDateEdit, dxColorEdit, dxfProgressBar, clipbrd,

  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, RLBarcode,
  RLXLSFilter, DBCtrls;

type
  TfmManLn7 = class(TfmPadrao)
    FatBol: TwwQuery;
    DsFatBol: TwwDataSource;
    Label16: TLabel;
    EdPsqId_PedRes1: TdxColorEdit;
    Label28: TLabel;
    EdPsqDteFat1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteFat2: TdxColorDateEdit;
    Label25: TLabel;
    EdPsqVlpCrp1: TdxColorCurrencyEdit;
    Label19: TLabel;
    EdPsqVlpCrp2: TdxColorCurrencyEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    EdPsqCodBan: TdxColorEdit;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqCli: TSpeedButton;
    bPsqVen: TSpeedButton;
    bPsqBan: TSpeedButton;
    EdPsqNomBan: TdxColorEdit;
    EdPsqApeVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    grBol: ThGrid;
    quSql: TwwQuery;
    Label13: TLabel;
    EdPsqNroNfs1: TdxColorEdit;
    bImprimir: TSpeedButton;
    EdPsqNroNfs2: TdxColorEdit;
    Label3: TLabel;
    UpFatBol: TUpdateSQL;
    EdPsqId_PedRes2: TdxColorEdit;
    Label9: TLabel;
    grBol1: TdxDBGraphicEdit;
    rgEmitidos: TRadioGroup;
    FatBolSEQARQ: TStringField;
    FatBolCODEMP: TIntegerField;
    FatBolDTECRE: TDateTimeField;
    FatBolNUMCRE: TFloatField;
    FatBolNUMCRP: TIntegerField;
    FatBolQTPCRE: TIntegerField;
    FatBolCODCLI: TIntegerField;
    FatBolCODBAN: TIntegerField;
    FatBolDTVCRP: TDateTimeField;
    FatBolNOSNUM: TStringField;
    FatBolDTVBOL: TDateTimeField;
    FatBolSEQBOL: TIntegerField;
    FatBolCODTCO: TStringField;
    FatBolCODAGB: TStringField;
    FatBolCODCNB: TStringField;
    FatBolNROCON: TStringField;
    FatBolNROCTR: TIntegerField;
    FatBolNROAUT: TIntegerField;
    FatBolFLGENC: TStringField;
    FatBolFLGIMP: TStringField;
    FatBolFLGALT: TStringField;
    FatBolNOMBAN: TStringField;
    FatBolNOMCLI: TStringField;
    FatBolCECCLI: TStringField;
    FatBolTECCLI: TStringField;
    FatBolENCCLI: TStringField;
    FatBolNRCCLI: TStringField;
    FatBolRFCCLI: TStringField;
    FatBolBACCLI: TStringField;
    FatBolCICCLI: TStringField;
    FatBolNROCRP: TStringField;
    FatBolVLPCRP: TFloatField;
    FatBolVLPBOL: TFloatField;
    pnNomBan: TPanel;
    pnNosNum: TPanel;
    pnSequenc: TPanel;
    Label1: TLabel;
    ProgressBar: TdxfProgressBar;
    FatBolNOSBOL: TStringField;
    FatBolFLGEMI: TStringField;
    FatBolCODBAR: TStringField;
    FatBolLINDIG: TStringField;
    Panel1: TPanel;
    EdPesquisa: TdxColorEdit;
    PopupMenu1: TPopupMenu;
    IncluirNovo1: TMenuItem;
    ExcluirAmbiente1: TMenuItem;
    Panel2: TPanel;
    pnQtdReg: TPanel;
    pnTexto: TLabel;
    FatBolPERMULTA: TFloatField;
    OK: TButton;
    btnBradesco: TButton;
    btnEnviarPorEmail: TButton;
    cobtco: TwwQuery;
    cobtcoCODBAN: TIntegerField;
    cobtcoCODAGB: TStringField;
    cobtcoCODCNB: TStringField;
    cobtcoCODTCO: TStringField;
    cobtcoNOMTCO: TStringField;
    cobtcoCODMOD: TIntegerField;
    cobtcoNROCON: TStringField;
    cobtcoNROCTR: TIntegerField;
    cobtcoTIPCOB: TStringField;
    cobtcoTIPOPE: TStringField;
    cobtcoNROAUT: TIntegerField;
    cobtcoFLGBOL: TStringField;
    dsCobtco: TwwDataSource;
    Label4: TLabel;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    wwQuery1: TwwQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField2: TIntegerField;
    StringField5: TStringField;
    IntegerField3: TIntegerField;
    StringField6: TStringField;
    StringField7: TStringField;
    IntegerField4: TIntegerField;
    StringField8: TStringField;
    DataSource1: TDataSource;
    procedure countregistros;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure bPsqBanClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodBanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqId_PedRes1KeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodBanExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FatBolNROCRPGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DsFatBolDataChange(Sender: TObject; Field: TField);
    procedure EdPesquisaChange(Sender: TObject);
    procedure IncluirNovo1Click(Sender: TObject);
    procedure ExcluirAmbiente1Click(Sender: TObject);
    procedure grBolEnter(Sender: TObject);
    procedure EdPsqId_PedRes1Enter(Sender: TObject);
    procedure OKClick(Sender: TObject);
    procedure btnBradescoClick(Sender: TObject);
    procedure btnEnviarPorEmailClick(Sender: TObject);
  private
    {Private declarations}
    gerarEmail : Boolean;
    nomeArquivo, nomePasta: String;
  public
    {Public declarations}
    SeqArq, sFiltro: string;
  end;

var
  fmManLn7: TfmManLn7;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, AuxIni, AuxPsq,
  PsqBan, ManPri, UntItau, UntBradesco, ManE02, uSantander, uSicredi, uBancoBrasil;

{$R *.DFM}

procedure TfmManLn7.FormCreate(Sender: TObject);
begin
  inherited;

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
    copy(TimeToStr(Time), 1, 2) +
    copy(TimeToStr(Time), 4, 2) +
    copy(TimeToStr(Time), 7, 2) +
    FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
    FNumZeros(Trim(IntToStr(Random(50000))), 5);

  gerarEmail    := False;
  nomeArquivo   := '';
  nomePasta     := '';
end;

procedure TfmManLn7.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

  sFiltro := '';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FinCrp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FinCrp.CodCli = ' + QuotedStr(EdPsqCodCli.Text);
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and FinCrp.CodVen = ' + QuotedStr(EdPsqCodVen.Text);
  if Trim(EdPsqCodBan.Text) <> '' then
    sFiltro := sFiltro + ' and FinCrp.CodBan = ' + QuotedStr(EdPsqCodBan.Text);

  if Trim(EdPsqId_PedRes1.Text) <> '' then
  begin

    if Trim(EdPsqId_PedRes2.Text) <> '' then
      sFiltro := sFiltro +
        ' and exists(Select * From FatPe2,PedLib Where FatPe2.Id_PedLib = PedLib.Id_PedLib and Where FatPe2.Id_FatPed = FinCre.Id_FatPed and PedLib.Id_PedRes >= ' +
        QuotedStr(EdPsqId_PedRes1.Text) + ' and PedLib.Id_PedRes <= ' + QuotedStr(EdPsqId_PedRes2.Text) + ')'
    else
      sFiltro := sFiltro +
        ' and exists(Select * From FatPe2,PedLib Where FatPe2.Id_PedLib = PedLib.Id_PedLib and Where FatPe2.Id_FatPed = FinCre.Id_FatPed and PedLib.Id_PedRes >= ' +
        QuotedStr(EdPsqId_PedRes1.Text) + ')';

  end;

  if Trim(EdPsqId_PedRes2.Text) <> '' then
    sFiltro := sFiltro +
      ' and exists(Select * From FatPe2,PedLib Where FatPe2.Id_PedLib = PedLib.Id_PedLib and Where FatPe2.Id_FatPed = FinCre.Id_FatPed and PedLib.Id_PedRes <= ' +
      QuotedStr(EdPsqId_PedRes2.Text) + ')';

  if Trim(EdPsqNroNfs1.Text) <> '' then
    sFiltro := sFiltro + ' and FinCre.NumCre >= ' + QuotedStr(EdPsqNroNfs1.Text);
  if Trim(EdPsqNroNfs2.Text) <> '' then
    sFiltro := sFiltro + ' and FinCre.NumCre <= ' + QuotedStr(EdPsqNroNfs2.Text);

  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FinCre.DteCre >= ' + QuotedStr(fDateToSQL(EdPsqDteFat1.Date));
  if Trim(fLimpaStr(EdPsqDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FinCre.DteCre <= ' + QuotedStr(fDateToSQL(EdPsqDteFat2.Date));

  if EdPsqVlpCrp1.Value > 0 then
    sFiltro := sFiltro + ' and FinCrp.VlpCrp >= ' + QuotedStr(fConvertValor(EdPsqVlpCrp1.Text));

  if EdPsqVlpCrp2.Value > 0 then
    sFiltro := sFiltro + ' and FinCrp.VlpCrp <= ' + QuotedStr(fConvertValor(EdPsqVlpCrp2.Text));

  sFiltro := sFiltro + ' and FinCrp.FlpCrp = ' + QuotedStr(' ');

  sFiltro := sFiltro + ' and FinCrp.CodBan in (' + QuotedStr('237') + ',' + QuotedStr('1') + ',' + QuotedStr('341') + ',' + QuotedStr('33') + ',' + QuotedStr('748') + ')';

  case rgEmitidos.Itemindex of
    0: sFiltro := sFiltro + ' and FinCrp.FlgBol = ' + QuotedStr('Sim');
    1: sFiltro := sFiltro + ' and FinCrp.FlgBol = ' + QuotedStr('Nao');
  end;

  fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
  try
    quSQL.Close;
    quSQL.SQL.Text := ' Delete From FatBol Where FatBol.SeqArq = ' + QuotedStr(SeqArq);
    quSQL.ExecSQL;

    fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
  except
    on E: exception do
    begin
      fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
      MessageBox(handle, 'Falha no registro.', 'Boleto', mb_ok + MB_ICONEXCLAMATION);
    end;
  end;

  fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}

  try
    quSQL.Close;
    quSQL.SQL.Text := ' Insert Into FatBol(SeqArq,CODCNB,CodEmp,DteCre,NumCre,NumCrp,QtpCre,CodCli,CodBan,DtvCrp,VlpCrp,NosNum,CodBar,LinDig,SeqBol,DtvBol,VlpBol, PerMulta)' +
                      ' Select ' + QuotedStr(SeqArq) + ',' +
                      QuotedStr(cobtcoCODCNB.AsString) + ',' +
                      '       FinCrp.CodEmp,' +
                      '       FinCrp.DteCre,' +
                      '       FinCrp.NumCre,' +
                      '       FinCrp.NumCrp,' +
                      '       FinCre.QtpCre,' +
                      '       FinCre.CodCli,' +
                      '       FinCrp.CodBan,' +
                      '       FinCrp.DtvCrp,' +
                      '       FinCrp.VlsCrp,' +
                      '       FinCrp.NosNum,' +
                      '       FinCrp.BarBol,' +
                      '       FinCrp.DigBol,' +
                      '       FinCrp.SeqBol,' +
                      '       FinCrp.DtvBol,' +
                      '       FinCrp.VlpBol,' +
                      '       FinCnb.PerMulta ' +
                      '  From FinCrp ' +
                      '  Join FinCre      on  FinCrp.DteCre = FinCre.DteCre ' +
                      '                  and FinCrp.NumCre  = FinCre.NumCre ' +
                      ' Left Join FinCnb  on  FinCnb.CodBan = FinCrp.CodBan ' +
                      '                  and FinCnb.CodAgb  = FinCrp.CodAgb ' +
                      '                  and FinCnb.CodCnb  = FinCrp.CodCnb ' +
                      ' Left Join CobTco  on  CobTco.CodBan = FinCrp.CodBan ' +
                      '                  and CobTco.CodAgb  = FinCrp.CodAgb ' +
                      '                  and CobTco.CodCnb  = FinCrp.CodCnb ' +
                      '                  and CobTco.FLGBOL  = ' + QuotedStr('Sim') +
                      ' Where FinCrp.CodEmp = FinCre.CodEmp ' +
                      '   and Coalesce(FinCre.FlgDel,'''') <> ''*'' ' + sFiltro;

      quSQL.ExecSQL;

      if DebugHook > 0 then
        clipboard.asText := Text;

    fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
  except
    on E: exception do
    begin
      fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
      MessageBox(handle, 'Falha no registro.', 'Boleto', mb_ok + MB_ICONEXCLAMATION);
    end;
  end;

  FatBol.Close;
  FatBol.Params[0].AsString := SeqArq;
  FatBol.Open;

  CountRegistros;

  if FatBolCodEmp.Value > 0 then
    bImprimir.Enabled := True;

  grBol.SetFocus;

end;

procedure TfmManLn7.EdPsqCodEmpExit(Sender: TObject);
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

        fmsgErro('Empresa Informada nao Encontrada.', EdPsqCodEmp);

      end;
    end;

  end
  else
    EdPsqApeEmp.Text := '';
end;

procedure TfmManLn7.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select FinCli.NomCli From FinCli Where FinCli.CodCli = ' + QuotedStr(EdPsqCodCli.Text);
      Open;

      EdPsqNomCli.Text := quSql.FieldByName('NomCli').AsString;
    end;

  end
  else
    EdPsqNomCli.Text := '';
end;

procedure TfmManLn7.bPsqEmpClick(Sender: TObject);
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

procedure TfmManLn7.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLn7.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'C';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodCli > 0 then
      begin

        EdPsqNomCli.Text := fmAuxIni.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

      end;

    finally

      FreeAndNil(fmAuxIni);

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

procedure TfmManLn7.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = ' + QuotedStr(EdPsqCodVen.Text);
      Open;

      EdPsqApeVen.Text := FieldByName('ApeVen').AsString;

    end;

  end
  else
    EdPsqApeVen.Text := '';
end;

procedure TfmManLn7.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'V';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodVen > 0 then
      begin

        EdPsqApeVen.Text := fmAuxIni.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

      end;

    finally

      FreeAndNil(fmAuxIni);

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

        EdPsqApeVen.Text := fmAuxPsq.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;
  end;
end;

procedure TfmManLn7.bPsqCliClick(Sender: TObject);
begin

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'C';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodCli > 0 then
    begin

      EdPsqNomCli.Text := fmAuxIni.NomCli;
      EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManLn7.bPsqVenClick(Sender: TObject);
begin

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'V';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodVen > 0 then
    begin

      EdPsqApeVen.Text := fmAuxIni.NomVen;
      EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManLn7.FormShow(Sender: TObject);
begin
  inherited;

  EdPsqDteFat1.Date := Date;
  EdPsqDteFat2.Date := Date;

  EdPsqId_PedRes1.SetFocus;

end;

procedure TfmManLn7.bPsqBanClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'B';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodBan > 0 then
    begin

      EdPsqNomBan.Text := fmAuxIni.NomBan;
      EdPsqCodBan.Text := IntToStr(fmAuxIni.CodBan);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManLn7.EdPsqCodBanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'B';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodBan > 0 then
      begin

        EdPsqNomBan.Text := fmAuxIni.NomBan;
        EdPsqCodBan.Text := IntToStr(fmAuxIni.CodBan);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;
  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'B';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodBan > 0 then
      begin

        EdPsqNomBan.Text := fmAuxPsq.NomBan;
        EdPsqCodBan.Text := IntToStr(fmAuxPsq.CodBan);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;
  end;
end;

procedure TfmManLn7.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLn7 := nil;
end;

procedure TfmManLn7.EdPsqId_PedRes1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManLn7.EdPsqCodBanExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodBan.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomBan From FinBan' +
        ' Where FinBan.CodBan = ''' + EdPsqCodBan.Text + '''';
      Open;

      EdPsqNomBan.Text := FieldByName('NomBan').AsString;

    end;

  end
  else
    EdPsqNomBan.Text := '';
end;

procedure TfmManLn7.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  DteCre: TDateTime;
  NumCre: real;
  CodEmp, NumCrp: integer;
begin
  inherited;
  if key = 32 then      //barra de espa�o
  begin

    if FatBolCodEmp.Value > 0 then
    begin

      if EdPesquisa.Focused then
      begin

        if Trim(EdPesquisa.Text) <> '' then
          EdPesquisa.Clear;

      end;

      CodEmp := FatBolCodEmp.Value;
      DteCre := FatBolDteCre.Value;
      NumCre := FatBolNumCre.Value;
      NumCrp := FatBolNumCrp.Value;

      FatBol.Edit;

      if FatBolFlgImp.Value = 'Nao' then
        FatBolFlgImp.Value := 'Sim'
      else
        FatBolFlgImp.Value := 'Nao';

      with FatBol do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alteracoes}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
          ;

          if FatBol.State <> dsBrowse then
            FatBol.CancelUpdates;

          FatBol.Close;
          FatBol.Open;

          CountRegistros;

          FatBol.Locate('CodEmp;DteCre;NumCre;NumCrp', VarArrayOf([CodEmp, DteCre, NumCre, NumCrp]), [LoPartialKey]);

          grBol.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatBol.Close;
      FatBol.Open;

      CountRegistros;

      FatBol.Locate('CodEmp;DteCre;NumCre;NumCrp', VarArrayOf([CodEmp, DteCre, NumCre, NumCrp]), [LoPartialKey]);

      if not FatBol.EOF then
        FatBol.Next;

      grBol.SetFocus;

    end;
  end;

  if key = 115 then
  begin

    if FatBolCodEmp.Value > 0 then
    begin

      if bImprimir.Enabled then
        bImprimir.OnClick(Sender);

    end;
  end;
end;

procedure TfmManLn7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatBol Where FatBol.SeqArq = ' + QuotedStr(SeqArq);
    ExecSQL;

  end;

  Action := CaFree;

end;

procedure TfmManLn7.FatBolNROCRPGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if FatBolNumCrp.Value > 0 then
    Text := fNumZeros(IntToStr(FatBolNumCrp.Value), 3) + '/' + fNumZeros(IntToStr(FatBolQtpCre.Value), 3)
  else
    Text := '';
end;

procedure TfmManLn7.DsFatBolDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if FatBolCodBan.Value > 0 then
    pnNomBan.Caption := ' Local de cobranca: ' + FatBolNomBan.Value + ' ( ' + IntToStr(FatBolCodBan.Value) + ' )'
  else
    pnNomBan.Caption := ' Local de cobranca: ';

  pnNosNum.Caption := ' Numero bancario: ' + Trim(FatBolNosNum.Value);

end;

procedure TfmManLn7.bImprimirClick(Sender: TObject);
var
  Bol_NosNum: string; // Nosso Numero
  Bol_NosBol: string; // Sequencia utilizada para emiss�o do nosso numero
  Bol_DigNum: string; // Digito do nosso numero
  Bol_CodBar: string; // C�digo de barras
  Bol_LinDig: string; // Linha digitavel
  Bol_NumCre: string; // Numero do documento/nota fiscal
  Bol_DteCre: string; // Data de emiss�o do documento
  Bol_NumCrp: string; // Numero da parcela
  Bol_DtvCrp: string; // Data de vencto do titulo
  Bol_VlpCrp: string; // Valor do titulo
  Bol_CodBan: string; // Local de cobranca
  Bol_CodAgb: string; // Agencia sem o digito
  Bol_DigAgb: string; // Digito da agencia
  Bol_CodCnb: string; // Numero da conta bancaria sem o digito
  Bol_DigCnb: string; // Digito da conta bancaria
  Bol_CodTco: string; // Codigo da carteira de cobranca cadastrada no modulo de cobranca
  Ger_Boleto: TStringList;
begin
  inherited;
  if FatBolCodEmp.Asinteger > 0 then
  begin

    if not(gerarEmail) then
      if not fMsg('Confirma emiss�o dos boletos ?', 'O') then
         begin
            exit;
         end;

      with quSQL, SQL do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
        try

          Close;
          Text := ' Update FatBol set FlgAlt = ' + QuotedStr('Sim') + ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq);
          ExecSQL;

          fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}

        except
          on E: exception do
          begin
            fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}

            MessageBox(Self.handle, 'Falha no registro.', 'Boleto', mb_ok + MB_ICONEXCLAMATION);
          end;
        end;

      end;

      try

        pnSequenc.Visible := True;

        with quSQL, SQL do
        begin

          Close;
          Text := ' Select Count(*) as QtdReg' +
            ' From FatBol' +
            ' Where FatBol.SeqArq = ' + Quotedstr(SeqArq) +
            '   and FatBol.FlgEnc = ' + Quotedstr('Sim');
          Open;

        end;

        ProgressBar.Max := quSQL.FieldbyName('QtdReg').AsInteger;

        ProgressBar.Position := 0;

        FatBol.Close;
        FatBol.Open;

        FatBol.First;

        while not FatBol.EOF do
        begin

          if FatBolFlgImp.Value = 'Sim' then
          begin

            Bol_CodBan := FormatFloat('000', FatBolCodBan.Value);

            Bol_NumCre := FloatToStr(FatBolNumCre.Value);
            Bol_NumCrp := IntToStr(FatBolNumCrp.Value);
            Bol_DtvCrp := FormatDateTime('dd/mm/yyyy', FatBolDtvCrp.Value);
            Bol_DteCre := FormatDateTime('dd/mm/yyyy', FatBolDteCre.Value);

            Bol_VlpCrp := FNumZeros(FormatFloat('########0.00', FatBolVlpCrp.AsFloat), 10);

            Bol_NosNum := '';

            if FatBolCodBan.AsString = '33' then
            begin

              Bol_CodAgb := copy(Trim(FatBolCodAgb.AsString), 1, length(Trim(FatBolCodAgb.AsString)) - 1);
              Bol_DigAgb := copy(Trim(FatBolCodAgb.AsString), length(Trim(FatBolCodAgb.AsString)), 1);
              Bol_CodCnb := copy(Trim(FatBolCodCnb.AsString), 1, length(Trim(FatBolCodCnb.AsString)) - 1);
              Bol_DigCnb := copy(Trim(FatBolCodCnb.AsString), length(Trim(FatBolCodCnb.AsString)), 1);
              Bol_CodTco := copy(Trim(FatBolCodTco.AsString), 1, 3);

              Bol_NosBol := fNumZeros(IntToStr(FatBolSeqBol.Value), 8);

              Ger_Boleto := getCodBar_LinhaDigitavel(FatBolNroCon.AsString,
                                                     Bol_CodTco,
                                                     Bol_CodBan + '9',
                                                     Bol_CodAgb,
                                                     Bol_CodCnb,
                                                     Bol_DigCnb,
                                                     Bol_NosBol,
                                                     StrToFloat(Bol_VlpCrp),
                                                     StrToDate(Bol_DtvCrp));

              Bol_CodBar := Ger_Boleto[0];
              Bol_LinDig := Ger_Boleto[1];
              Bol_NosNum := Ger_Boleto[2];
              Bol_DigNum := Ger_Boleto[3];

              Bol_NosNum := Bol_NosNum; //+ Bol_DigNum;

              if Trim(Bol_NosNum) <> '' then
              begin

                with quSQL, SQL do
                begin
                  fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
                  ;

                  try

                    Close;

                    if trim(FatBolNosNum.AsString) = '' then
                    begin
                      Text := ' Update FatBol set FlgEmi = ' + QuotedStr('Sim') + ',' +
                        ' NosNum = ' + QuotedStr(Bol_NosNum + Bol_DigNum) + ',' +
                        ' CodBar = ' + QuotedStr(Bol_CodBar) + ',' +
                        ' LinDig = ' + QuotedStr(Bol_LinDig) +
                        ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq) +
                        ' and FatBol.CodEmp = ' + QuotedStr(IntToStr(FatBolCodEmp.Value)) +
                        ' and FatBol.DteCre = ' + QuotedStr(fDateToSQL(FatBolDteCre.Value)) +
                        ' and FatBol.NumCre = ' + QuotedStr(FloatToStr(FatBolNumCre.Value)) +
                        ' and FatBol.NumCrp = ' + QuotedStr(IntToStr(FatBolNumCrp.Value));
                    end
                    else
                    begin
                      Text := ' Update FatBol set FlgEmi = ' + QuotedStr('Sim') + ',' +
                        ' NosNum = ' + QuotedStr(trim(FatBolNOSNUM.AsString)) + ',' +
                        ' CodBar = ' + QuotedStr(FatBolCODBAR.AsString) + ',' +
                        ' LinDig = ' + QuotedStr(FatBolLINDIG.AsString) +
                        ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq) +
                        ' and FatBol.CodEmp = ' + QuotedStr(IntToStr(FatBolCodEmp.Value)) +
                        ' and FatBol.DteCre = ' + QuotedStr(fDateToSQL(FatBolDteCre.Value)) +
                        ' and FatBol.NumCre = ' + QuotedStr(FloatToStr(FatBolNumCre.Value)) +
                        ' and FatBol.NumCrp = ' + QuotedStr(IntToStr(FatBolNumCrp.Value));
                    end;
                    ExecSQL;

                    fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
                    ;
                  except
                    on E: exception do
                    begin
                      fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
                      ;
                      MessageBox(self.handle, 'Falha no registro.', 'Boleto', mb_ok + MB_ICONEXCLAMATION);
                    end;
                  end;
                end;
              end;

            end;

            if FatBolCodBan.Value = 748 then
            begin

              Bol_CodAgb := copy(Trim(FatBolCodAgb.AsString), 1, length(Trim(FatBolCodAgb.AsString)) - 1);
              Bol_DigAgb := copy(Trim(FatBolCodAgb.AsString), length(Trim(FatBolCodAgb.AsString)), 1);
              Bol_CodCnb := copy(Trim(FatBolCodCnb.AsString), 1, length(Trim(FatBolCodCnb.AsString)) - 1);
              Bol_DigCnb := copy(Trim(FatBolCodCnb.AsString), length(Trim(FatBolCodCnb.AsString)), 1);
              Bol_CodTco := copy(Trim(FatBolCodTco.AsString), 2, 2);

              Bol_NosBol := fNumZeros(IntToStr(FatBolSeqBol.Value), 5);
              //Bol_NosBol := uSicredi.getNossoNumero(Bol_CodAgb, '28', '00759', '17', '2', FatbolSeqBol.AsString);

              Ger_Boleto := gerarInformacoesSicredi(FatBolCODCLI.asstring,
                Bol_CodTco,
                Bol_CodBan,
                Bol_CodAgb,
                Bol_CodCnb,
                Bol_DigCnb,
                Bol_NosBol,
                StrToFloat(Bol_VlpCrp),
                StrToDate(Bol_DtvCrp));

              Bol_CodBar := Ger_Boleto[0];
              Bol_LinDig := Ger_Boleto[1];
              Bol_NosNum := Ger_Boleto[2];
              Bol_DigNum := Ger_Boleto[3];

              //Bol_NosNum := Bol_NosNum; //+ Bol_DigNum;

              if Trim(Bol_NosNum) <> '' then
              begin

                with quSQL, SQL do
                begin
                  fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
                  ;

                  try

                    Close;

                    if trim(FatBolNosNum.AsString) = '' then
                    begin
                      Text := ' Update FatBol set FlgEmi = ' + QuotedStr('Sim') + ',' +
                        ' NosNum = ' + QuotedStr(Bol_NosNum + Bol_DigNum) + ',' +
                        ' CodBar = ' + QuotedStr(Bol_CodBar) + ',' +
                        ' LinDig = ' + QuotedStr(Bol_LinDig) +
                        ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq) +
                        ' and FatBol.CodEmp = ' + QuotedStr(IntToStr(FatBolCodEmp.Value)) +
                        ' and FatBol.DteCre = ' + QuotedStr(fDateToSQL(FatBolDteCre.Value)) +
                        ' and FatBol.NumCre = ' + QuotedStr(FloatToStr(FatBolNumCre.Value)) +
                        ' and FatBol.NumCrp = ' + QuotedStr(IntToStr(FatBolNumCrp.Value));
                    end
                    else
                    begin
                      Text := ' Update FatBol set FlgEmi = ' + QuotedStr('Sim') + ',' +
                        ' NosNum = ' + QuotedStr(trim(FatBolNOSNUM.AsString)) + ',' +
                        ' CodBar = ' + QuotedStr(FatBolCODBAR.AsString) + ',' +
                        ' LinDig = ' + QuotedStr(FatBolLINDIG.AsString) +
                        ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq) +
                        ' and FatBol.CodEmp = ' + QuotedStr(IntToStr(FatBolCodEmp.Value)) +
                        ' and FatBol.DteCre = ' + QuotedStr(fDateToSQL(FatBolDteCre.Value)) +
                        ' and FatBol.NumCre = ' + QuotedStr(FloatToStr(FatBolNumCre.Value)) +
                        ' and FatBol.NumCrp = ' + QuotedStr(IntToStr(FatBolNumCrp.Value));
                    end;
                    ExecSQL;

                    fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
                    ;
                  except
                    on E: exception do
                    begin
                      fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
                      ;
                      MessageBox(self.handle, 'Falha no registro.', 'Boleto', mb_ok + MB_ICONEXCLAMATION);
                    end;
                  end;
                end;
              end;

            end;

            if FatBolCodBan.Value = 237 then
            begin

              Bol_CodAgb := copy(Trim(FatBolCodAgb.AsString), 1, length(Trim(FatBolCodAgb.AsString)) - 1);
              Bol_DigAgb := copy(Trim(FatBolCodAgb.AsString), length(Trim(FatBolCodAgb.AsString)), 1);
              Bol_CodCnb := copy(Trim(FatBolCodCnb.AsString), 1, length(Trim(FatBolCodCnb.AsString)) - 1);
              Bol_DigCnb := copy(Trim(FatBolCodCnb.AsString), length(Trim(FatBolCodCnb.AsString)), 1);
              Bol_CodTco := copy(Trim(FatBolCodTco.AsString), 2, 2);

              Bol_NosBol := fNumZeros(IntToStr(FatBolSeqBol.Value), 7);

              Ger_Boleto := aCB_LD_NN_BRADESCO(Bol_CodTco, Bol_CodBan, Bol_CodAgb, Bol_CodCnb, Bol_DigCnb, Bol_NosBol, StrToFloat(Bol_VlpCrp),
                StrToDate(Bol_DtvCrp));

              Bol_CodBar := Ger_Boleto[0];
              Bol_LinDig := Ger_Boleto[1];
              Bol_NosNum := Ger_Boleto[2];
              Bol_DigNum := Ger_Boleto[3];

              Bol_NosNum := Bol_NosNum; //+ Bol_DigNum;

              if Trim(Bol_NosNum) <> '' then
              begin

                with quSQL, SQL do
                begin
                  fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
                  ;

                  try

                    Close;

                    if trim(FatBolNosNum.AsString) = '' then
                    begin
                      Text := ' Update FatBol set FlgEmi = ' + QuotedStr('Sim') + ',' +
                        ' NosNum = ' + QuotedStr(Bol_NosNum + Bol_DigNum) + ',' +
                        ' CodBar = ' + QuotedStr(Bol_CodBar) + ',' +
                        ' LinDig = ' + QuotedStr(Bol_LinDig) +
                        ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq) +
                        ' and FatBol.CodEmp = ' + QuotedStr(IntToStr(FatBolCodEmp.Value)) +
                        ' and FatBol.DteCre = ' + QuotedStr(fDateToSQL(FatBolDteCre.Value)) +
                        ' and FatBol.NumCre = ' + QuotedStr(FloatToStr(FatBolNumCre.Value)) +
                        ' and FatBol.NumCrp = ' + QuotedStr(IntToStr(FatBolNumCrp.Value));
                    end
                    else
                    begin
                      Text := ' Update FatBol set FlgEmi = ' + QuotedStr('Sim') + ',' +
                        ' NosNum = ' + QuotedStr(trim(FatBolNOSNUM.AsString)) + ',' +
                        ' CodBar = ' + QuotedStr(FatBolCODBAR.AsString) + ',' +
                        ' LinDig = ' + QuotedStr(FatBolLINDIG.AsString) +
                        ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq) +
                        ' and FatBol.CodEmp = ' + QuotedStr(IntToStr(FatBolCodEmp.Value)) +
                        ' and FatBol.DteCre = ' + QuotedStr(fDateToSQL(FatBolDteCre.Value)) +
                        ' and FatBol.NumCre = ' + QuotedStr(FloatToStr(FatBolNumCre.Value)) +
                        ' and FatBol.NumCrp = ' + QuotedStr(IntToStr(FatBolNumCrp.Value));
                    end;
                    ExecSQL;

                    fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
                    ;
                  except
                    on E: exception do
                    begin
                      fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
                      ;
                      MessageBox(self.handle, 'Falha no registro.', 'Boleto', mb_ok + MB_ICONEXCLAMATION);
                    end;
                  end;
                end;
              end;

            end;

            if FatBolCodBan.Value = 341 then
            begin
              //if trim(FatBolNosNum.AsString) = '' then
              //begin
              Bol_CodAgb := FNumZeros(FatBolCodAgb.Value, 4);
              Bol_DigAgb := '';
              Bol_CodCnb := copy(Trim(FatBolCodCnb.Value), 1, 5);
              Bol_DigCnb := copy(Trim(FatBolCodCnb.Value), 6, 1);
              Bol_CodTco := Trim(FatBolCodTco.Value);

              if trim(FatBolNosNum.AsString) = '' then
                Bol_NosBol := fNumZeros(IntToStr(FatBolSeqBol.AsInteger), 8)
              else
                Bol_NosBol := Trim(FatBolNOSNUM.AsString);

              //Bol_NosBol := fNumZeros(IntToStr(6), 8);

              Ger_Boleto := aCB_LD_NN_ITAU(Bol_CodTco, Bol_CodBan + '9', Bol_CodAgb, Bol_CodCnb, Bol_DigCnb, Bol_NosBol, StrToFloat(Bol_VlpCrp),
                StrToDate(Bol_DtvCrp));

              Bol_CodBar := Ger_Boleto[0];
              Bol_LinDig := Ger_Boleto[1];
              Bol_NosNum := Ger_Boleto[2];
              Bol_DigNum := Ger_Boleto[3];

              //if length(Bol_NosNum) > 8 then
                //Bol_NosNum := copy(Bol_NosNum, (length(Bol_NosNum) - 6), length(Bol_NosNum));

              //Bol_NosNum := Bol_NosNum + Bol_DigNum;//Nao � necess�rio enviar DAC para remessa
            //end;

              if Trim(Bol_NosNum) <> '' then
              begin

                with quSQL, SQL do
                begin
                  fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
                  ;

                  try

                    Close;

                    if trim(FatBolNosNum.AsString) = '' then
                    begin
                      Text := ' Update FatBol set FlgEmi = ' + QuotedStr('Sim') + ',' +
                        ' NosNum = ' + QuotedStr(Bol_NosNum + Bol_DigNum) + ',' +
                        ' CodBar = ' + QuotedStr(Bol_CodBar) + ',' +
                        ' LinDig = ' + QuotedStr(Bol_LinDig) +
                        ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq) +
                        ' and FatBol.CodEmp = ' + QuotedStr(IntToStr(FatBolCodEmp.Value)) +
                        ' and FatBol.DteCre = ' + QuotedStr(fDateToSQL(FatBolDteCre.Value)) +
                        ' and FatBol.NumCre = ' + QuotedStr(FloatToStr(FatBolNumCre.Value)) +
                        ' and FatBol.NumCrp = ' + QuotedStr(IntToStr(FatBolNumCrp.Value));
                    end
                    else
                    begin
                      Text := ' Update FatBol set FlgEmi = ' + QuotedStr('Sim') + ',' +
                        ' NosNum = ' + QuotedStr(trim(FatBolNOSNUM.AsString) + Bol_DigNum) + ',' +
                        ' CodBar = ' + QuotedStr(FatBolCODBAR.AsString) + ',' +
                        ' LinDig = ' + QuotedStr(FatBolLINDIG.AsString) +
                        ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq) +
                        ' and FatBol.CodEmp = ' + QuotedStr(IntToStr(FatBolCodEmp.Value)) +
                        ' and FatBol.DteCre = ' + QuotedStr(fDateToSQL(FatBolDteCre.Value)) +
                        ' and FatBol.NumCre = ' + QuotedStr(FloatToStr(FatBolNumCre.Value)) +
                        ' and FatBol.NumCrp = ' + QuotedStr(IntToStr(FatBolNumCrp.Value));
                    end;
                    ExecSQL;

                    fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
                    ;
                  except
                    on E: exception do
                    begin
                      fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
                      ;
                      MessageBox(self.handle, 'Falha no registro.', 'Boleto', mb_ok + MB_ICONEXCLAMATION);
                    end;
                  end;
                end;
              end;
            end;

            if FatBolCodBan.Value = 1 then
            begin

              Bol_CodAgb := copy(Trim(FatBolCodAgb.AsString), 1, length(Trim(FatBolCodAgb.AsString)) - 1);
              Bol_DigAgb := copy(Trim(FatBolCodAgb.AsString), length(Trim(FatBolCodAgb.AsString)), 1);
              Bol_CodCnb := copy(Trim(FatBolCodCnb.AsString), 1, length(Trim(FatBolCodCnb.AsString)) - 1);
              Bol_DigCnb := copy(Trim(FatBolCodCnb.AsString), length(Trim(FatBolCodCnb.AsString)), 1);
              Bol_CodTco := copy(Trim(FatBolCodTco.AsString), 1, 2);

              Bol_NosBol := fNumZeros(IntToStr(FatBolSeqBol.AsInteger), 7);

              Ger_Boleto := getCodBar_BB(trim(FatBolNroCon.AsString),
                                              Bol_CodTco,
                                              Bol_CodBan,
                                              Bol_CodAgb,
                                              Bol_CodCnb,
                                              Bol_DigCnb,
                                              Bol_NosBol,
                                              StrToFloat(Bol_VlpCrp),
                                              StrToDate(Bol_DtvCrp));


              Bol_CodBar := Ger_Boleto[0];
              Bol_LinDig := Ger_Boleto[1];
              Bol_NosNum := Ger_Boleto[2];
              Bol_DigNum := Ger_Boleto[3];

              Bol_NosNum := Bol_NosNum; //+ Bol_DigNum;

              if Trim(Bol_NosNum) <> '' then
              begin

                with quSQL, SQL do
                begin
                  fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
                  ;

                  try

                    Close;

                    if trim(FatBolNosNum.AsString) = '' then
                    begin
                      Text := ' Update FatBol set FlgEmi = ' + QuotedStr('Sim') + ',' +
                        ' NosNum = ' + QuotedStr(Bol_NosNum + Bol_DigNum) + ',' +
                        ' CodBar = ' + QuotedStr(Bol_CodBar) + ',' +
                        ' LinDig = ' + QuotedStr(Bol_LinDig) +
                        ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq) +
                        ' and FatBol.CodEmp = ' + QuotedStr(IntToStr(FatBolCodEmp.Value)) +
                        ' and FatBol.DteCre = ' + QuotedStr(fDateToSQL(FatBolDteCre.Value)) +
                        ' and FatBol.NumCre = ' + QuotedStr(FloatToStr(FatBolNumCre.Value)) +
                        ' and FatBol.NumCrp = ' + QuotedStr(IntToStr(FatBolNumCrp.Value));
                    end
                    else
                    begin
                      Text := ' Update FatBol set FlgEmi = ' + QuotedStr('Sim') + ',' +
                        ' NosNum = ' + QuotedStr(trim(FatBolNOSNUM.AsString)) + ',' +
                        ' CodBar = ' + QuotedStr(FatBolCODBAR.AsString) + ',' +
                        ' LinDig = ' + QuotedStr(FatBolLINDIG.AsString) +
                        ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq) +
                        ' and FatBol.CodEmp = ' + QuotedStr(IntToStr(FatBolCodEmp.Value)) +
                        ' and FatBol.DteCre = ' + QuotedStr(fDateToSQL(FatBolDteCre.Value)) +
                        ' and FatBol.NumCre = ' + QuotedStr(FloatToStr(FatBolNumCre.Value)) +
                        ' and FatBol.NumCrp = ' + QuotedStr(IntToStr(FatBolNumCrp.Value));
                    end;
                    ExecSQL;

                    fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
                    ;
                  except
                    on E: exception do
                    begin
                      fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
                      ;
                      MessageBox(self.handle, 'Falha no registro.', 'Boleto', mb_ok + MB_ICONEXCLAMATION);
                    end;
                  end;
                end;
              end;
            end;

          end;

          ProgressBar.StepBy(1);

          FatBol.Next;

          Application.ProcessMessages;

        end;

        with quSQL, SQL do
        begin
          fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
          ;

          try

            Close;
            Text := ' Update FatBol set FlgAlt = ' + QuotedStr('ENV') + ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq);
            ExecSQL;

            fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
            ;
          except
            on E: exception do
            begin
              fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
              ;
              MessageBox(self.handle, 'Falha no registro.', 'Boleto', mb_ok + MB_ICONEXCLAMATION);
            end;
          end;

        end;

        pnSequenc.Visible := False;

        try

          fmManE02 := TfmManE02.Create(Self);

          fmManE02.FatBol.Close;
          fmManE02.FatBol.Params[0].AsString := FatBolSeqArq.Value;
          fmManE02.FatBol.Open;

          if not(gerarEmail) then
             begin
                fmManE02.RLReport1.PreviewModal;
             end
          else
             begin
                fmManE02.RLPDFFilter1.filename := nomePasta + '\' + nomeArquivo;
                fmManE02.RLReport1.Prepare;
                fmManE02.RLReport1.SaveToFile(nomePasta + '\' + nomeArquivo);
                //fmManE02.RLPDFFilter1.FilterPages(fmManE02.RLReport1.Pages, 1, -1, False);
                //fmManE02.RLReport1.DefaultFilter := fmManE02.RLPDFFilter1;
             end;
        finally

          FreeAndNil(fmManE02);

        end;

        with quSQL, SQL do
        begin
          fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
          ;

          try

            Close;
            Text := ' Delete From FatBol Where FatBol.SeqArq = ' + QuotedStr(SeqArq);
            ExecSQL;

            fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
            ;
          except
            on E: exception do
            begin
              fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
              ;
              MessageBox(self.handle, 'Falha no registro.', 'Boleto', mb_ok + MB_ICONEXCLAMATION);
            end;
          end;

        end;

      finally

        pnSequenc.Visible := False;

        Fatbol.Close;
        Fatbol.Open;

        CountRegistros;

        grBol.SetFocus;

      end;
  end;
end;

procedure TfmManLn7.EdPesquisaChange(Sender: TObject);
begin
  inherited;
  if Trim(EdPesquisa.Text) <> '' then
    FatBol.Locate('NumCre', Trim(EdPesquisa.Text), [LoPartialKey]);
end;

procedure TfmManLn7.IncluirNovo1Click(Sender: TObject);
begin
  inherited;
  if FatBolCodEmp.Value > 0 then
  begin

    if FatBol.State <> dsBrowse then
      FatBol.CancelUpdates;

    if Trim(EdPesquisa.Text) <> '' then
      EdPesquisa.Clear;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Update FatBol set FlgImp = ' + QuotedStr('Sim') +
        ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq) + ' and FatBol.FlgEnc = ' + QuotedStr('Sim');
      ExecSQL;

    end;

    FatBol.Close;
    FatBol.Open;

    CountRegistros;

  end;
end;

procedure TfmManLn7.ExcluirAmbiente1Click(Sender: TObject);
begin
  inherited;
  if FatBolCodEmp.Value > 0 then
  begin

    if FatBol.State <> dsBrowse then
      FatBol.CancelUpdates;

    if Trim(EdPesquisa.Text) <> '' then
      EdPesquisa.Clear;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Update FatBol set FlgImp = ' + QuotedStr('Nao') +
        ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq) + ' and FatBol.FlgEnc = ' + QuotedStr('Sim');
      ExecSQL;

    end;

    FatBol.Close;
    FatBol.Open;

    CountRegistros;

  end;
end;

procedure TfmManLn7.CountRegistros;
begin
  quSQL.Close;
  quSQL.SQL.Text := ' Select Count(*) as QtdReg' +
                    ' From FatBol' +
                    ' Where FatBol.SeqArq = ' + QuotedStr(SeqArq) +
                    '   and FatBol.FlgEnc = ' + QuotedStr('Sim') +
                    '   and FatBol.FlgImp = ' + QuotedStr('Sim');
  quSQL.Open;

  if quSQL.FieldbyName('QtdReg').AsInteger > 0 then
    pnQtdReg.Caption := IntToStr(quSQL.FieldbyName('QtdReg').AsInteger) + ' '
  else
    pnQtdReg.Caption := '0 ';

end;

procedure TfmManLn7.grBolEnter(Sender: TObject);
begin
  inherited;
  pnTexto.Caption := 'Barra de espa�o-Selecionar ou nao um documento para emitir boleto';
end;

procedure TfmManLn7.EdPsqId_PedRes1Enter(Sender: TObject);
begin
  inherited;
  pnTexto.Caption := '';
end;

procedure TfmManLn7.OKClick(Sender: TObject);
var
  SQLTEMP: TQuery;
  strAux: TStrings;
  Ger_Boleto: TStringList;
begin
  inherited;

  SQLTEMP := TQuery.Create(Self);

  try
    SQLTEMP.DataBaseName := 'Isade';

    SQLTEMP.SQL.TEXT :=
      'select numcre,dtecre,numcrp,BarBol,VlsCrp,DtvCrp from fincrp where flpcrp <> ''*'' and RTRIM(LTRIM(COALESCE(BARBOL,''''))) <> '''' ';

    SQLTEMP.Active := True;

    strAux := TStringList.Create;

    try
      strAux.Clear;

      SQLTEMP.First;

      while not SQLTEMP.eof do
      begin

        Ger_Boleto := aCB_LD_NN_ITAU(
          copy(SQLTEMP.FieldByName('BarBol').AsString, 20, 3),
          copy(SQLTEMP.FieldByName('BarBol').AsString, 1, 4),
          copy(SQLTEMP.FieldByName('BarBol').AsString, 32, 4),
          copy(SQLTEMP.FieldByName('BarBol').AsString, 36, 5),
          copy(SQLTEMP.FieldByName('BarBol').AsString, 41, 1),
          copy(SQLTEMP.FieldByName('BarBol').AsString, 23, 8),
          StrToFloat(FNumZeros(FormatFloat('########0.00', SQLTEMP.FieldByName('VlsCrp').AsFloat), 10)),
          SQLTEMP.FieldByName('DtvCrp').AsDateTime);

        if Ger_Boleto[0] <> SQLTEMP.FieldByName('BarBol').AsString then
        begin
          strAux.Add(SQLTEMP.FieldByname('numcre').AsString + '|' + SQLTEMP.FieldByname('numcrp').AsString + '|' + FormatDateTime('dd/mm/yyyy',
            SQLTEMP.FieldByname('dtecre').AsDateTime) + '|' + Ger_Boleto[0] + '|' + SQLTEMP.FieldByName('BarBol').AsString);
        end;

        SQLTEMP.next;
      end;

      strAux.SaveToFile('Cobranca.txt');

    finally
      FreeAndnil(strAux)
    end;

  finally
    freeandnil(SQLTEMP);
  end;

end;

procedure TfmManLn7.btnBradescoClick(Sender: TObject);
var
  SQLTEMP: TQuery;
  strAux: TStrings;

  Bol_NosNum: string; // Nosso Numero
  Bol_NosBol: string; // Sequencia utilizada para emiss�o do nosso numero
  Bol_DigNum: string; // Digito do nosso numero
  Bol_CodBar: string; // C�digo de barras
  Bol_LinDig: string; // Linha digitavel
  Bol_NumCre: string; // Numero do documento/nota fiscal
  Bol_DteCre: string; // Data de emiss�o do documento
  Bol_NumCrp: string; // Numero da parcela
  Bol_DtvCrp: string; // Data de vencto do titulo
  Bol_VlpCrp: string; // Valor do titulo
  Bol_CodBan: string; // Local de cobranca
  Bol_CodAgb: string; // Agencia sem o digito
  Bol_DigAgb: string; // Digito da agencia
  Bol_CodCnb: string; // Numero da conta bancaria sem o digito
  Bol_DigCnb: string; // Digito da conta bancaria
  Bol_CodTco: string; // Codigo da carteira de cobranca cadastrada no modulo de cobranca
  Ger_Boleto: TStringList;
begin
  inherited;

  SQLTEMP := TQuery.Create(Self);

  try
    SQLTEMP.DataBaseName := 'Isade';

    SQLTEMP.SQL.TEXT :=
      'select CRP.CodEmp,CRP.numcre,CRP.dtecre,CRP.numcrp,CRP.BarBol,CRP.VlsCrp,CRP.DtvCrp,' +
      ' CRP.CodBan,CRP.VlpCrp,CRP.CodAgb,CRP.CodCnb,TCO.CodTco,CRP.SeqBol ' +
      ' from fincrp CRP ' +
      ' left join COBTCO TCO on TCO.CODBAN = CRP.CODBAN AND TCO.FLGBOL = ''Sim'' ' +
      ' where lengthstr(nosnum) < 12 ' +
      ' and coalesce(seqbol,0) > 0';

    SQLTEMP.Active := True;

    strAux := TStringList.Create;

    strAux.Clear;

    SQLTEMP.First;
    try
      while not SQLTEMP.eof do
      begin

        Bol_CodBan := IntToStr(SQLTEMP.FieldByName('CodBan').AsInteger);

        Bol_NumCre := FloatToStr(SQLTEMP.FieldByName('NumCre').AsFloat);
        Bol_NumCrp := IntToStr(SQLTEMP.FieldByName('NumCrp').AsInteger);
        Bol_DtvCrp := FormatDateTime('dd/mm/yyyy', SQLTEMP.FieldByName('DtvCrp').AsDateTime);
        Bol_DteCre := FormatDateTime('dd/mm/yyyy', SQLTEMP.FieldByName('DteCre').AsDateTime);

        Bol_VlpCrp := FNumZeros(FormatFloat('########0.00', SQLTEMP.FieldByName('VlpCrp').AsFloat), 10);

        Bol_NosNum := '';

        Bol_CodAgb := copy(Trim(SQLTEMP.FieldByName('CodAgb').AsString), 1, length(Trim(SQLTEMP.FieldByName('CodAgb').AsString)) - 1);
        Bol_DigAgb := copy(Trim(SQLTEMP.FieldByName('CodAgb').AsString), length(Trim(SQLTEMP.FieldByName('CodAgb').AsString)), 1);
        Bol_CodCnb := copy(Trim(SQLTEMP.FieldByName('CodCnb').AsString), 1, length(Trim(SQLTEMP.FieldByName('CodCnb').AsString)) - 1);
        Bol_DigCnb := copy(Trim(SQLTEMP.FieldByName('CodCnb').AsString), length(Trim(SQLTEMP.FieldByName('CodCnb').AsString)), 1);
        Bol_CodTco := copy(Trim(SQLTEMP.FieldByName('CodTco').AsString), 2, 2);

        Bol_NosBol := fNumZeros(IntToStr(SQLTEMP.FieldByName('SeqBol').Value), 7);

        Ger_Boleto := aCB_LD_NN_BRADESCO(Bol_CodTco, Bol_CodBan, Bol_CodAgb, Bol_CodCnb, Bol_DigCnb, Bol_NosBol, StrToFloat(Bol_VlpCrp),
          StrToDate(Bol_DtvCrp));

        Bol_CodBar := Ger_Boleto[0];
        Bol_LinDig := Ger_Boleto[1];
        Bol_NosNum := Ger_Boleto[2];
        Bol_DigNum := Ger_Boleto[3];

        Bol_NosNum := Bol_NosNum + Bol_DigNum;

        strAux.Add(' Update FINCRP set ' +
          ' NosNum = ' + QuotedStr(Bol_NosNum) +
          ' Where FINCRP.CodEmp = ' + QuotedStr(IntToStr(SQLTEMP.FieldByName('CodEmp').AsInteger)) +
          ' and FINCRP.DteCre = ' + QuotedStr(fDateToSQL(SQLTEMP.FieldByName('DteCre').AsDateTime)) +
          ' and FINCRP.NumCre = ' + QuotedStr(FloatToStr(SQLTEMP.FieldByName('NumCre').AsFloat)) +
          ' and FINCRP.NumCrp = ' + QuotedStr(IntToStr(SQLTEMP.FieldByName('NumCrp').Asinteger)));

        SQLTEMP.next;
      end;

      strAux.SaveToFile('Lista.txt');

    finally
      FreeAndnil(strAux)
    end;

  finally
    freeandnil(SQLTEMP);
  end;

end;

procedure TfmManLn7.btnEnviarPorEmailClick(Sender: TObject);
var
  listaBoletos: TStringList;
  I: integer;
  sr: TSearchRec;
begin
  inherited;

  try
     begin
       gerarEmail := True;

       FatBol.First;
       nomeArquivo := '';

       nomePasta := 'C:\Emerion\Temp\Boletos';

       //Verifica Se o caminho para os boletos temporarios de fato existem
       RemoveDir(nomePasta);

       Sleep(1000);

       CreateDir(nomePasta);

       Sleep(1000);

       listaBoletos := TStringList.Create;
       
       while not (FatBol.EOF) do
          begin
             if not(listaBoletos.IndexOf(FatBol.FieldByName('NUMCRE').AsString) >= 0) then
                listaBoletos.Add(FatBol.FieldByName('NUMCRE').AsString);

             FatBol.Next;
          end;

       for i := 0 to listaBoletos.Count -1 do
          begin
             EdPsqNroNfs1.Text := listaBoletos.Strings[I];
             EdPsqNroNfs2.Text := listaBoletos.Strings[I];

             bSelecionar.Click;

             nomearquivo := FatBol.FieldByName('CODCLI').AsString + '_' + FatBol.FieldByName('NUMCRE').AsString + '.pdf';
             
             bImprimir.Click;
          end;

       EdPsqNroNfs1.Text := '';
       EdPsqNroNfs2.Text := '';

        fmManPri.enviaEmail(false,'Teste', 'Vamos ver se vai dar certo o envio deste email',
                                'arnaldotecadm@hotmail.com',VarArrayOf([nomePasta + '\' + nomearquivo]));

       I := FindFirst(nomePasta + '\*.*', faAnyFile, SR);
        while I = 0 do
        begin
          DeleteFile(nomePasta + '\' + SR.Name);
          I := FindNext(SR);
        end;

       ShowMessage('Procediemento Finalizado com Sucesso.');
     end;
  finally
     gerarEmail := False;
  end;
end;

end.

