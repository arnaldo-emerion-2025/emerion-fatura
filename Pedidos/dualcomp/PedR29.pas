unit PedR29;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorPickEdit,
  dxColorEdit, dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR29 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdDteres2: TdxColorDateEdit;
    EdCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label9: TLabel;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grRes: TdxDBGrid;
    bImprimir: TBitBtn;
    Label26: TLabel;
    Label22: TLabel;
    Label8: TLabel;
    EdCodVen: TdxColorEdit;
    bPsqVen: TSpeedButton;
    EdNomVen: TdxColorEdit;
    PedResCODCLI: TIntegerField;
    PedResNOMCLI: TStringField;
    PedResTOTPED: TFloatField;
    PedResMARKUP: TFloatField;
    CODCLI: TdxDBGridMaskColumn;
    NOMCLI: TdxDBGridMaskColumn;
    Label7: TLabel;
    Label11: TLabel;
    EdCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    EdNomCli: TdxColorEdit;
    PedResQTDPED: TIntegerField;
    PedResSEQARQ: TStringField;
    PedResTOTCST: TFloatField;
    Label12: TLabel;
    Label13: TLabel;
    EdModPfa: TdxColorPickEdit;
    Label14: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    EdCodGve: TdxColorEdit;
    bPsqGve: TSpeedButton;
    EdNomGve: TdxColorEdit;
    rgTipo: TRadioGroup;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    EdCodCat: TdxColorEdit;
    EdCodTip: TdxColorEdit;
    EdCodMrc: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodPro: TdxColorEdit;
    BbPsqPro: TSpeedButton;
    BbPsqSub: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqClp: TSpeedButton;
    bPsqMrc: TSpeedButton;
    bPsqTip: TSpeedButton;
    bPsqCat: TSpeedButton;
    EdNomCat: TdxColorEdit;
    EdNomTip: TdxColorEdit;
    EdNomMrc: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdNomPro: TdxColorEdit;
    TOTPED: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grResReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdCodVenExit(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodGveExit(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure BbPsqClpClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq : string;
  end;

var
  fmPedR29: TfmPedR29;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, PsqEmp, PsqVen,
     PsqAtd, AuxIni, AuxPsq, PsqCli, PsqGve;

{$R *.DFM}

procedure TfmPedR29.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR29.FormCreate(Sender: TObject);
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

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);
  
end;

procedure TfmPedR29.bSelecionarClick(Sender: TObject);
var
sFiltro : string;
begin

  ActiveControl := nil;

  if (Trim( EdCodGru.Text ) = '') and (Trim( EdCodSub.Text ) = '') and (Trim( EdCodPro.Text ) = '') then begin

     if Trim( EdCodCat.Text ) = '' then begin

        if Trim( EdCodTip.Text ) = '' then begin

           if Trim( EdCodMrc.Text ) = '' then
              fmsgErro('Por Favor Preencher alguma Informação Referente ao Item para Exibição do Relatorio.',EdCodClp);

        end;
     end;
  end;
  
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
  
  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR05 Where SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  if (rgTipo.ItemIndex = 1) or (rgTipo.ItemIndex = 2) then begin

     sFiltro := ' and ( ( PedLib.SitLib = '+ QuotedStr('Faturado') +' )';

     sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Devolvido') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )';
     sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Cancelado') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) )';

     sFiltro := sFiltro + ' )';

     if Trim( EdModPfa.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.ModPfa = '+ QuotedStr(EdModPfa.Text);

     if Trim(fLimpaStr(EdDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdDteRes1.Date));
     if Trim(fLimpaStr(EdDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdDteRes2.Date));

     if Trim( EdCodCli.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodCli = '+ QuotedStr(EdCodCli.Text);
     if Trim( EdCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodVen = '+ QuotedStr(EdCodVen.Text);
     if Trim( EdCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr(EdCodGve.Text);
     if Trim( EdCodTip.Text ) <> '' then sFiltro := sFiltro + ' and PedLb2.CodTip = '+ QuotedStr(EdCodTip.Text);
     if Trim( EdCodMrc.Text ) <> '' then sFiltro := sFiltro + ' and PedLb2.CodMrc = '+ QuotedStr(EdCodMrc.Text);
     if Trim( EdCodCat.Text ) <> '' then sFiltro := sFiltro + ' and PedLb2.CodCat = '+ QuotedStr(EdCodCat.Text);
     if Trim( EdCodClp.Text ) <> '' then sFiltro := sFiltro + ' and PedLb2.CodClp = '+ QuotedStr(EdCodClp.Text);
     if Trim( EdCodGru.Text ) <> '' then sFiltro := sFiltro + ' and PedLb2.CodGru = '+ QuotedStr(EdCodGru.Text);
     if Trim( EdCodSub.Text ) <> '' then sFiltro := sFiltro + ' and PedLb2.CodSub = '+ QuotedStr(EdCodSub.Text);
     if Trim( EdCodPro.Text ) <> '' then sFiltro := sFiltro + ' and PedLb2.CodPro = '+ QuotedStr(EdCodPro.Text);

     if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR05(SeqArq,CodCli,NomCli,TotPed)'+
                  ' Select '+ QuotedStr(SeqArq) + ',' +
                  '        PedLib.CodVen,'+
                  '        FinVen.ApeVen,'+
                  '        Sum(PedLb2.UltQts)'+
                  ' From PedLb2,PedLib,FinVen'+
                  ' Where PedLb2.CodEmp = PedLib.CodEmp'+
                  '   and PedLb2.DteRes = PedLib.DteRes'+
                  '   and PedLb2.NumRes = PedLib.NumRes'+
                  '   and PedLb2.SeqLib = PedLib.SeqLib'+
                  '   and PedLib.CodVen = FinVen.CodVen'+ sFiltro +
                  ' Group by PedLib.CodVen,FinVen.ApeVen';
          ExecSQL;

     end;
  end;

  if (rgTipo.ItemIndex = 0) or (rgTipo.ItemIndex = 2) then begin

     sFiltro := ' and LojPed.SitPed = '+ QuotedStr('Recebida') +' and LojPed.FlgVal = '+QuotedStr('Nao');

     if Trim( EdModPfa.Text ) <> '' then sFiltro := sFiltro + ' and LojPed.ModPfa = '+ QuotedStr(EdModPfa.Text);

     if Trim(fLimpaStr(EdDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and LojPed.DteMov >= '+ QuotedStr(fDateToSQL(EdDteRes1.Date));
     if Trim(fLimpaStr(EdDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and LojPed.DteMov <= '+ QuotedStr(fDateToSQL(EdDteRes2.Date));

     if Trim( EdCodCli.Text ) <> '' then sFiltro := sFiltro + ' and LojPed.CodCli = '+ QuotedStr(EdCodCli.Text);
     if Trim( EdCodVen.Text ) <> '' then sFiltro := sFiltro + ' and LojPed.CodVen = '+ QuotedStr(EdCodVen.Text);
     if Trim( EdCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr(EdCodGve.Text);
     if Trim( EdCodTip.Text ) <> '' then sFiltro := sFiltro + ' and LojPe2.CodTip = '+ QuotedStr(EdCodTip.Text);
     if Trim( EdCodMrc.Text ) <> '' then sFiltro := sFiltro + ' and LojPe2.CodMrc = '+ QuotedStr(EdCodMrc.Text);
     if Trim( EdCodCat.Text ) <> '' then sFiltro := sFiltro + ' and LojPe2.CodCat = '+ QuotedStr(EdCodCat.Text);
     if Trim( EdCodClp.Text ) <> '' then sFiltro := sFiltro + ' and LojPe2.CodClp = '+ QuotedStr(EdCodClp.Text);
     if Trim( EdCodGru.Text ) <> '' then sFiltro := sFiltro + ' and LojPe2.CodGru = '+ QuotedStr(EdCodGru.Text);
     if Trim( EdCodSub.Text ) <> '' then sFiltro := sFiltro + ' and LojPe2.CodSub = '+ QuotedStr(EdCodSub.Text);
     if Trim( EdCodPro.Text ) <> '' then sFiltro := sFiltro + ' and LojPe2.CodPro = '+ QuotedStr(EdCodPro.Text);

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR05(SeqArq,CodCli,NomCli,TotPed)'+
                  ' Select '+ QuotedStr(SeqArq) + ',' +
                  '        LojPed.CodVen,'+
                  '        FinVen.ApeVen,'+
                  '        Sum(LojPe2.QtdPe2)'+
                  ' From LojPe2,LojPed,FinVen'+
                  ' Where LojPe2.CodEmp = LojPed.CodEmp'+
                  '   and LojPe2.DtePed = LojPed.DtePed'+
                  '   and LojPe2.NumPed = LojPed.NumPed'+
                  '   and LojPed.CodVen = FinVen.CodVen'+ sFiltro +
                  ' Group by LojPed.CodVen,FinVen.ApeVen';
          ExecSQL;

     end;  
  end;
     
  with PedRes,SQL do begin

       Close;
       Text := ' Select * From PedR05 Where SeqArq = '+ QuotedStr(SeqArq) +' Order by PedR05.TotPed Desc';
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR05 Where SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grRes.FullExpand;

  grRes.SetFocus;

end;

procedure TfmPedR29.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR29.FormShow(Sender: TObject);
begin
  inherited;
  EdCodEmp.SetFocus;
end;

procedure TfmPedR29.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR29.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdCodEmp.Text + ' - ' + EdApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo : '+ EdCodTip.Text + ' - ' + EdNomTip.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : '+ EdCodCat.Text + ' - ' + EdNomCat.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Marca : '+ EdCodMrc.Text + ' - ' + EdNomMrc.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação : '+ EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo : '+ EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : '+ EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : '+ EdCodCli.Text + ' - ' + EdNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo de Vendedores : '+ EdCodGve.Text + ' - ' + EdNomGve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : '+ EdCodVen.Text + ' - ' + EdNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Emitidos no Periodo de : '+ EdDteRes1.Text + ' a ' + EdDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR29.grResReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR29.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Curva ABC - Produto - Vendedor.htm', grRes.SaveToHTML);
end;

procedure TfmPedR29.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Curva ABC - Produto - Vendedor.xls', grRes.SaveToXLS);
end;

procedure TfmPedR29.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Curva ABC - Produto - Vendedor.xml', grRes.SaveToXML);
end;

procedure TfmPedR29.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR29.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdApeEmp.Text := fmPsqEmp.ApeEmp;
        EdCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmPedR29.EdCodEmpExit(Sender: TObject);
begin
  if Trim( EdCodEmp.Text ) <> '' then begin

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
          Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('ApeEmp').AsString ) <> '' then
             EdApeEmp.Text := FieldByName('ApeEmp').AsString
          else
             begin

             EdApeEmp.Text := '';
             
             fmsgErro('Empresa Informada não Encontrada.',EdCodEmp);

          end;
     end;

     end
  else
     EdApeEmp.Text := '';
end;

procedure TfmPedR29.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqVen := TfmPsqVen.Create(Self);

     fmPsqVen.ShowModal;

     if fmPsqVen.CodVen > 0 then begin

        EdCodVen.Text := IntToStr(fmPsqVen.CodVen);
        EdNomVen.Text := fmPsqVen.NomVen;

     end;

  finally

     FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmPedR29.EdCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdCodVen.Text);
          Open;

          EdNomVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdNomVen.Text := '';
end;

procedure TfmPedR29.bPsqCliClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCli := TfmPsqCli.Create(Self);

     fmPsqCli.ShowModal;

     if fmPsqCli.CodCli > 0 then begin

        EdNomCli.Text := fmPsqCli.NomCli;
        EdCodCli.Text := IntToStr(fmPsqCli.CodCli);

     end;

  finally

     FreeAndNil(fmPsqCli);

  end;
end;

procedure TfmPedR29.EdCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinCli.NomCli From FinCli Where FinCli.CodCli = '+ QuotedStr(EdCodCli.Text);
          Open;

          EdNomCli.Text := FieldByName('NomCli').AsString;

     end;

     end
  else
     EdNomCli.Text := '';
end;

procedure TfmPedR29.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  
  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR05 Where SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := CaFree;

end;

procedure TfmPedR29.EdCodGveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinGve.NomGve From FinGve Where FinGve.CodGve = '+ QuotedStr(EdCodGve.Text);
          Open;

          EdNomGve.Text := FieldByName('NomGve').AsString;

     end;

     end
  else
     EdNomGve.Text := '';
end;

procedure TfmPedR29.bPsqGveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGve := TfmPsqGve.Create(Self);

     fmPsqGve.ShowModal;

     if fmPsqGve.CodGve > 0 then begin

        EdCodGve.Text := IntToStr(fmPsqGve.CodGve);
        EdNomGve.Text := fmPsqGve.NomGve;

     end;

  finally

     FreeAndNil(fmPsqGve);

  end;
end;

procedure TfmPedR29.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR29 := nil;
end;

procedure TfmPedR29.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCat.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstCat.NomCat From EstCat Where EstCat.CodCat = '+ QuotedStr(EdCodCat.Text);
          Open;

          EdNomCat.Text := FieldByName('NomCat').AsString;

     end;

     end
  else
     EdNomCat.Text := '';
end;

procedure TfmPedR29.bPsqCatClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Categoria';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCat > 0 then begin

        EdNomCat.Text := fmAuxIni.NomCat;
        EdCodCat.Text := IntToStr( fmAuxIni.CodCat );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdCodCat.Text ) <> '' then EdCodTip.SetFocus;

end;

procedure TfmPedR29.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodTip.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstTip.NomTip From EstTip Where EstTip.CodTip = '+ QuotedStr(EdCodTip.Text);
          Open;

          EdNomTip.Text := FieldByName('NomTip').AsString;

     end;

     end
  else
     EdNomTip.Text := '';
end;

procedure TfmPedR29.bPsqTipClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );

     fmAuxIni.TipoPesq := 'Tipo';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodTip > 0 then begin

        EdNomTip.Text := fmAuxIni.NomTip;
        EdCodTip.Text := IntToStr( fmAuxIni.CodTip );

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdCodTip.Text ) <> '' then EdCodMrc.SetFocus;

end;

procedure TfmPedR29.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodMrc.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstMrc.NomMrc From EstMrc Where EstMrc.CodMrc = '+ QuotedStr(EdCodMrc.Text);
          Open;

          EdNomMrc.Text := FieldByName('NomMrc').AsString;

     end;

     end
  else
     EdNomMrc.Text := '';
end;

procedure TfmPedR29.bPsqMrcClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );

     fmAuxIni.TipoPesq := 'Marca';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodMrc > 0 then begin

        EdNomMrc.Text := fmAuxIni.NomMrc;
        EdCodMrc.Text := IntToStr( fmAuxIni.CodMrc );

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdCodMrc.Text ) <> '' then EdCodClp.SetFocus;

end;

procedure TfmPedR29.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '+ QuotedStr(EdCodClp.Text);
          Open;


     end;

     if Trim( quSQL.FieldbyName('NomClp').AsString ) <> '' then
        EdNomClp.Text := quSql.FieldByName('NomClp').AsString
     else
        fmsgErro('Classificação Informada não Encontrada.',EdCodClp);

     end
  else
     EdNomClp.Text := '';
end;

procedure TfmPedR29.BbPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

     fmAuxIni.TipoPesq := 'Cls';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodClp ) <> '' then begin

        EdCodClp.Text := fmAuxIni.CodClp;
        EdNomClp.Text := fmAuxIni.NomClp;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdCodClp.Text ) <> '' then EdCodGru.SetFocus;

end;

procedure TfmPedR29.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGru.Text ) <> '' then begin

     EdCodGru.Text := FNumZeros(EdCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstGru.NomGru From EstGru Where EstGru.CodGru = '+ QuotedStr(EdCodGru.Text);
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomGru').AsString ) <> '' then
        EdNomGru.Text := quSql.FieldByName('NomGru').AsString
     else
        fmsgErro('Grupo Informado não Encontrado.',EdCodGru);

     end
  else
     EdNomGru.Text := '';
end;

procedure TfmPedR29.BbPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );
     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;

     fmAuxIni.TipoPesq := 'G';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdCodGru.Text ) <> '' then EdCodSub.SetFocus;

