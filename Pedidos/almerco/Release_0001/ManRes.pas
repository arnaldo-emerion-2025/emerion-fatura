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
    EdPsqId_PedRes: TdxColorEdit;
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
    EdPsqApeVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    Label10: TLabel;
    Bevel1: TBevel;
    quSql: TwwQuery;
    bExcluir: TSpeedButton;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
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
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2TOTREN: TFloatField;
    PedRe2FLGVAL: TStringField;
    PedRe2FLGLIB: TStringField;
    Label1: TLabel;
    EdPsqSitRes: TdxColorPickEdit;
    Label2: TLabel;
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
    quSQL1: TwwQuery;
    PedResID_PEDRES: TIntegerField;
    PedRe2ID_PEDRE2: TIntegerField;
    PedRe2ID_PEDRES: TIntegerField;
    PedParFLGIMP: TStringField;
    PedParTIPATD: TStringField;
    PedParEXIREN: TStringField;
    Label5: TLabel;
    EdPsqCodAtd: TdxColorEdit;
    bPsqAtd: TSpeedButton;
    EdPsqNomAtd: TdxColorEdit;
    PedRe2CODCLP: TStringField;
    PedResDTERES: TDateTimeField;
    PedResHRERES: TStringField;
    PedResDTFRES: TDateTimeField;
    PedResFLGEST: TStringField;
    PedResSITRES: TStringField;
    PedResNOMCLI: TStringField;
    PedResAPEVEN: TStringField;
    PedResAPEATD: TStringField;
    PedResFLGREJ: TStringField;
    PedResFLGOCO: TStringField;
    PedResTOTREN: TFloatField;
    PedResFLGIMP: TStringField;
    PedResCODTIP: TIntegerField;
    PedResCODEAN: TStringField;
    PedParUSADEC: TStringField;
    PedResFLGATU: TStringField;
    PedResQTIRE4: TIntegerField;
    PedParFLGCOT: TStringField;
    PedRe2FLGMAR: TStringField;
    PedRe2CODITE: TStringField;
    Panel5: TPanel;
    pnTotRes: TPanel;
    Panel1: TPanel;
    pnTotFat: TPanel;
    Panel3: TPanel;
    pnQtdRes: TPanel;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqId_PedResExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure DsRe2DataChange(Sender: TObject; Field: TField);
    procedure bPsqAtdClick(Sender: TObject);
    procedure EdPsqCodAtdExit(Sender: TObject);
    procedure EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Permissao : string;
    {Private declarations}
  public
    {Public declarations}
    Id_PedRes : integer;
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManRes: TfmManRes;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, Bbacesso, ManGDB, PsqEmp,
     ManPri, AuxPsq, ManPed, PsqRej, PsqOco, ManCpe, PsqCpe, PsqMfp, AuxIni,
     PsqEst, PsqCpd, PsqHre, ManE04, ManE05, ImpF02, psqfat, PsqLib, PsqEs2;

{$R *.DFM}

