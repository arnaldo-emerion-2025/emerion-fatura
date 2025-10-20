unit CmpR05;

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

  TfmCmpR05 = class(TfmPadrao)
    CmpR05: TwwQuery;
    DsR05: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    bPesquisa: TBitBtn;
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
    grR05: TdxDBGrid;
    bImprimir: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    EdCodPro: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdApeEmp: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    BbPsqClp: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqSub: TSpeedButton;
    BbPsqPro: TSpeedButton;
    EdNomPro: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    Label20: TLabel;
    Label22: TLabel;
    EdCodCli: TdxColorEdit;
    EdCodVen: TdxColorEdit;
    BbPsqVen: TSpeedButton;
    BbPsqCli: TSpeedButton;
    EdNomCli: TdxColorEdit;
    EdNomVen: TdxColorEdit;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    EdCodMrc: TdxColorEdit;
    EdCodTip: TdxColorEdit;
    EdCodCat: TdxColorEdit;
    bPsqCat: TSpeedButton;
    bPsqTip: TSpeedButton;
    bPsqMrc: TSpeedButton;
    EdNomMrc: TdxColorEdit;
    EdNomTip: TdxColorEdit;
    EdNomCat: TdxColorEdit;
    CODITE: TdxDBGridMaskColumn;
    DSCPRO: TdxDBGridMaskColumn;
    QTDEST: TdxDBGridMaskColumn;
    QTDVEN: TdxDBGridMaskColumn;
    TOTVEN: TdxDBGridMaskColumn;
    TOTCST: TdxDBGridMaskColumn;
    MARKUP: TdxDBGridMaskColumn;
    QTDNAT: TdxDBGridMaskColumn;
    QTDPED: TdxDBGridMaskColumn;
    QTDCMP: TdxDBGridMaskColumn;
    SUGCMP: TdxDBGridMaskColumn;
    QTDMIN: TdxDBGridColumn;
    QTDTRF: TdxDBGridColumn;
    CmpR05SEQARQ: TStringField;
    CmpR05CODEMP: TIntegerField;
    CmpR05CODFIL: TIntegerField;
    CmpR05LANEST: TStringField;
    CmpR05CODCLP: TStringField;
    CmpR05CODGRU: TStringField;
    CmpR05CODSUB: TStringField;
    CmpR05CODPRO: TStringField;
    CmpR05QTDEST: TFloatField;
    CmpR05QTDVEN: TFloatField;
    CmpR05TOTVEN: TFloatField;
    CmpR05TOTCST: TFloatField;
    CmpR05MARKUP: TFloatField;
    CmpR05QTDNAT: TFloatField;
    CmpR05QTDPED: TFloatField;
    CmpR05QTDCMP: TFloatField;
    CmpR05SUGCMP: TFloatField;
    CmpR05QTDMIN: TFloatField;
    CmpR05MEDVEN: TFloatField;
    CmpR05QTDMES: TIntegerField;
    CmpR05QTDTRF: TFloatField;
    CmpR05DSCPRO: TStringField;
    CmpR05MARCA: TStringField;
    MARCA: TdxDBGridColumn;
    CmpR05ULTCMP: TFloatField;
    CmpR05DULCMP: TDateTimeField;
    DULCMP: TdxDBGridColumn;
    ULTCMP: TdxDBGridColumn;
    CmpR05CODITE: TStringField;
    CmpR05IDEPRO: TStringField;
    IDEPRO: TdxDBGridColumn;
    CmpR05CODANT: TStringField;
    CmpR05NUMPRO: TStringField;
    NUMPRO: TdxDBGridColumn;
    MEDVEN: TdxDBGridColumn;
    CmpR05CODCAT: TIntegerField;
    CmpR05CODTIP: TIntegerField;
    CmpR05CODMRC: TIntegerField;
    CmpR05QTDEMB: TFloatField;
    QTDEMB: TdxDBGridColumn;
    rgExibir: TRadioGroup;
    rgMinimo: TRadioGroup;
    rgMaximo: TRadioGroup;
    CmpR05QTDMAX: TFloatField;
    QTDMAX: TdxDBGridColumn;
    CmpR05QTDCON: TStringField;
    QTDCON: TdxDBGridColumn;
    CmpR05CATEGORIA: TStringField;
    CATEGORIA: TdxDBGridColumn;
    CmpR05REFPRO: TStringField;
    REFPRO: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grR05ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure BbPsqClpClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure EdCodVenExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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
  fmCmpR05: TfmCmpR05;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqClp, AuxIni,
     AuxPsq, PsqRes, PsqCmp;

