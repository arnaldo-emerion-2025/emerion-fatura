unit ManLn8_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxDBELib, dxColorPickEdit, dxColorCurrencyEdit, dxColorEdit,
  dxColorDateEdit, dxfProgressBar;

type
  TfmManLn8_NFE = class(TfmPadrao)
    FatPed: TwwQuery;
    FatPe2: TwwQuery;
    DsFatPe2: TwwDataSource;
    DsFatPed: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    EdPsqNumRes: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label28: TLabel;
    EdPsqDteFat1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteFat2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    EdPsqCodPfa: TdxColorEdit;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqCli: TSpeedButton;
    BbPsqVen: TSpeedButton;
    BbPsqPfa: TSpeedButton;
    EdPsqNomPfa: TdxColorEdit;
    EdPsqApeVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label1: TLabel;
    EdPsqUfeFat: TdxColorPickEdit;
    grFatPed: ThGrid;
    quSql: TwwQuery;
    FatPedDTEFAT: TDateTimeField;
    FatPedNRONFS: TIntegerField;
    FatPedTOTGER: TFloatField;
    FatPedCODPFA: TStringField;
    FatPedCODCLI: TIntegerField;
    Label13: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    grFatPed1: TdxDBGraphicEdit;
    grFatPe21: TdxDBGraphicEdit;
    grFatPe2: ThGrid;
    FatPe2DESPE2: TStringField;
    FatPe2QTPPE2: TFloatField;
    FatPe2VLUPE2: TFloatField;
    FatPe2IPIPE2: TFloatField;
    FatPe2ICMPE2: TFloatField;
    FatPe2TOTPE2: TFloatField;
    FatPe2TOTIPI: TFloatField;
    FatPe2CODCFO: TStringField;
    FatPe2CLSIPI: TStringField;
    FatPe2CODUND: TStringField;
    FatPe2CODSIT: TStringField;
    pnProNfe: TPanel;
    pnRecNfe: TPanel;
    pnDteNfe: TPanel;
    pnHreNfe: TPanel;
    pnSitFat: TPanel;
    UpFatPed: TUpdateSQL;
    pnMensag: TPanel;
    bRecuperar: TBitBtn;
    bconsultar: TBitBtn;
    BitBtn1: TBitBtn;
    pnRetNfe: TLabel;
    pnSitImp: TPanel;
    FatPedRETNFE: TStringField;
    FatPedDTECNE: TDateTimeField;
    FatPedHRECNE: TStringField;
    FatPedFLGATU: TStringField;
    FatPedSITFAT: TStringField;
    FatPedIMPNFE: TStringField;
    SaveDialog: TSaveDialog;
    FatPedRECNFE: TStringField;
    FatPedPRONFE: TStringField;
    FatPedPRCNFE: TStringField;
    FatPedDTCNFE: TDateTimeField;
    FatPedHRCNFE: TStringField;
    FatPedCODEMP: TIntegerField;
    FatPedSEQNFE: TStringField;
    FatPedDTEPNF: TDateTimeField;
    FatPedHREPNF: TStringField;
    quSQL1: TwwQuery;
    FatPedDTERES: TDateTimeField;
    FatPedNUMRES: TIntegerField;
    FatPedSEQLIB: TIntegerField;
    FatPedSEQFAT: TIntegerField;
    FatPe2CODITE: TStringField;
    FatPedCODCF1: TStringField;
    FatPedBASICM: TFloatField;
    FatPedTOTICM: TFloatField;
    FatPedBASSUB: TFloatField;
    FatPedTOTSUB: TFloatField;
    FatPedBASIPI: TFloatField;
    FatPedTOTIPI: TFloatField;
    FatPedTOTFAT: TFloatField;
    FatPedTENCLI: TStringField;
    FatPedENDCLI: TStringField;
    FatPedNUMCLI: TStringField;
    FatPedREFCLI: TStringField;
    FatPedBAICLI: TStringField;
    FatPedCIDCLI: TStringField;
    FatPedUFECLI: TStringField;
    FatPedCGCCLI: TStringField;
    FatPedINSCLI: TStringField;
    FatPedNOMCLI: TStringField;
    FatPedEM1CLI: TStringField;
    FatPe2NCMPE2: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqPfaClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqNumResExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure DsFatPedDataChange(Sender: TObject; Field: TField);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bRecuperarClick(Sender: TObject);
    procedure bconsultarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FatPe2NCMPE2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    CodEmp: integer;
    DteRes: TDateTime;
    NumRes: integer;
    SeqLib: integer;
    SeqFat: integer;
    {Private declarations}
  public
    {Public declarations}
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManLn8_NFE: TfmManLn8_NFE;

implementation

uses dxDemoUtils, FileCtrl, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp,
     PsqPfa, ManPri, AuxPsq, AuxIni, ManE01_NFE;

{$R *.DFM}

