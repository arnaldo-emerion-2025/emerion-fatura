unit ManE17;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery;

type
  TfmManE17 = class(TForm)
    RLReport1: TRLReport;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLBand2: TRLBand;
    RLBand6: TRLBand;
    RLLabel1: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    FinCre: TwwQuery;
    FinCreCODEMP: TIntegerField;
    FinCreCODCLI: TIntegerField;
    FinCreNUMCRE: TFloatField;
    FinCreDTECRE: TDateTimeField;
    FinCreVLPCRP: TFloatField;
    FinCrePRACRP: TIntegerField;
    FinCreDTVCRP: TDateTimeField;
    FinCreDULCRP: TDateTimeField;
    FinCreTOTCRP: TFloatField;
    FinCreVJPCRP: TFloatField;
    FinCreVDSCRP: TFloatField;
    FinCreVLSCRP: TFloatField;
    FinCreOSCCRP: TFloatField;
    FinCreATRCRP: TFloatField;
    FinCreFLRCRP: TStringField;
    FinCreCODVEN: TIntegerField;
    FinCreTOTCRE: TFloatField;
    FinCreFLPCRP: TStringField;
    FinCreFLGDEV: TStringField;
    FinCreFLGDEL: TStringField;
    FinCreFLGCAR: TStringField;
    FinCreFLGPRO: TStringField;
    FinCreFLGINC: TStringField;
    FinCreNOSNUM: TStringField;
    DsCre: TwwDataSource;
    quSql: TwwQuery;
    FinCreNUMCRP: TIntegerField;
    FinCreQTPCRE: TIntegerField;
    FinCreCODBAN: TIntegerField;
    FinCreNOMBAN: TStringField;
    qrMod: TwwQuery;
    RLSubDetail1: TRLSubDetail;
    RLBand9: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBTxtNumCre: TRLDBText;
    ppNumCrp: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    ppNomBan: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBTxtDulCrp: TRLDBText;
    RLDBTxtTotCrp: TRLDBText;
    ppAtrCrp: TRLLabel;
    RLDBTxtVjpCrp: TRLDBText;
    RLDBTxtVdsCrp: TRLDBText;
    ppVlsCrp: TRLLabel;
    RLBand4: TRLBand;
    RLLabel19: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel20: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel35: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    ppTotAber: TRLLabel;
    ppTotChe: TRLLabel;
    ppTotInc: TRLLabel;
    ppQtdAber: TRLLabel;
    ppTotAtr: TRLLabel;
    ppQtdAtr: TRLLabel;
    ppIniPsq: TRLLabel;
    ppQtdMes: TRLLabel;
    ppDesPer: TRLLabel;
    RLDBResult5: TRLDBResult;
    ppDMaior: TRLLabel;
    RLDBResult6: TRLDBResult;
    ppDMenor: TRLLabel;
    ppTotUlt: TRLLabel;
    ppDUltimo: TRLLabel;
    ppMedCli: TRLLabel;
    RLDBResult7: TRLDBResult;
    ppMedAtr: TRLLabel;
    ppQtdInc: TRLLabel;
    RLLabel36: TRLLabel;
    ppRecCli: TRLLabel;
    RLBand8: TRLBand;
    RLLabel34: TRLLabel;
    ppTexto1: TRLMemo;
    ppTexto2: TRLMemo;
    ppTexto3: TRLMemo;
    RLDraw1: TRLDraw;
    RLLabel17: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel18: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    ppCodCli: TRLLabel;
    ppNomCli: TRLLabel;
    ppCgcCli: TRLLabel;
    ppCodVen: TRLLabel;
    ppApeVen: TRLLabel;
    RLLabel47: TRLLabel;
    ppFonCli: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    ppLimCli: TRLLabel;
    ppCliDev: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel61: TRLLabel;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLDetailGrid1AfterPrint(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    TotUlt     : real;
    TotRec     : real;
    TotAtr     : real;
    TotSld     : real;
    TotInc     : real;
    DteSer     : TDateTime;
    TotAber    : real;
    TotMaior   : real;
    TotMenor   : real;
    QtdInc     : integer;
    QtdAber    : integer;
    PraAtr     : integer;
    CliPsq     : string;
    SeqArq     : string;
    DatInPsq   : string;
    DatFiPsq   : string;
    DatMenor   : string;
    DatMaior   : string;
    DatUltimo  : string;
    QtdAtr_Abe : integer;
    QtdAtr_Ger : integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE17: TfmManE17;

implementation

uses Bbgeral, ManGDB, SendMailOptions, Bbfuncao;

{$R *.DFM}

procedure TfmManE17.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE17.RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  TotMod : real;
  TotPer : real;
begin
  if Trim( CliPsq ) = '' then begin

     CliPsq := IntToStr(FinCreCodCli.Value);

     ppTexto1.Lines.Clear;
     ppTexto2.Lines.Clear;
     ppTexto3.Lines.Clear;

     if TotRec > 0 then begin

        TotMod := 0;
        TotPer := 0;

        qrMod.First;

        while not qrMod.Eof do begin

              if qrMod.FieldbyName('TotMod').AsFloat > 0 then begin

                 ppTexto1.Lines.Add(fNumZeros(IntToStr(qrMod.FieldbyName('CodMod').AsInteger),3)+' - '+copy(qrMod.FieldByName('NomMod').AsString,1,40));
                 ppTexto2.Lines.Add(FormatFloat('###,###,##0.00',qrMod.FieldbyName('TotMod').AsFloat));
                 ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',fRound((qrMod.FieldbyName('TotMod').AsFloat * 100)/TotRec,2))+' %');

                 TotMod := TotMod + qrMod.FieldbyName('TotMod').AsFloat;
                 TotPer := TotPer + fRound((qrMod.FieldbyName('TotMod').AsFloat * 100)/TotRec,2);

              end;

              qrMod.Next;

        end;

        ppTexto1.Lines.Add(' ');
        ppTexto2.Lines.Add(' ');
        ppTexto3.Lines.Add(' ');

        ppTexto1.Lines.Add(' ');
        ppTexto2.Lines.Add(FormatFloat('###,###,##0.00',TotMod));
        ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',TotPer)+' %');

     end;
  end;
end;

procedure TfmManE17.FormCreate(Sender: TObject);
var
  sFiltro,sBase,sOrdem : string;
begin

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
            copy(TimeToStr(Time),1,2)+
            copy(TimeToStr(Time),4,2)+
            copy(TimeToStr(Time),7,2)+
            FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
            FNumZeros(Trim( IntToStr(Random(50000)) ),5);

  CliPsq := '';
  
  with quSQL,SQL do begin

       Close;
       Text := ' Select Cast('+ QuotedStr('Today') +' as Date) as DteSer From rdb$database';
       Open;

       DteSer := StrToDate(FieldbyName('DteSer').AsString);

  end;

  sBase := ' Select FinCrp.CodEmp,'+
           '        FinCrp.NumCre,'+
           '        FinCrp.NumCrp,'+
           '        FinCrp.NosNum,'+
           '        FinCrp.DteCre,'+
           '        FinCrp.DtvCrp,'+
           '        FinCrp.DulCrp,'+
           '        FinCrp.VlpCrp,'+
           '        FinCrp.TotCrp,'+
           '        FinCrp.DulCrp - FinCrp.DtvCrp as AtrCrp,'+
           '        Round(FinCrp.TotCrp - FinCrp.VppCrp,2) as OscCrp,'+
           '        FinCrp.PraCrp,'+
           '        FinCrp.FlrCrp,'+
           '        FinCre.CodCli,'+
           '        FinCrp.FlpCrp,'+
           '        FinCrp.FlgInc,'+
           '        FinCrp.CodBan,'+
           '        FinBan.NomBan,'+
           '        FinCre.CodVen,'+
           '        FinCre.QtpCre,'+           
           '        FinCre.TotCre,'+
           '        FinCrp.VlsCrp,'+
           '        Round(FinCrp.VjpCrp + FinCrp.VtpCrp,2) as VjpCrp,'+
           '        FinCrp.VdsCrp,'+
           '        FinCre.FlgDev,'+
           '        FinCre.FlgDel,'+
           '        FinCrp.FlgCar,'+
           '        FinCrp.FlgPro '+
           ' From FinCrp,FinCre,FinBan,FinCli,GerEmp'+
           ' Where FinCrp.CodEmp = FinCre.CodEmp'+
           '   and FinCrp.DteCre = FinCre.DteCre'+
           '   and FinCrp.NumCre = FinCre.NumCre'+
           '   and FinCrp.CodBan = FinBan.CodBan'+
           '   and FinCrp.CodCli = FinCli.CodCli'+
           '   and FinCrp.CodEmp = GerEmp.CodEmp';

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

  sOrdem := ' Order by FinCrp.DteCre,FinCrp.NumCre,FinCrp.NumCrp';

  sFiltro := ' and FinCrp.CodCli = '+ QuotedStr(IntToStr(GsCodCli));

  sFiltro := sFiltro + ' and ( ( FinCrp.FlgDev = '+ QuotedStr(' ') +' and FinCrp.FlgDel = '+ QuotedStr(' ') +' ) or ( FinCrp.FlpCrp = '+ QuotedStr('*') +' ) )';

  if GFlgAce = 'Sim' then begin

     if GEmpLog > 0 then
        sFiltro := sFiltro + ' and FinCrp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
     else
        sFiltro := sFiltro + ' and GerEmp.CodFil > 0';

  end;

  with FinCre,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  sFiltro := ' and FinPre.CodCli = '+ QuotedStr(IntToStr(GsCodCli));

  sFiltro := sFiltro + ' and ( ( FinPre.FlgDev = '+ QuotedStr(' ') +' and FinPre.FlgDel = '+ QuotedStr(' ') +' ) or ( FinPre.FlpCrp = '+ QuotedStr('*') +' ) )';

  if GFlgAce = 'Sim' then begin

     if GEmpLog > 0 then
        sFiltro := sFiltro + ' and FinPre.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
     else
        sFiltro := sFiltro + ' and GerEmp.CodFil > 0';

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FinR09 Where FinR09.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into FinR09'+
               ' Select DISTINCT '+ QuotedStr(SeqArq) +','+
               '                 FinRto.SeqRmo,'+
               '                 FinRto.CodMod,'+
               '                 FinRto.TotMod '+
               ' From FinRto,FinPre,FinCli,GerEmp'+
               ' Where FinRto.SeqRmo = FinPre.SeqRmo'+
               '   and FinPre.CodCli = FinCli.CodCli'+
               '   and FinPre.CodEmp = GerEmp.CodEmp'+ sFiltro;
       ExecSQL;

  end;

  with qrMod,SQL do begin

       Close;
       Text := ' Select FinR09.CodMod,'+
               '        FinMod.NomMod,'+
               '        Sum(FinR09.TotMod) as TotMod'+
               ' From FinR09 LEFT JOIN FinMod ON (FinR09.CodMod = FinMod.CodMod)'+
               ' Where FinR09.SeqArq = '+ QuotedStr(SeqArq) +
               ' Group by FinR09.CodMod,FinMod.NomMod'+
               ' Order by FinR09.CodMod';
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FinR09 Where FinR09.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;
end;

procedure TfmManE17.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FinR09 Where FinR09.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;
end;

procedure TfmManE17.RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  ppNumCrp.Caption := fNumZeros(IntToStr(FinCreNumCrp.Value),2)+ '/' + fNumZeros(IntToStr(FinCreQtpCre.Value),2);

  if FinCreCodBan.Value > 0 then
     ppNomBan.Caption := IntToStr(FinCreCodBan.Value)+' - '+Trim(FinCreNomBan.Value)
  else
     ppNomBan.Caption := '';

  if FinCreFlgInc.Value = 'Nao' then begin

     if FinCreVlsCrp.Value > 0 then begin

        if FinCreDtvCrp.Value < DteSer then
           ppAtrCrp.Caption := FloatToStr( DteSer - FinCreDtvCrp.Value )
        else
           ppAtrCrp.Caption := '0';

        ppVlsCrp.Caption := FormatFloat('###,###,##0.00',FinCreVlsCrp.Value)

        end
     else
        begin

        ppAtrCrp.Caption := FloatToStr( FinCreDulCrp.Value - FinCreDtvCrp.Value );

        ppVlsCrp.Caption := 'Liquidado';

     end;

     end
  else
     begin

     if FinCreVlsCrp.Value > 0 then begin

        if FinCreDtvCrp.Value < DteSer then
           ppAtrCrp.Caption := FloatToStr( DteSer - FinCreDtvCrp.Value )
        else
           ppAtrCrp.Caption := '0';

        end
     else
        ppAtrCrp.Caption := FloatToStr( FinCreDulCrp.Value - FinCreDtvCrp.Value );

     ppVlsCrp.Caption := 'Incobravel';

  end;

end;

procedure TfmManE17.RLDetailGrid1AfterPrint(Sender: TObject);
begin
  if Trim( CliPsq ) = '' then begin

     if Trim( DatInPsq ) = '' then begin {Data da Primeira Compra}

        DatInPsq := DateToStr(FinCreDteCre.Value);

        DatMenor := DateToStr(FinCreDteCre.AsDateTime)+' ('+Trim( FloatToStr(FinCreNumCre.Value) )+')';
        DatMaior := DateToStr(FinCreDteCre.AsDateTime)+' ('+Trim( FloatToStr(FinCreNumCre.Value) )+')';

        TotMaior := FinCreTotCre.Value;
        TotMenor := FinCreTotCre.Value;

     end;

     DatUltimo := DateToStr(FinCreDteCre.Value)+' ('+Trim( FloatToStr(FinCreNumCre.Value) )+')';

     TotUlt := FinCreTotCre.Value;

     TotRec := TotRec + FinCreTotCrp.Value;

     if FinCreFlpCrp.Value <> '*' then begin

        if FinCreDtvCrp.Value < DteSer then begin

           QtdAtr_Abe := QtdAtr_Abe + 1;                              {Quantidade de Titulos em Atraso}
           QtdAtr_Ger := QtdAtr_Ger + 1;                              {Quantidade de Titulos em Atraso}

           PraAtr := PraAtr + StrToInt(FloatToStr(( DteSer - FinCreDtvCrp.Value)));

           if (FinCreDtvCrp.Value < DteSer) and (FinCreVlsCrp.Value > 0) then TotAtr := TotAtr + FinCreVlsCrp.Value;  {Total de Titulos em Atraso}

        end;

        QtdAber := QtdAber + 1;
        TotAber := TotAber + FinCreVlsCrp.Value;

        end
     else
        begin

        if FinCreDulCrp.Value > FinCreDtvCrp.Value then QtdAtr_Ger := QtdAtr_Ger + 1;

        PraAtr := PraAtr + StrToInt(FloatToStr(( FinCreDulCrp.Value - FinCreDtvCrp.Value)));

     end;

     TotSld := TotSld + FinCreVlsCrp.Value;

     if FinCreTotCre.Value < TotMenor then begin

        TotMenor := FinCreTotCre.Value;

        DatMenor := DateToStr(FinCreDteCre.AsDateTime)+' ('+Trim( FloatToStr(FinCreNumCre.Value) )+')';

     end;

     if FinCreTotCre.Value > TotMaior then begin

        TotMaior := FinCreTotCre.Value;

        DatMaior := DateToStr(FinCreDteCre.AsDateTime)+' ('+Trim( FloatToStr(FinCreNumCre.Value) )+')';

     end;

     DatFiPsq := DateToStr(FinCreDteCre.Value); {Data da Ultima Compra}

     if FinCreFlgInc.Value = 'Sim' then begin

        QtdInc := QtdInc + 1;
        TotInc := TotInc + FinCreVlsCrp.Value; {Total de Titulos Incobraveis}

     end;
  end;
end;

procedure TfmManE17.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  QtdDia : real;
begin

  if Trim(DatInPsq) <> '' then
     QtdDia := StrToDate(DatFiPsq) - StrToDate(DatInPsq)
  else
     QtdDia := 0;

  ppTotAber.Caption := FormatFloat('###,###,##0.00',TotAber);
  ppQtdAber.Caption := FloatToStr(QtdAber);

  ppTotInc.Caption := FormatFloat('###,###,##0.00',TotInc);
  ppQtdInc.Caption := FloatToStr(QtdInc);

  ppTotAtr.Caption := FormatFloat('###,###,##0.00',TotAtr);

  if TotAtr > 0 then
     ppQtdAtr.Caption := FloatToStr(QtdAtr_Abe)
  else
     ppQtdAtr.Caption := '0';
        
  ppIniPsq.Caption := DatInPsq;

  if QtdDia >= 30 then begin

     QtdDia := fRound(Int(QtdDia / 30),2);

     ppDesPer.Caption := 'Mes(es)';

     end
  else
     begin

     QtdDia := 1;

     ppDesPer.Caption := 'Mês';

  end;

  ppQtdMes.Caption := FloatToStr(QtdDia);

  if QtdDia > 0 then
     ppMedCli.Caption := FormatFloat('###,###,##0.00',fRound(RLDBResult1.Value/QtdDia,2))
  else
     ppMedCli.Caption := FormatFloat('###,###,##0.00',RLDBResult1.Value);

  if QtdAtr_Ger > 0 then
     ppMedAtr.Caption := FormatFloat('###,###,##0.00',fRound(PraAtr/QtdAtr_Ger,2))
  else
     ppMedAtr.Caption := FormatFloat('###,###,##0.00',PraAtr);

  ppDMaior.Caption := DatMaior;
  ppDMenor.Caption := DatMenor;

  ppTotUlt.Caption := FormatFloat('###,###,##0.00',TotUlt);

  ppDUltimo.Caption := DatUltimo;

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(FinChc.ValChc) as TotChc'+
               ' From FinChc'+
               ' Where FinChc.CodCli = '+ QuotedStr(IntToStr(FinCreCodCli.Value)) +' and FinChc.SitChc <> '+ QuotedStr('Compensado');
       Open;

       ppTotChe.Caption := FormatFloat('###,###,##0.00',FieldbyName('TotChc').AsFloat);

       TotSld := TotSld + FieldbyName('TotChc').AsFloat;

  end;

  ppRecCli.Caption := FormatFloat('###,###,##0.00',TotSld);

end;

procedure TfmManE17.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  ppCodCli.Caption := IntToStr(GsCodCli);

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinCli.NomCli,'+
               '        FinCli.CgcCli,'+
               '        FinCli.Pt3Cli,'+
               '        FinCli.Fo3Cli,'+
               '        FinCli.LimCli,'+
               '        FinCli.CliDev,'+
               '        FinCli.CodVen '+
               ' From FinCli'+
               ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(GsCodCli));
       Open;                                                                                   

       ppNomCli.Caption := FieldbyName('NomCli').AsString;
       ppCgcCli.Caption := fFormatCGCCPF(FieldbyName('CgcCli').AsString);

       if Trim(FieldbyName('Pt3Cli').AsString) <> '' then
          ppFonCli.Caption := '('+ Trim(FieldbyName('Pt3Cli').AsString)+ ') ' +Trim(FieldbyName('Fo3Cli').AsString)
       else
          ppFonCli.Caption := Trim(FieldbyName('Fo3Cli').AsString);

       ppLimCli.Caption := FormatFloat('###,###,##0.00',FieldbyName('LimCli').AsFloat);
       ppCliDev.Caption := FormatFloat('###,###,##0.00',FieldbyName('CliDev').AsFloat);

       if FieldbyName('CodVen').AsInteger > 0 then
          ppCodVen.Caption := IntToStr(FieldbyName('CodVen').AsInteger)
       else
          ppCodVen.Caption := '';
       
  end;

  if Trim(ppCodVen.Caption) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen'+
                  ' From FinVen'+
                  ' Where FinVen.CodVen = '+ QuotedStr(ppCodVen.Caption);
          Open;

          ppApeVen.Caption := FieldbyName('ApeVen').AsString;

     end;

     end
  else
     ppApeVen.Caption := '';
     
end;

end.
