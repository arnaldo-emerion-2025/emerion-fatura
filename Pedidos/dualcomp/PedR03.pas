unit PedR03;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, ImgList, dxColorEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR03 = class(TfmPadrao)
    FinCli: TwwQuery;
    DsCli: TwwDataSource;
    PaintBox: TPaintBox;
    bSelecionar: TBitBtn;
    quSql: TwwQuery;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grCli: TdxDBGrid;
    bImprimir: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    EdPsqCodTra: TdxColorEdit;
    EdPsqCodAtd: TdxColorEdit;
    EdPsqCodVen: TdxColorEdit;
    bPsqVen: TSpeedButton;
    bPsqAtd: TSpeedButton;
    bPsqTra: TSpeedButton;
    EdPsqNomTra: TdxColorEdit;
    EdPsqNomAtd: TdxColorEdit;
    EdPsqNomVen: TdxColorEdit;
    Label5: TLabel;
    EdPsqCodGCl: TdxColorEdit;
    bPsqGCl: TSpeedButton;
    EdPsqNomGCl: TdxColorEdit;
    Label8: TLabel;
    EdPsqCodCCl: TdxColorEdit;
    bPsqCCl: TSpeedButton;
    EdPsqNomCCl: TdxColorEdit;
    Label11: TLabel;
    EdPsqCodMcr: TdxColorEdit;
    bPsqMcr: TSpeedButton;
    EdPsqNomMcr: TdxColorEdit;
    Label12: TLabel;
    EdPsqCodMrg: TdxColorEdit;
    bPsqMrg: TSpeedButton;
    EdPsqNomMrg: TdxColorEdit;
    Label13: TLabel;
    EdPsqCodSet: TdxColorEdit;
    bPsqSet: TSpeedButton;
    EdPsqNomSet: TdxColorEdit;
    Label14: TLabel;
    EdPsqCodMst: TdxColorEdit;
    bPsqMst: TSpeedButton;
    EdPsqNomMst: TdxColorEdit;
    rgEndereco: TRadioGroup;
    FinCliCODCLI: TIntegerField;
    FinCliNOMCLI: TStringField;
    FinCliCGCCPF: TStringField;
    FinCliENDERECO: TStringField;
    FinCliTELEFONE: TStringField;
    FinCliAPECLI: TStringField;
    grCliCODCLI: TdxDBGridMaskColumn;
    grCliNOMCLI: TdxDBGridMaskColumn;
    grCliCGCCPF: TdxDBGridMaskColumn;
    grCliENDERECO: TdxDBGridMaskColumn;
    grCliTELEFONE: TdxDBGridMaskColumn;
    grCliAPECLI: TdxDBGridMaskColumn;
    FinCliCEPCLI: TStringField;
    grCliCEPCLI: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grCliReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure bPsqAtdClick(Sender: TObject);
    procedure bPsqTraClick(Sender: TObject);
    procedure bPsqGClClick(Sender: TObject);
    procedure bPsqCClClick(Sender: TObject);
    procedure bPsqMcrClick(Sender: TObject);
    procedure bPsqMrgClick(Sender: TObject);
    procedure bPsqSetClick(Sender: TObject);
    procedure bPsqMstClick(Sender: TObject);
    procedure EdPsqCodVenKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure EdPsqCodAtdExit(Sender: TObject);
    procedure EdPsqCodTraExit(Sender: TObject);
    procedure EdPsqCodGClExit(Sender: TObject);
    procedure EdPsqCodCClExit(Sender: TObject);
    procedure EdPsqCodMcrExit(Sender: TObject);
    procedure EdPsqCodMrgExit(Sender: TObject);
    procedure EdPsqCodSetExit(Sender: TObject);
    procedure EdPsqCodMstExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
  end;

var
  fmPedR03: TfmPedR03;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, PsqVen,
  PsqAtd, PsqTra, PsqGCl, PsqCCl, PsqMcr, PsqMrg, PsqSet, PsqMst;