procedure TfmManRes.FormCreate(Sender: TObject);
begin
  inherited;

  if Trim(PedParTipAtd.Value) = 'Vendedor' then
     sBase := ' Select PedRes.Id_PedRes,'+
              '        PedRes.DteRes,'+
              '        PedRes.HreRes,'+
              '        PedRes.DtfRes,'+
              '        PedRes.CodTip,'+
              '        PedRes.CodCli,'+
              '        PedRes.CodVen,'+
              '        PedRes.CodAtd,'+
              '        PedRes.CodPfa,'+
              '        PedRes.CodEan,'+
              '        PedRes.TotRes,'+
              '        PedRes.TotRen,'+
              '        PedRes.TotGer,'+
              '        PedRes.FatGer,'+
              '        PedRes.DevGer,'+
              '        PedRes.SldGer,'+
              '        PedRes.FlgImp,'+
              '        PedRes.FlgOco,'+
              '        PedRes.FlgRej,'+
              '        PedRes.FlgEst,'+
              '        PedRes.FlgAtu,'+
              '        PedRes.QtiRe4,'+
              '        PedRes.SitRes,'+
              '        FinCli.NomCli,'+
              '        FinVen.ApeVen,'+
              '        (Select ApeVen From FinVen Where FinVen.CodVen = PedRes.CodAtd) as ApeAtd'+
              ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
              '             LEFT JOIN FinVen ON (PedRes.CodVen = FinVen.CodVen)'
  else
     sBase := ' Select PedRes.Id_PedRes,'+
              '        PedRes.DteRes,'+
              '        PedRes.HreRes,'+
              '        PedRes.DtfRes,'+
              '        PedRes.CodTip,'+
              '        PedRes.CodCli,'+
              '        PedRes.CodVen,'+
              '        PedRes.CodAtd,'+
              '        PedRes.CodPfa,'+
              '        PedRes.CodEan,'+
              '        PedRes.TotRes,'+
              '        PedRes.TotRen,'+
              '        PedRes.TotGer,'+
              '        PedRes.FatGer,'+
              '        PedRes.DevGer,'+
              '        PedRes.SldGer,'+
              '        PedRes.FlgImp,'+
              '        PedRes.FlgOco,'+
              '        PedRes.FlgRej,'+
              '        PedRes.FlgEst,'+
              '        PedRes.FlgAtu,'+
              '        PedRes.QtiRe4,'+
              '        PedRes.SitRes,'+
              '        FinCli.NomCli,'+
              '        FinVen.ApeVen,'+
              '        FinAtd.ApeAtd '+
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
          Text := ' Select FLGDEL,SEQIMP From GerPar';
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

  sOrdem := ' Order by PedRes.Id_PedRes';

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

  if Trim( EdPsqId_PedRes.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.Id_PedRes = '+ QuotedStr(EdPsqId_PedRes.Text)
     else
        sFiltro := ' Where PedRes.Id_PedRes = '+ QuotedStr(EdPsqId_PedRes.Text);

  end;

  if Trim( EdPsqCodCli.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.CodCli = '+ QuotedStr(EdPsqCodCli.Text)
     else
        sFiltro := ' Where PedRes.CodCli = '+ QuotedStr(EdPsqCodCli.Text);

  end;

  if GCodVen_Id > 0 then begin

     if Trim( EdPsqCodVen.Text ) <> '' then begin

        if Trim( EdPsqCodAtd.Text ) <> '' then begin

           if pos('Where', sFiltro) > 0 then
              sFiltro := sFiltro + ' and ( PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text) +' or PedRes.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text) +' )'
           else
              sFiltro := ' Where ( PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text) +' or PedRes.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text) +' )';

           end
        else
           begin

           if pos('Where', sFiltro) > 0 then
              sFiltro := sFiltro + ' and PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text)
           else
              sFiltro := ' Where PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

        end;

        end
     else
        begin

        if Trim( EdPsqCodAtd.Text ) <> '' then begin

           if pos('Where', sFiltro) > 0 then
              sFiltro := sFiltro + ' and PedRes.CodAtd = '+ QuotedStr(EdPsqCodVen.Text)
           else
              sFiltro := ' Where PedRes.CodAtd = '+ QuotedStr(EdPsqCodVen.Text);

        end;
     end;

     end
  else
     begin

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
           sFiltro := sFiltro + ' and Exists(Select * From PedLib Where PedLib.Id_PedRes = PedRes.Id_PedRes and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDtfRes1.Date)) +' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDtfRes2.Date)) +' )'
        else
           sFiltro := '  Where Exists(Select * From PedLib Where PedLib.Id_PedRes = PedRes.Id_PedRes and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDtfRes1.Date)) +' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDtfRes2.Date)) +' )';

        end
     else
        begin

        if pos('Where', sFiltro) > 0 then
           sFiltro := sFiltro + ' and Exists (Select * From PedLib Where PedLib.Id_PedRes = PedRes.Id_PedRes and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDtfRes1.Date)) +' )'
        else
           sFiltro := ' Where Exists (Select * From PedLib Where PedLib.Id_PedRes = PedRes.Id_PedRes and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDtfRes1.Date)) +' )';

     end;

     end
  else
     begin

     if Trim(fLimpaStr(EdPsqDtfRes2.Text)) <> '' then begin

        if pos('Where', sFiltro) > 0 then
           sFiltro := sFiltro + ' and Exists (Select * From PedLib Where PedLib.Id_PedRes = PedRes.Id_PedRes and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDtfRes2.Date)) +' )'
        else
           sFiltro := ' Where Exists (Select * From PedLib Where PedLib.Id_PedRes = PedRes.Id_PedRes and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDtfRes2.Date)) +' )';

     end;
  end;

  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and Exists (Select * From PedLib Where PedLib.Id_PedRes = PedRes.Id_PedRes and PedLib.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text) +' )'
     else
        sFiltro := ' Where Exists (Select * From PedLib Where PedLib.Id_PedRes = PedRes.Id_PedRes and PedLib.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text) +' )';

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

  CountRegistros;
  
  PedRe2.Close;
  PedRe2.Open;

  grRes.SetFocus;

