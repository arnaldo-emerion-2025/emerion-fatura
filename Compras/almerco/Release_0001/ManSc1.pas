unit ManSc1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Buttons, dxCntner, dxEditor, dxEdLib,
  dxDBELib, dxDBColorEdit, dxExEdtr, dxDBColorCurrencyEdit,
  dxDBColorDateEdit, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, ComCtrls, dxfProgressBar;

type
  TfmManSc1 = class(TfmPadrao)
    PaintBox: TPaintBox;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    EdNomClp: TdxDBColorEdit;
    pnNomClp: TPanel;
    EdCodClp: TdxDBColorEdit;
    bPsqClp: TSpeedButton;
    Label12: TLabel;
    EdCodGru: TdxDBColorEdit;
    bPsqGru: TSpeedButton;
    EdNomGru: TdxDBColorEdit;
    pnNomGru: TPanel;
    EdCodSub: TdxDBColorEdit;
    bPsqSub: TSpeedButton;
    EdNomSub: TdxDBColorEdit;
    pnNomSub: TPanel;
    EdCodPro: TdxDBColorEdit;
    bPsqPro: TSpeedButton;
    EdDscPro: TdxDBColorEdit;
    pnDscPro: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdDteSco: TdxDBColorDateEdit;
    Label5: TLabel;
    EdQtdSco: TdxDBColorCurrencyEdit;
    Label6: TLabel;
    EdValTmo: TdxDBColorCurrencyEdit;
    EdClsIpi: TdxDBColorEdit;
    pnClsIpi: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    EdMrgSco: TdxDBColorCurrencyEdit;
    CmpSco: TwwQuery;
    UpCmpSco: TUpdateSQL;
    DsCmpSco: TwwDataSource;
    quSql: TwwQuery;
    Label11: TLabel;
    EdId_PorOri: TdxDBColorEdit;
    bPsqPo1: TSpeedButton;
    EdNomPo1: TdxDBColorEdit;
    pnNomPo1: TPanel;
    Label13: TLabel;
    EdId_PorDes: TdxDBColorEdit;
    bPsqPo2: TSpeedButton;
    EdNomPo2: TdxDBColorEdit;
    pnNomPo2: TPanel;
    Label14: TLabel;
    EdId_FinFor: TdxDBColorEdit;
    bPsqFor: TSpeedButton;
    pnNomFor: TPanel;
    EdNomFor: TdxDBColorEdit;
    EdId_CmpCso: TdxDBColorEdit;
    pnlId_CmpSco: TPanel;
    Label15: TLabel;
    pnId_CmpSco: TPanel;
    Label16: TLabel;
    EdFobSco: TdxDBColorCurrencyEdit;
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
    CmpScoFOBSCO: TFloatField;
    CmpScoVALTMO: TFloatField;
    CmpScoQTDSCO: TFloatField;
    CmpScoMRGSCO: TFloatField;
    CmpScoTOTCXA: TFloatField;
    CmpScoTOTCUB: TFloatField;
    CmpScoSEQSCO: TStringField;
    CmpScoSITSCO: TStringField;
    CmpSc2: TwwQuery;
    UpCmpSc2: TUpdateSQL;
    DsCmpSc2: TwwDataSource;
    Panel15: TPanel;
    Panel16: TPanel;
    grSc2: ThGrid;
    Panel17: TPanel;
    Label18: TLabel;
    CmpSc2ID_CMPSC2: TIntegerField;
    CmpSc2ID_CMPSCO: TIntegerField;
    CmpSc2ID_CMPARM: TIntegerField;
    CmpSc2MSCSC2: TFloatField;
    CmpSc2THCSC2: TFloatField;
    CmpSc2PESMAX: TFloatField;
    CmpSc2CUBMAX: TFloatField;
    CmpSc2QTDPRE: TIntegerField;
    CmpSc2QTDUTI: TIntegerField;
    CmpSc2FLGUSA: TStringField;
    CmpSc2NOMARM: TStringField;
    LbText: TLabel;
    Label19: TLabel;
    CmpScoQTDSC2: TIntegerField;
    Label20: TLabel;
    EdMinSco: TdxDBColorCurrencyEdit;
    CmpScoMINSCO: TFloatField;
    CmpScoID_GERUSU: TIntegerField;
    EdTotCxa: TdxDBColorEdit;
    pnlTotCxa: TPanel;
    pnTotCxa: TPanel;
    pnlTotLiq: TPanel;
    pnTotLiq: TPanel;
    EdTotLiq: TdxDBColorEdit;
    EdTotBrt: TdxDBColorEdit;
    pnlTotBrt: TPanel;
    pnTotBrt: TPanel;
    Label17: TLabel;
    Label9: TLabel;
    Label21: TLabel;
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
    Label10: TLabel;
    EdTotCub: TdxDBColorEdit;
    pnlTotCub: TPanel;
    pnTotCub: TPanel;
    Label22: TLabel;
    EdQtdCon: TdxDBColorEdit;
    pnlQtdCon: TPanel;
    pnQtdCon: TPanel;
    pnlTotFrt: TPanel;
    pnTotFrt: TPanel;
    EdTotFrt: TdxDBColorEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    quSQL1: TwwQuery;
    Label31: TLabel;
    dxDBColorEdit2: TdxDBColorEdit;
    Panel4: TPanel;
    Label32: TLabel;
    dxDBColorEdit3: TdxDBColorEdit;
    Panel6: TPanel;
    Label33: TLabel;
    ProgressBar1: TdxfProgressBar;
    ProgressBar2: TdxfProgressBar;
    CmpScoTOTFRT: TFloatField;
    pncontainer: TPanel;
    pncontainer1: TPanel;
    Label34: TLabel;
    EdQtdUti: TdxDBColorCurrencyEdit;
    CmpScoTOTFOB: TFloatField;
    CmpScoFRTINT: TFloatField;
    CmpScoTOTCFR: TFloatField;
    CmpScoMOESEG: TStringField;
    CmpScoVALSEG: TFloatField;
    CmpScoTIPSEG: TStringField;
    CmpScoTOTSEG: TFloatField;
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
    CmpScoTOTCIF: TFloatField;
    CmpScoMOECAP: TStringField;
    CmpScoVALCAP: TFloatField;
    CmpScoTIPCAP: TStringField;
    CmpScoTOTCAP: TFloatField;
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
    CmpScoMOEICE: TStringField;
    CmpScoVALICE: TFloatField;
    CmpScoTIPICE: TStringField;
    CmpScoTOTICE: TFloatField;
    CmpScoTOTENT: TFloatField;
    CmpScoTOTCST: TFloatField;
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
    CmpScoFRTMAR: TFloatField;
    CmpScoTOTIND: TFloatField;
    CmpScoVLUINF: TFloatField;
    pnPeso: TLabel;
    pnCubagem: TLabel;
    CmpScoTOTINF: TFloatField;
    procedure SaiItem;
    procedure SaiGrupo;
    procedure SaiSubgrupo;
    procedure CalculaCusto;
    procedure SaiFornecedor;
    procedure SaiPortoOrigem;
    procedure SaiPortoDestino;
    procedure SaiClassificacao;
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodClpKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodClpEnter(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodGruEnter(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqClpClick(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqSubClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqProClick(Sender: TObject);
    procedure EdId_FinForEnter(Sender: TObject);
    procedure EdId_FinForExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdId_FinForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqForClick(Sender: TObject);
    procedure EdId_PorOriExit(Sender: TObject);
    procedure EdId_PorOriKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqPo1Click(Sender: TObject);
    procedure EdId_PorDesExit(Sender: TObject);
    procedure EdId_PorDesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqPo2Click(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmpScoNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DsCmpSc2DataChange(Sender: TObject; Field: TField);
    procedure PaintBox1Paint(Sender: TObject);
    procedure EdDteScoEnter(Sender: TObject);
    procedure grSc2Enter(Sender: TObject);
    procedure grSc2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pncontainer1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DsCmpScoDataChange(Sender: TObject; Field: TField);
  private
    psaida : string;
    sEntr,sEnc : string;
    AntVluInf : real;
    AntMrgSco : real;
    TipoCusto : string;
    { Private declarations }
  public
    Finalizar : string;
    { Public declarations }
  end;

var
  fmManSc1: TfmManSc1;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, PsqClp, AuxIni,
     AuxPsq, ManSco, PsqEs2, ManSc2;

{$R *.DFM}

procedure TfmManSc1.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSc1.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManSc1.EdCodClpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManSc1.EdCodClpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Iniciais F3-Descricao CTRL+E-Estoque F5-Referencia F6-Inteligente descrição F7-Inteligente referencia F8-Part number';

end;

procedure TfmManSc1.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqClp := TfmPsqClp.Create(Self);
     fmPsqClp.ShowModal;

     if Trim( fmPsqClp.CodClp ) <> '' then CmpScoCodClp.Value := fmPsqClp.CodClp;

  finally

     FreeAndNil(fmPsqClp);

  end;

  if Trim(CmpScoCodClp.Value) <> '' then
     SaiClassificacao
  else
     EdCodClp.SetFocus;

end;

procedure TfmManSc1.EdCodClpExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdMrgSco.Focused) and
        (not EdValTmo.Focused) and
        (not EdDteSco.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiClassificacao;

  end;
end;

procedure TfmManSc1.SaiClassificacao;
begin
  if Trim( CmpScoCodClp.Value ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstClp Where EstClp.CodClp = '+ QuotedStr(CmpScoCodClp.Value);
          Open;

     end;

     if quSql.FieldbyName('QtdReg').AsInteger = 0 then
        fmsgErro('Classificação informada não localizada.',EdCodClp)
     else
        EdCodGru.SetFocus;

     end
  else
     fmsgErro('Classificação informada não localizada.',EdCodClp);
end;

procedure TfmManSc1.EdCodClpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqClp := TfmPsqClp.Create(Self);
        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then CmpScoCodClp.Value := fmPsqClp.CodClp;

     finally

        FreeAndNil(fmPsqClp);

     end;

     if Trim(CmpScoCodClp.Value) <> '' then
        SaiClassificacao
     else
        EdCodClp.SetFocus;

  end;
end;

procedure TfmManSc1.EdCodGruEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Iniciais F2-Inteligente F3-Descrição CTRL+E-Estoque F5-Referencia F6-Int Descrição F7-Int referencia F8-Part number';

end;

procedure TfmManSc1.EdCodGruExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodClp.Focused) and
        (not EdMrgSco.Focused) and
        (not EdValTmo.Focused) and
        (not EdDteSco.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiGrupo;

  end;
end;

procedure TfmManSc1.SaiGrupo;
begin
  if Trim( CmpScoCodGru.Value ) <> '' then begin

     CmpScoCodGru.Value := FNumZeros(CmpScoCodGru.Value,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstGru.NomGru From EstGru Where EstGru.CodGru = '+ QuotedStr(CmpScoCodGru.Value);
          Open;

          pnNomGru.Caption := FieldbyName('NomGru').AsString;

     end;

     if Trim(quSql.FieldbyName('NomGru').AsString) = '' then
        fmsgErro('Grupo informado não localizado.',EdCodGru)
     else
        EdCodSub.SetFocus;

     end
  else
     begin

     pnNomGru.Caption := '';
     
     fmsgErro('Grupo informado não localizado.',EdCodGru);

  end;   
end;

procedure TfmManSc1.EdCodGruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := CmpScoCodClp.Value;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if CmpSco.State = dsBrowse then begin

              if CmpScoId_CmpSco.Value > 0 then
                 CmpSco.Edit
              else
                 CmpSco.Append;

           end;

           CmpScoCodGru.Value := fmAuxIni.CodGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpScoCodGru.Value ) <> '' then
        SaiGrupo
     else
        EdCodGru.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := CmpScoCodClp.Value;

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if CmpSco.State = dsBrowse then begin

              if CmpScoId_CmpSco.Value > 0 then
                 CmpSco.Edit
              else
                 CmpSco.Append;

           end;

           CmpScoCodGru.Value := fmAuxPsq.CodGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpScoCodGru.Value ) <> '' then
        SaiGrupo
     else
        EdCodGru.SetFocus;

  end;
end;

procedure TfmManSc1.bPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := CmpScoCodClp.Value;

     fmAuxIni.TipoPesq := 'G';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        if CmpSco.State = dsBrowse then begin

           if CmpScoId_CmpSco.Value > 0 then
              CmpSco.Edit
           else
              CmpSco.Append;

        end;

        CmpScoCodGru.Value := fmAuxIni.CodGru;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( CmpScoCodGru.Value ) <> '' then
     SaiGrupo
  else
     EdCodGru.SetFocus;

end;

procedure TfmManSc1.EdCodSubExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodGru.Focused) and
        (not EdCodClp.Focused) and
        (not EdMrgSco.Focused) and
        (not EdValTmo.Focused) and
        (not EdDteSco.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiSubgrupo;

  end;
end;

procedure TfmManSc1.SaiSubgrupo;
begin
  if Trim( CmpScoCodSub.Value ) <> '' then begin

     CmpScoCodSub.Value := FNumZeros(CmpScoCodSub.Value,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstSub.NomSub'+
                  ' From EstSub'+
                  ' Where EstSub.CodGru = '+ QuotedStr(CmpScoCodGru.Value)+
                  '   and EstSub.CodSub = '+ QuotedStr(CmpScoCodSub.Value);
          Open;

          pnNomSub.Caption := Trim(FieldbyName('NomSub').AsString);

     end;

     if Trim(quSql.FieldbyName('NomSub').AsString) = '' then
        fmsgErro('Subgrupo informado não localizado.',EdCodSub)
     else
        EdCodPro.SetFocus;

     end
  else
     fmsgErro('Subgrupo informado não localizado.',EdCodSub);
end;

procedure TfmManSc1.EdCodSubKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := CmpScoCodClp.Value;
        fmAuxIni.CodGru := CmpScoCodGru.Value;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if CmpSco.State = dsBrowse then begin

              if CmpScoId_CmpSco.Value > 0 then
                 CmpSco.Edit
              else
                 CmpSco.Append;

           end;

           CmpScoCodGru.Value := fmAuxIni.CodGru;
           CmpScoCodSub.Value := fmAuxIni.CodSub;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpScoCodSub.Value ) <> '' then
        SaiSubGrupo
     else
        EdCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := CmpScoCodClp.Value;
        fmAuxPsq.CodGru := CmpScoCodGru.Value;

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if CmpSco.State = dsBrowse then begin

              if CmpScoId_CmpSco.Value > 0 then
                 CmpSco.Edit
              else
                 CmpSco.Append;

           end;

           CmpScoCodGru.Value := fmAuxPsq.CodGru;
           CmpScoCodSub.Value := fmAuxPsq.CodSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpScoCodSub.Value ) <> '' then
        SaiSubGrupo
     else
        EdCodSub.SetFocus;

  end;
end;

procedure TfmManSc1.bPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := CmpScoCodClp.Value;
     fmAuxIni.CodGru := CmpScoCodGru.Value;

     fmAuxIni.TipoPesq := 'S';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        if CmpSco.State = dsBrowse then begin

           if CmpScoId_CmpSco.Value > 0 then
              CmpSco.Edit
           else
              CmpSco.Append;

        end;

        CmpScoCodGru.Value := fmAuxIni.CodGru;
        CmpScoCodSub.Value := fmAuxIni.CodSub;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( CmpScoCodSub.Value ) <> '' then
     SaiSubGrupo
  else
     EdCodSub.SetFocus;

end;

procedure TfmManSc1.EdCodProExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodSub.Focused) and
        (not EdCodGru.Focused) and
        (not EdCodClp.Focused) and
        (not EdMrgSco.Focused) and
        (not EdValTmo.Focused) and
        (not EdDteSco.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiItem;

  end;
end;

procedure TfmManSc1.SaiItem;
var
  CodIpi : string;
  TipIpi : string;
begin
  if Trim( CmpScoCodPro.Value ) <> '' then begin

     CmpScoCodPro.Value := FNumStrZero(CmpScoCodPro.Value);

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstPro.DscPro,'+
                  '        EstPro.IpiEnt,'+
                  '        EstPro.IpiTen,'+
                  '        EstPro.ValImp '+
                  ' From EstPro '+
                  ' Where EstPro.CodClp = '+ QuotedStr(CmpScoCodClp.Value)+
                  '   and EstPro.CodGru = '+ QuotedStr(CmpScoCodGru.Value)+
                  '   and EstPro.CodSub = '+ QuotedStr(CmpScoCodSub.Value)+
                  '   and EstPro.CodPro = '+ QuotedStr(CmpScoCodPro.Value);
          Open;

          pnDscPro.Caption := Trim(FieldbyName('DscPro').AsString);

          CmpScoMinSco.Value := FieldbyName('ValImp').AsFloat;

          EdMinSco.Value := CmpScoMinSco.Value;
          
     end;

     if Trim( quSQL.FieldbyName('DscPro').AsString ) <> '' then begin

        CodIpi := quSQL.FieldbyName('IpiEnt').AsString;
        TipIpi := quSQL.FieldbyName('IpiTen').AsString;

        with quSQL,SQL do begin

             Close;
             Text := ' Select EstIpi.ClsIpi'+
                     ' From EstIpi'+
                     ' Where EstIpi.CodIpi = '+ Quotedstr(CodIpi) +
                     '   and EstIpi.TipIpi = '+ Quotedstr(TipIpi) ;
             Open;

             CmpScoClsIpi.Value := Trim(FieldbyName('ClsIpi').AsString);

             pnClsIpi.Caption := Trim(CmpScoClsIpi.Value);
             
        end;

        end
     else
        begin

        EdMinSco.Value := 0;

        pnClsIpi.Caption := '';

        fmsgErro('Item informado não localizado.',EdCodPro);

     end;

     end
  else
     begin

     EdMinSco.Value := 0;

     pnDscPro.Caption := '';
     pnClsIpi.Caption := '';

     fmsgErro('Item informado não localizado.',EdCodPro);

  end;   
end;

procedure TfmManSc1.EdCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := CmpScoCodClp.Value;
        fmAuxIni.CodGru := CmpScoCodGru.Value;
        fmAuxIni.CodSub := CmpScoCodSub.Value;

        fmAuxIni.TipoPesq := 'IC';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           CmpScoCodClp.Value := fmAuxIni.CodClp;
           CmpScoCodGru.Value := fmAuxIni.CodGru;
           CmpScoCodSub.Value := fmAuxIni.CodSub;
           CmpScoCodPro.Value := fmAuxIni.CodPro;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpScoCodPro.Value ) <> '' then
        SaiItem
     else
        EdCodPro.SetFocus;

  end;

  if key = 113 then begin {F5 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := CmpScoCodClp.Value;
        fmAuxPsq.CodGru := CmpScoCodGru.Value;
        fmAuxPsq.CodSub := CmpScoCodSub.Value;

        fmAuxPsq.TipoPesq := 'IC';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if CmpSco.State = dsBrowse then begin

              if CmpScoId_CmpSco.Value > 0 then
                 CmpSco.Edit
              else
                 CmpSco.Append;

           end;

           CmpScoCodClp.Value := fmAuxPsq.CodClp;
           CmpScoCodGru.Value := fmAuxPsq.CodGru;
           CmpScoCodSub.Value := fmAuxPsq.CodSub;
           CmpScoCodPro.Value := fmAuxPsq.CodPro;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpScoCodPro.Value ) <> '' then
        SaiItem
     else
        EdCodPro.SetFocus;

  end;
end;

procedure TfmManSc1.bPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := CmpScoCodClp.Value;
     fmAuxIni.CodGru := CmpScoCodGru.Value;
     fmAuxIni.CodSub := CmpScoCodSub.Value;

     fmAuxIni.TipoPesq := 'IC';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        CmpScoCodClp.Value := fmAuxIni.CodClp;
        CmpScoCodGru.Value := fmAuxIni.CodGru;
        CmpScoCodSub.Value := fmAuxIni.CodSub;
        CmpScoCodPro.Value := fmAuxIni.CodPro;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( CmpScoCodPro.Value ) <> '' then
     SaiItem
  else
     EdCodPro.SetFocus;
     
end;

procedure TfmManSc1.EdId_FinForEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F2-Inteligente CTRL+E-Estoque';

end;

procedure TfmManSc1.EdId_FinForExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) and
        (not EdCodClp.Focused) and
        (not EdMrgSco.Focused) and
        (not EdValTmo.Focused) and
        (not EdDteSco.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiFornecedor;

  end;
end;

procedure TfmManSc1.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  sEntr := 'N';

  psaida := 'Nao';

  Finalizar := 'Nao';

  TipoCusto := 'Margem';

end;

procedure TfmManSc1.EdId_FinForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           CmpScoId_FinFor.Value := fmAuxIni.CodFor;

           EdId_FinFor.Text := IntToStr(CmpScoId_FinFor.Value);

           pnNomFor.Caption := fmAuxIni.NomFor;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if CmpScoId_FinFor.Value > 0 then
        SaiFornecedor
     else
        EdId_FinFor.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           CmpScoId_FinFor.Value := fmAuxPsq.CodFor;

           EdId_FinFor.Text := IntToStr(CmpScoId_FinFor.Value);

           pnNomFor.Caption := fmAuxPsq.NomFor;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if CmpScoId_FinFor.Value > 0 then
        SaiFornecedor
     else
        EdId_FinFor.SetFocus;

  end;
end;

procedure TfmManSc1.SaiFornecedor;
begin
  if CmpScoId_FinFor.Value > 0 then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinFor.NomFor From FinFor Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpScoId_FinFor.Value));
          Open;

          pnNomFor.Caption := Trim(FieldbyName('NomFor').AsString);

     end;

     if Trim(quSql.FieldbyName('NomFor').AsString) <> '' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select CmpPfo.ValPfo'+
                     ' From CmpPfo'+
                     ' Where CmpPfo.CodFor = '+ QuotedStr(IntToStr(CmpScoId_FinFor.Value)) +
                     '   and CmpPfo.CodClp = '+ QuotedStr(CmpScoCodClp.Value) +
                     '   and CmpPfo.CodGru = '+ QuotedStr(CmpScoCodGru.Value) +
                     '   and CmpPfo.CodSub = '+ QuotedStr(CmpScoCodSub.Value) +
                     '   and CmpPfo.CodPro = '+ QuotedStr(CmpScoCodPro.Value) ;
             Open;

             if FieldbyName('ValPfo').AsFloat > 0 then begin

                CmpScoFobSco.Value := FieldbyName('ValPfo').AsFloat;

                EdFobSco.Value := CmpScoFobSco.Value;
                
             end;
        end;
     
        end
     else
        fmsgErro('Fornecedor informado não localizado.',EdId_FinFor)

     end
  else
     begin

     pnNomFor.Caption := '';

     fmsgErro('Campo de preenchimento obrigátorio não informado.',EdId_FinFor);

  end;
