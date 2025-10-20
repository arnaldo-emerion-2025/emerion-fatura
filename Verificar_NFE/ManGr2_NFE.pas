unit ManGr2_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxDBColorCurrencyEdit, dxColorPickEdit,
  dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit, dxDBColorEdit;

type
  TfmManGr2_NFE = class(TfmPadrao)
    FatGer: TwwQuery;
    DsFatGer: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteFat1: TdxColorDateEdit;
    EdPsqNumGer: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteFat2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    EdPsqCodPfa: TdxColorEdit;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqCli: TSpeedButton;
    bPsqVen: TSpeedButton;
    BbPsqPfa: TSpeedButton;
    EdPsqNomPfa: TdxColorEdit;
    EdPsqApeVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
    grFatGer: ThGrid;
    quSql: TwwQuery;
    FatGe2: TwwQuery;
    UpFatGer: TUpdateSQL;
    pnSitGer: TPanel;
    DsFatGe2: TwwDataSource;
    FatGerNUMGER: TIntegerField;
    FatGerCODVEN: TIntegerField;
    FatGerCODPFA: TStringField;
    FatGerNRONFS: TIntegerField;
    FatGerNOMCLI: TStringField;
    grFatGer1: TdxDBGraphicEdit;
    grFatGe21: TdxDBGraphicEdit;
    Label11: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    FatGerDTEFAT: TDateTimeField;
    FatGerTOTGE1: TFloatField;
    FatGe2DESGE2: TStringField;
    FatGe2QTPGE2: TFloatField;
    FatGe2VLUGE2: TFloatField;
    FatGe2IPIGE2: TFloatField;
    FatGe2ICMGE2: TFloatField;
    FatGe2TOTITE: TFloatField;
    FatGe2TOTIPI: TFloatField;
    FatGe2CODCFO: TStringField;
    FatGe2CLSIPI: TStringField;
    FatGe2CODUND: TStringField;
    FatGe2CODSIT: TStringField;
    FatGe2CODITE: TStringField;
    grFatGe2: ThGrid;
    FatGerCODEMP: TIntegerField;
    FatGerDTEGER: TDateTimeField;
    FatGerTIPPFA: TStringField;
    FatGerSITGER: TStringField;
    Label4: TLabel;
    EdPsqTipPfa: TdxColorPickEdit;
    FatGerCODCLI: TIntegerField;
    pnDesGe2: TPanel;
    pnProNfe: TPanel;
    pnRecNfe: TPanel;
    pnDteNfe: TPanel;
    pnHreNfe: TPanel;
    pnSitImp: TPanel;
    pnMensag: TPanel;
    bRecuperar: TBitBtn;
    bconsultar: TBitBtn;
    BitBtn1: TBitBtn;
    pnRetNfe: TLabel;
    FatGerRETNFE: TStringField;
    FatGerPRCNFE: TStringField;
    FatGerDTCNFE: TDateTimeField;
    FatGerHRCNFE: TStringField;
    FatGerPRONFE: TStringField;
    FatGerDTEPNF: TDateTimeField;
    FatGerHREPNF: TStringField;
    FatGerRECNFE: TStringField;
    FatGerIMPNFE: TStringField;
    SaveDialog: TSaveDialog;
    FatGerSEQNFE: TStringField;
    FatGerFLGATU: TStringField;
    FatGerDTECNE: TDateTimeField;
    FatGerHRECNE: TStringField;
    quSQL1: TwwQuery;
    FatGerEM1CLI: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure BbPsqPfaClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure EdPsqNumGerExit(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure DsFatGerDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumGerKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure DsFatGe2DataChange(Sender: TObject; Field: TField);
    procedure bRecuperarClick(Sender: TObject);
    procedure bconsultarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
    DteGer : TDateTime;
    CodEmp,NumGer: integer;
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManGr2_NFE: TfmManGr2_NFE;

implementation

uses dxDemoUtils, FileCtrl, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, AuxIni,
     AuxPsq, PsqPfa, ManPri, ManE02_NFE;

{$R *.DFM}

procedure TfmManGr2_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  FatGer.Close;
  FatGer.Params[0].AsDateTime := Date;
  FatGer.Open;

  sBase := ' Select FatGer.CodEmp,'+
           '        FatGer.DteGer,'+
           '        FatGer.NumGer,'+
           '        FatGer.NroNfs,'+
           '        FatGer.DteFat,'+
           '        FatGer.CodCli,'+
           '        FatGer.CodVen,'+
           '        FatGer.CodPfa,'+
           '        FatGer.TipPfa,'+
           '        FatGer.TotGe1,'+
           '        FatGer.RetNfe,'+
           '        FatGer.PrcNfe,'+
           '        FatGer.DtcNfe,'+
           '        FatGer.HrcNfe,'+
           '        FatGer.ProNfe,'+
           '        FatGer.DtePnf,'+
           '        FatGer.HrePnf,'+
           '        FatGer.RecNfe,'+
           '        FatGer.SeqNfe,'+
           '        FatGer.ImpNfe,'+
           '        FatGer.DteCne,'+
           '        FatGer.HreCne,'+
           '        FatGer.FlgAtu,'+
           '        FatGer.SitGer,'+
           '        FinCli.NomCli,'+
           '        FinCli.Em1Cli '+
           ' From FatGer,FinCli'+
           ' Where FatGer.CodCli = FinCli.CodCli';
           
end;

procedure TfmManGr2_NFE.bbPesquisaClick(Sender: TObject);
begin

  ActiveControl := nil;

  sFiltro := ' and FatGer.EnvNfe = '+ QuotedStr('Sim');

  sOrdem := ' Order by FatGer.NroNfs';

  if Trim( EdPsqNroNfs.Text ) <> '' then sFiltro := sFiltro + ' and FatGer.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text);
  if Trim( EdPsqNumGer.Text ) <> '' then sFiltro := sFiltro + ' and FatGer.NumGer = '+ QuotedStr(EdPsqNumGer.Text);
  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and FatGer.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodCli.Text ) <> '' then sFiltro := sFiltro + ' and FatGer.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and FatGer.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
  if Trim( EdPsqCodPfa.Text ) <> '' then sFiltro := sFiltro + ' and FatGer.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text);
  if Trim( EdPsqTipPfa.Text ) <> '' then sFiltro := sFiltro + ' and FatGer.TipPfa = '+ QuotedStr(EdPsqTipPfa.Text);

  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then sFiltro := sFiltro + ' and FatGer.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDteFat1.Date));
  if Trim(fLimpaStr(EdPsqDteFat2.Text)) <> '' then sFiltro := sFiltro + ' and FatGer.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDteFat2.Date));

  with FatGer,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grFatGer.SetFocus;

