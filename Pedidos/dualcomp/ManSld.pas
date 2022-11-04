unit ManSld;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, RDprint, dxDBELib, dxColorDateEdit;

type
  TfmManSld = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label2: TLabel;
    Bevel2: TBevel;
    grRes: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    quSql: TwwQuery;
    bFinalizar: TSpeedButton;
    bImprimir: TSpeedButton;
    RDprint1: TRDprint;
    UpRes: TUpdateSQL;
    Panel1: TPanel;
    pnDteRes: TPanel;
    DsRe2: TwwDataSource;
    PedRe2: TwwQuery;
    grRe2: ThGrid;
    pnNomCli: TPanel;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
    PedResNUMRES: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResTOTRES: TFloatField;
    PedResTOTGER: TFloatField;
    PedResFATGER: TFloatField;
    PedResDEVGER: TFloatField;
    PedResSLDGER: TFloatField;
    PedResNOMPFA: TStringField;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2CODEIT: TIntegerField;
    PedRe2CODCLP: TStringField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2CODTAM: TStringField;
    PedRe2CODCOR: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2OBSRE2: TStringField;
    PedRe2CODST1: TStringField;
    PedRe2CODST2: TStringField;
    PedRe2CODUND: TStringField;
    PedRe2LIQRE2: TFloatField;
    PedRe2BRTRE2: TFloatField;
    PedRe2LINRE2: TIntegerField;
    PedRe2TABPRC: TIntegerField;
    PedRe2CODPRM: TIntegerField;
    PedRe2QTPRE2: TFloatField;
    PedRe2QTSRE2: TFloatField;
    PedRe2QTFRE2: TFloatField;
    PedRe2QTDRE2: TFloatField;
    PedRe2ULTQTS: TFloatField;
    PedRe2SLDRE2: TFloatField;
    PedRe2VLURE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2VCHRE2: TFloatField;
    PedRe2VRERE2: TFloatField;
    PedRe2VCPRE2: TFloatField;
    PedRe2VPRRE2: TFloatField;
    PedRe2VCSRE2: TFloatField;
    PedRe2DSCRE2: TFloatField;
    PedRe2VDSRE2: TFloatField;
    PedRe2DSPRE2: TFloatField;
    PedRe2VDPRE2: TFloatField;
    PedRe2DSRRE2: TFloatField;
    PedRe2VDRRE2: TFloatField;
    PedRe2PACRE2: TFloatField;
    PedRe2VACRE2: TFloatField;
    PedRe2CODCOM: TStringField;
    PedRe2PCORE2: TFloatField;
    PedRe2IPIRE2: TFloatField;
    PedRe2CLSIPI: TStringField;
    PedRe2CLFRE2: TStringField;
    PedRe2ICMRE2: TFloatField;
    PedRe2TOTVEN: TFloatField;
    PedRe2TOTCST: TFloatField;
    PedRe2BASIPI: TFloatField;
    PedRe2TOTIPI: TFloatField;
    PedRe2BASICM: TFloatField;
    PedRe2TOTICM: TFloatField;
    PedRe2BASSUB: TFloatField;
    PedRe2TOTSUB: TFloatField;
    PedRe2TOTRE2: TFloatField;
    PedRe2TOTGE2: TFloatField;
    PedRe2TOTREN: TFloatField;
    PedRe2TOTLIQ: TFloatField;
    PedRe2TOTBRT: TFloatField;
    PedRe2BASCOM: TFloatField;
    PedRe2TOTCOM: TFloatField;
    PedRe2TOTDSC: TFloatField;
    PedRe2TOTDSR: TFloatField;
    PedRe2TOTDSP: TFloatField;
    PedRe2TOTACR: TFloatField;
    PedRe2CODSTR: TStringField;
    PedRe2TIPSTR: TStringField;
    PedRe2REGIPI: TStringField;
    PedRe2TIPIPI: TStringField;
    PedRe2TRBIPI: TStringField;
    PedRe2REDIPI: TFloatField;
    PedRe2BSCIPI: TFloatField;
    PedRe2REGICM: TStringField;
    PedRe2TIPICM: TStringField;
    PedRe2TRBICM: TStringField;
    PedRe2REDICM: TFloatField;
    PedRe2BSCICM: TFloatField;
    PedRe2INCREV: TFloatField;
    PedRe2INCFIN: TFloatField;
    PedRe2FLASEQ: TStringField;
    PedRe2FLGRES: TStringField;
    PedRe2NRORE2: TIntegerField;
    PedRe2TOTITE: TFloatField;
    PedRe2DSCPRO: TStringField;
    PedRe2SEQPR2: TIntegerField;
    PedRe2CSTRE2: TFloatField;
    PedRe2VCRRE2: TFloatField;
    PedRe2DSCCOM: TFloatField;
    PedRe2VDSCOM: TFloatField;
    PedRe2TOTDCO: TFloatField;
    PedRe2FLGDUP: TStringField;
    PedRe2EMPGER: TIntegerField;
    PedRe2DTEGER: TDateTimeField;
    PedRe2NUMGER: TIntegerField;
    PedRe2SEQGR2: TIntegerField;
    PedRe2PEDCLI: TStringField;
    PedRe2FLGREQ: TStringField;
    PedRe2QTDEMB: TFloatField;
    PedRe2CODVWA: TStringField;
    bAtualizar: TBitBtn;
    EdPsqDteres1: TdxColorDateEdit;
    EdPsqDteres2: TdxColorDateEdit;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResLIBSLD: TStringField;
    PedResSITRES: TStringField;
    PedResNOMCLI: TStringField;
    PedResCGCCPF: TStringField;
    PedResCODTIP: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODTRA: TIntegerField;
    PedResTENCLI: TStringField;
    PedResENDCLI: TStringField;
    PedResNUMCLI: TStringField;
    PedResBAICLI: TStringField;
    PedResCIDCLI: TStringField;
    PedResUFECLI: TStringField;
    PedResCEPCLI: TStringField;
    PedResMEDACR: TFloatField;
    PedResDSCREG: TFloatField;
    PedResMEDDCO: TFloatField;
    PedResTOTDCO: TFloatField;
    PedResTOTDSR: TFloatField;
    PedResQTPRES: TIntegerField;
    PedResOBSRES: TStringField;
    PedResQTIRES: TIntegerField;
    PedResPEDANT: TStringField;
    PedResDTFRES: TDateTimeField;
    PedResHRERES: TStringField;
    PedResUFERES: TStringField;
    PedResCGCCLI: TStringField;
    PedResLANEST: TStringField;
    PedResCODFIL: TIntegerField;
    quSQL1: TwwQuery;
    procedure fChkForm(PTras: string);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure bFinalizarClick(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    DteRes : TDateTime;
    CodEmp,NumRes,SeqLib : integer;
  end;

var
  sCaber     : string;
  sIpPed     : string;
  sIpPro     : string;
  NomTip     : string;
  NomVen     : string;
  NomRep     : string;
  NomCli     : string;
  EndEn1     : string;
  EndEn2     : string;
  DesRe2     : string;
  ObsRes     : string;
  NomTra     : string;
  EndTr1     : string;
  EndTr2     : string;
  EndTr3     : string;
  TotEst     : real;
  ValDup     : real;
  PraMed     : real;
  TotIpi     : real;
  TotCst     : real;
  TotVen     : real;
  BasCom     : real;
  pLinha     : integer;
  qtdTam     : integer;
  qtdCol     : integer;
  Ped_QtdIte : integer;
  Ite_BasCde : real;
  Ite_TotCde : real;
  Ite_BasCfo : real;
  Ite_TotCfo : real;
  Ite_TotVen : real;
  Ite_TotCst : real;
  Ite_BasIpi : real;
  Ite_TotIpi : real;
  Ite_TotRe2 : real;
  Ite_TotGe2 : real;
  Ite_TotDsr : real;
  Ite_TotDsc : real;
  Ite_TotDsp : real;
  Ite_TotDpl : real;
  Ite_TotAcr : real;
  Ped_VlpCrp : real;
  Ped_TotIpi : real;
  Ped_TotCst : real;
  Ped_TotVen : real;
  Ped_TotRes : real;
  Ped_TotGer : real;
  Ped_TotDsr : real;
  Ped_TotDsc : real;
  Ped_TotDsp : real;
  Ped_TotDpl : real;
  Ped_TotAcr : real;
  Ped_TotRen : real;
  Ped_MedDsc : real;
  Ped_MedCom : real;
  Ped_MedPrm : real;  
  Ped_BasCde : real;
  Ped_TotCde : real;
  Ped_BasCfo : real;
  Ped_TotCfo : real;
  Ped_TopDsc : real;
  Ped_TopCom : real;
  Ped_TopPrm : real;
  fmManSld: TfmManSld;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManFpe;

{$R *.DFM}

procedure TfmManSld.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bFinalizar.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

end;

procedure TfmManSld.FormShow(Sender: TObject);
begin
  inherited;

  EdPsqDteRes1.Date := Date;
  EdPsqDteRes2.Date := Date;  

  if GCodVen_Id > 0 then begin

     with PedRes,SQL do begin

          Close;
          Text := ' Select PedRes.*,'+
                  '        NomCli,'+
                  '        FormatCgcCpf(PedRes.CgcCli) as CgcCpf,'+
                  '        TextoOcor(PedRes.CodPfa,'''+ '-' +''',EstPfa.DsrPfa,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomPfa'+
                  ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
                  '             LEFT JOIN EstPfa ON (PedRes.CodPfa = EstPfa.CodPfa)'+
                  '                             AND (PedRes.TipPfa = EstPfa.TipPfa)'+
                  ' Where PedRes.SitRes = '''+ 'Parcialmente Faturado' +''''+
                  '   and PedRes.LibSld = '''+ 'Nao'                   +''''+
                  '   and PedRes.CodVen = '''+ IntToStr(GCodVen_Id)    +''''+
                  '   and PedRes.Dteres = '''+ fDateToSQL(Date)        +''''+
                  ' Order by PedRes.NumRes';
           Open;       

     end;

     end
  else
     begin

     with PedRes,SQL do begin

          Close;
          Text := ' Select PedRes.*,'+
                  '        NomCli,'+
                  '        FormatCgcCpf(PedRes.CgcCli) as CgcCpf,'+
                  '        TextoOcor(PedRes.CodPfa,'''+ '-' +''',EstPfa.DsrPfa,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomPfa'+
                  ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
                  '             LEFT JOIN EstPfa ON (PedRes.CodPfa = EstPfa.CodPfa)'+
                  '                             AND (PedRes.TipPfa = EstPfa.TipPfa)'+
                  ' Where PedRes.SitRes = '''+ 'Parcialmente Faturado' +''''+
                  '   and PedRes.LibSld = '''+ 'Nao'                   +''''+
                  '   and PedRes.Dteres = '''+ fDateToSQL(Date)        +''''+
                  ' Order by PedRes.NumRes';
           Open;

     end;
  end;

  EdPsqDteRes1.SetFocus;
  
end;

procedure TfmManSld.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSld.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManSld.fChkForm(PTras: string);
var
cForm: TComponent;
begin

  cForm := FindComponent('fm' + PTras);

  if (cForm <> nil) then begin

     TForm(cForm).WindowState := wsNormal;
     TForm(cForm).BringToFront;

     Abort;
     
  end;
end;

procedure TfmManSld.bImprimirClick(Sender: TObject);
var
CodEit,CodMrc: integer;
NumPro,DscPro,NomMrc: string;
begin
  inherited;
  if PedResNumRes.Value > 0 then begin

     sIpPed := 'N';

     sIpPro := 'N';

     if fMsg('Confirma Impressão do Saldo do Pedido ?','O') then sIpPed := 'S';

     if fMsg('Imprime Boletim de Fabricação do Saldo do Pedido ?','O') then sIpPro := 'S';

     if (sIpPed = 'S') or (sIpPro = 'S') then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select NomTip From PedTip'+
                     ' Where CodTip = '''+IntToStr(PedResCodTip.Value)+'''';
             Open;

             NomTip := FieldbyName('NomTip').AsString;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select ApeVen From FinVen'+
                     ' Where CodVen = '''+IntToStr(PedResCodVen.Value)+'''';
             Open;

             NomVen := FieldbyName('ApeVen').AsString;

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
             Text := ' Select PedRes.TenCli,'+
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

             if Trim( FieldbyName('TenCli').AsString ) <> '' then
                EndEn1 := Trim( FieldbyName('TenCli').AsString )+ ' ' +Trim( FieldbyName('EndCli').AsString )
             else
                EndEn1 := Trim( FieldbyName('EndCli').AsString );

             if Trim( FieldbyName('NumCli').AsString ) <> '' then EndEn1 := EndEn1+ ', '+Trim( FieldbyName('NumCli').AsString );

             if Trim( FieldbyName('BaiCli').AsString ) <> '' then EndEn1 := EndEn1+ ' Bairro ' +Trim( FieldbyName('BaiCli').AsString );

             EndEn2 := 'Cidade ' +Trim( FieldbyName('CidCli').AsString )+ ' UF ' +FieldbyName('UfeCli').AsString;

             if Trim( FieldbyName('CepCli').AsString ) <> '' then EndEn2 := EndEn2 + ' Cep: ' +copy(FieldbyName('CepCli').AsString,1,5)+ '-' +copy(FieldbyName('CepCli').AsString,6,3);

             ObsRes := FieldbyName('ObsRes').AsString;

        end;

        CodEit := PedResCodEmp.Value;

        if PedResLanEst.Value = 'Sim' then begin

           if PedResCodFil.Value > 0 then CodEit := PedResCodFil.Value

        end;

        rdprint1.OpcoesPreview.Preview     := True;
        rdprint1.OpcoesPreview.PreviewZoom := 100;
        rdprint1.TamanhoQteLPP             := seis;
        rdprint1.UsaGerenciadorImpr        := True;

        if GFlgImp = 'Nao' then rdprint1.NumerodeCopias := 0;

        rdprint1.TamanhoQteColunas  := 136;
        rdprint1.FonteTamanhoPadrao := s17cpp;

        if sIpPed = 'S' then
           sCaber := '1'
        else
           sCaber := '2';

        {Inicio...}
        with rdprint1 do begin

             abrir; {inicializa o arquivo de impressao...}

             if sIpPed = 'S' then begin

                with quSQL,SQL do begin

                     Close;
                     Text := ' Select PedRe2.CodGru,'+
                             '        PedRe2.CodSub,'+
                             '        PedRe2.CodPro,'+
                             '        PedRe2.DesRe2,'+
                             '        PedRe2.ObsRe2,'+
                             '        PedRe2.SldRe2,'+
                             '        PedRe2.VluRe2,'+
                             '        PedRe2.DscRe2,'+
                             '        PedRe2.DspRe2,'+
                             '        PedRe2.PacRe2,'+
                             '        PedRe2.vcsRe2,'+                             
                             '        PedRe2.VlqRe2,'+
                             '        PedRe2.TrbIpi,'+
                             '        PedRe2.BasIpi,'+
                             '        PedRe2.BscIpi,'+
                             '        PedRe2.RedIpi,'+
                             '        PedRe2.IpiRe2,'+
                             '        PedRe2.PcoRe2,'+                                                                                                                                                                              
                             '        PedRe2.TotRe2'+
                             ' From PedRe2'+
                             ' Where PedRe2.CodEmp = '''+ IntToStr(PedResCodEmp.Value)   +''''+
                             '   and PedRe2.DteRes = '''+ fDateToSQL(PedResDteRes.Value) +''''+
                             '   and PedRe2.NumRes = '''+ IntToStr(PedResNumRes.Value)   +''''+
                             ' Order by PedRe2.NroRe2';
                     Open;

                end;

                Ped_QtdIte := 0;
                Ped_TotIpi := 0;
                Ped_TotCst := 0;
                Ped_TotVen := 0;
                Ped_TotDsr := 0;
                Ped_TotDsc := 0;
                Ped_TotDsp := 0;
                Ped_TotDpl := 0;
                Ped_TotAcr := 0;
                Ped_BasCde := 0;
                Ped_TotCde := 0;
                Ped_BasCfo := 0;
                Ped_TotCfo := 0;
                Ped_TopDsc := 0;
                Ped_TopCom := 0;
                Ped_TopPrm := 0;

                quSql.First;

                while not quSQL.Eof do begin

                      if quSql.FieldbyName('SldRe2').AsFloat > 0 then begin

                         Ite_BasCde := 0;
                         Ite_TotCde := 0;
                         Ite_BasCfo := 0;
                         Ite_TotCfo := 0;
                         Ite_TotVen := 0;
                         Ite_TotCst := 0;
                         Ite_BasIpi := 0;
                         Ite_TotIpi := 0;
                         Ite_TotRe2 := 0;
                         Ite_TotGe2 := 0;
                         Ite_TotDsr := 0;
                         Ite_TotDsc := 0;
                         Ite_TotDsp := 0;
                         Ite_TotDpl := 0;
                         Ite_TotAcr := 0;

                         imp(pLinha,001,quSql.FieldbyName('CodGru').AsString+'.'+quSql.FieldbyName('CodSub').AsString+'.'+quSql.FieldbyName('CodPro').AsString);

                         DesRe2 := copy(Trim(quSql.FieldbyName('DesRe2').AsString),1,55);

                         imp(pLinha,016,DesRe2);
                         imp(pLinha,072,PreString(FormatFloat('###,##0.0000',quSql.FieldbyName('SldRe2').AsFloat),12));
                         imp(pLinha,085,PreString(FormatFloat('###,##0.0000',quSql.FieldbyName('VluRe2').AsFloat),12));
                         imp(pLinha,099,PreString(FormatFloat('##0.00',fRound(quSql.FieldbyName('DscRe2').AsFloat + quSql.FieldbyName('DspRe2').AsFloat,2)),06));
                         imp(pLinha,106,PreString(FormatFloat('##0.00',quSql.FieldbyName('PacRe2').AsFloat),06));
                         imp(pLinha,113,PreString(FormatFloat('###,##0.0000',quSql.FieldbyName('VlqRe2').AsFloat),12));

                         if Trim( quSQL.FieldbyName('ObsRe2').AsString ) <> '' then begin

                            Inc(pLinha);

                            imp(pLinha,016,Trim( quSql.FieldbyName('ObsRe2').AsString ));

                         end;

                         Ite_TotRe2 := fRound(quSql.FieldbyName('VlqRe2').AsFloat * quSql.FieldbyName('SldRe2').AsFloat,4);
                         Ite_TotCst := fRound(quSql.FieldbyName('VcsRe2').AsFloat * quSql.FieldbyName('SldRe2').AsFloat,4);
                         Ite_TotVen := fRound(quSql.FieldbyName('VlqRe2').AsFloat * quSql.FieldbyName('SldRe2').AsFloat,4);

                         Ite_TotGe2 := fRound(Ite_TotRe2 - Ite_TotDsr,2);

                         if PedResCodTip.Value = 1 then begin

                            {  Se o Tipo de Pedido for Diferente de Terceira Linha
                               Se a Padrao de Faturamento Indicar que Tributa o IPI no Pedido  }

                            if quSql.FieldbyName('TrbIpi').AsString = 'Sim' then begin

                               if quSql.FieldbyName('BasIpi').AsFloat > 0 then begin

                                  Ite_BasIpi := fRound(Ite_TotGe2 - (Ite_TotGe2 - ((Ite_TotGe2 * quSql.FieldbyName('BscIpi').AsFloat)/100)),2);

                                  if quSql.FieldbyName('RedIpi').AsFloat > 0 then Ite_BasIpi := fRound(Ite_BasIpi - (Ite_BasIpi - ((Ite_BasIpi * quSql.FieldbyName('RedIpi').AsFloat)/100)),2);

                                  Ite_TotIpi := fRound((Ite_BasIpi * quSql.FieldbyName('IpiRe2').AsFloat)/100,2);

                               end;
                            end;

                            Ite_TotGe2 := fRound(Ite_TotGe2 + Ite_TotIpi,2);

                         end;

                         imp(pLinha,126,PreString(FormatFloat('#,###,##0.00',Ite_TotRe2),12));

                         Ped_QtdIte := Ped_QtdIte + 1;
                         Ped_TotIpi := Ped_TotIpi + Ite_TotIpi;
                         Ped_TotCst := Ped_TotCst + Ite_TotCst;
                         Ped_TotRes := Ped_TotRes + Ite_TotRe2;
                         Ped_TotVen := Ped_TotVen + Ite_TotVen;
                         Ped_TotDsr := Ped_TotDsr + Ite_TotDsr;
                         Ped_TotDsc := Ped_TotDsc + Ite_TotDsc;
                         Ped_TotDsp := Ped_TotDsp + Ite_TotDsp;
                         Ped_TotDpl := Ped_TotDpl + Ite_TotDpl;
                         Ped_TotAcr := Ped_TotAcr + Ite_TotAcr;
                         Ped_TopDsc := Ped_TopDsc + quSql.FieldbyName('DscRe2').AsFloat;
                         Ped_TopCom := Ped_TopCom + quSql.FieldbyName('PcoRe2').AsFloat;
                         Ped_TopPrm := Ped_TopPrm + quSql.FieldbyName('DspRe2').AsFloat;

                         Inc(pLinha);

                         if pLinha > 61 then rdprint1.novapagina;

                      end;

                      quSQL.Next;

                end;

                Ped_MedDsc := fRound(Ped_TopDsc/Ped_QtdIte,2);
                Ped_MedCom := fRound(Ped_TopCom/Ped_QtdIte,2);
                Ped_MedPrm := fRound(Ped_TopPrm/Ped_QtdIte,2);

                Ped_TotGer := fRound(Ped_TotRes - Ped_TotDsr,2);

                if Ped_TotCst > 0 then
                   Ped_TotRen := fRound(((Ped_TotGer - Ped_TotCst) * 100)/Ped_TotCst,2)
                else
                   Ped_TotRen := 0;

                imp(pLinha,126,fReplicate('-',12));
                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                imp(pLinha,126,PreString(FormatFloat('#,###,##0.00',PedResSldGer.Value),12));

                Inc(pLinha);
                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                if GGUs_Id = 1 then begin

                   imp(pLinha,111,'Custo Total :');
                   imp(pLinha,126,PreString(FormatFloat('#,###,##0.00',Ped_TotCst),12));

                end;

                Inc(pLinha);
                Inc(pLinha);
                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                if GGUs_Id = 1 then begin

                   impf(pLinha,001,'Acrescimos            :  '+PreString(FormatFloat('##0.00',PedResMedAcr.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',Ped_TotAcr),12),[NORMAL, NEGRITO]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,'Desconto Comercial    :  '+PreString(FormatFloat('##0.00',Ped_MedDsc),6)+'(%) '+PreString(FormatFloat('###,##0.00',Ped_TotDsc),12),[NORMAL, NEGRITO]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,'Dsc. ICMS Obrigatorio :  '+PreString(FormatFloat('##0.00',PedResDscReg.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',PedResTotDsr.Value),12),[NORMAL, NEGRITO]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,'Desconto Comercial    :  '+PreString(FormatFloat('##0.00',PedResMedDco.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',PedResTotDco.Value),12),[NORMAL, NEGRITO]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,'Desc. Promocional     :  '+PreString(FormatFloat('##0.00',Ped_MedPrm),6)+'(%) '+PreString(FormatFloat('###,##0.00',Ped_TotDsp),12),[NORMAL, NEGRITO]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,'Margem                :  '+PreString(FormatFloat('##0.00',Ped_TotRen),6)+'(%) ',[NORMAL, NEGRITO]);
                   Inc(pLinha);

                end;

                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                impf(pLinha,001,'Total de Itens        : '+PreString(IntToStr(Ped_QtdIte),08),[NORMAL, NEGRITO]);
                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                impf(pLinha,001,fReplicate('-',80),[NORMAL]);
                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                impf(pLinha,001,'INFORMACOES ADICIONAIS:',[NORMAL, NEGRITO]);
                Inc(pLinha);
                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                impf(pLinha,001,'Cond. de Pagto.:',[NORMAL, NEGRITO]);
                impf(pLinha,031,'Prazo',[NORMAL, NEGRITO]);
                impf(pLinha,042,'Valor Parcela',[NORMAL, NEGRITO]);
                impf(pLinha,072,'Prazo',[NORMAL, NEGRITO]);
                impf(pLinha,083,'Valor Parcela',[NORMAL, NEGRITO]);

                Inc(pLinha);
                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                Ped_VlpCrp := fRound(PedResSldGer.Value/PedResQtpRes.Value,2);

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

                QtdCol := 31;
                PraMed := 0;

                while not quSQL.Eof do begin

                      impf(pLinha,QtdCol + 00,PreString(IntToStr(quSql.FieldbyName('PraRe3').AsInteger),5),[NORMAL, NEGRITO]);
                      impf(pLinha,QtdCol + 09,PreString(FormatFloat('###,###,##0.00',Ped_VlpCrp),14),[NORMAL, NEGRITO]);

                      if QtdCol = 31 then
                         QtdCol := QtdCol + 41
                      else
                         begin

                         QtdCol := 31;

                         pLinha := pLinha + 1;

                      end;

                      PraMed := PraMed + quSql.FieldbyName('PraRe3').AsInteger;

                      quSql.Next;

                      if pLinha > 61 then rdprint1.novapagina;

                end;

                pLinha := pLinha + 2;

                if pLinha > 61 then rdprint1.novapagina;

                PraMed := PraMed / StrToFloat(IntToStr(PedResQtpRes.Value));

                impf(pLinha,001,'Prazo Medio : '+FormatFloat('##0.00',PraMed)+' Dias',[NORMAL, NEGRITO]);

                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                impf(pLinha,001,fReplicate('-',80),[NORMAL]);

                Inc(pLinha);
                Inc(pLinha);                

                if pLinha > 61 then rdprint1.novapagina;

                if PedResCodTra.Value > 0 then begin

                   impf(pLinha,001,'Transportadora : '+preString(IntToStr(PedResCodTra.Value),7)+' - '+NomTra,[NORMAL, NEGRITO]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,'                 '+EndTr1,[NORMAL, NEGRITO]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,'                 '+EndTr2,[NORMAL, NEGRITO]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,'                 '+EndTr3,[NORMAL, NEGRITO]);

                   end
                else
                   impf(pLinha,001,'Transportadora : ',[NORMAL, NEGRITO]);

                Inc(pLinha);
                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                impf(pLinha,001,'Observacoes    : ',[NORMAL,NEGRITO]);
                impf(pLinha,030,copy(ObsRes,001,040),[NORMAL]);

                if Trim( copy(ObsRes,041,040) ) <> '' then begin

                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,030,copy(ObsRes,041,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,081,040) ) <> '' then begin

                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,030,copy(ObsRes,081,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,121,040) ) <> '' then begin

                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,030,copy(ObsRes,121,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,161,040) ) <> '' then begin

                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,030,copy(ObsRes,161,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,201,040) ) <> '' then begin

                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,030,copy(ObsRes,201,040),[NORMAL]);

                end;
             end;

             if sIpPro = 'S' then begin

                sCaber := '2';

                if sIpPed = 'S' then NovaPagina;

                with quSQL,SQL do begin

                     Close;
                     Text := ' Select PedRe2.CodEmp,'+
                             '        PedRe2.CodClp,'+
                             '        PedRe2.CodGru,'+
                             '        PedRe2.CodSub,'+
                             '        PedRe2.CodPro,'+
                             '        PedRe2.CodUnd,'+
                             '        PedRe2.SldRe2'+
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
                             '   and ((EstQte.QtdQte - (EstQte.QtrQte + EstQte.QtdRma)) - PedRe2.SldRe2) >= 0'+
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

                         impf(pLinha,001,quSql.FieldbyName('CodGru').AsString+'.'+quSql.FieldbyName('CodSub').AsString+'.'+quSql.FieldbyName('CodPro').AsString,[NORMAL]);

                         impf(pLinha,027,copy(Trim( DscPro ),1,40),[NORMAL]);

                         if fEncDecimal(quSql.FieldbyName('QtpRe2').AsFloat) > 0 then
                            impf(pLinha,097,Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('SldRe2').AsFloat),12),[NORMAL])
                         else
                            impf(pLinha,097,Prestring(FormatFloat('####,###,##0',quSql.FieldbyName('SldRe2').AsFloat),12),[NORMAL]);

                         impf(pLinha,118,'________',[NORMAL]);

                         impf(pLinha,134,Trim(quSQL.FieldbyName('CodUnd').AsString),[NORMAL]);

                         Inc(pLinha);

                         if Trim( NomMrc ) <> '' then begin

                            if Trim( NumPro ) <> '' then
                               impf(pLinha,027,Trim( NomMrc )+' - '+Trim( NumPro ),[NORMAL])
                            else
                               impf(pLinha,027,Trim( NomMrc ),[NORMAL]);

                            end
                         else
                            begin

                            if Trim( NumPro ) <> '' then impf(pLinha,027,Trim( NumPro ),[NORMAL]);

                         end;

                         Inc(pLinha);

                         if pLinha > 61 then rdprint1.novapagina;

                         quSQL.Next;

                   end;

                   Inc(pLinha);

                end;

                with quSQL,SQL do begin

                     Close;
                     Text := ' Select PedRe2.CodEmp,'+
                             '        PedRe2.CodClp,'+
                             '        PedRe2.CodGru,'+
                             '        PedRe2.CodSub,'+
                             '        PedRe2.CodPro,'+
                             '        PedRe2.CodUnd,'+
                             '        PedRe2.SldRe2'+
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
                             '   and ((EstQte.QtdQte - (EstQte.QtrQte + EstQte.QtdRma)) - PedRe2.SldRe2) < 0'+
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

                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   rdprint1.impf(pLinha,001,fReplicate('-',80),[NORMAL]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   rdprint1.impf(pLinha,001,'Produtos Abaixo do Estoque Disponivel',[NORMAL,NEGRITO]);
                   Inc(pLinha);

                   rdprint1.impf(pLinha,001,fReplicate('-',80),[NORMAL]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

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

                         impf(pLinha,001,quSql.FieldbyName('CodGru').AsString+'.'+quSql.FieldbyName('CodSub').AsString+'.'+quSql.FieldbyName('CodPro').AsString,[NORMAL]);

                         impf(pLinha,027,copy(Trim( DscPro ),1,40),[NORMAL]);

                         if fEncDecimal(quSql.FieldbyName('QtpRe2').AsFloat) > 0 then
                            impf(pLinha,097,Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('SldRe2').AsFloat),12),[NORMAL])
                         else
                            impf(pLinha,097,Prestring(FormatFloat('####,###,##0',quSql.FieldbyName('SldRe2').AsFloat),12),[NORMAL]);

                         impf(pLinha,118,'________',[NORMAL]);

                         impf(pLinha,134,Trim(quSQL.FieldbyName('CodUnd').AsString),[NORMAL]);

                         Inc(pLinha);

                         if Trim( NomMrc ) <> '' then begin

                            if Trim( NumPro ) <> '' then
                               impf(pLinha,027,Trim( NomMrc )+' - '+Trim( NumPro ),[NORMAL])
                            else
                               impf(pLinha,027,Trim( NomMrc ),[NORMAL]);

                            end
                         else
                            begin

                            if Trim( NumPro ) <> '' then impf(pLinha,027,Trim( NumPro ),[NORMAL]);

                         end;

                         Inc(pLinha);

                         if pLinha > 61 then rdprint1.novapagina;

                         quSQL.Next;

                   end;

                   Inc(pLinha);

                end;

                Inc(pLinha);
                rdprint1.impf(pLinha,001,fReplicate('-',80),[NORMAL]);
                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                impf(pLinha,001,'Total de Itens : '+PreString(IntToStr(PedResQtiRes.Value),08),[NORMAL, NEGRITO]);

                Inc(pLinha);
                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                if PedResCodTra.Value > 0 then begin

                   impf(pLinha,001,'Transportadora : '+preString(IntToStr(PedResCodTra.Value),7)+' - '+NomTra,[NORMAL, NEGRITO]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,'                 '+EndTr1,[NORMAL, NEGRITO]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,'                 '+EndTr2,[NORMAL, NEGRITO]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,'                 '+EndTr3,[NORMAL, NEGRITO]);

                   end
                else
                   impf(pLinha,001,'Transportadora : ',[NORMAL, NEGRITO]);

                Inc(pLinha);
                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                impf(pLinha,001,'Observacoes    : ',[NORMAL,NEGRITO]);
                impf(pLinha,030,copy(ObsRes,001,040),[NORMAL]);

                if Trim( copy(ObsRes,041,040) ) <> '' then begin

                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,030,copy(ObsRes,041,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,081,040) ) <> '' then begin

                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,030,copy(ObsRes,081,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,121,040) ) <> '' then begin

                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,030,copy(ObsRes,121,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,161,040) ) <> '' then begin

                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,030,copy(ObsRes,161,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,201,040) ) <> '' then begin

                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,030,copy(ObsRes,201,040),[NORMAL]);

                end;

                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                Inc(pLinha);

                if pLinha > 61 then rdprint1.novapagina;

                impf(pLinha,001,'Separado Por : ______________________ Conferido Por : ______________________',[NORMAL, NEGRITO]);

             end;

             Fechar;  {Finaliza e inicia impressao ou preview}

        end;
     end;
  end;
end;

procedure TfmManSld.bFinalizarClick(Sender: TObject);
var
DteRes : TDateTime;
CodEmp,NumRes : integer;
begin
  inherited;

  if PedResCodEmp.Value > 0 then begin

     try

        fmManFpe := TfmManFpe.Create(Self);

        fmManFpe.PedRes.Close;
        fmManFpe.PedRes.Params[0].AsInteger  := PedResCodEmp.Value;
        fmManFpe.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
        fmManFpe.PedRes.Params[2].AsInteger  := PedResNumRes.Value;
        fmManFpe.PedRes.Open;

        fmManFpe.ShowModal;

     finally

        FreeAndNil(fmManFpe);

     end;
     
     CodEmp := PedResCodEmp.Value;
     DteRes := PedResDteRes.Value;
     NumRes := PedResNumRes.Value;

     PedRes.Close;
     PedRes.Open;

     PedRes.Locate('CodEmp;DteRes;NumRes',VarArrayOf([CodEmp,DteRes,NumRes]),[LoPartialKey]);

  end;
end;

procedure TfmManSld.bAtualizarClick(Sender: TObject);
begin
  inherited;

  if GCodVen_Id > 0 then begin

     with PedRes,SQL do begin

          Close;
          Text := ' Select PedRes.*,'+
                  '        NomCli,'+
                  '        FormatCgcCpf(PedRes.CgcCli) as CgcCpf,'+
                  '        TextoOcor(PedRes.CodPfa,'''+ '-' +''',EstPfa.DsrPfa,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomPfa'+
                  ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
                  '             LEFT JOIN EstPfa ON (PedRes.CodPfa = EstPfa.CodPfa)'+
                  '                             AND (PedRes.TipPfa = EstPfa.TipPfa)'+
                  ' Where PedRes.SitRes = '''+ 'Parcialmente Faturado' +''''+
                  '   and PedRes.LibSld = '''+ 'Nao'                   +''''+
                  '   and PedRes.CodVen = '''+ IntToStr(GCodVen_Id)    +'''';

          if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then Text := Text + ' and PedRes.DteRes >= '''+fDateToSQL(EdPsqDteRes1.Date)+'''';
          if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then Text := Text + ' and PedRes.DteRes <= '''+fDateToSQL(EdPsqDteRes2.Date)+'''';

          Text := Text + ' Order by PedRes.NumRes';

          Open;       

     end;

     end
  else
     begin

     with PedRes,SQL do begin

          Close;
          Text := ' Select PedRes.*,'+
                  '        NomCli,'+
                  '        FormatCgcCpf(PedRes.CgcCli) as CgcCpf,'+
                  '        TextoOcor(PedRes.CodPfa,'''+ '-' +''',EstPfa.DsrPfa,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomPfa'+
                  ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
                  '             LEFT JOIN EstPfa ON (PedRes.CodPfa = EstPfa.CodPfa)'+
                  '                             AND (PedRes.TipPfa = EstPfa.TipPfa)'+
                  ' Where PedRes.SitRes = '''+ 'Parcialmente Faturado' +''''+
                  '   and PedRes.LibSld = '''+ 'Nao'                   +'''';

          if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then Text := Text + ' and PedRes.DteRes >= '''+fDateToSQL(EdPsqDteRes1.Date)+'''';
          if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then Text := Text + ' and PedRes.DteRes <= '''+fDateToSQL(EdPsqDteRes2.Date)+'''';

          Text := Text + ' Order by PedRes.NumRes';

          Open;

     end;
  end;
end;

procedure TfmManSld.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManSld.RDprint1NewPage(Sender: TObject; Pagina: Integer);
begin
  inherited;

  if sCaber = '1' then begin

     rdprint1.impf(01,001,'GERENCIA (PD)',[EXPANDIDO, NORMAL]);

     if PedResPedAnt.Value = 'Nao' then
        rdprint1.impf(02,001,'Entregar em '+DateToStr(PedResDtfRes.Value),[EXPANDIDO, NORMAL])
     else
        rdprint1.impf(02,001,'Entregar em '+DateToStr(PedResDtfRes.Value)+ ' - ANTECIPADO',[EXPANDIDO, NORMAL]);

     rdprint1.impf(03,001,fReplicate('-',80),[NORMAL]);
     rdprint1.impf(04,001,'Pedido       : '+preString(IntToStr(PedResNumRes.Value),7)+' - '+NomTip,[NORMAL, NEGRITO]);
     rdprint1.impf(04,075,'Data : '+DateToStr(PedResDteRes.Value),[NORMAL]);
     rdprint1.impf(04,111,'Hora : '+PedResHreRes.Value,[NORMAL]);
     rdprint1.impf(05,001,'Vendedor     : '+preString(IntToStr(PedResCodVen.Value),7)+' - '+NomVen,[NORMAL]);
     rdprint1.impf(06,001,'Cliente      : '+preString(IntToStr(PedResCodCli.Value),7)+' - '+copy(NomCli,1,40),[NORMAL, NEGRITO]);
     rdprint1.impf(06,120,PedResUfeRes.Value,[EXPANDIDO, NORMAL]);
     rdprint1.impf(07,001,'Entrega      : '+EndEn1,[NORMAL]);
     rdprint1.impf(08,001,'               '+EndEn2,[NORMAL]);

     if Trim( PedResCgcCli.Value ) <> '' then begin

        if Length( Trim(PedResCgcCli.Value) ) > 11 then
           rdprint1.impf(09,001,'CNPJ         : '+PedResCgcCpf.Value,[NORMAL, NEGRITO])
        else
           rdprint1.impf(09,001,'CPF          : '+PedResCgcCpf.Value,[NORMAL, NEGRITO]);

        end
     else
        rdprint1.impf(09,001,'CNPJ/CPF     : ',[NORMAL, NEGRITO]);

     rdprint1.impf(09,114,'Pagina No. '+fNumZeros(IntToStr(Pagina),3),[NORMAL]);

     rdprint1.impf(10,001,fReplicate('-',80),[NORMAL]);
     rdprint1.impf(11,001,'Nosso Codigo',[comp17]);
     rdprint1.imp(11,016,'Descricao');
     rdprint1.imp(11,078,'Quant');
     rdprint1.imp(11,086,'Preco Bruto');
     rdprint1.imp(11,099,'% Desc');
     rdprint1.imp(11,106,'% Acrs');
     rdprint1.imp(11,116,'Preco Liq');
     rdprint1.imp(11,128,'Total Item');
     rdprint1.imp(12,001,fReplicate('-',14));
     rdprint1.imp(12,016,fReplicate('-',55));
     rdprint1.imp(12,072,fReplicate('-',12));
     rdprint1.imp(12,085,fReplicate('-',12));
     rdprint1.imp(12,099,fReplicate('-',06));
     rdprint1.imp(12,106,fReplicate('-',06));
     rdprint1.imp(12,113,fReplicate('-',12));
     rdprint1.imp(12,126,fReplicate('-',12));

     pLinha := 13;

     end
  else
     begin

     rdprint1.impf(01,001,'DEPOSITO',[EXPANDIDO, NORMAL]);

     if PedResPedAnt.Value = 'Nao' then
        rdprint1.impf(02,001,'Entregar em '+DateToStr(PedResDtfRes.Value),[EXPANDIDO, NORMAL])
     else
        rdprint1.impf(02,001,'Entregar em '+DateToStr(PedResDtfRes.Value)+ ' - ANTECIPADO',[EXPANDIDO, NORMAL]);

     rdprint1.impf(02,114,'Pagina No. '+fNumZeros(IntToStr(Pagina),3),[NORMAL]);

     rdprint1.impf(03,001,fReplicate('-',80),[NORMAL]);
     rdprint1.impf(04,001,'Pedido       : '+preString(IntToStr(PedResNumRes.Value),7),[NORMAL, NEGRITO]);
     rdprint1.impf(04,075,'Data : '+DateToStr(PedResDteRes.Value),[NORMAL]);
     rdprint1.impf(04,111,'Hora : '+PedResHreRes.Value,[NORMAL]);
     rdprint1.impf(05,001,'Vendedor     : '+preString(IntToStr(PedResCodVen.Value),7)+' - '+NomVen,[NORMAL]);
     rdprint1.impf(06,001,'Cliente      : '+preString(IntToStr(PedResCodCli.Value),7)+' - '+copy(NomCli,1,40),[NORMAL, NEGRITO]);
     rdprint1.impf(06,120,PedResUfeRes.Value,[EXPANDIDO, NORMAL]);
     rdprint1.impf(07,001,'Entrega      : '+EndEn1,[NORMAL]);
     rdprint1.impf(08,001,'               '+EndEn2,[NORMAL]);

     rdprint1.impf(09,001,fReplicate('-',80),[NORMAL]);
     rdprint1.impf(10,001,'Nosso Codigo',[NORMAL]);
     rdprint1.impf(10,027,'Descricao',[NORMAL]);
     rdprint1.impf(10,109,'Quant',[NORMAL]);
     rdprint1.impf(10,119,'Separado',[NORMAL]);
     rdprint1.impf(10,134,'UN',[NORMAL]);
     rdprint1.impf(11,001,fReplicate('-',14),[NORMAL]);
     rdprint1.impf(11,027,fReplicate('-',40),[NORMAL]);
     rdprint1.impf(11,097,fReplicate('-',12),[NORMAL]);
     rdprint1.impf(11,118,fReplicate('-',09),[NORMAL]);
     rdprint1.impf(11,134,fReplicate('-',02),[NORMAL]);

     pLinha := 12;

  end;
end;

procedure TfmManSld.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManSld := nil;
end;

procedure TfmManSld.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if PedResCodCli.Value > 0 then
     pnNomCli.Caption := ' Cliente ' + FNumZeros(IntToStr(PedResCodCli.Value),7)+ ' - ' + PedResNomCli.Value
  else
     pnNomCli.Caption := ' Cliente ';

  if PedResCodEmp.Value > 0 then
     pnDteRes.Caption := ' Emitido Em ' + DateToStr(PedResDteRes.Value)
  else
     pnDteRes.Caption := ' Emitido Em ';
     
end;

end.