end;

procedure TfmManRes.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinCli.NomCli,'+
                  '        FinCli.CodAtd '+
                  ' From FinCli'+
                  ' Where FinCli.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
          Open;

          EdPsqNomCli.Text := FieldByName('NomCli').AsString;

          if GCodAtd_Id > 0 then begin

             if FieldbyName('CodAtd').AsInteger <> GCodAtd_Id then begin

                EdPsqNomCli.Text := '';

                fmsgErro('Cliente Informado n�o Pertence ao Atendente.',EdPsqCodCli);

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
          Text := ' Select FinVen.ApeVen'+
                  ' From FinVen'+
                  ' Where FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
          Open;

          EdPsqApeVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqApeVen.Text := '';
end;

procedure TfmManRes.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

     EdPsqCodVen.SetFocus;

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

  EdPsqCodVen.SetFocus;
  
end;

procedure TfmManRes.EdPsqId_PedResExit(Sender: TObject);
begin
  if Trim( EdPsqId_PedRes.Text ) <> '' then begin

     if (GCodVen_Id = 0) or (GGus_Id = 1) then begin

        EdPsqCodVen.Clear;
        EdPsqApeVen.Clear;

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

        if PedResId_PedRes.Value > 0 then begin

           sFiltro := ' Where PedRes.Id_PedRes = '+ QuotedStr(IntToStr(PedResId_PedRes.Value));

           with PedRes,SQL do begin

                Close;
                Text := sBase + sFiltro;
                Open;

           end;

           CountRegistros;

           if PedResId_PedRes.Value > 0 then begin

              if (Trim(PedResSitRes.Value) = 'Faturado') or
                 (Trim(PedResSitRes.Value) = 'Pronto para Faturar') or
                 (Trim(PedResSitRes.Value) = 'Parcialmente Faturado') or
                 (Trim(PedResSitRes.Value) = 'Faturado com Saldo nao Atendido') or
                 (Trim(PedResSitRes.Value) = 'Aguardando Confirmacao do Pagamento') then begin

                 if (Trim(PedResSitRes.Value) = 'Pronto para Faturar') or
                    (Trim(PedResSitRes.Value) = 'Aguardando Confirmacao do Pagamento') then begin

                    try

                       fmPsqLib := TfmPsqLib.Create(Self);

                       fmPsqLib.PedLib.Close;
                       fmPsqLib.PedLib.Params[0].AsInteger := PedResId_PedRes.Value;
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
                          fmPsqFat.FatPed.Params[0].AsInteger := PedResId_PedRes.Value;
                          fmPsqFat.FatPed.Open;

                          fmPsqFat.ShowModal;

                       finally

                          FreeAndNil(fmPsqFat);

                       end;

                       end
                    else
                       begin
                    end;
                 end;
              end;
           end;
        end;   
     end;
  end;
  
  if key = 121 then begin {F10 - Observa��es Quanto a Rejeicao do Pedido}

     if Trim(PedResSitRes.Value) = 'Cancelado' then begin

        try

           fmPsqCpe := TfmPsqCpe.Create(Self);

           fmPsqCpe.PedCpe.Close;
           fmPsqCpe.PedCpe.Params[0].AsInteger := PedResId_PedRes.Value;
           fmPsqCpe.PedCpe.Open;

           fmPsqCpe.ShowModal;

        finally

           FreeAndNil(fmPsqCpe);

        end;

        end
     else
        begin

        if Trim(PedResSitRes.Value) = 'Faturado com Saldo nao Atendido' then begin

           try

              fmPsqMfp := TfmPsqMfp.Create(Self);

              fmPsqMfp.PedFpe.Close;
              fmPsqMfp.PedFpe.Params[0].AsInteger := PedResId_PedRes.Value;
              fmPsqMfp.PedFpe.Open;

              fmPsqMfp.ShowModal;

           finally

              FreeAndNil(fmPsqMfp);

           end;

           end
        else
           begin

           if PedResFlgRej.Value = 'Sim' then begin

              try

                 fmPsqRej := TfmPsqRej.Create(Self);

                 fmPsqRej.PedRej.Close;
                 fmPsqRej.PedRej.Params[0].AsInteger := PedResId_PedRes.Value;
                 fmPsqRej.PedRej.Open;

                 fmPsqRej.ShowModal;

              finally

                 FreeAndNil(fmPsqRej);

              end;
           end;
        end;
     end;
  end;

  if key = 122 then begin {F11-Ocorrencias do Pedido}

     if PedResFlgOco.Value = 'Sim' then begin

        try

           fmPsqOco := TfmPsqOco.Create(Self);

           fmPsqOco.PedOco.Close;
           fmPsqOco.PedOco.Params[0].AsInteger := PedResId_PedRes.Value;
           fmPsqOco.PedOco.Open;

           fmPsqOco.PedRe2.Close;
           fmPsqOco.PedRe2.Params[0].AsInteger := PedResId_PedRes.Value;
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

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then begin

     Panel1.Visible := False;
     Panel3.Visible := False;
     Panel5.Visible := False;

     pnQtdRes.Visible := False;
     pnTotRes.Visible := False;
     pnTotFat.Visible := False;

     grRe2.Height := 121;
     dbRe2.Height := 127;

     Permissao := fAcesso('PED0204');

     end
  else
     Permissao := 'SSSSS';

  if copy(Permissao,1,1) = 'N' then bIncluir.Enabled := False;
  if copy(Permissao,2,1) = 'N' then bEditar.Enabled := False;
  if copy(Permissao,3,1) = 'N' then bExcluir.Enabled := False;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if PedParExiRen.Value <> 'Sim' then begin

        pnTotRen.Visible := False;
        pnTotMka.Visible := False;

     end;
  end;

  if PedParUsaDec.Value = 'Nao' then PedRe2QtpRe2.DisplayFormat := '###,###,##0';
  
  if GFlgAce <> 'Sim' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select FLGDEL,SEQIMP From GerPar';
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

  sOrdem := ' Order by PedRes.Id_PedRes';

  if GCodVen_Id > 0 then begin

     if Trim(PedParTipAtd.Value) = 'Vendedor' then
        sFiltro := ' Where PedRes.DteRes = '+ QuotedStr(fDateToSQL(Date)) +' and (PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id)) +' or PedRes.CodAtd = '+ QuotedStr(IntToStr(GCodVen_Id)) +')'
     else
        begin

        if GCodAtd_Id > 0 then
           sFiltro := ' Where PedRes.DteRes = '+ QuotedStr(fDateToSQL(Date)) +' and (PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id)) +' or PedRes.CodAtd = '+ QuotedStr(IntToStr(GCodAtd_Id)) +')'
        else
           sFiltro := ' Where PedRes.DteRes = '+ QuotedStr(fDateToSQL(Date)) +' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

     end;

     if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = '+ QuotedStr('Sim');
     
     with PedRes,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;

     CountRegistros;
     
     end
  else
     begin

     if GCodAtd_Id > 0 then begin

        sFiltro := ' Where PedRes.DteRes = '+ QuotedStr(fDateToSQL(Date)) +' and PedRes.CodAtd = '+ QuotedStr(IntToStr(GCodAtd_Id));

        if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = '+ QuotedStr('Sim');

        with PedRes,SQL do begin

             Close;
             Text := sBase + sFiltro + sOrdem;
             Open;

        end;

        CountRegistros;
        
        end
     else
        begin

        if GFlgAce = 'Nao' then begin

           sFiltro := ' Where PedRes.DteRes = '+ QuotedStr(fDateToSQL(Date));

           with PedRes,SQL do begin

                Close;
                Text := sBase + sFiltro + sOrdem;
                Open;

           end;

           CountRegistros;

           end
        else
           begin

           sOrdem := ' Order by PedRes.Id_PedRes';

           sFiltro := ' Where PedRes.DteRes = '+ QuotedStr(fDateToSQL(Date));

           sFiltro := sFiltro + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = '+QuotedStr('Sim');

           with PedRes,SQL do begin

                Close;
                Text := sBase + sFiltro + sOrdem;
                Open;

           end;

           CountRegistros;
           
        end;
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

     EdPsqApeVen.Text := GNomVen_Id;
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

  EdPsqDteRes1.Date := Date;
  EdPsqDteRes2.Date := Date;

  EdPsqId_PedRes.SetFocus;

