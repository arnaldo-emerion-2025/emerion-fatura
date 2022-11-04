unit CmpR10;

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

  TfmCmpR10 = class(TfmPadrao)
    CmpEnt: TwwQuery;
    DsEnt: TwwDataSource;
    PaintBox: TPaintBox;
    Label28: TLabel;
    EdPsqDteOpe1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteOpe2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    EdPsqCodPfa: TdxColorEdit;
    EdPsqCodFor: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqFor: TSpeedButton;
    bPsqPfa: TSpeedButton;
    EdPsqNomPfa: TdxColorEdit;
    EdPsqNomFor: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label1: TLabel;
    EdPsqUfeEnt: TdxColorPickEdit;
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
    grEnt: TdxDBGrid;
    bImprimir: TBitBtn;
    Label4: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    CmpEntNUMDOC: TIntegerField;
    CmpEntAPEFOR: TStringField;
    CmpEntTOTENC: TFloatField;
    CmpEntTOTGEC: TFloatField;
    CmpEntTOTICC: TFloatField;
    CmpEntTOTIPC: TFloatField;
    CmpEntDTEOPE: TDateTimeField;
    NUMDOC: TdxDBGridMaskColumn;
    APEFOR: TdxDBGridMaskColumn;
    ID_CMPENT: TdxDBGridMaskColumn;
    TOTENC: TdxDBGridMaskColumn;
    TOTGEC: TdxDBGridMaskColumn;
    TOTICC: TdxDBGridMaskColumn;
    TOTIPC: TdxDBGridMaskColumn;
    DTEOPE: TdxDBGridDateColumn;
    Label14: TLabel;
    EdPsqCodTmo: TdxColorEdit;
    BbPsqTmo: TSpeedButton;
    EdPsqNomTmo: TdxColorEdit;
    Label12: TLabel;
    EdPsqCodTp1: TdxColorEdit;
    Label13: TLabel;
    EdPsqCodTp2: TdxColorEdit;
    Label15: TLabel;
    EdPsqDteDoc1: TdxColorDateEdit;
    Label17: TLabel;
    EdPsqDteDoc2: TdxColorDateEdit;
    CmpEntDTEDOC: TDateTimeField;
    DTEDOC: TdxDBGridColumn;
    CmpEntID_CMPENT: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure bPsqForClick(Sender: TObject);
    procedure bPsqPfaClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodForExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grEntReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure BbPsqTmoClick(Sender: TObject);
    procedure EdPsqCodTmoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    sFiltro,sOrdem : string;
  end;

var
  fmCmpR10: TfmCmpR10;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqPfa, AuxPsq,
     ManGDB, ManPri, PsqFor, PsqTmo;

{$R *.DFM}

