unit PedR01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, ImgList, dxColorPickEdit,
  dxColorEdit, dxColorCurrencyEdit, dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR01 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
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
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqCli: TSpeedButton;
    bPsqVen: TSpeedButton;
    EdPsqApeVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label1: TLabel;
    EdPsqUfeRes: TdxColorPickEdit;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grRes: TdxDBGrid;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResHRERES: TStringField;
    PedResUFERES: TStringField;
    PedResTOTGER: TFloatField;
    PedResNOMCLI: TStringField;
    ID_PEDRES: TdxDBGridMaskColumn;
    DTERES: TdxDBGridDateColumn;
    HRERES: TdxDBGridMaskColumn;
    UFERES: TdxDBGridMaskColumn;
    TOTGER: TdxDBGridMaskColumn;
    SITRES: TdxDBGridMaskColumn;
    NOMCLI: TdxDBGridMaskColumn;
    APEVEN: TdxDBGridMaskColumn;
    bImprimir: TBitBtn;
    rgTipo: TRadioGroup;
    rgStatus: TRadioGroup;
    rgImpresso: TRadioGroup;
    rgCancelados: TRadioGroup;
    PedResAPEVEN: TStringField;
    PedResDTFRES: TDateTimeField;
    PedResSLDGER: TFloatField;
    SLDGER: TdxDBGridColumn;
    PedResSITRES: TStringField;
    PedResTOTFAT: TFloatField;
    TOTFAT: TdxDBGridColumn;
    Label3: TLabel;
    EdPsqCodGve: TdxColorEdit;
    bPsqGve: TSpeedButton;
    EdPsqNomGve: TdxColorEdit;
    Label13: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    Colunas1: TMenuItem;
    rgFinanceiro: TRadioGroup;
    rgEstoque: TRadioGroup;
    PedResCODPFA: TStringField;
    CODPFA: TdxDBGridColumn;
    PedResID_PEDRES: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grResReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    sBase,sFiltro : string;
  end;

var
  fmPedR01: TfmPedR01;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, AuxPsq,
     ManGDB, ManPri, PsqGve, ManCol;

{$R *.DFM}

procedure TfmPedR01.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR01.FormCreate(Sender: TObject);
begin
  inherited;

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

  sBase := ' Select PedRes.Id_PedRes,'+
           '        PedRes.CodEmp,'+
           '        PedRes.DteRes,'+
           '        PedRes.HreRes,'+
           '        PedRes.UfeRes,'+
           '        PedRes.CodPfa,'+           
           '        PedRes.BasCom as TotGer,'+
           '        PedRes.FatGer as TotFat,'+           
           '        PedRes.SldRes as SldGer,'+
           '        PedRes.SitRes,'+
           '        PedRes.DtfRes,'+
           '        TextoOcor(IntStrZeros(PedRes.CodCli,05),'+ QuotedStr('-') +',FinCli.ApeCli,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as NomCli,'+
           '        TextoOcor(IntStrZeros(PedRes.CodVen,05),'+ QuotedStr('-') +',FinVen.ApeVen,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as ApeVen '+
           ' From PedRes,FinCli,FinVen'+
           ' Where PedRes.CodCli = FinCli.CodCli'+
           '   and PedRes.CodVen = FinVen.CodVen';

end;

procedure TfmPedR01.bSelecionarClick(Sender: TObject);
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

  case rgTipo.Itemindex of
       0: sFiltro := sFiltro + ' and PedRes.CodTip = '+ QuotedStr('1');
       1: sFiltro := sFiltro + ' and PedRes.CodTip = '+ QuotedStr('2');
  end;

  case rgFinanceiro.Itemindex of
       0: sFiltro := sFiltro + ' and PedRes.IntFin = '+ QuotedStr('Sim');
       1: sFiltro := sFiltro + ' and PedRes.IntFin = '+ QuotedStr('Nao');
  end;

  case rgEstoque.Itemindex of
       0: sFiltro := sFiltro + ' and PedRes.AtuEst = '+ QuotedStr('Sim');
       1: sFiltro := sFiltro + ' and PedRes.AtuEst = '+ QuotedStr('Nao');
  end;

  case rgStatus.Itemindex of
       0: sFiltro := sFiltro + ' and (PedRes.SitRes = '+ QuotedStr('Faturado') +' or PedRes.SitRes = '+ QuotedStr('Parcialmente Faturado') +' or PedRes.SitRes = '+ QuotedStr('Faturado com Saldo nao Atendido') +')';
       1: sFiltro := sFiltro + ' and PedRes.SitRes <> '+ QuotedStr('Faturado') +' and PedRes.SitRes <> '+ QuotedStr('Parcialmente Faturado') +' and PedRes.SitRes <> '+ QuotedStr('Faturado com Saldo nao Atendido');
  end;

  case rgCancelados.Itemindex of
       0: sFiltro := sFiltro + ' and PedRes.SitRes =  '+ QuotedStr('Cancelado');
       1: sFiltro := sFiltro + ' and PedRes.SitRes <> '+ QuotedStr('Cancelado');
  end;

  case rgImpresso.Itemindex of
       0: sFiltro := sFiltro + ' and PedRes.FlgImp = '+ QuotedStr('Sim');
       1: sFiltro := sFiltro + ' and PedRes.FlgImp = '+ QuotedStr('Nao');
  end;

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodCli.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
  if Trim( EdPsqUfeRes.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.UfeRes = '+ QuotedStr(EdPsqUfeRes.Text);
  if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);
  if Trim( EdPsqModPfa.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.ModPfa = '+ QuotedStr(EdPsqModPfa.Text);

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedRes.DteRes >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedRes.DteRes <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  if EdPsqTotRes1.Value > 0 then sFiltro := sFiltro + ' and PedRes.TotRes >= '+ QuotedStr(FloatToStr(EdPsqTotRes1.Value));
  if EdPsqTotRes2.Value > 0 then sFiltro := sFiltro + ' and PedRes.TotRes <= '+ QuotedStr(FloatToStr(EdPsqTotRes2.Value));

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = '+QuotedStr('Sim');

  if Trim(fLimpaStr(EdPsqDtfRes1.Text)) <> '' then begin

     if Trim(fLimpaStr(EdPsqDtfRes2.Text)) <> '' then

        sFiltro := sFiltro + ' and Exists(Select * From PedLib Where PedLib.Id_PedRes = PedRes.Id_PedRes'+
                             '                                   and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDtfRes1.Date)) +
                             '                                   and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDtfRes2.Date)) + ')'

     else

        sFiltro := sFiltro + ' and Exists(Select * From PedLib Where PedLib.Id_PedRes = PedRes.Id_PedRes'+
                             '                                   and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDtfRes1.Date)) + ')';


     end
  else
     begin

     if Trim(fLimpaStr(EdPsqDtfRes2.Text)) <> '' then

        sFiltro := sFiltro + ' and Exists(Select * From PedLib Where PedLib.Id_PedRes = PedRes.Id_PedRes'+
                             '                                   and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDtfRes2.Date)) + ')';

  end;

  with PedRes,SQL do begin

       Close;
       Text := sBase + sFiltro + ' Order by PedRes.Id_PedRes';
       Open;

  end;

  grRes.FullExpand;

  grRes.SetFocus;

