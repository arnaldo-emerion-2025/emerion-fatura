unit PedR14;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, ppDB, ppDBPipe, ppCtrls, ppStrtch,
  ppMemo, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, dxColorEdit, dxColorDateEdit, dxColorPickEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR14 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label26: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    bImprime: TBitBtn;
    Label20: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    EdPsqCodGve: TdxColorEdit;
    EdPsqCodCve: TdxColorEdit;
    bPsqCve: TSpeedButton;
    bPsqGve: TSpeedButton;
    EdPsqNomGve: TdxColorEdit;
    EdPsqNomCve: TdxColorEdit;
    ppReport: TppReport;
    ppHeaderBand: TppHeaderBand;
    ppLabel20: TppLabel;
    ppDetailBand: TppDetailBand;
    ppNumRes: TppDBText;
    ppDteRes: TppDBText;
    ppDteFat: TppDBText;
    ppCliente: TppDBText;
    ppBasCom: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand: TppGroupHeaderBand;
    ppLabel14: TppLabel;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel10: TppLabel;
    ppLabel18: TppLabel;
    ppLabel25: TppLabel;
    ppLabel46: TppLabel;
    ppApeVen: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    DsReport: TppDBPipeline;
    ppLabel2: TppLabel;
    ppTotCom: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLabel3: TppLabel;
    ppLabel45: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel8: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppFiltro2: TppMemo;
    ppFiltro1: TppMemo;
    ppSummaryBand1: TppSummaryBand;
    ppLabel9: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBText1: TppDBText;
    ppLabel12: TppLabel;
    PedResSEQARQ: TStringField;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResNUMRES: TIntegerField;
    PedResSEQLIB: TIntegerField;
    PedResNRONFS: TIntegerField;
    PedResNFSDEV: TIntegerField;
    PedResDTEFAT: TDateTimeField;
    PedResDTEDEV: TDateTimeField;
    PedResCODCLI: TIntegerField;
    PedResAPECLI: TStringField;
    PedResCODVEN: TIntegerField;
    PedResAPEVEN: TStringField;
    PedResBASCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResOPELIB: TStringField;
    PedResVENDEDOR: TStringField;
    PedResCLIENTE: TStringField;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppNroNfs: TppLabel;
    ppNfsDev: TppLabel;
    ppNfsCli: TppLabel;
    PedResNFSCLI: TStringField;
    ppFooterBand1: TppFooterBand;
    ppApeEmp: TppLabel;
    rgTipo: TRadioGroup;
    Label2: TLabel;
    Label4: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    procedure FormShow(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimeClick(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure bPsqCveClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure EdPsqCodCveExit(Sender: TObject);
    procedure ppHeaderBandBeforePrint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ppDetailBandBeforePrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ppFooterBand1BeforePrint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    SeqArq : string;
  end;

var
  fmPedR14: TfmPedR14;

implementation

uses dxDemoUtils, FPreview, ManGDB, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli,
     PsqVen, ManPri, PsqGve, PsqCve;

{$R *.DFM}

procedure TfmPedR14.bbPesquisaClick(Sender: TObject);
var
sFiltro : string;
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
  
  if (rgTipo.Itemindex = 0) or (rgTipo.Itemindex = 2) then begin
  
     sFiltro := ' Where FatDev.SitDev = '''+ 'Devolvido' +''' and FatDev.IntFin = '''+ 'Sim' +''' and FatDev.FlgDif = '''+ 'Nao' +'''';
     
     if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '''+ EdPsqCodGve.Text +'''';
     if Trim( EdPsqCodCve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '''+ EdPsqCodCve.Text +'''';
     if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodVen = '''+ EdPsqCodVen.Text +'''';
     if Trim( EdPsqModPfa.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.ModPfa = '''+ EdPsqModPfa.Text +'''';

     if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and FatDev.DteDev >= '''+ fDateToSQL(EdPsqDteRes1.Date) +'''';
     if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and FatDev.DteDev <= '''+ fDateToSQL(EdPsqDteRes2.Date) +'''';

     with quSQL,SQL do begin

          Close;
          Text := ' Delete From PedR14 Where SeqArq = '''+ SeqArq +'''';
          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR14'+
                  ' Select '''+ SeqArq +''','+
                  '        FatDev.CodEmp,'+
                  '        FatDev.DteRes,'+
                  '        FatDev.NumRes,'+
                  '        FatDev.SeqLib,'+
                  '        FatDev.NumNfs,'+
                  '        FatDev.NroNfs,'+
                  '        FatDev.NfsCli,'+
                  '        PedLib.DteFat,'+
                  '        FatDev.DteDev,'+
                  '        PedRes.CodCli,'+
                  '        FinCli.ApeCli,'+
                  '        PedRes.CodVen,'+
                  '        FinVen.ApeVen,'+
                  '        FatDev.BasCom,'+
                  '        FatDev.TotCom,'''+ 'Devolucao' +''''+
                  ' From FatDev LEFT JOIN PedLib ON (FatDev.CodEmp = PedLib.CodEmp)'+
                  '                             AND (FatDev.DteRes = PedLib.DteRes)'+
                  '                             AND (FatDev.NumRes = PedLib.NumRes)'+
                  '                             AND (FatDev.SeqLib = PedLib.SeqLib)'+
                  '             LEFT JOIN PedRes ON (PedLib.CodEmp = PedRes.CodEmp)'+
                  '                             AND (PedLib.DteRes = PedRes.DteRes)'+
                  '                             AND (PedLib.NumRes = PedRes.NumRes)'+
                  '             LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
                  '             LEFT JOIN FinVen ON (PedRes.CodVen = FinVen.CodVen)'+ sFiltro;
          ExecSQL;

     end;

     sFiltro := ' Where FatDep.SitDep = '''+ 'Concluido' +''' and FatDep.IntFin = '''+ 'Sim' +'''';

     if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '''+ EdPsqCodGve.Text + '''';
     if Trim( EdPsqCodCve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '''+ EdPsqCodCve.Text + '''';
     if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodVen = '''+ EdPsqCodVen.Text + '''';
     if Trim( EdPsqModPfa.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.ModPfa = '''+ EdPsqModPfa.Text +'''';
     
     if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and FatDep.DteDep >= '''+ fDateToSQL(EdPsqDteRes1.Date) +'''';
     if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and FatDep.DteDep <= '''+ fDateToSQL(EdPsqDteRes2.Date) +'''';

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR14'+
                  ' Select '''+ SeqArq +''','+
                  '        FatDep.CodEmp,'+
                  '        FatDep.DteRes,'+
                  '        FatDep.NumRes,'+
                  '        FatDep.SeqLib,'''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                  '        PedLib.DteFat,'+
                  '        FatDep.DteDep,'+
                  '        PedRes.CodCli,'+
                  '        FinCli.ApeCli,'+
                  '        PedRes.CodVen,'+
                  '        FinVen.ApeVen,'+
                  '        FatDep.BasCom,'+
                  '        FatDep.TotCom,'''+ 'Devolucao' +''''+
                  ' From FatDep LEFT JOIN PedLib ON (FatDep.CodEmp = PedLib.CodEmp)'+
                  '                             AND (FatDep.DteRes = PedLib.DteRes)'+
                  '                             AND (FatDep.NumRes = PedLib.NumRes)'+
                  '                             AND (FatDep.SeqLib = PedLib.SeqLib)'+
                  '             LEFT JOIN PedRes ON (PedLib.CodEmp = PedRes.CodEmp)'+
                  '                             AND (PedLib.DteRes = PedRes.DteRes)'+
                  '                             AND (PedLib.NumRes = PedRes.NumRes)'+
                  '             LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
                  '             LEFT JOIN FinVen ON (PedRes.CodVen = FinVen.CodVen)'+ sFiltro;
          ExecSQL;

     end;
  end;   

  if (rgTipo.Itemindex = 1) or (rgTipo.Itemindex = 2) then begin
  
     sFiltro := ' Where PedLib.SitLib = '''+ 'Cancelado' +''' and PedLib.IntFin = '''+ 'Sim' +'''';

     if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '''+ EdPsqCodGve.Text + '''';
     if Trim( EdPsqCodCve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '''+ EdPsqCodCve.Text + '''';
     if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodVen = '''+ EdPsqCodVen.Text + '''';
     if Trim( EdPsqModPfa.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.ModPfa = '''+ EdPsqModPfa.Text +'''';
     
     if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteDel >= '''+ fDateToSQL(EdPsqDteRes1.Date) +'''';
     if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteDel <= '''+ fDateToSQL(EdPsqDteRes2.Date) +'''';

     if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');
     
     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR14'+
                  ' Select '''+ SeqArq +''','+
                  '        PedLib.CodEmp,'+
                  '        PedLib.DteRes,'+
                  '        PedLib.NumRes,'+
                  '        PedLib.SeqLib,'''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                  '        PedLib.DteFat,'+
                  '        PedLib.DteDel,'+
                  '        PedRes.CodCli,'+
                  '        FinCli.ApeCli,'+
                  '        PedRes.CodVen,'+
                  '        FinVen.ApeVen,'+
                  '        PedLib.BasCom,'+
                  '        PedLib.TotCom,'''+ 'Cancelamento' +''''+
                  ' From PedLib LEFT JOIN PedRes ON (PedLib.CodEmp = PedRes.CodEmp)'+
                  '                             AND (PedLib.DteRes = PedRes.DteRes)'+
                  '                             AND (PedLib.NumRes = PedRes.NumRes)'+
                  '             LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
                  '             LEFT JOIN FinVen ON (PedRes.CodVen = FinVen.CodVen)'+ sFiltro;
          ExecSQL;

     end;
  end;

  with PedRes,SQL do begin

       Close;
       Text := ' Select PedR14.*,'+
               '        TextoOcor(IntStrZeros(CodVen,03),'''+ '-' +''',ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Vendedor,'+
               '        TextoOcor(IntStrZeros(CodCli,05),'''+ '-' +''',ApeCli,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Cliente From PedR14 Where SeqArq = '''+ SeqArq +''''+
               ' Order by CodVen,NumRes';
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR14 Where SeqArq = '''+ SeqArq +'''';
       ExecSQL;
       
  end;

  if PedResCodVen.Value > 0 then begin

     bImprime.Enabled := True;

     bImprime.SetFocus;

     end
  else
     begin

     bImprime.Enabled := False;

     bbPesquisa.SetFocus;

  end;
end;

procedure TfmPedR14.EdPsqCodEmpExit(Sender: TObject);
begin
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
          Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('ApeEmp').AsString ) <> '' then
             EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
          else
             begin

             EdPsqApeEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmPedR14.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmPedR14.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomVen From FinVen Where CodVen = '''+EdPsqCodVen.Text+'''';
          Open;

          EdPsqNomVen.Text := quSql.FieldByName('NomVen').AsString;
     end;

     end
  else
     EdPsqNomVen.Text := '';
end;

procedure TfmPedR14.BbPsqVenClick(Sender: TObject);
begin

  try

     fmPsqVen := TfmPsqVen.Create(Self);

     fmPsqVen.ShowModal;

     if fmPsqVen.CodVen > 0 then begin

        EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);
        EdPsqNomVen.Text := fmPsqVen.NomVen;

     end;

  finally

     FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmPedR14.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqModPfa.SetFocus;
end;

procedure TfmPedR14.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR14.bImprimeClick(Sender: TObject);
var
fmPreview: TfmPreview;
begin
  inherited;

  ActiveControl := nil;

  try

     ppReport.DeviceType := 'Screen';
     fmPreview := TfmPreview.Create(fmPedR14);
     fmPreview.ppViewer.Report := ppReport;
     ppReport.PrintToDevices;
     fmPreview.ShowModal;

     if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

  finally

     FreeAndNil(fmPreview);

  end;

  PedRes.First;

end;

procedure TfmPedR14.bPsqGveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGve := TfmPsqGve.Create(Self);

     fmPsqGve.ShowModal;

     if fmPsqGve.CodGve > 0 then begin

        EdPsqCodGve.Text := IntToStr(fmPsqGve.CodGve);
        EdPsqNomGve.Text := fmPsqGve.NomGve;

     end;

  finally

     FreeAndNil(fmPsqGve);

  end;
end;

procedure TfmPedR14.bPsqCveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCve := TfmPsqCve.Create(Self);

     fmPsqCve.ShowModal;

     if fmPsqCve.CodCve > 0 then begin

        EdPsqCodCve.Text := IntToStr(fmPsqCve.CodCve);
        EdPsqNomCve.Text := fmPsqCve.NomCve;

     end;

  finally

     FreeAndNil(fmPsqCve);

  end;
end;

procedure TfmPedR14.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR14.EdPsqCodGveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomGve From FinGve Where CodGve = '''+EdPsqCodGve.Text+'''';
          Open;

          EdPsqNomGve.Text := FieldByName('NomGve').AsString;

     end;

     end
  else
     EdPsqNomGve.Text := '';
end;

procedure TfmPedR14.EdPsqCodCveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCve From FinCve Where CodCve = '''+EdPsqCodCve.Text+'''';
          Open;

          EdPsqNomCve.Text := FieldByName('NomCve').AsString;

     end;

     end
  else
     EdPsqNomCve.Text := '';
end;

procedure TfmPedR14.ppHeaderBandBeforePrint(Sender: TObject);
begin
  inherited;

  ppFiltro1.Lines.Clear;
  ppFiltro2.Lines.Clear;

  ppFiltro1.Lines.Add(' ');
  ppFiltro2.Lines.Add(' ');

  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     ppFiltro1.Lines.Add('Empresa');
     ppFiltro2.Lines.Add(fNumZeros(EdPsqCodEmp.Text,7)+' - '+EdPsqApeEmp.Text);

  end;

  if Trim( EdPsqCodGve.Text ) <> '' then begin

     ppFiltro1.Lines.Add('Grupo');
     ppFiltro2.Lines.Add(fNumZeros(EdPsqCodGve.Text,7)+' - '+EdPsqNomGve.Text);

  end;

  if Trim( EdPsqCodCve.Text ) <> '' then begin

     ppFiltro1.Lines.Add('Categoria');
     ppFiltro2.Lines.Add(fNumZeros(EdPsqCodCve.Text,7)+' - '+EdPsqNomCve.Text);

  end;

  if Trim( EdPsqCodVen.Text ) <> '' then begin

     ppFiltro1.Lines.Add('Vendedor');
     ppFiltro2.Lines.Add(fNumZeros(EdPsqCodVen.Text,7)+' - '+EdPsqNomVen.Text);

  end;

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then begin

     ppFiltro1.Lines.Add('Periodo de');
     ppFiltro2.Lines.Add(FormatDateTime('dd/mm/yyyy',EdPsqDteRes1.Date)+' a '+FormatDateTime('dd/mm/yyyy',EdPsqDteRes2.Date));

  end;

  ppFiltro1.Lines.Add(' ');
  ppFiltro2.Lines.Add(' ');

end;

procedure TfmPedR14.FormCreate(Sender: TObject);
begin
  inherited;

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
            copy(TimeToStr(Time),1,2)+
            copy(TimeToStr(Time),4,2)+
            copy(TimeToStr(Time),7,2)+
            FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
            FNumZeros(Trim( IntToStr(Random(50000)) ),5);
  
end;

procedure TfmPedR14.ppDetailBandBeforePrint(Sender: TObject);
begin
  inherited;

  if PedResNroNfs.Value > 0 then
     ppNroNfs.Caption := IntToStr( PedResNroNfs.Value )
  else
     ppNroNfs.Caption := ' ';

  if PedResNfsDev.Value > 0 then
     ppNfsDev.Caption := IntToStr( PedResNfsDev.Value )
  else
     ppNfsDev.Caption := ' ';

  if Trim( PedResNfsCli.Value ) <> '' then
     ppNfsCli.Caption := PedResNfsCli.Value
  else
     ppNfsCli.Caption := ' ';

end;

procedure TfmPedR14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR14.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR14 := nil;
end;

procedure TfmPedR14.ppFooterBand1BeforePrint(Sender: TObject);
begin
  inherited;
  ppApeEmp.Caption := GApeEmp;
end;

end.

