unit ManLn5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxDBELib, dxColorPickEdit,
  dxColorCurrencyEdit, dxColorDateEdit, dxColorEdit;

type
  TfmManLn5 = class(TfmPadrao)
    FatDup: TwwQuery;
    DsDup: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    EdPsqNumRes1: TdxColorEdit;
    Label28: TLabel;
    EdPsqDteFat1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteFat2: TdxColorDateEdit;
    Label25: TLabel;
    EdPsqTotFat1: TdxColorCurrencyEdit;
    Label19: TLabel;
    EdPsqTotFat2: TdxColorCurrencyEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    EdPsqCodBan: TdxColorEdit;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqCli: TSpeedButton;
    BbPsqVen: TSpeedButton;
    bPsqBan: TSpeedButton;
    EdPsqNomBan: TdxColorEdit;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    grDup: ThGrid;
    quSql: TwwQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EdPsqNroNfs1: TdxColorEdit;
    bImprimir: TSpeedButton;
    RDprint1: TRDprint;
    EdPsqNroNfs2: TdxColorEdit;
    Label3: TLabel;
    FatDupCODEMP: TIntegerField;
    FatDupDTECRE: TDateTimeField;
    FatDupNUMCRE: TFloatField;
    FatDupNROCRP: TIntegerField;
    FatDupPRACRP: TIntegerField;
    FatDupDTVCRP: TDateTimeField;
    FatDupVLPCRP: TFloatField;
    FatDupVPPCRP: TFloatField;
    FatDupVJPCRP: TFloatField;
    FatDupVDSCRP: TFloatField;
    FatDupDULCRP: TDateTimeField;
    FatDupFLGIMP: TStringField;
    UpDup: TUpdateSQL;
    FatDupTECCLI: TStringField;
    FatDupENCCLI: TStringField;
    FatDupBACCLI: TStringField;
    FatDupCICCLI: TStringField;
    FatDupCECCLI: TStringField;
    FatDupUFCCLI: TStringField;
    FatDupNRCCLI: TStringField;
    FatDupNOMCLI: TStringField;
    FatDupCODCLI: TIntegerField;
    FatDupCGCCLI: TStringField;
    FatDupINSCLI: TStringField;
    EdPsqNumRes2: TdxColorEdit;
    Label9: TLabel;
    FatDupARQDUP: TStringField;
    FatDupCODBAN: TIntegerField;
    FatDupCODUSU: TIntegerField;
    FatDupTOTCRE: TFloatField;
    FatDupRFCCLI: TStringField;
    dbRes: TdxDBGraphicEdit;
    rgTipo: TRadioGroup;
    rgCancelados: TRadioGroup;
    FatDupRESFAT: TIntegerField;
    FatDupRESORC: TIntegerField;
    FatDupNUMRES: TIntegerField;
    FatDupNRONFS: TIntegerField;
    FatDupVLSCRP: TFloatField;
    FatDupNUMCRP: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure bPsqBanClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodBanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumRes1KeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodBanExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bImprimirClick(Sender: TObject);
    procedure grDupKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
    ArqDup, sFiltro: string;
  end;

var
  fmManLn5: TfmManLn5;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqCli, PsqVen,
  PsqBan, ManPri, AuxPsq;

{$R *.DFM}

procedure TfmManLn5.FormCreate(Sender: TObject);
begin
  inherited;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatDup Where CodUsu = :CodUsu';

    with Params do
    begin

      Params[0].AsInteger := GUsu_Id;

    end;

    ExecSQL;

  end;

  Randomize;
  ArqDup := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
    copy(TimeToStr(Time), 1, 2) +
    copy(TimeToStr(Time), 4, 2) +
    copy(TimeToStr(Time), 7, 2) +
    FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
    FNumZeros(Trim(IntToStr(Random(50000))), 5);

end;