end;

procedure TfmManRes.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManRes.EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
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

           if PedResId_PedRes.Value > 0 then begin

              sFiltro := ' Where PedRes.Id_PedRes = '+ QuotedStr(IntToStr(PedResId_PedRes.Value));

              with PedRes,SQL do begin

                   Close;
                   Text := sBase + sFiltro;
                   Open;

              end;

              CountRegistros;
              
              if (Trim(PedResSitRes.Value) = 'Aguardando Complemento')                   or
                 (Trim(PedResSitRes.Value) = 'Aguardando Consultas de Cadastro')         or
                 (Trim(PedResSitRes.Value) = 'Aguardando Liberacao do Depto Financeiro') then begin

                 PedRes.Edit;

                 PedResSitRes.Value := 'Processo de Alteracao';

                 with PedRes do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

                      try

                         ApplyUpdates; {Tenta aplicar as altera��es};

                         fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro};

                         if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

                         EdPsqId_PedRes.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;
              end;

              Id_PedRes := PedResId_PedRes.Value;
              
              fmManPed := TfmManPed.Create(Self);
              fmManPed.Show;

           end;
        end;

        end
     else
        fMsgErro(GMensagem_0002,nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
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

           fmsg('Existe um pedido em andamento.','E');
     
           fmManPed.WindowState := wsNormal;
           fmManPed.BringToFront;

           end
        else
           begin   

           Id_PedRes := 0;

           sFiltro := ' Where PedRes.Id_PedRes = 0';

           with PedRes,SQL do begin

                Close;
                Text := sBase + sFiltro;
                Open;

           end;

           CountRegistros;
           
           fmManPed := TfmManPed.Create(Self);
           fmManPed.Show;

        end;

        end
     else
        fMsgErro(GMensagem_0002,nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
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

           fmsg('Existe um pedido em andamento.','E');

           fmManPed.WindowState := wsNormal;
           fmManPed.BringToFront;

           end
        else
           begin

           if PedResId_PedRes.Value > 0 then begin

              sFiltro := ' Where PedRes.Id_PedRes = '+ QuotedStr(IntToStr(PedResId_PedRes.Value));

              with PedRes,SQL do begin

                   Close;
                   Text := sBase + sFiltro;
                   Open;

              end;

              CountRegistros;
              
              if (Trim(PedResSitRes.Value) = 'Rejeitado') or
                 (Trim(PedResSitRes.Value) = 'Nao Concluido') then begin

                 if fMsg('Confirma a exclus�o do pedido ?','S') then begin

                    PedRes.Delete;

                    with PedRes do begin

                         fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

                         try

                            ApplyUpdates; {Tenta aplicar as altera��es};

                            fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o};

                         except

                            fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro};

                            if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

                            grRes.SetFocus;

                            raise;

                         end;

                         CommitUpdates; {sucesso!, limpa o cache...}

                    end;

                    PedRes.Close;
                    PedRes.Open;

                    CountRegistros;

                    grRes.SetFocus;

                 end;

                 end
              else
                 begin

                 if (Trim(PedResSitRes.Value) = 'Processo de Alteracao')                    or
                    (Trim(PedResSitRes.Value) = 'Aguardando Complemento')                   or
                    (Trim(PedResSitRes.Value) = 'Aguardando Consultas de Cadastro')         or
                    (Trim(PedResSitRes.Value) = 'Aguardando Liberacao para Faturamento')    or
                    (Trim(PedResSitRes.Value) = 'Aguardando Liberacao do Depto Comercial')  or
                    (Trim(PedResSitRes.Value) = 'Aguardando Liberacao do Depto Financeiro') then begin

                    if fMsg('Confirma o cancelamento do pedido ?','S') then begin

                       try

                          fmManCpe := TfmManCpe.Create(Self);

                          fmManCpe.Id_PedRes := PedResId_PedRes.Value;

                          fmManCpe.PedCpe.Close;
                          fmManCpe.PedCpe.Params[0].AsInteger := -1;
                          fmManCpe.PedCpe.Open;

                          fmManCpe.ShowModal;

                       finally

                          FreeAndNil(fmManCpe);

                       end;

                       PedRes.Close;
                       PedRes.Open;

                       CountRegistros;
                       
                    end;

                    end
                 else
                    begin

                    if (Trim(PedResSitRes.Value) = 'Faturado') or
                       (Trim(PedResSitRes.Value) = 'Parcialmente Faturado') then fMsg('Opera��o n�o Pode ser Realizada. Pedido Faturado.','E')

                    else if Trim(PedResSitRes.Value) = 'Aguardando Separacao dos Itens a Faturar' then fMsg('Opera��o n�o Pode ser Realizada. Pedido em Processo de Separa��o dos Itens para Faturamento.','E')

                    else if Trim(PedResSitRes.Value) = 'Pronto para Faturar' then fMsg('Opera��o n�o Pode ser Realizada. Pedido Pronto para Faturar.','E')

                    else if Trim(PedResSitRes.Value) = 'Aguardando Separacao de Estoque' then fMsg('Opera��o n�o Pode ser Realizada. Pedido Aguardando Separa��o de Estoque.','E')

                    else if Trim(PedResSitRes.Value) = 'Aguardando Liberacao para Faturamento' then fMsg('Opera��o n�o Pode ser Realizada. Pedido Aguardando Liberacao para Faturamento.','E')

                    else if Trim(PedResSitRes.Value) = 'Cancelado' then fMsg('Opera��o n�o Pode ser Realizada. Pedido Cancelado','E')

                    else if Trim(PedResSitRes.Value) = 'Faturado com Saldo nao Atendido' then fMsg('Opera��o n�o Pode ser Realizada. Pedido com Saldo que n�o Ser� Atendido.','E');

                 end;
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