end;

procedure TfmManSc1.bPsqForClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        CmpScoId_FinFor.Value := fmAuxIni.CodFor;

        EdId_FinFor.Text := IntToStr(CmpScoId_FinFor.Value);

        pnNomFor.Caption := fmAuxIni.NomFor;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if CmpScoId_FinFor.Value > 0 then
     SaiFornecedor
  else
     EdId_FinFor.SetFocus;
     
end;

procedure TfmManSc1.EdId_PorOriExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdId_FinFor.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) and
        (not EdCodClp.Focused) and
        (not EdMrgSco.Focused) and
        (not EdValTmo.Focused) and
        (not EdDteSco.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiPortoOrigem;

  end;
end;

procedure TfmManSc1.SaiPortoOrigem;
begin
  if CmpScoId_PorOri.Value > 0 then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select CmpPor.ApePor From CmpPor Where CmpPor.Id_CmpPor = '+ QuotedStr(IntToStr(CmpScoId_PorOri.Value));
          Open;

          pnNomPo1.Caption := Trim(quSQL.FieldbyName('ApePor').AsString);

     end;

     if Trim(quSql.FieldbyName('ApePor').AsString) = '' then
        fmsgErro('Porto de origem informado não localizado.',EdId_PorOri);

     end
  else
     begin

     pnNomPo1.Caption := '';

     fmsgErro('Porto de origem informado não localizado.',EdId_PorOri);

  end;
end;

procedure TfmManSc1.EdId_PorOriKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Portos1';

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_CmpPor > 0 then begin

           CmpScoId_PorOri.Value := fmAuxIni.Id_CmpPor;

           EdId_PorOri.Text := IntToStr(CmpScoId_PorOri.Value);

           pnNomPo1.Caption := fmAuxIni.NomPor;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if CmpScoId_PorOri.Value > 0 then
        SaiPortoOrigem
     else
        EdId_PorOri.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Portos1';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.Id_CmpPor > 0 then begin

           CmpScoId_PorOri.Value := fmAuxPsq.Id_CmpPor;

           EdId_PorOri.Text := IntToStr(CmpScoId_PorOri.Value);

           pnNomPo1.Caption := fmAuxPsq.NomPor;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if CmpScoId_PorOri.Value > 0 then
        SaiPortoOrigem
     else
        EdId_PorOri.SetFocus;

  end;
end;

procedure TfmManSc1.bPsqPo1Click(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Portos1';

     fmAuxIni.ShowModal;

     if fmAuxIni.Id_CmpPor > 0 then begin

        CmpScoId_PorOri.Value := fmAuxIni.Id_CmpPor;

        EdId_PorOri.Text := IntToStr(CmpScoId_PorOri.Value);

        pnNomPo1.Caption := fmAuxIni.NomPor;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if CmpScoId_PorOri.Value > 0 then
     SaiPortoOrigem
  else
     EdId_PorOri.SetFocus;

end;

procedure TfmManSc1.EdId_PorDesExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdId_PorOri.Focused) and
        (not EdId_FinFor.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) and
        (not EdCodClp.Focused) and
        (not EdMrgSco.Focused) and
        (not EdValTmo.Focused) and
        (not EdDteSco.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiPortoDestino;

  end;
end;

procedure TfmManSc1.SaiPortoDestino;
begin
  if CmpScoId_PorDes.Value > 0 then begin

     if CmpScoId_PorDes.Value <> CmpScoId_PorOri.Value then begin
     
        with quSql,SQL do begin

             Close;
             Text := ' Select CmpPor.ApePor From CmpPor Where CmpPor.Id_CmpPor = '+ QuotedStr(IntToStr(CmpScoId_PorDes.Value));
             Open;

             pnNomPo2.Caption := Trim(quSQL.FieldbyName('ApePor').AsString);

        end;

        if Trim(quSql.FieldbyName('ApePor').AsString) = '' then
           fmsgErro('Porto de destino informado não localizado.',EdId_PorDes);

        end
     else
        begin

        pnNomPo2.Caption := '';

        fmsgErro('Porto de destino informado igual ao de origem.',EdId_PorDes);

     end;
        
     end
  else
     begin

     pnNomPo2.Caption := '';

     fmsgErro('Porto de destino informado não localizado.',EdId_PorDes);

  end;
end;

procedure TfmManSc1.EdId_PorDesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Portos1';

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_CmpPor > 0 then begin

           CmpScoId_PorDes.Value := fmAuxIni.Id_CmpPor;

           EdId_PorDes.Text := IntToStr(CmpScoId_PorDes.Value);

           pnNomPo2.Caption := fmAuxIni.NomPor;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if CmpScoId_PorDes.Value > 0 then
        SaiPortoDestino
     else
        EdId_PorDes.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Portos1';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.Id_CmpPor > 0 then begin

           CmpScoId_PorDes.Value := fmAuxPsq.Id_CmpPor;

           EdId_PorDes.Text := IntToStr(CmpScoId_PorDes.Value);

           pnNomPo2.Caption := fmAuxPsq.NomPor;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if CmpScoId_PorDes.Value > 0 then
        SaiPortoDestino
     else
        EdId_PorDes.SetFocus;

  end;
end;

procedure TfmManSc1.bPsqPo2Click(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Portos1';

     fmAuxIni.ShowModal;

     if fmAuxIni.Id_CmpPor > 0 then begin

        CmpScoId_PorDes.Value := fmAuxIni.Id_CmpPor;

        EdId_PorDes.Text := IntToStr(CmpScoId_PorDes.Value);

        pnNomPo2.Caption := fmAuxIni.NomPor;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if CmpScoId_PorDes.Value > 0 then
     SaiPortoDestino
  else
     EdId_PorDes.SetFocus;

end;

procedure TfmManSc1.Panel1Exit(Sender: TObject);
var
  Id_CmpSc2 : integer;
  SeqSco,Status : string;
  fResul : string;
  QtdCon : integer;
  QtdCub : integer;
  PerPes : real;
  PerCub : real;
begin
  inherited;

  Id_CmpSc2 := CmpSc2Id_CmpSc2.Value;

  Status := 'dsEdit';

  if CmpSco.State = dsInsert then begin

     Status := 'dsInsert';

     if (CmpScoCodClp.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodClp);
     if (CmpScoCodGru.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodGru);
     if (CmpScoCodSub.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodSub);
     if (CmpScoCodPro.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodPro);

     if CmpScoId_FinFor.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_FinFor);
     if CmpScoId_PorOri.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_PorOri);
     if CmpScoId_PorDes.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_PorDes);

     if CmpScoQtdSco.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdQtdSco);

     Randomize;
     SeqSco := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
               copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
               copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
               copy(TimeToStr(Time),1,2)+
               copy(TimeToStr(Time),4,2)+
               copy(TimeToStr(Time),7,2)+
               FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
               FNumZeros(Trim( IntToStr(Random(50000)) ),5);

     CmpScoSeqSco.Value := SeqSco;

  end;

  with CmpSco do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          CmpSco.Edit;

          EdDteSco.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select CmpSco.Id_CmpSco From CmpSco Where CmpSco.SeqSco = '+ QuotedStr(CmpScoSeqSco.Value);
       Open;

  end;

  CmpSco.Close;
  CmpSco.Params[0].AsInteger := quSQL.FieldbyName('Id_CmpSco').AsInteger;
  CmpSco.Open;

  with quSQL,SQL do begin

        Close;
        Text := ' Select * From CmpSc2 Where CmpSc2.Id_CmpSco = '+ QuotedStr(IntToStr(CmpScoId_CmpSco.Value));
        Open;
        First;

  end;

  while not quSQL.EOF do begin

        QtdCon := 0;
        QtdCub := 0;
        PerPes := 0;
        PerCub := 0;

        if CmpScoTotBrt.Value >= quSQL.FieldbyName('PesMax').AsFloat then begin

           if quSQL.FieldbyName('PesMax').AsFloat > 0 then
              fResul := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00',(CmpScoTotBrt.Value/quSQL.FieldbyName('PesMax').AsFloat))),13)
           else
              fResul := '0000000000000';

           QtdCon := StrToInt(copy(fResul,1,11));

           if StrToInt(copy(fResul,12,2)) > 0 then QtdCon := QtdCon + 1;

           if quSQL.FieldbyName('PesMax').AsFloat > 0 then PerPes := fRound(CmpScoTotBrt.Value * 100/(quSQL.FieldbyName('PesMax').AsFloat * QtdCon),2);
           if quSQL.FieldbyName('CubMax').AsFloat > 0 then PerCub := fRound(CmpScoTotCub.Value * 100/(quSQL.FieldbyName('CubMax').AsFloat * QtdCon),2);

        end;

        if CmpScoTotCub.Value >= quSQL.FieldbyName('CubMax').AsFloat then begin

           if quSQL.FieldbyName('CubMax').AsFloat > 0 then
              fResul := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00',(CmpScoTotCub.Value/quSQL.FieldbyName('CubMax').AsFloat))),13)
           else
              fResul := '0000000000000';

           QtdCub := StrToInt(copy(fResul,1,11));

           if StrToInt(copy(fResul,12,2)) > 0 then QtdCub := QtdCub + 1;
              
           if QtdCub > QtdCon then QtdCon := QtdCub;

           if quSQL.FieldbyName('PesMax').AsFloat > 0 then PerPes := fRound(CmpScoTotBrt.Value * 100/(quSQL.FieldbyName('PesMax').AsFloat * QtdCon),2);
           if quSQL.FieldbyName('CubMax').AsFloat > 0 then PerCub := fRound(CmpScoTotCub.Value * 100/(quSQL.FieldbyName('CubMax').AsFloat * QtdCon),2);

        end;

        if QtdCon = 0 then begin

           QtdCon := 1;

           if quSQL.FieldbyName('PesMax').AsFloat > 0 then PerPes := fRound(CmpScoTotBrt.Value * 100/(quSQL.FieldbyName('PesMax').AsFloat),2);
           if quSQL.FieldbyName('CubMax').AsFloat > 0 then PerCub := fRound(CmpScoTotCub.Value * 100/(quSQL.FieldbyName('CubMax').AsFloat),2);

        end;

        with quSQL1,SQL do begin

             Close;
             Text := ' Update CmpSc2 Set QtdPre = :QtdPre,'+
                     '                   PerCub = :PerCub,'+
                     '                   PerPes = :PerPes '+
                     ' Where CmpSc2.Id_CmpSc2 = :Id_CmpSc2';

             with Params do begin

                  Params[0].AsInteger := QtdCon;
                  Params[1].AsFloat   := PerCub;
                  Params[2].AsFloat   := PerPes;
                  Params[3].AsInteger := quSQL.FieldbyName('Id_CmpSc2').AsInteger;

             end;

             ExecSQL;

        end;

        quSQL.Next;
        
  end;

  CmpSc2.Close;
  CmpSc2.Open;

  if Id_CmpSc2 > 0 then CmpSc2.Locate('Id_CmpSc2',Id_CmpSc2,[LoPartialKey]);

  bPsqClp.Enabled := False;
  bPsqGru.Enabled := False;
  bPsqSub.Enabled := False;
  bPsqPro.Enabled := False;
  bPsqFor.Enabled := False;
  bPsqPo1.Enabled := False;
  bPsqPo2.Enabled := False;

  EdCodClp.Enabled := False;
  EdCodGru.Enabled := False;
  EdCodSub.Enabled := False;
  EdCodPro.Enabled := False;

  EdId_FinFor.Enabled := False;
  EdId_PorOri.Enabled := False;
  EdId_PorDes.Enabled := False;

  EdCodClp.Font.Style := [fsBold];
  EdCodGru.Font.Style := [fsBold];
  EdCodSub.Font.Style := [fsBold];
  EdCodPro.Font.Style := [fsBold];

  EdId_FinFor.Font.Style := [fsBold];
  EdId_PorOri.Font.Style := [fsBold];
  EdId_PorDes.Font.Style := [fsBold];

  if Status = 'dsInsert' then begin

     with fmManSco.CmpSco,SQL do begin

          Close;
          Text := fmManSco.sBase +
                  ' and CmpSco.Id_CmpSco = '+ QuotedStr(IntToStr(CmpScoId_CmpSco.Value));
          Open;

     end;
  end;

  grSc2.SetFocus;

