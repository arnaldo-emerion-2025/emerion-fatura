unit CmpR17;

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

  TfmCmpR17 = class(TfmPadrao)
    CmpEnt: TwwQuery;
    DsEnt: TwwDataSource;
    PaintBox: TPaintBox;
    Label28: TLabel;
    EdPsqDteOpe1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteOpe2: TdxColorDateEdit;
    Label26: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
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
    grEnt: TdxDBGrid;
    bImprimir: TBitBtn;
    Label14: TLabel;
    EdPsqCodTmo: TdxColorEdit;
    BbPsqTmo: TSpeedButton;
    EdPsqNomTmo: TdxColorEdit;
    CmpEntTOTGEC: TFloatField;
    CmpEntQTDGEC: TIntegerField;
    grEntNOMFOR: TdxDBGridMaskColumn;
    grEntTOTGEC: TdxDBGridMaskColumn;
    grEntQTDGEC: TdxDBGridMaskColumn;
    Label6: TLabel;
    EdPsqCodGFo: TdxColorEdit;
    bPsqGfo: TSpeedButton;
    EdPsqNomGFo: TdxColorEdit;
    rgTipo: TRadioGroup;
    CmpEntSEQARQ: TStringField;
    CmpEntCODFOR: TIntegerField;
    CmpEntQTDITE: TIntegerField;
    grEntCONFOR: TdxDBGridColumn;
    grEntQTDITE: TdxDBGridColumn;
    CmpEntCONFOR: TStringField;
    CmpEntNOMFOR: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure grEntReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure BbPsqTmoClick(Sender: TObject);
    procedure EdPsqCodTmoExit(Sender: TObject);
    procedure bPsqGfoClick(Sender: TObject);
    procedure EdPsqCodGFoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodGFoExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq,SeqAnt,sFiltro : string;
  end;

var
  fmCmpR17: TfmCmpR17;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqPfa, AuxPsq,
     ManGDB, ManPri, PsqFor, PsqTmo, PsqGFo;

{$R *.DFM}

procedure TfmCmpR17.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmCmpR17.bbPesquisaClick(Sender: TObject);
begin

  ActiveControl := nil;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR01 Where CmpR01.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR01 Where CmpR01.SeqArq = '+ QuotedStr(SeqAnt);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into CmpR01(SeqArq,CodFor,TotGec,QtdIte,QtdGec)'+
               ' Select '+ QuotedStr(SeqArq) + ',' +
               '        FinFor.CodFor,'+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('0') +
               ' From FinFor';

       if Trim( EdPsqCodGFo.Text ) <> '' then Text := Text + ' Where FinFor.CodGFo  = '+ QuotedStr(EdPsqCodGFo.Text);
       
       ExecSQL;

  end;

  sFiltro := ' Where not CmpPed.SitPed = '+ QuotedStr('Nao Concluido') +' and not CmpPed.SitPed = '+ QuotedStr('Cancelado');

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and CmpPed.CodEmp  = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodTmo.Text ) <> '' then sFiltro := sFiltro + ' and CmpPed.CodTmo  = '+ QuotedStr(EdPsqCodTmo.Text);
  if Trim( EdPsqCodGFo.Text ) <> '' then sFiltro := sFiltro + ' and FinFor.CodGFo  = '+ QuotedStr(EdPsqCodGFo.Text);

  if Trim(fLimpaStr(EdPsqDteOpe1.Text)) <> '' then sFiltro := sFiltro + ' and CmpPed.DtePed >= '+ QuotedStr(fDateToSQL(EdPsqDteOpe1.Date));
  if Trim(fLimpaStr(EdPsqDteOpe2.Text)) <> '' then sFiltro := sFiltro + ' and CmpPed.DtePed <= '+ QuotedStr(fDateToSQL(EdPsqDteOpe2.Date));

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into CmpR01(SeqArq,CodFor,TotGec,QtdIte,QtdGec)'+
               ' Select '+ QuotedStr(SeqArq) + ',' +
               '        CmpPed.CodFor,'+
               '        Round(Sum(CmpPed.TotGer),2) as TotGec,'+
               '        Sum(CmpPed.QtiPed) as QtdIte,'+
               '        Count(*) as QtdGec'+
               ' From CmpPed'+ sFiltro + ' Group by CmpPed.CodFor';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into CmpR01(SeqArq,CodFor,TotGec,QtdIte,QtdGec)'+
               ' Select '+ QuotedStr(SeqAnt) + ',' +
               '        CmpR01.CodFor,'+
               '        Sum(CmpR01.TotGec),'+
               '        Sum(CmpR01.QtdIte),'+
               '        Sum(QtdGec)'+
               ' From CmpR01'+
               ' Where CmpR01.SeqArq = '+ QuotedStr(SeqArq) +
               ' Group by CmpR01.CodFor';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR01 Where CmpR01.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with CmpEnt,SQL do begin

       Close;
       Text := ' Select CmpR01.*,'+
               '        GerUsu.LogUsu as ConFor,'+
               '        TextoOcor(IntStrZeros(CmpR01.CodFor,5),'+ QuotedStr('-') +',FinFor.ApeFor,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as NomFor'+
               ' From CmpR01 LEFT JOIN FinFor ON (CmpR01.CodFor = FinFor.CodFor)'+
               '             LEFT JOIN GerUsu ON (FinFor.CodSup = GerUsu.CodUsu)'+
               ' Where CmpR01.SeqArq = '+ QuotedStr(SeqAnt);

       case rgTipo.ItemIndex of
            0: Text := Text + ' and CmpR01.TotGec = 0';
            1: Text := Text + ' and CmpR01.TotGec > 0';
       end;
               
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR01 Where CmpR01.SeqArq = '+ QuotedStr(SeqAnt);
       ExecSQL;

  end;

  grEnt.FullExpand;

  grEnt.SetFocus;

