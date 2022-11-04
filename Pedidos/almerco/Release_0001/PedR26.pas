unit PedR26;

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

  TfmPedR26 = class(TfmPadrao)
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
    grResTOTFAT: TdxDBGridMaskColumn;
    grResTOTCRE: TdxDBGridMaskColumn;
    grResVENDEDOR: TdxDBGridMaskColumn;
    PedResSEQARQ: TStringField;
    PedResCODVEN: TIntegerField;
    PedResTOTFAT: TFloatField;
    PedResTOTCRE: TFloatField;
    PedResVENDEDOR: TStringField;
    PedPar: TwwQuery;
    PedParTIPATD: TStringField;
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
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
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
  fmPedR26: TfmPedR26;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, ManGDB, ManPri;

{$R *.DFM}

procedure TfmPedR26.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR26.FormCreate(Sender: TObject);
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

procedure TfmPedR26.bbPesquisaClick(Sender: TObject);
var
  sFiltro : string;
begin

  ActiveControl := nil;

  if Trim( EdPsqCodEmp.Text ) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqCodEmp);
  
  if Trim(fLimpaStr( EdPsqDteRec1.Text )) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqDteRec1);
  if Trim(fLimpaStr( EdPsqDteRec2.Text )) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqDteRec2);

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR10 Where PedR10.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR11 Where PedR11.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR12 Where PedR12.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  sFiltro := '';

  if Trim(fLimpaStr(EdPsqDteRec1.Text)) <> '' then sFiltro := sFiltro + ' and FinPgc.DteRec >= '+ QuotedStr(fDateToSQL(EdPsqDteRec1.Date));
  if Trim(fLimpaStr(EdPsqDteRec2.Text)) <> '' then sFiltro := sFiltro + ' and FinPgc.DteRec <= '+ QuotedStr(fDateToSQL(EdPsqDteRec2.Date));

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and FinPgc.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

  sFiltro := sFiltro + ' and FinPgc.FlgCre = '+ QuotedStr('Nao');
  
  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR11(SeqArq,Id_FatPed,TotRec)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        FinCre.Id_FatPed,'+
               '        Sum(FinPgc.VppPgc)'+
               ' From FinPgc,FinCre'+
               ' Where FinPgc.CodEmp = FinCre.CodEmp'+
               '   and FinPgc.DteCre = FinCre.DteCre'+
               '   and FinPgc.NumCre = FinCre.NumCre'+ sFiltro +
               ' Group by FinCre.Id_FatPed';
       ExecSQL;

  end;

  if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,TotFat,TotCre)'+
                  ' Select PedR12.SeqArq,'+
                  '        PedR12.CodAtd,'+
                  '        Sum(PedR12.BasCom),'+
                  '        Sum(PedR12.TotCat) '+
                  ' From PedR12,FinVen'+
                  ' Where PedR12.CodAtd = FinVen.CodVen'+
                  '   and PedR12.SeqArq = '+ QuotedStr(SeqArq) +
                  ' Group by PedR12.SeqArq,PedR12.CodAtd';
          ExecSQL;

     end;

     with PedRes,SQL do begin

          Close;
          Text := ' Select PedR10.*,'+
                  '        TextoOcor(IntStrZeros(PedR10.CodVen,3),'+ QuotedStr('-') +',FinVen.ApeVen,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as Vendedor'+
                  ' From PedR10 LEFT JOIN FinVen ON (PedR10.CodVen = FinVen.CodVen)'+
                  ' Where PedR10.SeqArq = '+ QuotedStr(SeqArq) +
                  ' Order by PedR10.CodVen';
          Open;

     end;

     end
  else
     begin

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,TotFat,TotCre)'+
                  ' Select PedR12.SeqArq,'+
                  '        PedR12.CodAtd,'+
                  '        Sum(PedR12.BasCom),'+
                  '        Sum(PedR12.TotCat) '+
                  ' From PedR12,FinAtd'+
                  ' Where PedR12.CodAtd = FinAtd.CodAtd'+
                  '   and PedR12.SeqArq = '+ QuotedStr(SeqArq) +
                  ' Group by PedR12.SeqArq,PedR12.CodAtd';
          ExecSQL;

     end;

     with PedRes,SQL do begin

          Close;
          Text := ' Select PedR10.*,'+
                  '        TextoOcor(IntStrZeros(PedR10.CodVen,3),'+ QuotedStr('-') +',FinAtd.ApeAtd,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as Vendedor'+
                  ' From PedR10 LEFT JOIN FinAtd ON (PedR10.CodVen = FinAtd.CodAtd)'+
                  ' Where PedR10.SeqArq = '+ QuotedStr(SeqArq) +
                  ' Order by PedR10.CodVen';
          Open;

     end;     
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR10 Where PedR10.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR11 Where PedR11.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR12 Where PedR12.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grRes.FullExpand;

  grRes.SetFocus;

end;

procedure TfmPedR26.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmPedR26.BbPsqEmpClick(Sender: TObject);
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

procedure TfmPedR26.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmPedR26.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR26.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR26.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR26.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa: '+ EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('recebidos no periodo de: '+ EdPsqDteRec1.Text + ' a ' + EdPsqDteRec2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR26.grResReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR26.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Atendentes (Fechamento de comissões - Sintético).htm', grRes.SaveToHTML);
end;

procedure TfmPedR26.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Atendentes (Fechamento de comissões - Sintético).xls', grRes.SaveToXLS);
end;

procedure TfmPedR26.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Atendentes (Fechamento de comissões - Sintético).xml', grRes.SaveToXML);
end;

procedure TfmPedR26.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR26.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR10 Where PedR10.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR11 Where PedR11.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR12 Where PedR12.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmPedR26.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR26 := nil;
end;

end.