{$R *.DFM}

procedure TfmCmpR05.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmCmpR05.FormCreate(Sender: TObject);
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

procedure TfmCmpR05.bPesquisaClick(Sender: TObject);
var
QtdMes  : integer;
intCont : Integer;
Periodo : integer;
DataFinal,DataInicial : TDate;
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
  
  if Trim(fLimpaStr(EdPsqDteRes1.Text)) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPsqDteRes1);

  if Trim(fLimpaStr(EdPsqDteRes2.Text)) = '' then
     fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPsqDteRes2)
  else
     begin

     if EdPsqDteRes2.Date < EdPsqDteRes1.Date then fmsgErro('Periodo Final Inferior ao Periodo Inicial.',EdPsqDteRes2);

  end;

  DataInicial := EdPsqDteRes1.Date;

  DataFinal   := EdPsqDteRes2.Date;

  intCont := 0 ;

  Periodo := 1;

  repeat

     Inc(intCont) ;

     DataFinal := IncMonth(DataFinal,Periodo * -1) ;

  Until DataFinal < DataInicial ;

  DataFinal := IncMonth(DataFinal,Periodo) ;

  Inc(intCont,-1);

  QtdMes := intCont + 1;

  sFiltro := ' and ( ( PedLib.SitLib = '+ QuotedStr('Faturado') +' )';

  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Devolvido') +' and MonthOfYear(PedLib.DteFat) <> MonthOfYear(PedLib.DteDev) )';
  sFiltro := sFiltro + ' or ( PedLib.SitLib = '+ QuotedStr('Cancelado') +' and MonthOfYear(PedLib.DteFat) <> MonthOfYear(PedLib.DteDel) )';

  sFiltro := sFiltro + ' )';

  if Trim( EdCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodVen = '+ QuotedStr(EdCodVen.Text);
  if Trim( EdCodCli.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodCli = '+ QuotedStr(EdCodCli.Text);
  if Trim( EdCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodEmp = '+ QuotedStr(EdCodEmp.Text);
  if Trim( EdCodGru.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodGru = '+ QuotedStr(EdCodGru.Text);
  if Trim( EdCodSub.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodSub = '+ QuotedStr(EdCodSub.Text);
  if Trim( EdCodPro.Text ) <> '' then sFiltro := sFiltro + ' and PedRe2.CodPro = '+ QuotedStr(EdCodPro.Text);

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat >= '+ QuotedStr(fDateToSQL( EdPsqDteRes1.Date ));
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL( EdPsqDteRes2.Date ));

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.CodTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR05 Where SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR06 Where SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into CmpR05(SeqArq,CodEmp,CodClp,CodGru,CodSub,CodPro,QtdEst,QtdVen,TotVen,TotCst,MarKup,QtdNat,QtdPed,QtdCmp,SugCmp,QtdMin,MedVen,QtdMes,QtdTrf,QtdMax)'+
               ' Select '+ QuotedStr(SeqArq) + ',' +
               '        EstIte.CodEmp,'+
               '        EstIte.CodClp,'+
               '        EstIte.CodGru,'+
               '        EstIte.CodSub,'+
               '        EstIte.CodPro,'+
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr(IntToStr(QtdMes)) + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') +
               ' From EstIte,EstPro,GerEmp'+
               ' Where EstIte.CodClp = EstPro.CodClp'+
               '   and EstIte.CodGru = EstPro.CodGru'+
               '   and EstIte.CodSub = EstPro.CodSub'+
               '   and EstIte.CodPro = EstPro.CodPro'+
               '   and EstIte.CodEmp = GerEmp.CodEmp';

       if Trim( EdCodEmp.Text ) <> '' then Text := Text + ' and EstIte.CodEmp = '+ QuotedStr(EdCodEmp.Text);

       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into CmpR05(SeqArq,CodEmp,CodClp,CodGru,CodSub,CodPro,QtdEst,QtdVen,TotVen,TotCst,MarKup,QtdNat,QtdPed,QtdCmp,SugCmp,QtdMin,QtdMax,MedVen,QtdMes,QtdTrf)'+
               ' Select '+ QuotedStr(SeqArq) + ',' +
               '        PedRes.CodEmp,'+
               '        PedRe2.CodClp,'+
               '        PedRe2.CodGru,'+
               '        PedRe2.CodSub,'+
               '        PedRe2.CodPro,'+
               QuotedStr('0') + ',' +
               '        Round(Sum(PedLb2.UltQts),4) as QtdPed,'+
               '        Round(Sum(PedLb2.TotGe2),2) as TotLb2,'+
               '        Round(Sum(PedLb2.TotCst + PedLb2.TotCli),4) as TotCst,'+
               QuotedStr('0') + ',' +
               '        Round(Sum(PedLb2.SldLb2),4) as QtdNat,'+
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr(IntToStr(QtdMes)) +','+
               QuotedStr('0') +
               ' From PedLb2,PedLib,PedRe2,PedRes'+
               ' Where PedLb2.Id_PedLib = PedLib.Id_PedLib'+
               '   and PedLb2.Id_PedRe2 = PedRe2.Id_PedRe2'+
               '   and PedRe2.Id_PedRes = PedRes.Id_PedRes'+ sFiltro +
               '   and PedRes.IntFin = '+ QuotedStr('Sim') +
               '   and PedRes.ModPfa = '+ QuotedStr('Vendas') +
               ' Group by PedRes.CodEmp,PedRe2.CodClp,PedRe2.CodGru,PedRe2.CodSub,PedRe2.CodPro';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into CmpR05(SeqArq,CodEmp,CodClp,CodGru,CodSub,CodPro,QtdEst,QtdVen,TotVen,TotCst,MarKup,QtdNat,QtdPed,QtdCmp,SugCmp,QtdMin,QtdMax,MedVen,QtdMes,QtdTrf)'+
               ' Select '+ QuotedStr(SeqArq) + ',' +
               '        PedRes.CodEmp,'+
               '        PedRe2.CodClp,'+
               '        PedRe2.CodGru,'+
               '        PedRe2.CodSub,'+
               '        PedRe2.CodPro,'+
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               '        Round(Sum(PedLb2.SldLb2),4) as QtdNat,'+
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr('0') + ',' +
               QuotedStr(IntToStr(QtdMes)) +',Round(Sum(PedLb2.UltQts),4) as QtdPed'+
               ' From PedLb2,PedLib,PedRe2,PedRes'+
               ' Where PedLb2.Id_PedLib = PedLib.Id_PedLib'+
               '   and PedLb2.Id_PedRe2 = PedRe2.Id_PedRe2'+
               '   and PedRe2.Id_PedRes = PedRes.Id_PedRes'+ sFiltro + ' and PedRes.ModPfa = '+ QuotedStr('Transferencias') +
               ' Group by PedRes.CodEmp,PedRe2.CodClp,PedRe2.CodGru,PedRe2.CodSub,PedRe2.CodPro';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into CmpR06(SeqArq,CodEmp,CodClp,CodGru,CodSub,CodPro,QtdEst,QtdVen,TotVen,TotCst,Markup,QtdNat,QtdPed,QtdCmp,SugCmp,QtdMin,QtdMax,MedVen,QtdMes,QtdTrf)'+
               ' Select SeqArq,'+
               '        CodEmp,'+
               '        CodClp,'+
               '        CodGru,'+
               '        CodSub,'+
               '        CodPro,'+
               '        QtdEst,'+
               '        Round(Sum(QtdVen),4),'+
               '        Round(Sum(TotVen),2),'+
               '        Round(Sum(TotCst),4),'+
               '        Round(Sum(Markup),2),'+
               '        Round(Sum(QtdNat),2),'+
               '        QtdPed,'+
               '        QtdCmp,'+
               '        SugCmp,'+
               '        QtdMin,'+
               '        QtdMax,'+
               '        MedVen,'+
               '        QtdMes,'+
               '        Round(Sum(QtdTrf),2)'+
               ' From CmpR05 Where SeqArq = '+ QuotedStr(SeqArq);

       if Trim( EdCodClp.Text ) <> '' then Text := Text + ' and CmpR05.CodClp = '+ QuotedStr(EdCodClp.Text);
       if Trim( EdCodGru.Text ) <> '' then Text := Text + ' and CmpR05.CodGru = '+ QuotedStr(EdCodGru.Text);
       if Trim( EdCodSub.Text ) <> '' then Text := Text + ' and CmpR05.CodSub = '+ QuotedStr(EdCodSub.Text);
       if Trim( EdCodPro.Text ) <> '' then Text := Text + ' and CmpR05.CodPro = '+ QuotedStr(EdCodPro.Text);
       if Trim( EdCodCat.Text ) <> '' then Text := Text + ' and CmpR05.CodCat = '+ QuotedStr(EdCodCat.Text);
       if Trim( EdCodTip.Text ) <> '' then Text := Text + ' and CmpR05.CodTip = '+ QuotedStr(EdCodTip.Text);
       if Trim( EdCodMrc.Text ) <> '' then Text := Text + ' and CmpR05.CodMrc = '+ QuotedStr(EdCodMrc.Text);

       Text := Text + ' Group by SeqArq,CodEmp,CodClp,CodGru,CodSub,CodPro,QtdEst,QtdPed,QtdCmp,SugCmp,QtdMin,QtdMax,MedVen,QtdMes';

       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR05 Where SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with CmpR05,SQL do begin

       Close;
       Text := ' Select CmpR06.*,'+
               '        EstPro.IdePro,'+
               '        EstPro.RefPro,'+
               '        EstPro.DscPro,'+
               '        EstPro.CodAnt,'+
               '        EstPro.NumPro,'+
               '        EstPro.CxaPro as QtdEmb,'+
               QuotedStr('__________') +' as QtdCon,'+
               '        CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || CodPro as CodIte,'+
               '        TextoOcor(IntStrZeros(EstPro.CodMrc,3),'+ QuotedStr('-') +',EstMrc.NomMrc,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as Marca,'+
               '        TextoOcor(IntStrZeros(EstPro.CodCat,3),'+ QuotedStr('-') +',EstCat.NomCat,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as Categoria'+
               ' From CmpR06 LEFT JOIN EstPro ON (CmpR06.CodClp = EstPro.CodClp '+
               '                             AND  CmpR06.CodGru = EstPro.CodGru '+
               '                             AND  CmpR06.CodSub = EstPro.CodSub '+
               '                             AND  CmpR06.CodPro = EstPro.CodPro)'+
               '             LEFT JOIN EstMrc ON (EstPro.CodMrc = EstMrc.CodMrc)'+
               '             LEFT JOIN EstCat ON (EstPro.CodCat = EstCat.CodCat)'+
               ' Where CmpR06.SeqArq = '+ QuotedStr(SeqArq);

       case rgExibir.Itemindex of
            0: Text := Text + ' and CmpR06.QtdVen > '+ QuotedStr('0');
            1: Text := Text + ' and CmpR06.QtdVen = '+ QuotedStr('0');
       end;

       case rgMinimo.Itemindex of
            0: Text := Text + ' and CmpR06.QtdEst > CmpR06.QtdMin';
            1: Text := Text + ' and CmpR06.QtdEst < CmpR06.QtdMin';
       end;

       case rgMaximo.Itemindex of
            0: Text := Text + ' and CmpR06.QtdEst > CmpR06.QtdMax';
            1: Text := Text + ' and CmpR06.QtdEst < CmpR06.QtdMax';
       end;

       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR06 Where CmpR06.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grR05.FullExpand;

  grR05.SetFocus;

end;

procedure TfmCmpR05.FormShow(Sender: TObject);
begin
  inherited;

  EdCodClp.Text := '1';

  EdNomClp.Text := 'ACABADO';

  EdCodEmp.SetFocus;

end;

procedure TfmCmpR05.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmCmpR05.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa: '+ EdCodEmp.Text + ' - ' + EdApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria: '+ EdCodCat.Text + ' - ' + EdNomCat.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo: '+ EdCodTip.Text + ' - ' + EdNomTip.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Marca: '+ EdCodMrc.Text + ' - ' + EdNomMrc.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação: '+ EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo: '+ EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo: '+ EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item: '+ EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente: '+ EdCodCli.Text + ' - ' + EdNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor: '+ EdCodVen.Text + ' - ' + EdNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no periodo de: '+ EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmCmpR05.grR05ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmCmpR05.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Curva ABC de Itens.htm', grR05.SaveToHTML);
end;

procedure TfmCmpR05.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Curva ABC de Itens.xls', grR05.SaveToXLS);
end;

procedure TfmCmpR05.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Curva ABC de Itens.xml', grR05.SaveToXML);
end;

procedure TfmCmpR05.BbPsqEmpClick(Sender: TObject);
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

  EdCodEmp.SetFocus;

end;

procedure TfmCmpR05.EdCodEmpExit(Sender: TObject);
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

procedure TfmCmpR05.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmCmpR05.BbPsqClpClick(Sender: TObject);
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

procedure TfmCmpR05.EdCodClpExit(Sender: TObject);
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

procedure TfmCmpR05.BbPsqGruClick(Sender: TObject);
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

procedure TfmCmpR05.EdCodGruExit(Sender: TObject);
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

procedure TfmCmpR05.BbPsqSubClick(Sender: TObject);
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

procedure TfmCmpR05.EdCodSubExit(Sender: TObject);
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

procedure TfmCmpR05.BbPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );
     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;
     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;
     if Trim( EdCodSub.Text ) <> '' then fmAuxIni.CodSub := EdCodSub.Text;

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

procedure TfmCmpR05.EdCodProExit(Sender: TObject);
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

procedure TfmCmpR05.BbPsqCliClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'C';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCli > 0 then begin

        EdNomCli.Text := fmAuxIni.NomCli;

        EdCodCli.Text := IntToStr(fmAuxIni.CodCli);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;  
end;

procedure TfmCmpR05.EdCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomCli From FinCli Where CodCli = '''+EdCodCli.Text+'''';
          Open;

          EdNomCli.Text := quSql.FieldByName('NomCli').AsString;
     end;

     end
  else
     EdNomCli.Text := '';
end;

procedure TfmCmpR05.BbPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdNomVen.Text := fmAuxIni.NomVen;

        EdCodVen.Text := IntToStr(fmAuxIni.CodVen);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;  
end;

procedure TfmCmpR05.EdCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select ApeVen From FinVen Where CodVen = '''+ EdCodVen.Text +'''';
          Open;

          EdNomVen.Text := quSql.FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdNomVen.Text := '';
end;

procedure TfmCmpR05.bPsqCatClick(Sender: TObject);
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

procedure TfmCmpR05.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCat.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCat From EstCat Where CodCat = '''+ EdCodCat.Text +'''';
          Open;

          EdNomCat.Text := FieldByName('NomCat').AsString;

     end;

     end
  else
     EdNomCat.Text := '';
end;

procedure TfmCmpR05.bPsqTipClick(Sender: TObject);
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

procedure TfmCmpR05.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodTip.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomTip From EstTip Where CodTip = '''+ EdCodTip.Text +'''';
          Open;

          EdNomTip.Text := FieldByName('NomTip').AsString;

     end;

     end
  else
     EdNomTip.Text := '';
end;

procedure TfmCmpR05.bPsqMrcClick(Sender: TObject);
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

procedure TfmCmpR05.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodMrc.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomMrc From EstMrc Where CodMrc = '''+ EdCodMrc.Text +'''';
          Open;

          EdNomMrc.Text := FieldByName('NomMrc').AsString;

     end;

     end
  else
     EdNomMrc.Text := '';
end;

procedure TfmCmpR05.EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

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
end;

procedure TfmCmpR05.EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

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
end;

procedure TfmCmpR05.EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

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
end;

procedure TfmCmpR05.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

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
end;

procedure TfmCmpR05.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

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

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxPsq.CodGru;
           EdNomGru.Text := fmAuxPsq.NomGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdCodGru.Text ) <> '' then EdCodSub.SetFocus;

  end;
end;

procedure TfmCmpR05.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;
        fmAuxIni.CodGru := EdCodGru.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

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

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;
        fmAuxPsq.CodGru := EdCodGru.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxPsq.CodGru;
           EdNomGru.Text := fmAuxPsq.NomGru;
           EdCodSub.Text := fmAuxPsq.CodSub;
           EdNomSub.Text := fmAuxPsq.NomSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdCodSub.Text ) <> '' then EdCodPro.SetFocus;

  end;
