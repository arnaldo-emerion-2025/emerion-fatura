unit ManSco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, ppStrtch, ppMemo, ppBands, ppClass, ppCtrls,
  ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppRptExp, Psock, NMsmtp, SakEmail, dxfProgressBar, OleServer,
  Outlook8, dxDBGrid, dxTL, dxDBCtrl, dxDBTLCl, dxGrClms,
  dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit;

type
  TfmManSco = class(TfmPadrao)
    CmpSco: TwwQuery;
    DsCmpSco: TwwDataSource;
    PaintBox: TPaintBox;
    EdPsqDteSco1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteSco2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    EdPsqCodGru: TdxColorEdit;
    EdPsqCodClp: TdxColorEdit;
    bPsqClp: TSpeedButton;
    bPsqGru: TSpeedButton;
    EdPsqNomGru: TdxColorEdit;
    EdPsqNomClp: TdxColorEdit;
    bPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    grSco: ThGrid;
    pnSitSco: TPanel;
    grSco1: TdxDBGraphicEdit;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    bExcluir: TSpeedButton;
    UpCmpSco: TUpdateSQL;
    quSQL: TwwQuery;
    Label17: TLabel;
    Label1: TLabel;
    EdPsqCodSub: TdxColorEdit;
    bPsqSub: TSpeedButton;
    EdPsqNomSub: TdxColorEdit;
    Label4: TLabel;
    EdPsqCodPro: TdxColorEdit;
    bPsqPro: TSpeedButton;
    EdPsqDscPro: TdxColorEdit;
    Label5: TLabel;
    EdPsqId_FinFor: TdxColorEdit;
    bPsqFor: TSpeedButton;
    EdPsqNomFor: TdxColorEdit;
    Label3: TLabel;
    bPsqPo1: TSpeedButton;
    EdPsqNomPo1: TdxColorEdit;
    Label6: TLabel;
    EdPsqId_PorDes: TdxColorEdit;
    bPsqPo2: TSpeedButton;
    EdPsqNomPo2: TdxColorEdit;
    CmpScoID_CMPSCO: TIntegerField;
    CmpScoDTESCO: TDateTimeField;
    CmpScoHRESCO: TStringField;
    CmpScoCODCLP: TStringField;
    CmpScoCODGRU: TStringField;
    CmpScoCODSUB: TStringField;
    CmpScoCODPRO: TStringField;
    CmpScoID_FINFOR: TIntegerField;
    CmpScoID_PORORI: TIntegerField;
    CmpScoID_PORDES: TIntegerField;
    CmpScoCLSIPI: TStringField;
    CmpScoQTDSC2: TIntegerField;
    CmpScoFOBSCO: TFloatField;
    CmpScoVALTMO: TFloatField;
    CmpScoQTDSCO: TFloatField;
    CmpScoMRGSCO: TFloatField;
    CmpScoTOTCXA: TFloatField;
    CmpScoTOTCUB: TFloatField;
    CmpScoSEQSCO: TStringField;
    CmpScoSITSCO: TStringField;
    CmpScoDSCPRO: TStringField;
    CmpScoCODITE: TStringField;
    pnNomPo2: TPanel;
    pnNomPo1: TPanel;
    pnLogUsu: TPanel;
    EdPsqId_PorOri: TdxColorEdit;
    CmpScoID_GERUSU: TIntegerField;
    CmpScoLOGUSU: TStringField;
    CmpScoMINSCO: TFloatField;
    CmpScoQTDCON: TIntegerField;
    CmpScoTOTLIQ: TFloatField;
    CmpScoTOTBRT: TFloatField;
    CmpScoCUBPRO: TFloatField;
    CmpScoCXAPRO: TFloatField;
    CmpScoLIQPRO: TFloatField;
    CmpScoBRTPRO: TFloatField;
    CmpScoDTEATU: TDateTimeField;
    CmpScoHREATU: TStringField;
    CmpScoFLGATU: TStringField;
    CmpScoFRTMAR: TFloatField;
    CmpScoTOTFRT: TFloatField;
    CmpScoTOTFOB: TFloatField;
    CmpScoFRTINT: TFloatField;
    CmpScoTOTCFR: TFloatField;
    CmpScoMOESEG: TStringField;
    CmpScoVALSEG: TFloatField;
    CmpScoTIPSEG: TStringField;
    CmpScoTOTSEG: TFloatField;
    CmpScoTOTCIF: TFloatField;
    CmpScoMOEIMP: TStringField;
    CmpScoVALIMP: TFloatField;
    CmpScoTIPIMP: TStringField;
    CmpScoTOTIMP: TFloatField;
    CmpScoMOEIPI: TStringField;
    CmpScoVALIPI: TFloatField;
    CmpScoTIPIPI: TStringField;
    CmpScoTOTIPI: TFloatField;
    CmpScoMOEICM: TStringField;
    CmpScoVALICM: TFloatField;
    CmpScoTIPICM: TStringField;
    CmpScoTOTICM: TFloatField;
    CmpScoMOEPIS: TStringField;
    CmpScoVALPIS: TFloatField;
    CmpScoTIPPIS: TStringField;
    CmpScoTOTPIS: TFloatField;
    CmpScoMOECOF: TStringField;
    CmpScoVALCOF: TFloatField;
    CmpScoTIPCOF: TStringField;
    CmpScoTOTCOF: TFloatField;
    CmpScoTOTIDE: TFloatField;
    CmpScoMOEDES: TStringField;
    CmpScoVALDES: TFloatField;
    CmpScoTIPDES: TStringField;
    CmpScoTOTDES: TFloatField;
    CmpScoMOESIS: TStringField;
    CmpScoVALSIS: TFloatField;
    CmpScoTIPSIS: TStringField;
    CmpScoTOTSIS: TFloatField;
    CmpScoMOEAFR: TStringField;
    CmpScoVALAFR: TFloatField;
    CmpScoTIPAFR: TStringField;
    CmpScoTOTAFR: TFloatField;
    CmpScoMOEDSC: TStringField;
    CmpScoVALDSC: TFloatField;
    CmpScoTIPDSC: TStringField;
    CmpScoTOTDSC: TFloatField;
    CmpScoMOEEBL: TStringField;
    CmpScoVALEBL: TFloatField;
    CmpScoTIPEBL: TStringField;
    CmpScoTOTEBL: TFloatField;
    CmpScoMOECAP: TStringField;
    CmpScoVALCAP: TFloatField;
    CmpScoTIPCAP: TStringField;
    CmpScoTOTCAP: TFloatField;
    CmpScoMOELDI: TStringField;
    CmpScoVALLDI: TFloatField;
    CmpScoTIPLDI: TStringField;
    CmpScoTOTLDI: TFloatField;
    CmpScoMOEDEV: TStringField;
    CmpScoVALDEV: TFloatField;
    CmpScoTIPDEV: TStringField;
    CmpScoTOTDEV: TFloatField;
    CmpScoMOECOR: TStringField;
    CmpScoVALCOR: TFloatField;
    CmpScoTIPCOR: TStringField;
    CmpScoTOTCOR: TFloatField;
    CmpScoMOEARM: TStringField;
    CmpScoVALARM: TFloatField;
    CmpScoTIPARM: TStringField;
    CmpScoTOTARM: TFloatField;
    CmpScoMOEPRC: TStringField;
    CmpScoVALPRC: TFloatField;
    CmpScoTIPPRC: TStringField;
    CmpScoTOTPRC: TFloatField;
    CmpScoTOTMCA: TFloatField;
    CmpScoTOTENT: TFloatField;
    CmpScoTOTCST: TFloatField;
    CmpScoMOEICE: TStringField;
    CmpScoVALICE: TFloatField;
    CmpScoTIPICE: TStringField;
    CmpScoTOTICE: TFloatField;
    CmpScoMOEFIN: TStringField;
    CmpScoVALFIN: TFloatField;
    CmpScoTIPFIN: TStringField;
    CmpScoTOTFIN: TFloatField;
    CmpScoMOETRA: TStringField;
    CmpScoVALTRA: TFloatField;
    CmpScoTIPTRA: TStringField;
    CmpScoTOTTRA: TFloatField;
    CmpScoMOEMAD: TStringField;
    CmpScoVALMAD: TFloatField;
    CmpScoTIPMAD: TStringField;
    CmpScoTOTMAD: TFloatField;
    CmpScoMOESNA: TStringField;
    CmpScoVALSNA: TFloatField;
    CmpScoTIPSNA: TStringField;
    CmpScoTOTSNA: TFloatField;
    CmpScoMOEDED: TStringField;
    CmpScoVALDED: TFloatField;
    CmpScoTIPDED: TStringField;
    CmpScoTOTDED: TFloatField;
    CmpScoTOTDIS: TFloatField;
    CmpScoTOTNET: TFloatField;
    CmpScoVLUSCO: TFloatField;
    CmpScoICMSCO: TFloatField;
    CmpScoICMCAL: TFloatField;
    CmpScoIPISCO: TFloatField;
    CmpScoIPICAL: TFloatField;
    CmpScoPISSCO: TFloatField;
    CmpScoPISCAL: TFloatField;
    CmpScoCOFSCO: TFloatField;
    CmpScoCOFCAL: TFloatField;
    CmpScoIRESCO: TFloatField;
    CmpScoIRECAL: TFloatField;
    CmpScoCSSSCO: TFloatField;
    CmpScoCSSCAL: TFloatField;
    CmpScoTOTVEN: TFloatField;
    CmpScoTOTREC: TFloatField;
    CmpScoRENCAL: TFloatField;
    CmpScoVALREN: TFloatField;
    CmpScoTOTREN: TFloatField;
    CmpScoVALMLI: TFloatField;
    CmpScoTOTMLI: TFloatField;
    CmpScoTOTIND: TFloatField;
    PorOri: TwwQuery;
    PorOriAPEPOR: TStringField;
    PorDes: TwwQuery;
    PorDesAPEPOR: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure bPsqClpClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure EdPsqCodClpExit(Sender: TObject);
    procedure EdPsqCodGruExit(Sender: TObject);
    procedure DsCmpScoDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqCodClpKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodSubExit(Sender: TObject);
    procedure EdPsqCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqSubClick(Sender: TObject);
    procedure EdPsqCodProExit(Sender: TObject);
    procedure EdPsqCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqProClick(Sender: TObject);
    procedure bPsqForClick(Sender: TObject);
    procedure EdPsqId_FinForExit(Sender: TObject);
    procedure EdPsqId_FinForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqPo1Click(Sender: TObject);
    procedure EdPsqId_PorOriExit(Sender: TObject);
    procedure EdPsqId_PorOriKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqPo2Click(Sender: TObject);
    procedure EdPsqId_PorDesExit(Sender: TObject);
    procedure EdPsqId_PorDesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    {Private declarations}
  public
    {Public declarations}
    Id_CmpSco : integer;
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManSco: TfmManSco;

