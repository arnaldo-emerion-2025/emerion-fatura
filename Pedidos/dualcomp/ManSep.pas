unit ManSep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxDBELib, dxColorEdit;

type
  TfmManSep = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label2: TLabel;
    Bevel2: TBevel;
    grRes: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    quSql: TwwQuery;
    Panel1: TPanel;
    EdPsqNumRes: TdxColorEdit;
    bExcluir: TSpeedButton;
    pnDteRes: TPanel;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
    PedResNUMRES: TIntegerField;
    PedResTOTGER: TFloatField;
    PedResSLDGER: TFloatField;
    bImprimir: TSpeedButton;
    RDprint1: TRDprint;
    pnImpresso: TPanel;
    UpRes: TUpdateSQL;
    PedRe2: TwwQuery;
    PedRe2DSCPRO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    DsRe2: TwwDataSource;
    grRe2: ThGrid;
    bIncluir: TSpeedButton;
    bAtualizar: TBitBtn;
    pnApeTra: TPanel;
    pnQtdReg: TPanel;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResTOTRES: TFloatField;
    PedResTOTIPI: TFloatField;
    PedResAPETRA: TStringField;
    PedResFLGIMP: TStringField;
    PedResCODVEN: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResCODTRA: TIntegerField;
    PedResCODFIL: TIntegerField;
    PedResLANEST: TStringField;
    PedResQTIRES: TIntegerField;
    PedResQTPRES: TIntegerField;
    PedResFLGSLD: TStringField;
    PedResQTDIMP: TIntegerField;
    PedResSITRES: TStringField;
    PedResPEDANT: TStringField;
    PedResDTFRES: TDateTimeField;
    PedResHRERES: TStringField;
    PedResUFERES: TStringField;
    quSQL1: TwwQuery;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2NRORE2: TIntegerField;
    PedRe2SLDRE2: TFloatField;
    PedResCODATD: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTIPPFA: TStringField;
    PedResDSRPFA: TStringField;
    PedResNOMCLI: TStringField;
    PedResNOMPFA: TStringField;
    PedResCLIENTE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure batualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure CountRegistros;
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure PedResNOMPFAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure PedResCLIENTEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    {Private declarations}
    Linha   : Integer;
    sBase   : string;
    GImpRef : string;
    GImpLoc : string;
    GImpMrc : string;
    GImpTra : string;
    GImpObs : string;
    GImpFin : string;
  public
    {Public declarations}
    DteRes : TDateTime;
    CodEmp,NumRes,SeqLib : integer;
  end;

var
  NomTra   : string;
  EndTr1   : string;
  EndTr2   : string;
  EndTr3   : string;
  NomVen   : string;
  NomAtd   : string;
  NomCli   : string;
  EndEn1   : string;
  EndEn2   : string;
  EndEn3   : string;  
  fmManSep : TfmManSep;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, AuxPsq;

{$R *.DFM}

procedure TfmManSep.CountRegistros;
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select Count(*) as QtdReg From PedRes'+
               ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Separacao de Estoque');

       if CodEmp > 0 then begin

          Text := Text + ' and PedRes.CodEmp = '+ QuotedStr(IntToStr(CodEmp));
          Text := Text + ' and PedRes.DteRes = '+ QuotedStr(fDateToSQL(DteRes));
          Text := Text + ' and PedRes.NumRes = '+ QuotedStr(IntToStr(NumRes));

       end;

       Open;

       if FieldbyName('QtdReg').AsInteger > 0 then
          pnQtdReg.Caption := IntToStr(FieldbyName('QtdReg').AsInteger)+' Pedido(s)'
       else
          pnQtdReg.Caption := '0 Pedido(s)';
          
  end;

  CodEmp := 0;
  NumRes := 0;

end;

procedure TfmManSep.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

  if key = 117 then bExcluir.OnClick(Sender);

end;

