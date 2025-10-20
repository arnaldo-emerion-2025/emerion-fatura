unit PedR13;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, ppDB, ppDBPipe, ppCtrls, ppStrtch,
  ppMemo, ppBands, ppClass, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, dxColorEdit, dxColorDateEdit, dxColorPickEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR13 = class(TfmPadrao)
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
    PedResNUMRES: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResAPEVEN: TStringField;
    PedResTOTLIB: TFloatField;
    PedResBASCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResNRONFS: TIntegerField;
    PedResCLIENTE: TStringField;
    PedResMEDCOM: TFloatField;
    PedResDTEFAT: TDateTimeField;
    ppReport: TppReport;
    ppHeaderBand: TppHeaderBand;
    ppLabel20: TppLabel;
    ppDetailBand: TppDetailBand;
    ppNroNfs: TppDBText;
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
    PedResCODVEN: TIntegerField;
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
    PedResSITLIB: TStringField;
    ppFooterBand1: TppFooterBand;
    ppApeEmp: TppLabel;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ppFooterBand1BeforePrint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPedR13: TfmPedR13;

implementation

uses dxDemoUtils, FPreview, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen,
     ManPri, PsqGve, PsqCve, ManGDB;

{$R *.DFM}

procedure TfmPedR13.bbPesquisaClick(Sender: TObject);
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
  
  sFiltro := ' Where ( PedLib.SitLib = '''+ 'Faturado' +''' or PedLib.SitLib = '''+ 'Devolvido' +''' or PedLib.SitLib = '''+ 'Cancelado' +''' )'+
             '   and PedLib.IntFin = '''+ 'Sim' +'''';

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodEmp = '''+ EdPsqCodEmp.Text +'''';
  if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '''+ EdPsqCodGve.Text +'''';
  if Trim( EdPsqCodCve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '''+ EdPsqCodCve.Text +'''';
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodVen = '''+ EdPsqCodVen.Text +'''';
  if Trim( EdPsqModPfa.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.ModPfa = '''+ EdPsqModPfa.Text +'''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat >= '''+ fDateToSQL(EdPsqDteRes1.Date) +'''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat <= '''+ fDateToSQL(EdPsqDteRes2.Date) +'''';

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');
  
  with PedRes,SQL do begin

       Close;
       Text := ' Select PedLib.NumRes,'+
               '        PedLib.DteRes,'+
               '        PedLib.DteFat,'+
               '        PedLib.NroNfs,'+
               '        PedLib.CodVen,'+
               '        TextoOcor(IntStrZeros(PedLib.CodVen,05),'''+ ' - ' +''',FinVen.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as ApeVen,'+
               '        TextoOcor(IntStrZeros(PedLib.CodCli,05),'''+ ' - ' +''',FinCli.ApeCli,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Cliente,'+
               '        PedLib.TotGer as TotLib,'+
               '        PedLib.BasCom,'+
               '        PedLib.TotCom,'+
               '        PedLib.MedCom,'+
               '        PedLib.SitLib'+
               ' From PedLib LEFT JOIN FinVen ON (PedLib.CodVen = FinVen.CodVen)'+
               '             LEFT JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli)'+ sFiltro + ' Order by PedLib.CodVen,PedLib.NumRes';
       Open;

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

procedure TfmPedR13.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmPedR13.BbPsqEmpClick(Sender: TObject);
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

procedure TfmPedR13.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmPedR13.BbPsqVenClick(Sender: TObject);
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

procedure TfmPedR13.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR13.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR13.bImprimeClick(Sender: TObject);
var
fmPreview: TfmPreview;
begin
  inherited;

  ActiveControl := nil;

  try

     ppReport.DeviceType := 'Screen';
     fmPreview := TfmPreview.Create(fmPedR13);
     fmPreview.ppViewer.Report := ppReport;
     ppReport.PrintToDevices;
     fmPreview.ShowModal;

     if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

  finally

     FreeAndNil(fmPreview);

  end;

  PedRes.First;

end;

procedure TfmPedR13.bPsqGveClick(Sender: TObject);
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

procedure TfmPedR13.bPsqCveClick(Sender: TObject);
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

procedure TfmPedR13.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR13.EdPsqCodGveExit(Sender: TObject);
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

procedure TfmPedR13.EdPsqCodCveExit(Sender: TObject);
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

procedure TfmPedR13.ppHeaderBandBeforePrint(Sender: TObject);
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

procedure TfmPedR13.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR13.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR13 := nil;
end;

procedure TfmPedR13.ppFooterBand1BeforePrint(Sender: TObject);
begin
  inherited;
  ppApeEmp.Caption := GApeEmp;
end;

end.