end;

procedure TfmManSc1.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManSc1 := nil;
end;

procedure TfmManSc1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'Nao' then begin

     if fMsg('Deseja realmente abandonar o operação ?','O') then begin

        if CmpSco.State <> dsBrowse then CmpSco.CancelUpdates;
        if CmpSc2.State <> dsBrowse then CmpSc2.CancelUpdates;

        fmManSco.CmpSco.Close;
        fmManSco.CmpSco.Open;

        Action := CaFree;

        end
     else
        begin

        if CmpScoId_CmpSco.Value = 0 then begin

           if CmpSco.State = dsBrowse then CmpSco.Insert;

           end
        else
           grSc2.SetFocus;

        Abort;

     end;

     end
  else
     begin

     fmManSco.CmpSco.Close;
     fmManSco.CmpSco.Open;

     Action := CaFree;

  end;
end;

procedure TfmManSc1.CmpScoNewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpSco.DisableControls;

  CmpScoId_CmpSco.Value := -1;
  CmpScoId_GerUsu.Value := GUsu_Id;

  CmpScoQtdSc2.Value := 0;
  CmpScoFobSco.Value := 0;
  CmpScoQtdSco.Value := 0;
  CmpScoMrgSco.Value := 0;
  CmpScoTotCxa.Value := 0;
  CmpScoTotLiq.Value := 0;
  CmpScoTotBrt.Value := 0;  
  CmpScoTotCub.Value := 0;
  CmpScoCubPro.Value := 0;
  CmpScoCxaPro.Value := 0;
  CmpScoLiqPro.Value := 0;
  CmpScoBrtPro.Value := 0;
  CmpScoValTmo.Value := 0;
  CmpScoFlgAtu.Value := ' ';
  CmpScoCodClp.Value := '1';
  CmpScoDteSco.Value := Date;
  CmpScoSitSco.Value := 'Nao concluida';
  CmpScoHreSco.Value := TimeToStr(Time);

  CmpSco.EnableControls;

  EdDteSco.Date := CmpScoDteSco.Value;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '+ QuotedStr(CmpScoCodClp.Value);
       Open;

       pnNomClp.Caption := FieldbyName('NomClp').AsString;
       
  end;

  EdCodClp.Enabled := True;
  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;

  EdId_FinFor.Enabled := True;
  EdId_PorOri.Enabled := True;
  EdId_PorDes.Enabled := True;

  EdCodClp.Font.Style := [];
  EdCodGru.Font.Style := [];
  EdCodSub.Font.Style := [];
  EdCodPro.Font.Style := [];

  EdId_FinFor.Font.Style := [];
  EdId_PorOri.Font.Style := [];
  EdId_PorDes.Font.Style := [];

  EdDteSco.SetFocus; 