procedure TfmManSep.FormShow(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.CodEmp,'+
           '        PedRes.DteRes,'+
           '        PedRes.NumRes,'+
           '        PedRes.UfeRes,'+
           '        PedRes.HreRes,'+
           '        PedRes.DtfRes,'+
           '        PedRes.CodPfa,'+
           '        PedRes.TipPfa,'+
           '        PedRes.CodVen,'+
           '        PedRes.CodAtd,'+
           '        PedRes.CodCli,'+
           '        PedRes.CodTra,'+
           '        PedRes.CodFil,'+
           '        PedRes.LanEst,'+
           '        PedRes.QtiRes,'+
           '        PedRes.QtpRes,'+
           '        PedRes.QtdImp,'+
           '        PedRes.FlgSld,'+
           '        PedRes.TotRes,'+
           '        PedRes.TotIpi,'+
           '        PedRes.TotGer,'+
           '        PedRes.SldGer,'+
           '        PedRes.FlgImp,'+
           '        PedRes.PedAnt,'+
           '        PedRes.SitRes,'+
           '        FinTra.ApeTra,'+
           '        EstPfa.DsrPfa,'+
           '        FinCli.NomCli'+
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           '             LEFT JOIN FinTra ON (PedRes.CodTra = FinTra.CodTra)'+
           '             LEFT JOIN EstPfa ON (PedRes.CodPfa = EstPfa.CodPfa '+
           '                             AND  PedRes.TipPfa = EstPfa.TipPfa)'+
           ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Separacao de Estoque');

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;

  with PedRes,SQL do begin

       Close;
       Text := sBase + ' Order by PedRes.NumRes';
       Open;

  end;

  CountRegistros;

  with quSQL,SQL do begin

       Close;
       Text := ' Select UsaDec From PedPar';
       Open;

       if FieldbyName('UsaDec').AsString = 'Sim' then
          PedRe2SldRe2.DisplayFormat := '###,###,##0.0000'
       else
          PedRe2SldRe2.DisplayFormat := '###,###,##0';

  end;

  EdPsqNumRes.SetFocus;

end;

procedure TfmManSep.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSep.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManSep.bImprimirClick(Sender: TObject);
var
PraMed,VlpCrp : real;
NomMrc,NumPro,DscPro,RefPro : string;
Coluna,CodMrc,QtdCol,CodEit : integer;
TenCli,EndCli,NumCli,BaiCli,CidCli,UfeCli,CepCli,ObsRes,NomEnt : string;
begin
  inherited;
  if PedResCodEmp.Value > 0 then begin

     CodEmp := PedResCodEmp.Value;
     DteRes := PedResDteRes.Value;
     NumRes := PedResNumRes.Value;

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  '   and PedRes.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                  '   and PedRes.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                  '   and PedRes.NumRes = '+ QuotedStr(IntToStr(NumRes))   ;
          Open;

     end;

     CountRegistros;

     if PedResCodEmp.Value > 0 then begin

        if fMsg('Imprime via de Separação dos Itens em Estoque ?','O') then begin

           CodEit := PedResCodEmp.Value;

           if PedResLanEst.Value = 'Sim' then begin

              if PedResCodFil.Value > 0 then CodEit := PedResCodFil.Value

           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Select ImpRef,ImpLoc,ImpMrc,ImpTra,ImpObs,ImpFin From PedPar';
                Open;

                GImpRef := FieldbyName('ImpRef').AsString;
                GImpLoc := FieldbyName('ImpLoc').AsString;
                GImpMrc := FieldbyName('ImpMrc').AsString;
                GImpTra := FieldbyName('ImpTra').AsString;
                GImpObs := FieldbyName('ImpObs').AsString;
                GImpFin := FieldbyName('ImpFin').AsString;

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
                        ' Where PedRes.CodEmp = :CodEmp'+
                        '   and PedRes.DteRes = :DteRes'+
                        '   and PedRes.NumRes = :NumRes';

                with Params do begin

                     Params[0].AsInteger  := PedResCodEmp.Value;
                     Params[1].AsDateTime := PedResDteRes.Value;
                     Params[2].AsInteger  := PedResNumRes.Value;

                end;

                Open;

                NomEnt := FieldbyName('NomEnt').AsString;
                TenCli := FieldbyName('TenCli').AsString;
                EndCli := FieldbyName('EndCli').AsString;
                NumCli := FieldbyName('NumCli').AsString;
                BaiCli := FieldbyName('BaiCli').AsString;
                CidCli := FieldbyName('CidCli').AsString;
                UfeCli := FieldbyName('UfeCli').AsString;
                CepCli := FieldbyName('CepCli').AsString;
                ObsRes := FieldbyName('ObsRes').AsString;

           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Select FinVen.ApeVen From FinVen'+
                        ' Where FinVen.CodVen = '''+IntToStr(PedResCodVen.Value)+'''';
                Open;

                NomVen := FieldbyName('ApeVen').AsString;

           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Select FinAtd.ApeAtd From FinAtd'+
                        ' Where FinAtd.CodAtd = '''+IntToStr(PedResCodAtd.Value)+'''';
                Open;

                NomAtd := FieldbyName('ApeAtd').AsString;

           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Select NomCli From FinCli'+
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

           EndEn1 := Trim( NomEnt );

           if Trim( TenCli ) <> '' then
              EndEn2 := Trim( TenCli )+ ' ' +Trim( EndCli )
           else
              EndEn2 := Trim( EndCli );

           if Trim( NumCli ) <> '' then EndEn2 := EndEn2+ ', '+Trim( NumCli );

           if Trim( BaiCli ) <> '' then EndEn2 := EndEn2+ ' Bairro '+Trim( BaiCli );
              
           EndEn3 := 'Cidade ' +Trim( CidCli )+ ' UF ' +UfeCli;

           if Trim( CepCli ) <> '' then EndEn3 := EndEn3 + ' Cep: ' +copy(CepCli,1,5)+ '-' +copy(CepCli,6,3);

           rdprint1.OpcoesPreview.Preview     := False;
           rdprint1.OpcoesPreview.PreviewZoom := 100;
           rdprint1.TamanhoQteLPP             := seis;
           rdprint1.UsaGerenciadorImpr        := True;

           rdprint1.TamanhoQteColunas  := 136;
           rdprint1.FonteTamanhoPadrao := s17cpp;

           {Inicio...}
           with rdprint1 do begin

                abrir; {inicializa o arquivo de impressao...}

                if setup then begin {abre tela para escolha da impressora e modelo...}

                   with quSQL,SQL do begin

                        Close;
                        Text := ' Select PedRe2.CodEmp,'+
                                '        PedRe2.CodClp,'+
                                '        PedRe2.CodGru,'+
                                '        PedRe2.CodSub,'+
                                '        PedRe2.CodPro,'+
                                '        PedRe2.CodUnd,'+
                                '        PedRe2.RefRe2,'+                                
                                '        PedRe2.SldRe2,'+
                                '        EstPro.LocPro '+
                                ' From PedRe2,EstQte,EstPro'+
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
                                '   and EstQte.CodClp = EstPro.CodClp'+
                                '   and EstQte.CodGru = EstPro.CodGru'+
                                '   and EstQte.CodSub = EstPro.CodSub'+
                                '   and EstQte.CodPro = EstPro.CodPro'+
                                '   and (EstQte.QtdQte - (EstQte.QtrQte + EstQte.QtdRma)) >= 0';

                        if Trim(GImpLoc) = 'Sim' then
                           Text := Text + ' Order by EstPro.LocPro'
                        else
                           Text := Text + ' Order by PedRe2.CodGru,PedRe2.CodSub,PedRe2.CodPro';

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
                                         '        EstPro.RefPro,'+
                                         '        EstPro.DscPro '+
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
                                 RefPro := FieldbyName('RefPro').AsString;
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

                            if Trim(GImpRef) = 'Sim' then
                               impf(Linha,001,copy(Trim(RefPro),1,14),[NORMAL])
                            else
                               impf(Linha,001,quSql.FieldbyName('CodGru').AsString+'.'+quSql.FieldbyName('CodSub').AsString+'.'+quSql.FieldbyName('CodPro').AsString,[NORMAL]);

                            impf(Linha,027,copy(Trim( DscPro ),1,40),[NORMAL]);

                            if fEncDecimal(quSql.FieldbyName('SldRe2').AsFloat) > 0 then
                               impf(Linha,097,Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('SldRe2').AsFloat),12),[NORMAL])
                            else
                               impf(Linha,097,Prestring(FormatFloat('####,###,##0',quSql.FieldbyName('SldRe2').AsFloat),12),[NORMAL]);

                            impf(Linha,118,'________',[NORMAL]);

                            impf(Linha,134,Trim(quSQL.FieldbyName('CodUnd').AsString),[NORMAL]);

                            Inc(Linha);

                            if Trim(GImpLoc) = 'Sim' then begin

                              impf(Linha,027,Trim( quSQL.FieldbyName('LocPro').AsString ),[NORMAL]);

                              Inc(Linha);

                            end;

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
                                '        PedRe2.RefRe2,'+
                                '        PedRe2.SldRe2,'+
                                '        EstPro.LocPro '+                                
                                ' From PedRe2,EstQte,EstPro'+
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
                                '   and EstQte.CodClp = EstPro.CodClp'+
                                '   and EstQte.CodGru = EstPro.CodGru'+
                                '   and EstQte.CodSub = EstPro.CodSub'+
                                '   and EstQte.CodPro = EstPro.CodPro'+
                                '   and (EstQte.QtdQte - (EstQte.QtrQte + EstQte.QtdRma)) < 0';

                        if Trim(GImpLoc) = 'Sim' then
                           Text := Text + ' Order by EstPro.LocPro'
                        else
                           Text := Text + ' Order by PedRe2.CodGru,PedRe2.CodSub,PedRe2.CodPro';

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
                                         '        EstPro.RefPro,'+
                                         '        EstPro.DscPro '+
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
                                 RefPro := FieldbyName('RefPro').AsString;
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

                            if Trim(GImpRef) = 'Sim' then
                               impf(Linha,001,copy(Trim(RefPro),1,14),[NORMAL])
                            else
                               impf(Linha,001,quSql.FieldbyName('CodGru').AsString+'.'+quSql.FieldbyName('CodSub').AsString+'.'+quSql.FieldbyName('CodPro').AsString,[NORMAL]);

                            impf(Linha,027,copy(Trim( DscPro ),1,40),[NORMAL]);

                            if fEncDecimal(quSql.FieldbyName('SldRe2').AsFloat) > 0 then
                               impf(Linha,097,Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('SldRe2').AsFloat),12),[NORMAL])
                            else
                               impf(Linha,097,Prestring(FormatFloat('####,###,##0',quSql.FieldbyName('SldRe2').AsFloat),12),[NORMAL]);

                            impf(Linha,118,'________',[NORMAL]);

                            impf(Linha,134,Trim(quSQL.FieldbyName('CodUnd').AsString),[NORMAL]);

                            Inc(Linha);

                            if Trim(GImpLoc) = 'Sim' then begin

                              impf(Linha,027,Trim( quSql.FieldbyName('LocPro').AsString ),[NORMAL]);

                              Inc(Linha);

                            end;

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
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'                 '+EndTr1,[NORMAL, NEGRITO]);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'                 '+EndTr2,[NORMAL, NEGRITO]);
                      Inc(Linha);

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

                   Inc(Linha);
                   Inc(Linha);
                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Qtde Volume(s) : ____________________ Peso Liquido  : ______________________',[NORMAL, NEGRITO]);

                   Inc(Linha);

                   Fechar;  {Finaliza e inicia impressao ou preview}

                end;
           end;

           if fMsg('Via de Separação Impressa Corretamente ?','O') then begin

              CodEmp := PedResCodEmp.Value;
              DteRes := PedResDteRes.Value;
              NumRes := PedResNumRes.Value;

              PedRes.Edit;

              PedResFlgSld.Value := '*';

              PedResQtdImp.Value := PedResQtdImp.Value + 1;

              PedResFlgImp.Value := 'Sim';

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

              PedRes.Locate('CodEmp;DteRes;NumRes',VarArrayOf([CodEmp,DteRes,NumRes]),[LoPartialKey]);

           end;
        end;
     end;   
   end;
end;

procedure TfmManSep.bIncluirClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedResCodEmp.Value > 0 then begin

        if PedResFlgImp.Value = 'Sim' then begin

           if fMsg('Confirma Liberação da Separacao do Pedido para Faturamento ?','O') then begin

              CodEmp := PedResCodEmp.Value;
              DteRes := PedResDteRes.Value;
              NumRes := PedResNumRes.Value;

              with PedRes,SQL do begin

                   Close;
                   Text := sBase +
                           '   and PedRes.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                           '   and PedRes.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                           '   and PedRes.NumRes = '+ QuotedStr(IntToStr(NumRes))   ;
                   Open;

              end;

              CountRegistros;

              PedRes.Edit;

              PedResSitRes.Value := 'Aguardando Liberacao para Faturamento';

              with PedRes do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

                      PedRes.Close;
                      PedRes.Open;

                      PedRes.Locate('CodEmp;DteRes;NumRes',VarArrayOf([CodEmp,DteRes,NumRes]),[LoPartialKey]);

                      grRes.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              EdPsqNumRes.Text := '';

              with PedRes,SQL do begin

                   Close;
                   Text := sBase + ' Order by PedRes.NumRes';
                   Open;

              end;

              CountRegistros;

           end;

           end
        else
           fmsgErro('Operação não Pode ser Realizada. Via para Separação do Pedido não Impressa.',Nil);

     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManSep.bExcluirClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedResCodEmp.Value > 0 then begin

        if fMsg('Confirma Retorno do Pedido para o Vendedor ?','O') then begin

           CodEmp := PedResCodEmp.Value;
           DteRes := PedResDteRes.Value;
           NumRes := PedResNumRes.Value;

           with PedRes,SQL do begin

                Close;
                Text := sBase +
                        '   and PedRes.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                        '   and PedRes.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                        '   and PedRes.NumRes = '+ QuotedStr(IntToStr(NumRes))   ;
                Open;

           end;

           CountRegistros;

           PedRes.Edit;

           PedResSitRes.Value := 'Aguardando Complemento';

           with PedRes do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

                   PedRes.Close;
                   PedRes.Open;

                   PedRes.Locate('CodEmp;DteRes;NumRes',VarArrayOf([CodEmp,DteRes,NumRes]),[LoPartialKey]);

                   grRes.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           EdPsqNumRes.Text := '';

           with PedRes,SQL do begin

                Close;
                Text := sBase + ' Order by PedRes.NumRes';
                Open;

           end;

           CountRegistros;

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManSep.batualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNumRes.Text ) <> '' then begin

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  '   and PedRes.NumRes = '+ QuotedStr(EdPsqNumRes.Text) +
                  ' Order by PedRes.NumRes';
          Open;

     end;
     
     if PedResCodEmp.Value > 0 then begin

        CodEmp := PedResCodEmp.Value;
        DteRes := PedResDteRes.Value;
        NumRes := PedResNumRes.Value;

     end;

     CountRegistros;

     end
  else
     begin

     with PedRes,SQL do begin

          Close;
          Text := sBase + ' Order by PedRes.NumRes';
          Open;

     end;

     CountRegistros;

  end;
end;

procedure TfmManSep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManSep.RDprint1NewPage(Sender: TObject; Pagina: Integer);
begin
  inherited;

  Linha := 1;
  
  if PedResQtdImp.Value <= 1 then
     rdprint1.impf(Linha,001,'DEPOSITO',[EXPANDIDO, NORMAL])
  else
     rdprint1.impf(Linha,001,'DEPOSITO - IMPRESSAO JA REALIZADA',[EXPANDIDO, NORMAL]);

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

procedure TfmManSep.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManSep := nil;
end;

procedure TfmManSep.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnApeTra.Caption := PedResApeTra.Value;

  if PedResFlgImp.Value = 'Sim' then
     pnImpresso.Caption := 'Impresso'
  else
     pnImpresso.Caption := 'Nao Impresso';

  if PedResCodEmp.Value > 0 then
     pnDteRes.Caption := ' Emitido Em ' + DateToStr(PedResDteRes.Value)
  else
     pnDteRes.Caption := ' Emitido Em ';
     
end;

procedure TfmManSep.PedResNOMPFAGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if PedResCodEmp.Value > 0 then
     Text := PedResCodPfa.Value+ ' - ' +PedResDsrPfa.Value
  else
     Text := ' ';
end;

procedure TfmManSep.PedResCLIENTEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if PedResCodEmp.Value > 0 then
     Text := IntToStr(PedResCodCli.Value)+ ' - ' +PedResNomCli.Value
  else
     Text := ' ';
end;

end.