procedure TfmManLn8_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  EdPsqDteFat1.Date := Date;
  EdPsqDteFat2.Date := Date;

  FatPed.Close;
  FatPed.Params[0].AsDateTime := EdPsqDteFat1.Date;
  FatPed.Open;

  sBase := ' Select FatPed.CodEmp,'+
           '        FatPed.DteRes,'+
           '        FatPed.NumRes,'+
           '        FatPed.SeqLib,'+
           '        FatPed.SeqFat,'+
           '        FatPed.DteFat,'+
           '        FatPed.NroNfs,'+
           '        FatPed.CodCli,'+
           '        FatPed.CodPfa,'+
           '        FatPed.CodCf1,'+
           '        FatPed.TenCli,'+
           '        FatPed.EndCli,'+
           '        FatPed.NumCli,'+
           '        FatPed.RefCli,'+
           '        FatPed.BaiCli,'+
           '        FatPed.CidCli,'+
           '        FatPed.UfeCli,'+
           '        FatPed.BasIcm,'+
           '        FatPed.TotIcm,'+
           '        FatPed.BasSub,'+
           '        FatPed.TotSub,'+
           '        FatPed.BasIpi,'+
           '        FatPed.TotIpi,'+
           '        FatPed.TotFat,'+
           '        FatPed.TotGer,'+
           '        FatPed.ImpNfe,'+
           '        FatPed.SeqNfe,'+
           '        FatPed.RecNfe,'+
           '        FatPed.ProNfe,'+
           '        FatPed.PrcNfe,'+
           '        FatPed.DtePnf,'+
           '        FatPed.HrePnf,'+
           '        FatPed.DtcNfe,'+
           '        FatPed.HrcNfe,'+
           '        FatPed.RetNfe,'+
           '        FatPed.DteCne,'+
           '        FatPed.HreCne,'+
           '        FatPed.FlgAtu,'+
           '        FatPed.SitFat,'+
           '        FinCli.NomCli,'+
           '        FinCli.CgcCli,'+
           '        FinCli.InsCli,'+
           '        FinCli.Em1Cli '+
           ' From FatPed,FinCli'+
           ' Where FatPed.CodCli = FinCli.CodCli';

end;

procedure TfmManLn8_NFE.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

  sFiltro := ' and not FatPed.SitFat = '+ QuotedStr('Nao Concluido') +' and FatPed.EnvNfe = '+ QuotedStr('Sim');

  sOrdem := ' Order by FatPed.NroNfs';

  if Trim(EdPsqNumRes.Text) <> '' then sFiltro := sFiltro + ' and FatPed.NumRes = '+ QuotedStr(EdPsqNumRes.Text);
  if Trim(EdPsqCodEmp.Text) <> '' then sFiltro := sFiltro + ' and FatPed.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim(EdPsqCodCli.Text) <> '' then sFiltro := sFiltro + ' and FatPed.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
  if Trim(EdPsqCodVen.Text) <> '' then sFiltro := sFiltro + ' and FatPed.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
  if Trim(EdPsqCodPfa.Text) <> '' then sFiltro := sFiltro + ' and FatPed.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text);
  if Trim(EdPsqUfeFat.Text) <> '' then sFiltro := sFiltro + ' and FatPed.UfeFat = '+ QuotedStr(EdPsqUfeFat.Text);
  if Trim(EdPsqNroNfs.Text) <> '' then sFiltro := sFiltro + ' and FatPed.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text);

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and FatPed.DteRes >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and FatPed.DteRes <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));
  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then sFiltro := sFiltro + ' and FatPed.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDteFat1.Date));
  if Trim(fLimpaStr(EdPsqDteFat2.Text)) <> '' then sFiltro := sFiltro + ' and FatPed.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDteFat2.Date));

  with FatPed,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grFatPed.SetFocus;

end;

procedure TfmManLn8_NFE.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then Text := Text + ' and GerEmp.CodFil > '+ QuotedStr('0');

          Open;

          EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString;

     end;

     if Trim( quSQL.FieldbyName('ApeEmp').AsString ) = '' then fmsgErro('Empresa informada não localizada.',EdPsqCodEmp);

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmManLn8_NFE.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select FinCli.NomCli From FinCli Where FinCli.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
          Open;

          EdPsqNomCli.Text := FieldByName('NomCli').AsString;
          
     end;

     end
  else
     EdPsqNomCli.Text := '';
end;

procedure TfmManLn8_NFE.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqApeEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManLn8_NFE.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqApeEmp.Text := fmPsqEmp.NomEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;
  end;
end;

procedure TfmManLn8_NFE.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxIni.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxPsq.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxPsq.CodCli);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManLn8_NFE.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
          Open;

          EdPsqApeVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqApeVen.Text := '';
end;

procedure TfmManLn8_NFE.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqApeVen.Text := fmAuxIni.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           EdPsqApeVen.Text := fmAuxPsq.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManLn8_NFE.BbPsqCliClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'C';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCli > 0 then begin

        EdPsqNomCli.Text := fmAuxIni.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManLn8_NFE.BbPsqVenClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdPsqApeVen.Text := fmAuxIni.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManLn8_NFE.EdPsqNumResExit(Sender: TObject);
begin
  if Trim( EdPsqNumRes.Text ) <> '' then begin

     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqApeVen.Clear;
     EdPsqCodPfa.Clear;
     EdPsqNomPfa.Clear;
     EdPsqUfeFat.Clear;

     EdPsqDteRes1.Clear;
     EdPsqDteRes2.Clear;
     EdPsqDteFat1.Clear;
     EdPsqDteFat2.Clear;

  end;
end;

procedure TfmManLn8_NFE.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNroNfs.SetFocus;
end;

procedure TfmManLn8_NFE.BbPsqPfaClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqPfa := TfmPsqPfa.Create(Self);

     with fmPsqPfa.EstPfa,SQL do begin

          Close;
          Text := ' Select EstPfa.CodPfa,'+
                  '        EstPfa.TipPfa,'+
                  '        EstPfa.DscPfa,'+
                  '        EstPfa.DsrPfa,'+
                  '        EstPfa.CodCf1,'+
                  '        EstPfa.CodCf2,'+
                  '        EstPfa.IntFin,'+
                  '        EstPfa.AtuEst,'+
                  '        EstPfa.ConSum,'+
                  '        EstPfa.ModPfa '+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  '   and EstPfa.ModPfa = :ModPfa'+
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString  := 'Saida';
               Params[1].AsString  := 'Vendas';

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

        EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
        EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

     end;

  finally   

     FreeAndNil(fmPsqPfa);

  end;
end;