end;

procedure TfmManSc1.FormShow(Sender: TObject);
begin
  inherited;
  if fmManSco.Id_CmpSco > 0 then begin

     sEntr := 'S';

     CmpSco.Close;
     CmpSco.Params[0].AsInteger := fmManSco.Id_CmpSco;
     CmpSco.Open;

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '+ QuotedStr(CmpScoCodClp.Value);
          Open;

          pnNomClp.Caption := FieldbyName('NomClp').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstGru.NomGru From EstGru Where EstGru.CodGru = '+ QuotedStr(CmpScoCodGru.Value);
          Open;

          pnNomGru.Caption := FieldbyName('NomGru').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstSub.NomSub'+
                  ' From EstSub'+
                  ' Where EstSub.CodGru = '+ QuotedStr(CmpScoCodGru.Value) +
                  '   and EstSub.CodSub = '+ QuotedStr(CmpScoCodSub.Value) ;
          Open;

          pnNomSub.Caption := FieldbyName('NomSub').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstPro.DscPro'+
                  ' From EstPro'+
                  ' Where EstPro.CodClp = '+ QuotedStr(CmpScoCodClp.Value) +
                  '   and EstPro.CodGru = '+ QuotedStr(CmpScoCodGru.Value) +
                  '   and EstPro.CodSub = '+ QuotedStr(CmpScoCodSub.Value) +
                  '   and EstPro.CodPro = '+ QuotedStr(CmpScoCodPro.Value) ;
          Open;

          pnDscPro.Caption := FieldbyName('DscPro').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinFor.NomFor From FinFor Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpScoId_FinFor.Value));
          Open;

          pnNomFor.Caption := FieldbyName('NomFor').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select CmpPor.ApePor From CmpPor Where CmpPor.Id_CmpPor = '+ QuotedStr(IntToStr(CmpScoId_PorOri.Value));
          Open;

          pnNomPo1.Caption := FieldbyName('ApePor').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select CmpPor.ApePor From CmpPor Where CmpPor.Id_CmpPor = '+ QuotedStr(IntToStr(CmpScoId_PorDes.Value));
          Open;

          pnNomPo2.Caption := FieldbyName('ApePor').AsString;

     end;

     if Trim(CmpScoSitSco.Value) = 'Concluida' then
        sEnc := 'S'
     else
        begin

        bPsqClp.Enabled := False;
        bPsqGru.Enabled := False;
        bPsqSub.Enabled := False;
        bPsqPro.Enabled := False;
        bPsqFor.Enabled := False;
        bPsqPo1.Enabled := False;
        bPsqPo2.Enabled := False;

        CmpSco.Edit;

        EdDteSco.SetFocus;

     end;

     end
  else
     begin

     sEntr := 'N';

     LbText.Caption := '';

     CmpSco.Insert;

     EdDteSco.SetFocus;

  end;