end;

procedure TfmManGr2_NFE.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmManGr2_NFE.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmManGr2_NFE.bPsqEmpClick(Sender: TObject);
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

procedure TfmManGr2_NFE.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManGr2_NFE.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManGr2_NFE.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmManGr2_NFE.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManGr2_NFE.bPsqCliClick(Sender: TObject);
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

procedure TfmManGr2_NFE.bPsqVenClick(Sender: TObject);
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

procedure TfmManGr2_NFE.EdPsqNumGerExit(Sender: TObject);
begin
  if Trim( EdPsqNumGer.Text ) <> '' then begin

     EdPsqNroNfs.Clear;
     EdPsqTipPfa.Clear;
     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqApeVen.Clear;
     EdPsqCodPfa.Clear;
     EdPsqNomPfa.Clear;

     EdPsqDteFat1.Clear;
     EdPsqDteFat2.Clear;

  end;
end;

procedure TfmManGr2_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmManGr2_NFE.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNroNfs.SetFocus;
end;

procedure TfmManGr2_NFE.BbPsqPfaClick(Sender: TObject);
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
                  ' From EstPfa';

          if Trim(EdPsqTipPfa.Text) <> '' then Text := Text + ' Where EstPfa.TipPfa = '+ QuotedStr(EdPsqTipPfa.Text);

          Text := Text + ' Order by EstPfa.DscPfa';

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

