unit CmpR08;

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

  TfmCmpR08 = class(TfmPadrao)
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
    EdPsqNomEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label1: TLabel;
    EdPsqUfeEnt: TdxColorPickEdit;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label11: TLabel;
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
    Label3: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    Label14: TLabel;
    EdPsqCodTmo: TdxColorEdit;
    BbPsqTmo: TSpeedButton;
    EdPsqNomTmo: TdxColorEdit;
    Label7: TLabel;
    Label12: TLabel;
    EdPsqCodTp1: TdxColorEdit;
    Label13: TLabel;
    EdPsqCodTp2: TdxColorEdit;
    CmpEntTOTGEC: TFloatField;
    CmpEntQTDGEC: TIntegerField;
    grEntNOMFOR: TdxDBGridMaskColumn;
    grEntTOTGEC: TdxDBGridMaskColumn;
    grEntQTDGEC: TdxDBGridMaskColumn;
    Label6: TLabel;
    Label8: TLabel;
    EdPsqCodGFo: TdxColorEdit;
    bPsqGfo: TSpeedButton;
    EdPsqNomGFo: TdxColorEdit;
    Label15: TLabel;
    rgTipo: TRadioGroup;
    CmpEntSEQARQ: TStringField;
    CmpEntCODFOR: TIntegerField;
    CmpEntAPEFOR: TStringField;
    CmpEntCONFOR: TStringField;
    CmpEntQTDITE: TIntegerField;
    CmpEntNOMFOR: TStringField;
    grEntCONFOR: TdxDBGridColumn;
    grEntQTDITE: TdxDBGridColumn;
    rgPeriodo: TRadioGroup;
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
    SeqArq,sFiltro : string;
  end;

var
  fmCmpR08: TfmCmpR08;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqPfa, AuxPsq,
     ManGDB, ManPri, PsqFor, PsqTmo, PsqGFo;

{$R *.DFM}