procedure TfmManLn8_NFE.DsFatPedDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnRetNfe.Caption := Trim(FatPedRetNfe.Value);
  pnSitFat.Caption := Trim(FatPedSitFat.Value);

  if Trim(FatPedPrcNfe.Value) <> '' then begin

     pnProNfe.Caption := ' No. do protocolo: '+Trim(FatPedPrcNfe.Value);

     pnDteNfe.Caption := ' Processado em: '+FormatDateTime('dd/mm/yyyy',FatPedDtcNfe.Value);
     
     pnHreNfe.Caption := ' Horário: '+FatPedHrcNfe.Value;
     
     end
  else
     begin

     pnProNfe.Caption := ' No. do protocolo: '+Trim(FatPedProNfe.Value);

     if FatPedDtePNF.Value > 0 then
        pnDteNfe.Caption := ' Processado em: '+FormatDateTime('dd/mm/yyyy',FatPedDtePNF.Value)
     else
        pnDteNfe.Caption := ' Processado em: ';

     pnHreNfe.Caption := ' Horário: '+FatPedHrePNF.Value;

  end;
     
  pnRecNfe.Caption := ' No. do recibo: '+Trim(FatPedRecNfe.Value);
     
  if FatPedImpNfe.Value = 'Sim' then begin

     pnSitImp.Color := clRed;

     pnSitImp.Caption := 'Impressão confirmada';

     end
  else
     begin

     pnSitImp.Color := clLime;
     
     pnSitImp.Caption := 'Impressão não confirmada';

  end;
end;

procedure TfmManLn8_NFE.EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqPfa := TfmPsqPfa.Create(Self);

        with fmPsqPfa.EstPfa,SQL do begin

             Close;
             Text := ' Select EstPfa.CodPfa,'+
                     '        EstPfa.TipPfa,'+
                     '        EstPfa.DscPfa,'+
                     '        EstPfa.DsrPfa,'+
                     '        EstPfa.CodCf1,'+
                     '        EstPfa.CodCf2,'+
                     '        EstPfa.IntFin,'+
                     '        EstPfa.AtuEst,'+
                     '        EstPfa.ConSum,'+
                     '        EstPfa.ModPfa '+
                     ' From EstPfa'+
                     ' Where EstPfa.TipPfa = :TipPfa'+
                     '   and EstPfa.ModPfa = :ModPfa'+
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString  := 'Saida';
                  Params[1].AsString  := 'Vendas';

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
           EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

        end;

     finally

        FreeAndNil(fmPsqPfa);

     end;
  end;
end;

procedure TfmManLn8_NFE.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLn8_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLn8_NFE := Nil;
end;