end;

procedure TfmManSc1.DsCmpSc2DataChange(Sender: TObject; Field: TField);
var
  result : string;
begin
  inherited;

  if CmpScoId_CmpSco.Value > 0 then
     pnId_CmpSco.Caption := IntToStr(CmpScoId_CmpSco.Value)
  else
     pnId_CmpSco.Caption := '';

  pnQtdCon.Caption := IntToStr(CmpScoQtdCon.Value);
  
  pnTotCxa.Caption := FormatFloat('###,###,##0',CmpScoTotCxa.Value);
  
  pnTotLiq.Caption := FormatFloat('###,###,##0.0000',CmpScoTotLiq.Value);
  pnTotBrt.Caption := FormatFloat('###,###,##0.0000',CmpScoTotBrt.Value);
  pnTotCub.Caption := FormatFloat('###,###,##0.0000',CmpScoTotCub.Value);

  pnTotFrt.Caption := FormatFloat('###,###,##0.00',CmpScoTotFrt.Value);
  
  if CmpSc2Id_CmpSc2.Value > 0 then begin

     if CmpSc2QtdPre.Value > 0 then begin

        if CmpSc2PesMax.Value > 0 then begin

           result := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.0000',CmpSc2PesMax.Value * CmpSc2QtdPre.Value)),13);

           progressbar1.Max := StrToInt(copy(result,1,9));

           result := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.0000',CmpScoTotLiq.Value)),13);

           progressbar1.Position := StrToInt(copy(result,1,9));

           if CmpSc2PesMax.Value * CmpSc2QtdPre.Value > 0 then
              pnPeso.Caption := FormatFloat('##0.00',(CmpScoTotBrt.Value * 100)/(CmpSc2PesMax.Value * CmpSc2QtdPre.Value))+'%'
           else
              pnPeso.Caption := '0,00%';

        end;

        if CmpSc2CubMax.Value > 0 then begin

           result := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.0000',CmpSc2CubMax.Value * CmpSc2QtdPre.Value)),13);

           progressbar2.Max := StrToInt(copy(result,1,9));

           result := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.0000',CmpScoTotCub.Value)),13);

           progressbar2.Position := StrToInt(copy(result,1,9));

           if CmpSc2CubMax.Value * CmpSc2QtdPre.Value > 0 then
              pnCubagem.Caption := FormatFloat('##0.00',(CmpScoTotCub.Value * 100)/(CmpSc2CubMax.Value * CmpSc2QtdPre.Value))+'%'
           else
              pnCubagem.Caption := '0,00%';
              
        end;
     end;   
  end;
end;

procedure TfmManSc1.EdDteScoEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'CTRL+E-Estoque';

end;

procedure TfmManSc1.grSc2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'Pressione <Barra de espaço> para selecionar container';

end;