end;

procedure TfmCmpR17.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmCmpR17.bPsqEmpClick(Sender: TObject);
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

procedure TfmCmpR17.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmCmpR17.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmCmpR17.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmCmpR17.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmCmpR17.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmCmpR17.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GApeEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRazEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GEndEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRefEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa: '+ EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo de fornecedor: '+ EdPsqCodGFo.Text + ' - ' + EdPsqNomGFo.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Moeda: '+ EdPsqCodTmo.Text + ' - ' + EdPsqNomTmo.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Realizados no periodo de: '+ EdPsqDteOpe1.Text + ' a ' + EdPsqDteOpe2.Text);

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmCmpR17.grEntReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmCmpR17.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Curva ABC de fornecedores - Pedidos de compra.htm', grEnt.SaveToHTML);
end;

procedure TfmCmpR17.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Curva ABC de fornecedores - Pedidos de compra.xls', grEnt.SaveToXLS);
end;

procedure TfmCmpR17.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Curva ABC de fornecedores - Pedidos de compra.xml', grEnt.SaveToXML);
end;

procedure TfmCmpR17.BbPsqTmoClick(Sender: TObject);
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

procedure TfmCmpR17.EdPsqCodTmoExit(Sender: TObject);
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

procedure TfmCmpR17.bPsqGfoClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGFo := TfmPsqGFo.Create(Self);

     fmPsqGFo.ShowModal;

     if fmPsqGFo.CodGFo > 0 then begin

        EdPsqNomGFo.Text := fmPsqGFo.NomGFo;
        EdPsqCodGFo.Text := IntToStr(fmPsqGFo.CodGFo);

     end;

  finally

     FreeAndNil(fmPsqGFo);

  end;
end;

procedure TfmCmpR17.EdPsqCodGFoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqGFo := TfmPsqGFo.Create(Self);

        fmPsqGFo.ShowModal;

        if fmPsqGFo.CodGFo > 0 then begin

           EdPsqNomGFo.Text := fmPsqGFo.NomGFo;
           EdPsqCodGFo.Text := IntToStr(fmPsqGFo.CodGFo);

        end;

     finally

        FreeAndNil(fmPsqGFo);

     end;
  end;
end;

procedure TfmCmpR17.EdPsqCodGFoExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGFo.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinGFo.NomGFo From FinGFo Where FinGFo.CodGFo = '+ QuotedStr(EdPsqCodGFo.Text);
          Open;

          EdPsqNomGFo.Text := FieldByName('NomGFo').AsString;

     end;

     end
  else
     EdPsqNomGFo.Text := '';
end;

procedure TfmCmpR17.FormCreate(Sender: TObject);
begin
  inherited;

  Randomize;
  SeqAnt := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
            copy(TimeToStr(Time),1,2)+
            copy(TimeToStr(Time),4,2)+
            copy(TimeToStr(Time),7,2)+
            FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
            FNumZeros(Trim( IntToStr(Random(50000)) ),5);

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
            copy(TimeToStr(Time),1,2)+
            copy(TimeToStr(Time),4,2)+
            copy(TimeToStr(Time),7,2)+
            FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
            FNumZeros(Trim( IntToStr(Random(60000)) ),5);

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

end;

procedure TfmCmpR17.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR01 Where CmpR01.SeqArq = '+ QuotedStr(SeqAnt);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR01 Where CmpR01.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmCmpR17.FormDestroy(Sender: TObject);
begin
  inherited;
  fmCmpR17 := nil;
end;

end.

