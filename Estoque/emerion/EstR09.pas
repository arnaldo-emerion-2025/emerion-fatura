unit EstR09;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, Buttons, ComCtrls, Db, DBTables, Wwquery, ExtCtrls, FlEdit,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, Wwdatsrc, Mask, hEdits, wwdbedit,
  Wwdotdot, Wwdbcomb, DBCtrls, AlignEdit, QuickRpt, ppDB, ppDBPipe, ppBands,
  ppClass, ppStrtch, ppMemo, ppVar, jpeg, ppCtrls, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppModule, daDatMod, wwdbdatetimepicker,
  dxCntner, dxTL, dxDBCtrl, dxDBGrid, dxEditor, dxExEdtr, dxEdLib,
  dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, Menus,
  ImgList, dxDBTLCl, dxGrClms, dxColorEdit, dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmEstR09 = class(TfmPadrao)
    EstR09: TwwQuery;
    DsR09: TwwDataSource;
    quSql: TwwQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label17: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    EdCodEmp: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodPro: TdxColorEdit;
    EdPsqDtInic: TdxColorDateEdit;
    Label18: TLabel;
    BbPsqPro: TSpeedButton;
    BbPsqSub: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqClp: TSpeedButton;
    BbPsqEmp: TSpeedButton;
    EdNomEmp: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdNomPro: TdxColorEdit;
    EdPsqDtFina: TdxColorDateEdit;
    bPesquisa: TBitBtn;
    bImprimir: TBitBtn;
    Label2: TLabel;
    Bevel2: TBevel;
    PaintBox: TPaintBox;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    SaveDialog: TSaveDialog;
    EstR09SEQARQ: TStringField;
    EstR09DTEHIS: TDateTimeField;
    EstR09SEQHIS: TIntegerField;
    EstR09CODEMP: TIntegerField;
    EstR09CODCLP: TStringField;
    EstR09CODGRU: TStringField;
    EstR09CODSUB: TStringField;
    EstR09CODPRO: TStringField;
    EstR09CODOPE: TStringField;
    EstR09SLDANT: TFloatField;
    EstR09QTDENT: TFloatField;
    EstR09QTDSDA: TFloatField;
    EstR09SLDATU: TFloatField;
    EstR09CSTPRO: TFloatField;
    EstR09VCHPRO: TFloatField;
    EstR09VREPRO: TFloatField;
    EstR09VCPPRO: TFloatField;
    EstR09VPRPRO: TFloatField;
    EstR09VMEPRO: TFloatField;
    EstR09VPFPRO: TFloatField;
    EstR09OPERACAO: TStringField;
    StoredProc: TStoredProc;
    grR09: TdxDBGrid;
    grR09DTEHIS: TdxDBGridDateColumn;
    grR09OPERACAO: TdxDBGridMaskColumn;
    grR09CSTPRO: TdxDBGridColumn;
    grR09VCHPRO: TdxDBGridColumn;
    grR09VREPRO: TdxDBGridColumn;
    grR09VCPPRO: TdxDBGridColumn;
    grR09VPRPRO: TdxDBGridColumn;
    grR09VMEPRO: TdxDBGridColumn;
    grR09VPFPRO: TdxDBGridColumn;
    grR09QTDENT: TdxDBGridMaskColumn;
    grR09QTDSDA: TdxDBGridMaskColumn;
    grR09SLDATU: TdxDBGridMaskColumn;
    Colunas1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure BbPsqClpClick(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure grR09ReloadGroupList(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    {Private declarations}
    SeqArq : string;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
  end;

var
  QtdPar   : real;
  QtdGer   : real;
  fmEstR09: TfmEstR09;

implementation

uses dxDemoUtils, ShellAPI, Bbgeral, BbMensag, Bbfuncao, ManGDB, FPreview,
     PsqEmp, PsqClp, ManPri, AuxIni, ManCol;

{$R *.DFM}

procedure TfmEstR09.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmEstR09.FormCreate(Sender: TObject);
begin

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

procedure TfmEstR09.FormShow(Sender: TObject);
begin
  inherited;
  EdCodEmp.SetFocus;
end;

procedure TfmEstR09.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmEstR09.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdCodEmp.Text + ' - ' + EdNomEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação : '+ EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo : '+ EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : '+ EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Periodo de : '+ EdPsqDtInic.Text + ' a ' + EdPsqDtFina.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmEstR09.bPesquisaClick(Sender: TObject);
begin
  inherited;

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
  
  if Trim( EdCodEmp.Text ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Empresa.',EdCodEmp);

  if (Trim( EdCodGru.Text ) = '') and (Trim( EdCodSub.Text ) = '') and (Trim( EdCodPro.Text ) = '') then
     fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Código do Item.',EdCodClp);

  if Trim(fLimpaStr( EdPsqDtInic.Text )) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Periodo Inicial.',EdPsqDtInic);
  if Trim(fLimpaStr( EdPsqDtFina.Text )) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Periodo Final.',EdPsqDtFina);

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From EstR08 Where EstR08.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  try

     fmManGDB.dbMain.StartTransaction;

     with StoredProc do begin

          ParamByName('SEQARQ').AsString   := SeqArq;
          ParamByName('CODEMP').AsInteger  := StrToInt(EdCodEmp.Text);
          ParamByName('CODCLP').AsString   := EdCodClp.Text;
          ParamByName('CODGRU').AsString   := EdCodGru.Text;
          ParamByName('CODSUB').AsString   := EdCodSub.Text;
          ParamByName('CODPRO').AsString   := EdCodPro.Text;
          ParamByName('DTINIC').AsDateTime := EdPsqDtInic.Date;
          ParamByName('DTFINA').AsDateTime := EdPsqDtFina.Date;
          Close;
          Prepare;
          ExecProc;
          Unprepare;

          if ParamByName('SEQRET').Value <> null then
             fmManGDB.dbMain.Commit
          else
             fmManGDB.dbMain.Rollback;
     end;

  except

     if fmManGDB.dbMain.InTransaction then fmManGDB.dbMain.Rollback;

     with quSQL,SQL do begin

          Close;
          Text := ' Delete From EstR08 Where EstR08.SeqArq = '+ QuotedStr(SeqArq);
          ExecSQL;

     end;
  end;

  with EstR09,SQL do begin

       Close;
       Text := ' Select EstR08.*,'+
               '        EstR08.NomOpe as Operacao From EstR08'+
               ' Where EstR08.SeqArq = '+ QuotedStr(SeqArq) +
               ' Order by EstR08.SeqHis';
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From EstR08 Where EstR08.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grR09.FullExpand;

  grR09.SetFocus;

end;

procedure TfmEstR09.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdNomEmp.Text := fmPsqEmp.NomEmp;
        EdCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;

  if Trim( EdCodEmp.Text ) <> '' then EdCodClp.SetFocus;

end;

procedure TfmEstR09.BbPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqClp := TfmPsqClp.Create(Self);

     fmPsqClp.ShowModal;

     if Trim( fmPsqClp.CodClp ) <> '' then begin

        EdCodClp.Text := fmPsqClp.CodClp;
        EdNomClp.Text := fmPsqClp.NomClp;

     end;

  finally   

     FreeAndNil(fmPsqClp);

  end;
  
  if Trim( EdCodClp.Text ) <> '' then EdCodGru.SetFocus;

end;

procedure TfmEstR09.BbPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdCodClp.Text;

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

procedure TfmEstR09.BbPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdCodClp.Text;
     fmAuxIni.CodGru := EdCodGru.Text;

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

procedure TfmEstR09.BbPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdCodClp.Text;
     fmAuxIni.CodGru := EdCodGru.Text;
     fmAuxIni.CodSub := EdCodSub.Text;

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
  
  if Trim( EdCodPro.Text ) <> '' then bPesquisa.SetFocus;

end;

procedure TfmEstR09.EdCodEmpExit(Sender: TObject);
begin
  inherited;
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
          Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('NomEmp').AsString ) <> '' then
             EdNomEmp.Text := FieldByName('NomEmp').AsString
          else
             begin

             EdNomEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdCodEmp);

          end;
     end;

     end
  else
     EdNomEmp.Text := '';
end;

procedure TfmEstR09.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp '+
                  ' Where CodClp = '''+EdCodClp.Text+'''';
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

procedure TfmEstR09.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGru.Text ) <> '' then begin

     EdCodGru.Text := FNumZeros(EdCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru '+
                  ' Where CodGru = '''+EdCodGru.Text+'''';
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

procedure TfmEstR09.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodSub.Text ) <> '' then begin

     EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub '+
                  ' Where CodGru = '''+EdCodGru.Text+''''+
                  '   and CodSub = '''+EdCodSub.Text+'''';
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

procedure TfmEstR09.EdCodProExit(Sender: TObject);
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

procedure TfmEstR09.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Ficha Financeira de Movimentações de Itens.htm', grR09.SaveToHTML);
end;

procedure TfmEstR09.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Ficha Financeira de Movimentações de Itens.xls', grR09.SaveToXLS);
end;

procedure TfmEstR09.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Ficha Financeira de Movimentações de Itens.xml', grR09.SaveToXML);
end;

procedure TfmEstR09.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmEstR09.grR09ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmEstR09.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From EstR08 Where EstR08.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmEstR09.FormDestroy(Sender: TObject);
begin
  inherited;
  fmEstR09 := Nil;
end;

procedure TfmEstR09.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmEstR09.grR09);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

end.