procedure TfmManSc1.grSc2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then begin

     if not pncontainer.Visible then begin

        if CmpSc2Id_CmpSc2.Value > 0 then begin

           pncontainer.Visible := True;

           CmpSc2.Edit;

           EdQtdUti.SetFocus;

        end;
     end;
  end;
end;

procedure TfmManSc1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (EdCodClp.Focused) or
     (EdCodGru.Focused) or
     (EdCodSub.Focused) or
     (EdCodPro.Focused) then begin

     if key = 114 then begin {F3 - Descrição}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := CmpScoCodClp.Value;

           fmAuxIni.TipoPesq := 'IC';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpScoCodClp.Value := fmAuxIni.CodClp;
                 CmpScoCodGru.Value := fmAuxIni.CodGru;
                 CmpScoCodSub.Value := fmAuxIni.CodSub;
                 CmpScoCodPro.Value := fmAuxIni.CodPro;

              end;
           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if EdCodGru.Enabled then begin

           if Trim( CmpScoCodPro.Value ) <> '' then begin

              if EdCodPro.Enabled then SaiItem;

              end
           else
              begin

              if EdCodClp.Focused then EdCodClp.SetFocus;
              if EdCodGru.Focused then EdCodGru.SetFocus;
              if EdCodSub.Focused then EdCodSub.SetFocus;
              if EdCodPro.Focused then EdCodPro.SetFocus;

           end;
        end;
     end;

     if key = 116 then begin {F5 - Referência}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := CmpScoCodClp.Value;

           fmAuxIni.TipoPesq := 'R';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpScoCodClp.Value := fmAuxIni.CodClp;
                 CmpScoCodGru.Value := fmAuxIni.CodGru;
                 CmpScoCodSub.Value := fmAuxIni.CodSub;
                 CmpScoCodPro.Value := fmAuxIni.CodPro;

              end;
           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if EdCodGru.Enabled then begin

           if Trim( CmpScoCodPro.Value ) <> '' then begin

              if EdCodPro.Enabled then SaiItem;

              end
           else
              begin

              if EdCodClp.Focused then EdCodClp.SetFocus;
              if EdCodGru.Focused then EdCodGru.SetFocus;
              if EdCodSub.Focused then EdCodSub.SetFocus;
              if EdCodPro.Focused then EdCodPro.SetFocus;

           end;
        end;
     end;

     if key = 117 then begin {F6 - Inteligente/Descrição}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := CmpScoCodClp.Value;

           fmAuxPsq.TipoPesq := 'IC';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpScoCodClp.Value := fmAuxPsq.CodClp;
                 CmpScoCodGru.Value := fmAuxPsq.CodGru;
                 CmpScoCodSub.Value := fmAuxPsq.CodSub;
                 CmpScoCodPro.Value := fmAuxPsq.CodPro;

              end;
           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        if EdCodGru.Enabled then begin

           if Trim( CmpScoCodPro.Value ) <> '' then begin

              if EdCodPro.Enabled then SaiItem;

              end
           else
              begin

              if EdCodClp.Focused then EdCodClp.SetFocus;
              if EdCodGru.Focused then EdCodGru.SetFocus;
              if EdCodSub.Focused then EdCodSub.SetFocus;
              if EdCodPro.Focused then EdCodPro.SetFocus;

           end;
        end;
     end;

     if key = 118 then begin {F7 - Inteligente/Referência}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := CmpScoCodClp.Value;

           fmAuxPsq.TipoPesq := 'R';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpScoCodClp.Value := fmAuxPsq.CodClp;
                 CmpScoCodGru.Value := fmAuxPsq.CodGru;
                 CmpScoCodSub.Value := fmAuxPsq.CodSub;
                 CmpScoCodPro.Value := fmAuxPsq.CodPro;

              end;
           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        if EdCodGru.Enabled then begin

           if Trim( CmpScoCodPro.Value ) <> '' then begin

              if EdCodPro.Enabled then SaiItem;

              end
           else
              begin

              if EdCodClp.Focused then EdCodClp.SetFocus;
              if EdCodGru.Focused then EdCodGru.SetFocus;
              if EdCodSub.Focused then EdCodSub.SetFocus;
              if EdCodPro.Focused then EdCodPro.SetFocus;

           end;
        end;
     end;

     if key = 119 then begin {F8 - PartNumber}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := CmpScoCodClp.Value;

           fmAuxIni.TipoPesq := 'U';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpScoCodClp.Value := fmAuxIni.CodClp;
                 CmpScoCodGru.Value := fmAuxIni.CodGru;
                 CmpScoCodSub.Value := fmAuxIni.CodSub;
                 CmpScoCodPro.Value := fmAuxIni.CodPro;

              end;
           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if EdCodGru.Enabled then begin

           if Trim( CmpScoCodPro.Value ) <> '' then begin

              if EdCodPro.Enabled then SaiItem;

              end
           else
              begin

              if EdCodClp.Focused then EdCodClp.SetFocus;
              if EdCodGru.Focused then EdCodGru.SetFocus;
              if EdCodSub.Focused then EdCodSub.SetFocus;
              if EdCodPro.Focused then EdCodPro.SetFocus;

           end;
        end;
     end;
  end;

  if key = 27 then begin

     if pncontainer.Visible then begin

        psaida := 'Sim';

        if CmpSc2.State <> dsBrowse then CmpSc2.CancelUpdates;

        pncontainer.Visible := False;

        psaida := 'Nao';

        end
     else
        close;

  end;

  if key = 123 then begin {F12-Finalizar Pedido}

     if CmpScoQtdCon.Value > 0 then begin

        if grSc2.Focused then begin

           try

              fmManSc2 := TfmManSc2.Create(Self);
              fmManSc2.ShowModal;

           finally

              FreeAndNil(fmManSc2);

           end;

           if Finalizar = 'Sim' then begin

              Finalizar := 'Nao';

              pnId_CmpSco.Caption := '';

              CmpSco.Close;
              CmpSco.Params[0].AsInteger := -1;
              CmpSco.Open;

              CmpSc2.Close;
              CmpSc2.Open;

              CmpSco.Insert;

              EdDteSco.SetFocus;

           end;
        end;
     end;
  end;
end;

procedure TfmManSc1.pncontainer1Exit(Sender: TObject);
var
  Id_CmpSc2: integer;
begin
  inherited;
  if psaida = 'Nao' then begin

     Id_CmpSc2 := CmpSc2Id_CmpSc2.Value;

     if CmpSc2QtdUti.Value > 0 then
        CmpSc2FlgUsa.Value := 'Sim'
     else
        CmpSc2FlgUsa.Value := 'Nao';

     with CmpSc2 do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if CmpSc2.State = dsBrowse then CmpSc2.Edit;

             EdQtdUti.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     CmpSco.Close;
     CmpSco.Open;

     CmpSc2.Close;
     CmpSc2.Open;

     CmpSc2.Locate('Id_CmpSc2',Id_CmpSc2, [loPartialKey]);

     pncontainer.Visible := False;

     grSc2.SetFocus;

  end;
end;