end;

procedure TfmPedR29.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodSub.Text ) <> '' then begin

     EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstSub.NomSub'+
                  ' From EstSub'+
                  ' Where EstSub.CodGru = '+ QuotedStr(EdCodGru.Text)+
                  '   and EstSub.CodSub = '+ QuotedStr(EdCodSub.Text);
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomSub').AsString ) <> '' then
        EdNomSub.Text := quSql.FieldByName('NomSub').AsString
     else
        fmsgErro('SubGrupo Informado não Encontrado.',EdCodSub);

     end
  else
     EdNomSub.Text := '';
end;

procedure TfmPedR29.BbPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;
     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;
     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

     fmAuxIni.TipoPesq := 'S';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodSub ) <> '' then begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;
        EdCodSub.Text := fmAuxIni.CodSub;
        EdNomSub.Text := fmAuxIni.NomSub;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdCodSub.Text ) <> '' then EdCodPro.SetFocus;

end;

procedure TfmPedR29.EdCodProExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodPro.Text ) <> '' then begin

     EdCodPro.Text := FNumStrZero(EdCodPro.Text);

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPro From EstPro '+
                  ' Where CodClp = :CodClp'+
                  '   and CodGru = :CodGru'+
                  '   and CodSub = :CodSub'+
                  '   and CodPro = :CodPro';

          with Params do begin

               Params[0].AsString := EdCodClp.Text;
               Params[1].AsString := EdCodGru.Text;
               Params[2].AsString := EdCodSub.Text;
               Params[3].AsString := EdCodPro.Text;

          end;

          Open;

     end;

     if Trim( quSQL.FieldbyName('DscPro').AsString ) <> '' then
        EdNomPro.Text := quSql.FieldByName('DscPro').AsString
     else
        fmsgErro('Item Informado não Encontrado.',EdCodPro);

     end
  else
     EdNomPro.Text := '';
end;

procedure TfmPedR29.BbPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );
     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;
     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;
     if Trim( EdCodSub.Text ) <> '' then fmAuxIni.CodGru := EdCodSub.Text;

     fmAuxIni.TipoPesq := 'I';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodPro ) <> '' then begin

        EdCodClp.Text := fmAuxIni.CodClp;
        EdNomClp.Text := fmAuxIni.NomClp;
        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;
        EdCodSub.Text := fmAuxIni.CodSub;
        EdNomSub.Text := fmAuxIni.NomSub;
        EdCodPro.Text := fmAuxIni.CodPro;
        EdNomPro.Text := fmAuxIni.DscPro;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;   

  if Trim( EdCodPro.Text ) <> '' then bSelecionar.SetFocus;

end;

end.