procedure TfmManLn8_NFE.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManLn8_NFE.EdPsqCodPfaExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPfa.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPfa From EstPfa'+
                  ' Where TipPfa = '''+ 'Saida' +''''+
                  '   and CodPfa = '''+ EdPsqCodPfa.Text +'''';
          Open;

          EdPsqNomPfa.Text := FieldByName('DscPfa').AsString;

     end;

     end
  else
     EdPsqNomPfa.Text := '';
end;

procedure TfmManLn8_NFE.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqApeVen.Clear;
     EdPsqCodPfa.Clear;
     EdPsqNomPfa.Clear;
     EdPsqUfeFat.Clear;
     EdPsqNumRes.Clear;

     EdPsqDteRes1.Clear;
     EdPsqDteRes2.Clear;
     EdPsqDteFat1.Clear;
     EdPsqDteFat2.Clear;

  end;
end;

procedure TfmManLn8_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManLn8_NFE.bRecuperarClick(Sender: TObject);
var
  UfeEmp : string;
  ArqRe1 : string;
  ArqRe2 : string;
  ArqRs1 : string;
  ArqRs2 : string;
  FlgRej : string;
  LinArq : string;
  EmaCli : string;
  MSGNFE : string;
  SeqEnc : integer;
  SeqLin : integer;
  SeqRet : Boolean;
  Handle : LongInt;
  ArqEnv : TextFile;
  ArqRet : TStringList;
begin
  inherited;
  if FatPedCodEmp.Value > 0 then begin

     CodEmp := FatPedCodEmp.Value;
     DteRes := FatPedDteRes.Value;
     NumRes := FatPedNumRes.Value;
     SeqLib := FatPedSeqLib.Value;
     SeqFat := FatPedSeqFat.Value;

     with FatPed,SQL do begin

          Close;
          Text := sBase +
                  ' and FatPed.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                  ' and FatPed.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                  ' and FatPed.NumRes = '+ QuotedStr(IntToStr(NumRes)) +
                  ' and FatPed.SeqLib = '+ QuotedStr(IntToStr(SeqLib)) +
                  ' and FatPed.SeqFat = '+ QuotedStr(IntToStr(SeqFat)) ;
          Open;

     end;

     if FatPedCodEmp.Value > 0 then begin

        if fMsg('Recupera o arquivo enviado para o cliente ?','O') then begin

           SaveDialog.FileName := FatPedRecNFe.Value +'_v1.10-procNFe.xml';

           with quSQL,SQL do begin

                Close;
                Text := ' Select FatPed.ArqNfe'+
                        ' From FatPed'+
                        ' Where FatPed.CodEmp = '+ QuotedStr(IntToStr(FatPedCodEmp.Value)) +
                        '   and FatPed.DteRes = '+ QuotedStr(fDateToSQL(FatPedDteRes.Value)) +
                        '   and FatPed.NumRes = '+ QuotedStr(IntToStr(FatPedNumRes.Value)) +
                        '   and FatPed.SeqLib = '+ QuotedStr(IntToStr(FatPedSeqLib.Value)) +
                        '   and FatPed.SeqFat = '+ QuotedStr(IntToStr(FatPedSeqFat.Value)) ;
                Open;

                if FieldbyName('ArqNFE').AsString <> null then begin

                   if SaveDialog.Execute then TBlobField(FieldByName('ARQNFE')).SaveToFile(SaveDialog.FileName);

                end;
           end;
        end;

        if fMsg('Deseja enviar arquivo magnético da DANFE por e-mail para o cliente ?','O') then begin

           EmaCli := Trim(FatPedEm1Cli.Value);

           EmaCli := copy(EmaCli,1,60) + fReplicate(' ',60 - Length(copy(EmaCli,1,60)));

           with quSQL,SQL do begin

                Close;
                Text := ' Select GerEmp.SigUfe'+
                        ' From GerEmp'+
                        ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(FatPedCodEmp.Value));
                Open;

                UfeEmp := fLimpaAcentos(FieldbyName('SigUfe').AsString);

           end;

           if not directoryExists('C:\EMERION\NFE') then CreateDir('C:\EMERION\NFE');

           if not directoryExists('C:\EMERION\REQ') then CreateDir('C:\EMERION\REQ');

           if not directoryExists('C:\EMERION\RESP') then CreateDir('C:\EMERION\RESP');

           if not directoryExists('C:\EMERION\BACKUP\NFE') then CreateDir('C:\EMERION\BACKUP\NFE');

           Application.ProcessMessages;

           fmManPri.Enabled := False;

           fmManLn8_NFE.Enabled := False;

           pnMensag.Visible := True;

           pnMensag.Caption := 'Aguarde. Enviando e-mail para o cliente.';

           ArqRe1 := 'C:\Emerion\REQ\INTPOS.TMP';
           ArqRe2 := 'C:\Emerion\REQ\INTPOS.001';

           ArqRs1 := 'C:\Emerion\RESP\INTPOS.STS';
           ArqRs2 := 'C:\Emerion\RESP\INTPOS.001';

           DeleteFile(ArqRe1);
           DeleteFile(ArqRe2);
           DeleteFile(ArqRs1);
           DeleteFile(ArqRs2);

           AssignFile(ArqEnv,ArqRe1);

           Rewrite(ArqEnv);

           Writeln(ArqEnv,'EM10' +
                          UfeEmp +
                          FatPedSeqNFe.Value+
                          FatPedRecNFe.Value+
                          FatPedProNFe.Value+
                          fNumZeros(IntToStr(FatPedNroNfs.Value),9)+
                          EmaCli);

           CloseFile(ArqEnv);

           movefile(PChar(ArqRe1),PChar(ArqRe2));

           SeqEnc := 0;

           while SeqEnc = 0 do begin

                 while not FileExists(ArqRs2) do Application.ProcessMessages;

                 if FileExists(ArqRs2) then begin

                    sleep(1000);

                    ArqRet := TStringList.Create;

                    ArqRet.LoadFromFile(ArqRs2);

                    if pos('EMRESP',ArqRet[0]) = 0 then
                       SeqEnc := 3
                    else
                       begin

                       if pos(FatPedSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

                    end;
                          
                    FreeAndNil(ArqRet);

                    if SeqEnc = 3 then DeleteFile(ArqRs2);

                 end;
           end;

           if FileExists(ArqRs2) then begin

              Application.ProcessMessages;

              CopyFile(Pchar(ArqRs2),Pchar(ArqRs2), SeqRet);

              // Cria-se um Handle //

              Handle := CreateFile(PChar(ArqRs2),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

              // Descarrega o arquivo com essa função //

              FlushFileBuffers(Handle);

              // Fecha o Handle //

              CloseHandle(Handle);

              // Informações para Salva de Backup do INTPOS.001//

              CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTPOS.001'), SeqRet);

              { Cria-se um Handle }

              Handle := CreateFile('INTPOS.001',GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

              { Descarrega o arquivo com essa função }

              FlushFileBuffers(Handle);

              { Fecha o Handle }

              CloseHandle(Handle);

              // Informações para Salva de Backup do INTTMP.001//

              CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTTMP.001'), SeqRet);

              // Cria-se um Handle //

              Handle := CreateFile(PChar('INTTMP.001'),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

              // Descarrega o arquivo com essa função //

              FlushFileBuffers(Handle);

              // Fecha o Handle //

              CloseHandle(Handle);

              FlgRej := 'N';

              ArqRet := TStringList.Create;

              ArqRet.LoadFromFile(ArqRs2);

              for SeqLin := 0 to ArqRet.Count - 1 do begin

                  Application.ProcessMessages;

                  LinArq := ArqRet[SeqLin];

                  if pos('EMRESP',LinArq) > 0 then begin

                     if pos('Erros:',LinArq) > 0 then FlgRej := 'S';

                     if pos('Rejeição',LinArq) > 0 then FlgRej := 'S';

                     MSGNFE := copy(LinArq,pos('<xMotivo>',LinArq)+9,pos('</xMotivo>',LinArq) - (pos('<xMotivo>',LinArq)+9));

                  end;
              end;

              FreeAndNil(ArqRet);

              if FlgRej = 'N' then begin

                 if Trim( MSGNFE ) <> '' then begin

                    pnMensag.Caption := MSGNFE;

                    Application.ProcessMessages;

                    sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o cliente na tela //

                 end;

                 DeleteFile(ArqRe1);
                 DeleteFile(ArqRe2);
                 DeleteFile(ArqRs1);
                 DeleteFile(ArqRs2);

                 fmManPri.Enabled := True;

                 fmManLn8_NFE.Enabled := True;

                 pnMensag.Visible := False;

                 end
              else
                 begin

                 DeleteFile(ArqRe1);
                 DeleteFile(ArqRe2);
                 DeleteFile(ArqRs1);
                 DeleteFile(ArqRs2);

                 fmManPri.Enabled := True;

                 fmManLn8_NFE.Enabled := True;

                 pnMensag.Visible := False;

                 fmsgErro(MSGNFE,Nil);

              end;
           end;
        end;
     end;
  end;
end;

procedure TfmManLn8_NFE.bconsultarClick(Sender: TObject);
var
  UfeEmp : string;
  ArqRe1 : string;
  ArqRe2 : string;
  ArqRs1 : string;
  ArqRs2 : string;
  FlgRej : string;
  LinArq : string;
  MSGNFE : string;
  DTECNE : string;
  HRECNE : string;
  SeqEnc : integer;
  SeqLin : integer;
  SeqRet : Boolean;
  Handle : LongInt;
  ArqEnv : TextFile;
  ArqRet : TStringList;
begin
  inherited;
  if FatPedCodEmp.Value > 0 then begin

     CodEmp := FatPedCodEmp.Value;
     DteRes := FatPedDteRes.Value;
     NumRes := FatPedNumRes.Value;
     SeqLib := FatPedSeqLib.Value;
     SeqFat := FatPedSeqFat.Value;

     with FatPed,SQL do begin

          Close;
          Text := sBase +
                  ' and FatPed.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                  ' and FatPed.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                  ' and FatPed.NumRes = '+ QuotedStr(IntToStr(NumRes)) +
                  ' and FatPed.SeqLib = '+ QuotedStr(IntToStr(SeqLib)) +
                  ' and FatPed.SeqFat = '+ QuotedStr(IntToStr(SeqFat)) ;
          Open;

     end;

     if FatPedCodEmp.Value > 0 then begin

        if fMsg('Confirma consulta ?','O') then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select GerEmp.SigUfe'+
                        ' From GerEmp'+
                        ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(FatPedCodEmp.Value));
                Open;

                UfeEmp := fLimpaAcentos(FieldbyName('SigUfe').AsString);

           end;

           if not directoryExists('C:\EMERION\NFE') then CreateDir('C:\EMERION\NFE');

           if not directoryExists('C:\EMERION\REQ') then CreateDir('C:\EMERION\REQ');

           if not directoryExists('C:\EMERION\RESP') then CreateDir('C:\EMERION\RESP');

           if not directoryExists('C:\EMERION\BACKUP\NFE') then CreateDir('C:\EMERION\BACKUP\NFE');

           Application.ProcessMessages;

           fmManPri.Enabled := False;

           fmManLn8_NFE.Enabled := False;

           pnMensag.Visible := True;

           pnMensag.Caption := 'Aguarde. Verificando status do serviço.';

           ArqRe1 := 'C:\Emerion\REQ\INTPOS.TMP';
           ArqRe2 := 'C:\Emerion\REQ\INTPOS.001';

           ArqRs1 := 'C:\Emerion\RESP\INTPOS.STS';
           ArqRs2 := 'C:\Emerion\RESP\INTPOS.001';

           DeleteFile(ArqRe1);
           DeleteFile(ArqRe2);
           DeleteFile(ArqRs1);
           DeleteFile(ArqRs2);

           AssignFile(ArqEnv,ArqRe1);

           Rewrite(ArqEnv);

           Writeln(ArqEnv,'EM01' +
                          UfeEmp +
                          FatPedSeqNFe.Value);

           CloseFile(ArqEnv);

           movefile(PChar(ArqRe1),PChar(ArqRe2));

           SeqEnc := 0;

           while SeqEnc = 0 do begin

                 while not FileExists(ArqRs2) do Application.ProcessMessages;

                 if FileExists(ArqRs2) then begin

                    sleep(1000);

                    ArqRet := TStringList.Create;

                    ArqRet.LoadFromFile(ArqRs2);

                    if pos('EMRESP',ArqRet[0]) = 0 then
                       SeqEnc := 3
                    else
                       begin

                       if pos(FatPedSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

                    end;
                          
                    FreeAndNil(ArqRet);

                    if SeqEnc = 3 then DeleteFile(ArqRs2);

                 end;
           end;

           if FileExists(ArqRs2) then begin

              Application.ProcessMessages;

              CopyFile(Pchar(ArqRs2),Pchar(ArqRs2), SeqRet);

              // Cria-se um Handle //

              Handle := CreateFile(PChar(ArqRs2),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

              // Descarrega o arquivo com essa função //

              FlushFileBuffers(Handle);

              // Fecha o Handle //

              CloseHandle(Handle);

              // Informações para Salva de Backup do INTPOS.001//

              CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTPOS.001'), SeqRet);

              { Cria-se um Handle }

              Handle := CreateFile('INTPOS.001',GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

              { Descarrega o arquivo com essa função }

              FlushFileBuffers(Handle);

              { Fecha o Handle }

              CloseHandle(Handle);

              // Informações para Salva de Backup do INTTMP.001//

              CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTTMP.001'), SeqRet);

              // Cria-se um Handle //

              Handle := CreateFile(PChar('INTTMP.001'),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

              // Descarrega o arquivo com essa função //

              FlushFileBuffers(Handle);

              // Fecha o Handle //

              CloseHandle(Handle);

              FlgRej := 'N';

              ArqRet := TStringList.Create;

              ArqRet.LoadFromFile(ArqRs2);

              for SeqLin := 0 to ArqRet.Count - 1 do begin

                  Application.ProcessMessages;

                  LinArq := ArqRet[SeqLin];

                  if pos('EMRESP',LinArq) > 0 then begin

                     if pos('System.Reflection',LinArq) > 0 then begin

                        FlgRej := 'S';

                        MSGNFE := 'Serviço inativo ou inoperante. Tente novamente.';

                        break;

                        end
                     else
                        begin

                        if pos('Erros:',LinArq) > 0 then FlgRej := 'S';

                        if pos('Rejeição',LinArq) > 0 then FlgRej := 'S';

                        MSGNFE := copy(LinArq,pos('<xMotivo>',LinArq)+9,pos('</xMotivo>',LinArq) - (pos('<xMotivo>',LinArq)+9));

                     end;
                  end;
              end;

              FreeAndNil(ArqRet);

              if FlgRej = 'N' then begin

                 if Trim( MSGNFE ) <> '' then begin

                    pnMensag.Caption := MSGNFE;

                    Application.ProcessMessages;

                    sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o cliente na tela //

                 end;

                 pnMensag.Caption := 'Aguarde. Consultando informações da nota.';

                 DeleteFile(ArqRe1);
                 DeleteFile(ArqRe2);
                 DeleteFile(ArqRs1);
                 DeleteFile(ArqRs2);

                 AssignFile(ArqEnv,ArqRe1);

                 Rewrite(ArqEnv);

                 Writeln(ArqEnv,'EM05' +
                                UfeEmp +
                                FatPedSeqNFe.Value);

                 CloseFile(ArqEnv);

                 movefile(PChar(ArqRe1),PChar(ArqRe2));

                 SeqEnc := 0;

                 while SeqEnc = 0 do begin

                       while not FileExists(ArqRs2) do Application.ProcessMessages;

                       if FileExists(ArqRs2) then begin

                          sleep(1000);

                          ArqRet := TStringList.Create;

                          ArqRet.LoadFromFile(ArqRs2);

                          if pos('EMRESP',ArqRet[0]) = 0 then
                             SeqEnc := 3
                          else
                             begin

                             if pos(FatPedSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

                          end;

                          FreeAndNil(ArqRet);

                          if SeqEnc = 3 then DeleteFile(ArqRs2);

                       end;
                 end;

                 if FileExists(ArqRs2) then begin

                    Application.ProcessMessages;

                    CopyFile(Pchar(ArqRs2),Pchar(ArqRs2), SeqRet);

                    // Cria-se um Handle //

                    Handle := CreateFile(PChar(ArqRs2),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                    // Descarrega o arquivo com essa função //

                    FlushFileBuffers(Handle);

                    // Fecha o Handle //

                    CloseHandle(Handle);

                    // Informações para Salva de Backup do INTPOS.001//

                    CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTPOS.001'), SeqRet);

                    { Cria-se um Handle }

                    Handle := CreateFile('INTPOS.001',GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                    { Descarrega o arquivo com essa função }

                    FlushFileBuffers(Handle);

                    { Fecha o Handle }

                    CloseHandle(Handle);

                    // Informações para Salva de Backup do INTTMP.001//

                    CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTTMP.001'), SeqRet);

                    // Cria-se um Handle //

                    Handle := CreateFile(PChar('INTTMP.001'),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                    // Descarrega o arquivo com essa função //

                    FlushFileBuffers(Handle);

                    // Fecha o Handle //

                    CloseHandle(Handle);

                    FlgRej := 'N';

                    ArqRet := TStringList.Create;

                    ArqRet.LoadFromFile(ArqRs2);

                    for SeqLin := 0 to ArqRet.Count - 1 do begin

                        Application.ProcessMessages;

                        LinArq := ArqRet[SeqLin];

                        if pos('EMRESP',LinArq) > 0 then begin

                           if pos('Erros:',LinArq) > 0 then FlgRej := 'S';

                           if pos('Rejeição',LinArq) > 0 then FlgRej := 'S';

                           MSGNFE := copy(LinArq,pos('<xMotivo>',LinArq)+9,pos('</xMotivo>',LinArq) - (pos('<xMotivo>',LinArq)+9));

                           DTECNE := copy(LinArq,pos('<dhRecbto>',LinArq)+10,pos('</dhRecbto>',LinArq) - (pos('<dhRecbto>',LinArq)+10));

                           HRECNE := copy(LinArq,pos('<dhRecbto>',LinArq)+21,pos('</dhRecbto>',LinArq) - (pos('<dhRecbto>',LinArq)+21));

                           if Trim(DTECNE) <> '' then DTECNE := copy(DTECNE,9,2)+ '/' +copy(DTECNE,6,2)+ '/' +copy(DTECNE,1,4);

                        end;                              
                    end;

                    FreeAndNil(ArqRet);

                    if Trim( MSGNFE ) <> '' then begin

                       FatPed.Edit;

                       FatPedFlgAtu.Value := 'F';
                       FatPedRETNFE.Value := copy(Trim(MSGNFE),1,100);

                       with FatPed do begin

                            fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                            try

                               ApplyUpdates; {Tenta aplicar as alterações};

                               fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                            except

                               fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                               if FatPed.State <> dsBrowse then FatPed.CancelUpdates;

                               FatPed.Close;
                               FatPed.Open;

                               grFatPed.SetFocus;

                               raise;

                            end;

                            CommitUpdates; {sucesso!, limpa o cache...}

                       end;
                    end;

                    if FlgRej = 'N' then begin

                       if Trim( MSGNFE ) <> '' then begin

                          pnMensag.Caption := MSGNFE;

                          Application.ProcessMessages;

                          sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o cliente na tela //

                       end;

                       FatPed.Edit;

                       FatPedFlgAtu.Value := 'F';
                       FatPedDTECNE.Value := StrToDate(DTECNE);
                       FatPedHRECNE.Value := HRECNE; 

                       with FatPed do begin

                            fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                            try

                               ApplyUpdates; {Tenta aplicar as alterações};

                               fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                            except

                               fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                               if FatPed.State <> dsBrowse then FatPed.CancelUpdates;

                               FatPed.Close;
                               FatPed.Open;

                               grFatPed.SetFocus;

                               raise;

                            end;

                            CommitUpdates; {sucesso!, limpa o cache...}

                       end;

                       DeleteFile(ArqRe1);
                       DeleteFile(ArqRe2);
                       DeleteFile(ArqRs1);
                       DeleteFile(ArqRs2);

                       end
                    else
                       begin

                       DeleteFile(ArqRe1);
                       DeleteFile(ArqRe2);
                       DeleteFile(ArqRs1);
                       DeleteFile(ArqRs2);

                       fmManPri.Enabled := True;

                       fmManLn8_NFE.Enabled := True;

                       pnMensag.Visible := False;

                       fmsgErro(MSGNFE,Nil);

                    end;
                 end;

                 end
              else
                 begin

                 DeleteFile(ArqRe1);
                 DeleteFile(ArqRe2);
                 DeleteFile(ArqRs1);
                 DeleteFile(ArqRs2);

                 fmManPri.Enabled := True;

                 fmManLn8_NFE.Enabled := True;

                 pnMensag.Visible := False;

                 fmsgErro(MSGNFE,Nil);

              end;
           end;

           fmManPri.Enabled := True;

           fmManLn8_NFE.Enabled := True;

           pnMensag.Visible := False;

        end;
     end;
  end;
end;

procedure TfmManLn8_NFE.BitBtn1Click(Sender: TObject);
var
  NroReg : integer;
  sNumeroNF, NomEmp: string;
  calma : string;
begin
  inherited;
  if FatPedCodEmp.Value > 0 then begin

     CodEmp := FatPedCodEmp.Value;
     DteRes := FatPedDteRes.Value;
     NumRes := FatPedNumRes.Value;
     SeqLib := FatPedSeqLib.Value;
     SeqFat := FatPedSeqFat.Value;

     with FatPed,SQL do begin

          Close;
          Text := sBase +
                  ' and FatPed.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                  ' and FatPed.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                  ' and FatPed.NumRes = '+ QuotedStr(IntToStr(NumRes)) +
                  ' and FatPed.SeqLib = '+ QuotedStr(IntToStr(SeqLib)) +
                  ' and FatPed.SeqFat = '+ QuotedStr(IntToStr(SeqFat)) ;
          Open;

     end;

     if FatPedCodEmp.Value > 0 then begin

        if fMsg('Confirma impressão da DANFE ?','O') then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select GerEmp.NomEmp'+
                        ' From GerEmp'+
                        ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(FatPedCodEmp.Value));
                Open;

                NomEmp := fLimpaAcentos(FieldbyName('NomEmp').AsString);

           end;

           GEmail := FatPedEm1Cli.Value;

           sNumeroNF := copy(fNumZeros(IntToStr(FatPedNroNfs.Value),9),1,3)+ '.' +
                        copy(fNumZeros(IntToStr(FatPedNroNfs.Value),9),4,3)+ '.' +
                        copy(fNumZeros(IntToStr(FatPedNroNfs.Value),9),7,3);

           GAssunto := 'NF-e: '+ sNumeroNF + ' ' + UpperCase(Trim(NomEmp));

           with quSQL do begin
                Close;
                quSQL.SQL.clear;
                calma := ' Delete From FatNfe'+
                        ' Where FatNfe.Fat_CodEmp = '+ QuotedStr(IntToStr(FatPedCodEmp.Value)) +
                        '   and FatNfe.Fat_DteRes = '+ QuotedStr(fDateToSQL(FatPedDteRes.Value)) +
                        '   and FatNfe.Fat_NumRes = '+ QuotedStr(IntToStr(FatPedNumRes.Value)) +
                        '   and FatNfe.Fat_SeqLib = '+ QuotedStr(IntToStr(FatPedSeqLib.Value)) +
                        '   and FatNfe.Fat_SeqFat = '+ QuotedStr(IntToStr(FatPedSeqFat.Value)) ;
                quSQL.SQL.Add(calma);
                ExecSQL;

           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Select FatPe2.CodClp,'+
                        '        FatPe2.CodGru,'+
                        '        FatPe2.CodSub,'+
                        '        FatPe2.CodPro,'+
                        '        FatPe2.CodTam,'+
                        '        FatPe2.CodCor,'+
                        '        FatPe2.DesPe2,'+
                        '        FatPe2.ObsPe2,'+
                        '        FatPe2.CodCfo,'+
                        '        FatPe2.ClsIpi,'+
                        '        FatPe2.CodSt1,'+
                        '        FatPe2.CodSt2,'+
                        '        FatPe2.CodUnd,'+
                        '        FatPe2.QtpPe2,'+
                        '        FatPe2.VlqPe2,'+
                        '        FatPe2.TotPe2,'+
                        '        FatPe2.BasIcm,'+
                        '        FatPe2.TotIcm,'+
                        '        FatPe2.TotIpi,'+
                        '        FatPe2.IcmPe2,'+
                        '        FatPe2.IpiPe2,'+
                        '        FatPe2.NroPe2 '+
                        ' From FatPe2'+
                        ' Where FatPe2.CodEmp = '+ Quotedstr(IntToStr(FatPedCodEmp.Value)) +
                        '   and FatPe2.DteRes = '+ Quotedstr(fDateToSQL(FatPedDteRes.Value)) +
                        '   and FatPe2.NumRes = '+ Quotedstr(IntToStr(FatPedNumRes.Value)) +
                        '   and FatPe2.SeqLib = '+ Quotedstr(IntToStr(FatPedSeqLib.Value)) +
                        '   and FatPe2.SeqFat = '+ Quotedstr(IntToStr(FatPedSeqFat.Value)) +
                        ' Order by FatPe2.NroPe2';
                Open;
                First;

           end;

           NroReg := 0;

           while not quSQL.EOF do begin

                 Inc(NroReg);

                 with quSQL1,SQL do begin

                      Close;
                      Text := ' Insert Into FatNfe(Fat_CodEmp,Fat_DteRes,Fat_NumRes,Fat_SeqLib,Fat_SeqFat,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DesNfe,CfoNfe,NcmNfe,SitNfe,UndNfe,QtpNfe,VlqNfe,TotNfe,BasIcm,TotIcm,TotIpi,IcmNfe,IpiNfe,NroNfe,IteNfe)'+
                              '             Values(:Fat_CodEmp,:Fat_DteRes,:Fat_NumRes,:Fat_SeqLib,:Fat_SeqFat,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DesNfe,:CfoNfe,:NcmNfe,:SitNfe,:UndNfe,:QtpNfe,:VlqNfe,:TotNfe,:BasIcm,:TotIcm,:TotIpi,:IcmNfe,:IpiNfe,:NroNfe,:IteNfe)';

                      with Params do begin

                           Params[00].AsInteger  := FatPedCodEmp.Value;
                           Params[01].AsDateTime := FatPedDteRes.Value;
                           Params[02].AsInteger  := FatPedNumRes.Value;
                           Params[03].AsInteger  := FatPedSeqLib.Value;
                           Params[04].AsInteger  := FatPedSeqFat.Value;
                           Params[05].AsString   := quSQL.FieldbyName('CodClp').AsString;
                           Params[06].AsString   := quSQL.FieldbyName('CodGru').AsString;
                           Params[07].AsString   := quSQL.FieldbyName('CodSub').AsString;
                           Params[08].AsString   := quSQL.FieldbyName('CodPro').AsString;
                           Params[09].AsString   := quSQL.FieldbyName('CodTam').AsString;
                           Params[10].AsString   := quSQL.FieldbyName('CodCor').AsString;
                           Params[11].AsString   := Trim(quSQL.FieldbyName('DesPe2').AsString);
                           Params[12].AsString   := Trim(quSQL.FieldbyName('CodCfo').AsString);
                           Params[13].AsString   := Trim(quSQL.FieldbyName('ClsIpi').AsString);
                           Params[14].AsString   := quSQL.FieldbyName('CodSt1').AsString+ ' ' +quSQL.FieldbyName('CodSt2').AsString;
                           Params[15].AsString   := Trim(quSQL.FieldbyName('CodUnd').AsString);
                           Params[16].AsFloat    := quSQL.FieldbyName('QtpPe2').AsFloat;
                           Params[17].AsFloat    := quSQL.FieldbyName('VlqPe2').AsFloat;
                           Params[18].AsFloat    := quSQL.FieldbyName('TotPe2').AsFloat;
                           Params[19].AsFloat    := quSQL.FieldbyName('BasIcm').AsFloat;
                           Params[20].AsFloat    := quSQL.FieldbyName('TotIcm').AsFloat;
                           Params[21].AsFloat    := quSQL.FieldbyName('TotIpi').AsFloat;
                           Params[22].AsFloat    := quSQL.FieldbyName('IcmPe2').AsFloat;
                           Params[23].AsFloat    := quSQL.FieldbyName('IpiPe2').AsFloat;
                           Params[24].AsInteger  := NroReg;
                           Params[25].AsString   := 'Sim';

                      end;

                      ExecSQL;

                 end;

                 if Trim(quSQL.FieldbyName('ObsPe2').AsString) <> '' then begin

                    Inc(NroReg);

                    with quSQL1,SQL do begin

                         Close;
                         Text := 'Insert Into FatNfe(Fat_CodEmp,Fat_DteRes,Fat_NumRes,Fat_SeqLib,Fat_SeqFat,DesNfe,NroNfe,IteNfe)'+
                                 '            Values(:Fat_CodEmp,:Fat_DteRes,:Fat_NumRes,:Fat_SeqLib,:Fat_SeqFat,:DesNfe,:NroNfe,:IteNfe)';

                         with Params do begin

                              Params[0].AsInteger  := FatPedCodEmp.Value;
                              Params[1].AsDateTime := FatPedDteRes.Value;
                              Params[2].AsInteger  := FatPedNumRes.Value;
                              Params[3].AsInteger  := FatPedSeqLib.Value;
                              Params[4].AsInteger  := FatPedSeqFat.Value;
                              Params[5].AsString   := Trim(quSQL.FieldbyName('ObsPe2').AsString);
                              Params[6].AsInteger  := NroReg;
                              Params[7].AsString   := 'Nao';

                         end;

                         ExecSQL;

                    end;
                 end;

                 quSQL.Next;

           end;

           try

              fmManE01_NFE := TfmManE01_NFE.Create(Self);

              fmManE01_NFE.FatPed.Close;
              fmManE01_NFE.FatPed.Params[0].AsInteger  := FatPedCodEmp.Value;
              fmManE01_NFE.FatPed.Params[1].AsDateTime := FatPedDteRes.Value;
              fmManE01_NFE.FatPed.Params[2].AsInteger  := FatPedNumRes.Value;
              fmManE01_NFE.FatPed.Params[3].AsInteger  := FatPedSeqLib.Value;
              fmManE01_NFE.FatPed.Params[4].AsInteger  := FatPedSeqFat.Value;
              fmManE01_NFE.FatPed.Open;

              fmManE01_NFE.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE01_NFE);

           end;

           if FatPedImpNFe.Value = 'Nao' then begin

              if fMsg('DANFE impressa corretamente ?','O') then begin

                 FatPed.Edit;

                 FatPedFlgAtu.Value := 'F';
                 FatPedImpNFe.Value := 'Sim';

                 with FatPed do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         if FatPed.State <> dsBrowse then FatPed.CancelUpdates;

                         FatPed.Close;
                         FatPed.Open;

                         grFatPed.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;
              end;
           end;
        end;
     end;
  end;
end;

procedure TfmManLn8_NFE.FatPe2NCMPE2GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := Trim(FatPe2ClsIpi.Value);
end;

end.