procedure TfmManGr2_NFE.DsFatGerDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnSitGer.Caption := FatGerSitGer.Value;

  pnRetNfe.Caption := Trim(FatGerRetNfe.Value);

  if Trim(FatGerPrcNfe.Value) <> '' then begin

     pnProNfe.Caption := ' No. do protocolo: '+Trim(FatGerPrcNfe.Value);

     pnDteNfe.Caption := ' Processado em: '+FormatDateTime('dd/mm/yyyy',FatGerDtcNfe.Value);

     pnHreNfe.Caption := ' Horário: '+FatGerHrcNfe.Value;
     
     end
  else
     begin

     pnProNfe.Caption := ' No. do protocolo: '+Trim(FatGerProNfe.Value);

     if FatGerDtePNF.Value > 0 then
        pnDteNfe.Caption := ' Processado em: '+FormatDateTime('dd/mm/yyyy',FatGerDtePNF.Value)
     else
        pnDteNfe.Caption := ' Processado em:';

     pnHreNfe.Caption := ' Horário: '+FatGerHrePNF.Value;

  end;

  pnRecNfe.Caption := ' No. do recibo: '+Trim(FatGerRecNfe.Value);

  if FatGerImpNfe.Value = 'Sim' then begin

     pnSitImp.Color := clRed;

     pnSitImp.Caption := 'Impressão confirmada';

     end
  else
     begin

     pnSitImp.Color := clLime;
     
     pnSitImp.Caption := 'Impressão não confirmada';

  end;
end;

procedure TfmManGr2_NFE.EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
                     ' From EstPfa';

             if Trim(EdPsqTipPfa.Text) <> '' then Text := Text + ' Where EstPfa.TipPfa = '+ QuotedStr(EdPsqTipPfa.Text);

             Text := Text + ' Order by EstPfa.DscPfa';

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

procedure TfmManGr2_NFE.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManGr2_NFE.EdPsqNumGerKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManGr2_NFE.EdPsqCodPfaExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPfa.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstPfa.DscPfa'+
                  ' From EstPfa'+
                  ' Where EstPfa.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text);

          if Trim(EdPsqTipPfa.Text) <> '' then Text := Text +' and EstPfa.TipPfa = '+ QuotedStr(EdPsqTipPfa.Text);

          Open;

          EdPsqNomPfa.Text := FieldByName('DscPfa').AsString;

     end;

     end
  else
     EdPsqNomPfa.Text := '';
end;

procedure TfmManGr2_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManGr2_NFE := Nil;
end;

procedure TfmManGr2_NFE.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     EdPsqNumGer.Clear;
     EdPsqTipPfa.Clear;
     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqApeVen.Clear;
     EdPsqCodPfa.Clear;
     EdPsqNomPfa.Clear;

     EdPsqDteFat1.Clear;
     EdPsqDteFat2.Clear;

  end;
end;

procedure TfmManGr2_NFE.DsFatGe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnDesGe2.Caption := ' '+FatGe2DesGe2.Value;
end;

procedure TfmManGr2_NFE.bRecuperarClick(Sender: TObject);
begin
  inherited;
  if FatGerCodEmp.Value > 0 then begin

     CodEmp := FatGerCodEmp.Value;
     DteGer := FatGerDteGer.Value;
     NumGer := FatGerNumGer.Value;

     with FatGer,SQL do begin

          Close;
          Text := sBase +
                  ' and FatGer.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                  ' and FatGer.DteGer = '+ QuotedStr(fDateToSQL(DteGer)) +
                  ' and FatGer.NumGer = '+ QuotedStr(IntToStr(NumGer)) ;
          Open;

     end;

     if FatGerCodEmp.Value > 0 then begin

        if fMsg('Recupera o arquivo enviado para o cliente ?','O') then begin

           SaveDialog.FileName := FatGerRecNFe.Value +'_v1.10-procNFe.xml';

           with quSQL,SQL do begin

                Close;
                Text := ' Select FatGer.ArqNfe'+
                        ' From FatGer'+
                        ' Where FatGer.CodEmp = '+ QuotedStr(IntToStr(FatGerCodEmp.Value)) +
                        '   and FatGer.DteGer = '+ QuotedStr(fDateToSQL(FatGerDteGer.Value)) +
                        '   and FatGer.NumGer = '+ QuotedStr(IntToStr(FatGerNumGer.Value)) ;
                Open;

                if FieldbyName('ArqNFE').AsString <> null then begin

                   if SaveDialog.Execute then TBlobField(FieldByName('ARQNFE')).SaveToFile(SaveDialog.FileName);

                end;
           end;
        end;
     end;
  end;