procedure TfmManSc1.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #5 then begin {Estoque}

     try

        fmPsqEs2 := TfmPsqEs2.Create(Self);

        fmPsqEs2.sEntr := sEntr;

        fmPsqEs2.sCodClp := CmpScoCodClp.Value;

        if ( Trim(CmpScoCodGru.Value) <> '' ) or
           ( Trim(CmpScoCodSub.Value) <> '' ) or
           ( Trim(CmpScoCodPro.Value) <> '' ) then begin

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
                        '        EstPro.IdePro '+
                        ' From EstPro'+
                        ' Where EstPro.CodClp = '+ QuotedStr('1') +
                        '   and EstPro.FlbPro = '+ QuotedStr(' ') ;

                if Trim( CmpScoCodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '+ QuotedStr(CmpScoCodGru.Value);
                if Trim( CmpScoCodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '+ QuotedStr(CmpScoCodSub.Value);
                if Trim( CmpScoCodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '+ QuotedStr(CmpScoCodPro.Value);

                Text := Text + ' Order by EstPro.DscPro';

                Open;

           end;
        end;

        fmPsqEs2.ShowModal;

        if Trim( fmPsqEs2.CodGru ) <> '' then begin

           if EdCodGru.Enabled then begin

              if sEntr = 'S' then begin

                 CmpScoCodClp.Value := fmPsqEs2.CodClp;
                 CmpScoCodGru.Value := fmPsqEs2.CodGru;
                 CmpScoCodSub.Value := fmPsqEs2.CodSub;
                 CmpScoCodPro.Value := fmPsqEs2.CodPro;

              end;
           end;
        end;

     finally

        FreeAndNil(fmPsqEs2);

     end;

     if EdCodGru.Enabled then begin

        if Trim( CmpScoCodPro.Value ) <> '' then
           SaiItem
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;
  end;
end;

procedure TfmManSc1.CalculaCusto;
begin

  CmpScoTotImp.Value := 0;
  CmpScoTotIpi.Value := 0;
  CmpScoTotIcm.Value := 0;
  CmpScoTotPis.Value := 0;
  CmpScoTotCof.Value := 0;
  CmpScoValRen.Value := 0;
  CmpScoTotRen.Value := 0;
  CmpScoValMli.Value := 0;
  CmpScoTotMli.Value := 0;

  CmpScoFrtInt.Value := fRound(CmpScoFrtMar.Value * CmpScoQtdCon.Value,2);

  CmpScoTotSeg.Value := CmpScoValSeg.Value;

  if CmpScoValSeg.Value > 0 then begin

     if CmpScoTipSeg.Value = 'Percentual' then
        CmpScoTotSeg.Value := fRound((CmpScoTotFob.Value * CmpScoValSeg.Value)/100,2)
     else
        begin

        if CmpScoMoeSeg.Value = 'R$' then begin

           if CmpScoValTmo.Value > 0 then CmpScoTotSeg.Value := fRound(CmpScoTotSeg.Value/CmpScoValTmo.Value,2);

        end;
     end;
  end;
      
  CmpScoTotCfr.Value := fRound(CmpScoTotFob.Value + CmpScoFrtInt.Value,2);
  CmpScoTotCif.Value := fRound(CmpScoTotCfr.Value + CmpScoTotSeg.Value,2);

  CmpScoTotImp.Value := CmpScoValImp.Value;
  CmpScoTotIpi.Value := CmpScoValIpi.Value;
  CmpScoTotIcm.Value := CmpScoValIcm.Value;
  CmpScoTotPis.Value := CmpScoValPis.Value;
  CmpScoTotCof.Value := CmpScoValCof.Value;
      
  if CmpScoValImp.Value > 0 then begin

     if CmpScoTipImp.Value = 'Percentual' then
        CmpScoTotImp.Value := fRound((CmpScoTotCif.Value * CmpScoValImp.Value)/100,2)
     else
        begin

        if CmpScoMoeImp.Value = 'R$' then begin

           if CmpScoValTmo.Value > 0 then CmpScoTotImp.Value := fRound(CmpScoTotImp.Value/CmpScoValTmo.Value,2);

        end;
     end;
  end;

  if CmpScoValIpi.Value > 0 then begin

     if CmpScoTipIpi.Value = 'Percentual' then
        CmpScoTotIpi.Value := fRound(((CmpScoTotCif.Value + CmpScoTotImp.Value) * CmpScoValIpi.Value)/100,2)
     else
        begin

        if CmpScoMoeIpi.Value = 'R$' then begin

          if CmpScoValTmo.Value > 0 then CmpScoTotIpi.Value := fRound(CmpScoTotIpi.Value/CmpScoValTmo.Value,2);

        end;
     end;
  end;
      
  if CmpScoValIcm.Value > 0 then begin

     if CmpScoTipIcm.Value = 'Percentual' then
        CmpScoTotIcm.Value := fRound(((CmpScoTotCif.Value + CmpScoTotImp.Value + CmpScoTotIpi.Value) * CmpScoValIcm.Value)/100,2)
     else
        begin

        if CmpScoMoeIcm.Value = 'R$' then begin

           if CmpScoValTmo.Value > 0 then CmpScoTotIcm.Value := fRound(CmpScoTotIcm.Value/CmpScoValTmo.Value,2);

        end;
     end;
  end;

  if CmpScoValPis.Value > 0 then begin

     if CmpScoTipPis.Value = 'Percentual' then
        CmpScoTotPis.Value := fRound((CmpScoTotCif.Value * CmpScoValPis.Value)/100,2)
     else
        begin

        if CmpScoMoePis.Value = 'R$' then begin

           if CmpScoValTmo.Value > 0 then CmpScoTotPis.Value := fRound(CmpScoTotPis.Value/CmpScoValTmo.Value,2);

        end;
     end;
  end;

  if CmpScoValCof.Value > 0 then begin

     if CmpScoTipCof.Value = 'Percentual' then
        CmpScoTotCof.Value := fRound((CmpScoTotCif.Value * CmpScoValCof.Value)/100,2)
     else
        begin

        if CmpScoMoeCof.Value = 'R$' then begin

           if CmpScoValTmo.Value > 0 then CmpScoTotCof.Value := fRound(CmpScoTotCof.Value/CmpScoValTmo.Value,2);

        end;
     end;
  end;

  CmpScoTotIde.Value := fRound(CmpScoTotImp.Value + CmpScoTotIpi.Value + CmpScoTotIcm.Value + CmpScoTotPis.Value + CmpScoTotCof.Value,2);
      
  CmpScoTotDed.Value := CmpScoValDes.Value;
  CmpScoTotSis.Value := CmpScoValSis.Value;
  CmpScoTotAfr.Value := CmpScoValAfr.Value;
  CmpScoTotDsc.Value := CmpScoValDsc.Value;
  CmpScoTotCap.Value := CmpScoValCap.Value;
  CmpScoTotEbl.Value := CmpScoValEbl.Value;
  CmpScoTotLdi.Value := CmpScoValLdi.Value;
  CmpScoTotDev.Value := CmpScoValDev.Value;
  CmpScoTotCor.Value := CmpScoValCor.Value;
  CmpScoTotArm.Value := CmpScoValArm.Value;

  if CmpScoValDes.Value > 0 then begin
         
     if CmpScoMoeDes.Value = 'R$' then begin

        if CmpScoValTmo.Value > 0 then CmpScoTotDes.Value := fRound(CmpScoTotDes.Value/CmpScoValTmo.Value,2);

     end;
  end;
      
  if CmpScoValSis.Value > 0 then begin
         
     if CmpScoMoeSis.Value = 'R$' then begin

        if CmpScoValTmo.Value > 0 then CmpScoTotSis.Value := fRound(CmpScoTotSis.Value/CmpScoValTmo.Value,2);

     end;
  end;

  if CmpScoValAfr.Value > 0 then begin

     if CmpScoTipAfr.Value = 'Percentual' then
        CmpScoTotAfr.Value := fRound(((CmpScoFrtMar.Value * CmpScoValAfr.Value)/100) * CmpScoQtdCon.Value,2)
     else
        begin

        if CmpScoMoeAfr.Value = 'R$' then begin

           if CmpScoValTmo.Value > 0 then CmpScoTotAfr.Value := fRound((CmpScoTotAfr.Value/CmpScoValTmo.Value) * CmpScoQtdCon.Value,2);

           end
        else
           CmpScoTotAfr.Value := fRound(CmpScoTotAfr.Value * CmpScoQtdCon.Value,2);

     end;
  end;

  if CmpScoValDsc.Value > 0 then begin

     if CmpScoMoeDsc.Value = 'R$' then begin

        if CmpScoValTmo.Value > 0 then CmpScoTotDsc.Value := fRound(CmpScoTotDsc.Value/CmpScoValTmo.Value,2);

     end;
  end;

  if CmpScoValEbl.Value > 0 then begin

     if CmpScoMoeEbl.Value = 'R$' then begin

        if CmpScoValTmo.Value > 0 then CmpScoTotEbl.Value := fRound(CmpScoTotEbl.Value/CmpScoValTmo.Value,2);

     end;
  end;

  if CmpScoValCap.Value > 0 then begin

     if CmpScoMoeCap.Value = 'R$' then begin

        if CmpScoValTmo.Value > 0 then CmpScoTotCap.Value := fRound((CmpScoTotCap.Value/CmpScoValTmo.Value) * CmpScoQtdCon.Value,2);

        end
     else
        CmpScoTotCap.Value := fRound(CmpScoTotCap.Value * CmpScoQtdCon.Value,2);

  end;
      
  if CmpScoValLdi.Value > 0 then begin

     if CmpScoMoeLdi.Value = 'R$' then begin

        if CmpScoValTmo.Value > 0 then CmpScoTotLdi.Value := fRound(CmpScoTotLdi.Value/CmpScoValTmo.Value,2);

     end;
  end;

  if CmpScoValDev.Value > 0 then begin

     if CmpScoMoeDev.Value = 'R$' then begin

        if CmpScoValTmo.Value > 0 then CmpScoTotDev.Value := fRound(CmpScoTotDev.Value/CmpScoValTmo.Value,2);

     end;

     CmpScoTotDev.Value := fRound(CmpScoTotDev.Value * CmpScoQtdCon.Value,2);

  end;

  if CmpScoValCor.Value > 0 then begin

     if CmpScoMoeCor.Value = 'R$' then begin

        if CmpScoValTmo.Value > 0 then CmpScoTotCor.Value := fRound(CmpScoTotCor.Value/CmpScoValTmo.Value,2);

     end;
  end;

  if CmpScoValArm.Value > 0 then begin

     if CmpScoTipArm.Value = 'Percentual' then
        CmpScoTotArm.Value := fRound((CmpScoTotCif.Value * CmpScoValArm.Value)/100,2)
     else
        begin

        if CmpScoMoeArm.Value = 'R$' then begin

           if CmpScoValTmo.Value > 0 then CmpScoTotArm.Value := fRound(CmpScoTotArm.Value/CmpScoValTmo.Value,2);

        end;
     end;
  end;

  if CmpScoValArm.Value > 0 then begin

     if CmpScoMoeArm.Value = 'R$' then begin

        if CmpScoValTmo.Value > 0 then CmpScoTotArm.Value := fRound(CmpScoTotArm.Value/CmpScoValTmo.Value,2);

     end;
  end;

  if CmpScoMinSco.Value > CmpScoFobSco.Value then begin

     CmpScoValPrc.Value := fRound(CmpScoMinSco.Value - CmpScoFobSco.Value,4);

     if CmpScoValPrc.Value > 0 then begin

        if CmpScoTipImp.Value = 'Percentual' then CmpScoTotPrc.Value := fRound(((CmpScoValPrc.Value * CmpScoQtdSco.Value) * CmpScoValImp.Value)/100,2);

     end;
  end;

  CmpScoTotMca.Value := fRound(CmpScoTotDes.Value + CmpScoTotSis.Value + CmpScoTotAfr.Value + CmpScoTotDsc.Value + CmpScoTotEbl.Value + CmpScoTotCap.Value + CmpScoTotLdi.Value + CmpScoTotDev.Value + CmpScoTotCor.Value + CmpScoTotArm.Value + CmpScoTotPrc.Value,2);

  CmpScoTotEnt.Value := fRound(CmpScoTotCif.Value + CmpScoTotIde.Value + CmpScoTotMca.Value,2);

  if CmpScoValIce.Value > 0 then begin

     if CmpScoTipIce.Value = 'Percentual' then
        CmpScoTotIce.Value := fRound((CmpScoTotEnt.Value * CmpScoValIce.Value)/100,2)
     else
        begin

        if CmpScoMoeIce.Value = 'R$' then begin

           if CmpScoValTmo.Value > 0 then CmpScoTotIce.Value := fRound(CmpScoTotIce.Value/CmpScoValTmo.Value,2);

        end;
     end;
  end;
      
  CmpScoTotFin.Value := CmpScoValFin.Value;
  CmpScoTotTra.Value := CmpScoValTra.Value;
  CmpScoTotMad.Value := CmpScoValMad.Value;
  CmpScoTotSna.Value := CmpScoValSna.Value;
  CmpScoTotDed.Value := CmpScoValDed.Value;

  if CmpScoValFin.Value > 0 then begin

     if CmpScoTipFin.Value = 'Percentual' then
        CmpScoTotFin.Value := fRound((CmpScoTotFob.Value * CmpScoValFin.Value)/100,2)
     else
        begin

        if CmpScoMoeFin.Value = 'R$' then begin

           if CmpScoValTmo.Value > 0 then CmpScoTotFin.Value := fRound(CmpScoTotFin.Value/CmpScoValTmo.Value,2);

        end;
     end;
  end;
      
  if CmpScoValTra.Value > 0 then begin

     if CmpScoMoeTra.Value = 'R$' then begin

        if CmpScoValTmo.Value > 0 then CmpScoTotTra.Value := fRound((CmpScoTotTra.Value * CmpScoQtdCon.Value)/CmpScoValTmo.Value,2);

        end
     else
        CmpScoTotTra.Value := fRound(CmpScoTotTra.Value * CmpScoQtdCon.Value,2);

  end;

  if CmpScoValMad.Value > 0 then begin

     if CmpScoMoeMad.Value = 'R$' then begin

        if CmpScoValTmo.Value > 0 then CmpScoTotMad.Value := fRound(CmpScoTotMad.Value/CmpScoValTmo.Value,2);

     end;
  end;
      
  if CmpScoValSna.Value > 0 then begin

     if CmpScoTipSna.Value = 'Percentual' then
        CmpScoTotSna.Value := fRound((CmpScoTotEnt.Value * CmpScoValSna.Value)/100,2)
     else
        begin

        if CmpScoMoeSna.Value = 'R$' then begin

           if CmpScoValTmo.Value > 0 then CmpScoTotSna.Value := fRound(CmpScoTotSna.Value/CmpScoValTmo.Value,2);

        end;
     end;
  end;

  if CmpScoValDed.Value > 0 then begin

     if CmpScoMoeDed.Value = 'R$' then begin

        if CmpScoValTmo.Value > 0 then CmpScoTotDed.Value := fRound(CmpScoTotDed.Value/CmpScoValTmo.Value,2);

     end;
  end;
      
  CmpScoTotDis.Value := fRound((CmpScoTotFin.Value + CmpScoTotTra.Value + CmpScoTotMad.Value + CmpScoTotSna.Value) - CmpScoTotDed.Value,2);

  CmpScoTotCst.Value := fRound(CmpScoTotEnt.Value + CmpScoTotIce.Value + CmpScoTotDis.Value,2);

  CmpScoTotNet.Value := fRound(CmpScoTotCst.Value - (CmpScoTotIce.Value + CmpScoTotIpi.Value + CmpScoTotPis.Value + CmpScoTotCof.Value),2);

  CmpScoTotInd.Value := fRound(1 - ((CmpScoIcmSco.Value + CmpScoPisSco.Value + CmpScoCofSco.Value)/100),4);

  if AntVluInf <> CmpScoVluInf.Value then begin

     TipoCusto := 'Valor';
     
     CmpScoVluSco.Value := CmpScoVluInf.Value;

     end
  else
     begin
     
     if AntMrgSco <> CmpScoMrgSco.Value then TipoCusto := 'Margem';

  end;

  if TipoCusto = 'Margem' then begin

     CmpScoVluSco.Value := fRound((CmpScoTotNet.Value/CmpScoQtdSco.Value) / CmpScoTotInd.Value,4);

     CmpScoVluSco.Value := fRound(CmpScoVluSco.Value + ((CmpScoVluSco.Value * CmpScoMrgSco.Value)/100),4);

     CmpScoVluInf.Value := CmpScoVluSco.Value;

     AntVluInf := CmpScoVluSco.Value;

  end;
  
  CmpScoTotInf.Value := fRound(CmpScoVluInf.Value * CmpScoQtdSco.Value,2);
  CmpScoTotVen.Value := fRound(CmpScoVluInf.Value * CmpScoQtdSco.Value,2);
  
  CmpScoIcmCal.Value := fRound((CmpScoTotVen.Value * CmpScoIcmSco.Value)/100,2);
  CmpScoPisCal.Value := fRound((CmpScoTotVen.Value * CmpScoPisSco.Value)/100,2);
  CmpScoCofCal.Value := fRound((CmpScoTotVen.Value * CmpScoCofSco.Value)/100,2);
  CmpScoIpiCal.Value := fRound((CmpScoTotVen.Value * CmpScoIpiSco.Value)/100,2);

  CmpScoTotVen.Value := fRound(CmpScoTotVen.Value + CmpScoIpiCal.Value,2);

  CmpScoTotRec.Value := fRound(CmpScoTotInf.Value - (CmpScoIcmCal.Value + CmpScoPisCal.Value + CmpScoCofCal.Value),2);

  CmpScoTotRen.Value := fRound(CmpScoTotRec.Value - CmpScoTotNet.Value,2);

  if CmpScoTotNet.Value > 0 then CmpScoValRen.Value := fRound(((CmpScoTotRec.Value - CmpScoTotNet.Value)/CmpScoTotNet.Value) * 100,2);

  if AntVluInf <> CmpScoVluInf.Value then AntVluInf := CmpScoVluInf.Value;

  if TipoCusto = 'Valor' then begin
  
     if AntMrgSco <> CmpScoValRen.Value then begin

        CmpScoMrgSco.Value := CmpScoValRen.Value;

        AntMrgSco := CmpScoMrgSco.Value;

     end;
  end;

  CmpScoIreCal.Value := fRound((CmpScoTotRen.Value * CmpScoIreSco.Value)/100,2);
  CmpScoCssCal.Value := fRound((CmpScoTotRen.Value * CmpScoCssSco.Value)/100,2);

  CmpScoTotMli.Value := fRound(CmpScoTotRen.Value - (CmpScoIreCal.Value + CmpScoCssCal.Value),2);

  if CmpScoTotVen.Value > 0 then CmpScoValMli.Value := fRound((CmpScoTotMli.Value/CmpScoTotVen.Value) * 100,2);

end;

procedure TfmManSc1.DsCmpScoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if CmpSco.State = dsBrowse then AntVluInf := CmpScoVluInf.Value;
end;

end.

