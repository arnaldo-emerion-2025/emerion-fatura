unit ManRes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, RDprint, dxDBELib, dxColorPickEdit, dxColorCurrencyEdit,
  dxColorEdit, dxColorDateEdit;

type
  TfmManRes = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
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
    Label10: TLabel;
    Bevel1: TBevel;
    quSql: TwwQuery;
    bExcluir: TSpeedButton;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    RDprint1: TRDprint;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    PedResNUMRES: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTOTRES: TFloatField;
    PedResTOTGER: TFloatField;
    PedRe2: TwwQuery;
    UpRes: TUpdateSQL;
    Label13: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    PedResFATGER: TFloatField;
    PedResDEVGER: TFloatField;
    PedResSLDGER: TFloatField;
    Label23: TLabel;
    Label15: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    Label24: TLabel;
    bPsqEmp: TSpeedButton;
    EdPsqNomEmp: TdxColorEdit;
    PaintBox: TPaintBox;
    DsRe2: TwwDataSource;
    PedRe2DESRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2ICMRE2: TFloatField;
    PedRe2TOTRE2: TFloatField;
    PedResCODATD: TIntegerField;
    PedPar: TwwQuery;
    PedParFLGIMP: TStringField;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2TOTREN: TFloatField;
    PedRe2FLGVAL: TStringField;
    PedRe2FLGPAC: TStringField;
    PedRe2FLGLIB: TStringField;
    PedRe2DSCPRO: TStringField;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResHRERES: TStringField;
    PedResCODTIP: TIntegerField;
    PedResTIPPFA: TStringField;
    PedResTOTREN: TFloatField;
    PedResSITRES: TStringField;
    PedResNOMCLI: TStringField;
    PedResFLGOCO: TStringField;
    PedResFLGIMP: TStringField;
    PedResDTFRES: TDateTimeField;
    PedResCODTRA: TIntegerField;
    PedResLANEST: TStringField;
    PedResCODFIL: TIntegerField;
    PedResTOTCST: TFloatField;
    PedResMEDDSC: TFloatField;
    PedResTOTDSC: TFloatField;
    PedResMEDACR: TFloatField;
    PedResTOTACR: TFloatField;
    PedResMEDPRM: TFloatField;
    PedResTOTDSP: TFloatField;
    PedResMEDCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResDSCREG: TFloatField;
    PedResTOTDSR: TFloatField;
    PedResMEDDCO: TFloatField;
    PedResTOTDCO: TFloatField;
    PedResQTIRES: TIntegerField;
    PedResQTPRES: TIntegerField;
    PedResPEDANT: TStringField;
    PedResUFERES: TStringField;
    PedResCGCCLI: TStringField;
    Label5: TLabel;
    Label14: TLabel;
    EdPsqCodAtd: TdxColorEdit;
    bPsqAtd: TSpeedButton;
    EdPsqNomAtd: TdxColorEdit;
    Label1: TLabel;
    Label8: TLabel;
    EdPsqSitRes: TdxColorPickEdit;
    Label2: TLabel;
    Label3: TLabel;
    EdPsqFlgImp: TdxColorPickEdit;
    bSelecionar: TBitBtn;
    pnNomCli: TPanel;
    pnApeVen: TPanel;
    pnTotRen: TPanel;
    dbRes: TdxDBGraphicEdit;
    grRes: ThGrid;
    pnSitRes: TPanel;
    pnDteRes: TPanel;
    pnDtfRes: TPanel;
    pnFlgImp: TPanel;
    dbRe2: TdxDBGraphicEdit;
    grRe2: ThGrid;
    pnTotMka: TPanel;
    PedResAPEVEN: TStringField;
    PedResAPEATD: TStringField;
    PedResTOTIPI: TFloatField;
    quSQL1: TwwQuery;
    PedResUSUREJ: TIntegerField;
    PedResTOTSUB: TFloatField;
    PedResATUEST: TStringField;
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
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bPsqEmpClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure grRe2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure PedRe2DSCPROGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure bPsqAtdClick(Sender: TObject);
    procedure EdPsqCodAtdExit(Sender: TObject);
    procedure EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure DsRe2DataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
    GExiCom : string;
    GImpMrc : string;    
    GImpTra : string;
    GImpObs : string;
    GImpFin : string;
  public
    {Public declarations}
    DteRes : TDateTime;
    CodEmp,NumRes : integer;
    sBase,sFiltro,sOrdem : string;
  end;

var
  Linha    : Integer;
  fmManRes : TfmManRes;
  sCabe,NomVen,NomAtd,NomRep,NomCli,EndEn1,EndEn2,EndEn3,Permissao : string;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, Bbacesso, ManGDB, PsqEmp, PsqVen,
     PsqPfa, ManPri, AuxPsq, ManPed, PsqRej, PsqOco, ManCpe, PsqCpe, PsqMfp,
     PsqFat, AuxIni, PsqOrc, PsqEst, PsqCpd, PsqHre, PsqAt2, PsqLib;

{$R *.DFM}

procedure TfmManRes.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.CodEmp,'+
           '        PedRes.DteRes,'+
           '        PedRes.NumRes,'+
           '        PedRes.HreRes,'+
           '        PedRes.DtfRes,'+
           '        PedRes.UfeRes,'+
           '        PedRes.CgcCli,'+
           '        PedRes.PedAnt,'+
           '        PedRes.QtiRes,'+
           '        PedRes.QtpRes,'+
           '        PedRes.LanEst,'+
           '        PedRes.CodFil,'+
           '        PedRes.CodCli,'+
           '        PedRes.CodTra,'+
           '        PedRes.CodTip,'+
           '        PedRes.CodVen,'+
           '        PedRes.CodPfa,'+
           '        PedRes.TipPfa,'+
           '        PedRes.CodAtd,'+
           '        PedRes.TotRes,'+
           '        PedRes.TotSub,'+           
           '        PedRes.TotGer,'+
           '        PedRes.TotCst,'+
           '        PedRes.MedDsc,'+
           '        PedRes.TotDsc,'+
           '        PedRes.MedAcr,'+
           '        PedRes.TotAcr,'+
           '        PedRes.MedPrm,'+
           '        PedRes.TotDsp,'+
           '        PedRes.MedCom,'+
           '        PedRes.TotCom,'+
           '        PedRes.MedDco,'+
           '        PedRes.TotDco,'+
           '        PedRes.DscReg,'+
           '        PedRes.TotDsr,'+
           '        PedRes.TotIpi,'+
           '        PedRes.FatGer,'+
           '        PedRes.DevGer,'+
           '        PedRes.SldGer,'+
           '        PedRes.TotRen,'+
           '        PedRes.AtuEst,'+
           '        PedRes.SitRes,'+
           '        PedRes.UsuRej,'+
           '        PedRes.FlgOco,'+
           '        PedRes.FlgImp,'+
           '        FinCli.NomCli,'+
           '        FinVen.ApeVen,'+
           '        FinAtd.ApeAtd'+           
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           '             LEFT JOIN FinVen ON (PedRes.CodVen = FinVen.CodVen)'+
           '             LEFT JOIN FinAtd ON (PedRes.CodAtd = FinAtd.CodAtd)';

end;

procedure TfmManRes.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

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
  
  sFiltro := '';

  sOrdem := ' Order by PedRes.NumRes';

  if Trim( EdPsqSitRes.Text ) <> 'Todos' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.SitRes = '+ QuotedStr(EdPsqSitRes.Text)
     else
        sFiltro := ' Where PedRes.SitRes = '+ QuotedStr(EdPsqSitRes.Text);

  end;

  if Trim( EdPsqFlgImp.Text ) <> 'Todos' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.FlgImp = '+ QuotedStr(EdPsqFlgImp.Text)
     else
        sFiltro := ' Where PedRes.FlgImp = '+ QuotedStr(EdPsqFlgImp.Text);

  end;

  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text)
     else
        sFiltro := ' Where PedRes.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

  end;

  if Trim( EdPsqNumRes.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.NumRes = '+ QuotedStr(EdPsqNumRes.Text)
     else
        sFiltro := ' Where PedRes.NumRes = '+ QuotedStr(EdPsqNumRes.Text);

  end;

  if Trim( EdPsqCodCli.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.CodCli = '+ QuotedStr(EdPsqCodCli.Text)
     else
        sFiltro := ' Where PedRes.CodCli = '+ QuotedStr(EdPsqCodCli.Text);

  end;

  if Trim( EdPsqCodVen.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text)
     else
        sFiltro := ' Where PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  end;

  if Trim( EdPsqCodAtd.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text)
     else
        sFiltro := ' Where PedRes.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text);

  end;
  
  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + '  and PedRes.DteRes >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date))
     else
        sFiltro := ' Where PedRes.DteRes >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + '  and PedRes.DteRes <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date))
     else
        sFiltro := ' Where PedRes.DteRes <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  end;

  if EdPsqTotRes1.Value > 0 then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.TotRes >= '+ QuotedStr(fConvertValor(EdPsqTotRes1.Text))
     else
        sFiltro := ' Where PedRes.TotRes >= '+ QuotedStr(fConvertValor(EdPsqTotRes1.Text));

  end;

  if EdPsqTotRes2.Value > 0 then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.TotRes <= '+ QuotedStr(fConvertValor(EdPsqTotRes2.Text))
     else
        sFiltro := ' Where PedRes.TotRes <= '+ QuotedStr(fConvertValor(EdPsqTotRes2.Text));

  end;

  if Trim(fLimpaStr(EdPsqDtfRes1.Text)) <> '' then begin

     if Trim(fLimpaStr(EdPsqDtfRes2.Text)) <> '' then begin
     
        if pos('Where', sFiltro) > 0 then
           sFiltro := sFiltro + ' and Exists(Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDtfRes1.Date)) +' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDtfRes2.Date)) +' )'
        else
           sFiltro := '  Where Exists(Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDtfRes1.Date)) +' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDtfRes2.Date)) +' )';

        end
     else
        begin

        if pos('Where', sFiltro) > 0 then
           sFiltro := sFiltro + ' and Exists (Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDtfRes1.Date)) +' )'
        else
           sFiltro := ' Where Exists (Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDtfRes1.Date)) +' )';

     end;

     end
  else
     begin

     if Trim(fLimpaStr(EdPsqDtfRes2.Text)) <> '' then begin

        if pos('Where', sFiltro) > 0 then
           sFiltro := sFiltro + ' and Exists (Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDtfRes2.Date)) +' )'
        else
           sFiltro := ' Where Exists (Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDtfRes2.Date)) +' )';

     end;
  end;

  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and Exists (Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text) +' )'
     else
        sFiltro := ' Where Exists (Select * From PedLib Where PedLib.CodEmp = PedRes.CodEmp and PedLib.DteRes = PedRes.DteRes and PedLib.NumRes = PedRes.NumRes and PedLib.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text) +' )';

  end;

  if GFlgAce = 'Sim' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = '+QuotedStr('Sim')
     else
        sFiltro := ' Where PedRes.CodTip = 1 and not PedRes.FlgDif = '+QuotedStr('Sim')

  end;

  with PedRes,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  PedRe2.Close;
  PedRe2.Open;

  grRes.SetFocus;