procedure TfmCmpR10.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmCmpR10.bbPesquisaClick(Sender: TObject);
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
  
  sOrdem := ' Order by CmpEnt.NumDoc';

  sFiltro := ' Where CmpEnt.SitEnt = '+ QuotedStr('Concluida');

  if Trim( EdPsqCodTp1.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodTip >= '+ QuotedStr(EdPsqCodTp1.Text);
  if Trim( EdPsqCodTp2.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodTip <= '+ QuotedStr(EdPsqCodTp2.Text);
  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodEmp  = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodTmo.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodTmo  = '+ QuotedStr(EdPsqCodTmo.Text);
  if Trim( EdPsqCodFor.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodFor  = '+ QuotedStr(EdPsqCodFor.Text);
  if Trim( EdPsqUfeEnt.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.UfeEnt  = '+ QuotedStr(EdPsqUfeEnt.Text);
  if Trim( EdPsqCodPfa.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodPfa  = '+ QuotedStr(EdPsqCodPfa.Text);
  if Trim( EdPsqModPfa.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.ModPfa  = '+ QuotedStr(EdPsqModPfa.Text);

  if Trim(fLimpaStr(EdPsqDteOpe1.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteOpe >= '+ QuotedStr(fDateToSQL(EdPsqDteOpe1.Date));
  if Trim(fLimpaStr(EdPsqDteOpe2.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteOpe <= '+ QuotedStr(fDateToSQL(EdPsqDteOpe2.Date));

  if Trim(fLimpaStr(EdPsqDteDoc1.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteDoc >= '+ QuotedStr(fDateToSQL(EdPsqDteDoc1.Date));
  if Trim(fLimpaStr(EdPsqDteDoc2.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteDoc <= '+ QuotedStr(fDateToSQL(EdPsqDteDoc2.Date));

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and not CmpEnt.CodTip = '+ QuotedStr('3');

  with CmpEnt,SQL do begin

       Close;
       Text := ' Select CmpEnt.NumDoc,'+
               '        FinFor.ApeFor,'+
               '        CmpEnt.Id_CmpEnt,'+
               '        CmpEnt.TotEnc,'+
               '        Round(CmpEnt.TotGec - CmpEnt.TotOen,4) as TotGec,'+
               '        CmpEnt.TotIcc,'+
               '        CmpEnt.TotIpc,'+
               '        CmpEnt.DteOpe,'+
               '        CmpEnt.DteDoc'+
               ' From CmpEnt LEFT JOIN FinFor ON (CmpEnt.CodFor = FinFor.CodFor)'+ sFiltro + sOrdem;
       Open;

  end;

  grEnt.FullExpand;

  grEnt.SetFocus;

end;

procedure TfmCmpR10.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmCmpR10.EdPsqCodForExit(Sender: TObject);
begin
  if Trim( EdPsqCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinFor.NomFor From FinFor Where FinFor.CodFor = '+ QuotedStr(EdPsqCodFor.Text);
          Open;

          EdPsqNomFor.Text := quSql.FieldByName('NomFor').AsString;
          
     end;

     end
  else
     EdPsqNomFor.Text := '';
end;

procedure TfmCmpR10.bPsqEmpClick(Sender: TObject);
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

procedure TfmCmpR10.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

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
end;

procedure TfmCmpR10.EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqFor := TfmPsqFor.Create(Self);

        fmPsqFor.ShowModal;

        if fmPsqFor.CodFor > 0 then begin

           EdPsqNomFor.Text := fmPsqFor.NomFor;
           EdPsqCodFor.Text := IntToStr(fmPsqFor.CodFor);

        end;

     finally

        FreeAndNil(fmPsqFor);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           EdPsqNomFor.Text := fmAuxPsq.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxPsq.CodFor);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmCmpR10.bPsqForClick(Sender: TObject);
begin

  try

     fmPsqFor := TfmPsqFor.Create(Self);

     fmPsqFor.ShowModal;

     if fmPsqFor.CodFor > 0 then begin

        EdPsqCodFor.Text := IntToStr(fmPsqFor.CodFor);
        EdPsqNomFor.Text := fmPsqFor.NomFor;

     end;

  finally

     FreeAndNil(fmPsqFor);

  end;
end;

procedure TfmCmpR10.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmCmpR10.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqUfeEnt.SetFocus;
end;

procedure TfmCmpR10.bPsqPfaClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqPfa := TfmPsqPfa.Create(Self);

     with fmPsqPfa.EstPfa,SQL do begin

          Close;
          Text := ' Select EstPfa.CodPfa,'+
                  '        EstPfa.TipPfa,'+
                  '        EstPfa.DscPfa,'+
                  '        EstPfa.DsrPfa,'+
                  '        EstPfa.CodCf1,'+
                  '        EstPfa.CodCf2,'+
                  '        EstPfa.IntFin,'+
                  '        EstPfa.AtuEst,'+
                  '        EstPfa.ConSum,'+
                  '        EstPfa.ModPfa'+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString := 'Entrada';

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

        EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
        EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

     end;

  finally

     FreeAndNil(fmPsqPfa);

  end;
end;

procedure TfmCmpR10.EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqPfa := TfmPsqPfa.Create(Self);

        with fmPsqPfa.EstPfa,SQL do begin

             Close;
             Text := ' Select EstPfa.CodPfa,'+
                     '        EstPfa.TipPfa,'+
                     '        EstPfa.DscPfa,'+
                     '        EstPfa.DsrPfa,'+
                     '        EstPfa.CodCf1,'+
                     '        EstPfa.CodCf2,'+
                     '        EstPfa.IntFin,'+
                     '        EstPfa.AtuEst,'+
                     '        EstPfa.ConSum,'+
                     '        EstPfa.ModPfa'+
                     ' From EstPfa'+
                     ' Where EstPfa.TipPfa = :TipPfa'+
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString := 'Entrada';

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
           EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

        end;

    finally

        FreeAndNil(fmPsqPfa);

    end;
  end;
end;

procedure TfmCmpR10.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmCmpR10.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmCmpR10.EdPsqCodPfaExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPfa.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstPfa.DscPfa'+
                  ' From EstPfa'+
                  ' Where TipPfa = '+ QuotedStr('Entrada')+
                  '   and CodPfa = '+ QuotedStr(EdPsqCodPfa.Text);
          Open;

          EdPsqNomPfa.Text := FieldByName('DscPfa').AsString;
          
     end;

     end
  else
     EdPsqNomPfa.Text := '';
end;

procedure TfmCmpR10.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GApeEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRazEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GEndEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRefEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Estado de: '+ EdPsqUfeEnt.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de nota de entrada: '+ EdPsqModPfa.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Região Operacional de: '+ EdPsqCodTp1.Text + ' a ' + EdPsqCodTp2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Fornecedor : '+ EdPsqCodFor.Text + ' - ' + EdPsqNomFor.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Moeda: '+ EdPsqCodTmo.Text + ' - ' + EdPsqNomTmo.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Padrão de Faturamento : '+ EdPsqCodPfa.Text + ' - ' + EdPsqNomPfa.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Operação realizada no periodo de: '+ EdPsqDteOpe1.Text + ' a ' + EdPsqDteOpe2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Documento emitido no periodo de: '+ EdPsqDteDoc1.Text + ' a ' + EdPsqDteDoc2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmCmpR10.grEntReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmCmpR10.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação sintetica de entradas de mercadorias.htm', grEnt.SaveToHTML);
end;

procedure TfmCmpR10.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação sintetica de entradas de mercadorias.xls', grEnt.SaveToXLS);
end;

procedure TfmCmpR10.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação sintetica de entradas de mercadorias.xml', grEnt.SaveToXML);
end;

procedure TfmCmpR10.BbPsqTmoClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqTmo := TfmPsqTmo.Create(Self);

     fmPsqTmo.ShowModal;

     if fmPsqTmo.CodTmo > 0 then begin

        EdPsqNomTmo.Text := fmPsqTmo.NomTmo;
        EdPsqCodTmo.Text := IntToStr(fmPsqTmo.CodTmo);

     end;

  finally

     FreeAndNil(fmPsqTmo);

  end;
end;

procedure TfmCmpR10.EdPsqCodTmoExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodTmo.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinTmo.NomTmo From FinTmo Where FinTmo.CodTmo = '+ QuotedStr(EdPsqCodTmo.Text);
          Open;

          EdPsqNomTmo.Text := FieldByName('NomTmo').AsString;

     end;

     end
  else
     EdPsqNomTmo.Text := '';
end;

procedure TfmCmpR10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmCmpR10.FormDestroy(Sender: TObject);
begin
  inherited;
  fmCmpR10 := nil;
end;

end.

