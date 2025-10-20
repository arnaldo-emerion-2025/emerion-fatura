unit ManCta;

interface

uses

  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxDBELib, Psock, NMsmtp, ppDB, ppDBPipe, ppStrtch, ppMemo,
  ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, dxfProgressBar, dxColorCurrencyEdit, dxColorEdit,
  dxColorDateEdit, dxColorPickEdit;

type
  TfmManCta = class(TfmPadrao)
    PedCta: TwwQuery;
    DsCta: TwwDataSource;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteCt1: TdxColorDateEdit;
    EdPsqId_PedCta: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteCt2: TdxColorDateEdit;
    Label25: TLabel;
    EdPsqTotCt1: TdxColorCurrencyEdit;
    Label19: TLabel;
    EdPsqTotCt2: TdxColorCurrencyEdit;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    bPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    grCta: ThGrid;
    quSql: TwwQuery;
    bExcluir: TSpeedButton;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    pnSitCta: TPanel;
    PedCt2: TwwQuery;
    UpCta: TUpdateSQL;
    pnDteCta: TPanel;
    Label15: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    EdPsqNomEmp: TdxColorEdit;
    PaintBox: TPaintBox;
    dbCta: TdxDBGraphicEdit;
    dbCt2: TdxDBGraphicEdit;
    grCt2: ThGrid;
    DsCt2: TwwDataSource;
    pnNomCli: TPanel;
    PedCtaCODPFA: TStringField;
    PedCtaTOTITE: TFloatField;
    PedCtaTOTGER: TFloatField;
    PedCt2DESCT2: TStringField;
    PedCt2QTPCT2: TFloatField;
    PedCt2VLQCT2: TFloatField;
    PedCt2ICMCT2: TFloatField;
    PedCt2TOTCT2: TFloatField;
    bAtender: TSpeedButton;
    pnId_PedRes: TPanel;
    pnTotRen: TPanel;
    pnTotMka: TPanel;
    PedCtaAPEVEN: TStringField;
    PedCtaID_PEDCTA: TIntegerField;
    PedCtaDTECTA: TDateTimeField;
    PedCtaHRECTA: TStringField;
    PedCtaCODCLI: TIntegerField;
    PedCtaNOMCLI: TStringField;
    PedCtaCODVEN: TIntegerField;
    PedCtaTOTREN: TFloatField;
    PedCtaID_PEDRES: TIntegerField;
    PedCtaSITCTA: TStringField;
    PedCt2ID_PEDCT2: TIntegerField;
    PedCt2CODCLP: TStringField;
    PedCt2CODGRU: TStringField;
    PedCt2CODSUB: TStringField;
    PedCt2CODPRO: TStringField;
    PedCt2IPICT2: TFloatField;
    PedCt2TOTREN: TFloatField;
    PedCt2CODITE: TStringField;
    Label1: TLabel;
    EdPsqSitCta: TdxColorPickEdit;
    PedCt2VCSCT2: TFloatField;
    PedCt2TOTCST: TFloatField;
    Label2: TLabel;
    EdPsqCodAtd: TdxColorEdit;
    bPsqAtd: TSpeedButton;
    EdPsqNomAtd: TdxColorEdit;
    PedPar: TwwQuery;
    PedParTIPATD: TStringField;
    PedParEXIREN: TStringField;
    PedParFLGCOT: TStringField;
    PedCtaQTICT4: TIntegerField;
    PedCtaID_PEDGER: TIntegerField;
    PedCtaFLGGER: TStringField;
    PedCtaPEDCLI: TStringField;
    pnQtdReg: TPanel;
    pnTotReg: TPanel;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqId_PedCtaExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqId_PedCtaKeyPress(Sender: TObject; var Key: Char);
    procedure bEditarClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bAtenderClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PedCt2CODITEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure DsCtaDataChange(Sender: TObject; Field: TField);
    procedure DsCt2DataChange(Sender: TObject; Field: TField);
    procedure bPsqAtdClick(Sender: TObject);
    procedure EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodAtdExit(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    Id_PedCta : integer;
    sBase,sFiltro,sOrdem : string;
  end;

var
  Permissao : string;
  fmManCta  : TfmManCta;

implementation

uses dxDemoUtils, ShellApi, Bbgeral, Bbfuncao, Bbmensag, Bbacesso,
     ManGDB, PsqEmp, ManPri, AuxPsq, ManCt2, AuxIni, PsqEs2, PsqEst, ManE02,
     ManE03, ImpF03, EnvCon;

{$R *.DFM}

procedure TfmManCta.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedCta.Id_PedCta,'+
           '        PedCta.DteCta,'+
           '        PedCta.HreCta,'+
           '        PedCta.CodPfa,'+
           '        PedCta.CodCli,'+
           '        PedCta.NomCli,'+
           '        PedCta.CodVen,'+
           '        PedCta.QtiCt4,'+
           '        PedCta.TotIte,'+
           '        PedCta.TotGer,'+
           '        PedCta.TotRen,'+
           '        PedCta.Id_PedRes,'+
           '        PedCta.Id_PedGer,'+
           '        PedCta.FlgGer,'+
           '        PedCta.PedCli,'+
           '        PedCta.SitCta,'+
           '        FinVen.ApeVen'+
           ' From PedCta LEFT JOIN FinVen ON (PedCta.CodVen = FinVen.CodVen)';

end;

procedure TfmManCta.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

  sOrdem  := ' Order by PedCta.Id_PedCta';

  sFiltro := '';

  if Trim( EdPsqSitCta.Text ) <> 'Todos' then sFiltro := ' Where PedCta.SitCta = '+ QuotedStr(EdPsqSitCta.Text);

  if Trim( EdPsqId_PedCta.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedCta.Id_PedCta = '+ QuotedStr(EdPsqId_PedCta.Text)
     else
        sFiltro := ' Where PedCta.Id_PedCta = '+ QuotedStr(EdPsqId_PedCta.Text);

  end;

  if Trim( EdPsqCodCli.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedCta.CodCli = '+ QuotedStr(EdPsqCodCli.Text)
     else
        sFiltro := ' Where PedCta.CodCli = '+ QuotedStr(EdPsqCodCli.Text);

  end;

  if GCodVen_Id > 0 then begin

     if Trim( EdPsqCodVen.Text ) <> '' then begin

        if Trim( EdPsqCodAtd.Text ) <> '' then begin

           if pos('Where', sFiltro) > 0 then
              sFiltro := sFiltro + ' and ( PedCta.CodVen = '+ QuotedStr(EdPsqCodVen.Text) +' or PedCta.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text) +' )'
           else
              sFiltro := ' Where ( PedCta.CodVen = '+ QuotedStr(EdPsqCodVen.Text) +' or PedCta.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text) +' )';

           end
        else
           begin

           if pos('Where', sFiltro) > 0 then
              sFiltro := sFiltro + ' and PedCta.CodVen = '+ QuotedStr(EdPsqCodVen.Text)
           else
              sFiltro := ' Where PedCta.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

        end;

        end
     else
        begin

        if Trim( EdPsqCodAtd.Text ) <> '' then begin

           if pos('Where', sFiltro) > 0 then
              sFiltro := sFiltro + ' and PedCta.CodAtd = '+ QuotedStr(EdPsqCodVen.Text)
           else
              sFiltro := ' Where PedCta.CodAtd = '+ QuotedStr(EdPsqCodVen.Text);

        end;
     end;

     end
  else
     begin

     if Trim( EdPsqCodVen.Text ) <> '' then begin

        if pos('Where', sFiltro) > 0 then
           sFiltro := sFiltro + ' and PedCta.CodVen = '+ QuotedStr(EdPsqCodVen.Text)
        else
           sFiltro := ' Where PedCta.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

     end;

     if Trim( EdPsqCodAtd.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and PedCta.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text)
        else
           sFiltro := ' Where PedCta.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text);

     end;
  end;

  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedCta.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text)
     else
        sFiltro := ' Where PedCta.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

  end;

  if Trim(fLimpaStr(EdPsqDteCt1.Text)) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + '  and PedCta.DteCta >= '+ QuotedStr(fDateToSQL(EdPsqDteCt1.Date))
     else
        sFiltro := ' Where PedCta.DteCta >= '+ QuotedStr(fDateToSQL(EdPsqDteCt1.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteCt2.Text)) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + '  and PedCta.DteCta <= '+ QuotedStr(fDateToSQL(EdPsqDteCt2.Date))
     else
        sFiltro := ' Where PedCta.DteCta <= '+ QuotedStr(fDateToSQL(EdPsqDteCt2.Date));

  end;

  if EdPsqTotCt1.Value > 0 then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedCta.TotCta >= '+ QuotedStr(fConvertValor(EdPsqTotCt1.Text))
     else
        sFiltro := ' Where PedCta.TotCta >= '+ QuotedStr(fConvertValor(EdPsqTotCt1.Text));

  end;

  if EdPsqTotCt2.Value > 0 then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedCta.TotCta <= '+ QuotedStr(fConvertValor(EdPsqTotCt2.Text))
     else
        sFiltro := ' Where PedCta.TotCta <= '+ QuotedStr(fConvertValor(EdPsqTotCt2.Text));

  end;

  with PedCta,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  CountRegistros;
  
  PedCt2.Close;
  PedCt2.Open;

  grCta.SetFocus;