end;

procedure TfmCmpR05.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;
        fmAuxIni.CodGru := EdCodGru.Text;
        fmAuxIni.CodSub := EdCodSub.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodPro ) <> '' then begin

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

     if Trim( EdCodPro.Text ) <> '' then EdCodCli.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;
        fmAuxPsq.CodGru := EdCodGru.Text;
        fmAuxPsq.CodSub := EdCodSub.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodPro ) <> '' then begin

           EdCodGru.Text := fmAuxPsq.CodGru;
           EdNomGru.Text := fmAuxPsq.NomGru;
           EdCodSub.Text := fmAuxPsq.CodSub;
           EdNomSub.Text := fmAuxPsq.NomSub;
           EdCodPro.Text := fmAuxPsq.CodPro;
           EdNomPro.Text := fmAuxPsq.DscPro;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdCodPro.Text ) <> '' then EdCodCli.SetFocus;

  end;
end;

procedure TfmCmpR05.EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           EdNomCli.Text := fmAuxIni.NomCli;
           EdCodCli.Text := IntToStr(fmAuxIni.CodCli);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdCodCli.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           EdNomCli.Text := fmAuxPsq.NomCli;
           EdCodCli.Text := IntToStr(fmAuxPsq.CodCli);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdCodCli.SetFocus;

  end;
