unit ManEm5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery;

type
  TfmManEm5 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    p2Titulo: TRLLabel;
    RLBand2: TRLBand;
    RLLabel38: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel3: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    ppDesLb2: TRLDBText;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    ppNomVen: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel22: TRLLabel;
    ppDteFat: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel28: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel35: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand5: TRLBand;
    RLLabel47: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel1: TRLLabel;
    ppTexto01: TRLMemo;
    ppTexto02: TRLMemo;
    ppTexto03: TRLMemo;
    ppTexto04: TRLMemo;
    ppTexto05: TRLMemo;
    ppTexto06: TRLMemo;
    ppTexto07: TRLMemo;
    ppTexto08: TRLMemo;
    ppTexto09: TRLMemo;
    ppTexto10: TRLMemo;
    ppTexto12: TRLMemo;
    ppTexto11: TRLMemo;
    ppTexto13: TRLMemo;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    TipoOper : string;
  end;

var
  VenPsq   : string;
  fmManEm5 : TfmManEm5;

implementation

uses Bbgeral, Bbfuncao, ManGDB, SendMailOptions, PedR30;

{$R *.DFM}

procedure TfmManEm5.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManEm5.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  VenPsq := '';
end;

procedure TfmManEm5.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if Trim( fmPedR30.EdPsqCodVen.Text ) <> '' then
     ppNomVen.Caption := fNumZeros(fmPedR30.EdPsqCodVen.Text,7)+' - '+fmPedR30.EdPsqNomVen.Text
  else
     ppNomVen.Caption := ' ';

  if Trim(fLimpaStr(fmPedR30.EdPsqDteRes1.Text)) <> '' then
     ppDteFat.Caption := FormatDateTime('dd/mm/yyyy',fmPedR30.EdPsqDteRes1.Date)+' a '+FormatDateTime('dd/mm/yyyy',fmPedR30.EdPsqDteRes2.Date)
  else
     ppDteFat.Caption := ' ';

end;

