unit PedR31;

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

  TfmPedR31 = class(TfmPadrao)
    PedFin: TwwQuery;
    DsFin: TwwDataSource;
    PaintBox: TPaintBox;
    Label28: TLabel;
    EdPsqDteRes1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteRes2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqCli: TSpeedButton;
    bPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqNomEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    ImageList1: TImageList;
    grFin: TdxDBGrid;
    bImprimir: TBitBtn;
    Label4: TLabel;
    Label12: TLabel;
    EdPsqDteFin1: TdxColorDateEdit;
    Label13: TLabel;
    EdPsqDteFin2: TdxColorDateEdit;
    PedFinCODEMP: TIntegerField;
    PedFinDTERES: TDateTimeField;
    PedFinNUMRES: TIntegerField;
    PedFinSEQFIN: TIntegerField;
    PedFinDTEFIN: TDateTimeField;
    PedFinHREFIN: TStringField;
    PedFinOBSFIN: TMemoField;
    PedFinCODUSU: TIntegerField;
    PedFinLOGUSU: TStringField;
    PedFinCLIENTE: TStringField;
    PedFinVENDEDOR: TStringField;
    PedFinTOTRES: TFloatField;
    PedFinTOTIPI: TFloatField;
    PedFinTOTGER: TFloatField;
    grFinDTERES: TdxDBGridDateColumn;
    grFinNUMRES: TdxDBGridMaskColumn;
    grFinDTEFIN: TdxDBGridDateColumn;
    grFinHREFIN: TdxDBGridMaskColumn;
    grFinOBSFIN: TdxDBGridMemoColumn;
    grFinLOGUSU: TdxDBGridMaskColumn;
    grFinCLIENTE: TdxDBGridMaskColumn;
    grFinVENDEDOR: TdxDBGridMaskColumn;
    grFinTOTRES: TdxDBGridMaskColumn;
    grFinTOTIPI: TdxDBGridMaskColumn;
    grFinTOTGER: TdxDBGridMaskColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure grFinReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmPedR31: TfmPedR31;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, PsqPfa,
     AuxPsq, ManGDB, ManPri;

{$R *.DFM}

procedure TfmPedR31.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR31.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedFin.*,'+
           '        PedRes.TotRes,'+
           '        PedRes.TotIpi,'+
           '        PedRes.TotGer,'+
           '        GerUsu.LogUsu,'+
           '        TextoOcor(IntStrZeros(PedRes.CodCli,5),'''+ '-' +''',FinCli.ApeCli,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Cliente,'+
           '        TextoOcor(IntStrZeros(PedRes.CodVen,3),'''+ '-' +''',FinVen.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Vendedor'+
           ' From PedFin LEFT JOIN PedRes ON (PedFin.CodEmp = PedRes.CodEmp'+
           '                              AND PedFin.DteRes = PedRes.DteRes'+
           '                              AND PedFin.NumRes = PedRes.NumRes)'+
           '             LEFT JOIN FinVen ON (PedRes.CodVen = FinVen.CodVen)'+
           '             LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           '             LEFT JOIN GerUsu ON (PedFin.CodUsu = GerUsu.CodUsu)';

end;

procedure TfmPedR31.bbPesquisaClick(Sender: TObject);
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
  
  sOrdem := ' Order by PedFin.DteFin,PedFin.NumRes';

  sFiltro := '';

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' Where PedFin.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.CodCli = '+ QuotedStr(EdPsqCodCli.Text)
     else
        sFiltro := ' Where PedRes.CodCli = '+ QuotedStr(EdPsqCodCli.Text);

  end;

  if Trim( EdPsqCodVen.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text)
     else
        sFiltro := ' Where PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  end;
        
  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedFin.DteRes >= '''+ fDateToSQL(EdPsqDteRes1.Date) +''''
     else
        sFiltro := ' Where PedFin.DteRes >= '''+ fDateToSQL(EdPsqDteRes1.Date) +'''';
        
  end;
     
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.DteRes <= '''+ fDateToSQL(EdPsqDteRes2.Date) +''''
     else
        sFiltro := ' Where PedRes.DteRes <= '''+ fDateToSQL(EdPsqDteRes2.Date) +'''';
        
  end;
     
  if Trim(fLimpaStr(EdPsqDteFin1.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedFin.DteFin >= '''+ fDateToSQL(EdPsqDteFin1.Date) +''''
     else
        sFiltro := ' Where PedFin.DteFin >= '''+ fDateToSQL(EdPsqDteFin1.Date) +'''';
        
  end;
     
  if Trim(fLimpaStr(EdPsqDteFin2.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedFin.DteFin <= '''+ fDateToSQL(EdPsqDteFin2.Date) +''''
     else
        sFiltro := ' Where PedFin.DteFin <= '''+ fDateToSQL(EdPsqDteFin2.Date) +'''';
        
  end;   

  with PedFin,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grFin.FullExpand;

  grFin.SetFocus;

end;

procedure TfmPedR31.EdPsqCodEmpExit(Sender: TObject);
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
          Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('NomEmp').AsString ) <> '' then
             EdPsqNomEmp.Text := FieldByName('NomEmp').AsString
          else
             begin

             EdPsqNomEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqNomEmp.Text := '';
end;

procedure TfmPedR31.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomCli From FinCli Where CodCli = '''+EdPsqCodCli.Text+'''';
          Open;

          EdPsqNomCli.Text := quSql.FieldByName('NomCli').AsString;
     end;

     end
  else
     EdPsqNomCli.Text := '';
end;

procedure TfmPedR31.bPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmPedR31.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmPedR31.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqCli := TfmPsqCli.Create(Self);

        fmPsqCli.ShowModal;

        if fmPsqCli.CodCli > 0 then begin

           EdPsqNomCli.Text := fmPsqCli.NomCli;
           EdPsqCodCli.Text := IntToStr(fmPsqCli.CodCli);

        end;

     finally   

        FreeAndNil(fmPsqCli);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxPsq.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxPsq.CodCli);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;     
  end;
end;

procedure TfmPedR31.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmPedR31.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

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

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           EdPsqNomVen.Text := fmAuxPsq.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmPedR31.bPsqCliClick(Sender: TObject);
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

procedure TfmPedR31.bPsqVenClick(Sender: TObject);
begin

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

procedure TfmPedR31.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR31.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR31.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR31.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR31.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GApeEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRazEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GEndEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRefEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdPsqCodEmp.Text + ' - ' + EdPsqNomEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : '+ EdPsqCodCli.Text + ' - ' + EdPsqNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : '+ EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Emitidos no Periodo de : '+ EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Liberações Realizadas no Periodo de : '+ EdPsqDteFin1.Text + ' a ' + EdPsqDteFin2.Text);

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR31.grFinReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR31.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de Liberações Financeiras Realizadas no Periodo.htm', grFin.SaveToHTML);
end;

procedure TfmPedR31.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de Liberações Financeiras Realizadas no Periodo.xls', grFin.SaveToXLS);
end;

procedure TfmPedR31.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de Liberações Financeiras Realizadas no Periodo.xml', grFin.SaveToXML);
end;

procedure TfmPedR31.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR31.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR31 := Nil;
end;

end.

