unit GCom01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorPickEdit,
  dxColorEdit, dxPSTCLnk, dxPSDBTCLnk, TeEngine, Series, TeeProcs, Chart,
  DBChart;

type
  TfmGCom01 = class(TfmPadrao)
    Chart1: TDBChart;
    PopupMenu1: TPopupMenu;
    Imprimir: TMenuItem;
    DsGraf: TwwDataSource;
    QrGraf: TwwQuery;
    PaintBox: TPaintBox;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink2: TdxDBTeeChartReportLink;
    bPesquisa: TBitBtn;
    Label2: TLabel;
    EdPsqAno: TdxColorEdit;
    quSql: TwwQuery;
    quSql1: TwwQuery;
    Label47: TLabel;
    EdPsqCodCve: TdxColorEdit;
    EdPsqNomCve: TdxColorEdit;
    QrGrafNOMMES: TStringField;
    QrGrafTOTMET: TFloatField;
    QrGrafTOTFAT: TFloatField;
    QrGrafPRTMET: TFloatField;
    Series1: THorizBarSeries;
    Series2: THorizBarSeries;
    Label4: TLabel;
    bPsqGve: TSpeedButton;
    EdPsqNomGve: TdxColorEdit;
    Label1: TLabel;
    EdPsqCodVen: TdxColorEdit;
    bPsqVen: TSpeedButton;
    EdPsqApeVen: TdxColorEdit;
    bPsqCve: TSpeedButton;
    EdPsqCodGve: TdxColorEdit;
    procedure FormCreate(Sender: TObject);
    procedure ImprimirClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdPsqAnoKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqCveClick(Sender: TObject);
    procedure EdPsqCodCveExit(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqCodCveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodGveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
  private
    {Private declarations}
    SeqArq : string;
  public
    {Public declarations}
  end;

var
  fmGCom01: TfmGCom01;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bberro, Bbmensag, Printers, ManGDB,
     PsqCve, PsqGve, AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmGCom01.FormCreate(Sender: TObject);
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

procedure TfmGCom01.ImprimirClick(Sender: TObject);
begin

  dxComponentPrinterLink2.PrinterPage.PageHeader.CenterTitle.Clear;
  dxComponentPrinterLink2.PrinterPage.PageHeader.CenterTitle.Add('');
  dxComponentPrinterLink2.PrinterPage.PageHeader.CenterTitle.Add('Desempenho Anual - Meta x Faturado '+ EdPsqAno.Text);
  dxComponentPrinterLink2.PrinterPage.PageHeader.CenterTitle.Add('');

  dxComponentPrinterLink2.Print(True,Nil);

end;

procedure TfmGCom01.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmGCom01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR31 Where PedR31.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  Action := CaFree;

end;

procedure TfmGCom01.FormDestroy(Sender: TObject);
begin
  inherited;
  fmGCom01 := Nil;
end;

procedure TfmGCom01.bPesquisaClick(Sender: TObject);
var
  i       : integer;
  sFiltro : string;
  DtInic  : TDateTime;
  DtFina  : TDateTime;
begin
  inherited;

  ActiveControl := nil;

  if Trim( EdPsqAno.Text ) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqAno);

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR31 Where PedR31.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  DtInic := StrToDate('01/01/'+ EdPsqAno.Text);
  DtFina := StrToDate('31/12/'+ EdPsqAno.Text);

  sFiltro := ' and PedMve.DtiMve between '+ QuotedStr(fDateToSQL(DtInic)) +' and '+ QuotedStr(fDateToSQL(DtFina)) +
             ' and PedMve.DtfMve between '+ QuotedStr(fDateToSQL(DtInic)) +' and '+ QuotedStr(fDateToSQL(DtFina)) ;

  if Trim( EdPsqCodCve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);
  if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  for i := 1 to 12 do begin

      with quSQL,SQL do begin

           Close;
           Text := ' Insert Into PedR31(SeqArq,CodMes,TotMet,TotFat,FlgOpe)'+
                   '             Values('+ QuotedStr(SeqArq) +','+ QuotedStr(IntToStr(i)) +','+ QuotedStr('0') +','+ QuotedStr('0') +','+ QuotedStr('Nao') +')';
           ExecSQL;

      end;
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR31(SeqArq,CodMes,TotMet,TotFat,FlgOpe)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        Extract(Month From PedMve.DtiMve),'+
               '        Sum(PedMv2.TotMv2),'+ QuotedStr('0') +','+ QuotedStr('Nao') +
               ' From PedMv2,PedMve,FinVen'+
               ' Where PedMv2.Id_PedMve = PedMve.Id_PedMve and PedMv2.CodVen = FinVen.CodVen '+ sFiltro +
               ' Group by Extract(Month From PedMve.DtiMve)';
       ExecSQL;

  end;

  sFiltro := ' and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(DtInic)) +' and PedLib.DteFat <= '+QuotedStr(fDateToSQL(DtFina));

  sFiltro := ' and PedRes.IntFin = '+ QuotedStr('Sim') +' and ( ( PedLib.SitLib = '+ QuotedStr('Faturado') +' )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Devolvido') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Cancelado') +' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) )';

  sFiltro := sFiltro + ' )';

  sFiltro := sFiltro + ' and PedRes.ModPfa = '+ QuotedStr('Vendas');

  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
  if Trim( EdPsqCodCve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);
  if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = '+ QuotedStr('Sim');

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR31(SeqArq,CodMes,TotFat,TotMet,FlgOpe)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        Extract(Month From PedLib.DteFat),'+
               '        Sum(PedLib.TotLib - PedLib.TotDsr),'+ QuotedStr('0') +','+ QuotedStr('Nao') +
               ' From PedLib,PedRes,FinVen'+
               ' Where PedLib.Id_PedRes = PedRes.Id_PedRes'+
               '   and PedRes.CodVen = FinVen.CodVen'+ sFiltro +
               ' Group by Extract(Month From PedLib.DteFat)';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR31(SeqArq,CodMes,TotFat,TotMet,FlgOpe)'+
               ' Select PedR31.SeqArq,'+
               '        PedR31.CodMes,'+
               '        Sum(PedR31.TotFat),'+
               '        Sum(PedR31.TotMet),'+ QuotedStr('Sim') +
               ' From PedR31'+
               ' Where PedR31.SeqArq = '+ QuotedStr(SeqArq) +
               '   and PedR31.FlgOpe = '+ QuotedStr('Nao') +
               ' Group by PedR31.SeqArq, PedR31.CodMes';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR31 Where PedR31.SeqArq = '+ QuotedStr(SeqArq) +' and PedR31.FlgOpe = '+ QuotedStr('Nao');
       ExecSQL;

  end;
  
  qrGraf.Close;
  qrGraf.Params[0].AsString := SeqArq;
  qrGraf.Open;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR31 Where SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;