{$R *.DFM}

procedure TfmPedR03.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR03.bSelecionarClick(Sender: TObject);
var
sFiltro,sBase : string;
begin

  ActiveControl := nil;

  if rgEndereco.ItemIndex = 0 then sBase := ' Select CodCli,NomCli,ApeCli,CeeCli as CepCli,'+
                                            '        FormatCgcCpf(CgcCli) as CgcCpf,'+
                                            '        Endereco(TeeCli,EneCli,NreCli,RfeCli,BaeCli,CieCli,UfeCli) as Endereco,'+
                                            '        TextoOcor('''+ '(' +''',Pt4Cli,'''+ ')' +''','''+ ' ' +''',Fo4Cli,'''+ '' +''','''+ '' +''') as Telefone'+
                                            ' From FinCli';

  if rgEndereco.ItemIndex = 1 then sBase := ' Select CodCli,NomCli,ApeCli,CeaCli as CepCli,'+
                                            '        FormatCgcCpf(CgcCli) as CgcCpf,'+
                                            '        Endereco(TeaCli,EnaCli,NraCli,RfaCli,BaaCli,CiaCli,UfaCli) as Endereco,'+
                                            '        TextoOcor('''+ '(' +''',Pt3Cli,'''+ ')' +''','''+ ' ' +''',Fo3Cli,'''+ '' +''','''+ '' +''') as Telefone'+
                                            ' From FinCli';

  if rgEndereco.ItemIndex = 2 then sBase := ' Select CodCli,NomCli,ApeCli,CecCli as CepCli,'+
                                            '        FormatCgcCpf(CgcCli) as CgcCpf,'+
                                            '        Endereco(TecCli,EncCli,NrcCli,RfcCli,BacCli,CicCli,UfcCli) as Endereco,'+
                                            '        TextoOcor('''+ '(' +''',Pt2Cli,'''+ ')' +''','''+ ' ' +''',Fo2Cli,'''+ '' +''','''+ '' +''') as Telefone'+
                                            ' From FinCli';

  if rgEndereco.ItemIndex = 3 then sBase := ' Select CodCli,NomCli,ApeCli,CefCli as CepCli,'+
                                            '        FormatCgcCpf(CgcCli) as CgcCpf,'+
                                            '        Endereco(TefCli,EnfCli,NrfCli,RffCli,BafCli,CifCli,UffCli) as Endereco,'+
                                            '        TextoOcor('''+ '(' +''',Pt1Cli,'''+ ')' +''','''+ ' ' +''',Fo1Cli,'''+ '' +''','''+ '' +''') as Telefone'+
                                            ' From FinCli';

  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' Where CodVen = '''+ EdPsqCodVen.Text +'''';

  if Trim( EdPsqCodAtd.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where CodAtd = '''+ EdPsqCodAtd.Text +''''
     else
        sFiltro := sFiltro + ' and CodAtd = '''+ EdPsqCodAtd.Text +'''';

  end;

  if Trim( EdPsqCodTra.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where CodTra = '''+ EdPsqCodTra.Text +''''
     else
        sFiltro := sFiltro + ' and CodTra = '''+ EdPsqCodTra.Text +'''';

  end;

  if Trim( EdPsqCodGCl.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where CodGCl = '''+ EdPsqCodGCl.Text +''''
     else
        sFiltro := sFiltro + ' and CodGCl = '''+ EdPsqCodGCl.Text +'''';

  end;

  if Trim( EdPsqCodCCl.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where CodCCl = '''+ EdPsqCodCCl.Text +''''
     else
        sFiltro := sFiltro + ' and CodCCl = '''+ EdPsqCodCCl.Text +'''';

  end;

  if Trim( EdPsqCodMcr.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where CodMcr = '''+ EdPsqCodMcr.Text +''''
     else
        sFiltro := sFiltro + ' and CodMcr = '''+ EdPsqCodMcr.Text +'''';

  end;

  if Trim( EdPsqCodMrg.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where CodMrg = '''+ EdPsqCodMrg.Text +''''
     else
        sFiltro := sFiltro + ' and CodMrg = '''+ EdPsqCodMrg.Text +'''';

  end;

  if Trim( EdPsqCodSet.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where CodSet = '''+ EdPsqCodSet.Text +''''
     else
        sFiltro := sFiltro + ' and CodSet = '''+ EdPsqCodSet.Text +'''';

  end;

  if Trim( EdPsqCodMst.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where CodMst = '''+ EdPsqCodMst.Text +''''
     else
        sFiltro := sFiltro + ' and CodMst = '''+ EdPsqCodMst.Text +'''';

  end;

  with FinCli,SQL do begin

       Close;
       Text := sBase + sFiltro + ' Order by CodCli';
       Open;

  end;

  grCli.FullExpand;

  grCli.SetFocus;

end;

procedure TfmPedR03.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR03.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodVen.SetFocus;
end;

procedure TfmPedR03.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR03.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : '+ EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Atendente : '+ EdPsqCodAtd.Text + ' - ' + EdPsqNomAtd.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Transportadora : '+ EdPsqCodTra.Text + ' - ' + EdPsqNomTra.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdPsqCodGCl.Text + ' - ' + EdPsqNomGCl.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : '+ EdPsqCodCCl.Text + ' - ' + EdPsqNomCCl.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Macro-Região : '+ EdPsqCodMcr.Text + ' - ' + EdPsqNomMcr.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Micro-Região : '+ EdPsqCodMrg.Text + ' - ' + EdPsqNomMrg.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Setor : '+ EdPsqCodSet.Text + ' - ' + EdPsqNomSet.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Micro-Setor : '+ EdPsqCodMst.Text + ' - ' + EdPsqNomMst.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR03.grCliReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR03.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação simplificada de clientes.htm', grCli.SaveToHTML);
end;

procedure TfmPedR03.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação simplificada de clientes.xls', grCli.SaveToXLS);
end;

procedure TfmPedR03.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação simplificada de clientes.xml', grCli.SaveToXML);
end;

procedure TfmPedR03.bPsqVenClick(Sender: TObject);
begin
  inherited;

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
end;

procedure TfmPedR03.bPsqAtdClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqAtd := TfmPsqAtd.Create(Self);

     fmPsqAtd.ShowModal;

     if fmPsqAtd.CodAtd > 0 then begin

        EdPsqNomAtd.Text := fmPsqAtd.NomAtd;
        EdPsqCodAtd.Text := IntToStr(fmPsqAtd.CodAtd);

     end;

  finally

     FreeAndNil(fmPsqAtd);

  end;
end;

procedure TfmPedR03.bPsqTraClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqTra := TfmPsqTra.Create(Self);

     fmPsqTra.ShowModal;

     if fmPsqTra.CodTra > 0 then begin

        EdPsqNomTra.Text := fmPsqTra.NomTra;
        EdPsqCodTra.Text := IntToStr(fmPsqTra.CodTra);

     end;

  finally

     FreeAndNil(fmPsqTra);

  end;
end;

procedure TfmPedR03.bPsqGClClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGCl := TfmPsqGCl.Create(Self);

     fmPsqGCl.ShowModal;

     if fmPsqGCl.CodGCl > 0 then begin

        EdPsqNomGCl.Text := fmPsqGCl.NomGCl;
        EdPsqCodGCl.Text := IntToStr(fmPsqGCl.CodGCl);

     end;

  finally

     FreeAndNil(fmPsqGCl);

  end;
end;

procedure TfmPedR03.bPsqCClClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCCl := TfmPsqCCl.Create(Self);

     fmPsqCCl.ShowModal;

     if fmPsqCCl.CodCCl > 0 then begin

        EdPsqNomCCl.Text := fmPsqCCl.NomCCl;
        EdPsqCodCCl.Text := IntToStr(fmPsqCCl.CodCCl);

     end;

  finally

     FreeAndNil(fmPsqCCl);

  end;
end;

procedure TfmPedR03.bPsqMcrClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqMcr := TfmPsqMcr.Create(Self);

     fmPsqMcr.ShowModal;

     if fmPsqMcr.CodMcr > 0 then begin

        EdPsqNomMcr.Text := fmPsqMcr.NomMcr;
        EdPsqCodMcr.Text := IntToStr(fmPsqMcr.CodMcr);

     end;

  finally

     FreeAndNil(fmPsqMcr);

  end;
end;

procedure TfmPedR03.bPsqMrgClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqMrg := TfmPsqMrg.Create(Self);

     if Trim( EdPsqCodMcr.Text ) <> '' then begin

        fmPsqMrg.FinMrg.Close;
        fmPsqMrg.FinMrg.Params[0].AsInteger := StrToInt( EdPsqCodMcr.Text );
        fmPsqMrg.FinMrg.Open;

     end;

     fmPsqMrg.ShowModal;

     if fmPsqMrg.CodMrg > 0 then begin

        EdPsqNomMrg.Text := fmPsqMrg.NomMrg;
        EdPsqCodMrg.Text := IntToStr(fmPsqMrg.CodMrg);

     end;

  finally   

     FreeAndNil(fmPsqMrg);

  end;
end;

procedure TfmPedR03.bPsqSetClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqSet := TfmPsqSet.Create(Self);

     if Trim( EdPsqCodMcr.Text ) <> '' then begin

        if Trim( EdPsqCodMrg.Text ) <> '' then begin

           fmPsqSet.FinSet.Close;
           fmPsqSet.FinSet.Params[0].AsInteger := StrToInt( EdPsqCodMcr.Text );
           fmPsqSet.FinSet.Params[1].AsInteger := StrToInt( EdPsqCodMrg.Text );
           fmPsqSet.FinSet.Open;

        end;
     end;

     fmPsqSet.ShowModal;

     if fmPsqSet.CodSet > 0 then begin

        EdPsqNomSet.Text := fmPsqSet.NomSet;
        EdPsqCodSet.Text := IntToStr(fmPsqSet.CodSet);

     end;

  finally

     FreeAndNil(fmPsqSet);

  end;
end;

procedure TfmPedR03.bPsqMstClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqMst := TfmPsqMst.Create(Self);

     if Trim( EdPsqCodMcr.Text ) <> '' then begin

        if Trim( EdPsqCodMrg.Text ) <> '' then begin

           if Trim( EdPsqCodSet.Text ) <> '' then begin

              fmPsqMst.FinMst.Close;
              fmPsqMst.FinMst.Params[0].AsInteger := StrToInt( EdPsqCodMcr.Text );
              fmPsqMst.FinMst.Params[1].AsInteger := StrToInt( EdPsqCodMrg.Text );
              fmPsqMst.FinMst.Params[2].AsInteger := StrToInt( EdPsqCodSet.Text );
              fmPsqMst.FinMst.Open;

           end;
        end;
     end;

     fmPsqMst.ShowModal;

     if fmPsqMst.CodMst > 0 then begin

        EdPsqNomMst.Text := fmPsqMst.NomMst;
        EdPsqCodMst.Text := IntToStr(fmPsqMst.CodMst);

     end;

  finally   

     FreeAndNil(fmPsqMst);

  end;
end;

procedure TfmPedR03.EdPsqCodVenKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR03.EdPsqCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select ApeVen From FinVen Where CodVen = '''+ EdPsqCodVen.Text +'''';
          Open;

          EdPsqNomVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqNomVen.Text := '';
end;

procedure TfmPedR03.EdPsqCodAtdExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodAtd.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select ApeVen From FinVen Where CodVen = '''+ EdPsqCodAtd.Text +'''';
          Open;

          EdPsqNomAtd.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqNomAtd.Text := '';
end;

procedure TfmPedR03.EdPsqCodTraExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodTra.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomTra From FinTra Where CodTra = '''+ EdPsqCodTra.Text +'''';
          Open;

          EdPsqNomTra.Text := FieldByName('NomTra').AsString;

     end;

     end
  else
     EdPsqNomTra.Text := '';
end;

procedure TfmPedR03.EdPsqCodGClExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGCl.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGCl From FinGCl Where CodGCl = '''+ EdPsqCodGCl.Text +'''';
          Open;

          EdPsqNomGCl.Text := FieldByName('NomGCl').AsString;

     end;

     end
  else
     EdPsqNomGCl.Text := '';
end;

procedure TfmPedR03.EdPsqCodCClExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCCl.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCCl From FinCCl Where CodCCl = '''+ EdPsqCodCCl.Text +'''';
          Open;

          EdPsqNomCCl.Text := FieldByName('NomCCl').AsString;

     end;

     end
  else
     EdPsqNomCCl.Text := '';
end;

procedure TfmPedR03.EdPsqCodMcrExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodMcr.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomMcr From FinMcr Where CodMcr = '''+ EdPsqCodMcr.Text +'''';
          Open;

          EdPsqNomMcr.Text := FieldByName('NomMcr').AsString;

     end;

     end
  else
     EdPsqNomMcr.Text := '';
end;

procedure TfmPedR03.EdPsqCodMrgExit(Sender: TObject);
begin
  inherited;

  EdPsqNomMrg.Text := '';

  if Trim( EdPsqCodMcr.Text ) <> '' then begin

     if Trim( EdPsqCodMrg.Text ) <> '' then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select NomMrg From FinMrg'+
                     ' Where CodMcr = '''+ EdPsqCodMcr.Text +''''+
                     '   and CodMrg = '''+ EdPsqCodMrg.Text +'''';
             Open;

             EdPsqNomMrg.Text := FieldByName('NomMrg').AsString;

        end;
     end;
  end;
end;

procedure TfmPedR03.EdPsqCodSetExit(Sender: TObject);
begin
  inherited;

  EdPsqNomSet.Text := '';

  if Trim( EdPsqCodMcr.Text ) <> '' then begin

     if Trim( EdPsqCodMrg.Text ) <> '' then begin

        if Trim( EdPsqCodSet.Text ) <> '' then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select NomSet From FinSet'+
                        ' Where CodMcr = '''+ EdPsqCodMcr.Text +''''+
                        '   and CodMrg = '''+ EdPsqCodMrg.Text +''''+
                        '   and CodSet = '''+ EdPsqCodSet.Text +'''';
                Open;

                EdPsqNomSet.Text := FieldByName('NomSet').AsString;

           end;
        end;
     end;
  end;
end;

procedure TfmPedR03.EdPsqCodMstExit(Sender: TObject);
begin
  inherited;

  EdPsqNomMst.Text := '';

  if Trim( EdPsqCodMcr.Text ) <> '' then begin

     if Trim( EdPsqCodMrg.Text ) <> '' then begin

        if Trim( EdPsqCodSet.Text ) <> '' then begin

           if Trim( EdPsqCodMst.Text ) <> '' then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select NomMst From FinMst'+
                           ' Where CodMcr = '''+ EdPsqCodMcr.Text +''''+
                           '   and CodMrg = '''+ EdPsqCodMrg.Text +''''+
                           '   and CodSet = '''+ EdPsqCodSet.Text +''''+
                           '   and CodMst = '''+ EdPsqCodMst.Text +'''';
                   Open;

                   EdPsqNomMst.Text := FieldByName('NomMst').AsString;

              end;
           end;
        end;
     end;
  end;
end;

procedure TfmPedR03.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR03.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR03 := nil;
end;

end.

