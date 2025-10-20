unit PedR38;

interface

uses
  SysUtils, Classes, Controls, Forms, 
  Fpadrao, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorEdit, Dialogs;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR38 = class(TfmPadrao)
    PedR38: TwwQuery;
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
    EdPsqCodVen: TdxColorEdit;
    bPsqVen: TSpeedButton;
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
    CODCLI: TdxDBGridMaskColumn;
    NOMCLI: TdxDBGridMaskColumn;
    APECLI: TdxDBGridMaskColumn;
    PedR38SEQARQ: TStringField;
    PedR38CODCLI: TIntegerField;
    PedR38LIMCLI: TFloatField;
    PedR38CLIDEV: TFloatField;
    PedR38USALIM: TFloatField;
    PedR38SLDLIM: TFloatField;
    PedR38NOMCLI: TStringField;
    PedR38APECLI: TStringField;
    LIMCLI: TdxDBGridColumn;
    CLIDEV: TdxDBGridColumn;
    USALIM: TdxDBGridColumn;
    SLDLIM: TdxDBGridColumn;
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
    procedure bPsqGClClick(Sender: TObject);
    procedure bPsqCClClick(Sender: TObject);
    procedure bPsqMcrClick(Sender: TObject);
    procedure bPsqMrgClick(Sender: TObject);
    procedure bPsqSetClick(Sender: TObject);
    procedure bPsqMstClick(Sender: TObject);
    procedure EdPsqCodVenKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure EdPsqCodGClExit(Sender: TObject);
    procedure EdPsqCodCClExit(Sender: TObject);
    procedure EdPsqCodMcrExit(Sender: TObject);
    procedure EdPsqCodMrgExit(Sender: TObject);
    procedure EdPsqCodSetExit(Sender: TObject);
    procedure EdPsqCodMstExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
    SeqArq : string;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
  end;

var
  fmPedR38: TfmPedR38;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, PsqVen,
     PsqTra, PsqGCl, PsqCCl, PsqMcr, PsqMrg, PsqSet, PsqMst;

{$R *.DFM}

procedure TfmPedR38.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR38.bSelecionarClick(Sender: TObject);
var
  sFiltro : string;
