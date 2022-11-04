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
    EdPsqNumCta: TdxColorEdit;
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
    rgOrdem: TRadioGroup;
    Label10: TLabel;
    Bevel1: TBevel;
    grCta: ThGrid;
    rgStatus: TRadioGroup;
    quSql: TwwQuery;
    bExcluir: TSpeedButton;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    pnSitCta: TPanel;
    PedCt2: TwwQuery;
    UpCta: TUpdateSQL;
    pnDteCta: TPanel;
    Label15: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    Label24: TLabel;
    bPsqEmp: TSpeedButton;
    EdPsqNomEmp: TdxColorEdit;
    PaintBox: TPaintBox;
    dbCta: TdxDBGraphicEdit;
    dbCt2: TdxDBGraphicEdit;
    grCt2: ThGrid;
    DsCt2: TwwDataSource;
    pnNomCli: TPanel;
    PedCtaNUMCTA: TIntegerField;
    PedCtaCODVEN: TIntegerField;
    PedCtaCODPFA: TStringField;
    PedCtaTOTITE: TFloatField;
    PedCtaTOTGER: TFloatField;
    PedCtaNOMCLI: TStringField;
    PedCt2CODEMP: TIntegerField;
    PedCt2DTECTA: TDateTimeField;
    PedCt2NUMCTA: TIntegerField;
    PedCt2DESCT2: TStringField;
    PedCt2QTPCT2: TFloatField;
    PedCt2VLQCT2: TFloatField;
    PedCt2ICMCT2: TFloatField;
    PedCt2TOTCT2: TFloatField;
    bAtender: TSpeedButton;
    pnNumRes: TPanel;
    pnTotRen: TPanel;
    pnTotMka: TPanel;
    PedCt2OBSCT2: TStringField;
    PedCt2CODUND: TStringField;
    PedCt2VLUCT2: TFloatField;
    PedCt2DSCCT2: TFloatField;
    PedCt2CODITE: TStringField;
    PedCt2NOMMRC: TStringField;
    PedCtaCODEMP: TIntegerField;
    PedCtaDTECTA: TDateTimeField;
    PedCtaSITCTA: TStringField;
    PedCtaTOTREN: TFloatField;
    PedCtaNUMRES: TIntegerField;
    PedCtaHRECTA: TStringField;
    PedCt2TOTREN: TFloatField;
    PedCt2CODGRU: TStringField;
    PedCt2CODSUB: TStringField;
    PedCt2CODPRO: TStringField;
    Label5: TLabel;
    Label14: TLabel;
    EdPsqCodAtd: TdxColorEdit;
    bPsqAtd: TSpeedButton;
    EdPsqNomAtd: TdxColorEdit;
    PedCtaAPEVEN: TStringField;
    PedCtaAPEATD: TStringField;
    PedCtaCODATD: TIntegerField;
    PedCtaCODCLI: TIntegerField;
    pnTotCst: TPanel;
    pnVcsCt2: TPanel;
    PedCt2VCSCT2: TFloatField;
    PedCt2TOTCST: TFloatField;
    PedCtaTOTCST: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqNumCtaExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumCtaKeyPress(Sender: TObject; var Key: Char);
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
    procedure bPsqAtdClick(Sender: TObject);
    procedure EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodAtdExit(Sender: TObject);
    procedure DsCtaDataChange(Sender: TObject; Field: TField);
    procedure DsCt2DataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    DteCta : TDateTime;
    CodEmp,NumCta : integer;
    sBase,sFiltro,sOrdem : string;
  end;

var
  Permissao : string;
  fmManCta: TfmManCta;

implementation

uses dxDemoUtils, ShellApi, Fpreview, Bbgeral, Bbfuncao, Bbmensag, Bbacesso,
     ManGDB, PsqEmp, ManPri, AuxPsq, ManCt2, AuxIni, ManEma, PsqEs2, ManEm2,
     ManEm3, PsqEst, PsqAt2;

{$R *.DFM}