procedure TfmCmpR08.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmCmpR08.bbPesquisaClick(Sender: TObject);
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
  
  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR01 Where SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR10 Where SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into CmpR01'+
               ' Select '''+ SeqArq +''','+
               '        FinFor.CodFor,'+
               '        FinFor.ApeFor,'+
               '        GerUsu.LogUsu,'''+ '0' +''','''+ '0' +''','''+ '0' +''''+
               ' From FinFor LEFT JOIN GerUsu ON (FinFor.CodSup = GerUsu.CodUsu)';

       if Trim( EdPsqCodGFo.Text ) <> '' then Text := Text + ' Where FinFor.CodGFo  = '''+ EdPsqCodGFo.Text +'''';
       
       ExecSQL;

  end;

  sFiltro := ' Where CmpEnt.SitEnt = '''+ 'Concluida' +'''';

  if Trim( EdPsqModPfa.Text ) <> '' then begin

     if EdPsqModPfa.Text <> 'Compras' then
        sFiltro := sFiltro + ' and CmpEnt.ModPfa = '''+ EdPsqModPfa.Text +''''
     else
        sFiltro := sFiltro + ' and ( CmpEnt.ModPfa = '''+ 'Compras' +''' or  CmpEnt.ModPfa = '''+ 'Importacao' +''')';

  end;

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodEmp  = '''+ EdPsqCodEmp.Text +'''';
  if Trim( EdPsqCodTmo.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodTmo  = '''+ EdPsqCodTmo.Text +'''';
  if Trim( EdPsqUfeEnt.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.UfeEnt  = '''+ EdPsqUfeEnt.Text +'''';
  if Trim( EdPsqCodTp1.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodTip >= '''+ EdPsqCodTp1.Text +'''';
  if Trim( EdPsqCodTp2.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodTip <= '''+ EdPsqCodTp2.Text +'''';
  if Trim( EdPsqCodGFo.Text ) <> '' then sFiltro := sFiltro + ' and FinFor.CodGFo  = '''+ EdPsqCodGFo.Text +'''';

  if rgPeriodo.ItemIndex = 0 then begin

     if Trim(fLimpaStr(EdPsqDteOpe1.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteOpe >= '''+ fDateToSQL(EdPsqDteOpe1.Date) +'''';
     if Trim(fLimpaStr(EdPsqDteOpe2.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteOpe <= '''+ fDateToSQL(EdPsqDteOpe2.Date) +'''';

  end;

  if rgPeriodo.ItemIndex = 1 then begin

     if Trim(fLimpaStr(EdPsqDteOpe1.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteDoc >= '''+ fDateToSQL(EdPsqDteOpe1.Date) +'''';
     if Trim(fLimpaStr(EdPsqDteOpe2.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteDoc <= '''+ fDateToSQL(EdPsqDteOpe2.Date) +'''';

  end;

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and not CmpEnt.CodTip = '+ QuotedStr('3');

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into CmpR01'+
               ' Select '''+ SeqArq +''','+
               '        CmpEnt.CodFor,'+
               '        FinFor.ApeFor,'+
               '        GerUsu.LogUsu,'+               
               '        Round(Sum((CmpEnt.TotGec - CmpEnt.TotOen)),2) as TotGec,'+
               '        Sum(CmpEnt.QtiEnt) as QtdIte,'+
               '        Count(*) as QtdGec'+
               ' From CmpEnt LEFT JOIN FinFor ON (CmpEnt.CodFor = FinFor.CodFor)'+
               '             LEFT JOIN GerUsu ON (FinFor.CodSup = GerUsu.CodUsu)'+ sFiltro + ' Group by CmpEnt.CodFor,FinFor.ApeFor,GerUsu.LogUsu';
       ExecSQL;

  end;
  
  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into CmpR10'+
               ' Select '''+ SeqArq +''','+
               '        CmpR01.CodFor,'+
               '        CmpR01.ApeFor,'+
               '        CmpR01.ConFor,'+               
               '        Sum(CmpR01.TotGec),'+
               '        Sum(CmpR01.QtdIte),'+               
               '        Sum(QtdGec)'+
               ' From CmpR01 Where CmpR01.SeqArq = '''+ SeqArq +''''+
               ' Group by CmpR01.CodFor,CmpR01.ApeFor,CmpR01.ConFor';
       ExecSQL;

  end;
  
  with CmpEnt,SQL do begin

       Close;
       Text := ' Select CmpR10.*,'+
               '        TextoOcor(IntStrZeros(CmpR10.CodFor,5),'''+ '-' +''',CmpR10.ApeFor,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomFor'+
               ' From CmpR10 Where CmpR10.SeqArq = '''+ SeqArq +'''';

       case rgTipo.ItemIndex of
            0: Text := Text + ' and CmpR10.TotGec = 0';
            1: Text := Text + ' and CmpR10.TotGec > 0';
       end;
               
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR01 Where SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR10 Where SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  grEnt.FullExpand;

  grEnt.SetFocus;

end;

procedure TfmCmpR08.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmCmpR08.bPsqEmpClick(Sender: TObject);
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

procedure TfmCmpR08.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
  end;
end;

procedure TfmCmpR08.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmCmpR08.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqUfeEnt.SetFocus;
end;

procedure TfmCmpR08.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmCmpR08.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmCmpR08.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GApeEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRazEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GEndEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRefEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Estado de : '+ EdPsqUfeEnt.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdPsqCodEmp.Text + ' - ' + EdPsqNomEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdPsqCodGFo.Text + ' - ' + EdPsqNomGFo.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Moeda : '+ EdPsqCodTmo.Text + ' - ' + EdPsqNomTmo.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Região Operacional de : '+ EdPsqCodTp1.Text + ' a ' + EdPsqCodTp2.Text);  
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Realizadas no Periodo de : '+ EdPsqDteOpe1.Text + ' a ' + EdPsqDteOpe2.Text);

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmCmpR08.grEntReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmCmpR08.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Curva ABC de Fornecedores.htm', grEnt.SaveToHTML);
end;

procedure TfmCmpR08.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Curva ABC de Fornecedores.xls', grEnt.SaveToXLS);
end;

procedure TfmCmpR08.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Curva ABC de Fornecedores.xml', grEnt.SaveToXML);
end;

procedure TfmCmpR08.BbPsqTmoClick(Sender: TObject);
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

procedure TfmCmpR08.EdPsqCodTmoExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodTmo.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomTmo From FinTmo '+
                  ' Where CodTmo = '''+EdPsqCodTmo.Text+'''';
          Open;

          EdPsqNomTmo.Text := quSql.FieldByName('NomTmo').AsString;

     end;

     end
  else
     EdPsqNomTmo.Text := '';
end;

procedure TfmCmpR08.bPsqGfoClick(Sender: TObject);
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

procedure TfmCmpR08.EdPsqCodGFoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmCmpR08.EdPsqCodGFoExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGFo.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGFo From FinGFo Where CodGFo = '''+ EdPsqCodGFo.Text +'''';
          Open;

          EdPsqNomGFo.Text := FieldByName('NomGFo').AsString;

     end;

     end
  else
     EdPsqNomGFo.Text := '';
end;

procedure TfmCmpR08.FormCreate(Sender: TObject);
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

procedure TfmCmpR08.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR01 Where SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR10 Where SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmCmpR08.FormDestroy(Sender: TObject);
begin
  inherited;
  fmCmpR08 := nil;
end;

end.