begin

  ActiveControl := nil;

  sfiltro := '';

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR38 Where PedR38.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := ' Where FinCli.CodVen = '+ QuotedStr(EdPsqCodVen.Text);


  if Trim( EdPsqCodGCl.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and FinCli.CodGCl = '+ QuotedStr(EdPsqCodGCl.Text)
     else
        sFiltro := ' Where FinCli.CodGCl = '+ QuotedStr(EdPsqCodGCl.Text);

  end;

  if Trim( EdPsqCodCCl.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and FinCli.CodCCl = '+ QuotedStr(EdPsqCodCCl.Text)
     else
        sFiltro := ' Where FinCli.CodCCl = '+ QuotedStr(EdPsqCodCCl.Text);

  end;

  if Trim( EdPsqCodMcr.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and FinCli.CodMcr = '+ QuotedStr(EdPsqCodMcr.Text)
     else
        sFiltro := ' Where FinCli.CodMcr = '+ QuotedStr(EdPsqCodMcr.Text);

  end;

  if Trim( EdPsqCodMrg.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and FinCli.CodMrg = '+ QuotedStr(EdPsqCodMrg.Text)
     else
        sFiltro := ' Where FinCli.CodMrg = '+ QuotedStr(EdPsqCodMrg.Text);

  end;

  if Trim( EdPsqCodSet.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and FinCli.CodSet = '+ QuotedStr(EdPsqCodSet.Text)
     else
        sFiltro := ' Where FinCli.CodSet = '+ QuotedStr(EdPsqCodSet.Text);

  end;

  if Trim( EdPsqCodMst.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and FinCli.CodMst = '+ QuotedStr(EdPsqCodMst.Text)
     else
        sFiltro := ' Where FinCli.CodMst = '+ QuotedStr(EdPsqCodMst.Text);

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert into PedR38(SeqArq,CodCli,LimCli,CliDev)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        FinCli.CodCli,'+
               '        FinCli.LimCli,'+
               '        FinCli.CliDev '+
               ' From FinCli'+ sFiltro;
       ExecSQL;

  end;

  with PedR38,SQL do begin

       Close;
       Text := ' Select PedR38.*,'+
               '        FinCli.NomCli,'+
               '        FinCli.ApeCli '+
               ' From PedR38 LEFT JOIN FinCli ON (PedR38.CodCli = FinCli.CodCli)'+
               ' Where PedR38.SeqArq = '+ QuotedStr(SeqArq) +
               ' Order by PedR38.CodCli';
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR38 Where PedR38.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grCli.FullExpand;

  grCli.SetFocus;

end;

procedure TfmPedR38.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR38.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodVen.SetFocus;
end;

procedure TfmPedR38.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR38.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : '+ EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
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

procedure TfmPedR38.grCliReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR38.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de limite de crédito de clientes.htm', grCli.SaveToHTML);
end;

procedure TfmPedR38.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de limite de crédito de clientes.xls', grCli.SaveToXLS);
end;

procedure TfmPedR38.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de limite de crédito de clientes.xml', grCli.SaveToXML);
end;

procedure TfmPedR38.bPsqVenClick(Sender: TObject);
begin
  inherited;

  fmPsqVen := TfmPsqVen.Create(Self);
  fmPsqVen.ShowModal;

  if fmPsqVen.CodVen > 0 then begin

     EdPsqNomVen.Text := fmPsqVen.NomVen;
     EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);

  end;

  FreeAndNil(fmPsqVen);

end;

procedure TfmPedR38.bPsqGClClick(Sender: TObject);
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

procedure TfmPedR38.bPsqCClClick(Sender: TObject);
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

procedure TfmPedR38.bPsqMcrClick(Sender: TObject);
begin
  inherited;

  fmPsqMcr := TfmPsqMcr.Create(Self);
  fmPsqMcr.ShowModal;

  if fmPsqMcr.CodMcr > 0 then begin

     EdPsqNomMcr.Text := fmPsqMcr.NomMcr;
     EdPsqCodMcr.Text := IntToStr(fmPsqMcr.CodMcr);

  end;

  FreeAndNil(fmPsqMcr);

end;

procedure TfmPedR38.bPsqMrgClick(Sender: TObject);
begin
  inherited;

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

  FreeAndNil(fmPsqMrg);

end;

procedure TfmPedR38.bPsqSetClick(Sender: TObject);
begin
  inherited;

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

  FreeAndNil(fmPsqSet);

end;

procedure TfmPedR38.bPsqMstClick(Sender: TObject);
begin
  inherited;

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

  FreeAndNil(fmPsqMst);

end;

procedure TfmPedR38.EdPsqCodVenKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR38.EdPsqCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomVen From FinVen Where CodVen = '''+ EdPsqCodVen.Text +'''';
          Open;

          EdPsqNomVen.Text := FieldByName('NomVen').AsString;

     end;

     end
  else
     EdPsqNomVen.Text := '';
end;

procedure TfmPedR38.EdPsqCodGClExit(Sender: TObject);
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

procedure TfmPedR38.EdPsqCodCClExit(Sender: TObject);
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

procedure TfmPedR38.EdPsqCodMcrExit(Sender: TObject);
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

procedure TfmPedR38.EdPsqCodMrgExit(Sender: TObject);
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

procedure TfmPedR38.EdPsqCodSetExit(Sender: TObject);
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

procedure TfmPedR38.EdPsqCodMstExit(Sender: TObject);
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

procedure TfmPedR38.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR38 Where PedR38.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmPedR38.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR38 := nil;
end;

procedure TfmPedR38.FormCreate(Sender: TObject);
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

end.