end;

procedure TfmManRes.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCli,CodAtd From FinCli Where FinCli.CodCli = '''+ EdPsqCodCli.Text +'''';
          Open;

          EdPsqNomCli.Text := FieldByName('NomCli').AsString;

          if GCodAtd_Id > 0 then begin

             if FieldbyName('CodAtd').AsInteger <> GCodAtd_Id then begin

                EdPsqNomCli.Text := '';

                fmsgErro('Cliente Informado não Pertence ao Atendente.',EdPsqCodCli);

             end;
          end;
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

procedure TfmManRes.bPsqCliClick(Sender: TObject);
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

     if (GCodVen_Id = 0) or (GGus_Id = 1) then begin

        EdPsqCodVen.Clear;
        EdPsqNomVen.Clear;

     end;

     EdPsqNroNfs.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;

     EdPsqDteRes1.Clear;
     EdPsqDteRes2.Clear;
     EdPsqDtfRes1.Clear;
     EdPsqDtfRes2.Clear;

     EdPsqTotRes1.Value := 0;
     EdPsqTotRes2.Value := 0;

     EdPsqSitRes.Text := 'Todos';
     EdPsqFlgImp.Text := 'Todos';
     
  end;
end;

procedure TfmManRes.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

  if key = 117 then bExcluir.OnClick(Sender);

  if key = 112 then begin

     if grRes.Focused then begin

        if (PedResSitRes.Value = 'Faturado') or
           (PedResSitRes.Value = 'Pronto para Faturar') or
           (PedResSitRes.Value = 'Parcialmente Faturado') or
           (PedResSitRes.Value = 'Faturado com Saldo nao Atendido') then begin

           if PedResSitRes.Value = 'Pronto para Faturar' then begin

              try

                 fmPsqLib := TfmPsqLib.Create(Self);

                 fmPsqLib.PedLib.Close;
                 fmPsqLib.PedLib.Params[0].AsInteger  := PedResCodEmp.Value;
                 fmPsqLib.PedLib.Params[1].AsDateTime := PedResDteRes.Value;
                 fmPsqLib.PedLib.Params[2].AsInteger  := PedResNumRes.Value;
                 fmPsqLib.PedLib.Open;

                 fmPsqLib.ShowModal;

              finally

                 FreeAndNil(fmPsqLib);

              end;

              end
           else
              begin
              
              if PedResCodTip.Value = 1 then begin

                 try

                    fmPsqFat := TfmPsqFat.Create(Self);

                    fmPsqFat.FatPed.Close;
                    fmPsqFat.FatPed.Params[0].AsInteger  := PedResCodEmp.Value;
                    fmPsqFat.FatPed.Params[1].AsDateTime := PedResDteRes.Value;
                    fmPsqFat.FatPed.Params[2].AsInteger  := PedResNumRes.Value;
                    fmPsqFat.FatPed.Open;

                    fmPsqFat.ShowModal;

                 finally

                    FreeAndNil(fmPsqFat);

                 end;

                 end
              else
                 begin

                 try

                    fmPsqOrc := TfmPsqOrc.Create(Self);

                    fmPsqOrc.FatOrc.Close;
                    fmPsqOrc.FatOrc.Params[0].AsInteger  := PedResCodEmp.Value;
                    fmPsqOrc.FatOrc.Params[1].AsDateTime := PedResDteRes.Value;
                    fmPsqOrc.FatOrc.Params[2].AsInteger  := PedResNumRes.Value;
                    fmPsqOrc.FatOrc.Open;

                    fmPsqOrc.ShowModal;

                 finally

                    FreeAndNil(fmPsqOrc);

                 end;
              end;
           end;   
        end;
     end;
  end;

  if key = 121 then begin {F10 - Observações Quanto a Rejeicao do Pedido}

     if PedResSitRes.Value = 'Cancelado' then begin

        try

           fmPsqCpe := TfmPsqCpe.Create(Self);

           fmPsqCpe.PedRes.Close;
           fmPsqCpe.PedRes.Params[0].AsInteger  := PedResCodEmp.Value;
           fmPsqCpe.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
           fmPsqCpe.PedRes.Params[2].AsInteger  := PedResNumRes.Value;
           fmPsqCpe.PedRes.Open;

           fmPsqCpe.ShowModal;

        finally

           FreeAndNil(fmPsqCpe);

        end;

        end
     else
        begin

        if PedResSitRes.Value = 'Faturado com Saldo nao Atendido' then begin

           try

              fmPsqMfp := TfmPsqMfp.Create(Self);

              fmPsqMfp.PedRes.Close;
              fmPsqMfp.PedRes.Params[0].AsInteger  := PedResCodEmp.Value;
              fmPsqMfp.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
              fmPsqMfp.PedRes.Params[2].AsInteger  := PedResNumRes.Value;
              fmPsqMfp.PedRes.Open;

              fmPsqMfp.ShowModal;

           finally

              FreeAndNil(fmPsqMfp);

           end;

           end
        else
           begin

           if (PedResUsuRej.Value > 0) or (PedResSitRes.Value = 'Rejeitado') then begin

              try

                 fmPsqRej := TfmPsqRej.Create(Self);

                 fmPsqRej.PedRes.Close;
                 fmPsqRej.PedRes.Params[0].AsInteger  := PedResCodEmp.Value;
                 fmPsqRej.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
                 fmPsqRej.PedRes.Params[2].AsInteger  := PedResNumRes.Value;
                 fmPsqRej.PedRes.Open;

                 fmPsqRej.ShowModal;

              finally

                 FreeAndNil(fmPsqRej);

              end;
           end;
        end;
     end;
  end;

  if key = 122 then begin {F11-Ocorrencias do Pedido}

     if PedResFlgOco.Value = '*' then begin

        try

           fmPsqOco := TfmPsqOco.Create(Self);

           fmPsqOco.PedOco.Close;
           fmPsqOco.PedOco.Params[0].AsInteger  := PedResCodEmp.Value;
           fmPsqOco.PedOco.Params[1].AsDateTime := PedResDteRes.Value;
           fmPsqOco.PedOco.Params[2].AsInteger  := PedResNumRes.Value;
           fmPsqOco.PedOco.Open;

           fmPsqOco.PedRe2.Close;
           fmPsqOco.PedRe2.Params[0].AsInteger  := PedResCodEmp.Value;
           fmPsqOco.PedRe2.Params[1].AsDateTime := PedResDteRes.Value;
           fmPsqOco.PedRe2.Params[2].AsInteger  := PedResNumRes.Value;
           fmPsqOco.PedRe2.Open;

           fmPsqOco.ShowModal;

        finally

           FreeAndNil(fmPsqOco);

        end;
     end;
  end;
end;

