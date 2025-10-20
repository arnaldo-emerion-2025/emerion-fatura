unit PedR22;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorEdit,
  dxColorPickEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR22 = class(TfmPadrao)
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
    EdPsqApeAtd: TdxColorEdit;
    EdPsqApeVen: TdxColorEdit;
    Label5: TLabel;
    EdPsqCodGCl: TdxColorEdit;
    bPsqGCl: TSpeedButton;
    EdPsqNomGCl: TdxColorEdit;
    Label8: TLabel;
    EdPsqCodCCl: TdxColorEdit;
    bPsqCCl: TSpeedButton;
    EdPsqNomCCl: TdxColorEdit;
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
    FinCliCLIDEV: TFloatField;
    grCliCLIDEV: TdxDBGridColumn;
    FinCliLIMCLI: TFloatField;
    grCliLIMCLI: TdxDBGridColumn;
    Colunas1: TMenuItem;
    FinCliEMACLI: TStringField;
    grCliEMACLI: TdxDBGridColumn;
    FinCliDTEATU: TDateTimeField;
    grCliDTEATU: TdxDBGridColumn;
    FinCliDULPED: TDateTimeField;
    FinCliTOTPED: TFloatField;
    grCliDULPED: TdxDBGridColumn;
    grCliTOTPED: TdxDBGridColumn;
    rgStatus: TRadioGroup;
    Label1: TLabel;
    EdPsqId_FinHol: TdxColorEdit;
    bPsqHol: TSpeedButton;
    EdPsqNomHol: TdxColorEdit;
    Label4: TLabel;
    EdPsqUfeCli: TdxColorPickEdit;
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
    procedure EdPsqCodVenKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure EdPsqCodAtdExit(Sender: TObject);
    procedure EdPsqCodTraExit(Sender: TObject);
    procedure EdPsqCodGClExit(Sender: TObject);
    procedure EdPsqCodCClExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Colunas1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure bPsqHolClick(Sender: TObject);
    procedure EdPsqId_FinHolExit(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
  end;

var
  fmPedR22: TfmPedR22;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, PsqVen, PsqAt2,
     PsqTra, PsqGCl, PsqCCl, ManCol, PsqHol;

{$R *.DFM}

procedure TfmPedR22.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR22.bSelecionarClick(Sender: TObject);
var
  sFiltro,sBase : string;
begin

  ActiveControl := nil;

  if rgEndereco.ItemIndex = 0 then sBase := ' Select FinCli.CodCli,'+
                                            '        FinCli.NomCli,'+
                                            '        FinCli.ApeCli,'+
                                            '        FinCli.CeeCli as CepCli,'+
                                            '        FinCli.Em1Cli as EmaCli,'+
                                            '        FormatCgcCpf(FinCli.CgcCli) as CgcCpf,'+
                                            '        Endereco(FinCli.TeeCli,FinCli.EneCli,FinCli.NreCli,FinCli.RfeCli,FinCli.BaeCli,FinCli.CieCli,FinCli.UfeCli) as Endereco,'+
                                            '        TextoOcor('+ QuotedStr('(') +',FinCli.Pt4Cli,'+ QuotedStr(')') +','+ QuotedStr(' ') +',FinCli.Fo4Cli,'+ QuotedStr('') +','+ QuotedStr('') +') as Telefone,'+
                                            '        FinCli.DteAtu,'+
                                            '        FinCli.Clidev,'+
                                            '        FinCli.LimCli,'+
                                            '        (Select First 1 DteRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Dulped,'+
                                            '        (Select First 1 TotRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Totped'+
                                            ' From FinCli';

  if rgEndereco.ItemIndex = 1 then sBase := ' Select FinCli.CodCli,'+
                                            '        FinCli.NomCli,'+
                                            '        FinCli.ApeCli,'+
                                            '        FinCli.CeaCli as CepCli,'+
                                            '        FinCli.Em1Cli as EmaCli,'+
                                            '        FormatCgcCpf(FinCli.CgcCli) as CgcCpf,'+
                                            '        Endereco(FinCli.TeaCli,FinCli.EnaCli,FinCli.NraCli,FinCli.RfaCli,FinCli.BaaCli,FinCli.CiaCli,FinCli.UfaCli) as Endereco,'+
                                            '        TextoOcor('+ QuotedStr('(') +',FinCli.Pt3Cli,'+ QuotedStr(')') +','+ QuotedStr(' ') +',FinCli.Fo3Cli,'+ QuotedStr('') +','+ QuotedStr('') +') as Telefone,'+
                                            '        FinCli.DteAtu,'+
                                            '        FinCli.Clidev,'+
                                            '        FinCli.LimCli,'+
                                            '        (Select First 1 DteRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Dulped,'+
                                            '        (Select First 1 TotRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Totped'+
                                            ' From FinCli';

  if rgEndereco.ItemIndex = 2 then sBase := ' Select FinCli.CodCli,'+
                                            '        FinCli.NomCli,'+
                                            '        FinCli.ApeCli,'+
                                            '        FinCli.CecCli as CepCli,'+
                                            '        FinCli.Em1Cli as EmaCli,'+
                                            '        FormatCgcCpf(FinCli.CgcCli) as CgcCpf,'+
                                            '        Endereco(FinCli.TecCli,FinCli.EncCli,FinCli.NrcCli,FinCli.RfcCli,FinCli.BacCli,FinCli.CicCli,FinCli.UfcCli) as Endereco,'+
                                            '        TextoOcor('+ QuotedStr('(') +',FinCli.Pt2Cli,'+ QuotedStr(')') +','+ QuotedStr(' ') +',FinCli.Fo2Cli,'+ QuotedStr('') +','+ QuotedStr('') +') as Telefone,'+
                                            '        FinCli.DteAtu,'+
                                            '        FinCli.Clidev,'+
                                            '        FinCli.LimCli,'+
                                            '        (Select First 1 DteRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Dulped,'+
                                            '        (Select First 1 TotRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Totped'+
                                            ' From FinCli';

  if rgEndereco.ItemIndex = 3 then sBase := ' Select FinCli.CodCli,'+
                                            '        FinCli.NomCli,'+
                                            '        FinCli.ApeCli,'+
                                            '        FinCli.CefCli as CepCli,'+
                                            '        FinCli.Em1Cli as EmaCli,'+
                                            '        FormatCgcCpf(FinCli.CgcCli) as CgcCpf,'+
                                            '        Endereco(FinCli.TefCli,FinCli.EnfCli,FinCli.NrfCli,FinCli.RffCli,FinCli.BafCli,FinCli.CifCli,FinCli.UffCli) as Endereco,'+
                                            '        TextoOcor('+ QuotedStr('(') +',FinCli.Pt1Cli,'+ QuotedStr(')') +','+ QuotedStr(' ') +',FinCli.Fo1Cli,'+ QuotedStr('') +','+ QuotedStr('') +') as Telefone,'+
                                            '        FinCli.DteAtu,'+
                                            '        FinCli.Clidev,'+
                                            '        FinCli.LimCli,'+
                                            '        (Select First 1 DteRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Dulped,'+
                                            '        (Select First 1 TotRes from PedRes Where PedRes.CodCli = FinCli.CodCli Order By PedRes.DteRes Desc) as Totped'+
                                            ' From FinCli';

  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' Where FinCli.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  if Trim( EdPsqCodAtd.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where FinCli.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text)
     else
        sFiltro := sFiltro + ' and FinCli.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text);

  end;

  if Trim( EdPsqCodTra.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where FinCli.CodTra = '+ QuotedStr(EdPsqCodTra.Text)
     else
        sFiltro := sFiltro + ' and FinCli.CodTra = '+ QuotedStr(EdPsqCodTra.Text);

  end;

  if Trim( EdPsqCodGCl.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where FinCli.CodGCl = '+ QuotedStr(EdPsqCodGCl.Text)
     else
        sFiltro := sFiltro + ' and FinCli.CodGCl = '+ QuotedStr(EdPsqCodGCl.Text);

  end;

  if Trim( EdPsqId_FinHol.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where FinCli.Id_FinHol = '+ QuotedStr(EdPsqId_FinHol.Text)
     else
        sFiltro := sFiltro + ' and FinCli.Id_FinHol = '+ QuotedStr(EdPsqId_FinHol.Text);

  end;

  if Trim( EdPsqCodCCl.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where FinCli.CodCCl = '+ QuotedStr(EdPsqCodCCl.Text)
     else
        sFiltro := sFiltro + ' and FinCli.CodCCl = '+ QuotedStr(EdPsqCodCCl.Text);

  end;

  if Trim( EdPsqUfeCli.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where FinCli.UffCli = '+ QuotedStr(EdPsqUfeCli.Text)
     else
        sFiltro := sFiltro + ' and FinCli.UffCli = '+ QuotedStr(EdPsqUfeCli.Text);

  end;

  if pos('Where',sFiltro) = 0 then begin
  
     case rgStatus.ItemIndex of
          0: sFiltro := ' Where FinCli.FlbCli = '+ QuotedStr(' ');
          1: sFiltro := ' Where FinCli.FlbCli = '+ QuotedStr('*');
     end;

     end
  else
     begin

     case rgStatus.ItemIndex of
          0: sFiltro := sFiltro + ' and FinCli.FlbCli = '+ QuotedStr(' ');
          1: sFiltro := sFiltro + ' and FinCli.FlbCli = '+ QuotedStr('*');
     end;
  end;
     
  with FinCli,SQL do begin

       Close;
       Text := sBase + sFiltro;
       Open;

  end;

  grCli.FullExpand;

  grCli.SetFocus;

end;

procedure TfmPedR22.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR22.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqUfeCli.SetFocus;
end;

procedure TfmPedR22.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR22.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Estado : '+ EdPsqUfeCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : '+ EdPsqCodVen.Text + ' - ' + EdPsqApeVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Atendente : '+ EdPsqCodAtd.Text + ' - ' + EdPsqApeAtd.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Transportadora : '+ EdPsqCodTra.Text + ' - ' + EdPsqNomTra.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdPsqCodGCl.Text + ' - ' + EdPsqNomGCl.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : '+ EdPsqCodCCl.Text + ' - ' + EdPsqNomCCl.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR22.grCliReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR22.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação simplificada de clientes.htm', grCli.SaveToHTML);
end;

procedure TfmPedR22.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação simplificada de clientes.xls', grCli.SaveToXLS);
end;

procedure TfmPedR22.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação simplificada de clientes.xml', grCli.SaveToXML);
end;

procedure TfmPedR22.bPsqVenClick(Sender: TObject);
begin
  inherited;

  fmPsqVen := TfmPsqVen.Create(Self);
  fmPsqVen.ShowModal;

  if fmPsqVen.CodVen > 0 then begin

     EdPsqApeVen.Text := fmPsqVen.NomVen;
     EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);

  end;

  FreeAndNil(fmPsqVen);

end;

procedure TfmPedR22.bPsqAtdClick(Sender: TObject);
begin
  inherited;

  fmPsqAt2 := TfmPsqAt2.Create(Self);
  fmPsqAt2.ShowModal;

  if fmPsqAt2.CodAtd > 0 then begin

     EdPsqApeAtd.Text := fmPsqAt2.NomAtd;
     EdPsqCodAtd.Text := IntToStr(fmPsqAt2.CodAtd);

  end;

  FreeAndNil(fmPsqAt2);

end;

procedure TfmPedR22.bPsqTraClick(Sender: TObject);
begin
  inherited;

  fmPsqTra := TfmPsqTra.Create(Self);
  fmPsqTra.ShowModal;

  if fmPsqTra.CodTra > 0 then begin

     EdPsqNomTra.Text := fmPsqTra.NomTra;
     EdPsqCodTra.Text := IntToStr(fmPsqTra.CodTra);

  end;

  FreeAndNil(fmPsqTra);

end;

procedure TfmPedR22.bPsqGClClick(Sender: TObject);
begin
  inherited;

  fmPsqGCl := TfmPsqGCl.Create(Self);
  fmPsqGCl.ShowModal;

  if fmPsqGCl.CodGCl > 0 then begin

     EdPsqNomGCl.Text := fmPsqGCl.NomGCl;
     EdPsqCodGCl.Text := IntToStr(fmPsqGCl.CodGCl);

  end;

  FreeAndNil(fmPsqGCl);

end;

procedure TfmPedR22.bPsqCClClick(Sender: TObject);
begin
  inherited;

  fmPsqCCl := TfmPsqCCl.Create(Self);
  fmPsqCCl.ShowModal;

  if fmPsqCCl.CodCCl > 0 then begin

     EdPsqNomCCl.Text := fmPsqCCl.NomCCl;
     EdPsqCodCCl.Text := IntToStr(fmPsqCCl.CodCCl);

  end;

  FreeAndNil(fmPsqCCl);

end;

procedure TfmPedR22.EdPsqCodVenKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR22.EdPsqCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
          Open;

          EdPsqApeVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqApeVen.Text := '';
end;

procedure TfmPedR22.EdPsqCodAtdExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodAtd.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text);
          Open;

          EdPsqApeAtd.Text := FieldByName('ApeAtd').AsString;

     end;

     end
  else
     EdPsqApeAtd.Text := '';
end;

procedure TfmPedR22.EdPsqCodTraExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodTra.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinTra.NomTra From FinTra Where FinTra.CodTra = '+ QuotedStr(EdPsqCodTra.Text);
          Open;

          EdPsqNomTra.Text := FieldByName('NomTra').AsString;

     end;

     end
  else
     EdPsqNomTra.Text := '';
end;

procedure TfmPedR22.EdPsqCodGClExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGCl.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinGCl.NomGCl From FinGCl Where FinGCl.CodGCl = '+ QuotedStr(EdPsqCodGCl.Text);
          Open;

          EdPsqNomGCl.Text := FieldByName('NomGCl').AsString;

     end;

     end
  else
     EdPsqNomGCl.Text := '';
end;

procedure TfmPedR22.EdPsqCodCClExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCCl.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinCCl.NomCCl From FinCCl Where FinCCl.CodCCl = '+ QuotedStr(EdPsqCodCCl.Text);
          Open;

          EdPsqNomCCl.Text := FieldByName('NomCCl').AsString;

     end;

     end
  else
     EdPsqNomCCl.Text := '';
end;

procedure TfmPedR22.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR22.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmPedR22.grCli);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

procedure TfmPedR22.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR22 := nil;
end;

procedure TfmPedR22.bPsqHolClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqHol := TfmPsqHol.Create(Self);
     fmPsqHol.ShowModal;

     if fmPsqHol.Id_FinHol > 0 then begin

        EdPsqId_FinHol.Text := IntToStr(fmPsqHol.Id_FinHol);

        EdPsqNomHol.Text := fmPsqHol.NomHol;

     end;

  finally

     FreeAndNil(fmPsqHol);

  end;
end;

procedure TfmPedR22.EdPsqId_FinHolExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqId_FinHol.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinHol.NomHol From FinHol'+
                  ' Where FinHol.Id_FinHol = '+ QuotedStr(EdPsqId_FinHol.Text);
          Open;

          EdPsqNomHol.Text := FieldByName('NomHol').AsString;

     end;

     if Trim( quSQL.FieldbyName('NomHol').AsString ) = '' then fmsgErro('Holding informado não localizado.',EdPsqId_FinHol);

     end
  else
     EdPsqNomHol.Text := '';
end;

end.