end;

procedure TfmGCom01.FormShow(Sender: TObject);
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

  EdPsqAno.Text := fNumZeros(copy(FormatDateTime('dd/mm/yyyy',Date),7,4),4);
  
  EdPsqCodCve.SetFocus;
    
end;

procedure TfmGCom01.EdPsqAnoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmGCom01.bPsqCveClick(Sender: TObject);
begin

  try

     fmPsqCve := TfmPsqCve.Create(Self);
     fmPsqCve.ShowModal;

     if fmPsqCve.CodCve > 0 then begin

        EdPsqNomCve.Text := fmPsqCve.NomCve;
        EdPsqCodCve.Text := IntToStr(fmPsqCve.CodCve);

     end;

  finally

     FreeAndNil(fmPsqCve);

  end;
end;

procedure TfmGCom01.EdPsqCodCveExit(Sender: TObject);
begin
  if Trim( EdPsqCodCve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinCve.NomCve From FinCve Where FinCve.CodCve = '''+ EdPsqCodCve.Text +'''';
          Open;

          EdPsqNomCve.Text := FieldByName('NomCve').AsString;

     end;

     end
  else
     EdPsqNomCve.Text := '';
end;

procedure TfmGCom01.bPsqGveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGve := TfmPsqGve.Create(Self);
     fmPsqGve.ShowModal;

     if fmPsqGve.CodGve > 0 then begin

        EdPsqNomGve.Text := fmPsqGve.NomGve;
        EdPsqCodGve.Text := IntToStr(fmPsqGve.CodGve);

     end;

  finally

     FreeAndNil(fmPsqGve);

  end;
end;

procedure TfmGCom01.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdPsqApeVen.Text := fmAuxIni.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqCodVen.SetFocus;

end;

procedure TfmGCom01.EdPsqCodCveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqCve := TfmPsqCve.Create(Self);
        fmPsqCve.ShowModal;

        if fmPsqCve.CodCve > 0 then begin

           EdPsqNomCve.Text := fmPsqCve.NomCve;
           EdPsqCodCve.Text := IntToStr(fmPsqCve.CodCve);

        end;

     finally

        FreeAndNil(fmPsqCve);

     end;
  end;
end;

procedure TfmGCom01.EdPsqCodGveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqGve := TfmPsqGve.Create(Self);
        fmPsqGve.ShowModal;

        if fmPsqGve.CodGve > 0 then begin

           EdPsqNomGve.Text := fmPsqGve.NomGve;
           EdPsqCodGve.Text := IntToStr(fmPsqGve.CodGve);

        end;

     finally

        FreeAndNil(fmPsqGve);

     end;
  end;
end;

procedure TfmGCom01.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqApeVen.Text := fmAuxIni.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqCodVen.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           EdPsqApeVen.Text := fmAuxPsq.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqCodVen.SetFocus;

  end;
end;

procedure TfmGCom01.EdPsqCodGveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinGve.NomGve From FinGve Where FinGve.CodGve = '''+ EdPsqCodGve.Text +'''';
          Open;

          EdPsqNomGve.Text := FieldByName('NomGve').AsString;

     end;

     end
  else
     EdPsqNomGve.Text := '';
end;

procedure TfmGCom01.EdPsqCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '''+ EdPsqCodVen.Text +'''';
          Open;

          EdPsqApeVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqApeVen.Text := '';
end;

end.