procedure TfmManRes.FormShow(Sender: TObject);
begin
  inherited;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then
     Permissao := fAcesso('PED0201')
  else
     Permissao := 'SSSSS';

  if copy(Permissao,1,1) = 'N' then bIncluir.Enabled := False;
  if copy(Permissao,2,1) = 'N' then bEditar.Enabled := False;
  if copy(Permissao,3,1) = 'N' then bExcluir.Enabled := False;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     pnTotRen.Visible := False;
     pnTotMka.Visible := False;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select * From PedPar';
       Open;

       GExiCom := FieldByName('ExiCom').AsString;

  end;

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
  
  if GCodAtd_Id > 0 then begin

     sOrdem := ' Order by PedRes.NumRes';

     sFiltro := ' Where PedRes.CodAtd = '''+ IntToStr( GCodAtd_Id ) +''' and PedRes.DteRes = '''+ fDateToSQL(Date) +'''';

     if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = '+QuotedStr('Sim');

     with PedRes,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;

     end
  else
     begin
        
     if GCodVen_Id > 0 then begin

        sOrdem := ' Order by PedRes.NumRes';

        sFiltro := ' Where PedRes.CodVen = '''+ IntToStr( GCodVen_Id ) +''' and PedRes.DteRes = '''+ fDateToSQL(Date) +'''';

        if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = '+QuotedStr('Sim');

        with PedRes,SQL do begin

             Close;
             Text := sBase + sFiltro + sOrdem;
             Open;

        end;

        end
     else
        begin

        if GFlgAce = 'Nao' then begin
     
           PedRes.Close;
           PedRes.Params[0].AsDateTime := Date;
           PedRes.Open;

           end
        else
           begin

           sOrdem := ' Order by PedRes.NumRes';

           sFiltro := ' Where PedRes.DteRes = '''+ fDateToSQL(Date) +'''';

           sFiltro := sFiltro + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = '+QuotedStr('Sim');

           with PedRes,SQL do begin

                Close;
                Text := sBase + sFiltro + sOrdem;
                Open;

           end;
        end;
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

  EdPsqDteRes1.Date := Date;
  EdPsqDteRes2.Date := Date;

  EdPsqNumRes.SetFocus;

end;

procedure TfmManRes.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
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

     if copy(Permissao,2,1) = 'S' then begin

        if PedResNumRes.Value > 0 then begin

           Found := -1;

           for i := 0 to Screen.FormCount - 1 do begin

               if Screen.Forms[i] is TfmManPed then Found := i;

           end;

           if Found >= 0 then begin

              fmsg('Existe um Pedido em Andamento.','E');

              fmManPed.WindowState := wsNormal;
              fmManPed.BringToFront;

              end
           else
              begin

              sFiltro := ' Where PedRes.CodEmp = '''+ IntToStr(PedResCodEmp.Value)   +''''+
                         '   and PedRes.DteRes = '''+ fDateToSQL(PedResDteRes.Value) +''''+
                         '   and PedRes.NumRes = '''+ IntToStr(PedResNumres.Value)   +'''';

              with PedRes,SQL do begin

                   Close;
                   Text := sBase + sFiltro + sOrdem;
                   Open;

              end;

              if (PedResSitRes.Value = 'Aguardando Complemento')                   or
                 (PedResSitRes.Value = 'Aguardando Consultas de Cadastro')         or
                 (PedResSitRes.Value = 'Aguardando Liberacao do Depto Financeiro') then begin

                 PedRes.Edit;

                 PedResSitRes.Value := 'Processo de Alteracao';

                 with PedRes do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

                         EdPsqNumRes.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;
              end;

              CodEmp := PedResCodEmp.Value;
              DteRes := PedResDteRes.Value;
              NumRes := PedResNumRes.Value;

              fmManPed := TfmManPed.Create(Self);
              fmManPed.Show;

           end;
        end;

        end
     else
        fMsgErro('Usuario Não Possui Acesso a Opcão.',nil);

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManRes.bIncluirClick(Sender: TObject);
var
i     : Integer;
Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,1,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManPed then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe um Pedido em Andamento.','E');
     
           fmManPed.WindowState := wsNormal;
           fmManPed.BringToFront;

           end
        else
           begin   

           CodEmp := 0;
           DteRes := Date;
           NumRes := 0;

           sFiltro := ' Where PedRes.CodEmp = :CodEmp'+
                      '   and PedRes.DteRes = :DteRes'+
                      '   and PedRes.NumRes = :NumRes';

           with PedRes,SQL do begin

                Close;
                Text := sBase + sFiltro + sOrdem;

                with Params do begin

                     Params[0].AsInteger  := CodEmp;
                     Params[1].AsDateTime := DteRes;
                     Params[2].AsInteger  := NumRes;

                end;

                Open;

           end;

           fmManPed := TfmManPed.Create(Self);
           fmManPed.Show;

        end;

        end
     else
        fMsgErro('Usuario Não Possui Acesso a Opcão.',nil);

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManRes.bExcluirClick(Sender: TObject);
var
i     : Integer;
Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,3,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManPed then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe um Pedido em Andamento.','E');

           fmManPed.WindowState := wsNormal;
           fmManPed.BringToFront;

           end
        else
           begin

           if PedResNumRes.Value > 0 then begin

              if ( Trim( PedResSitRes.Value ) = 'Nao Concluido' ) or  ( Trim( PedResSitRes.Value ) = 'Rejeitado' )then begin

                 if fMsg('Confirma a Exclusão do Pedido?','S') then begin

                    PedRes.Delete;

                    with PedRes do begin

                         fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                         try

                            ApplyUpdates; {Tenta aplicar as alterações};

                            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                         except

                            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                            if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

                            grRes.SetFocus;

                            raise;

                         end;

                         CommitUpdates; {sucesso!, limpa o cache...}

                    end;

                    PedRes.Close;
                    PedRes.Open;

                    grRes.SetFocus;

                 end;

                 end
              else
                 begin

                 if (Trim( PedResSitRes.Value ) = 'Processo de Alteracao')                    or
                    (Trim( PedResSitRes.Value ) = 'Aguardando Complemento')                   or
                    (Trim( PedResSitRes.Value ) = 'Aguardando Consultas de Cadastro')         or
                    (Trim( PedResSitRes.Value ) = 'Aguardando Liberacao para Faturamento')    or
                    (Trim( PedResSitRes.Value ) = 'Aguardando Liberacao do Depto Comercial')  or
                    (Trim( PedResSitRes.Value ) = 'Aguardando Liberacao do Depto Financeiro') then begin

                    if fMsg('Confirma o Cancelamento do Pedido?','S') then begin

                       try

                          fmManCpe := TfmManCpe.Create(Self);

                          fmManCpe.PedRes.Close;
                          fmManCpe.PedRes.Params[0].AsInteger  := PedResCodEmp.Value;
                          fmManCpe.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
                          fmManCpe.PedRes.Params[2].AsInteger  := PedResNumRes.Value;
                          fmManCpe.PedRes.Open;

                          fmManCpe.ShowModal;

                       finally

                          FreeAndNil(fmManCpe);

                       end;

                       CodEmp := PedResCodEmp.Value;
                       DteRes := PedResDteRes.Value;
                       NumRes := PedResNumRes.Value;

                       PedRes.Close;
                       PedRes.Open;

                       PedRes.Locate('CodEmp;DteRes;NumRes',VarArrayOf([CodEmp,DteRes,NumRes]),[LoPartialKey]);

                    end;

                    end
                 else
                    begin

                    if (PedResSitRes.Value = 'Faturado') or (PedResSitRes.Value = 'Parcialmente Faturado') then fMsg('Operação não Pode ser Realizada. Pedido Faturado.','E')

                    else if PedResSitRes.Value = 'Aguardando Separacao dos Itens a Faturar' then fMsg('Operação não Pode ser Realizada. Pedido em Processo de Separação dos Itens para Faturamento.','E')

                    else if PedResSitRes.Value = 'Pronto para Faturar' then fMsg('Operação não Pode ser Realizada. Pedido Pronto para Faturar.','E')

                    else if PedResSitRes.Value = 'Aguardando Separacao de Estoque' then fMsg('Operação não Pode ser Realizada. Pedido Aguardando Separação de Estoque.','E')

                    else if PedResSitRes.Value = 'Aguardando Liberacao para Faturamento' then fMsg('Operação não Pode ser Realizada. Pedido Aguardando Liberacao para Faturamento.','E')

                    else if PedResSitRes.Value = 'Cancelado' then fMsg('Operação não Pode ser Realizada. Pedido Cancelado','E')

                    else if PedResSitRes.Value = 'Faturado com Saldo nao Atendido' then fMsg('Operação não Pode ser Realizada. Pedido com Saldo que não Será Atendido.','E');

                 end;
              end;
           end;
        end;

        end
     else
        fMsgErro('Usuario Não Possui Acesso a Opcão.',nil);

     end
  else
     fmsgErro(GMensagem,Nil);   
end;

procedure TfmManRes.bImprimirClick(Sender: TObject);
var
modelo : TModelo;
EndTr3,sImprProd : string;
NomMrc,NumPro,DscPro : string;
TotEst,ValDup,PrMedio : real;
CodMrc,Tam,Coluna,CodEit : integer;
NomTra,EndTr1,EndTr2,sImprPed,DesRe2,ObsRes : string;
i     : Integer;
Found : Integer;
begin
  inherited;
  if PedResNumRes.Value > 0 then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManPed then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe um Pedido em Andamento.','E');

        fmManPed.WindowState := wsNormal;
        fmManPed.BringToFront;

        end
     else
        begin
  
        sImprPed := 'N';

        sImprProd := 'N';

        if fMsg('Confirma Impressão do Pedido ?','O') then sImprPed := 'S';

        if PedResAtuEst.Value = 'Sim' then
           if fMsg('Imprime via Deposito ?','O') then sImprProd := 'S';

        if (sImprPed = 'S') or (sImprProd = 'S') then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select ApeVen From FinVen Where CodVen = '''+IntToStr(PedResCodVen.Value)+'''';
                Open;

                NomVen := FieldbyName('ApeVen').AsString;

           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '''+IntToStr(PedResCodAtd.Value)+'''';
                Open;

                NomAtd := FieldbyName('ApeAtd').AsString;

           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Select FinCli.NomCli From FinCli'+
                        ' Where FinCli.CodCli = '''+IntToStr(PedResCodCli.Value)+'''';
                Open;

                NomCli := FieldbyName('NomCli').AsString;

           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Select FinTra.NomTra,'+
                        '        FinTra.TenTra,'+
                        '        FinTra.EndTra,'+
                        '        FinTra.NumTra,'+
                        '        FinTra.BaiTra,'+
                        '        FinTra.CidTra,'+
                        '        FinTra.SigUfe,'+
                        '        FinTra.CepTra,'+
                        '        FinTra.PrtTra,'+
                        '        FinTra.FonTra'+
                        ' From FinTra'+
                        ' Where FinTra.CodTra = '''+IntToStr(PedResCodTra.Value)+'''';
                Open;

                if Trim( quSql.FieldbyName('NomTra').AsString ) <> '' then begin

                   NomTra := quSql.FieldbyName('NomTra').AsString;

                   if Trim( FieldbyName('TenTra').AsString ) <> '' then
                      EndTr1 := Trim( FieldbyName('TenTra').AsString )+ ' ' +Trim( FieldbyName('EndTra').AsString )
                   else
                      EndTr1 := Trim( FieldbyName('EndTra').AsString );

                   if Trim( FieldbyName('NumTra').AsString ) <> '' then EndTr1 := EndTr1+ ', ' +Trim( FieldbyName('NumTra').AsString );

                   if Trim( FieldbyName('BaiTra').AsString ) <> '' then EndTr1 := EndTr1+ ' Bairro ' +Trim( FieldbyName('BaiTra').AsString );

                   EndTr2 := 'Cidade ' +Trim( quSql.FieldbyName('CidTra').AsString )+ ' UF ' +FieldbyName('SigUfe').AsString;

                   if Trim( FieldbyName('CepTra').AsString ) <> '' then EndTr2 := EndTr2+ ' Cep: ' +copy(FieldbyName('CepTra').AsString,1,5)+ '-' +copy(FieldbyName('CepTra').AsString,6,3);

                   EndTr3 := 'TeleFone '+ '(' +Trim( FieldbyName('PrtTra').AsString )+ ') ' +Trim( FieldbyName('FonTra').AsString );

                end;
           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Select PedRes.NomEnt,'+
                        '        PedRes.TenCli,'+
                        '        PedRes.EndCli,'+
                        '        PedRes.NumCli,'+
                        '        PedRes.BaiCli,'+
                        '        PedRes.CidCli,'+
                        '        PedRes.UfeCli,'+
                        '        PedRes.CepCli,'+
                        '        PedRes.ObsRes'+
                        ' From PedRes'+
                        ' Where PedRes.CodEmp = '''+ IntToStr(PedResCodEmp.Value)   +''''+
                        '   and PedRes.DteRes = '''+ fDateToSQL(PedResDteRes.Value) +''''+
                        '   and PedRes.NumRes = '''+ IntToStr(PedResNumres.Value)   +'''';
                Open;

                EndEn1 := Trim( FieldbyName('NomEnt').AsString );

                if Trim( FieldbyName('TenCli').AsString ) <> '' then
                   EndEn2 := Trim( FieldbyName('TenCli').AsString )+ ' ' +Trim( FieldbyName('EndCli').AsString )
                else
                   EndEn2 := Trim( FieldbyName('EndCli').AsString );

                if Trim( FieldbyName('NumCli').AsString ) <> '' then EndEn2 := EndEn2+ ', '+Trim( FieldbyName('NumCli').AsString );

                if Trim( FieldbyName('BaiCli').AsString ) <> '' then EndEn2 := EndEn2+ ' Bairro ' +Trim( FieldbyName('BaiCli').AsString );

                EndEn3 := 'Cidade ' +Trim( FieldbyName('CidCli').AsString )+ ' UF ' +FieldbyName('UfeCli').AsString;

                if Trim( FieldbyName('CepCli').AsString ) <> '' then EndEn3 := EndEn3 + ' Cep: ' +copy(FieldbyName('CepCli').AsString,1,5)+ '-' +copy(FieldbyName('CepCli').AsString,6,3);

                ObsRes := FieldbyName('ObsRes').AsString;
                
           end;
                
           CodEmp := PedResCodEmp.Value;

           if PedResLanEst.Value = 'Sim' then begin

              if PedResCodFil.Value > 0 then CodEmp := PedResCodFil.Value;

           end;

           if sImprPed = 'S' then
              sCabe := '1'
           else
              sCabe := '2';

           CodEit := PedResCodEmp.Value;

           if PedResLanEst.Value = 'Sim' then begin

              if PedResCodFil.Value > 0 then CodEit := PedResCodFil.Value

           end;

           rdprint1.OpcoesPreview.Preview     := True;
           rdprint1.OpcoesPreview.PreviewZoom := 100;
           rdprint1.TamanhoQteLPP             := seis;
           rdprint1.UsaGerenciadorImpr        := True;

           with quSQL,SQL do begin

                Close;
                Text := ' Select * From PedPar';
                Open;

                if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then
                   GFlgImp := FieldByName('FlgImp').AsString
                else
                   GFlgImp := 'Sim';

                GImpMrc := FieldByName('ImpMrc').AsString;
                GImpTra := FieldByName('ImpTra').AsString;
                GImpObs := FieldByName('ImpObs').AsString;
                GImpFin := FieldByName('ImpFin').AsString;

           end;
           
           if GFlgImp = 'Nao' then begin

              if GCodVen_Id > 0 then begin

                 rdprint1.OpcoesPreview.BotaoGravar   := Inativo;
                 rdprint1.OpcoesPreview.BotaoImprimir := Inativo;

              end;
           end;
           
           rdprint1.TamanhoQteColunas  := 136;
           rdprint1.FonteTamanhoPadrao := s17cpp;

           {Inicio...}
           with rdprint1 do begin

                abrir; {inicializa o arquivo de impressao...}

                if sImprPed = 'S' then begin

                   TotEst := 0;
                   
                   with quSQL,SQL do begin

                        Close;
                        Text := ' Select PedRe2.CodGru,'+
                                '        PedRe2.CodSub,'+
                                '        PedRe2.CodPro,'+
                                '        PedRe2.DesRe2,'+
                                '        PedRe2.ObsRe2,'+
                                '        PedRe2.QtpRe2,'+
                                '        PedRe2.VluRe2,'+
                                '        PedRe2.DscRe2,'+
                                '        PedRe2.DspRe2,'+
                                '        PedRe2.PacRe2,'+
                                '        PedRe2.VlqRe2,'+
                                '        PedRe2.TotRe2'+
                                ' From PedRe2'+
                                ' Where PedRe2.CodEmp = '''+ IntToStr(PedResCodEmp.Value)   +''''+
                                '   and PedRe2.DteRes = '''+ fDateToSQL(PedResDteRes.Value) +''''+
                                '   and PedRe2.NumRes = '''+ IntToStr(PedResNumRes.Value)   +''''+
                                ' Order by PedRe2.NroRe2';
                        Open;

                   end;

                   quSql.First;

                   while not quSQL.Eof do begin

                         imp(Linha,001,quSql.FieldbyName('CodGru').AsString+'.'+quSql.FieldbyName('CodSub').AsString+'.'+quSql.FieldbyName('CodPro').AsString);

                         DesRe2 := copy(Trim(quSql.FieldbyName('DesRe2').AsString),1,55);

                         imp(Linha,016,DesRe2);
                         imp(Linha,072,PreString(FormatFloat('###,##0.0000',quSql.FieldbyName('QtpRe2').AsFloat),12));
                         imp(Linha,085,PreString(FormatFloat('###,##0.0000',quSql.FieldbyName('VluRe2').AsFloat),12));
                         imp(Linha,099,PreString(FormatFloat('##0.00',fRound(quSql.FieldbyName('DscRe2').AsFloat + quSql.FieldbyName('DspRe2').AsFloat,2)),06));
                         imp(Linha,106,PreString(FormatFloat('##0.00',quSql.FieldbyName('PacRe2').AsFloat),06));
                         imp(Linha,113,PreString(FormatFloat('###,##0.0000',quSql.FieldbyName('VlqRe2').AsFloat),12));
                         imp(Linha,126,PreString(FormatFloat('#,###,##0.00',quSql.FieldbyName('TotRe2').AsFloat),12));

                         if Trim( quSQL.FieldbyName('ObsRe2').AsString ) <> '' then begin

                            Inc(Linha);

                            imp(Linha,016,Trim( quSql.FieldbyName('ObsRe2').AsString ));

                         end;

                         Linha := Linha + 1;

                         if Linha > 61 then rdprint1.novapagina;

                         quSQL.Next;

                   end;

                   imp(Linha,126,fReplicate('-',12));
                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   imp(Linha,100,'Total de Itens        :');
                   imp(Linha,126,PreString(FormatFloat('#,###,##0.00',PedResTotRes.Value),12));

                   Linha := Linha + 2;

                   if Linha > 61 then rdprint1.novapagina;

                   imp(Linha,100,'Total ICMS Substituto :');
                   imp(Linha,126,PreString(FormatFloat('#,###,##0.00',PedResTotSub.Value),12));

                   Linha := Linha + 2;

                   if Linha > 61 then rdprint1.novapagina;

                   imp(Linha,100,'Total de IPI          :');
                   imp(Linha,126,PreString(FormatFloat('#,###,##0.00',PedResTotIpi.Value),12));

                   Linha := Linha + 2;

                   if Linha > 61 then rdprint1.novapagina;

                   imp(Linha,100,'Total do Pedido       :');
                   imp(Linha,126,PreString(FormatFloat('#,###,##0.00',PedResTotGer.Value),12));

                   Linha := Linha + 2;

                   if Linha > 61 then rdprint1.novapagina;

                   if GGUs_Id = 1 then begin
                                    
                      imp(Linha,100,'Custo Total           :');
                      imp(Linha,126,PreString(FormatFloat('#,###,##0.00',PedResTotCst.Value),12));

                      Linha := Linha + 3;

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Acrescimos            :  '+PreString(FormatFloat('##0.00',PedResMedAcr.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',PedResTotAcr.Value),12),[NORMAL, NEGRITO]);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Descontos (Vendedor)  :  '+PreString(FormatFloat('##0.00',PedResMedDsc.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',PedResTotDsc.Value),12),[NORMAL, NEGRITO]);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Dsc. ICMS Obrigatorio :  '+PreString(FormatFloat('##0.00',PedResDscReg.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',PedResTotDsr.Value),12),[NORMAL, NEGRITO]);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Descontos (Gerencia)  :  '+PreString(FormatFloat('##0.00',PedResMedDco.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',PedResTotDco.Value),12),[NORMAL, NEGRITO]);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Desc. Promocional     :  '+PreString(FormatFloat('##0.00',PedResMedPrm.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',PedResTotDsp.Value),12),[NORMAL, NEGRITO]);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Total Comissao        :  '+PreString(FormatFloat('##0.00',PedResMedCom.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',PedResTotCom.Value),12),[NORMAL, NEGRITO]);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Margem                :  '+PreString(FormatFloat('##0.00',PedResTotRen.Value),6)+'(%) ',[NORMAL, NEGRITO]);
                      Inc(Linha);

                   end;

                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   if Trim( PedResSitRes.Value ) <> 'Aguardando Pagamento Antecipado' then begin

                      if (Trim( PedResSitRes.Value ) = 'Aguardando Liberacao do Depto Comercial')  or
                         (Trim( PedResSitRes.Value ) = 'Aguardando Liberacao do Depto Financeiro') then
                         impf(Linha,001,'Total de Itens        : '+PreString(IntToStr(PedResQtiRes.Value),08)+'        ******** SUJEITO A APROVACAO ********',[NORMAL, NEGRITO])
                      else
                         impf(Linha,001,'Total de Itens        : '+PreString(IntToStr(PedResQtiRes.Value),08),[NORMAL, NEGRITO]);

                      end
                   else
                      impf(Linha,001,'Total de Itens        : '+PreString(IntToStr(PedResQtiRes.Value),08)+'       ******** AGUARDANDO PAGAMENTO ********',[NORMAL, NEGRITO]);

                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,fReplicate('-',80),[NORMAL]);
                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'INFORMACOES ADICIONAIS:',[NORMAL, NEGRITO]);
                   Linha := Linha + 2;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Cond. de Pagto.:',[NORMAL, NEGRITO]);
                   impf(Linha,031,'Prazo',[NORMAL, NEGRITO]);
                   impf(Linha,042,'Valor Parcela',[NORMAL, NEGRITO]);
                   impf(Linha,072,'Prazo',[NORMAL, NEGRITO]);
                   impf(Linha,083,'Valor Parcela',[NORMAL, NEGRITO]);

                   Linha := Linha + 2;

                   if Linha > 61 then rdprint1.novapagina;

                   with quSQL,SQL do begin

                        Close;
                        Text := ' Select * From PedRe3'+
                                ' Where CodEmp = '''+ IntToStr(PedResCodEmp.Value) +''''+
                                '   and DteRes = '''+ fDateToSQL(PedResDteRes.Value) +''''+
                                '   and NumRes = '''+ IntToStr(PedResNumRes.Value) +''''+
                                ' Order by CodEmp,NumRes,SeqRe3';
                        Open;
                        First;

                   end;

                   Coluna  := 31;
                   PrMedio := 0;

                   while not quSQL.Eof do begin

                         impf(Linha,Coluna+00,PreString(IntToStr(quSql.FieldbyName('PraRe3').AsInteger),5),[NORMAL, NEGRITO]);
                         impf(Linha,Coluna+09,PreString(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpRe3').AsFloat),14),[NORMAL, NEGRITO]);

                         if coluna = 31 then
                            Coluna := Coluna + 41
                         else
                            begin

                            coluna := 31;

                            Linha := Linha + 1;

                         end;

                         PrMedio := PrMedio + quSql.FieldbyName('PraRe3').AsInteger;

                         quSql.Next;

                         if Linha > 61 then rdprint1.novapagina;

                   end;

                   Linha := Linha + 2;

                   if Linha > 61 then rdprint1.novapagina;

                   if PedResQtpRes.Value > 0 then
                      PrMedio := PrMedio / StrToFloat(IntToStr(PedResQtpRes.Value))
                   else
                      PrMedio := 0;

                   impf(Linha,001,'Prazo Medio : '+FormatFloat('##0.00',PrMedio)+' Dias',[NORMAL, NEGRITO]);

                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,fReplicate('-',80),[NORMAL]);

                   Linha := Linha + 2;

                   if Linha > 61 then rdprint1.novapagina;

                   if PedResCodTra.Value > 0 then begin

                      impf(Linha,001,'Transportadora : '+preString(IntToStr(PedResCodTra.Value),7)+' - '+NomTra,[NORMAL, NEGRITO]);
                      Linha := Linha + 1;

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'                 '+EndTr1,[NORMAL, NEGRITO]);
                      Linha := Linha + 1;

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'                 '+EndTr2,[NORMAL, NEGRITO]);
                      Linha := Linha + 1;

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'                 '+EndTr3,[NORMAL, NEGRITO]);

                      end
                   else
                      impf(Linha,001,'Transportadora : ',[NORMAL, NEGRITO]);

                   Linha := Linha + 2;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Observacoes    : ',[NORMAL,NEGRITO]);
                   impf(Linha,030,copy(ObsRes,001,040),[NORMAL]);

                   if Trim( copy(ObsRes,041,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,030,copy(ObsRes,041,040),[NORMAL]);

                   end;

                   if Trim( copy(ObsRes,081,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,030,copy(ObsRes,081,040),[NORMAL]);

                   end;

                   if Trim( copy(ObsRes,121,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,030,copy(ObsRes,121,040),[NORMAL]);

                   end;

                   if Trim( copy(ObsRes,161,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,030,copy(ObsRes,161,040),[NORMAL]);

                   end;

                   if Trim( copy(ObsRes,201,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,030,copy(ObsRes,201,040),[NORMAL]);

                   end;

                   Linha := Linha + 4;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Data : ___/___/_____ Nota : __________ Ass. CPD : ______________________________',[NORMAL, NEGRITO]);

                end;

                if sImprProd = 'S' then begin

                   sCabe := '2';

                   if sImprPed = 'S' then NovaPagina;

                   with quSQL,SQL do begin

                        Close;
                        Text := ' Select PedRe2.CodEmp,'+
                                '        PedRe2.CodClp,'+
                                '        PedRe2.CodGru,'+
                                '        PedRe2.CodSub,'+
                                '        PedRe2.CodPro,'+
                                '        PedRe2.CodUnd,'+
                                '        PedRe2.QtpRe2'+
                                ' From PedRe2,EstQte'+
                                ' Where PedRe2.CodEmp = :CodEmp'+
                                '   and PedRe2.DteRes = :DteRes'+
                                '   and PedRe2.NumRes = :NumRes'+
                                '   and EstQte.CodEmp = :CodEit'+
                                '   and EstQte.CodClp = PedRe2.CodClp'+
                                '   and EstQte.CodGru = PedRe2.CodGru'+
                                '   and EstQte.CodSub = PedRe2.CodSub'+
                                '   and EstQte.CodPro = PedRe2.CodPro'+
                                '   and EstQte.CodTam = PedRe2.CodTam'+
                                '   and EstQte.CodCor = PedRe2.CodCor'+
                                '   and (EstQte.QtdQte - (EstQte.QtrQte + EstQte.QtdRma)) >= 0'+
                                ' Order by PedRe2.CodGru,PedRe2.CodSub,PedRe2.CodPro';

                        with Params do begin

                             Params[0].AsInteger  := PedResCodEmp.Value;
                             Params[1].AsDateTime := PedResDteRes.Value;
                             Params[2].AsInteger  := PedResNumRes.Value;
                             Params[3].AsInteger  := CodEit;

                        end;

                        Open;

                   end;

                   quSql.First;

                   if quSQL.FieldbyName('CodEmp').AsInteger > 0 then begin

                      while not quSQL.Eof do begin

                            with quSQL1,SQL do begin

                                 Close;
                                 Text := ' Select EstPro.CodMrc,'+
                                         '        EstPro.NumPro,'+
                                         '        EstPro.DscPro'+
                                         ' From EstPro'+
                                         ' Where EstPro.CodClp = :CodClp'+
                                         '   and EstPro.CodGru = :CodGru'+
                                         '   and EstPro.CodSub = :CodSub'+
                                         '   and EstPro.CodPro = :CodPro';                                                                                  

                                 with Params do begin

                                      Params[0].AsString := quSql.FieldbyName('CodClp').AsString;
                                      Params[1].AsString := quSql.FieldbyName('CodGru').AsString;
                                      Params[2].AsString := quSql.FieldbyName('CodSub').AsString;
                                      Params[3].AsString := quSql.FieldbyName('CodPro').AsString;

                                 end;

                                 Open;

                                 NumPro := FieldbyName('NumPro').AsString;
                                 DscPro := FieldbyName('DscPro').AsString;
                                 CodMrc := FieldbyName('CodMrc').AsInteger;

                            end;

                            with quSQL1,SQL do begin

                                 Close;
                                 Text := ' Select EstMrc.NomMrc From EstMrc Where EstMrc.CodMrc = :CodMrc';

                                 with Params do begin

                                      Params[0].AsInteger := CodMrc;

                                 end;

                                 Open;

                                 NomMrc := FieldbyName('NomMrc').AsString;

                            end;

                            impf(Linha,001,quSql.FieldbyName('CodGru').AsString+'.'+quSql.FieldbyName('CodSub').AsString+'.'+quSql.FieldbyName('CodPro').AsString,[NORMAL]);

                            impf(Linha,027,copy(Trim( DscPro ),1,40),[NORMAL]);

                            if fEncDecimal(quSql.FieldbyName('QtpRe2').AsFloat) > 0 then
                               impf(Linha,097,Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('QtpRe2').AsFloat),12),[NORMAL])
                            else
                               impf(Linha,097,Prestring(FormatFloat('####,###,##0',quSql.FieldbyName('QtpRe2').AsFloat),12),[NORMAL]);

                            impf(Linha,118,'________',[NORMAL]);

                            impf(Linha,134,Trim(quSQL.FieldbyName('CodUnd').AsString),[NORMAL]);

                            Inc(Linha);

                            if Trim(GImpMrc) = 'Sim' then begin
                            
                               if Trim( NomMrc ) <> '' then begin

                                  if Trim( NumPro ) <> '' then
                                     impf(Linha,027,Trim( NomMrc )+' - '+Trim( NumPro ),[NORMAL])
                                  else
                                     impf(Linha,027,Trim( NomMrc ),[NORMAL]);

                                  end
                               else
                                  begin

                                  if Trim( NumPro ) <> '' then impf(Linha,027,Trim( NumPro ),[NORMAL]);

                               end;

                               Inc(Linha);

                            end;
                            
                            quSQL.Next;

                            if not quSQL.EOF then begin
                            
                               if Trim(GImpTra) = 'Sim' then begin

                                  impf(Linha,027,'-----------------------------------------------------',[NORMAL]);

                                  Inc(Linha);

                               end;
                            end;

                            if Linha > 61 then rdprint1.novapagina;

                      end;

                      Inc(Linha);

                   end;

                   with quSQL,SQL do begin

                        Close;
                        Text := ' Select PedRe2.CodEmp,'+
                                '        PedRe2.CodClp,'+
                                '        PedRe2.CodGru,'+
                                '        PedRe2.CodSub,'+
                                '        PedRe2.CodPro,'+
                                '        PedRe2.CodUnd,'+
                                '        PedRe2.QtpRe2'+
                                ' From PedRe2,EstQte'+
                                ' Where PedRe2.CodEmp = :CodEmp'+
                                '   and PedRe2.DteRes = :DteRes'+
                                '   and PedRe2.NumRes = :NumRes'+
                                '   and EstQte.CodEmp = :CodEit'+
                                '   and EstQte.CodClp = PedRe2.CodClp'+
                                '   and EstQte.CodGru = PedRe2.CodGru'+
                                '   and EstQte.CodSub = PedRe2.CodSub'+
                                '   and EstQte.CodPro = PedRe2.CodPro'+
                                '   and EstQte.CodTam = PedRe2.CodTam'+
                                '   and EstQte.CodCor = PedRe2.CodCor'+
                                '   and (EstQte.QtdQte - (EstQte.QtrQte + EstQte.QtdRma)) < 0'+
                                ' Order by PedRe2.CodGru,PedRe2.CodSub,PedRe2.CodPro';

                        with Params do begin

                             Params[0].AsInteger  := PedResCodEmp.Value;
                             Params[1].AsDateTime := PedResDteRes.Value;
                             Params[2].AsInteger  := PedResNumRes.Value;
                             Params[3].AsInteger  := CodEit;

                        end;

                        Open;

                   end;

                   quSql.First;

                   if quSQL.FieldbyName('CodEmp').AsInteger > 0 then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      rdprint1.impf(Linha,001,fReplicate('-',80),[NORMAL]);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      rdprint1.impf(Linha,001,'Produtos Abaixo do Estoque Disponivel',[NORMAL,NEGRITO]);
                      Inc(Linha);

                      rdprint1.impf(Linha,001,fReplicate('-',80),[NORMAL]);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      while not quSQL.Eof do begin

                            with quSQL1,SQL do begin

                                 Close;
                                 Text := ' Select EstPro.CodMrc,'+
                                         '        EstPro.NumPro,'+
                                         '        EstPro.DscPro'+
                                         ' From EstPro'+
                                         ' Where EstPro.CodClp = :CodClp'+
                                         '   and EstPro.CodGru = :CodGru'+
                                         '   and EstPro.CodSub = :CodSub'+
                                         '   and EstPro.CodPro = :CodPro';

                                 with Params do begin

                                      Params[0].AsString := quSql.FieldbyName('CodClp').AsString;
                                      Params[1].AsString := quSql.FieldbyName('CodGru').AsString;
                                      Params[2].AsString := quSql.FieldbyName('CodSub').AsString;
                                      Params[3].AsString := quSql.FieldbyName('CodPro').AsString;

                                 end;

                                 Open;

                                 NumPro := FieldbyName('NumPro').AsString;
                                 DscPro := FieldbyName('DscPro').AsString;
                                 CodMrc := FieldbyName('CodMrc').AsInteger;

                            end;

                            with quSQL1,SQL do begin

                                 Close;
                                 Text := ' Select EstMrc.NomMrc From EstMrc Where EstMrc.CodMrc = :CodMrc';

                                 with Params do begin

                                      Params[0].AsInteger := CodMrc;

                                 end;

                                 Open;

                                 NomMrc := FieldbyName('NomMrc').AsString;

                            end;

                            impf(Linha,001,quSql.FieldbyName('CodGru').AsString+'.'+quSql.FieldbyName('CodSub').AsString+'.'+quSql.FieldbyName('CodPro').AsString,[NORMAL]);

                            impf(Linha,027,copy(Trim( DscPro ),1,40),[NORMAL]);

                            if fEncDecimal(quSql.FieldbyName('QtpRe2').AsFloat) > 0 then
                               impf(Linha,097,Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('QtpRe2').AsFloat),12),[NORMAL])
                            else
                               impf(Linha,097,Prestring(FormatFloat('####,###,##0',quSql.FieldbyName('QtpRe2').AsFloat),12),[NORMAL]);

                            impf(Linha,118,'________',[NORMAL]);

                            impf(Linha,134,Trim(quSQL.FieldbyName('CodUnd').AsString),[NORMAL]);

                            Inc(Linha);

                            if Trim(GImpMrc) = 'Sim' then begin
                            
                               if Trim( NomMrc ) <> '' then begin

                                  if Trim( NumPro ) <> '' then
                                     impf(Linha,027,Trim( NomMrc )+' - '+Trim( NumPro ),[NORMAL])
                                  else
                                     impf(Linha,027,Trim( NomMrc ),[NORMAL]);

                                  end
                               else
                                  begin

                                  if Trim( NumPro ) <> '' then impf(Linha,027,Trim( NumPro ),[NORMAL]);

                               end;

                               Inc(Linha);

                            end;
                            
                            quSQL.Next;

                            if not quSQL.EOF then begin
                            
                               if Trim(GImpTra) = 'Sim' then begin

                                  impf(Linha,027,'-----------------------------------------------------',[NORMAL]);

                                  Inc(Linha);

                               end;
                            end;

                            if Linha > 61 then rdprint1.novapagina;

                      end;
                   end;

                   Inc(Linha);
                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Total de Itens : '+PreString(IntToStr(PedResQtiRes.Value),08),[NORMAL, NEGRITO]);

                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   rdprint1.impf(Linha,001,fReplicate('-',80),[NORMAL]);

                   Inc(Linha);
                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'INFORMACOES ADICIONAIS:',[NORMAL, NEGRITO]);

                   if Trim(GImpFin) = 'Sim' then begin

                      Inc(Linha);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Cond. de Pagto.:',[NORMAL, NEGRITO]);
                      impf(Linha,031,'Prazo',[NORMAL, NEGRITO]);
                      impf(Linha,042,'Valor Parcela',[NORMAL, NEGRITO]);
                      impf(Linha,072,'Prazo',[NORMAL, NEGRITO]);
                      impf(Linha,083,'Valor Parcela',[NORMAL, NEGRITO]);

                      Inc(Linha);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      with quSQL,SQL do begin

                           Close;
                           Text := ' Select * From PedRe3'+
                                   ' Where PedRe3.CodEmp = '''+ IntToStr(PedResCodEmp.Value) +''''+
                                   '   and PedRe3.DteRes = '''+ fDateToSQL(PedResDteRes.Value) +''''+
                                   '   and PedRe3.NumRes = '''+ IntToStr(PedResNumRes.Value) +''''+
                                   ' Order by PedRe3.SeqRe3';
                           Open;
                           First;

                      end;

                      Coluna  := 31;
                      PraMed := 0;

                      while not quSQL.Eof do begin

                            impf(Linha,Coluna+00,PreString(IntToStr(quSql.FieldbyName('PraRe3').AsInteger),5),[NORMAL, NEGRITO]);
                            impf(Linha,Coluna+09,PreString(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpRe3').AsFloat),14),[NORMAL, NEGRITO]);

                            if coluna = 31 then
                               Coluna := Coluna + 41
                            else
                               begin

                               coluna := 31;

                               Inc(Linha);

                            end;

                            PraMed := PraMed + quSql.FieldbyName('PraRe3').AsInteger;

                            quSql.Next;

                            if Linha > 61 then rdprint1.novapagina;

                      end;

                      Inc(Linha);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      if PedResQtpRes.Value > 0 then
                         PraMed := PraMed / StrToFloat(IntToStr(PedResQtpRes.Value))
                      else
                         PraMed := 0;

                      impf(Linha,001,'Prazo Medio : '+FormatFloat('##0.00',PraMed)+' Dias',[NORMAL, NEGRITO]);

                   end;

                   Inc(Linha);
                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   if PedResCodTra.Value > 0 then begin

                      impf(Linha,001,'Transportadora : '+preString(IntToStr(PedResCodTra.Value),7)+' - '+NomTra,[NORMAL, NEGRITO]);
                      Linha := Linha + 1;

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'                 '+EndTr1,[NORMAL, NEGRITO]);
                      Linha := Linha + 1;

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'                 '+EndTr2,[NORMAL, NEGRITO]);
                      Linha := Linha + 1;

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'                 '+EndTr3,[NORMAL, NEGRITO]);

                      end
                   else
                      impf(Linha,001,'Transportadora : ',[NORMAL, NEGRITO]);
                      
                   Inc(Linha);
                   Inc(Linha);

                   if Trim(GImpObs) = 'Sim' then begin

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Observacoes    : ',[NORMAL,NEGRITO]);
                      impf(Linha,030,copy(ObsRes,001,040),[NORMAL]);

                      if Trim( copy(ObsRes,041,040) ) <> '' then begin

                         Inc(Linha);

                         if Linha > 61 then rdprint1.novapagina;

                         impf(Linha,030,copy(ObsRes,041,040),[NORMAL]);

                      end;

                      if Trim( copy(ObsRes,081,040) ) <> '' then begin

                         Inc(Linha);

                         if Linha > 61 then rdprint1.novapagina;

                         impf(Linha,030,copy(ObsRes,081,040),[NORMAL]);

                      end;

                      if Trim( copy(ObsRes,121,040) ) <> '' then begin

                         Inc(Linha);

                         if Linha > 61 then rdprint1.novapagina;

                         impf(Linha,030,copy(ObsRes,121,040),[NORMAL]);

                      end;

                      if Trim( copy(ObsRes,161,040) ) <> '' then begin

                         Inc(Linha);

                         if Linha > 61 then rdprint1.novapagina;

                         impf(Linha,030,copy(ObsRes,161,040),[NORMAL]);

                      end;

                      if Trim( copy(ObsRes,201,040) ) <> '' then begin

                         Inc(Linha);

                         if Linha > 61 then rdprint1.novapagina;

                         impf(Linha,030,copy(ObsRes,201,040),[NORMAL]);

                      end;

                      Inc(Linha);
                      Inc(Linha);

                   end;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Separado Por   : ______________________ Conferido Por : ______________________',[NORMAL, NEGRITO]);

                end;

                Fechar;  {Finaliza e inicia impressao ou preview}

           end;
        end;
     end;
  end;
end;

procedure TfmManRes.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     if (GCodVen_Id = 0) or (GGus_Id = 1) then begin

        EdPsqCodVen.Clear;
        EdPsqNomVen.Clear;

     end;

     EdPsqNumRes.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;

     EdPsqDteRes1.Clear;
     EdPsqDteRes2.Clear;
     EdPsqDtfRes1.Clear;
     EdPsqDtfRes2.Clear;

     EdPsqTotRes1.Value := 0;
     EdPsqTotRes2.Value := 0;

     EdPsqSitRes.Text := 'Todos';
     EdPsqFlgImp.Text := 'Todos';

  end;
end;

procedure TfmManRes.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmManRes.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManRes.bPsqEmpClick(Sender: TObject);
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

procedure TfmManRes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) then begin

     if key = #1 then begin {Analise de Pedido}

        try

           fmPsqCpd := TfmPsqCpd.Create(Self);

           fmPsqCpd.PedRe2.Close;
           fmPsqCpd.PedRe2.Params[0].AsInteger  := PedResCodEmp.Value;
           fmPsqCpd.PedRe2.Params[1].AsDateTime := PedResDteRes.Value;
           fmPsqCpd.PedRe2.Params[2].AsInteger  := PedResNumRes.Value;
           fmPsqCpd.PedRe2.Open;

           fmPsqCpd.ShowModal;

        finally

           FreeAndNil(fmPsqCpd);

        end;
     end;
  end;

  if key = #16 then begin {Historico do Pedido}

     if PedResCodEmp.Value > 0 then begin
     
        try

           fmPsqHre := TfmPsqHre.Create(Self);

           fmPsqHre.PedLog.Close;
           fmPsqHre.PedLog.Params[0].AsInteger  := PedResCodEmp.Value;
           fmPsqHre.PedLog.Params[1].AsDateTime := PedResDteRes.Value;
           fmPsqHre.PedLog.Params[2].AsInteger  := PedResNumRes.Value;
           fmPsqHre.PedLog.Open;

           fmPsqHre.ShowModal;

        finally

           FreeAndNil(fmPsqHre);

        end;
     end;   
  end;

  if key = #5 then begin {Estoque}

     with quSQL,SQL do begin

          Close;
          Text := ' Select FLGCOD From PedPar';
          Open;

          GFLGCOD := FieldbyName('FLGCOD').AsString;

     end;

     try

        fmPsqEst := TfmPsqEst.Create(Self);

        fmPsqEst.FlgCod := GFLGCOD;
        
        fmPsqEst.sEntr := 'N';

        fmPsqEst.sCodClp := '1';

        fmPsqEst.ShowModal;

     finally

        FreeAndNil(fmPsqEst);

     end;
  end;
end;

procedure TfmManRes.grRe2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then begin

     with (Sender as ThGrid).Canvas do begin

          Font.Color := clWhite;

          FillRect(Rect);

     end;

     end
  else
     begin

     if ((PedRe2.FieldbyName('FlgVal').AsString = 'Sim') or (PedRe2.FieldbyName('FlgPac').AsString = 'Sim')) and (PedRe2.FieldbyName('FlgLib').AsString = 'Nao') then begin

        with (Sender as ThGrid).Canvas do begin

             Font.Color := clRed;

             FillRect(Rect);

        end;
     end;
  end;

  (Sender as ThGrid).DefaultDrawDataCell(Rect, Field, State);

end;

procedure TfmManRes.PedRe2DSCPROGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Trim( PedRe2CodGru.Value ) <> '' then Text := PedRe2CodGru.Value+ '.' +PedRe2CodSub.Value+ '.' +PedRe2CodPro.Value;
end;

procedure TfmManRes.FormClose(Sender: TObject; var Action: TCloseAction);
var
i     : Integer;
Found : integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManPed then Found := i;

  end;

  if Found >= 0 then
     fmsgErro('Existem Pedidos em Andamento. Por Favor Feche o Formulario.',Nil)
  else
     Action := CaFree;

end;

procedure TfmManRes.RDprint1NewPage(Sender: TObject; Pagina: Integer);
begin
  inherited;
  
  Linha := 1;

  if sCabe = '1' then begin

     rdprint1.impf(Linha,001,'GERENCIA (PD)',[EXPANDIDO, NORMAL]);

     Inc(Linha);

     if PedResPedAnt.Value = 'Nao' then
        rdprint1.impf(Linha,001,'Entregar em '+DateToStr(PedResDtfRes.Value),[EXPANDIDO, NORMAL])
     else
        rdprint1.impf(Linha,001,'Entregar em '+DateToStr(PedResDtfRes.Value)+ ' - ANTECIPADO',[EXPANDIDO, NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,fReplicate('-',80),[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'Pedido       : '+preString(IntToStr(PedResNumRes.Value),7),[NORMAL, NEGRITO]);
     rdprint1.impf(Linha,075,'Data : '+DateToStr(PedResDteRes.Value),[NORMAL]);
     rdprint1.impf(Linha,111,'Hora : '+PedResHreRes.Value,[NORMAL]);

     Inc(Linha);
     
     rdprint1.impf(Linha,001,'Vendedor     : '+preString(IntToStr(PedResCodVen.Value),7)+' - '+NomVen,[NORMAL]);

     Inc(Linha);
     
     if PedResCodAtd.Value > 0 then begin

        rdprint1.impf(Linha,001,'Atendente    : '+preString(IntToStr(PedResCodAtd.Value),7)+' - '+NomAtd,[NORMAL]);

        Inc(Linha);

     end;

     rdprint1.impf(Linha,001,'Cliente      : '+preString(IntToStr(PedResCodCli.Value),7)+' - '+copy(NomCli,1,40),[NORMAL, NEGRITO]);
     rdprint1.impf(Linha,120,PedResUfeRes.Value,[EXPANDIDO, NORMAL]);

     Inc(Linha);
     
     rdprint1.impf(Linha,001,'Entrega      : '+EndEn1,[NORMAL]);

     Inc(Linha);
     
     rdprint1.impf(Linha,001,'               '+EndEn2,[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'               '+EndEn3,[NORMAL]);

     Inc(Linha);

     if Trim( PedResCgcCli.Value ) <> '' then begin

        if Length( Trim(PedResCgcCli.Value) ) > 11 then
           rdprint1.impf(Linha,001,'CNPJ         : '+fFormatCgcCpf(PedResCgcCli.Value),[NORMAL, NEGRITO])
        else
           rdprint1.impf(Linha,001,'CPF          : '+fFormatCgcCpf(PedResCgcCli.Value),[NORMAL, NEGRITO]);

        end
     else
        rdprint1.impf(Linha,001,'CNPJ/CPF     : ',[NORMAL, NEGRITO]);

     rdprint1.impf(Linha,114,'Pagina No. '+fNumZeros(IntToStr(Pagina),3),[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,fReplicate('-',80),[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'Nosso Codigo',[comp17]);
     rdprint1.imp(Linha,016,'Descricao');
     rdprint1.imp(Linha,078,'Quant');
     rdprint1.imp(Linha,086,'Preco Bruto');
     rdprint1.imp(Linha,099,'% Desc');
     rdprint1.imp(Linha,106,'% Acrs');
     rdprint1.imp(Linha,116,'Preco Liq');
     rdprint1.imp(Linha,128,'Total Item');

     Inc(Linha);

     rdprint1.imp(Linha,001,fReplicate('-',14));
     rdprint1.imp(Linha,016,fReplicate('-',55));
     rdprint1.imp(Linha,072,fReplicate('-',12));
     rdprint1.imp(Linha,085,fReplicate('-',12));
     rdprint1.imp(Linha,099,fReplicate('-',06));
     rdprint1.imp(Linha,106,fReplicate('-',06));
     rdprint1.imp(Linha,113,fReplicate('-',12));
     rdprint1.imp(Linha,126,fReplicate('-',12));

     Inc(Linha);
     
     end
  else
     begin

     rdprint1.impf(Linha,001,'DEPOSITO',[EXPANDIDO, NORMAL]);

     Inc(Linha);

     if PedResPedAnt.Value = 'Nao' then
        rdprint1.impf(Linha,001,'Entregar em '+DateToStr(PedResDtfRes.Value),[EXPANDIDO, NORMAL])
     else
        rdprint1.impf(Linha,001,'Entregar em '+DateToStr(PedResDtfRes.Value)+ ' - ANTECIPADO',[EXPANDIDO, NORMAL]);

     rdprint1.impf(Linha,114,'Pagina No. '+fNumZeros(IntToStr(Pagina),3),[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,fReplicate('-',80),[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'Pedido       : '+preString(IntToStr(PedResNumRes.Value),7),[NORMAL, NEGRITO]);
     rdprint1.impf(Linha,075,'Data : '+DateToStr(PedResDteRes.Value),[NORMAL]);
     rdprint1.impf(Linha,111,'Hora : '+PedResHreRes.Value,[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'Vendedor     : '+preString(IntToStr(PedResCodVen.Value),7)+' - '+NomVen,[NORMAL]);

     Inc(Linha);

     if PedResCodAtd.Value > 0 then begin

        rdprint1.impf(Linha,001,'Atendente    : '+preString(IntToStr(PedResCodAtd.Value),7)+' - '+NomAtd,[NORMAL]);

        Inc(Linha);

     end;

     rdprint1.impf(Linha,001,'Cliente      : '+preString(IntToStr(PedResCodCli.Value),7)+' - '+copy(NomCli,1,40),[NORMAL, NEGRITO]);
     rdprint1.impf(Linha,120,PedResUfeRes.Value,[EXPANDIDO, NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'Entrega      : '+EndEn1,[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'               '+EndEn2,[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'               '+EndEn3,[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,fReplicate('-',80),[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'Nosso Codigo',[NORMAL]);
     rdprint1.impf(Linha,027,'Descricao',[NORMAL]);
     rdprint1.impf(Linha,109,'Quant',[NORMAL]);
     rdprint1.impf(Linha,119,'Separado',[NORMAL]);
     rdprint1.impf(Linha,134,'UN',[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,fReplicate('-',14),[NORMAL]);
     rdprint1.impf(Linha,027,fReplicate('-',40),[NORMAL]);
     rdprint1.impf(Linha,097,fReplicate('-',12),[NORMAL]);
     rdprint1.impf(Linha,118,fReplicate('-',09),[NORMAL]);
     rdprint1.impf(Linha,134,fReplicate('-',02),[NORMAL]);

     Inc(Linha);

  end;
end;

procedure TfmManRes.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManRes := nil;
end;

procedure TfmManRes.bPsqAtdClick(Sender: TObject);
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

procedure TfmManRes.EdPsqCodAtdExit(Sender: TObject);
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

procedure TfmManRes.EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManRes.DsResDataChange(Sender: TObject; Field: TField);
var
sText : string;
begin
  inherited;

  if pnTotRen.Visible then pnTotRen.Caption := FormatFloat('###,###,##0.00',PedResTotRen.Value)+' %';

  if (PedResSitRes.Value = 'Faturado') or
     (PedResSitRes.Value = 'Pronto para Faturar') or  
     (PedResSitRes.Value = 'Parcialmente Faturado') or
     (PedResSitRes.Value = 'Faturado com Saldo nao Atendido') then begin

     if not Label23.Visible then Label23.Visible := True;

     end
  else
     begin

     if Label23.Visible then Label23.Visible := False;

  end;

  if PedResCodEmp.Value > 0 then begin

     if PedResFlgImp.Value = 'Nao' then begin

        pnFlgImp.Caption := 'Não Impresso';

        pnFlgImp.Color := clLime;

        pnFlgImp.Font.Color := clBlack;

        end
     else
        begin

        pnFlgImp.Caption := 'Impresso';

        pnFlgImp.Color := clRed;

        pnFlgImp.Font.Color := clWhite;

     end;

     end
  else
     pnFlgImp.Caption := '';

  if PedResCodEmp.Value > 0 then
     pnDtfRes.Caption := ' Programado para ' + DateToStr(PedResDtfRes.Value)
  else
     pnDtfRes.Caption := ' Programado para ';

  if PedResCodAtd.Value > 0 then
     grRes.Hint := ' Atendente : ' + PedResApeAtd.Value
  else
     grRes.Hint := '';
     
  if PedResCodCli.Value > 0 then
     pnNomCli.Caption := ' Cliente : ' + PedResNomCli.Value
  else
     pnNomCli.Caption := ' Cliente : ';

  if PedResCodVen.Value > 0 then
     pnApeVen.Caption := ' Vendedor : ' + PedResApeVen.Value
  else
     pnApeVen.Caption := ' Vendedor : ';

  if (PedResUsuRej.Value = 0) and (PedResSitRes.Value <> 'Rejeitado') then begin

     if PedResSitRes.Value = 'Cancelado' then sText := 'F10 -';

     if PedResSitRes.Value = 'Faturado com Saldo nao Atendido' then sText := 'F10 -';

     if Trim( sText ) <> '' then
        pnSitRes.Caption := sText + ' ' + PedResSitRes.Value
     else
        pnSitRes.Caption := PedResSitRes.Value;

     end
  else
     pnSitRes.Caption := 'F10 - Rejeitado';

  if PedResCodEmp.Value > 0 then begin

     if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) or (GFlgGer = 'Sim') then begin

        if PedResCodTip.Value = 1 then begin

           pnSitRes.Color := clRed;

           pnSitRes.Font.Color := clWhite;

           end
        else
           begin

           pnSitRes.Color := clLime;

           pnSitRes.Font.Color := clBlack;

        end;
     end;

     end
  else
     begin

     pnSitRes.Color := clRed;

     pnSitRes.Font.Color := clWhite;
     
  end;

  if PedResCodEmp.Value > 0 then
     pnDteRes.Caption := ' Emitido Em '+ DateToStr(PedResDteRes.Value)
  else
     pnDteRes.Caption := ' Emitido Em ';

end;

procedure TfmManRes.DsRe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if pnTotMka.Visible then pnTotMka.Caption := 'Markup do Item '+FormatFloat('###,###,##0.00',PedRe2TotRen.Value)+' %';
end;

end.