procedure TfmManCta.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedCta.CodEmp,'+
           '        PedCta.DteCta,'+
           '        PedCta.NumCta,'+
           '        PedCta.HreCta,'+
           '        PedCta.CodCli,'+
           '        PedCta.NomCli,'+
           '        PedCta.CodVen,'+
           '        PedCta.CodAtd,'+
           '        PedCta.CodPfa,'+
           '        PedCta.TotIte,'+
           '        PedCta.TotGer,'+
           '        PedCta.TotCst,'+
           '        PedCta.TotRen,'+
           '        PedCta.NumRes,'+
           '        PedCta.SitCta,'+
           '        FinVen.ApeVen,'+
           '        FinAtd.ApeAtd'+
           ' From PedCta LEFT JOIN FinVen ON (PedCta.CodVen = FinVen.CodVen)'+
           '             LEFT JOIN FinAtd ON (PedCta.CodAtd = FinAtd.CodAtd)';

  if GCodVen_Id > 0 then begin

     sOrdem := ' Order by PedCta.NumCta';

     sFiltro := ' Where PedCta.CodVen = '''+ IntToStr( GCodVen_Id ) +''' and PedCta.DteCta = '''+ fDateToSQL(Date) +'''';

     with PedCta,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;
     
     end
  else
     begin

     PedCta.Close;
     PedCta.Params[0].AsDateTime := Date;
     PedCta.Open;

  end;
end;

procedure TfmManCta.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

  sOrdem  := '';
  sFiltro := '';

  case rgOrdem.Itemindex of
       0: sOrdem := ' Order by PedCta.CodCli,PedCta.CodEmp,PedCta.DteCta,PedCta.NumCta';
       1: sOrdem := ' Order by PedCta.CodVen,PedCta.CodEmp,PedCta.DteCta,PedCta.NumCta';
       2: sOrdem := ' Order by PedCta.DteCta,PedCta.CodEmp,PedCta.NumCta';
       3: sOrdem := ' Order by PedCta.NumCta';
  end;

  case rgStatus.Itemindex of
       0: sFiltro := ' Where PedCta.SitCta = '''+ 'Nao Concluida'         +'''';
       1: sFiltro := ' Where PedCta.SitCta = '''+ 'Concluida'             +'''';
       2: sFiltro := ' Where PedCta.SitCta = '''+ 'Processo de Alteracao' +'''';
       3: sFiltro := ' Where PedCta.SitCta = '''+ 'Atendida'              +'''';
  end;

  if Trim( EdPsqNumCta.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedCta.NumCta = '''+ EdPsqNumCta.Text +''''
     else
        sFiltro := ' Where PedCta.NumCta = '''+ EdPsqNumCta.Text +'''';

  end;

  if Trim( EdPsqCodCli.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedCta.CodCli = '''+ EdPsqCodCli.Text +''''
     else
        sFiltro := ' Where PedCta.CodCli = '''+ EdPsqCodCli.Text +'''';

  end;

  if Trim( EdPsqCodVen.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedCta.CodVen = '''+ EdPsqCodVen.Text +''''
     else
        sFiltro := ' Where PedCta.CodVen = '''+ EdPsqCodVen.Text +'''';

  end;

  if Trim( EdPsqCodAtd.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedCta.CodAtd = '''+ EdPsqCodAtd.Text +''''
     else
        sFiltro := ' Where PedCta.CodAtd = '''+ EdPsqCodAtd.Text +'''';

  end;

  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedCta.CodEmp = '''+ EdPsqCodEmp.Text +''''
     else
        sFiltro := ' Where PedCta.CodEmp = '''+ EdPsqCodEmp.Text +'''';

  end;

  if Trim(fLimpaStr(EdPsqDteCt1.Text)) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + '  and PedCta.DteCta >= '''+fDateToSQL(EdPsqDteCt1.Date)+''''
     else
        sFiltro := ' Where PedCta.DteCta >= '''+fDateToSQL(EdPsqDteCt1.Date)+'''';

  end;

  if Trim(fLimpaStr(EdPsqDteCt2.Text)) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + '  and PedCta.DteCta <= '''+fDateToSQL(EdPsqDteCt2.Date)+''''
     else
        sFiltro := ' Where PedCta.DteCta <= '''+fDateToSQL(EdPsqDteCt2.Date)+'''';

  end;

  if EdPsqTotCt1.Value > 0 then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedCta.TotCta >= '''+FloatToStr(EdPsqTotCt1.Value)+''''
     else
        sFiltro := ' Where PedCta.TotCta >= '''+FloatToStr(EdPsqTotCt1.Value)+'''';

  end;

  if EdPsqTotCt2.Value > 0 then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedCta.TotCta <= '''+FloatToStr(EdPsqTotCt2.Value)+''''
     else
        sFiltro := ' Where PedCta.TotCta <= '''+FloatToStr(EdPsqTotCt2.Value)+'''';

  end;

  with PedCta,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  PedCt2.Close;
  PedCt2.Open;

  grCta.SetFocus;

end;

procedure TfmManCta.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomCli From FinCli Where CodCli = '''+EdPsqCodCli.Text+'''';
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
          Text := 'Select ApeVen From FinVen Where CodVen = '''+EdPsqCodVen.Text+'''';
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

procedure TfmManCta.EdPsqNumCtaExit(Sender: TObject);
begin
  if Trim( EdPsqNumCta.Text ) <> '' then begin

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

     pnTotRen.Visible := False;
     pnTotMka.Visible := False;
     pnVcsCt2.Visible := False;
     pnTotCst.Visible := False;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select * From PedPar';
       Open;

       GExiFor := FieldByName('ExiFor').AsString;
       GExiCli := FieldByName('ExiCli').AsString;

  end;

  if copy(Permissao,1,1) = 'N' then bIncluir.Enabled := False;
  if copy(Permissao,2,1) = 'N' then bEditar.Enabled := False;
  if copy(Permissao,3,1) = 'N' then bExcluir.Enabled := False;

  if GCodAtd_Id > 0 then begin

     sOrdem := ' Order by PedCta.NumCta';

     sFiltro := ' Where PedCta.CodAtd = '''+ IntToStr( GCodAtd_Id ) +''' and PedCta.DteCta = '''+ fDateToSQL(Date) +'''';

     with PedCta,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;

     end
  else
     begin
        
     if GCodVen_Id > 0 then begin

        sOrdem := ' Order by PedCta.NumCta';

        sFiltro := ' Where PedCta.CodVen = '''+ IntToStr( GCodVen_Id ) +''' and PedCta.DteCta = '''+ fDateToSQL(Date) +'''';

        with PedCta,SQL do begin

             Close;
             Text := sBase + sFiltro + sOrdem;
             Open;

        end;

        end
     else
        begin

        PedCta.Close;
        PedCta.Params[0].AsDateTime := Date;
        PedCta.Open;

     end;
  end;

  if GCodVen_Id > 0 then begin

     EdPsqNomVen.Text := GNomVen_Id;
     EdPsqCodVen.Text := IntToStr( GCodVen_Id );

     if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then begin

        bPsqVen.Enabled := False;

        EdPsqCodVen.Enabled := False;

        EdPsqCodVen.Font.Style := [fsBold];

     end;
  end;

  if GCodAtd_Id > 0 then begin

     EdPsqNomAtd.Text := GNomAtd_Id;
     EdPsqCodAtd.Text := IntToStr( GCodAtd_Id );

     if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then begin

        bPsqAtd.Enabled := False;

        EdPsqCodAtd.Enabled := False;

        EdPsqCodAtd.Font.Style := [fsBold];

     end;
  end;

  EdPsqDteCt1.Date := Date;
  EdPsqDteCt2.Date := Date;  

  EdPsqNumCta.SetFocus;

end;

procedure TfmManCta.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCta.EdPsqNumCtaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManCta.bEditarClick(Sender: TObject);
var
i      : Integer;
Found  : integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,2,1) = 'S' then begin

        if PedCtaNumCta.Value > 0 then begin

           Found := -1;

           for i := 0 to Screen.FormCount - 1 do begin

               if Screen.Forms[i] is TfmManCt2 then Found := i;

           end;

           if Found >= 0 then begin

              fmsg('Existe uma Cotação em Andamento.','E');

              fmManCt2.WindowState := wsNormal;
              fmManCt2.BringToFront;

              end
           else
              begin

              sFiltro := ' Where PedCta.CodEmp = '''+ IntToStr(PedCtaCodEmp.Value)   +''''+
                         '   and PedCta.DteCta = '''+ fDateToSQL(PedCtaDteCta.Value) +''''+
                         '   and PedCta.NumCta = '''+ IntToStr(PedCtaNumCta.Value)   +'''';

              with PedCta,SQL do begin

                   Close;
                   Text := sBase + sFiltro + sOrdem;
                   Open;

              end;

              if PedCtaSitCta.Value = 'Concluida' then begin

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

              CodEmp := PedCtaCodEmp.Value;
              DteCta := PedCtaDteCta.Value;
              NumCta := PedCtaNumCta.Value;

              fmManCt2 := TfmManCt2.Create(Self);
              fmManCt2.Show;

           end;
        end;

        end
     else
        fMsgErro('Usuario Não Possui Acesso a Opcão.',nil);

     end
  else
     fmsgErro(GMensagem,Nil);         
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

           fmsg('Existe uma Cotação em Andamento.','E');
     
           fmManCt2.WindowState := wsNormal;
           fmManCt2.BringToFront;

           end
        else
           begin   

           CodEmp := 0;
           DteCta := Date;
           NumCta := 0;

           sFiltro := ' Where PedCta.CodEmp = :CodEmp'+
                      '   and PedCta.DteCta = :DteCta'+
                      '   and PedCta.NumCta = :NumCta';

           with PedCta,SQL do begin

                Close;
                Text := sBase + sFiltro + sOrdem;

                with Params do begin

                     Params[0].AsInteger  := CodEmp;
                     Params[1].AsDateTime := DteCta;
                     Params[2].AsInteger  := NumCta;

                end;

                Open;

           end;

           fmManCt2 := TfmManCt2.Create(Self);
           fmManCt2.Show;

        end;

        end
     else
        fMsgErro('Usuario Não Possui Acesso a Opcão.',nil);

     end
  else
     fmsgErro(GMensagem,Nil);     
end;

procedure TfmManCta.bExcluirClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,3,1) = 'S' then begin

        if PedCtaNumCta.Value > 0 then begin

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

              grCta.SetFocus;

           end;
        end;

        end
     else
        fMsgErro('Usuario Não Possui Acesso a Opcão.',nil);

     end
  else
     fmsgErro(GMensagem,Nil);   
end;

procedure TfmManCta.bImprimirClick(Sender: TObject);
begin
  inherited;
  if PedCtaNumCta.Value > 0 then begin

     if fMsg('Confirma Impressão da Via Interna ?','O') then begin

        if fMsg('Impressão da Via Com Desconto ?','O') then begin

           try

              fmManEma := TfmManEma.Create(Self);

              fmManEma.PedCta.Close;
              fmManEma.PedCta.Params[0].AsInteger  := PedCtaCodEmp.Value;
              fmManEma.PedCta.Params[1].AsDateTime := PedCtaDteCta.Value;
              fmManEma.PedCta.Params[2].AsInteger  := PedCtaNumCta.Value;
              fmManEma.PedCta.Open;

              fmManEma.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManEma);

           end;

           end
        else
           begin

           try

              fmManEm3 := TfmManEm3.Create(Self);

              fmManEm3.PedCta.Close;
              fmManEm3.PedCta.Params[0].AsInteger  := PedCtaCodEmp.Value;
              fmManEm3.PedCta.Params[1].AsDateTime := PedCtaDteCta.Value;
              fmManEm3.PedCta.Params[2].AsInteger  := PedCtaNumCta.Value;
              fmManEm3.PedCta.Open;

              fmManEm3.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManEm3);

           end;
        end;
     end;

     if fMsg('Confirma Impressão da Via do Cliente ?','O') then begin

        try

           fmManEm2 := TfmManEm2.Create(Self);

           fmManEm2.PedCta.Close;
           fmManEm2.PedCta.Params[0].AsInteger  := PedCtaCodEmp.Value;
           fmManEm2.PedCta.Params[1].AsDateTime := PedCtaDteCta.Value;
           fmManEm2.PedCta.Params[2].AsInteger  := PedCtaNumCta.Value;
           fmManEm2.PedCta.Open;

           fmManEm2.RLReport1.PreviewModal;

        finally

           FreeAndNil(fmManEm2);

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
Acessos : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then
        Acessos := fAcesso('PED0201')
     else
        Acessos := 'SSSSS';

     if copy(Acessos,2,1) = 'S' then begin

        if PedCtaNumCta.Value > 0 then begin

           if PedCtaSitCta.Value = 'Concluida' then begin

              CodEmp := PedCtaCodEmp.Value;
              DteCta := PedCtaDteCta.Value;
              NumCta := PedCtaNumCta.Value;

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

                      EdPsqNumCta.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              PedCta.Close;
              PedCta.Open;

              PedCta.Locate('CodEmp;DteCta;NumCta',VarArrayOf([CodEmp,DteCta,NumCta]),[LoPartialKey]);

              end
           else
              fmsgErro('Operação não Pode ser Realizada. Cotação não Concluida.',Nil);

        end;

        end
     else
        fMsgErro('Usuario Não Possui Acesso a Opcão.',nil);

     end
  else
     fmsgErro(GMensagem,Nil);
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
  if Trim( PedCt2CodGru.Value ) <> '' then Text := PedCt2CodGru.Value+ '.' +PedCt2CodSub.Value+ '.' +PedCt2CodPro.Value;
end;

procedure TfmManCta.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCta := nil;
end;

procedure TfmManCta.bPsqAtdClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqAt2 := TfmPsqAt2.Create(Self);

     fmPsqAt2.ShowModal;

     if fmPsqAt2.CodAtd > 0 then begin

        EdPsqNomAtd.Text := fmPsqAt2.NomAtd;
        EdPsqCodAtd.Text := IntToStr(fmPsqAt2.CodAtd);

     end;

  finally

     FreeAndNil(fmPsqAt2);

  end;

  EdPsqCodAtd.SetFocus;

end;

procedure TfmManCta.EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

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

     EdPsqCodAtd.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

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

     EdPsqCodAtd.SetFocus;

  end;
end;

procedure TfmManCta.EdPsqCodAtdExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodAtd.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select ApeAtd From FinAtd Where FinAtd.CodAtd = '''+ EdPsqCodAtd.Text +'''';
          Open;

          EdPsqNomAtd.Text := FieldByName('ApeAtd').AsString;

     end;

     end
  else
     EdPsqNomAtd.Text := '';
end;

procedure TfmManCta.DsCtaDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if pnTotRen.Visible then begin

     pnTotRen.Caption := FormatFloat('##0.00',PedCtaTotRen.Value)+' %';

     if PedCtaCodAtd.Value > 0 then begin

        if PedCtaTotCst.Value > 0 then
           grCta.Hint := ' Atendente : ' + PedCtaApeAtd.Value + ' Total Custo : ' + PreString(FormatFloat('###,###,##0.00',PedCtaTotCst.Value),15)
        else
           grCta.Hint := ' Atendente : ' + PedCtaApeAtd.Value;

        end
     else
        begin

        if PedCtaTotCst.Value > 0 then
           grCta.Hint := ' Total Custo : ' + PreString(FormatFloat('###,###,##0.00',PedCtaTotCst.Value),15)
        else
           grCta.Hint := '';

     end;
           
     end
  else
     begin

     if PedCtaCodAtd.Value > 0 then
        grCta.Hint := ' Atendente : ' + PedCtaApeAtd.Value
     else
        grCta.Hint := '';

  end;

  if PedCtaNumRes.Value > 0 then
     pnNumRes.Caption := ' Pedido de Venda No. '+ fNumZeros(IntToStr(PedCtaNumRes.Value),7)
  else
     pnNumRes.Caption := ' Pedido de Venda No.';

  pnSitCta.Caption := PedCtaSitCta.Value;

  if PedCtaCodCli.Value > 0 then
     pnNomCli.Caption := ' Cliente : '+ fNumZeros(IntToStr(PedCtaCodCli.Value),5)+ ' - ' +PedCtaNomCli.Value
  else
     pnNomCli.Caption := ' Cliente : '+ PedCtaNomCli.Value;
     
  if PedCtaCodEmp.Value > 0 then
     pnDteCta.Caption := ' Emitida Em '+ DateToStr(PedCtaDteCta.Value)+ ' ' +PedCtaHreCta.Value 
  else
     pnDteCta.Caption := ' ';

end;

procedure TfmManCta.DsCt2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if pnTotMka.Visible then begin

     pnTotMka.Caption := 'Markup do Item '+FormatFloat('##0.00',PedCt2TotRen.Value)+' %';

     pnTotCst.Caption := FormatFloat('###,###,##0.0000',PedCt2VcsCt2.Value)+' ';

     if PedCt2TotCst.Value > 0 then
        grCt2.Hint := ' Custo Unitário : ' + PreString(FormatFloat('###,###,##0.0000',PedCt2VcsCt2.Value),15) + ' Total Custo : ' + PreString(FormatFloat('###,###,##0.00',PedCt2TotCst.Value),15)
     else
        grCt2.Hint := '';

     end
  else
     grCt2.Hint := '';
     
end;

end.