end;

procedure TfmManGr2_NFE.bconsultarClick(Sender: TObject);
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
  if FatGerCodEmp.Value > 0 then begin

     CodEmp := FatGerCodEmp.Value;
     DteGer := FatGerDteGer.Value;
     NumGer := FatGerNumGer.Value;

     with FatGer,SQL do begin

          Close;
          Text := sBase +
                  ' and FatGer.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                  ' and FatGer.DteGer = '+ QuotedStr(fDateToSQL(DteGer)) +
                  ' and FatGer.NumGer = '+ QuotedStr(IntToStr(NumGer)) ;
          Open;

     end;

     if FatGerCodEmp.Value > 0 then begin

        if fMsg('Confirma consulta ?','O') then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select GerEmp.SigUfe'+
                        ' From GerEmp'+
                        ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(FatGerCodEmp.Value));
                Open;

                UfeEmp := fLimpaAcentos(FieldbyName('SigUfe').AsString);

           end;

           if not directoryExists('C:\EMERION\NFE') then CreateDir('C:\EMERION\NFE');

           if not directoryExists('C:\EMERION\REQ') then CreateDir('C:\EMERION\REQ');

           if not directoryExists('C:\EMERION\RESP') then CreateDir('C:\EMERION\RESP');

           if not directoryExists('C:\EMERION\BACKUP\NFE') then CreateDir('C:\EMERION\BACKUP\NFE');

           Application.ProcessMessages;

           fmManPri.Enabled := False;

           fmManGr2_NFE.Enabled := False;

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
                          FatGerSeqNFe.Value);

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

                       if pos(FatGerSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

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
                                FatGerSeqNFe.Value);

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

                             if pos(FatGerSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

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

                       FatGer.Edit;

                       FatGerFlgAtu.Value := 'F';
                       FatGerRETNFE.Value := copy(Trim(MSGNFE),1,100);

                       with FatGer do begin

                            fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                            try

                               ApplyUpdates; {Tenta aplicar as alterações};

                               fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                            except

                               fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                               if FatGer.State <> dsBrowse then FatGer.CancelUpdates;

                               FatGer.Close;
                               FatGer.Open;

                               grFatGer.SetFocus;

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

                       FatGer.Edit;

                       FatGerFlgAtu.Value := 'F';
                       FatGerDTECNE.Value := StrToDate(DTECNE);
                       FatGerHRECNE.Value := HRECNE; 

                       with FatGer do begin

                            fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                            try

                               ApplyUpdates; {Tenta aplicar as alterações};

                               fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                            except

                               fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                               if FatGer.State <> dsBrowse then FatGer.CancelUpdates;

                               FatGer.Close;
                               FatGer.Open;

                               grFatGer.SetFocus;

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

                       fmManGr2_NFE.Enabled := True;

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

                 fmManGr2_NFE.Enabled := True;

                 pnMensag.Visible := False;

                 fmsgErro(MSGNFE,Nil);

              end;
           end;

           fmManPri.Enabled := True;

           fmManGr2_NFE.Enabled := True;

           pnMensag.Visible := False;

        end;
     end;
  end;
end;

procedure TfmManGr2_NFE.BitBtn1Click(Sender: TObject);
var
  NroReg : integer;
  DscPro, sNumeroNF, NomEmp: string;
begin
  inherited;
  if FatGerCodEmp.Value > 0 then begin

     CodEmp := FatGerCodEmp.Value;
     DteGer := FatGerDteGer.Value;
     NumGer := FatGerNumGer.Value;

     with FatGer,SQL do begin

          Close;
          Text := sBase +
                  ' and FatGer.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                  ' and FatGer.DteGer = '+ QuotedStr(fDateToSQL(DteGer)) +
                  ' and FatGer.NumGer = '+ QuotedStr(IntToStr(NumGer)) ;
          Open;

     end;

     if FatGerCodEmp.Value > 0 then begin

        if fMsg('Confirma impressão da DANFE ?','O') then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select GerEmp.NomEmp'+
                        ' From GerEmp'+
                        ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(FatGerCodEmp.Value));
                Open;

                NomEmp := fLimpaAcentos(FieldbyName('NomEmp').AsString);

           end;

           GEmail := FatGerEm1Cli.Value;

           sNumeroNF := copy(fNumZeros(IntToStr(FatGerNroNfs.Value),9),1,3)+ '.' +
                        copy(fNumZeros(IntToStr(FatGerNroNfs.Value),9),4,3)+ '.' +
                        copy(fNumZeros(IntToStr(FatGerNroNfs.Value),9),7,3);

           GAssunto := 'NF-e: '+ sNumeroNF + ' ' + UpperCase(Trim(NomEmp));

           with quSQL,SQL do begin

                Close;
                Text := ' Delete From FatNfe'+
                        ' Where FatNfe.Out_CodEmp = '+ QuotedStr(IntToStr(FatGerCodEmp.Value)) +
                        '   and FatNfe.Out_DteGer = '+ QuotedStr(fDateToSQL(FatGerDteGer.Value)) +
                        '   and FatNfe.Out_NumGer = '+ QuotedStr(IntToStr(FatGerNumGer.Value)) ;
                ExecSQL;

           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Select FatGe2.CodClp,'+
                        '        FatGe2.CodGru,'+
                        '        FatGe2.CodSub,'+
                        '        FatGe2.CodPro,'+
                        '        FatGe2.CodTam,'+
                        '        FatGe2.CodCor,'+
                        '        FatGe2.DesGe2,'+
                        '        FatGe2.ObsGe2,'+
                        '        FatGe2.CodCfo,'+
                        '        FatGe2.ClsIpi,'+
                        '        FatGe2.CodSt1,'+
                        '        FatGe2.CodSt2,'+
                        '        FatGe2.CodUnd,'+
                        '        FatGe2.QtpGe2,'+
                        '        FatGe2.VluGe2,'+
                        '        FatGe2.TotIte,'+
                        '        FatGe2.BasIcm,'+
                        '        FatGe2.TotIcm,'+
                        '        FatGe2.TotIpi,'+
                        '        FatGe2.IcmGe2,'+
                        '        FatGe2.IpiGe2,'+
                        '        FatGe2.NroGe2 '+
                        ' From FatGe2'+
                        ' Where FatGe2.CodEmp = '+ Quotedstr(IntToStr(FatGerCodEmp.Value)) +
                        '   and FatGe2.DteGer = '+ Quotedstr(fDateToSQL(FatGerDteGer.Value)) +
                        '   and FatGe2.NumGer = '+ Quotedstr(IntToStr(FatGerNumGer.Value)) +
                        ' Order by FatGe2.NroGe2';
                Open;
                First;

           end;

           NroReg := 0;

           while not quSQL.EOF do begin

                 if quSQL.FieldbyName('CodClp').AsString <> '8' then begin

                    Inc(NroReg);

                    with quSQL1,SQL do begin

                         Close;
                         Text := 'Insert Into FatNfe(Out_CodEmp,Out_DteGer,Out_NumGer,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DesNfe,CfoNfe,NcmNfe,SitNfe,UndNfe,QtpNfe,VlqNfe,TotNfe,BasIcm,TotIcm,TotIpi,IcmNfe,IpiNfe,NroNfe,IteNfe)'+
                                 '            Values(:Out_CodEmp,:Out_DteGer,:Out_NumGer,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DesNfe,:CfoNfe,:NcmNfe,:SitNfe,:UndNfe,:QtpNfe,:VlqNfe,:TotNfe,:BasIcm,:TotIcm,:TotIpi,:IcmNfe,:IpiNfe,:NroNfe,:IteNfe)';

                         with Params do begin

                              Params[00].AsInteger  := FatGerCodEmp.Value;
                              Params[01].AsDateTime := FatGerDteGer.Value;
                              Params[02].AsInteger  := FatGerNumGer.Value;

                              if quSQL.FieldbyName('CodClp').AsString <> '9' then begin

                                 Params[03].AsString := quSQL.FieldbyName('CodClp').AsString;
                                 Params[04].AsString := quSQL.FieldbyName('CodGru').AsString;
                                 Params[05].AsString := quSQL.FieldbyName('CodSub').AsString;
                                 Params[06].AsString := quSQL.FieldbyName('CodPro').AsString;
                                 Params[07].AsString := quSQL.FieldbyName('CodTam').AsString;
                                 Params[08].AsString := quSQL.FieldbyName('CodCor').AsString;

                                 end
                              else
                                 begin

                                 Params[03].AsString := '';
                                 Params[04].AsString := '';
                                 Params[05].AsString := '';
                                 Params[06].AsString := '';
                                 Params[07].AsString := '';
                                 Params[08].AsString := '';

                              end;

                              Params[09].AsString  := Trim(quSQL.FieldbyName('DesGe2').AsString);
                              Params[10].AsString  := Trim(quSQL.FieldbyName('CodCfo').AsString);
                              Params[11].AsString  := Trim(quSQL.FieldbyName('ClsIpi').AsString);
                              Params[12].AsString  := quSQL.FieldbyName('CodSt1').AsString+ ' ' +quSQL.FieldbyName('CodSt2').AsString;
                              Params[13].AsString  := Trim(quSQL.FieldbyName('CodUnd').AsString);
                              Params[14].AsFloat   := quSQL.FieldbyName('QtpGe2').AsFloat;
                              Params[15].AsFloat   := quSQL.FieldbyName('VluGe2').AsFloat;
                              Params[16].AsFloat   := quSQL.FieldbyName('TotIte').AsFloat;
                              Params[17].AsFloat   := quSQL.FieldbyName('BasIcm').AsFloat;
                              Params[18].AsFloat   := quSQL.FieldbyName('TotIcm').AsFloat;
                              Params[19].AsFloat   := quSQL.FieldbyName('TotIpi').AsFloat;
                              Params[20].AsFloat   := quSQL.FieldbyName('IcmGe2').AsFloat;
                              Params[21].AsFloat   := quSQL.FieldbyName('IpiGe2').AsFloat;
                              Params[22].AsInteger := NroReg;
                              Params[23].AsString  := 'Sim';

                         end;

                         ExecSQL;

                    end;

                    if Trim(quSQL.FieldbyName('ObsGe2').AsString) <> '' then begin

                       Inc(NroReg);

                       with quSQL1,SQL do begin

                            Close;
                            Text := 'Insert Into FatNfe(Out_CodEmp,Out_DteGer,Out_NumGer,DesNfe,NroNfe,IteNfe)'+
                                    '            Values(:Out_CodEmp,:Out_DteGer,:Out_NumGer,:DesNfe,:NroNfe,:IteNfe)';

                            with Params do begin

                                 Params[0].AsInteger  := FatGerCodEmp.Value;
                                 Params[1].AsDateTime := FatGerDteGer.Value;
                                 Params[2].AsInteger  := FatGerNumGer.Value;
                                 Params[3].AsString   := Trim(quSQL.FieldbyName('ObsGe2').AsString);
                                 Params[4].AsInteger  := NroReg;
                                 Params[5].AsString   := 'Nao';

                            end;

                            ExecSQL;

                       end;
                    end;

                    end
                 else
                    begin

                    DscPro := Trim(quSQL.FieldbyName('DesGe2').AsString)+ ' ' +quSQL.FieldbyName('ObsGe2').AsString;

                    Inc(NroReg);

                    with quSQL1,SQL do begin

                         Close;
                         Text := 'Insert Into FatNfe(Out_CodEmp,Out_DteGer,Out_NumGer,DesNfe,NroNfe,IteNfe) Values(:Out_CodEmp,:Out_DteGer,:Out_NumGer,:DesNfe,:NroNfe,:IteNfe)';

                         with Params do begin

                              Params[0].AsInteger  := FatGerCodEmp.Value;
                              Params[1].AsDateTime := FatGerDteGer.Value;
                              Params[2].AsInteger  := FatGerNumGer.Value;
                              Params[3].AsString   := copy(DscPro,1,40);
                              Params[4].AsInteger  := NroReg;
                              Params[5].AsString   := 'Nao';

                         end;

                         ExecSQL;

                    end;

                    if Trim(copy(DscPro,41,40)) <> '' then begin

                       Inc(NroReg);

                       with quSQL1,SQL do begin

                            Close;
                            Text := 'Insert Into FatNfe(Out_CodEmp,Out_DteGer,Out_NumGer,DesNfe,NroNfe,IteNfe) Values(:Out_CodEmp,:Out_DteGer,:Out_NumGer,:DesNfe,:NroNfe,:IteNfe)';

                            with Params do begin

                                 Params[0].AsInteger  := FatGerCodEmp.Value;
                                 Params[1].AsDateTime := FatGerDteGer.Value;
                                 Params[2].AsInteger  := FatGerNumGer.Value;
                                 Params[3].AsString   := Trim(copy(DscPro,41,40));
                                 Params[4].AsInteger  := NroReg;
                                 Params[5].AsString   := 'Nao';

                            end;

                            ExecSQL;

                       end;
                    end;

                    if Trim(copy(DscPro,81,40)) <> '' then begin

                       Inc(NroReg);

                       with quSQL1,SQL do begin

                            Close;
                            Text := 'Insert Into FatNfe(Out_CodEmp,Out_DteGer,Out_NumGer,DesNfe,NroNfe,IteNfe) Values(:Out_CodEmp,:Out_DteGer,:Out_NumGer,:DesNfe,:NroNfe,:IteNfe)';

                            with Params do begin

                                 Params[0].AsInteger  := FatGerCodEmp.Value;
                                 Params[1].AsDateTime := FatGerDteGer.Value;
                                 Params[2].AsInteger  := FatGerNumGer.Value;
                                 Params[3].AsString   := Trim(copy(DscPro,81,40));
                                 Params[4].AsInteger  := NroReg;
                                 Params[5].AsString   := 'Nao';

                            end;

                            ExecSQL;

                       end;
                    end;
                 end;

                 quSQL.Next;

           end;

           try

              fmManE02_NFE := TfmManE02_NFE.Create(Self);

              fmManE02_NFE.FatGer.Close;
              fmManE02_NFE.FatGer.Params[0].AsInteger  := FatGerCodEmp.Value;
              fmManE02_NFE.FatGer.Params[1].AsDateTime := FatGerDteGer.Value;
              fmManE02_NFE.FatGer.Params[2].AsInteger  := FatGerNumGer.Value;
              fmManE02_NFE.FatGer.Open;

              fmManE02_NFE.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE02_NFE);

           end;

           if FatGerImpNFe.Value = 'Nao' then begin

              if fMsg('DANFE impressa corretamente ?','O') then begin

                 FatGer.Edit;

                 FatGerFlgAtu.Value := 'F';
                 FatGerImpNFe.Value := 'Sim';

                 with FatGer do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         if FatGer.State <> dsBrowse then FatGer.CancelUpdates;

                         FatGer.Close;
                         FatGer.Open;

                         grFatGer.SetFocus;

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

procedure TfmManGr2_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

end.