end;

procedure TfmManCta.EdPsqCodCliExit(Sender: TObject);
begin
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

procedure TfmManCta.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.sCodVen_Id := GCodVen_Id;

        fmAuxIni.sGUs_Id := GGUs_Id;

        fmAuxIni.sCodAtd_Id := GCodAtd_Id;

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxIni.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqCodCli.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.sCodVen_Id := GCodVen_Id;

        fmAuxPsq.sGUs_Id := GGUs_Id;

        fmAuxPsq.sCodAtd_Id := GCodAtd_Id;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxPsq.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxPsq.CodCli);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqCodCli.SetFocus;

  end;
end;

procedure TfmManCta.EdPsqCodVenExit(Sender: TObject);
begin
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

procedure TfmManCta.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqNomVen.Text := fmAuxIni.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqCodVen.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           EdPsqNomVen.Text := fmAuxPsq.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqCodVen.SetFocus;

  end;
end;

procedure TfmManCta.bPsqCliClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'C';

     fmAuxIni.sCodVen_Id := GCodVen_Id;

     fmAuxIni.sGUs_Id := GGUs_Id;

     fmAuxIni.sCodAtd_Id := GCodAtd_Id;

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCli > 0 then begin

        EdPsqNomCli.Text := fmAuxIni.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqCodCli.SetFocus;