end;

procedure TfmCmpR05.EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdNomVen.Text := fmAuxIni.NomVen;

           EdCodVen.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdCodVen.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           EdNomVen.Text := fmAuxPsq.NomVen;
           EdCodVen.Text := IntToStr(fmAuxPsq.CodVen);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdCodVen.SetFocus;
     
  end;
end;

procedure TfmCmpR05.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #18 then begin // Pedidos de Venda //

     try

        fmPsqRes := TfmPsqRes.Create(Self);

        fmPsqRes.Panel3.Caption := CmpR05CodGru.Value+'.'+CmpR05CodSub.Value+'.'+CmpR05CodPro.Value+' - '+CmpR05DscPro.Value;

        fmPsqRes.PedRes.Close;
        fmPsqRes.PedRes.Params[0].AsString := CmpR05CodClp.Value;
        fmPsqRes.PedRes.Params[1].AsString := CmpR05CodGru.Value;
        fmPsqRes.PedRes.Params[2].AsString := CmpR05CodSub.Value;
        fmPsqRes.PedRes.Params[3].AsString := CmpR05CodPro.Value;
        fmPsqRes.PedRes.Open;

        fmPsqRes.ShowModal;

     finally

        FreeAndNil(fmPsqRes);

     end;
  end;

  if key = #3 then begin // Comprado //

     try

        fmPsqCmp := TfmPsqCmp.Create(Self);

        fmPsqCmp.Panel3.Caption := CmpR05CodGru.Value+'.'+CmpR05CodSub.Value+'.'+CmpR05CodPro.Value+' - '+CmpR05DscPro.Value;

        fmPsqCmp.CmpPed.Close;
        fmPsqCmp.CmpPed.Params[0].AsString := CmpR05CodClp.Value;
        fmPsqCmp.CmpPed.Params[1].AsString := CmpR05CodGru.Value;
        fmPsqCmp.CmpPed.Params[2].AsString := CmpR05CodSub.Value;
        fmPsqCmp.CmpPed.Params[3].AsString := CmpR05CodPro.Value;
        fmPsqCmp.CmpPed.Open;

        fmPsqCmp.ShowModal;

     finally

        FreeAndNil(fmPsqCmp);

     end;
  end;
end;

procedure TfmCmpR05.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR05 Where SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR06 Where SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmCmpR05.FormDestroy(Sender: TObject);
begin
  inherited;
  fmCmpR05 := nil;
end;

end.