procedure TfmManEm5.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
sFiltro, sEncr : string;
sBasDev, sTotDev, sBasCom, sTotCom : real;
begin
  if Trim( VenPsq ) = '' then begin

     VenPsq := IntToStr(fmPedR30.PedResCodVen.Value);

     if RLDBResult1.Value > 0 then
        RLLabel1.Caption := FormatFloat('###,###,##0.00',fRound((RLDBResult2.Value * 100)/RLDBResult1.Value,2))
     else
        RLLabel1.Caption := FormatFloat('###,###,##0.00',0);

     sBasCom := RLDBResult1.Value;
     sTotCom := RLDBResult2.Value;
     
     sEncr := 'Nao';

     ppTexto01.Lines.Clear;
     ppTexto02.Lines.Clear;
     ppTexto03.Lines.Clear;
     ppTexto04.Lines.Clear;
     ppTexto05.Lines.Clear;
     ppTexto06.Lines.Clear;
     ppTexto07.Lines.Clear;
     ppTexto08.Lines.Clear;
     ppTexto09.Lines.Clear;
     ppTexto10.Lines.Clear;
     ppTexto11.Lines.Clear;
     ppTexto12.Lines.Clear;
     ppTexto13.Lines.Clear;

     sBasDev := 0;
     sTotDev := 0;

     if (fmPedR30.rgTipo.ItemIndex = 1) or (fmPedR30.rgTipo.ItemIndex = 2) then begin
     
        sFiltro := ' Where FatDev.DteDev >= '+ QuotedStr(fDateToSQL(fmPedR30.EdPsqDteRes1.Date)) +
                   '   and FatDev.DteDev <= '+ QuotedStr(fDateToSQL(fmPedR30.EdPsqDteRes2.Date)) +
                   '   and FatDev.CodVen  = '+ QuotedStr(fmPedR30.EdPsqCodVen.Text)              +
                   '   and FatDev.SitDev  = '+ QuotedStr('Devolvido')                            +
                   '   and FatDev.FlgDif  = '+ QuotedStr('Nao')                                  ;

        if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');

        with fmPedR30.quSQL,SQL do begin

             Close;
             Text := ' Select FatDev.NumRes,'+
                     '        PedLib.DteFat,'+
                     '        TextoOcor(IntStrZeros(FatDev.CodVen,05),'''+ ' - ' +''',FinVen.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as ApeVen,'+
                     '        TextoOcor(IntStrZeros(FatDev.CodCli,05),'''+ ' - ' +''',FinCli.ApeCli,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Cliente,'+
                     '        FatDev.TotDev,'+
                     '        FatDev.BasCom,'+
                     '        FatDev.TotCom,'+
                     '        FatDev.NfsCli,'+
                     '        FatDev.DteDev,'+
                     '        FatDev.NumNfs,'+
                     '        FatDev.NroNfs'+
                     ' From FatDev LEFT JOIN PedLib ON (FatDev.CodEmp = PedLib.CodEmp '+
                     '                             AND  FatDev.DteRes = PedLib.DteRes '+
                     '                             AND  FatDev.NumRes = PedLib.NumRes '+
                     '                             AND  FatDev.SeqLib = PedLib.SeqLib)'+
                     '             LEFT JOIN FinCli ON (FatDev.CodCli = FinCli.CodCli)'+
                     '             LEFT JOIN FinVen ON (FatDev.CodVen = FinVen.CodVen)'+ sFiltro;
             Open;

        end;

        if fmPedR30.quSQL.FieldbyName('NumRes').AsFloat > 0 then begin

           sEncr := 'Sim';

           ppTexto10.Lines.Add('Devoluções/Cancelamentos');

           ppTexto01.Lines.Add('');
           ppTexto01.Lines.Add('');
           ppTexto02.Lines.Add('');
           ppTexto02.Lines.Add('');
           ppTexto03.Lines.Add('');
           ppTexto03.Lines.Add('');
           ppTexto04.Lines.Add('');
           ppTexto04.Lines.Add('');
           ppTexto05.Lines.Add('');
           ppTexto05.Lines.Add('');
           ppTexto06.Lines.Add('');
           ppTexto06.Lines.Add('');
           ppTexto07.Lines.Add('');
           ppTexto07.Lines.Add('');
           ppTexto08.Lines.Add('');
           ppTexto08.Lines.Add('');
           ppTexto09.Lines.Add('');
           ppTexto09.Lines.Add('');
           ppTexto10.Lines.Add('');
           ppTexto10.Lines.Add('');
           ppTexto11.Lines.Add('');
           ppTexto11.Lines.Add('');
           ppTexto12.Lines.Add('');
           ppTexto12.Lines.Add('');
           ppTexto13.Lines.Add('');
           ppTexto13.Lines.Add('');

           ppTexto01.Font.Style := [fsBold];
           ppTexto02.Font.Style := [fsBold];
           ppTexto03.Font.Style := [fsBold];
           ppTexto04.Font.Style := [fsBold];
           ppTexto05.Font.Style := [fsBold];
           ppTexto06.Font.Style := [fsBold];
           ppTexto07.Font.Style := [fsBold];
           ppTexto08.Font.Style := [fsBold];
           ppTexto09.Font.Style := [fsBold];

           ppTexto01.Font.Color := clNavy;
           ppTexto02.Font.Color := clNavy;
           ppTexto03.Font.Color := clNavy;
           ppTexto04.Font.Color := clNavy;
           ppTexto05.Font.Color := clNavy;
           ppTexto06.Font.Color := clNavy;
           ppTexto07.Font.Color := clNavy;
           ppTexto08.Font.Color := clNavy;
           ppTexto09.Font.Color := clNavy;

           ppTexto01.Lines.Add('Documento');
           ppTexto02.Lines.Add('NF Entrada');
           ppTexto03.Lines.Add('NF Cliente');
           ppTexto04.Lines.Add('Pedido');
           ppTexto05.Lines.Add('Dt.Fat ');
           ppTexto06.Lines.Add('Devolução');
           ppTexto07.Lines.Add('Cliente');
           ppTexto08.Lines.Add('Total Devolvido');
           ppTexto09.Lines.Add('Debito Comissão');
           ppTexto10.Lines.Add('');
           ppTexto11.Lines.Add('');
           ppTexto12.Lines.Add('');
           ppTexto13.Lines.Add('');

           ppTexto01.Font.Style := [];
           ppTexto02.Font.Style := [];
           ppTexto03.Font.Style := [];
           ppTexto04.Font.Style := [];
           ppTexto05.Font.Style := [];
           ppTexto06.Font.Style := [];
           ppTexto07.Font.Style := [];
           ppTexto08.Font.Style := [];
           ppTexto09.Font.Style := [];

           ppTexto01.Font.Color := clBlack;
           ppTexto02.Font.Color := clBlack;
           ppTexto03.Font.Color := clBlack;
           ppTexto04.Font.Color := clBlack;
           ppTexto05.Font.Color := clBlack;
           ppTexto06.Font.Color := clBlack;
           ppTexto07.Font.Color := clBlack;
           ppTexto08.Font.Color := clBlack;
           ppTexto09.Font.Color := clBlack;

           while not fmPedR30.quSQL.Eof do begin

                 if Trim( fmPedR30.quSQL.FieldbyName('NUMNFS').AsString ) <> '' then
                    ppTexto01.Lines.Add(IntToStr(fmPedR30.quSQL.FieldbyName('NUMNFS').AsInteger))
                 else
                    ppTexto01.Lines.Add('');

                 if Trim( fmPedR30.quSQL.FieldbyName('NRONFS').AsString ) <> '' then
                    ppTexto02.Lines.Add(IntToStr(fmPedR30.quSQL.FieldbyName('NRONFS').AsInteger))
                 else
                    ppTexto02.Lines.Add('');

                 if Trim( fmPedR30.quSQL.FieldbyName('NFSCLI').AsString ) <> '' then
                    ppTexto03.Lines.Add(IntToStr(fmPedR30.quSQL.FieldbyName('NFSCLI').AsInteger))
                 else
                    ppTexto03.Lines.Add('');

                 ppTexto04.Lines.Add(IntToStr(fmPedR30.quSQL.FieldbyName('NUMRES').AsInteger));
                 ppTexto05.Lines.Add(FormatDateTime('dd/mm/yyyy',fmPedR30.quSQL.FieldbyName('DTEFAT').AsDateTime));
                 ppTexto06.Lines.Add(FormatDateTime('dd/mm/yyyy',fmPedR30.quSQL.FieldbyName('DTEDEV').AsDateTime));
                 ppTexto07.Lines.Add(fmPedR30.quSQL.FieldbyName('Cliente').AsString);
                 ppTexto08.Lines.Add(FormatFloat('###,###,##0.00',fmPedR30.quSQL.FieldbyName('BASCOM').AsFloat));
                 ppTexto09.Lines.Add(FormatFloat('###,###,##0.00',fmPedR30.quSQL.FieldbyName('TOTCOM').AsFloat)+' DNO');

                 ppTexto10.Lines.Add('');
                 ppTexto11.Lines.Add('');
                 ppTexto12.Lines.Add('');
                 ppTexto13.Lines.Add('');

                 sBasDev := sBasDev + fmPedR30.quSQL.FieldbyName('BASCOM').AsFloat;
                 sTotDev := sTotDev + fmPedR30.quSQL.FieldbyName('TOTCOM').AsFloat;

                 fmPedR30.quSQL.Next;

           end;
        end;

        if Trim(GFlgAce) <> 'Sim' then begin

           sFiltro := ' Where FatDep.DteDep >= '+ QuotedStr(fDateToSQL(fmPedR30.EdPsqDteRes1.Date)) +
                      '   and FatDep.DteDep <= '+ QuotedStr(fDateToSQL(fmPedR30.EdPsqDteRes2.Date)) +
                      '   and FatDep.CodVen  = '+ QuotedStr(fmPedR30.EdPsqCodVen.Text)              +
                      '   and FatDep.SitDep  = '+ QuotedStr('Concluido')                            ;

           with fmPedR30.quSQL,SQL do begin

                Close;
                Text := ' Select FatDep.NumRes,'+
                        '        PedLib.DteFat,'+
                        '        TextoOcor(IntStrZeros(FatDep.CodVen,05),'''+ ' - ' +''',FinVen.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as ApeVen,'+
                        '        TextoOcor(IntStrZeros(FatDep.CodCli,05),'''+ ' - ' +''',FinCli.ApeCli,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Cliente,'+
                        '        FatDep.TotDep,'+
                        '        FatDep.BasCom,'+
                        '        FatDep.TotCom,'+
                        '        FatDep.DteDep'+
                        ' From FatDep LEFT JOIN PedLib ON (FatDep.CodEmp = PedLib.CodEmp '+
                        '                             AND  FatDep.DteRes = PedLib.DteRes '+
                        '                             AND  FatDep.NumRes = PedLib.NumRes '+
                        '                             AND  FatDep.SeqLib = PedLib.SeqLib)'+
                        '             LEFT JOIN FinCli ON (FatDep.CodCli = FinCli.CodCli)'+
                        '             LEFT JOIN FinVen ON (FatDep.CodVen = FinVen.CodVen)'+ sFiltro;
                Open;

           end;

           if fmPedR30.quSQL.FieldbyName('NumRes').AsFloat > 0 then begin

              if sEncr = 'Nao' then begin

                 sEncr := 'Sim';

                 ppTexto10.Lines.Add('Devoluções/Cancelamentos');

                 ppTexto01.Lines.Add('');
                 ppTexto01.Lines.Add('');
                 ppTexto02.Lines.Add('');
                 ppTexto02.Lines.Add('');
                 ppTexto03.Lines.Add('');
                 ppTexto03.Lines.Add('');
                 ppTexto04.Lines.Add('');
                 ppTexto04.Lines.Add('');
                 ppTexto05.Lines.Add('');
                 ppTexto05.Lines.Add('');
                 ppTexto06.Lines.Add('');
                 ppTexto06.Lines.Add('');
                 ppTexto07.Lines.Add('');
                 ppTexto07.Lines.Add('');
                 ppTexto08.Lines.Add('');
                 ppTexto08.Lines.Add('');
                 ppTexto09.Lines.Add('');
                 ppTexto09.Lines.Add('');
                 ppTexto10.Lines.Add('');
                 ppTexto10.Lines.Add('');
                 ppTexto11.Lines.Add('');
                 ppTexto11.Lines.Add('');
                 ppTexto12.Lines.Add('');
                 ppTexto12.Lines.Add('');
                 ppTexto13.Lines.Add('');
                 ppTexto13.Lines.Add('');

                 ppTexto01.Font.Style := [fsBold];
                 ppTexto02.Font.Style := [fsBold];
                 ppTexto03.Font.Style := [fsBold];
                 ppTexto04.Font.Style := [fsBold];
                 ppTexto05.Font.Style := [fsBold];
                 ppTexto06.Font.Style := [fsBold];
                 ppTexto07.Font.Style := [fsBold];
                 ppTexto08.Font.Style := [fsBold];
                 ppTexto09.Font.Style := [fsBold];

                 ppTexto01.Font.Color := clNavy;
                 ppTexto02.Font.Color := clNavy;
                 ppTexto03.Font.Color := clNavy;
                 ppTexto04.Font.Color := clNavy;
                 ppTexto05.Font.Color := clNavy;
                 ppTexto06.Font.Color := clNavy;
                 ppTexto07.Font.Color := clNavy;
                 ppTexto08.Font.Color := clNavy;
                 ppTexto09.Font.Color := clNavy;

                 ppTexto01.Lines.Add('Documento');
                 ppTexto02.Lines.Add('NF Entrada');
                 ppTexto03.Lines.Add('NF Cliente');
                 ppTexto04.Lines.Add('Pedido');
                 ppTexto05.Lines.Add('Dt.Fat ');
                 ppTexto06.Lines.Add('Devolução');
                 ppTexto07.Lines.Add('Cliente');
                 ppTexto08.Lines.Add('Total Devolvido');
                 ppTexto09.Lines.Add('Debito Comissão');
                 ppTexto10.Lines.Add('');
                 ppTexto11.Lines.Add('');
                 ppTexto12.Lines.Add('');
                 ppTexto13.Lines.Add('');

                 ppTexto01.Font.Style := [];
                 ppTexto02.Font.Style := [];
                 ppTexto03.Font.Style := [];
                 ppTexto04.Font.Style := [];
                 ppTexto05.Font.Style := [];
                 ppTexto06.Font.Style := [];
                 ppTexto07.Font.Style := [];
                 ppTexto08.Font.Style := [];
                 ppTexto09.Font.Style := [];

                 ppTexto01.Font.Color := clBlack;
                 ppTexto02.Font.Color := clBlack;
                 ppTexto03.Font.Color := clBlack;
                 ppTexto04.Font.Color := clBlack;
                 ppTexto05.Font.Color := clBlack;
                 ppTexto06.Font.Color := clBlack;
                 ppTexto07.Font.Color := clBlack;
                 ppTexto08.Font.Color := clBlack;
                 ppTexto09.Font.Color := clBlack;

              end;

              while not fmPedR30.quSQL.Eof do begin

                    ppTexto01.Lines.Add('');
                    ppTexto02.Lines.Add('');
                    ppTexto03.Lines.Add('');

                    ppTexto04.Lines.Add(IntToStr(fmPedR30.quSQL.FieldbyName('NUMRES').AsInteger));
                    ppTexto05.Lines.Add(FormatDateTime('dd/mm/yyyy',fmPedR30.quSQL.FieldbyName('DTEFAT').AsDateTime));
                    ppTexto06.Lines.Add(FormatDateTime('dd/mm/yyyy',fmPedR30.quSQL.FieldbyName('DTEDEP').AsDateTime));
                    ppTexto07.Lines.Add(fmPedR30.quSQL.FieldbyName('Cliente').AsString);
                    ppTexto08.Lines.Add(FormatFloat('###,###,##0.00',fmPedR30.quSQL.FieldbyName('BASCOM').AsFloat));
                    ppTexto09.Lines.Add(FormatFloat('###,###,##0.00',fmPedR30.quSQL.FieldbyName('TOTCOM').AsFloat)+' DPE');

                    ppTexto10.Lines.Add('');
                    ppTexto11.Lines.Add('');
                    ppTexto12.Lines.Add('');
                    ppTexto13.Lines.Add('');

                    sBasDev := sBasDev + fmPedR30.quSQL.FieldbyName('BASCOM').AsFloat;
                    sTotDev := sTotDev + fmPedR30.quSQL.FieldbyName('TOTCOM').AsFloat;

                    fmPedR30.quSQL.Next;

              end;
           end;
        end;

        sFiltro := ' Where PedLib.DteDel >= '+ QuotedStr(fDateToSQL(fmPedR30.EdPsqDteRes1.Date)) +
                   '   and PedLib.DteDel <= '+ QuotedStr(fDateToSQL(fmPedR30.EdPsqDteRes2.Date)) +
                   '   and PedLib.CodVen  = '+ QuotedStr(fmPedR30.EdPsqCodVen.Text)              +
                   '   and PedLib.IntFin  = '+ QuotedStr('Sim')                                  +
                   '   and PedLib.ModPfa  = '+ QuotedStr('Vendas')                               +
                   '   and PedLib.SitLib  = '+ QuotedStr('Cancelado')                            ;

        if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');

        with fmPedR30.quSQL,SQL do begin

             Close;
             Text := ' Select PedLib.NumRes,'+
                     '        PedLib.DteFat,'+
                     '        TextoOcor(IntStrZeros(PedLib.CodCli,05),'''+ ' - ' +''',FinCli.ApeCli,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Cliente,'+
                     '        PedLib.TotLib,'+
                     '        PedLib.BasCom,'+
                     '        PedLib.TotCom,'+
                     '        PedLib.DteDel'+
                     ' From PedLib LEFT JOIN FinVen ON (PedLib.CodVen = FinVen.CodVen)'+
                     '             LEFT JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli)'+ sFiltro;
             Open;
             First;

        end;

        if fmPedR30.quSQL.FieldbyName('NumRes').AsFloat > 0 then begin

           if sEncr = 'Nao' then begin

              sEncr := 'Sim';
              
              ppTexto10.Lines.Add('Devoluções/Cancelamentos');

              ppTexto01.Lines.Add('');
              ppTexto01.Lines.Add('');
              ppTexto02.Lines.Add('');
              ppTexto02.Lines.Add('');
              ppTexto03.Lines.Add('');
              ppTexto03.Lines.Add('');
              ppTexto04.Lines.Add('');
              ppTexto04.Lines.Add('');
              ppTexto05.Lines.Add('');
              ppTexto05.Lines.Add('');
              ppTexto06.Lines.Add('');
              ppTexto06.Lines.Add('');
              ppTexto07.Lines.Add('');
              ppTexto07.Lines.Add('');
              ppTexto08.Lines.Add('');
              ppTexto08.Lines.Add('');
              ppTexto09.Lines.Add('');
              ppTexto09.Lines.Add('');
              ppTexto10.Lines.Add('');
              ppTexto10.Lines.Add('');
              ppTexto11.Lines.Add('');
              ppTexto11.Lines.Add('');
              ppTexto12.Lines.Add('');
              ppTexto12.Lines.Add('');
              ppTexto13.Lines.Add('');
              ppTexto13.Lines.Add('');

              ppTexto01.Font.Style := [fsBold];
              ppTexto02.Font.Style := [fsBold];
              ppTexto03.Font.Style := [fsBold];
              ppTexto04.Font.Style := [fsBold];
              ppTexto05.Font.Style := [fsBold];
              ppTexto06.Font.Style := [fsBold];
              ppTexto07.Font.Style := [fsBold];
              ppTexto08.Font.Style := [fsBold];
              ppTexto09.Font.Style := [fsBold];

              ppTexto01.Font.Color := clNavy;
              ppTexto02.Font.Color := clNavy;
              ppTexto03.Font.Color := clNavy;
              ppTexto04.Font.Color := clNavy;
              ppTexto05.Font.Color := clNavy;
              ppTexto06.Font.Color := clNavy;
              ppTexto07.Font.Color := clNavy;
              ppTexto08.Font.Color := clNavy;
              ppTexto09.Font.Color := clNavy;

              ppTexto01.Lines.Add('Documento');
              ppTexto02.Lines.Add('NF Entrada');
              ppTexto03.Lines.Add('NF Cliente');
              ppTexto04.Lines.Add('Pedido');
              ppTexto05.Lines.Add('Dt.Fat ');
              ppTexto06.Lines.Add('Devolução');
              ppTexto07.Lines.Add('Cliente');
              ppTexto08.Lines.Add('Total Devolvido');
              ppTexto09.Lines.Add('Debito Comissão');
              ppTexto10.Lines.Add('');
              ppTexto11.Lines.Add('');
              ppTexto12.Lines.Add('');
              ppTexto13.Lines.Add('');

              ppTexto01.Font.Style := [];
              ppTexto02.Font.Style := [];
              ppTexto03.Font.Style := [];
              ppTexto04.Font.Style := [];
              ppTexto05.Font.Style := [];
              ppTexto06.Font.Style := [];
              ppTexto07.Font.Style := [];
              ppTexto08.Font.Style := [];
              ppTexto09.Font.Style := [];

              ppTexto01.Font.Color := clBlack;
              ppTexto02.Font.Color := clBlack;
              ppTexto03.Font.Color := clBlack;
              ppTexto04.Font.Color := clBlack;
              ppTexto05.Font.Color := clBlack;
              ppTexto06.Font.Color := clBlack;
              ppTexto07.Font.Color := clBlack;
              ppTexto08.Font.Color := clBlack;
              ppTexto09.Font.Color := clBlack;

           end;

           while not fmPedR30.quSQL.Eof do begin

                 ppTexto01.Lines.Add('');
                 ppTexto02.Lines.Add('');
                 ppTexto03.Lines.Add('');

                 ppTexto04.Lines.Add(IntToStr(fmPedR30.quSQL.FieldbyName('NUMRES').AsInteger));
                 ppTexto05.Lines.Add(FormatDateTime('dd/mm/yyyy',fmPedR30.quSQL.FieldbyName('DTEFAT').AsDateTime));
                 ppTexto06.Lines.Add(FormatDateTime('dd/mm/yyyy',fmPedR30.quSQL.FieldbyName('DTEDEL').AsDateTime));
                 ppTexto07.Lines.Add(fmPedR30.quSQL.FieldbyName('Cliente').AsString);
                 ppTexto08.Lines.Add(FormatFloat('###,###,##0.00',fmPedR30.quSQL.FieldbyName('BASCOM').AsFloat));
                 ppTexto09.Lines.Add(FormatFloat('###,###,##0.00',fmPedR30.quSQL.FieldbyName('TOTCOM').AsFloat)+' CPE');

                 ppTexto10.Lines.Add('');
                 ppTexto11.Lines.Add('');
                 ppTexto12.Lines.Add('');
                 ppTexto13.Lines.Add('');

                 sBasDev := sBasDev + fmPedR30.quSQL.FieldbyName('BASCOM').AsFloat;
                 sTotDev := sTotDev + fmPedR30.quSQL.FieldbyName('TOTCOM').AsFloat;

                 fmPedR30.quSQL.Next;

           end;
        end;
     end;

     if (fmPedR30.rgTipo.ItemIndex = 0) or (fmPedR30.rgTipo.ItemIndex = 2) then begin // Modulo Loja

        sFiltro := ' Where LojDev.DteDev >= '+ QuotedStr(fDateToSQL(fmPedR30.EdPsqDteRes1.Date)) +
                   '   and LojDev.DteDev <= '+ QuotedStr(fDateToSQL(fmPedR30.EdPsqDteRes2.Date)) +
                   '   and LojDev.CodVen  = '+ QuotedStr(fmPedR30.EdPsqCodVen.Text)              +
                   '   and LojDev.SitDev  = '+ QuotedStr('Concluida')                            +
                   '   and LojPed.FlgVal  = '+ QuotedStr('Nao')                                  +
                   '   and LojDev.ModPfa  = '+ QuotedStr('Vendas')                               ;

        with fmPedR30.quSQL,SQL do begin

             Close;
             Text := ' Select LojDev.NumPed,'+
                     '        LojPed.DopRpe,'+
                     '        TextoOcor(IntStrZeros(LojDev.CodVen,05),'''+ ' - ' +''',FinVen.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as ApeVen,'+
                     '        TextoOcor(IntStrZeros(LojPed.CodCli,05),'''+ ' - ' +''',LojPed.NomCli,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Cliente,'+
                     '        LojDev.TotDev,'+
                     '        LojDev.BasCom,'+
                     '        LojDev.TotCom,'+
                     '        LojDev.DteDev'+
                     ' From LojDev LEFT JOIN LojPed ON (LojDev.CodEmp = LojPed.CodEmp '+
                     '                             AND  LojDev.DtePed = LojPed.DtePed '+
                     '                             AND  LojDev.NumPed = LojPed.NumPed)'+
                     '             LEFT JOIN FinVen ON (LojDev.CodVen = FinVen.CodVen)'+ sFiltro;
             Open;

        end;

        if fmPedR30.quSQL.FieldbyName('NumPed').AsFloat > 0 then begin

           if sEncr = 'Nao' then begin

              sEncr := 'Sim';

              ppTexto10.Lines.Add('Devoluções/Cancelamentos');

              ppTexto01.Lines.Add('');
              ppTexto01.Lines.Add('');
              ppTexto02.Lines.Add('');
              ppTexto02.Lines.Add('');
              ppTexto03.Lines.Add('');
              ppTexto03.Lines.Add('');
              ppTexto04.Lines.Add('');
              ppTexto04.Lines.Add('');
              ppTexto05.Lines.Add('');
              ppTexto05.Lines.Add('');
              ppTexto06.Lines.Add('');
              ppTexto06.Lines.Add('');
              ppTexto07.Lines.Add('');
              ppTexto07.Lines.Add('');
              ppTexto08.Lines.Add('');
              ppTexto08.Lines.Add('');
              ppTexto09.Lines.Add('');
              ppTexto09.Lines.Add('');
              ppTexto10.Lines.Add('');
              ppTexto10.Lines.Add('');
              ppTexto11.Lines.Add('');
              ppTexto11.Lines.Add('');
              ppTexto12.Lines.Add('');
              ppTexto12.Lines.Add('');
              ppTexto13.Lines.Add('');
              ppTexto13.Lines.Add('');

              ppTexto01.Font.Style := [fsBold];
              ppTexto02.Font.Style := [fsBold];
              ppTexto03.Font.Style := [fsBold];
              ppTexto04.Font.Style := [fsBold];
              ppTexto05.Font.Style := [fsBold];
              ppTexto06.Font.Style := [fsBold];
              ppTexto07.Font.Style := [fsBold];
              ppTexto08.Font.Style := [fsBold];
              ppTexto09.Font.Style := [fsBold];

              ppTexto01.Font.Color := clNavy;
              ppTexto02.Font.Color := clNavy;
              ppTexto03.Font.Color := clNavy;
              ppTexto04.Font.Color := clNavy;
              ppTexto05.Font.Color := clNavy;
              ppTexto06.Font.Color := clNavy;
              ppTexto07.Font.Color := clNavy;
              ppTexto08.Font.Color := clNavy;
              ppTexto09.Font.Color := clNavy;

              ppTexto01.Lines.Add('Documento');
              ppTexto02.Lines.Add('NF Entrada');
              ppTexto03.Lines.Add('NF Cliente');
              ppTexto04.Lines.Add('Pedido');
              ppTexto05.Lines.Add('Dt.Fat ');
              ppTexto06.Lines.Add('Devolução');
              ppTexto07.Lines.Add('Cliente');
              ppTexto08.Lines.Add('Total Devolvido');
              ppTexto09.Lines.Add('Debito Comissão');
              ppTexto10.Lines.Add('');
              ppTexto11.Lines.Add('');
              ppTexto12.Lines.Add('');
              ppTexto13.Lines.Add('');

              ppTexto01.Font.Style := [];
              ppTexto02.Font.Style := [];
              ppTexto03.Font.Style := [];
              ppTexto04.Font.Style := [];
              ppTexto05.Font.Style := [];
              ppTexto06.Font.Style := [];
              ppTexto07.Font.Style := [];
              ppTexto08.Font.Style := [];
              ppTexto09.Font.Style := [];

              ppTexto01.Font.Color := clBlack;
              ppTexto02.Font.Color := clBlack;
              ppTexto03.Font.Color := clBlack;
              ppTexto04.Font.Color := clBlack;
              ppTexto05.Font.Color := clBlack;
              ppTexto06.Font.Color := clBlack;
              ppTexto07.Font.Color := clBlack;
              ppTexto08.Font.Color := clBlack;
              ppTexto09.Font.Color := clBlack;

           end;
              
           while not fmPedR30.quSQL.Eof do begin

                 ppTexto01.Lines.Add('');
                 ppTexto02.Lines.Add('');
                 ppTexto03.Lines.Add('');

                 ppTexto04.Lines.Add(IntToStr(fmPedR30.quSQL.FieldbyName('NUMPED').AsInteger));
                 ppTexto05.Lines.Add(FormatDateTime('dd/mm/yyyy',fmPedR30.quSQL.FieldbyName('DOPRPE').AsDateTime));
                 ppTexto06.Lines.Add(FormatDateTime('dd/mm/yyyy',fmPedR30.quSQL.FieldbyName('DTEDEV').AsDateTime));
                 ppTexto07.Lines.Add(fmPedR30.quSQL.FieldbyName('Cliente').AsString);
                 ppTexto08.Lines.Add(FormatFloat('###,###,##0.00',fmPedR30.quSQL.FieldbyName('BASCOM').AsFloat));
                 ppTexto09.Lines.Add(FormatFloat('###,###,##0.00',fmPedR30.quSQL.FieldbyName('TOTCOM').AsFloat)+' DCO');

                 ppTexto10.Lines.Add('');
                 ppTexto11.Lines.Add('');
                 ppTexto12.Lines.Add('');
                 ppTexto13.Lines.Add('');

                 sBasDev := sBasDev + fmPedR30.quSQL.FieldbyName('BASCOM').AsFloat;
                 sTotDev := sTotDev + fmPedR30.quSQL.FieldbyName('TOTCOM').AsFloat;

                 fmPedR30.quSQL.Next;

           end;
        end;

        sFiltro := ' Where LojGer.DopGer >= '+ QuotedStr(fDateToSQL(fmPedR30.EdPsqDteRes1.Date)) +
                   '   and LojGer.DopGer <= '+ QuotedStr(fDateToSQL(fmPedR30.EdPsqDteRes2.Date)) +
                   '   and LojGer.CodVen  = '+ QuotedStr(fmPedR30.EdPsqCodVen.Text)              +
                   '   and LojGer.SitGer  = '+ QuotedStr('Concluida')                            +
                   '   and LojGer.ModPfa  = '+ QuotedStr('Vendas')                               ;

        with fmPedR30.quSQL,SQL do begin

             Close;
             Text := ' Select TextoOcor(IntStrZeros(LojGer.CodVen,05),'''+ ' - ' +''',FinVen.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as ApeVen,'+
                     '        TextoOcor(IntStrZeros(LojGer.CodCli,05),'''+ ' - ' +''',LojGer.NomCli,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Cliente,'+
                     '        LojGer.NumGer,'+                     
                     '        LojGer.TotIte,'+
                     '        LojGer.BasCom,'+
                     '        LojGer.TotCom,'+
                     '        LojGer.DopGer'+
                     ' From LojGer LEFT JOIN FinVen ON (LojGer.CodVen = FinVen.CodVen)'+ sFiltro;
             Open;

        end;

        if fmPedR30.quSQL.FieldbyName('NumGer').AsFloat > 0 then begin

           if sEncr = 'Nao' then begin

              sEncr := 'Sim';

              ppTexto10.Lines.Add('Devoluções/Cancelamentos');

              ppTexto01.Lines.Add('');
              ppTexto01.Lines.Add('');
              ppTexto02.Lines.Add('');
              ppTexto02.Lines.Add('');
              ppTexto03.Lines.Add('');
              ppTexto03.Lines.Add('');
              ppTexto04.Lines.Add('');
              ppTexto04.Lines.Add('');
              ppTexto05.Lines.Add('');
              ppTexto05.Lines.Add('');
              ppTexto06.Lines.Add('');
              ppTexto06.Lines.Add('');
              ppTexto07.Lines.Add('');
              ppTexto07.Lines.Add('');
              ppTexto08.Lines.Add('');
              ppTexto08.Lines.Add('');
              ppTexto09.Lines.Add('');
              ppTexto09.Lines.Add('');
              ppTexto10.Lines.Add('');
              ppTexto10.Lines.Add('');
              ppTexto11.Lines.Add('');
              ppTexto11.Lines.Add('');
              ppTexto12.Lines.Add('');
              ppTexto12.Lines.Add('');
              ppTexto13.Lines.Add('');
              ppTexto13.Lines.Add('');

              ppTexto01.Font.Style := [fsBold];
              ppTexto02.Font.Style := [fsBold];
              ppTexto03.Font.Style := [fsBold];
              ppTexto04.Font.Style := [fsBold];
              ppTexto05.Font.Style := [fsBold];
              ppTexto06.Font.Style := [fsBold];
              ppTexto07.Font.Style := [fsBold];
              ppTexto08.Font.Style := [fsBold];
              ppTexto09.Font.Style := [fsBold];

              ppTexto01.Font.Color := clNavy;
              ppTexto02.Font.Color := clNavy;
              ppTexto03.Font.Color := clNavy;
              ppTexto04.Font.Color := clNavy;
              ppTexto05.Font.Color := clNavy;
              ppTexto06.Font.Color := clNavy;
              ppTexto07.Font.Color := clNavy;
              ppTexto08.Font.Color := clNavy;
              ppTexto09.Font.Color := clNavy;

              ppTexto01.Lines.Add('Documento');
              ppTexto02.Lines.Add('NF Entrada');
              ppTexto03.Lines.Add('NF Cliente');
              ppTexto04.Lines.Add('Pedido');
              ppTexto05.Lines.Add('Dt.Fat ');
              ppTexto06.Lines.Add('Devolução');
              ppTexto07.Lines.Add('Cliente');
              ppTexto08.Lines.Add('Total Devolvido');
              ppTexto09.Lines.Add('Debito Comissão');
              ppTexto10.Lines.Add('');
              ppTexto11.Lines.Add('');
              ppTexto12.Lines.Add('');
              ppTexto13.Lines.Add('');

              ppTexto01.Font.Style := [];
              ppTexto02.Font.Style := [];
              ppTexto03.Font.Style := [];
              ppTexto04.Font.Style := [];
              ppTexto05.Font.Style := [];
              ppTexto06.Font.Style := [];
              ppTexto07.Font.Style := [];
              ppTexto08.Font.Style := [];
              ppTexto09.Font.Style := [];

              ppTexto01.Font.Color := clBlack;
              ppTexto02.Font.Color := clBlack;
              ppTexto03.Font.Color := clBlack;
              ppTexto04.Font.Color := clBlack;
              ppTexto05.Font.Color := clBlack;
              ppTexto06.Font.Color := clBlack;
              ppTexto07.Font.Color := clBlack;
              ppTexto08.Font.Color := clBlack;
              ppTexto09.Font.Color := clBlack;

           end;
              
           while not fmPedR30.quSQL.Eof do begin

                 ppTexto01.Lines.Add('');
                 ppTexto02.Lines.Add('');
                 ppTexto03.Lines.Add('');
                 ppTexto04.Lines.Add('');
                 ppTexto05.Lines.Add('');

                 ppTexto06.Lines.Add(FormatDateTime('dd/mm/yyyy',fmPedR30.quSQL.FieldbyName('DOPGER').AsDateTime));
                 ppTexto07.Lines.Add(fmPedR30.quSQL.FieldbyName('Cliente').AsString);
                 ppTexto08.Lines.Add(FormatFloat('###,###,##0.00',fmPedR30.quSQL.FieldbyName('BASCOM').AsFloat));
                 ppTexto09.Lines.Add(FormatFloat('###,###,##0.00',fmPedR30.quSQL.FieldbyName('TOTCOM').AsFloat)+' DCG');

                 ppTexto10.Lines.Add('');
                 ppTexto11.Lines.Add('');
                 ppTexto12.Lines.Add('');
                 ppTexto13.Lines.Add('');

                 sBasDev := sBasDev + fmPedR30.quSQL.FieldbyName('BASCOM').AsFloat;
                 sTotDev := sTotDev + fmPedR30.quSQL.FieldbyName('TOTCOM').AsFloat;

                 fmPedR30.quSQL.Next;

           end;
        end;

        sFiltro := ' Where LojPed.DteDel >= '+ QuotedStr(fDateToSQL(fmPedR30.EdPsqDteRes1.Date)) +
                   '   and LojPed.DteDel <= '+ QuotedStr(fDateToSQL(fmPedR30.EdPsqDteRes2.Date)) +
                   '   and LojPed.CodVen  = '+ QuotedStr(fmPedR30.EdPsqCodVen.Text)              +
                   '   and LojPed.SitPed  = '+ QuotedStr('Cancelada')                            +
                   '   and LojPed.FlgVal  = '+ QuotedStr('Nao')                                  +
                   '   and LojPed.ModPfa  = '+ QuotedStr('Vendas')                               ;

        with fmPedR30.quSQL,SQL do begin

             Close;
             Text := ' Select LojPed.NumPed,'+
                     '        LojPed.DopRpe,'+
                     '        TextoOcor(IntStrZeros(LojPed.CodVen,05),'''+ ' - ' +''',FinVen.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as ApeVen,'+
                     '        TextoOcor(IntStrZeros(LojPed.CodCli,05),'''+ ' - ' +''',LojPed.NomCli,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Cliente,'+
                     '        LojPed.TotPed,'+
                     '        LojPed.BasCom,'+
                     '        LojPed.TotCom,'+
                     '        LojPed.DteDel'+
                     ' From LojPed LEFT JOIN FinVen ON (LojPed.CodVen = FinVen.CodVen)'+ sFiltro;
             Open;

        end;

        if fmPedR30.quSQL.FieldbyName('NumPed').AsFloat > 0 then begin

           if sEncr = 'Nao' then begin

              sEncr := 'Sim';

              ppTexto10.Lines.Add('Devoluções/Cancelamentos');

              ppTexto01.Lines.Add('');
              ppTexto01.Lines.Add('');
              ppTexto02.Lines.Add('');
              ppTexto02.Lines.Add('');
              ppTexto03.Lines.Add('');
              ppTexto03.Lines.Add('');
              ppTexto04.Lines.Add('');
              ppTexto04.Lines.Add('');
              ppTexto05.Lines.Add('');
              ppTexto05.Lines.Add('');
              ppTexto06.Lines.Add('');
              ppTexto06.Lines.Add('');
              ppTexto07.Lines.Add('');
              ppTexto07.Lines.Add('');
              ppTexto08.Lines.Add('');
              ppTexto08.Lines.Add('');
              ppTexto09.Lines.Add('');
              ppTexto09.Lines.Add('');
              ppTexto10.Lines.Add('');
              ppTexto10.Lines.Add('');
              ppTexto11.Lines.Add('');
              ppTexto11.Lines.Add('');
              ppTexto12.Lines.Add('');
              ppTexto12.Lines.Add('');
              ppTexto13.Lines.Add('');
              ppTexto13.Lines.Add('');

              ppTexto01.Font.Style := [fsBold];
              ppTexto02.Font.Style := [fsBold];
              ppTexto03.Font.Style := [fsBold];
              ppTexto04.Font.Style := [fsBold];
              ppTexto05.Font.Style := [fsBold];
              ppTexto06.Font.Style := [fsBold];
              ppTexto07.Font.Style := [fsBold];
              ppTexto08.Font.Style := [fsBold];
              ppTexto09.Font.Style := [fsBold];

              ppTexto01.Font.Color := clNavy;
              ppTexto02.Font.Color := clNavy;
              ppTexto03.Font.Color := clNavy;
              ppTexto04.Font.Color := clNavy;
              ppTexto05.Font.Color := clNavy;
              ppTexto06.Font.Color := clNavy;
              ppTexto07.Font.Color := clNavy;
              ppTexto08.Font.Color := clNavy;
              ppTexto09.Font.Color := clNavy;

              ppTexto01.Lines.Add('Documento');
              ppTexto02.Lines.Add('NF Entrada');
              ppTexto03.Lines.Add('NF Cliente');
              ppTexto04.Lines.Add('Pedido');
              ppTexto05.Lines.Add('Dt.Fat ');
              ppTexto06.Lines.Add('Devolução');
              ppTexto07.Lines.Add('Cliente');
              ppTexto08.Lines.Add('Total Devolvido');
              ppTexto09.Lines.Add('Debito Comissão');
              ppTexto10.Lines.Add('');
              ppTexto11.Lines.Add('');
              ppTexto12.Lines.Add('');
              ppTexto13.Lines.Add('');

              ppTexto01.Font.Style := [];
              ppTexto02.Font.Style := [];
              ppTexto03.Font.Style := [];
              ppTexto04.Font.Style := [];
              ppTexto05.Font.Style := [];
              ppTexto06.Font.Style := [];
              ppTexto07.Font.Style := [];
              ppTexto08.Font.Style := [];
              ppTexto09.Font.Style := [];

              ppTexto01.Font.Color := clBlack;
              ppTexto02.Font.Color := clBlack;
              ppTexto03.Font.Color := clBlack;
              ppTexto04.Font.Color := clBlack;
              ppTexto05.Font.Color := clBlack;
              ppTexto06.Font.Color := clBlack;
              ppTexto07.Font.Color := clBlack;
              ppTexto08.Font.Color := clBlack;
              ppTexto09.Font.Color := clBlack;

           end;
           
           while not fmPedR30.quSQL.Eof do begin

                 ppTexto01.Lines.Add('');
                 ppTexto02.Lines.Add('');
                 ppTexto03.Lines.Add('');

                 ppTexto04.Lines.Add(IntToStr(fmPedR30.quSQL.FieldbyName('NUMPED').AsInteger));
                 ppTexto05.Lines.Add(FormatDateTime('dd/mm/yyyy',fmPedR30.quSQL.FieldbyName('DOPRPE').AsDateTime));
                 ppTexto06.Lines.Add(FormatDateTime('dd/mm/yyyy',fmPedR30.quSQL.FieldbyName('DTEDEL').AsDateTime));
                 ppTexto07.Lines.Add(fmPedR30.quSQL.FieldbyName('Cliente').AsString);
                 ppTexto08.Lines.Add(FormatFloat('###,###,##0.00',fmPedR30.quSQL.FieldbyName('BASCOM').AsFloat));
                 ppTexto09.Lines.Add(FormatFloat('###,###,##0.00',fmPedR30.quSQL.FieldbyName('TOTCOM').AsFloat)+' CCO');

                 ppTexto10.Lines.Add('');
                 ppTexto11.Lines.Add('');
                 ppTexto12.Lines.Add('');
                 ppTexto13.Lines.Add('');

                 sBasDev := sBasDev + fmPedR30.quSQL.FieldbyName('BASCOM').AsFloat;
                 sTotDev := sTotDev + fmPedR30.quSQL.FieldbyName('TOTCOM').AsFloat;

                 fmPedR30.quSQL.Next;

           end;
        end;
     end;
     
     if sBasDev > 0 then begin

        ppTexto01.Lines.Add('');
        ppTexto01.Lines.Add('');
        ppTexto02.Lines.Add('');
        ppTexto02.Lines.Add('');
        ppTexto03.Lines.Add('');
        ppTexto03.Lines.Add('');
        ppTexto04.Lines.Add('');
        ppTexto04.Lines.Add('');
        ppTexto05.Lines.Add('');
        ppTexto05.Lines.Add('');
        ppTexto06.Lines.Add('');
        ppTexto06.Lines.Add('');
        ppTexto07.Lines.Add('');
        ppTexto07.Lines.Add('');
        ppTexto08.Lines.Add('');
        ppTexto08.Lines.Add('');
        ppTexto09.Lines.Add('');
        ppTexto09.Lines.Add('');
        ppTexto10.Lines.Add('');
        ppTexto10.Lines.Add('');
        ppTexto11.Lines.Add('');
        ppTexto11.Lines.Add('');
        ppTexto12.Lines.Add('');
        ppTexto12.Lines.Add('');
        ppTexto13.Lines.Add('');
        ppTexto13.Lines.Add('');

        ppTexto11.Lines.Add('Total de Debitos');

        ppTexto12.Lines.Add(FormatFloat('###,###,##0.00',sBasDev));
        ppTexto13.Lines.Add(FormatFloat('###,###,##0.00',sTotDev));

        ppTexto01.Lines.Add('');
        ppTexto01.Lines.Add('');
        ppTexto02.Lines.Add('');
        ppTexto02.Lines.Add('');
        ppTexto03.Lines.Add('');
        ppTexto03.Lines.Add('');
        ppTexto04.Lines.Add('');
        ppTexto04.Lines.Add('');
        ppTexto05.Lines.Add('');
        ppTexto05.Lines.Add('');
        ppTexto06.Lines.Add('');
        ppTexto06.Lines.Add('');
        ppTexto07.Lines.Add('');
        ppTexto07.Lines.Add('');
        ppTexto08.Lines.Add('');
        ppTexto08.Lines.Add('');
        ppTexto09.Lines.Add('');
        ppTexto09.Lines.Add('');
        ppTexto10.Lines.Add('');
        ppTexto10.Lines.Add('');
        ppTexto11.Lines.Add('');
        ppTexto11.Lines.Add('');
        ppTexto12.Lines.Add('');
        ppTexto12.Lines.Add('');
        ppTexto13.Lines.Add('');
        ppTexto13.Lines.Add('');

        ppTexto11.Lines.Add('Saldo a Receber');

        ppTexto13.Lines.Add(FormatFloat('###,###,##0.00',fRound(sTotCom - sTotDev,2)));

     end;
  end;
end;

end.
