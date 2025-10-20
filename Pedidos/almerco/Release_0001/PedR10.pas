unit PedR10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorEdit,
  dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR10 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteRec1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteRec2: TdxColorDateEdit;
    Label26: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdPsqApeEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
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
    bImprimir: TBitBtn;
    Label1: TLabel;
    EdPsqCodCve: TdxColorEdit;
    bPsqCve: TSpeedButton;
    EdPsqNomCve: TdxColorEdit;
    grResTOTFAT: TdxDBGridMaskColumn;
    grResTOTCRE: TdxDBGridMaskColumn;
    grResVENDEDOR: TdxDBGridMaskColumn;
    rgStatus: TRadioGroup;
    PedResSEQARQ: TStringField;
    PedResCODVEN: TIntegerField;
    PedResTOTFAT: TFloatField;
    PedResTOTCRE: TFloatField;
    PedResVENDEDOR: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grResReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPsqCveClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodCveExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    SeqArq : string;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
  end;

var
  fmPedR10: TfmPedR10;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, ManGDB, ManPri, PsqCve;

{$R *.DFM}

procedure TfmPedR10.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR10.FormCreate(Sender: TObject);
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

procedure TfmPedR10.bbPesquisaClick(Sender: TObject);
var
  sFiltro : string;
begin

  ActiveControl := nil;

  if Trim(fLimpaStr( EdPsqDteRec1.Text )) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqDteRec1);
  if Trim(fLimpaStr( EdPsqDteRec2.Text )) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqDteRec2);

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR10 Where PedR10.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  sFiltro := '';

  if Trim( EdPsqCodCve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR10(SeqArq,CodVen,TotFat,TotCre)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        FinVen.CodVen,'+ QuotedStr('0') +','+ QuotedStr('0') +
               ' From FinVen' +
               ' Where FinVen.CodGve = '+ QuotedStr('1');
       ExecSQL;

  end;

  sFiltro := '';

  if Trim(fLimpaStr(EdPsqDteRec1.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteRec >= '+ QuotedStr(fDateToSQL(EdPsqDteRec1.Date));
  if Trim(fLimpaStr(EdPsqDteRec2.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteRec <= '+ QuotedStr(fDateToSQL(EdPsqDteRec2.Date));

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodCve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.CodTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');

  sFiltro := sFiltro + ' and PedRes.ModPfa = '+ QuotedStr('Vendas');

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR10(SeqArq,CodVen,TotFat,TotCre)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        PedRes.CodVen,'+
               '        Sum(PedLib.BasCom),'+
               '        Sum(PedLib.TotCom) '+
               ' From PedLib,PedRes,FinVen'+
               ' Where PedLib.Id_PedRes = PedRes.Id_PedRes and PedRes.CodVen = FinVen.CodVen and PedRes.CodGve = '+ QuotedStr('1') + sFiltro +
               ' Group by PedRes.CodVen';
       ExecSQL;

  end;

  with PedRes,SQL do begin

       Close;
       Text := ' Select PedR10.*,'+
               '        TextoOcor(IntStrZeros(PedR10.CodVen,3),'+ QuotedStr('-') +',FinVen.ApeVen,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as Vendedor'+
               ' From PedR10 LEFT JOIN FinVen ON (PedR10.CodVen = FinVen.CodVen)'+
               ' Where PedR10.SeqArq = '+ QuotedStr(SeqArq);

       case rgStatus.Itemindex of
            0: Text := Text + ' and PedR10.TotFat > 0';
            1: Text := Text + ' and PedR10.TotFat = 0';
       end;

       Text := Text + ' Order by PedR10.CodVen';

       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR10 Where PedR10.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grRes.FullExpand;

  grRes.SetFocus;

end;

procedure TfmPedR10.EdPsqCodEmpExit(Sender: TObject);
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
          Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

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

             fmsgErro('Empresa informada não localizada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmPedR10.BbPsqEmpClick(Sender: TObject);
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

procedure TfmPedR10.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

     EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmPedR10.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR10.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR10.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR10.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa: '+ EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria de vendedores: '+ EdPsqCodCve.Text + ' - ' + EdPsqNomCve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('1 Vencto. recebido no periodo de: '+ EdPsqDteRec1.Text + ' a ' + EdPsqDteRec2.Text);

  case rgStatus.Itemindex of
       0:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Status : Com Movimentação');
       1:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Status : Sem Movimentação');
       2:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Status : Todos');
  end;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR10.grResReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR10.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Vendedores internos (Fechamento de comissões - Sintético).htm', grRes.SaveToHTML);
end;

procedure TfmPedR10.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Vendedores internos (Fechamento de comissões - Sintético).xls', grRes.SaveToXLS);
end;

procedure TfmPedR10.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Vendedores internos (Fechamento de comissões - Sintético).xml', grRes.SaveToXML);
end;

procedure TfmPedR10.bPsqCveClick(Sender: TObject);
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

procedure TfmPedR10.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR10.EdPsqCodCveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinCve.NomCve From FinCve Where FinCve.CodCve = '+ QuotedStr(EdPsqCodCve.Text);
          Open;

          EdPsqNomCve.Text := FieldByName('NomCve').AsString;

     end;

     end
  else
     EdPsqNomCve.Text := '';
end;

procedure TfmPedR10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR10 Where PedR10.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmPedR10.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR10 := nil;
end;

end.