end;

procedure TfmManCta.bPsqVenClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdPsqNomVen.Text := fmAuxIni.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqCodVen.SetFocus;

end;

procedure TfmManCta.EdPsqId_PedCtaExit(Sender: TObject);
begin
  if Trim( EdPsqId_PedCta.Text ) <> '' then begin

     if (GCodVen_Id = 0) or (GGus_Id = 1) then begin

        EdPsqCodVen.Clear;
        EdPsqNomVen.Clear;

     end;

     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;

     EdPsqDteCt1.Clear;
     EdPsqDteCt2.Clear;

     EdPsqTotCt1.Value := 0;
     EdPsqTotCt2.Value := 0;

  end;
end;

procedure TfmManCta.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

  if key = 117 then bExcluir.OnClick(Sender);

  if key = 118 then bAtender.OnClick(Sender);

end;

procedure TfmManCta.FormShow(Sender: TObject);
begin
  inherited;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then
     Permissao := fAcesso('PED0203')
  else
     Permissao := 'SSSSS';

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if PedParExiRen.Value <> 'Sim' then begin

        pnTotRen.Visible := False;
        pnTotMka.Visible := False;
        
     end;
  end;

  if copy(Permissao,1,1) = 'N' then bIncluir.Enabled := False;
  if copy(Permissao,2,1) = 'N' then bEditar.Enabled := False;
  if copy(Permissao,3,1) = 'N' then bExcluir.Enabled := False;

  sOrdem := ' Order by PedCta.Id_PedCta';

  if GCodVen_Id > 0 then begin

     if Trim(PedParTipAtd.Value) = 'Vendedor' then
        sFiltro := ' Where PedCta.DteCta = '+ QuotedStr(fDateToSQL(Date)) +' and (PedCta.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id)) +' or PedCta.CodAtd = '+ QuotedStr(IntToStr(GCodVen_Id)) +')'
     else
        begin

        if GCodAtd_Id > 0 then
           sFiltro := ' Where PedCta.DteCta = '+ QuotedStr(fDateToSQL(Date)) +' and (PedCta.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id)) +' or PedCta.CodAtd = '+ QuotedStr(IntToStr(GCodAtd_Id)) +')'
        else
           sFiltro := ' Where PedCta.DteCta = '+ QuotedStr(fDateToSQL(Date)) +' and PedCta.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

     end;

     with PedCta,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;

     CountRegistros;
     
     end
  else
     begin

     if GCodAtd_Id > 0 then begin

        sFiltro := ' Where PedCta.DteCta = '+ QuotedStr(fDateToSQL(Date)) +' and PedCta.CodAtd = '+ QuotedStr(IntToStr(GCodAtd_Id));

        with PedCta,SQL do begin

             Close;
             Text := sBase + sFiltro + sOrdem;
             Open;

        end;

        CountRegistros;
        
        end
     else
        begin

        sFiltro := ' Where PedCta.DteCta = '+ QuotedStr(fDateToSQL(Date));

        with PedCta,SQL do begin

             Close;
             Text := sBase + sFiltro + sOrdem;
             Open;

        end;

        CountRegistros;
        
     end;
  end;

  if GCodVen_Id > 0 then begin

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        EdPsqNomAtd.Text := GNomVen_Id;
        EdPsqCodAtd.Text := IntToStr( GCodVen_Id );

        if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then begin

           bPsqAtd.Enabled := False;

           EdPsqCodAtd.Enabled := False;

           EdPsqCodAtd.Font.Style := [fsBold];

        end;
     end;

     EdPsqNomVen.Text := GNomVen_Id;
     EdPsqCodVen.Text := IntToStr( GCodVen_Id );

     if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then begin

        bPsqVen.Enabled := False;

        EdPsqCodVen.Enabled := False;

        EdPsqCodVen.Font.Style := [fsBold];

     end;
  end;

  if GCodAtd_Id > 0 then begin

     if Trim(PedParTipAtd.Value) = 'Atendente' then begin

        EdPsqNomAtd.Text := GNomAtd_Id;
        EdPsqCodAtd.Text := IntToStr( GCodAtd_Id );

        if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then begin

           bPsqAtd.Enabled := False;

           EdPsqCodAtd.Enabled := False;

           EdPsqCodAtd.Font.Style := [fsBold];

        end;
     end;   
  end;

  EdPsqDteCt1.Date := Date;
  EdPsqDteCt2.Date := Date;  

  EdPsqId_PedCta.SetFocus;