procedure TfmManRes.bImprimirClick(Sender: TObject);
var
  i     : integer;
  Found : integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManPed then Found := i;

  end;

  if Found >= 0 then begin

     fmsg('Existe um pedido em andamento.','E');

     fmManPed.WindowState := wsNormal;
     fmManPed.BringToFront;

     end
  else
     begin

     if PedResId_PedRes.Value > 0 then begin

        sFiltro := ' Where PedRes.Id_PedRes = '+ QuotedStr(IntToStr(PedResId_PedRes.Value));

        with PedRes,SQL do begin

             Close;
             Text := sBase + sFiltro;
             Open;

        end;

        CountRegistros;
        
        if Trim(PedResSitRes.Value) <> 'Nao Concluido' then begin

           if fMsg('Confirma impress�o do pedido ?','O') then begin

              try

                 fmManE04 := TfmManE04.Create(Self);

                 fmManE04.PedRes.Close;
                 fmManE04.PedRes.Params[0].AsInteger := PedResId_PedRes.Value;
                 fmManE04.PedRes.Open;

                 fmManE04.RLReport1.PreviewModal;

              finally

                 FreeAndNil(fmManE04);

              end;
           end;

           if fMsg('Imprime via de separa��o do pedido ?','O') then begin

              PedRes.Edit;

              PedResFlgAtu.Value := 'E';
              
              if Trim(PedResCodEan.Value) = '' then PedResCodEan.Value := fGeraCB2(fNumZeros(IntToStr(PedResId_PedRes.Value),12));

              PedResFlgEst.Value := 'Sim';

              with PedRes do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

                   try

                      ApplyUpdates; {Tenta aplicar as altera��es};

                      fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro};

                      if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

                      grRes.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              PedRes.Close;
              PedRes.Open;

              CountRegistros;
              
              try

                 fmManE05 := TfmManE05.Create(Self);

                 fmManE05.PedRes.Close;
                 fmManE05.PedRes.Params[0].AsInteger := PedResId_PedRes.Value;
                 fmManE05.PedRes.Open;

                 fmManE05.RLReport1.PreviewModal;

              finally

                 FreeAndNil(fmManE05);

              end;
           end;

           end
        else
           fmsgErro('N�o � permitido impress�o de processos n�o concluidos.',Nil);

        if PedParFlgCot.Value = 'Sim' then begin

           if PedResQtiRe4.Value > 0 then begin

              if fMsg('Confirma impress�o da via de cota��o para os fornecedores ?','O') then begin

                 try

                    fmImpF02 := TfmImpF02.Create(Self);

                    fmImpF02.Id_PedRes := PedResId_PedRes.Value;

                    fmImpF02.PedRe4.Close;
                    fmImpF02.PedRe4.Params[0].AsInteger := PedResId_PedRes.Value;
                    fmImpF02.PedRe4.Open;

                    fmImpF02.ShowModal;

                 finally

                    FreeAndNil(fmImpF02);

                 end;
              end;
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
        EdPsqApeVen.Clear;

     end;

     EdPsqId_PedRes.Clear;
     
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
             Text := ' Select FLGDEL,SEQIMP From GerPar';
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
          Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('ApeEmp').AsString ) <> '' then
             EdPsqNomEmp.Text := FieldByName('ApeEmp').AsString
          else
             begin

             EdPsqNomEmp.Text := '';

             fmsgErro('Empresa Informada n�o Encontrada.',EdPsqCodEmp);

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

     if key = #1 then begin {Analise de pedido}

        try

           fmPsqCpd := TfmPsqCpd.Create(Self);

           fmPsqCpd.PedRe2.Close;
           fmPsqCpd.PedRe2.Params[0].AsInteger := PedResId_PedRes.Value;
           fmPsqCpd.PedRe2.Open;

           fmPsqCpd.ShowModal;

        finally

           FreeAndNil(fmPsqCpd);

        end;
     end;
  end;

  if key = #16 then begin {Historico do pedido}

     if PedResId_PedRes.Value > 0 then begin
     
        try

           fmPsqHre := TfmPsqHre.Create(Self);

           fmPsqHre.PedLog.Close;
           fmPsqHre.PedLog.Params[0].AsInteger := PedResId_PedRes.Value;
           fmPsqHre.PedLog.Open;

           fmPsqHre.ShowModal;

        finally

           FreeAndNil(fmPsqHre);

        end;
     end;   
  end;

  if key = #5 then begin {Estoque}

     if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) or (GFlgGer = 'Sim') then begin

        if not Assigned(fmPsqEs2) then begin

           try

              fmPsqEs2 := TfmPsqEs2.Create(Self);

              fmPsqEs2.sEntr := 'N';

              fmPsqEs2.sCodClp := '1';

              if ( Trim(PedRe2CodGru.Value) <> '' ) or
                 ( Trim(PedRe2CodSub.Value) <> '' ) or
                 ( Trim(PedRe2CodPro.Value) <> '' ) then begin

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
                              ' Where EstPro.CodClp = '+ QuotedStr('1')+
                              '   and EstPro.FlbPro = '+ QuotedStr(' ');

                      if Trim( PedRe2CodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '+ QuotedStr(PedRe2CodGru.Value);
                      if Trim( PedRe2CodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '+ QuotedStr(PedRe2CodSub.Value);
                      if Trim( PedRe2CodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '+ QuotedStr(PedRe2CodPro.Value);

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

     if ((PedRe2.FieldbyName('FlgVal').AsString = 'Sim') or (PedRe2.FieldbyName('FlgMar').AsString = 'Sim')) and (PedRe2.FieldbyName('FlgLib').AsString = 'Nao') then begin

        with (Sender as ThGrid).Canvas do begin

             Font.Color := clRed;

             FillRect(Rect);

        end;
     end;
  end;

  (Sender as ThGrid).DefaultDrawDataCell(Rect, Field, State);

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

procedure TfmManRes.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManRes := nil;
end;

procedure TfmManRes.DsResDataChange(Sender: TObject; Field: TField);
var
  sText : string;
begin
  inherited;

  if pnTotRen.Visible then pnTotRen.Caption := FormatFloat('###,###,##0.00',PedResTotRen.Value)+' % ';

  if (PedResSitRes.Value = 'Faturado') or
     (PedResSitRes.Value = 'Pronto para Faturar') or
     (PedResSitRes.Value = 'Parcialmente Faturado') or
     (PedResSitRes.Value = 'Faturado com Saldo nao Atendido') or
     (PedResSitRes.Value = 'Aguardando Confirmacao do Pagamento') then begin

     if not Label23.Visible then Label23.Visible := True;

     end
  else
     begin

     if Label23.Visible then Label23.Visible := False;

  end;

  if PedResId_PedRes.Value > 0 then begin

     if PedResFlgImp.Value = 'Nao' then begin

        pnFlgImp.Caption := 'N�o Impresso';

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

  if PedResId_PedRes.Value > 0 then
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

  if PedResFlgRej.Value = 'Sim' then
     pnSitRes.Caption := 'F10 - Rejeitado'
  else
     begin

     if Trim(PedResSitRes.Value) = 'Cancelado' then sText := 'F10 -';

     if Trim(PedResSitRes.Value) = 'Faturado com Saldo nao Atendido' then sText := 'F10 -';

     if Trim( sText ) <> '' then
        pnSitRes.Caption := sText + ' ' + Trim(PedResSitRes.Value)
     else
        pnSitRes.Caption := Trim(PedResSitRes.Value);

  end;

  if PedResId_PedRes.Value > 0 then begin

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

  if PedResId_PedRes.Value > 0 then
     pnDteRes.Caption := ' Emitido Em '+ DateToStr(PedResDteRes.Value)
  else
     pnDteRes.Caption := ' Emitido Em ';

end;

procedure TfmManRes.DsRe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if pnTotMka.Visible then pnTotMka.Caption := 'Markup do Item '+FormatFloat('###,###,##0.00',PedRe2TotRen.Value)+' % ';
end;

procedure TfmManRes.bPsqAtdClick(Sender: TObject);
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

procedure TfmManRes.EdPsqCodAtdExit(Sender: TObject);
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

procedure TfmManRes.EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word;
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

procedure TfmManRes.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(PedRes.TotGer) as TotRes,'+
               '        Sum(PedRes.FatGer) as TotFat,'+
               '        Count(*) as QtdRes'+
               ' From PedRes'+ sFiltro;
       Open;

       if FieldbyName('QtdRes').AsInteger > 0 then begin

          pnQtdRes.Caption := IntToStr(FieldbyName('QtdRes').AsInteger)+' ';

          pnTotRes.Caption := FormatFloat('###,###,##0.00',FieldbyName('TotRes').AsFloat)+' ';
          pnTotFat.Caption := FormatFloat('###,###,##0.00',FieldbyName('TotFat').AsFloat)+' ';

          end
       else
          begin

          pnQtdRes.Caption := '0 Pedido(s)';

          pnTotRes.Caption := '0'+ decimalseparator +'00 ';
          pnTotFat.Caption := '0'+ decimalseparator +'00 ';

       end;
  end;
end;

end.