end;

procedure TfmPedR01.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmPedR01.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinCli.NomCli From FinCli Where FinCli.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
          Open;

          EdPsqNomCli.Text := FieldByName('NomCli').AsString;
          
     end;

     end
  else
     EdPsqNomCli.Text := '';
end;

procedure TfmPedR01.bPsqEmpClick(Sender: TObject);
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

procedure TfmPedR01.EdPsqCodVenExit(Sender: TObject);
begin
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

procedure TfmPedR01.bPsqCliClick(Sender: TObject);
begin

  try

     fmPsqCli := TfmPsqCli.Create(Self);

     fmPsqCli.ShowModal;

     if fmPsqCli.CodCli > 0 then begin

        EdPsqCodCli.Text := IntToStr(fmPsqCli.CodCli);
        EdPsqNomCli.Text := fmPsqCli.NomCli;

     end;

  finally   

     FreeAndNil(fmPsqCli);

  end;
end;

procedure TfmPedR01.bPsqVenClick(Sender: TObject);
begin

  try

     fmPsqVen := TfmPsqVen.Create(Self);

     fmPsqVen.ShowModal;

     if fmPsqVen.CodVen > 0 then begin

        EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);
        EdPsqApeVen.Text := fmPsqVen.NomVen;

     end;

  finally   

     FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmPedR01.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR01.FormShow(Sender: TObject);
begin
  inherited;

  if GCodVen_Id > 0 then begin

     EdPsqApeVen.Text := GNomVen_Id;
     EdPsqCodVen.Text := IntToStr( GCodVen_Id );

     if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then begin

        bPsqVen.Enabled := False;

        EdPsqCodVen.Enabled := False;

        EdPsqCodVen.Font.Style := [fsBold];

     end;
  end;

  EdPsqUfeRes.SetFocus;
  
end;

procedure TfmPedR01.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR01.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : '+ EdPsqCodCli.Text + ' - ' + EdPsqNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo de Vendedores : '+ EdPsqCodGve.Text + ' - ' + EdPsqNomGve.Text);  
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : '+ EdPsqCodVen.Text + ' - ' + EdPsqApeVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Emitido Em : '+ EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturado Em : '+ EdPsqDtfRes1.Text + ' a ' + EdPsqDtfRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Valor do Pedido : '+ EdPsqTotRes1.Text + ' a ' + EdPsqTotRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Estado de : '+ EdPsqUfeRes.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR01.grResReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR01.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação sintética de pedidos.htm', grRes.SaveToHTML);
end;

procedure TfmPedR01.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação sintética de pedidos.xls', grRes.SaveToXLS);
end;

procedure TfmPedR01.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação sintética de pedidos.xml', grRes.SaveToXML);
end;

procedure TfmPedR01.EdPsqCodGveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinGve.NomGve From FinGve Where FinGve.CodGve = '+ QuotedStr(EdPsqCodGve.Text);
          Open;

          EdPsqNomGve.Text := FieldByName('NomGve').AsString;

     end;

     end
  else
     EdPsqNomGve.Text := '';
end;

procedure TfmPedR01.bPsqGveClick(Sender: TObject);
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

procedure TfmPedR01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR01.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR01 := nil;
end;

procedure TfmPedR01.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmPedR01.grRes);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

procedure TfmPedR01.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

end.