end;

procedure TfmManCta.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCta.EdPsqId_PedCtaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManCta.bEditarClick(Sender: TObject);
var
  i     : Integer;
  Found : integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,2,1) = 'S' then begin

        if PedCtaId_PedCta.Value > 0 then begin

           Found := -1;

           for i := 0 to Screen.FormCount - 1 do begin

               if Screen.Forms[i] is TfmManCt2 then Found := i;

           end;

           if Found >= 0 then begin

              fmsg('Existe uma cotação em andamento.','E');

              fmManCt2.WindowState := wsNormal;
              fmManCt2.BringToFront;

              end
           else
              begin

              Id_PedCta := PedCtaId_PedCta.Value;
              
              sFiltro := ' Where PedCta.Id_PedCta = '+ QuotedStr(IntToStr(PedCtaId_PedCta.Value));

              with PedCta,SQL do begin

                   Close;
                   Text := sBase + sFiltro;
                   Open;

              end;

              CountRegistros;
              
              if Trim(PedCtaSitCta.Value) = 'Concluida' then begin

                 PedCta.Edit;

                 PedCtaSitCta.Value := 'Processo de Alteracao';

                 with PedCta do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;
              end;

              fmManCt2 := TfmManCt2.Create(Self);
              fmManCt2.Show;

           end;
        end;

        end
     else
        fMsgErro(GMensagem_0002,nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManCta.bIncluirClick(Sender: TObject);
var
  i     : Integer;
  Found : integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,1,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManCt2 then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe uma cotação em andamento.','E');

           fmManCt2.WindowState := wsNormal;
           fmManCt2.BringToFront;

           end
        else
           begin

           Id_PedCta := 0;

           sFiltro := ' Where PedCta.Id_PedCta = 0';

           with PedCta,SQL do begin

                Close;
                Text := sBase + sFiltro;
                Open;

           end;

           CountRegistros;
           
           fmManCt2 := TfmManCt2.Create(Self);
           fmManCt2.Show;

        end;

        end
     else
        fMsgErro(GMensagem_0002,nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManCta.bExcluirClick(Sender: TObject);
var
  i     : Integer;
  Found : integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,3,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManCt2 then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe uma cotação em andamento.','E');

           fmManCt2.WindowState := wsNormal;
           fmManCt2.BringToFront;

           end
        else
           begin

           if PedCtaId_PedCta.Value > 0 then begin

              sFiltro := ' Where PedCta.Id_PedCta = '+ QuotedStr(IntToStr(PedCtaId_PedCta.Value));

              with PedCta,SQL do begin

                   Close;
                   Text := sBase + sFiltro;
                   Open;

              end;

              CountRegistros;
              
              if fMsg('Confirma a Exclusão da Cotacao ?','S') then begin

                 PedCta.Delete;

                 with PedCta do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         PedCta.CancelUpdates;

                         grCta.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;

                 PedCta.Close;
                 PedCta.Open;

                 CountRegistros;
                 
                 grCta.SetFocus;

              end;
           end;
        end;   

        end
     else
        fMsgErro(GMensagem_0002,nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManCta.bImprimirClick(Sender: TObject);
var
  i     : Integer;
  Found : integer;
begin
  inherited;
  
  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManCt2 then Found := i;

  end;

  if Found >= 0 then begin

     fmsg('Existe uma cotação em andamento.','E');

     fmManCt2.WindowState := wsNormal;
     fmManCt2.BringToFront;

     end
  else
     begin

     if PedCtaId_PedCta.Value > 0 then begin

        sFiltro := ' Where PedCta.Id_PedCta = '+ QuotedStr(IntToStr(PedCtaId_PedCta.Value));

        with PedCta,SQL do begin

             Close;
             Text := sBase + sFiltro;
             Open;

        end;

        CountRegistros;
        
        if fMsg('Confirma impressão da via interna ?','O') then begin

           try

              fmManE02 := TfmManE02.Create(Self);

              fmManE02.PedCta.Close;
              fmManE02.PedCta.Params[0].AsInteger := PedCtaId_PedCta.Value;
              fmManE02.PedCta.Open;

              fmManE02.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE02);

           end;
        end;

        if fMsg('Confirma impressão da via do cliente ?','O') then begin

           try

              fmManE03 := TfmManE03.Create(Self);

              fmManE03.PedCta.Close;
              fmManE03.PedCta.Params[0].AsInteger := PedCtaId_PedCta.Value;
              fmManE03.PedCta.Open;

              fmManE03.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE03);

           end;
        end;

        if PedParFlgCot.Value = 'Sim' then begin

           if PedCtaQtiCt4.Value > 0 then begin

              if fMsg('Confirma impressão da via de cotação para os fornecedores ?','O') then begin

                 try

                    fmImpF03 := TfmImpF03.Create(Self);

                    fmImpF03.Id_PedCta := PedCtaId_PedCta.Value;

                    fmImpF03.PedCt4.Close;
                    fmImpF03.PedCt4.Params[0].AsInteger := PedCtaId_PedCta.Value;
                    fmImpF03.PedCt4.Open;

                    fmImpF03.ShowModal;

                 finally

                    FreeAndNil(fmImpF03);

                 end;
              end;
           end;
        end;
     end;
  end;   
end;

procedure TfmManCta.EdPsqCodEmpExit(Sender: TObject);
begin
  inherited;
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
          Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('NomEmp').AsString ) <> '' then
             EdPsqNomEmp.Text := FieldByName('NomEmp').AsString
          else
             begin

             EdPsqNomEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqNomEmp.Text := '';
