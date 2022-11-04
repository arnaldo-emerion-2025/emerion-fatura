unit ManRes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxColorPickEdit, dxColorCurrencyEdit,
  dxColorEdit, dxColorDateEdit;

type
  TfmManRes = class(TfmPadrao)
    PedLib: TwwQuery;
    DsLib: TwwDataSource;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    EdPsqNumRes: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label28: TLabel;
    EdPsqDtfRes1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDtfRes2: TdxColorDateEdit;
    Label25: TLabel;
    EdPsqTotRes1: TdxColorCurrencyEdit;
    Label19: TLabel;
    EdPsqTotRes2: TdxColorCurrencyEdit;
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
    Label2: TLabel;
    Bevel2: TBevel;
    grLib: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    quSql: TwwQuery;
    bEditar: TSpeedButton;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    PedLb2: TwwQuery;
    Label13: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    Label15: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    Label24: TLabel;
    bPsqEmp: TSpeedButton;
    EdPsqNomEmp: TdxColorEdit;
    PaintBox: TPaintBox;
    dbLib: TdxDBGraphicEdit;
    dbLb2: TdxDBGraphicEdit;
    grLb2: ThGrid;
    DsLb2: TwwDataSource;
    PedLibDTERES: TDateTimeField;
    PedLibNUMRES: TIntegerField;
    PedLibTOTREN: TFloatField;
    PedLibTOTGER: TFloatField;
    PedLibDTEFAT: TDateTimeField;
    PedLibNRONFS: TIntegerField;
    PedLibCODATD: TIntegerField;
    PedLibCODVEN: TIntegerField;
    PedLibAPECLI: TStringField;
    PedLb2CODEMP: TIntegerField;
    PedLb2DTERES: TDateTimeField;
    PedLb2NUMRES: TIntegerField;
    PedLb2SEQLIB: TIntegerField;
    PedLb2SEQLB2: TIntegerField;
    PedLb2SEQRE2: TIntegerField;
    PedLb2CODEIT: TIntegerField;
    PedLb2CODCLP: TStringField;
    PedLb2CODGRU: TStringField;
    PedLb2CODSUB: TStringField;
    PedLb2CODPRO: TStringField;
    PedLb2CODTAM: TStringField;
    PedLb2CODCOR: TStringField;
    PedLb2DESLB2: TStringField;
    PedLb2OBSLB2: TStringField;
    PedLb2CODST1: TStringField;
    PedLb2CODST2: TStringField;
    PedLb2CODUND: TStringField;
    PedLb2CLSIPI: TStringField;
    PedLb2LIQLB2: TFloatField;
    PedLb2BRTLB2: TFloatField;
    PedLb2QTPLB2: TFloatField;
    PedLb2QTSLB2: TFloatField;
    PedLb2ULTQTS: TFloatField;
    PedLb2SLDLB2: TFloatField;
    PedLb2QTDLB2: TFloatField;
    PedLb2VLULB2: TFloatField;
    PedLb2VLQLB2: TFloatField;
    PedLb2VCHLB2: TFloatField;
    PedLb2VRELB2: TFloatField;
    PedLb2VCPLB2: TFloatField;
    PedLb2VPRLB2: TFloatField;
    PedLb2VCSLB2: TFloatField;
    PedLb2DSCLB2: TFloatField;
    PedLb2VDSLB2: TFloatField;
    PedLb2DSPLB2: TFloatField;
    PedLb2VDPLB2: TFloatField;
    PedLb2DSRLB2: TFloatField;
    PedLb2VDRLB2: TFloatField;
    PedLb2PACLB2: TFloatField;
    PedLb2VACLB2: TFloatField;
    PedLb2DSCCOM: TFloatField;
    PedLb2VDSCOM: TFloatField;
    PedLb2PCOLB2: TFloatField;
    PedLb2IPILB2: TFloatField;
    PedLb2ICMLB2: TFloatField;
    PedLb2TOTVEN: TFloatField;
    PedLb2TOTCST: TFloatField;
    PedLb2BASIPI: TFloatField;
    PedLb2TOTIPI: TFloatField;
    PedLb2BASICM: TFloatField;
    PedLb2TOTICM: TFloatField;
    PedLb2BASSUB: TFloatField;
    PedLb2TOTSUB: TFloatField;
    PedLb2TOTLB2: TFloatField;
    PedLb2TOTGE2: TFloatField;
    PedLb2TOTREN: TFloatField;
    PedLb2TOTLIQ: TFloatField;
    PedLb2TOTBRT: TFloatField;
    PedLb2BASCOM: TFloatField;
    PedLb2TOTCOM: TFloatField;
    PedLb2TOTDSC: TFloatField;
    PedLb2TOTDSR: TFloatField;
    PedLb2TOTDSP: TFloatField;
    PedLb2TOTACR: TFloatField;
    PedLb2TOTDCO: TFloatField;
    PedLb2CODSTR: TStringField;
    PedLb2TIPSTR: TStringField;
    PedLb2REGIPI: TStringField;
    PedLb2TIPIPI: TStringField;
    PedLb2TRBIPI: TStringField;
    PedLb2REDIPI: TFloatField;
    PedLb2BSCIPI: TFloatField;
    PedLb2REGICM: TStringField;
    PedLb2TIPICM: TStringField;
    PedLb2TRBICM: TStringField;
    PedLb2REDICM: TFloatField;
    PedLb2BSCICM: TFloatField;
    PedLb2INCREV: TFloatField;
    PedLb2INCFIN: TFloatField;
    PedLb2FLGSEQ: TStringField;
    PedLb2FLGRES: TStringField;
    PedLb2FLGREQ: TStringField;
    PedLb2CODVWA: TStringField;
    PedLb2NRORE2: TIntegerField;
    PedLb2REFLB2: TStringField;
    PedLb2FLGDUP: TStringField;
    PedLb2DSCPRO: TStringField;
    PedLibCODEMP: TIntegerField;
    PedLibSEQLIB: TIntegerField;
    PedLibDTELIB: TDateTimeField;
    PedLibHRELIB: TStringField;
    PedLibQTSLIB: TIntegerField;
    PedLibBASIPI: TFloatField;
    PedLibTOTIPI: TFloatField;
    PedLibBASICM: TFloatField;
    PedLibTOTICM: TFloatField;
    PedLibBASSUB: TFloatField;
    PedLibTOTSUB: TFloatField;
    PedLibTOTVEN: TFloatField;
    PedLibTOTCST: TFloatField;
    PedLibTOTLIB: TFloatField;
    PedLibTOTLIQ: TFloatField;
    PedLibTOTBRT: TFloatField;
    PedLibBASCOM: TFloatField;
    PedLibTOTCOM: TFloatField;
    PedLibDSCCOM: TFloatField;
    PedLibDSCREG: TFloatField;
    PedLibMEDDSC: TFloatField;
    PedLibMEDACR: TFloatField;
    PedLibMEDCOM: TFloatField;
    PedLibMEDPRM: TFloatField;
    PedLibMEDDCO: TFloatField;
    PedLibTOTDCO: TFloatField;
    PedLibTOTDSC: TFloatField;
    PedLibTOTDSR: TFloatField;
    PedLibTOTDSP: TFloatField;
    PedLibTOTACR: TFloatField;
    PedLibCODUSU: TIntegerField;
    PedLibFLGRES: TStringField;
    PedLibFLGLIB: TStringField;
    PedLibPEDANT: TStringField;
    PedLibFLGANT: TStringField;
    PedLibDTEANT: TDateTimeField;
    PedLibHREANT: TStringField;
    PedLibOBSANT: TMemoField;
    PedLibUSUANT: TIntegerField;
    PedLibHREFAT: TStringField;
    PedLibUSUFAT: TIntegerField;
    PedLibFLGREQ: TStringField;
    PedLibSITLIB: TStringField;
    PedLibPEDTIP: TIntegerField;
    PedLibDTEDEL: TDateTimeField;
    PedLibHREDEL: TStringField;
    PedLibOBSDEL: TMemoField;
    PedLibUSUDEL: TIntegerField;
    PedLibDTEDEV: TDateTimeField;
    PedLibHREDEV: TStringField;
    PedLibOBSDEV: TMemoField;
    PedLibUSUDEV: TIntegerField;
    PedLibFLGATU: TStringField;
    PedLibDTEATU: TDateTimeField;
    PedLibHREATU: TStringField;
    PedLibUSUATU: TIntegerField;
    PedLibTRASDA: TIntegerField;
    PedLibDTESDA: TDateTimeField;
    PedLibHRESDA: TStringField;
    PedLibUSUSDA: TIntegerField;
    PedLibOBSSDA: TStringField;
    PedLibCODVEI: TIntegerField;
    PedLibDTEENT: TDateTimeField;
    PedLibHREENT: TStringField;
    PedLibUSUENT: TIntegerField;
    PedLibOBSENT: TStringField;
    PedLibCODCLI: TIntegerField;
    PedLibCODPFA: TStringField;
    PedLibTIPPFA: TStringField;
    PedLibCODFIL: TIntegerField;
    PedLibCODTRA: TIntegerField;
    PedLibMODPFA: TStringField;
    PedLibFLGTAB: TStringField;
    PedLibATUEST: TStringField;
    PedLibINTFIN: TStringField;
    PedLibMESLIB: TStringField;
    PedLibANOLIB: TIntegerField;
    PedLibLANEST: TStringField;
    PedLibUFELIB: TStringField;
    PedLibFLGSER: TStringField;
    PedLibVALTMO: TFloatField;
    PedLibBASISS: TFloatField;
    PedLibTOTISS: TFloatField;
    PedLibCODTCL: TIntegerField;
    PedLibMEDCAT: TFloatField;
    PedLibBASCAT: TFloatField;
    PedLibTOTCAT: TFloatField;
    PedLibTIPCPA: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqNumResExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bEditarClick(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bPsqEmpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    DteRes : TDateTime;
    CodEmp,NumRes,SeqLib : integer;
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManRes: TfmManRes;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, Bbacesso, ManGDB, PsqEmp, PsqVen,
     PsqPfa, ManPri, AuxPsq, ManPed, AuxIni;

{$R *.DFM}

procedure TfmManRes.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedLib.*,'+
           '        PedRes.CodCli,'+
           '        PedRes.CodAtd,'+
           '        PedRes.CodVen,'+
           '        TextoOcor(IntStrZeros(PedRes.CodCli,7),'''+ '-' +''',FinCli.ApeCli,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as ApeCli'+
           ' From PedLib INNER JOIN PedRes ON (PedLib.CodEmp = PedRes.CodEmp)'+
           '                              AND (PedLib.DteRes = PedRes.DteRes)'+
           '                              AND (PedLib.NumRes = PedRes.NumRes)'+
           '              LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)';

  PedLib.Close;
  PedLib.Params[0].AsDateTime := Date;
  PedLib.Open;

end;

procedure TfmManRes.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

  sFiltro := ' Where PedLib.SitLib = '+ QuotedStr('Faturado');

  case rgOrdem.Itemindex of
       0: sOrdem := ' Order by PedRes.CodCli,PedLib.NumRes';
       1: sOrdem := ' Order by PedRes.CodVen,PedLib.NumRes';
       2: sOrdem := ' Order by PedLib.NumRes';
       3: sOrdem := ' Order by PedLib.DteRes,PedLib.NumRes';
  end;

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqNumRes.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.NumRes = '+ QuotedStr(EdPsqNumRes.Text);
  if Trim( EdPsqCodCli.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
  if Trim( EdPsqNroNfs.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text);

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteRes >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteRes <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));
  if Trim(fLimpaStr(EdPsqDtfRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDtfRes1.Date));
  if Trim(fLimpaStr(EdPsqDtfRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDtfRes2.Date));

  if EdPsqTotRes1.Value > 0 then sFiltro := sFiltro + ' and PedLib.TotGer >= '+ QuotedStr(fConvertValor(EdPsqTotRes1.Text));
  if EdPsqTotRes2.Value > 0 then sFiltro := sFiltro + ' and PedLib.TotGer <= '+ QuotedStr(fConvertValor(EdPsqTotRes2.Text));

  with PedLib,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  PedLb2.Close;
  PedLb2.Open;

  grLib.SetFocus;

end;

procedure TfmManRes.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomCli From FinCli Where CodCli = '''+EdPsqCodCli.Text+'''';
          Open;

          EdPsqNomCli.Text := quSql.FieldByName('NomCli').AsString;
     end;

     end
  else
     EdPsqNomCli.Text := '';
end;

procedure TfmManRes.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

     EdPsqCodCli.SetFocus;

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

     EdPsqCodCli.SetFocus;

  end;
end;

procedure TfmManRes.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmManRes.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqVen := TfmPsqVen.Create(Self);
        fmPsqVen.ShowModal;

        if fmPsqVen.CodVen > 0 then begin

           EdPsqNomVen.Text := fmPsqVen.NomVen;
           EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);

        end;

     finally

        FreeAndNil(fmPsqVen);

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

procedure TfmManRes.bPsqCliClick(Sender: TObject);
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

  EdPsqCodCli.SetFocus;

end;

procedure TfmManRes.bPsqVenClick(Sender: TObject);
begin

  try

     fmPsqVen := TfmPsqVen.Create(Self);
     fmPsqVen.ShowModal;

     if fmPsqVen.CodVen > 0 then begin

        EdPsqNomVen.Text := fmPsqVen.NomVen;
        EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);

     end;

  finally

     FreeAndNil(fmPsqVen);

  end;

  EdPsqCodVen.SetFocus;

end;

procedure TfmManRes.EdPsqNumResExit(Sender: TObject);
begin
  if Trim( EdPsqNumRes.Text ) <> '' then begin

     EdPsqNroNfs.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqNomVen.Clear;

     EdPsqDteRes1.Clear;
     EdPsqDteRes2.Clear;
     EdPsqDtfRes1.Clear;
     EdPsqDtfRes2.Clear;

     EdPsqTotRes1.Value := 0;
     EdPsqTotRes2.Value := 0;

  end;
end;

procedure TfmManRes.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bEditar.OnClick(Sender);

end;

procedure TfmManRes.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumRes.SetFocus;
end;

procedure TfmManRes.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManRes.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManRes.bEditarClick(Sender: TObject);
var
i     : Integer;
Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManPed then Found := i;

     end;

     if Found >= 0 then begin

        fmManPed.WindowState := wsNormal;
        fmManPed.BringToFront;

        end
     else
        begin

        if PedLibNumRes.Value > 0 then begin

           CodEmp := PedLibCodEmp.Value;
           DteRes := PedLibDteRes.Value;
           NumRes := PedLibNumRes.Value;
           SeqLib := PedLibSeqLib.Value;

           fmManPed := TfmManPed.Create(Self);
           fmManPed.Show;

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManRes.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     EdPsqNumRes.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqNomVen.Clear;

     EdPsqDteRes1.Clear;
     EdPsqDteRes2.Clear;
     EdPsqDtfRes1.Clear;
     EdPsqDtfRes2.Clear;

     EdPsqTotRes1.Value := 0;
     EdPsqTotRes2.Value := 0;

  end;
end;

procedure TfmManRes.EdPsqCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomEmp From GerEmp Where CodEmp = '''+ EdPsqCodEmp.Text +'''';
          Open;

          EdPsqNomEmp.Text := FieldByName('NomEmp').AsString;

     end;

     end
  else
     EdPsqNomEmp.Text := '';
end;

procedure TfmManRes.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);

        if GFlgAce = 'Sim' then begin

           with fmPsqEmp.GerEmp,SQL do begin

                Close;
                Text := ' Select NomEmp,CodEmp From GerEmp'+
                        ' Where CodFil > 0'+
                        ' Order by NomEmp';
                Open;

           end;
        end;

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

procedure TfmManRes.bPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);

     if GFlgAce = 'Sim' then begin

        with fmPsqEmp.GerEmp,SQL do begin

             Close;
             Text := ' Select NomEmp,CodEmp From GerEmp'+
                     ' Where CodFil > 0'+
                     ' Order by NomEmp';
             Open;

        end;
     end;

     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManRes.FormClose(Sender: TObject; var Action: TCloseAction);
var
i     : Integer;
Found : Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManPed then Found := i;

  end;

  if Found >= 0 then
     fmsgErro('Existem Operações de Alteração em Andamento. Por Favor Feche o Formulario.',Nil)
  else
     Action := CaFree;

end;

procedure TfmManRes.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManRes := Nil;
end;

end.