procedure TfmManLn5.bSelecionarClick(Sender: TObject);
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

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := ' Where FinCrp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FinCrp.CodCli = ' + QuotedStr(EdPsqCodCli.Text)
    else
      sFiltro := sFiltro + ' and FinCrp.CodCli = ' + QuotedStr(EdPsqCodCli.Text);

  end;

  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FinCrp.CodVen = ' + QuotedStr(EdPsqCodVen.Text)
    else
      sFiltro := sFiltro + ' and FinCrp.CodVen = ' + QuotedStr(EdPsqCodVen.Text);

  end;

  if Trim(EdPsqCodBan.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FinCrp.CodBan = ' + QuotedStr(EdPsqCodBan.Text)
    else
      sFiltro := sFiltro + ' and FinCrp.CodBan = ' + QuotedStr(EdPsqCodBan.Text);

  end;

  if Trim(EdPsqNumRes1.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FinCre.ResFat >= ' + QuotedStr(EdPsqNumRes1.Text)
    else
      sFiltro := sFiltro + ' and FinCre.ResFat >= ' + QuotedStr(EdPsqNumRes1.Text);

  end;

  if Trim(EdPsqNumRes2.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FinCre.ResFat <= ' + QuotedStr(EdPsqNumRes2.Text)
    else
      sFiltro := sFiltro + ' and FinCre.ResFat <= ' + QuotedStr(EdPsqNumRes2.Text);

  end;

  if Trim(EdPsqNroNfs1.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FinCre.NroNfs >= ' + QuotedStr(EdPsqNroNfs1.Text)
    else
      sFiltro := sFiltro + ' and FinCre.NroNfs >= ' + QuotedStr(EdPsqNroNfs1.Text);

  end;

  if Trim(EdPsqNroNfs2.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FinCre.NroNfs <= ' + QuotedStr(EdPsqNroNfs2.Text)
    else
      sFiltro := sFiltro + ' and FinCre.NroNfs <= ' + QuotedStr(EdPsqNroNfs2.Text);

  end;

  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FinCre.DteCre >= ' + QuotedStr(fDateToSQL(EdPsqDteFat1.Date))
    else
      sFiltro := sFiltro + ' and FinCre.DteCre >= ' + QuotedStr(fDateToSQL(EdPsqDteFat1.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteFat2.Text)) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FinCre.DteCre <= ' + QuotedStr(fDateToSQL(EdPsqDteFat2.Date))
    else
      sFiltro := sFiltro + ' and FinCre.DteCre <= ' + QuotedStr(fDateToSQL(EdPsqDteFat2.Date));

  end;

  if EdPsqTotFat1.Value > 0 then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FinCre.TotCre >= ' + QuotedStr(fConvertValor(EdPsqTotFat1.Text))
    else
      sFiltro := sFiltro + ' and FinCre.TotCre >= ' + QuotedStr(fConvertValor(EdPsqTotFat1.Text));

  end;

  if EdPsqTotFat2.Value > 0 then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FinCre.TotCre <= ' + QuotedStr(fConvertValor(EdPsqTotFat2.Text))
    else
      sFiltro := sFiltro + ' and FinCre.TotCre <= ' + QuotedStr(fConvertValor(EdPsqTotFat2.Text));

  end;

  if GFlgAce = 'Sim' then
  begin

    if GEmpLog > 0 then
    begin

      if pos('Where', sFiltro) = 0 then
        sFiltro := ' Where FinCre.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
      else
        sFiltro := sFiltro + ' and FinCre.CodEmp = ' + QuotedStr(IntToStr(GEmpLog));

    end
    else
    begin

      if pos('Where', sFiltro) = 0 then
        sFiltro := ' Where GerEmp.CodFil > 0'
      else
        sFiltro := sFiltro + ' and GerEmp.CodFil > 0';

    end;
  end;

  if pos('Where', sFiltro) = 0 then
  begin
    case rgCancelados.ItemIndex of
      0: sFiltro := ' Where ( ( FinCrp.FlgDev = ''' + ' ' + ''' and FinCrp.FlgDel = ''' + ' ' + ''' ) or ( FinCrp.FlpCrp = ''' + '*' + ''' ) )';
      1: sFiltro := ' Where (   FinCrp.FlgDev = ''' + '*' + '''  or FinCrp.FlgDel = ''' + '*' + ''' )';
    end;
  end
  else
  begin

    case rgCancelados.ItemIndex of
      0: sFiltro := sFiltro + ' and ( ( FinCrp.FlgDev = ''' + ' ' + ''' and FinCrp.FlgDel = ''' + ' ' + ''' ) or ( FinCrp.FlpCrp = ''' + '*' + ''' ) )';
      1: sFiltro := sFiltro + ' and (   FinCrp.FlgDev = ''' + '*' + '''  or FinCrp.FlgDel = ''' + '*' + ''' )';
    end;
  end;

  if pos('Where', sFiltro) = 0 then
  begin

    case rgTipo.Itemindex of
      0: sFiltro := ' Where FinCrp.FlpCrp = ''' + '*' + '''';
      1: sFiltro := ' Where FinCrp.FlpCrp = ''' + ' ' + '''';
    end;

  end
  else
  begin
    case rgTipo.Itemindex of
      0: sFiltro := sFiltro + ' and FinCrp.FlpCrp = ''' + '*' + '''';
      1: sFiltro := sFiltro + ' and FinCrp.FlpCrp = ''' + ' ' + '''';
    end;
  end;

  quSQL.Close;
  quSQL.SQL.Text := ' Delete From FatDup Where FatDup.ArqDup = ' + QuotedStr(ArqDup);
  quSQL.ExecSQL;

  quSQL.Close;
  quSQL.SQL.Text := ' Insert Into FatDup(ArqDup,CodEmp,DteCre,NumCre,NumCrp,NroCrp,PraCrp,DtvCrp,VlpCrp,VppCrp,VjpCrp,VdsCrp,DulCrp,CodBan,NroNfs,ResFat,ResOrc,CodUsu,Flgimp) '+
                    ' Select '+ QuotedStr(ArqDup) +','+
                    '        FinCrp.CodEmp,' +
                    '        FinCrp.DteCre,' +
                    '        FinCrp.NumCre,' +
                    '        FinCrp.NumCrp,' +
                    '        FinCrp.NroCrp,' +
                    '        FinCrp.PraCrp,' +
                    '        FinCrp.DtvCrp,' +
                    '        FinCrp.VlpCrp,' +
                    '        FinCrp.VppCrp,' +
                    '        FinCrp.VjpCrp,' +
                    '        FinCrp.VdsCrp,' +
                    '        FinCrp.DulCrp,' +
                    '        FinCrp.CodBan,' +
                    '        FinCre.NroNfs,' +
                    '        FinCre.ResFat,' +
                    '        FinCre.ResOrc,' +
                             QuotedStr(IntToStr(GUsu_Id))+',' +
                             QuotedStr('*') +
                    ' From FinCrp LEFT JOIN FinCre ON (FinCrp.CodEmp = FinCre.CodEmp)' +
                    '                             AND (FinCrp.DteCre = FinCre.DteCre)' +
                    '                             AND (FinCrp.NumCre = FinCre.NumCre)' +
                    '             LEFT JOIN FinCli ON (FinCrp.CodCli = FinCli.CodCli)' +
                    '             LEFT JOIN GerEmp ON (FinCrp.CodEmp = GerEmp.CodEmp)' + sFiltro;
  quSQL.ExecSQL;

  FatDup.Close;
  FatDup.Params[0].AsString := ArqDup;
  FatDup.Open;

  if FatDupCodEmp.Value > 0 then
    bImprimir.Enabled := True;

  grDup.SetFocus;

end;

procedure TfmManLn5.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmManLn5.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmManLn5.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManLn5.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLn5.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLn5.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmManLn5.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLn5.BbPsqCliClick(Sender: TObject);
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

procedure TfmManLn5.BbPsqVenClick(Sender: TObject);
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

procedure TfmManLn5.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumRes1.SetFocus;
end;

procedure TfmManLn5.bPsqBanClick(Sender: TObject);
begin
  inherited;

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

  try

    fmPsqBan := TfmPsqBan.Create(Self);

    if GFlgAce = 'Sim' then
    begin

      with fmPsqBan.FinBan, SQL do
      begin

        Close;
        Text := ' Select * From FinBan' +
          ' Where Exists(Select * From FinCnb Where FinCnb.CodBan = FinBan.CodBan and FinCnb.FlgInt = ''' + 'Nao' + ''' )' +
          ' Order by NomBan';
        Open;

      end;
    end;

    fmPsqBan.ShowModal;

    if fmPsqBan.CodBan > 0 then
    begin

      EdPsqCodBan.Text := IntToStr(fmPsqBan.CodBan);
      EdPsqNomBan.Text := fmPsqBan.NomBan;

    end;

  finally

    FreeAndNil(fmPsqBan);

  end;
end;

procedure TfmManLn5.EdPsqCodBanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

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

    try

      fmPsqBan := TfmPsqBan.Create(Self);

      if GFlgAce = 'Sim' then
      begin

        with fmPsqBan.FinBan, SQL do
        begin

          Close;
          Text := ' Select * From FinBan' +
            ' Where Exists(Select * From FinCnb Where FinCnb.CodBan = FinBan.CodBan and FinCnb.FlgInt = ''' + 'Nao' + ''' )' +
            ' Order by NomBan';
          Open;

        end;
      end;

      fmPsqBan.ShowModal;

      if fmPsqBan.CodBan > 0 then
      begin

        EdPsqCodBan.Text := IntToStr(fmPsqBan.CodBan);
        EdPsqNomBan.Text := fmPsqBan.NomBan;

      end;

    finally

      FreeAndNil(fmPsqBan);

    end;
  end;
end;

procedure TfmManLn5.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLn5.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLn5 := nil;
end;

procedure TfmManLn5.EdPsqNumRes1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManLn5.EdPsqCodBanExit(Sender: TObject);
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

procedure TfmManLn5.bImprimirClick(Sender: TObject);
var
  ArqTexto: TStringList;
  CgcCli, ValorExt, Linha: string;
  ImpDup1: array[1..127] of string;
  ImpDup2: array[1..127] of string;
  QtdLin, Lin, Inc, Col, Reg, Qtd: integer;
begin
  inherited;
  if FatDupCodEmp.Value > 0 then
  begin

    if fMsg('Confirma Emissão de Duplicata para os Vencimentos ?', 'O') then
    begin

      if FileExists('C:\Emerion\DUPCOL.TXT') then
      begin

        ArqTexto := TStringList.Create;
        ArqTexto.LoadFromFile('C:\Emerion\DUPCOL.TXT');

        qtdLin := ArqTexto.Count - 1; {Quantidade de Linhas no Arquivo DUPCOL.TXT}

        rdprint1.OpcoesPreview.Preview := False;
        rdprint1.OpcoesPreview.PreviewZoom := 100;
        rdprint1.TamanhoQteLPP := seis;
        rdprint1.UsaGerenciadorImpr := True;

        rdprint1.TamanhoQteColunas := 136;
        rdprint1.FonteTamanhoPadrao := s17cpp;

        {Programação dos Eventos: desliga eventos cabecalho/rodape}
        rdprint1.OnNewPage := nil;
        rdprint1.OnBeforeNewPage := nil;

        rdprint1.TamanhoQteLinhas := 36;

        FatDup.First;

        with rdprint1 do
        begin

          Abrir;

          if setup then
          begin

            while not FatDup.Eof do
            begin

              if FatDupFlgImp.Value = '*' then
              begin

                ImpDup1[001] := copy(FormatDateTime('dd/mm/yyyy', FatDupDteCre.Value), 1, 2) + ' de ' + Trim(fDMes(FatDupDteCre.Value)) + ' de ' +
                  copy(FormatDateTime('dd/mm/yyyy', FatDupDteCre.Value), 7, 4);
                ImpDup2[001] := 'Comp12';

                ImpDup1[002] := PreString(FormatFloat('###,##0.00', FatDupTotCre.Value), 10); {Total da Nota}
                ImpDup2[002] := 'Comp12';

                if FatDupNroNfs.Value > 0 then
                  ImpDup1[003] := Prestring(IntToStr(FatDupNroNfs.Value), 8) {No. Documento Fiscal}
                else
                begin

                  if FatDupNumRes.Value > 0 then
                    ImpDup1[003] := Prestring(IntToStr(FatDupNumRes.Value), 8); {No. do Pedido de Venda}

                end;

                ImpDup2[003] := 'Comp12';

                ImpDup1[015] := ' '; {Cobr}
                ImpDup2[015] := 'Comp12';

                {Valor da Parcela}
                if rgTipo.ItemIndex = 1 then
                  ImpDup1[004] := PreString(FormatFloat('###,##0.00', FatDupVlsCrp.Value), 10)
                else
                  ImpDup1[004] := PreString(FormatFloat('###,##0.00', FatDupVlpCrp.Value), 10);

                ImpDup2[004] := 'Comp12';

                ImpDup1[005] := fNumZeros(IntToStr(FatDupNroCrp.Value), 3); {Sequencia de Vencimentos}
                ImpDup2[005] := 'Comp12';

                ImpDup1[006] := FormatDateTime('dd/mm/yyyy', FatDupDtvCrp.Value); {Vencimento}
                ImpDup2[006] := 'Comp12';

                if rgTipo.ItemIndex = 1 then
                  ValorExt := fExtenso(FatDupVlsCrp.Value)
                else
                  ValorExt := fExtenso(FatDupVlpCrp.Value);

                if Length(Trim(ValorExt)) < 150 then
                  ValorExt := Trim(ValorExt) + fReplicate('*', 150 - Length(Trim(ValorExt)));

                ImpDup1[007] := FatDupNomCli.Value; {Nome}
                ImpDup2[007] := 'Comp12';

                ImpDup1[008] := fNumZeros(IntToStr(FatDupCodCli.Value), 10); {Código do Cliente}
                ImpDup2[008] := 'Comp12';

                ImpDup1[009] := Trim(FatDupTecCli.Value) + ' ' + Trim(FatDupEncCli.Value) + ',' + Trim(FatDupNrcCli.Value) + ' ' + Trim(FatDupRfcCli.Value) +
                  ' ' + Trim(FatDupBacCli.Value); {Endereco}
                ImpDup2[009] := 'Comp12';

                ImpDup1[010] := FatDupCicCli.Value; {Cidade}
                ImpDup2[010] := 'Comp12';

                ImpDup1[011] := FatDupUfcCli.Value; {Estado}
                ImpDup2[011] := 'Comp12';

                ImpDup1[012] := copy(FatDupCecCli.Value, 1, 5) + '-' + copy(FatDupCecCli.Value, 6, 3); {Cep}
                ImpDup2[012] := 'Comp12';

                CgcCli := fLimpaStr(FatDupCgcCli.Value);

                if Length(Trim(CgcCli)) <= 11 then
                  ImpDup1[013] := copy(CgcCli, 1, 3) + '.' + copy(CgcCli, 4, 3) + '.' +
                    copy(CgcCli, 7, 3) + '-' + copy(CgcCli, 10, 2)
                else
                  ImpDup1[013] := copy(CgcCli, 01, 2) + '.' + copy(CgcCli, 3, 3) + '.' +
                    copy(CgcCli, 06, 3) + '/' + copy(CgcCli, 9, 4) + '-' +
                    copy(CgcCli, 13, 2);

                ImpDup2[013] := 'Comp12';

                ImpDup1[014] := FatDupInsCli.Value; {Inscrição Estadual}
                ImpDup2[014] := 'Comp12';

                ImpDup1[016] := copy(ValorExt, 001, 75); {Valor por Extenso 1}
                ImpDup2[016] := 'Comp20';

                ImpDup1[017] := copy(ValorExt, 076, 75); {Valor por Extenso 2}
                ImpDup2[017] := 'Comp20';

                Lin := 0; {Linha que Esta Sendo Impressas} {Incrementos de Linhas}
                Inc := 0; {Incrementos de Linhas}
                Col := 0; {Posição da Coluna a ser Impressa}
                Reg := 0; {Numero do Vetor a Ser Impresso}
                Qtd := 0; {Quantidade de Linhas Verificadas}

                while Qtd <= qtdLin do
                begin

                  Linha := ArqTexto[Qtd];

                  if Trim(Linha) <> '' then
                  begin

                    if pos('Sim', Linha) > 0 then
                    begin

                      Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3)); {Linha encontrada e de Incremento de Saltos de Linhas}
                      Col := StrToInt(copy(Linha, pos(',', Linha) + 1, 3));

                      if pos('salto', Linha) > 0 then
                      begin

                        Lin := Lin + Inc;

                        imp(Lin, Col, '');

                      end
                      else
                      begin

                        reg := StrToInt(copy(Linha, pos('#', Linha) + 1, 5));

                        Lin := Lin + Inc;

                        if ImpDup2[Reg] = 'Comp12' then
                          impf(Lin, Col, ImpDup1[reg], [Comp12]);
                        if ImpDup2[Reg] = 'Comp20' then
                          impf(Lin, Col, ImpDup1[reg], [Comp20]);
                        if ImpDup2[Reg] = 'Comp17' then
                          impf(Lin, Col, ImpDup1[reg], [Comp17]);

                      end;
                    end;
                  end;

                  Qtd := Qtd + 1;

                end;

                FatDup.Next;

                if not FatDup.Eof then
                  Novapagina;

              end
              else
                FatDup.Next;

            end;

            Fechar;

          end;
        end;

        rdprint1.TamanhoQteLinhas := 66;

      end
      else
        fmsgErro('Arquivo de Configuração da Duplicata não Encontrado DUPCOL.TXT . Consulte o Administrador do Sistema para Maiores Informações', nil);
    end;
  end;
end;

procedure TfmManLn5.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 115 then
  begin

    if FatDupCodEmp.Value > 0 then
    begin

      if bImprimir.Enabled then
        bImprimir.OnClick(Sender);

    end;
  end;
end;

procedure TfmManLn5.grDupKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if FatDupCodEmp.Value > 0 then
  begin

    if key = 32 then
    begin

      FatDup.Edit;

      if FatDupFlgImp.Value = '' then
        FatDupFlgImp.Value := '*'
      else
        FatDupFlgImp.Clear;

      with FatDup do
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

          if FatDup.State <> dsBrowse then
            FatDup.CancelUpdates;

          grDup.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      grDup.SetFocus;

    end;
  end;
end;

procedure TfmManLn5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatDup Where FatDup.ArqDup = ' + QuotedStr(ArqDup);
    ExecSQL;

  end;

  Action := CaFree;

end;

end.