end;

procedure TfmManCta.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmManCta.bPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManCta.bAtenderClick(Sender: TObject);
var
  i       : Integer;
  Found   : integer;
  Acessos : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then
        Acessos := fAcesso('PED0201')
     else
        Acessos := 'SSSSS';

     if copy(Acessos,2,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManCt2 then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe uma cotação em andamento.','E');

           fmManCt2.WindowState := wsNormal;
           fmManCt2.BringToFront;

           end
        else
           begin

           if PedCtaId_PedCta.Value > 0 then begin

              Id_PedCta := PedCtaId_PedCta.Value;

              sFiltro := ' Where PedCta.Id_PedCta = '+ QuotedStr(IntToStr(PedCtaId_PedCta.Value));

              with PedCta,SQL do begin

                   Close;
                   Text := sBase + sFiltro;
                   Open;

              end;

              CountRegistros;
              
              if Trim(PedCtaSitCta.Value) = 'Concluida' then begin

                 if fMsg('Deseja atender a cotação em novo contrato a ser gerenciado ?','O') then begin

                    try

                       fmEnvCon := TfmEnvCon.Create(Self);
                       fmEnvCon.ShowModal;

                    finally

                       FreeAndNil(fmEnvCon);

                    end;

                    end
                 else
                    begin
                    
                    PedCta.Edit;

                    PedCtaSitCta.Value := 'Atendida';

                    with PedCta do begin

                         fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                         try

                            ApplyUpdates; {Tenta aplicar as alterações};

                            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                         except

                            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                            PedCta.CancelUpdates;

                            EdPsqId_PedCta.SetFocus;

                            raise;

                         end;

                         CommitUpdates; {sucesso!, limpa o cache...}

                    end;
                 end;
                 
                 PedCta.Close;
                 PedCta.Open;

                 CountRegistros;
                 
                 end
              else
                 fmsgErro('Operação não Pode ser Realizada. Cotação não Concluida.',Nil);

           end;
        end;
        
        end
     else
        fMsgErro(GMensagem_0002,nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManCta.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #5 then begin {Estoque}

     if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) or (GFlgGer = 'Sim') then begin

        if not Assigned(fmPsqEs2) then begin

           try

              fmPsqEs2 := TfmPsqEs2.Create(Self);

              fmPsqEs2.sEntr := 'N';

              fmPsqEs2.sCodClp := '1';

              if ( Trim(PedCt2CodGru.Value) <> '' ) or
                 ( Trim(PedCt2CodSub.Value) <> '' ) or
                 ( Trim(PedCt2CodPro.Value) <> '' ) then begin

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
                              ' Where EstPro.CodClp = '''+ '1' +''''+
                              '   and EstPro.FlbPro = '''+ ' ' +'''';

                      if Trim( PedCt2CodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '''+ PedCt2CodGru.Value +'''';
                      if Trim( PedCt2CodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '''+ PedCt2CodSub.Value +'''';
                      if Trim( PedCt2CodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '''+ PedCt2CodPro.Value +'''';

                      Text := Text + ' Order by EstPro.DscPro';

                      Open;

                 end;
              end;

              fmPsqEs2.ShowModal;

           finally

              FreeAndNil(fmPsqEs2);

           end;
        end;   

        end
     else
        begin

        if not Assigned(fmPsqEst) then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select FLGCOD From PedPar';
                Open;

                GFLGCOD := FieldbyName('FLGCOD').AsString;

           end;
        
           try

              fmPsqEst := TfmPsqEst.Create(Self);

              fmPsqEst.sEntr := 'N';

              fmPsqEst.FlgCod := GFLGCOD;
              
              fmPsqEst.sCodClp := '1';

              fmPsqEst.ShowModal;

           finally

              FreeAndNil(fmPsqEst);

           end;
        end;   
     end;
  end;
end;

procedure TfmManCta.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i     : Integer;
  Found : integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManCt2 then Found := i;

  end;

  if Found >= 0 then
     fmsgErro('Existem Cotações em Andamento. Por Favor Feche o Formulario.',Nil)
  else
     Action := CaFree;

end;

procedure TfmManCta.PedCt2CODITEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Trim( PedCt2CodClp.Value ) <> '' then
     Text := PedCt2CodClp.Value+ '-' +PedCt2CodGru.Value+ '.' +PedCt2CodSub.Value+ '.' +PedCt2CodPro.Value
  else
     Text := '';
end;

procedure TfmManCta.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCta := nil;
end;                                                                                                                                                    

procedure TfmManCta.DsCtaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  
  pnTotRen.Caption := FormatFloat('##0.00',PedCtaTotRen.Value)+' %';

  if PedCtaId_PedRes.Value > 0 then
     pnId_PedRes.Caption := ' Pedido de Venda No. '+ fNumZeros(IntToStr(PedCtaId_PedRes.Value),7)
  else
     begin

     if PedCtaId_PedGer.Value > 0 then
        pnId_PedRes.Caption := ' Gerenciamento No. '+ fNumZeros(IntToStr(PedCtaId_PedGer.Value),7)
     else
        pnId_PedRes.Caption := ' Pedido de Venda No.';

  end;
  
  pnSitCta.Caption := PedCtaSitCta.Value;

  if PedCtaCodCli.Value > 0 then
     pnNomCli.Caption := ' Cliente : '+ fNumZeros(IntToStr(PedCtaCodCli.Value),5)+ ' - ' +PedCtaNomCli.Value
  else
     pnNomCli.Caption := ' Cliente : '+ PedCtaNomCli.Value;
     
  if PedCtaId_PedCta.Value > 0 then
     pnDteCta.Caption := ' Emitida Em '+ DateToStr(PedCtaDteCta.Value)+ ' ' +PedCtaHreCta.Value+' '
  else
     pnDteCta.Caption := ' ';

end;

procedure TfmManCta.DsCt2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if pnTotMka.Visible then begin

     pnTotMka.Caption := 'Markup do Item '+FormatFloat('##0.00',PedCt2TotRen.Value)+'%';

     if PedCt2TotCst.Value > 0 then
        grCt2.Hint := ' Custo Unitário : ' + PreString(FormatFloat('###,###,##0.0000',PedCt2VcsCt2.Value),15) + ' Total Custo : ' + PreString(FormatFloat('###,###,##0.00',PedCt2TotCst.Value),15)
     else
        grCt2.Hint := '';

     end
  else
     grCt2.Hint := '';
     
end;

procedure TfmManCta.bPsqAtdClick(Sender: TObject);
begin
  inherited;

  if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqNomAtd.Text := fmAuxIni.NomVen;
           EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     end
  else
     begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Atendentes';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodAtd > 0 then begin

           EdPsqNomAtd.Text := fmAuxIni.NomAtd;
           EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodAtd);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  EdPsqCodAtd.SetFocus;
  
end;

procedure TfmManCta.EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'V';

           fmAuxIni.ShowModal;

           if fmAuxIni.CodVen > 0 then begin

              EdPsqNomAtd.Text := fmAuxIni.NomVen;
              EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodVen);

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        end
     else
        begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Atendentes';

           fmAuxIni.ShowModal;

           if fmAuxIni.CodAtd > 0 then begin

              EdPsqNomAtd.Text := fmAuxIni.NomAtd;
              EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodAtd);

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;
     end;

     EdPsqCodAtd.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'V';

           fmAuxPsq.ShowModal;

           if fmAuxPsq.CodVen > 0 then begin

              EdPsqNomAtd.Text := fmAuxPsq.NomVen;
              EdPsqCodAtd.Text := IntToStr(fmAuxPsq.CodVen);

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        end
     else
        begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Atendentes';

           fmAuxPsq.ShowModal;

           if fmAuxPsq.CodAtd > 0 then begin

              EdPsqNomAtd.Text := fmAuxPsq.NomAtd;
              EdPsqCodAtd.Text := IntToStr(fmAuxPsq.CodAtd);

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;
     end;

     EdPsqCodAtd.SetFocus;

  end;
end;

procedure TfmManCta.EdPsqCodAtdExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodAtd.Text ) <> '' then begin

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdPsqCodAtd.Text);
             Open;

             EdPsqNomAtd.Text := FieldByName('ApeVen').AsString;

        end;

        end
     else
        begin

        with quSql,SQL do begin

             Close;
             Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text);
             Open;

             EdPsqNomAtd.Text := FieldByName('ApeAtd').AsString;

        end;
     end;
        
     end
  else
     EdPsqNomAtd.Text := '';
end;

procedure TfmManCta.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(PedCta.TotGer) as TotReg,'+
               '        Count(*) as QtdReg'+
               ' From PedCta'+ sFiltro;
       Open;

       if FieldbyName('QtdReg').AsInteger > 0 then begin

          if FieldbyName('QtdReg').AsInteger = 1 then
             pnQtdReg.Caption := IntToStr(FieldbyName('QtdReg').AsInteger)+' Cotação'
          else
             pnQtdReg.Caption := IntToStr(FieldbyName('QtdReg').AsInteger)+' Cotações';

          pnTotReg.Caption := FormatFloat('###,###,##0.00',FieldbyName('TotReg').AsFloat)+' ';

          end
       else
          begin

          pnQtdReg.Caption := '0 Cotação';

          pnTotReg.Caption := '0'+ decimalseparator +'00 ';

       end;
  end;
end;

end.