implementation

uses ShellApi, dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqClp,
     AuxIni, AuxPsq, ManPri, ManSc1, ManE07;

{$R *.DFM}

procedure TfmManSco.FormCreate(Sender: TObject);
begin
  inherited;

  CmpSco.Close;
  CmpSco.Params[0].AsDateTime := Date;
  CmpSco.Open;

  sBase := ' Select CmpSco.*,'+
           '        EstPro.DscPro,'+
           '        GerUsu.LogUsu,'+
           '        CmpSco.CodClp || _UNICODE_FSS '+ QuotedStr('-') +' || CmpSco.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || CmpSco.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || CmpSco.CodPro as CodIte'+
           ' From CmpSco LEFT JOIN EstPro ON (CmpSco.CodClp = EstPro.CodClp '+
           '                              AND CmpSco.CodGru = EstPro.CodGru '+
           '                              AND CmpSco.CodSub = EstPro.CodSub '+
           '                              AND CmpSco.CodPro = EstPro.CodPro)'+
           '             LEFT JOIN GerUsu ON (CmpSco.Id_GerUsu = GerUsu.CodUsu)';

end;

procedure TfmManSco.bPesquisaClick(Sender: TObject);
begin

  ActiveControl := nil;

  sFiltro := '';

  sOrdem := ' Order by CmpSco.Id_CmpSco';

  if Trim( EdPsqCodClp.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpSco.CodClp = '+ QuotedStr(EdPsqCodClp.Text)
     else
        sFiltro := ' Where CmpSco.CodClp = '+ QuotedStr(EdPsqCodClp.Text);

  end;

  if Trim( EdPsqCodGru.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpSco.CodGru = '+ QuotedStr(EdPsqCodGru.Text)
     else
        sFiltro := ' Where CmpSco.CodGru = '+ QuotedStr(EdPsqCodGru.Text);

  end;

  if Trim( EdPsqCodSub.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpSco.CodSub = '+ QuotedStr(EdPsqCodSub.Text)
     else
        sFiltro := ' Where CmpSco.CodSub = '+ QuotedStr(EdPsqCodSub.Text);

  end;

  if Trim( EdPsqCodPro.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpSco.CodPro = '+ QuotedStr(EdPsqCodPro.Text)
     else
        sFiltro := ' Where CmpSco.CodPro = '+ QuotedStr(EdPsqCodPro.Text);

  end;

  if Trim( EdPsqId_FinFor.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpSco.Id_FinFor = '+ QuotedStr(EdPsqId_FinFor.Text)
     else
        sFiltro := ' Where CmpSco.Id_FinFor = '+ QuotedStr(EdPsqId_FinFor.Text);

  end;

  if Trim( EdPsqId_PorOri.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpSco.Id_PorOri = '+ QuotedStr(EdPsqId_PorOri.Text)
     else
        sFiltro := ' Where CmpSco.Id_PorOri = '+ QuotedStr(EdPsqId_PorOri.Text);

  end;

  if Trim( EdPsqId_PorDes.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpSco.Id_PorDes = '+ QuotedStr(EdPsqId_PorDes.Text)
     else
        sFiltro := ' Where CmpSco.Id_PorDes = '+ QuotedStr(EdPsqId_PorDes.Text);

  end;

  if Trim(fLimpaStr(EdPsqDteSco1.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpSco.DteSco >= '+ QuotedStr(fDateToSQL(EdPsqDteSco1.Date))
     else
        sFiltro := ' Where CmpSco.DteSco >= '+ QuotedStr(fDateToSQL(EdPsqDteSco1.Date));
        
  end;

  if Trim(fLimpaStr(EdPsqDteSco2.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpSco.DteSco <= '+ QuotedStr(fDateToSQL(EdPsqDteSco2.Date))
     else
        sFiltro := ' Where CmpSco.DteSco <= '+ QuotedStr(fDateToSQL(EdPsqDteSco2.Date));
        
  end;

  with CmpSco,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grSco.SetFocus;

end;

procedure TfmManSco.EdPsqCodClpExit(Sender: TObject);
begin
  if Trim( EdPsqCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '+ QuotedStr(EdPsqCodClp.Text);
          Open;

          EdPsqNomClp.Text := FieldByName('NomClp').AsString;

     end;

     end
  else
     EdPsqNomClp.Text := '';
end;

procedure TfmManSco.EdPsqCodGruExit(Sender: TObject);
begin
  if Trim( EdPsqCodGru.Text ) <> '' then begin

     EdPsqCodGru.Text := FNumZeros(EdPsqCodGru.Text,3);
     
     with quSql,SQL do begin

          Close;
          Text := ' Select EstGru.NomGru From EstGru Where EstGru.CodGru = '+ QuotedStr(EdPsqCodGru.Text);
          Open;

          EdPsqNomGru.Text := FieldByName('NomGru').AsString;

     end;

     end
  else
     EdPsqNomGru.Text := '';
end;

procedure TfmManSco.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqClp := TfmPsqClp.Create(Self);
     fmPsqClp.ShowModal;

     if Trim( fmPsqClp.CodClp ) <> '' then begin

        EdPsqCodClp.Text := fmPsqClp.CodClp;
        EdPsqNomClp.Text := fmPsqClp.NomClp;

     end;

  finally

     FreeAndNil(fmPsqClp);

  end;

  EdPsqCodClp.SetFocus;

end;

procedure TfmManSco.EdPsqCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqClp := TfmPsqClp.Create(Self);
        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then begin

           EdPsqCodClp.Text := fmPsqClp.CodClp;
           EdPsqNomClp.Text := fmPsqClp.NomClp;

        end;

     finally

        FreeAndNil(fmPsqClp);

     end;
  end;
end;

procedure TfmManSco.EdPsqCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdPsqCodClp.Text;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxIni.CodGru;
           EdPsqNomGru.Text := fmAuxIni.NomGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqCodGru.SetFocus;
     
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdPsqCodClp.Text;

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxPsq.CodGru;
           EdPsqNomGru.Text := fmAuxPsq.NomGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqCodGru.SetFocus;
     
  end;
end;

procedure TfmManSco.bPsqGruClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdPsqCodClp.Text;

     fmAuxIni.TipoPesq := 'G';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqCodGru.SetFocus;
  
end;

procedure TfmManSco.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

  if key = 117 then bExcluir.OnClick(Sender);

end;

procedure TfmManSco.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodClp.SetFocus;
end;

procedure TfmManSco.DsCmpScoDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnSitSco.Caption := Trim(CmpScoSitSco.Value);
  
  pnLogUsu.Caption := ' Responsável: '+Trim(CmpScoLogUsu.Value);

  pnNomPo1.Caption := ' Porto de origem: '+Trim(PorOriApePor.Value);

  pnNomPo2.Caption := ' Porto de destino: '+Trim(PorDesApePor.Value);

end;

procedure TfmManSco.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSco.bEditarClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpScoId_CmpSco.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManSc1 then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe uma simulação em andamento.','E');

           fmManSc1.WindowState := wsNormal;
           fmManSc1.BringToFront;

           end
        else
           begin

           Id_CmpSco := CmpScoId_CmpSco.Value;

           sFiltro := ' and CmpSco.Id_CmpSco = '+ QuotedStr(IntToStr(CmpScoId_CmpSco.Value));

           with CmpSco,SQL do begin

                Close;
                Text := sBase + sFiltro;
                Open;

           end;

           if Trim(CmpScoSitSco.Value) = 'Concluida' then begin

              CmpSco.Edit;

              CmpScoSitSco.Value := 'Processo de alteracao';

              with CmpSco do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      if CmpSco.State <> dsBrowse then CmpSco.CancelUpdates;

                      EdPsqCodClp.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;
           end;

           fmManSc1 := TfmManSc1.Create(Self);
           fmManSc1.Show;

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManSco.bIncluirClick(Sender: TObject);
var
  i     : Integer;
  Found : integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManSc1 then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe uma simulação em andamento.','E');

        fmManSc1.WindowState := wsNormal;
        fmManSc1.BringToFront;

        end
     else
        begin

        Id_CmpSco := 0;

        sFiltro := ' and CmpSco.Id_CmpSco = :Id_CmpSco';

        with CmpSco,SQL do begin

             Close;
             Text := sBase + sFiltro;

             with Params do begin

                  Params[0].AsInteger := Id_CmpSco;

             end;

             Open;

        end;

        fmManSc1 := TfmManSc1.Create(Self);
        fmManSc1.Show;

     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManSco.bExcluirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpScoId_CmpSco.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManSc1 then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe uma simulação em andamento.','E');

           fmManSc1.WindowState := wsNormal;
           fmManSc1.BringToFront;

           end
        else
           begin

           if fMsg('Confirma a exclusão da simulação ?','S') then begin

              CmpSco.Delete;

              with CmpSco do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      if CmpSco.State <> dsBrowse then CmpSco.CancelUpdates;

                      grSco.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              CmpSco.Close;
              CmpSco.Open;

              grSco.SetFocus;

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManSco.bImprimirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if CmpScoId_CmpSco.Value > 0 then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManSc1 then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe uma simulação em andamento.','E');

        fmManSc1.WindowState := wsNormal;
        fmManSc1.BringToFront;

        end
     else
        begin

        Id_CmpSco := CmpScoId_CmpSco.Value;

        sFiltro := ' and CmpSco.Id_CmpSco = '+ QuotedStr(IntToStr(CmpScoId_CmpSco.Value));

        with CmpSco,SQL do begin

             Close;
             Text := sBase + sFiltro;
             Open;

        end;

        if CmpScoId_CmpSco.Value > 0 then begin

           if Trim(CmpScoSitSco.Value) <> 'Nao concluida' then begin

              if fMsg('Confirma a impressão ?','O') then begin

                 try

                    fmManE07 := TfmManE07.Create(Self);

                    fmManE07.CmpSco.Close;
                    fmManE07.CmpSco.Params[0].AsInteger := CmpScoId_CmpSco.Value;
                    fmManE07.CmpSco.Open;

                    fmManE07.RLReport1.PreviewModal;

                 finally

                    FreeAndNil(fmManE07);

                 end;
              end;

              end
           else
              fmsgErro('Operação não pode ser realizada. Operação não concluida.',Nil);

        end;
     end;
  end;
end;

procedure TfmManSco.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i     : Integer;
  Found : integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManSc1 then Found := i;

  end;

  if Found >= 0 then
     fmsgErro('Existe uma simulação em andamento. Por favor feche o formulario.',Nil)
  else
     Action := CaFree;

end;

procedure TfmManSco.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManSco := nil;
end;

procedure TfmManSco.EdPsqCodClpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManSco.EdPsqCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodSub.Text ) <> '' then begin

     EdPsqCodSub.Text := FNumZeros(EdPsqCodSub.Text,4);

     if Trim( EdPsqCodGru.Text ) <> '' then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select EstSub.NomSub'+
                     ' From EstSub'+
                     ' Where EstSub.CodGru = '+ QuotedStr(EdPsqCodGru.Text) +
                     '   and EstSub.CodSub = '+ QuotedStr(EdPsqCodSub.Text) ;
             Open;

             EdPsqNomSub.Text := FieldByName('NomSub').AsString;

        end;

        end
     else
        EdPsqNomSub.Text := '';
        
     end
  else
     EdPsqNomSub.Text := '';
end;

procedure TfmManSco.EdPsqCodSubKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdPsqCodClp.Text;
        fmAuxIni.CodGru := EdPsqCodGru.Text;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxIni.CodGru;
           EdPsqNomGru.Text := fmAuxIni.NomGru;
           EdPsqCodSub.Text := fmAuxIni.CodSub;
           EdPsqNomSub.Text := fmAuxIni.NomSub;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdPsqCodClp.Text;
        fmAuxPsq.CodGru := EdPsqCodGru.Text;

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxPsq.CodGru;
           EdPsqNomGru.Text := fmAuxPsq.NomGru;
           EdPsqCodSub.Text := fmAuxPsq.CodSub;
           EdPsqNomSub.Text := fmAuxPsq.NomSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqCodSub.SetFocus;

  end;
end;

procedure TfmManSco.bPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdPsqCodClp.Text;
     fmAuxIni.CodGru := EdPsqCodGru.Text;

     fmAuxIni.TipoPesq := 'S';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;
        EdPsqCodSub.Text := fmAuxIni.CodSub;
        EdPsqNomSub.Text := fmAuxIni.NomSub;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqCodSub.SetFocus;

end;

procedure TfmManSco.EdPsqCodProExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPro.Text ) <> '' then begin

     EdPsqCodPro.Text := FNumStrZero(EdPsqCodPro.Text);

     if Trim( EdPsqCodSub.Text ) <> '' then begin

        if Trim( EdPsqCodGru.Text ) <> '' then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select EstPro.DscPro'+
                        ' From EstPro'+
                        ' Where EstPro.CodClp = '+ QuotedStr(EdPsqCodClp.Text) +
                        '   and EstPro.CodGru = '+ QuotedStr(EdPsqCodGru.Text) +
                        '   and EstPro.CodSub = '+ QuotedStr(EdPsqCodSub.Text) +
                        '   and EstPro.CodPro = '+ QuotedStr(EdPsqCodPro.Text) ;
                Open;

                EdPsqDscPro.Text := FieldByName('DscPro').AsString;

           end;

           end
        else
           EdPsqDscPro.Text := '';
           
        end
     else
        EdPsqDscPro.Text := '';

     end
  else
     EdPsqDscPro.Text := '';
end;

procedure TfmManSco.EdPsqCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdPsqCodClp.Text;
        fmAuxIni.CodGru := EdPsqCodGru.Text;
        fmAuxIni.CodSub := EdPsqCodSub.Text;

        fmAuxIni.TipoPesq := 'IC';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdPsqCodClp.Text := fmAuxIni.CodClp;
           EdPsqNomClp.Text := fmAuxIni.NomClp;
           EdPsqCodGru.Text := fmAuxIni.CodGru;
           EdPsqNomGru.Text := fmAuxIni.NomGru;
           EdPsqCodSub.Text := fmAuxIni.CodSub;
           EdPsqNomSub.Text := fmAuxIni.NomSub;
           EdPsqCodPro.Text := fmAuxIni.CodPro;
           EdPsqDscPro.Text := fmAuxIni.DscPro;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     EdPsqCodPro.SetFocus;

  end;

  if key = 113 then begin {F5 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdPsqCodClp.Text;
        fmAuxPsq.CodGru := EdPsqCodGru.Text;
        fmAuxPsq.CodSub := EdPsqCodSub.Text;

        fmAuxPsq.TipoPesq := 'IC';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdPsqCodClp.Text := fmAuxPsq.CodClp;
           EdPsqNomClp.Text := fmAuxPsq.NomClp;
           EdPsqCodGru.Text := fmAuxPsq.CodGru;
           EdPsqNomGru.Text := fmAuxPsq.NomGru;
           EdPsqCodSub.Text := fmAuxPsq.CodSub;
           EdPsqNomSub.Text := fmAuxPsq.NomSub;
           EdPsqCodPro.Text := fmAuxPsq.CodPro;
           EdPsqDscPro.Text := fmAuxPsq.DscPro;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqCodPro.SetFocus;

  end;
end;

procedure TfmManSco.bPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdPsqCodClp.Text;
     fmAuxIni.CodGru := EdPsqCodGru.Text;
     fmAuxIni.CodSub := EdPsqCodSub.Text;

     fmAuxIni.TipoPesq := 'IC';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdPsqCodClp.Text := fmAuxPsq.CodClp;
        EdPsqNomClp.Text := fmAuxPsq.NomClp;
        EdPsqCodGru.Text := fmAuxPsq.CodGru;
        EdPsqNomGru.Text := fmAuxPsq.NomGru;
        EdPsqCodSub.Text := fmAuxPsq.CodSub;
        EdPsqNomSub.Text := fmAuxPsq.NomSub;
        EdPsqCodPro.Text := fmAuxPsq.CodPro;
        EdPsqDscPro.Text := fmAuxPsq.DscPro;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqCodPro.SetFocus;
  
end;

procedure TfmManSco.bPsqForClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        EdPsqId_FinFor.Text := IntToStr(fmAuxIni.CodFor);

        EdPsqNomFor.Text := fmAuxIni.NomFor;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqId_FinFor.SetFocus;

end;

procedure TfmManSco.EdPsqId_FinForExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqId_FinFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinFor.NomFor From FinFor Where FinFor.CodFor = '+ QuotedStr(EdPsqId_FinFor.Text);
          Open;

          EdPsqNomFor.Text := FieldByName('NomFor').AsString;

     end;

     end
  else
     EdPsqNomFor.Text := '';
end;

procedure TfmManSco.EdPsqId_FinForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           EdPsqId_FinFor.Text := IntToStr(fmAuxIni.CodFor);

           EdPsqNomFor.Text := fmAuxIni.NomFor;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqId_FinFor.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           EdPsqId_FinFor.Text := IntToStr(fmAuxPsq.CodFor);

           EdPsqNomFor.Text := fmAuxPsq.NomFor;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqId_FinFor.SetFocus;

  end;
end;

procedure TfmManSco.bPsqPo1Click(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Portos1';

     fmAuxIni.ShowModal;

     if fmAuxIni.Id_CmpPor > 0 then begin

        EdPsqId_PorOri.Text := IntToStr(fmAuxIni.Id_CmpPor);

        EdPsqNomPo1.Text := fmAuxIni.NomPor;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqId_PorOri.SetFocus;

end;

procedure TfmManSco.EdPsqId_PorOriExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqId_PorOri.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select CmpPor.ApePor From CmpPor Where CmpPor.Id_CmpPor = '+ QuotedStr(EdPsqId_PorOri.Text);
          Open;

          EdPsqNomPo1.Text := FieldByName('ApePor').AsString;

     end;

     end
  else
     EdPsqNomPo1.Text := '';
end;

procedure TfmManSco.EdPsqId_PorOriKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Portos1';

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_CmpPor > 0 then begin

           EdPsqId_PorOri.Text := IntToStr(fmAuxIni.Id_CmpPor);

           EdPsqNomPo1.Text := fmAuxIni.NomPor;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqId_PorOri.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Portos1';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.Id_CmpPor > 0 then begin

           EdPsqId_PorOri.Text := IntToStr(fmAuxPsq.Id_CmpPor);

           EdPsqNomPo1.Text := fmAuxPsq.NomPor;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqId_PorOri.SetFocus;

  end;
end;

procedure TfmManSco.bPsqPo2Click(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Portos1';

     fmAuxIni.ShowModal;

     if fmAuxIni.Id_CmpPor > 0 then begin

        EdPsqId_PorDes.Text := IntToStr(fmAuxIni.Id_CmpPor);

        EdPsqNomPo2.Text := fmAuxIni.NomPor;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqId_PorDes.SetFocus;

end;

procedure TfmManSco.EdPsqId_PorDesExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqId_PorDes.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select CmpPor.ApePor From CmpPor Where CmpPor.Id_CmpPor = '+ QuotedStr(EdPsqId_PorDes.Text);
          Open;

          EdPsqNomPo2.Text := FieldByName('ApePor').AsString;

     end;

     end
  else
     EdPsqNomPo2.Text := '';
end;

procedure TfmManSco.EdPsqId_PorDesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Portos1';

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_CmpPor > 0 then begin

           EdPsqId_PorDes.Text := IntToStr(fmAuxIni.Id_CmpPor);

           EdPsqNomPo2.Text := fmAuxIni.NomPor;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqId_PorDes.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Portos1';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.Id_CmpPor > 0 then begin

           EdPsqId_PorDes.Text := IntToStr(fmAuxPsq.Id_CmpPor);

           EdPsqNomPo2.Text := fmAuxPsq.NomPor;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqId_PorDes.SetFocus;

  end;
end;

end.
