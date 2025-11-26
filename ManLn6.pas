unit ManLn6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, dxColorPickEdit,
  dxColorDateEdit, dxColorEdit, Clipbrd;

type
  TfmManLn6 = class(TfmPadrao)
    FatPed: TwwQuery;
    FatDes: TwwQuery;
    DsDes: TwwDataSource;
    DsRes: TwwDataSource;
    Label2: TLabel;
    Bevel2: TBevel;
    grPed: ThGrid;
    Label3: TLabel;
    grDes: ThGrid;
    quSql: TwwQuery;
    pnHreFat: TPanel;
    pnNomCli: TPanel;
    pnApeVen: TPanel;
    dbRes: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    FatDesQTDVOL: TIntegerField;
    FatDesNOMCON: TStringField;
    FatDesPESDES: TFloatField;
    FatDesNOMUND: TStringField;
    FatDesCODEMP: TIntegerField;
    FatDesDTERES: TDateTimeField;
    FatDesNUMRES: TIntegerField;
    FatDesSEQLIB: TIntegerField;
    FatDesSEQFAT: TIntegerField;
    FatDesSEQDES: TIntegerField;
    FatDesCODUND: TStringField;
    FatDesNRODES: TIntegerField;
    FatPedCODEMP: TIntegerField;
    FatPedDTERES: TDateTimeField;
    FatPedNUMRES: TIntegerField;
    FatPedSEQLIB: TIntegerField;
    FatPedSEQFAT: TIntegerField;
    FatPedDTEFAT: TDateTimeField;
    FatPedNRONFS: TIntegerField;
    FatPedCODCLI: TIntegerField;
    FatPedCODVEN: TIntegerField;
    FatPedCODPFA: TStringField;
    FatPedTOTFAT: TFloatField;
    FatPedTOTIPI: TFloatField;
    FatPedTOTSUB: TFloatField;
    FatPedTOTDSR: TFloatField;
    FatPedTOTGER: TFloatField;
    FatPedAPEVEN: TStringField;
    FatPedHREFAT: TStringField;
    pnOrigNF: TPanel;
    FatPedTIP: TStringField;
    Panel1: TPanel;
    Label29: TLabel;
    BbPsqEmp: TSpeedButton;
    BbPsqCli: TSpeedButton;
    BbPsqVen: TSpeedButton;
    Label1: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    Label13: TLabel;
    BbPsqFor: TSpeedButton;
    Label26: TLabel;
    Label20: TLabel;
    Label8: TLabel;
    Label22: TLabel;
    Label28: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    EdPsqNumRes: TdxColorEdit;
    EdPsqDtfRes1: TdxColorDateEdit;
    EdPsqDtfRes2: TdxColorDateEdit;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    rgOrdem: TRadioGroup;
    EdPsqUfeFat: TdxColorPickEdit;
    EdPsqNroNfs: TdxColorEdit;
    GroupBox1: TGroupBox;
    ckFP: TCheckBox;
    ckFG: TCheckBox;
    ckCN: TCheckBox;
    EdPsqCodFor: TdxColorEdit;
    EdPsqNomFor: TdxColorEdit;
    PaintBox: TPaintBox;
    FatDesNRONFS: TIntegerField;
    FatDesDTEFAT: TDateTimeField;
    FatDesPESLIQDES: TFloatField;
    FatPedOBSDES: TStringField;
    FatPedNOMCLI: TStringField;
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
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure BbPsqForClick(Sender: TObject);
    procedure EdPsqCodForKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodForExit(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    DteRes: TDateTime;
    sBase, sFiltro, sFGFiltro, sCNFiltro, sOrdem: string;
    CodEmp, NumRes, SeqLib, SeqFat: integer;
  end;

var
  fmManLn6: TfmManLn6;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqCli, PsqVen,
  PsqPfa, ManPri, AuxPsq, ManDes, ManEma, AuxIni, ManEm2;

{$R *.DFM}

procedure TfmManLn6.FormCreate(Sender: TObject);
begin
  inherited;

  EdPsqDtfRes1.Date := Date;
  EdPsqDtfRes2.Date := Date;

  FatPed.Close;
  FatPed.Params[0].AsDateTime := EdPsqDtfRes1.Date;
  FatPed.Open;

  sBase := ' Select FatPed.CodEmp,' +
    '        FatPed.DteRes,' +
    '        FatPed.NumRes,' +
    '        FatPed.SeqLib,' +
    '        FatPed.SeqFat,' +
    '        FatPed.DteFat,' +
    '        FatPed.HreFat,' +
    '        FatPed.NroNfs,' +
    '        FatPed.CodCli,' +
    '        FatPed.CodVen,' +
    '        FatPed.CodPfa,' +
    '        FatPed.TotFat,' +
    '        FatPed.TotIpi,' +
    '        FatPed.TotSub,' +
    '        FatPed.TotDsr,' +
    '        FatPed.TotGer,' +
    '        FinCli.NomCli,' +
    '        FinVen.ApeVen' +
    ' From FatPed LEFT JOIN FinCli ON (FatPed.CodCli = FinCli.CodCli)' +
    '             LEFT JOIN FinVen ON (FatPed.CodVen = FinVen.CodVen)';

end;

procedure TfmManLn6.bSelecionarClick(Sender: TObject);
var
  sInTip: string;
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
  sFGFiltro := '';
  sCNFiltro := '';
  sInTip := '';

  sInTip := '(';
  if ckFP.Checked then
    sInTip := sInTip + QuotedStr('FP')
  else
    sInTip := sInTip + QuotedStr('');

  sInTip := sInTip + ',';

  if ckFG.Checked then
    sInTip := sInTip + QuotedStr('FG')
  else
    sInTip := sInTip + QuotedStr('');
  sInTip := sInTip + ',';

  if ckCN.Checked then
    sInTip := sInTip + QuotedStr('CN')
  else
    sInTip := sInTip + QuotedStr('');
  sInTip := sInTip + ')';

  //sFiltro := ' Where FatPed.SitFat = ''' + 'Faturado' + ''' and FatPed.ENVNFE = ''' + 'Sim' + '''';

  case rgOrdem.Itemindex of
    0: sOrdem := ' Order by 14,11';
    1: sOrdem := ' Order by 15,11';
    2: sOrdem := ' Order by 7,11';
    3: sOrdem := ' Order by 11';
  end;

  if Trim(EdPsqNumRes.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.NumRes = ''' + EdPsqNumRes.Text + '''';
  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodEmp = ''' + EdPsqCodEmp.Text + '''';
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodCli = ''' + EdPsqCodCli.Text + '''';
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodVen = ''' + EdPsqCodVen.Text + '''';
  if Trim(EdPsqUfeFat.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.UfeFat = ''' + EdPsqUfeFat.Text + '''';
  if Trim(EdPsqNroNfs.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.NroNfs = ''' + EdPsqNroNfs.Text + '''';
  if Trim(fLimpaStr(EdPsqDtfRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteFat >= ''' + fDateToSQL(EdPsqDtfRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDtfRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteFat <= ''' + fDateToSQL(EdPsqDtfRes2.Date) + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFGFiltro := sFGFiltro + ' and FatGer.CodEmp = ''' + EdPsqCodEmp.Text + '''';
  if Trim(EdPsqCodCli.Text) <> '' then
    sFGFiltro := sFGFiltro + ' and FatGer.CodCli = ''' + EdPsqCodCli.Text + '''';
  if Trim(EdPsqCodVen.Text) <> '' then
    sFGFiltro := sFGFiltro + ' and FatGer.CodVen = ''' + EdPsqCodVen.Text + '''';
  if Trim(EdPsqUfeFat.Text) <> '' then
    sFGFiltro := sFGFiltro + ' and FatGer.UfeGer = ''' + EdPsqUfeFat.Text + '''';
  if Trim(EdPsqNroNfs.Text) <> '' then
    sFGFiltro := sFGFiltro + ' and FatGer.NroNfs = ''' + EdPsqNroNfs.Text + '''';
  if Trim(fLimpaStr(EdPsqDtfRes1.Text)) <> '' then
    sFGFiltro := sFGFiltro + ' and FatGer.DteFat >= ''' + fDateToSQL(EdPsqDtfRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDtfRes2.Text)) <> '' then
    sFGFiltro := sFGFiltro + ' and FatGer.DteFat <= ''' + fDateToSQL(EdPsqDtfRes2.Date) + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sCNFiltro := sCNFiltro + ' and CmpNfs.CodEmp = ''' + EdPsqCodEmp.Text + '''';
  if Trim(EdPsqCodFor.Text) <> '' then
    sCNFiltro := sCNFiltro + ' and CmpNfs.CodFor = ''' + EdPsqCodCli.Text + '''';
  //if Trim(EdPsqCodVen.Text) <> '' then sCNFiltro := sCNFiltro + ' and CmpNfs.CodVen = ''' + EdPsqCodVen.Text + '''';
  if Trim(EdPsqUfeFat.Text) <> '' then
    sCNFiltro := sCNFiltro + ' and CmpNfs.UfeNfs = ''' + EdPsqUfeFat.Text + '''';
  if Trim(EdPsqNroNfs.Text) <> '' then
    sCNFiltro := sCNFiltro + ' and CmpNfs.NroNfs = ''' + EdPsqNroNfs.Text + '''';
  if Trim(fLimpaStr(EdPsqDtfRes1.Text)) <> '' then
    sCNFiltro := sCNFiltro + ' and CmpNfs.DteFat >= ''' + fDateToSQL(EdPsqDtfRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDtfRes2.Text)) <> '' then
    sCNFiltro := sCNFiltro + ' and CmpNfs.DteFat <= ''' + fDateToSQL(EdPsqDtfRes2.Date) + '''';

  sBase := 'Select ''FP'' Tip, FatPed.CodEmp,FatPed.DteRes,FatPed.NumRes,FatPed.SeqLib,FatPed.SeqFat, '
    + ' FatPed.DteFat,FatPed.HreFat,FatPed.NroNfs,FatPed.CodCli,FatPed.CodVen,FatPed.CodPfa, '
    + ' FatPed.TotFat,FatPed.TotIpi,FatPed.TotSub,FatPed.TotDsr,FatPed.TotGer,Cast(FinCli.NomCli as varchar(70))As NomCli, '
    + ' Cast(FinVen.ApeVen as VarChar(20)) as Apeven,FatPed.ObsDes '
    + ' From FatPed '
    + ' LEFT JOIN FinCli ON (FatPed.CodCli = FinCli.CodCli) '
    + ' LEFT JOIN FinVen ON (FatPed.CodVen = FinVen.CodVen) '
    + ' Where FatPed.SitFat = ''Faturado'' and FatPed.ENVNFE = ''Sim'' '
    + ' and ''FP'' in ' + sInTip
    + sFiltro
    + ' union all '
    + ' Select ''FG'' Tip, FatGer.CodEmp,FatGer.dteger, 0 numger,FatGer.seqite,FatGer.seqser, '
    + ' FatGer.dtefat,FatGer.hrefat,FatGer.NroNfs,FatGer.CodCli,FatGer.CodVen,FatGer.CodPfa, '
    + ' FatGer.TOTITE,FatGer.TotIpi,FatGer.TotSub,FatGer.TotDsr,FatGer.TotGer,Cast(FinCli.NomCli as varchar(70))As NomCli, '
    + ' Cast(FinVen.ApeVen as VarChar(20)) as Apeven,FatGer.ObsDes '
    + ' From FatGer '
    + ' LEFT JOIN FinCli ON (FatGer.CodCli = FinCli.CodCli) '
    + ' LEFT JOIN FinVen ON (FatGer.CodVen = FinVen.CodVen) '
    + ' Where FatGer.sitger = ''Faturado'' and FatGer.ENVNFE = ''Sim'' '
    + ' and ''FG'' in ' + sInTip
    + sFGFiltro
    + ' union all '
    + ' Select ''CN'' Tip, CmpNfs.CodEmp,CmpNfs.dtenfs, 0 numnfs,CmpNfs.seqite,CmpNfs.seqnfs, '
    + ' CmpNfs.DteFat,CmpNfs.HreFat,CmpNfs.NroNfs,CmpNfs.codfor,0 CodVen,CmpNfs.CodPfa, '
    + ' CmpNfs.TOTITE,CmpNfs.TotIpi,CmpNfs.TotSub,CmpNfs.totdes,CmpNfs.TotGer, Cast(finfor.nomfor as VarChar(70))As NomCli, '
    + ' Cast('' '' as VarChar(20)) ApeVen,CmpNfs.ObsDes '
    + ' From CmpNfs '
    + ' LEFT JOIN finfor ON (CmpNfs.codfor = finfor.codfor) '
    + ' Where CmpNfs.sitnfs = ''Faturado'' and CmpNfs.ENVNFE = ''Sim'' '
    + ' and ''CN'' in ' + sInTip
    + sCNFiltro
    + sOrdem;

  with FatPed, SQL do
  begin
    Close;
    //Clipboard.asText:=sbase;
    Text := sBase;
    Open;
  end;

  grPed.SetFocus;

end;

procedure TfmManLn6.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmManLn6.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmManLn6.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManLn6.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLn6.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLn6.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmManLn6.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLn6.BbPsqCliClick(Sender: TObject);
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

procedure TfmManLn6.BbPsqVenClick(Sender: TObject);
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

procedure TfmManLn6.EdPsqNumResExit(Sender: TObject);
begin
  if Trim(EdPsqNumRes.Text) <> '' then
  begin

    EdPsqNroNfs.Clear;
    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;
    EdPsqUfeFat.Clear;

    EdPsqDtfRes1.Clear;
    EdPsqDtfRes2.Clear;

  end;
end;

procedure TfmManLn6.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNroNfs.SetFocus;
end;

procedure TfmManLn6.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLn6.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLn6 := nil;
end;

procedure TfmManLn6.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManLn6.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNroNfs.Text) <> '' then
  begin

    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;
    EdPsqUfeFat.Clear;
    EdPsqNumRes.Clear;

    EdPsqDtfRes1.Clear;
    EdPsqDtfRes2.Clear;

  end;
end;

procedure TfmManLn6.bIncluirClick(Sender: TObject);
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

      if Screen.Forms[i] is TfmManDes then
        Found := i;

    end;

    if Found >= 0 then
    begin

      fmManDes.WindowState := wsNormal;
      fmManDes.BringToFront;

    end
    else
    begin

      if FatPedNroNfs.Value > 0 then
      begin
        fmManDes := TfmManDes.Create(Self);
        fmManDes.Show;

      end;
    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManLn6.bImprimirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is TfmManDes then
      Found := i;

  end;

  if Found >= 0 then
  begin

    fmManDes.WindowState := wsNormal;
    fmManDes.BringToFront;

  end
  else
  begin

    if FatPedCodEmp.Value > 0 then
    begin

      if fMsg('Confirma Impress�o da Minuta de Despacho ?', 'O') then
  begin

     if(Trim(fmManGDB.BuscaSimples('FATPAR','FLG_MINUTA_RESUMIDA',' 1 = 1')) <> 'Sim') then
        begin
          try

            fmManEma := TfmManEma.Create(Self);

            fmManEma.FatPed.Close;
            fmManEma.FatPed.ParamByName('CodEmp').AsInteger := FatPedCODEMP.AsInteger;
            fmManEma.FatPed.ParamByName('dtefat').AsDateTime := FatPedDTEFAT.AsDateTime;
            fmManEma.FatPed.ParamByName('NroNfs').AsInteger := FatPedNroNfs.AsInteger;
            fmManEma.FatPed.ParamByName('Tip').AsString := FatPedTip.AsString;
            fmManEma.FatPed.Open;

            fmManEma.FatPed.Open;

            fmManEma.FatDes.Close;
            fmManEma.FatDes.ParamByName('CodEmp').AsInteger := FatPedCODEMP.AsInteger;
            fmManEma.FatDes.ParamByName('dtefat').AsDateTime := FatPedDTEFAT.AsDateTime;
            fmManEma.FatDes.ParamByName('NroNfs').AsInteger := FatPedNroNfs.AsInteger;
            fmManEma.FatDes.Open;

            fmManEma.RLReport1.PreviewModal;

          finally

            FreeAndNil(fmManEma);

          end;
        end
     else
      begin
         try

            fmManEm2 := TfmManEm2.Create(Self);

            fmManEm2.FatPed.Close;
            fmManEm2.FatPed.ParamByName('CodEmp').AsInteger := FatPedCODEMP.AsInteger;
            fmManEm2.FatPed.ParamByName('dtefat').AsDateTime := FatPedDTEFAT.AsDateTime;
            fmManEm2.FatPed.ParamByName('NroNfs').AsInteger := FatPedNroNfs.AsInteger;
            fmManEm2.FatPed.ParamByName('Tip').AsString := FatPedTip.AsString;
            fmManEm2.FatPed.Open;

            fmManEm2.FatPed.Open;

            fmManEm2.FatDes.Close;
            fmManEm2.FatDes.ParamByName('CodEmp').AsInteger := FatPedCODEMP.AsInteger;
            fmManEm2.FatDes.ParamByName('dtefat').AsDateTime := FatPedDTEFAT.AsDateTime;
            fmManEm2.FatDes.ParamByName('NroNfs').AsInteger := FatPedNroNfs.AsInteger;
            fmManEm2.FatDes.Open;

            fmManEm2.RLReport1.PreviewModal;

          finally

            FreeAndNil(fmManEm2);

          end;
      end;
  end;
    end;
  end;
end;

procedure TfmManLn6.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    close;

  if key = 115 then
    bIncluir.OnClick(Sender);

  if key = 116 then
    bImprimir.OnClick(Sender);

end;

procedure TfmManLn6.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
  Found: Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is TfmManDes then
      Found := i;

  end;

  if Found >= 0 then
    fmsgErro('Existem Minutas em Andamento. Por Favor Feche o Formulario.', nil)
  else
    Action := CaFree;

end;

procedure TfmManLn6.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnNomCli.Caption := ' ' + FatPedNomCli.Value;
  pnApeVen.Caption := ' ' + FatPedApeVen.Value;
  pnHreFat.Caption := ' ' + FatPedHreFat.Value;

  if FatPedTIP.AsString = 'FP' then
    pnOrigNF.Caption := ' NF Comercial'
  else if FatPedTIP.AsString = 'FG' then
    pnOrigNF.Caption := ' Outros Tipos de NF'
  else if FatPedTIP.AsString = 'CN' then
    pnOrigNF.Caption := ' NF de Devolu��o'
  else
    pnOrigNF.Caption := ' ';
end;

procedure TfmManLn6.BbPsqForClick(Sender: TObject);
begin
  inherited;
  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'F';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodFor > 0 then
    begin

      EdPsqNomFor.Text := fmAuxIni.NomFor;
      EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManLn6.EdPsqCodForKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManLn6.EdPsqCodForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'F';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodFor > 0 then
      begin

        EdPsqNomFor.Text := fmAuxIni.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;
  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'F';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodFor > 0 then
      begin

        EdPsqNomFor.Text := fmAuxPsq.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxPsq.CodFor);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;
  end;
end;

procedure TfmManLn6.EdPsqCodForExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodFor.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomFor From FinFor Where FinFor.CodFor = ' + QuotedStr(EdPsqCodFor.Text);
      Open;

      EdPsqNomFor.Text := FieldByName('NomFor').AsString;

    end;

  end
  else
    EdPsqNomFor.Text := '';
end;

end.
