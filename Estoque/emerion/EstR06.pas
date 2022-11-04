unit EstR06;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Menus, ImgList, Db, Wwdatsrc, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBTables, Wwquery, StdCtrls, ExtCtrls,
  dxDBGrid, dxTL, dxDBCtrl, dxCntner, Buttons, dxEditor, dxEdLib, Grids,
  Wwdbigrd, Wwdbgrid, hGrid, Mask, hEdits, wwdbedit, Wwdotdot,
  Wwdbcomb, DBCtrls, AlignEdit, QuickRpt, ppDB, ppDBPipe, ppBands, ppClass,
  ppStrtch, ppMemo, ppVar, jpeg, ppCtrls, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, ppModule, daDatMod, wwdbdatetimepicker, dxExEdtr,
  dxColorEdit, dxfProgressBar, dxDBTLCl, dxGrClms;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmEstR06 = class(TfmPadrao)
    EstR06: TwwQuery;
    quSql: TwwQuery;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    SaveDialog: TSaveDialog;
    PaintBox: TPaintBox;
    grR06: TdxDBGrid;
    Label3: TLabel;
    EdCodPro: TdxColorEdit;
    bPsqPro: TSpeedButton;
    EdNomPro: TdxColorEdit;
    bPesquisa: TBitBtn;
    bImprimir: TBitBtn;
    Label2: TLabel;
    Bevel2: TBevel;
    DsR06: TwwDataSource;
    rgStatus: TRadioGroup;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    EdCodSub: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodMrc: TdxColorEdit;
    EdCodTip: TdxColorEdit;
    EdCodCat: TdxColorEdit;
    bPsqCat: TSpeedButton;
    bPsqTip: TSpeedButton;
    PsqMrc: TSpeedButton;
    bPsqClp: TSpeedButton;
    bPsqGru: TSpeedButton;
    bPsqSub: TSpeedButton;
    EdNomSub: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    EdNomMrc: TdxColorEdit;
    EdNomTip: TdxColorEdit;
    EdNomCat: TdxColorEdit;
    EstR06NOMCAT: TStringField;
    EstR06NOMMRC: TStringField;
    EstR06NOMGRU: TStringField;
    EstR06NOMSUB: TStringField;
    EstR06CODPRO: TStringField;
    EstR06DSCPRO: TStringField;
    EstR06IDEPRO: TStringField;
    EstR06SIMPRO: TStringField;
    EstR06CODANT: TStringField;
    EstR06CODUNS: TStringField;
    EstR06CODCOM: TStringField;
    EstR06NUMPRO: TStringField;
    grR06NOMCAT: TdxDBGridMaskColumn;
    grR06NOMMRC: TdxDBGridMaskColumn;
    grR06NOMGRU: TdxDBGridMaskColumn;
    grR06NOMSUB: TdxDBGridMaskColumn;
    grR06CODPRO: TdxDBGridMaskColumn;
    grR06DSCPRO: TdxDBGridMaskColumn;
    grR06IDEPRO: TdxDBGridMaskColumn;
    grR06SIMPRO: TdxDBGridMaskColumn;
    grR06CODANT: TdxDBGridMaskColumn;
    grR06CODUNS: TdxDBGridMaskColumn;
    grR06PERCOM: TdxDBGridMaskColumn;
    grR06NUMPRO: TdxDBGridMaskColumn;
    ImageList1: TImageList;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    EstR06NOMTIP: TStringField;
    grR06NOMTIP: TdxDBGridColumn;
    EstR06PERCOM: TFloatField;
    EstR06QTDEMB: TFloatField;
    grR06QTDEMB: TdxDBGridColumn;
    Colunas1: TMenuItem;
    EstR06CODSIT: TStringField;
    EstR06PERIPI: TFloatField;
    EstR06PERICM: TFloatField;
    EstR06CLSIPI: TStringField;
    EstR06VB1ITE: TFloatField;
    EstR06VB2ITE: TFloatField;
    EstR06VB3ITE: TFloatField;
    EstR06VB4ITE: TFloatField;
    EstR06VB5ITE: TFloatField;
    EstR06DS1ITE: TFloatField;
    EstR06DS2ITE: TFloatField;
    EstR06DS3ITE: TFloatField;
    EstR06DS4ITE: TFloatField;
    EstR06DS5ITE: TFloatField;
    grR06PERIPI: TdxDBGridColumn;
    grR06PERICM: TdxDBGridColumn;
    grR06CLSIPI: TdxDBGridColumn;
    grR06VB1ITE: TdxDBGridColumn;
    grR06DS1ITE: TdxDBGridColumn;
    grR06VB2ITE: TdxDBGridColumn;
    grR06DS2ITE: TdxDBGridColumn;
    grR06VB3ITE: TdxDBGridColumn;
    grR06DS3ITE: TdxDBGridColumn;
    grR06VB4ITE: TdxDBGridColumn;
    grR06DS4ITE: TdxDBGridColumn;
    grR06VB5ITE: TdxDBGridColumn;
    grR06DS5ITE: TdxDBGridColumn;
    grR06CODSIT: TdxDBGridColumn;
    EstR06QTDITE: TFloatField;
    grR06QTDITE: TdxDBGridColumn;
    Label11: TLabel;
    EdCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdApeEmp: TdxColorEdit;
    EstR06VPFITE: TFloatField;
    EstR06CODITE: TStringField;
    grR06CODITE: TdxDBGridColumn;
    grR06VPFITE: TdxDBGridColumn;
    rgImagem: TRadioGroup;
    EstR06QTAITE: TFloatField;
    grR06QTAITE: TdxDBGridColumn;
    EstR06DULCMP: TDateTimeField;
    EstR06QTDCMP: TFloatField;
    grR06DULCMP: TdxDBGridColumn;
    grR06QTDCMP: TdxDBGridColumn;
    EstR06VMEITE: TFloatField;
    grR06VMEITE: TdxDBGridColumn;
    EstR06LIQEMB: TFloatField;
    EstR06BRTEMB: TFloatField;
    EstR06CUBPRO: TFloatField;
    EstR06CXAPRO: TFloatField;
    grR06LIQEMB: TdxDBGridColumn;
    grR06BRTEMB: TdxDBGridColumn;
    grR06CUBPRO: TdxDBGridColumn;
    grR06CXAPRO: TdxDBGridColumn;
    EstR06VCRITE: TFloatField;
    grR06VCRITE: TdxDBGridColumn;
    EstR06QTMITE: TFloatField;
    EstR06QMAITE: TFloatField;
    grR06QTMITE: TdxDBGridColumn;
    grR06QMAITE: TdxDBGridColumn;
    EstR06PERIMP: TFloatField;
    grR06PERIMP: TdxDBGridColumn;
    grR06MS1ITE: TdxDBGridColumn;
    grR06MS2ITE: TdxDBGridColumn;
    grR06MS3ITE: TdxDBGridColumn;
    grR06MS4ITE: TdxDBGridColumn;
    grR06MS5ITE: TdxDBGridColumn;
    EstR06MS1ITE: TFloatField;
    EstR06MS2ITE: TFloatField;
    EstR06MS3ITE: TFloatField;
    EstR06MS4ITE: TFloatField;
    EstR06MS5ITE: TFloatField;
    EstR06MK1ITE: TFloatField;
    EstR06MK2ITE: TFloatField;
    EstR06MK3ITE: TFloatField;
    EstR06MK4ITE: TFloatField;
    EstR06MK5ITE: TFloatField;
    grR06MK1ITE: TdxDBGridColumn;
    grR06MK2ITE: TdxDBGridColumn;
    grR06MK3ITE: TdxDBGridColumn;
    grR06MK4ITE: TdxDBGridColumn;
    grR06MK5ITE: TdxDBGridColumn;
    rgSubst: TRadioGroup;
    EstR06CODBAR1: TStringField;
    EstR06CODBAR2: TStringField;
    EstR06CODBAR3: TStringField;
    grR06CODBAR1: TdxDBGridColumn;
    grR06CODBAR2: TdxDBGridColumn;
    grR06CODBAR3: TdxDBGridColumn;
    EstR06QTDBAR1: TFloatField;
    EstR06CUBBAR1: TFloatField;
    EstR06PESBAR1: TFloatField;
    EstR06TIPBAR1: TStringField;
    EstR06QTDBAR2: TFloatField;
    EstR06CUBBAR2: TFloatField;
    EstR06PESBAR2: TFloatField;
    EstR06TIPBAR2: TStringField;
    EstR06QTDBAR3: TFloatField;
    EstR06CUBBAR3: TFloatField;
    EstR06PESBAR3: TFloatField;
    EstR06TIPBAR3: TStringField;
    grR06TIPBAR1: TdxDBGridColumn;
    grR06QTDBAR1: TdxDBGridColumn;
    grR06CUBBAR1: TdxDBGridColumn;
    grR06PESBAR1: TdxDBGridColumn;
    grR06QTDBAR2: TdxDBGridColumn;
    grR06PESBAR2: TdxDBGridColumn;
    grR06CUBBAR2: TdxDBGridColumn;
    grR06TIPBAR2: TdxDBGridColumn;
    grR06TIPBAR3: TdxDBGridColumn;
    grR06QTDBAR3: TdxDBGridColumn;
    grR06CUBBAR3: TdxDBGridColumn;
    grR06PESBAR3: TdxDBGridColumn;
    EstR06REFPRO: TStringField;
    grR06REFPRO: TdxDBGridColumn;
    pnSequenc: TPanel;
    lbSequenc: TLabel;
    ProgressBar: TdxfProgressBar;
    quSQL1: TwwQuery;
    EstR06OBSSTR: TMemoField;
    grR06OBSSTR: TdxDBGridMemoColumn;
    EstR06QTDRMA: TFloatField;
    grR06QTDRMA: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grR06ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bPsqClpClick(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodCatExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure PsqMrcClick(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    SeqArq : string;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    sBase, sFiltro : string;
  end;

var
  fmEstR06: TfmEstR06;

implementation

uses dxDemoUtils, ShellAPI, Bbgeral, BbMensag, Bbfuncao, ManGDB, FPreview,
     PsqEmp, PsqClp, ManPri, AuxIni, ManCol;

{$R *.DFM}

procedure TfmEstR06.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmEstR06.FormCreate(Sender: TObject);
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

  sBase := ' Select TextoOcor(IntStrZeros(EstPro.CodCat,3),'''+ '-' +''',EstCat.NomCat,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomCat,'+
           '        TextoOcor(IntStrZeros(EstPro.CodMrc,3),'''+ '-' +''',EstMrc.NomMrc,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomMrc,'+
           '        TextoOcor(IntStrZeros(EstPro.CodTip,3),'''+ '-' +''',EstTip.NomTip,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomTip,'+
           '        TextoOcor(EstR06.CodGru,'''+ '-' +''',EstGru.NomGru,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomGru,'+
           '        TextoOcor(EstR06.CodSub,'''+ '-' +''',EstSub.NomSub,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as NomSub,'+
           '        TextoOcor(EstIcm.CodSt1,EstIcm.CodSt2,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as CodSit,'+
           '        EstIpi.PerIpi,'+
           '        (Select EstIpi.PerImp From EstIpi Where EstIpi.CodIpi = EstPro.IpiEnt and EstIpi.TipIpi = EstPro.IpiTen) as PerImp,'+
           '        EstIcm.PerIcm,'+
           '        EstIpi.ClsIpi,'+
           '        EstR06.CodPro,'+
           '        EstR06.ObsStr,'+
           '        EstPro.RefPro,'+
           '        EstPro.QtdEmb,'+
           '        EstPro.DscPro,'+
           '        EstPro.IdePro,'+
           '        EstPro.SimPro,'+
           '        EstPro.CodAnt,'+
           '        EstPro.CodUns,'+
           '        EstPro.CodCom,'+
           '        EstPro.NumPro,'+
           '        EstPro.LiqEmb,'+
           '        (Select CodBar From EstBar Where EstBar.CodClp = EstR06.CodClp'+
           '                                     and EstBar.CodGru = EstR06.CodGru'+
           '                                     and EstBar.CodSub = EstR06.CodSub'+
           '                                     and EstBar.CodPro = EstR06.CodPro'+
           '                                     and EstBar.NroBar = 1) as CodBar1,'+
           '        (Select QtdEmb From EstBar Where EstBar.CodClp = EstR06.CodClp'+
           '                                     and EstBar.CodGru = EstR06.CodGru'+
           '                                     and EstBar.CodSub = EstR06.CodSub'+
           '                                     and EstBar.CodPro = EstR06.CodPro'+
           '                                     and EstBar.NroBar = 1) as QtdBar1,'+
           '        (Select CubEmb From EstBar Where EstBar.CodClp = EstR06.CodClp'+
           '                                     and EstBar.CodGru = EstR06.CodGru'+
           '                                     and EstBar.CodSub = EstR06.CodSub'+
           '                                     and EstBar.CodPro = EstR06.CodPro'+
           '                                     and EstBar.NroBar = 1) as CubBar1,'+
           '        (Select PesEmb From EstBar Where EstBar.CodClp = EstR06.CodClp'+
           '                                     and EstBar.CodGru = EstR06.CodGru'+
           '                                     and EstBar.CodSub = EstR06.CodSub'+
           '                                     and EstBar.CodPro = EstR06.CodPro'+
           '                                     and EstBar.NroBar = 1) as PesBar1,'+
           '        (Select EstEmb.NomEmb From EstBar,EstEmb Where EstBar.CodEmb = EstEmb.CodEmb'+
           '                                                   and EstBar.CodClp = EstR06.CodClp'+
           '                                                   and EstBar.CodGru = EstR06.CodGru'+
           '                                                   and EstBar.CodSub = EstR06.CodSub'+
           '                                                   and EstBar.CodPro = EstR06.CodPro'+
           '                                                   and EstBar.NroBar = 1) as TipBar1,'+
           '        (Select CodBar From EstBar Where EstBar.CodClp = EstR06.CodClp'+
           '                                     and EstBar.CodGru = EstR06.CodGru'+
           '                                     and EstBar.CodSub = EstR06.CodSub'+
           '                                     and EstBar.CodPro = EstR06.CodPro'+
           '                                     and EstBar.NroBar = 2) as CodBar2,'+
           '        (Select QtdEmb From EstBar Where EstBar.CodClp = EstR06.CodClp'+
           '                                     and EstBar.CodGru = EstR06.CodGru'+
           '                                     and EstBar.CodSub = EstR06.CodSub'+
           '                                     and EstBar.CodPro = EstR06.CodPro'+
           '                                     and EstBar.NroBar = 2) as QtdBar2,'+
           '        (Select CubEmb From EstBar Where EstBar.CodClp = EstR06.CodClp'+
           '                                     and EstBar.CodGru = EstR06.CodGru'+
           '                                     and EstBar.CodSub = EstR06.CodSub'+
           '                                     and EstBar.CodPro = EstR06.CodPro'+
           '                                     and EstBar.NroBar = 2) as CubBar2,'+
           '        (Select PesEmb From EstBar Where EstBar.CodClp = EstR06.CodClp'+
           '                                     and EstBar.CodGru = EstR06.CodGru'+
           '                                     and EstBar.CodSub = EstR06.CodSub'+
           '                                     and EstBar.CodPro = EstR06.CodPro'+
           '                                     and EstBar.NroBar = 2) as PesBar2,'+
           '        (Select EstEmb.NomEmb From EstBar,EstEmb Where EstBar.CodEmb = EstEmb.CodEmb'+
           '                                                   and EstBar.CodClp = EstR06.CodClp'+
           '                                                   and EstBar.CodGru = EstR06.CodGru'+
           '                                                   and EstBar.CodSub = EstR06.CodSub'+
           '                                                   and EstBar.CodPro = EstR06.CodPro'+
           '                                                   and EstBar.NroBar = 2) as TipBar2,'+
           '        (Select CodBar From EstBar Where EstBar.CodClp = EstR06.CodClp'+
           '                                     and EstBar.CodGru = EstR06.CodGru'+
           '                                     and EstBar.CodSub = EstR06.CodSub'+
           '                                     and EstBar.CodPro = EstR06.CodPro'+
           '                                     and EstBar.NroBar = 3) as CodBar3,'+
           '        (Select QtdEmb From EstBar Where EstBar.CodClp = EstR06.CodClp'+
           '                                     and EstBar.CodGru = EstR06.CodGru'+
           '                                     and EstBar.CodSub = EstR06.CodSub'+
           '                                     and EstBar.CodPro = EstR06.CodPro'+
           '                                     and EstBar.NroBar = 3) as QtdBar3,'+
           '        (Select CubEmb From EstBar Where EstBar.CodClp = EstR06.CodClp'+
           '                                     and EstBar.CodGru = EstR06.CodGru'+
           '                                     and EstBar.CodSub = EstR06.CodSub'+
           '                                     and EstBar.CodPro = EstR06.CodPro'+
           '                                     and EstBar.NroBar = 3) as CubBar3,'+
           '        (Select PesEmb From EstBar Where EstBar.CodClp = EstR06.CodClp'+
           '                                     and EstBar.CodGru = EstR06.CodGru'+
           '                                     and EstBar.CodSub = EstR06.CodSub'+
           '                                     and EstBar.CodPro = EstR06.CodPro'+
           '                                     and EstBar.NroBar = 3) as PesBar3,'+
           '        (Select EstEmb.NomEmb From EstBar,EstEmb Where EstBar.CodEmb = EstEmb.CodEmb'+
           '                                                   and EstBar.CodClp = EstR06.CodClp'+
           '                                                   and EstBar.CodGru = EstR06.CodGru'+
           '                                                   and EstBar.CodSub = EstR06.CodSub'+
           '                                                   and EstBar.CodPro = EstR06.CodPro'+
           '                                                   and EstBar.NroBar = 3) as TipBar3,'+
           '        EstPro.BrtEmb,'+
           '        EstPro.CubPro,'+
           '        EstPro.CxaPro,'+
           '        FinCom.PerCom,'+
           '        EstIte.VmeIte,'+
           '        EstIte.VpfIte,'+
           '        EstIte.Vb1Ite,'+
           '        EstIte.Vb2Ite,'+
           '        EstIte.Vb3Ite,'+
           '        EstIte.Vb4Ite,'+
           '        EstIte.Vb5Ite,'+
           '        EstIte.Ms1Ite,'+
           '        EstIte.Ms2Ite,'+
           '        EstIte.Ms3Ite,'+
           '        EstIte.Ms4Ite,'+
           '        EstIte.Ms5Ite,'+
           '        EstIte.Mk1Ite,'+
           '        EstIte.Mk2Ite,'+
           '        EstIte.Mk3Ite,'+
           '        EstIte.Mk4Ite,'+
           '        EstIte.Mk5Ite,'+
           '        EstIte.QtmIte,'+
           '        EstIte.QtdRma,'+
           '        EstIte.QmaIte,'+
           '        EstIte.Ds1Ite,'+
           '        EstIte.Ds2Ite,'+
           '        EstIte.Ds3Ite,'+
           '        EstIte.Ds4Ite,'+
           '        EstIte.Ds5Ite,'+
           '        EstIte.QtdIte,'+
           '        EstIte.QtaIte,'+
           '        EstIte.VcrIte,'+
           '        EstIte.DulCmp,'+
           '        EstIte.QtdCmp,'+
           '        EstPro.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || EstPro.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || EstPro.CodPro as CodIte'+
           ' From EstR06 LEFT JOIN EstIte ON (EstR06.CodEmp = EstIte.CodEmp '+
           '                             AND  EstR06.CodClp = EstIte.CodClp '+
           '                             AND  EstR06.CodGru = EstIte.CodGru '+
           '                             AND  EstR06.CodSub = EstIte.CodSub '+
           '                             AND  EstR06.CodPro = EstIte.CodPro)'+
           '             LEFT JOIN EstPro ON (EstIte.CodClp = EstPro.CodClp '+
           '                             AND  EstIte.CodGru = EstPro.CodGru '+
           '                             AND  EstIte.CodSub = EstPro.CodSub '+
           '                             AND  EstIte.CodPro = EstPro.CodPro)'+
           '             LEFT JOIN EstCat ON (EstPro.CodCat = EstCat.CodCat)'+
           '             LEFT JOIN EstMrc ON (EstPro.CodMrc = EstMrc.CodMrc)'+
           '             LEFT JOIN EstTip ON (EstPro.CodTip = EstTip.CodTip)'+
           '             LEFT JOIN EstSub ON (EstPro.CodGru = EstSub.CodGru '+
           '                             AND  EstPro.CodSub = EstSub.CodSub)'+
           '             LEFT JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)'+
           '             LEFT JOIN FinCom ON (EstPro.CodCom = FinCom.CodCom)'+
           '             LEFT JOIN EstIcm ON (EstPro.IcmSai = EstIcm.CodIcm '+
           '                             AND  EstPro.IcmTsd = EstIcm.TipIcm)'+
           '             LEFT JOIN EstIpi ON (EstPro.IpiSai = EstIpi.CodIpi '+
           '                             AND  EstPro.IpiTsd = EstIpi.TipIpi)'+
           '             LEFT JOIN GerEmp ON (EstIte.CodEmp = GerEmp.CodEmp)';

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

end;

procedure TfmEstR06.FormShow(Sender: TObject);
begin
  EdCodEmp.SetFocus;
end;

procedure TfmEstR06.grR06ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmEstR06.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de Informações Cadastrais dos Itens.htm', grR06.SaveToHTML);
end;

procedure TfmEstR06.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de Informações Cadastrais dos Itens.xls', grR06.SaveToXLS);
end;

procedure TfmEstR06.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de Informações Cadastrais dos Itens.xml', grR06.SaveToXML);
end;

procedure TfmEstR06.bPesquisaClick(Sender: TObject);
var
  UfeStr: string;
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

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From EstR06 Where EstR06.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  sFiltro := '';

  if Trim( EdCodEmp.Text ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Empresa.',EdCodEmp);

  if Trim( EdCodCat.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodCat = '+ QuotedStr(EdCodCat.Text);

  case rgStatus.Itemindex of
       0: sFiltro := sFiltro + ' and EstPro.FlbPro = '+ QuotedStr(' ') ;
       1: sFiltro := sFiltro + ' and EstPro.FlbPro = '+ QuotedStr('*') ;
  end;

  case rgSubst.Itemindex of
       0: sFiltro := sFiltro + ' and EstPro.CodSts is not null';
       1: sFiltro := sFiltro + ' and EstPro.CodSts is null';
  end;

  case rgImagem.Itemindex of
       0: sFiltro := sFiltro + ' and EstPro.ImgPro is not null';
       1: sFiltro := sFiltro + ' and EstPro.ImgPro is null';
  end;

  if Trim( EdCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and EstIte.CodEmp = '+ QuotedStr(EdCodEmp.Text);
  if Trim( EdCodClp.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodClp = '+ QuotedStr(EdCodClp.Text);
  if Trim( EdCodTip.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodTip = '+ QuotedStr(EdCodTip.Text);
  if Trim( EdCodMrc.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodMrc = '+ QuotedStr(EdCodMrc.Text);
  if Trim( EdCodGru.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodGru = '+ QuotedStr(EdCodGru.Text);
  if Trim( EdCodSub.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodSub = '+ QuotedStr(EdCodSub.Text);
  if Trim( EdCodPro.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodPro = '+ QuotedStr(EdCodPro.Text);

  if GFlgAce = 'Sim' then begin

     if GEmpLog > 0 then
        sFiltro := sFiltro + ' and EstIte.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
     else
        sFiltro := sFiltro + ' and GerEmp.CodFil > 0';

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into EstR06(SeqArq,CodEmp,CodClp,CodGru,CodSub,CodPro,CodStr,TipStr)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        EstIte.CodEmp,'+
               '        EstPro.CodClp,'+
               '        EstPro.CodGru,'+
               '        EstPro.CodSub,'+
               '        EstPro.CodPro,'+
               '        EstPro.CodSts,'+
               '        EstPro.TipSts '+
               ' From EstIte,EstPro'+
               ' Where EstIte.CodClp = EstPro.CodClp'+
               '   and EstIte.CodGru = EstPro.CodGru'+
               '   and EstIte.CodSub = EstPro.CodSub'+
               '   and EstIte.CodPro = EstPro.CodPro'+ sFiltro;
       ExecSQL;

  end;

  try

     pnSequenc.Visible := True;

     ProgressBar.Position := 0;

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstR06 Where EstR06.SeqArq = '+ QuotedStr(SeqArq);
          Open;

          ProgressBar.Max := FieldbyName('QtdReg').AsInteger;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select * From EstR06 Where EstR06.SeqArq = '+ QuotedStr(SeqArq);
          Open;

     end;

     while not quSQL.EOF do begin

           if Trim(quSQL.FieldbyName('CodStr').AsString) <> '' then begin

              UfeStr := '';

              if Trim(quSQL.FieldbyName('CodStr').AsString) = 'LAMPADA' then
                 UfeStr := '';

              with quSQL1,SQL do begin

                   Close;
                   Text := ' Select EstUfe.SigUfe,'+
                           '        EstUfe.MrgSub '+
                           ' From EstUfe'+
                           ' Where EstUfe.CodStr = '+ QuotedStr(quSQL.FieldbyName('CodStr').AsString) +
                           '   and EstUfe.TipStr = '+ QuotedStr('Saida') ;
                   Open;
                   First;

              end;

              while not quSQL1.EOF do begin

                    if quSQL1.FieldbyName('MrgSub').AsFloat > 0 then begin

                       if Trim(UfeStr) = '' then
                          UfeStr := quSQL1.FieldbyName('SigUfe').AsString+' '+preString(FormatFloat('##0.00',quSQL1.FieldbyName('MrgSub').AsFloat),2)+'%'
                       else
                          UfeStr := UfeStr + ' ' +quSQL1.FieldbyName('SigUfe').AsString+' '+preString(FormatFloat('##0.00',quSQL1.FieldbyName('MrgSub').AsFloat),2)+'%';

                    end;
                          
                    quSQL1.Next;

              end;

              if Trim(UfeStr) <> '' then begin

                 with quSQL1,SQL do begin

                      Close;
                      Text := ' Update EstR06 Set ObsStr = '+ QuotedStr(Trim(UfeStr)) +
                              ' Where EstR06.SeqArq = '+ QuotedStr(SeqArq) +
                              '   and EstR06.CodEmp = '+ QuotedStr(IntToStr(quSQL.FieldbyName('CodEmp').AsInteger)) +
                              '   and EstR06.CodClp = '+ QuotedStr(quSQL.FieldbyName('CodClp').AsString) +
                              '   and EstR06.CodGru = '+ QuotedStr(quSQL.FieldbyName('CodGru').AsString) +
                              '   and EstR06.CodSub = '+ QuotedStr(quSQL.FieldbyName('CodSub').AsString) +
                              '   and EstR06.CodPro = '+ QuotedStr(quSQL.FieldbyName('CodPro').AsString) ;
                      ExecSQL;

                 end;
              end;
           end;

           ProgressBar.StepBy(1);

           quSQL.Next;

           Application.ProcessMessages;

     end;

  finally

     pnSequenc.Visible := False;

  end;

  sFiltro := ' Where EstR06.SeqArq = '+ QuotedStr(SeqArq);

  with EstR06,SQL do begin

       Close;
       Text := sBase + sFiltro + ' Order by EstPro.CodCat,EstR06.CodGru,EstR06.CodSub,EstPro.DscPro';
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From EstR06 Where EstR06.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  grR06.FullExpand;

  grR06.SetFocus;

end;

procedure TfmEstR06.bPsqClpClick(Sender: TObject);
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

procedure TfmEstR06.bPsqGruClick(Sender: TObject);
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

procedure TfmEstR06.bPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );
     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;
     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;

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

procedure TfmEstR06.bPsqProClick(Sender: TObject);
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

procedure TfmEstR06.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp Where CodClp = '+ QuotedStr(EdCodClp.Text);
          Open;

          EdNomClp.Text := FieldByName('NomClp').AsString;

     end;

     end
  else
     EdNomClp.Text := '';
end;

procedure TfmEstR06.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGru.Text ) <> '' then begin

     EdCodGru.Text := FNumZeros(EdCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru Where CodGru = '+ QuotedStr(EdCodGru.Text);
          Open;

          EdNomGru.Text := FieldByName('NomGru').AsString;

     end;

     end
  else
     EdNomGru.Text := '';
end;

procedure TfmEstR06.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodSub.Text ) <> '' then begin

     EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub '+
                  ' Where CodGru = '+ QuotedStr(EdCodGru.Text)+
                  '   and CodSub = '+ QuotedStr(EdCodSub.Text);
          Open;

          EdNomSub.Text := FieldByName('NomSub').AsString;

     end;

     end
  else
     EdNomSub.Text := '';
end;

procedure TfmEstR06.EdCodProExit(Sender: TObject);
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

procedure TfmEstR06.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : '+ EdCodCat.Text + ' - ' + EdNomCat.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo : '+ EdCodTip.Text + ' - ' + EdNomTip.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Marca : '+ EdCodMrc.Text + ' - ' + EdNomMrc.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação : '+ EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo : '+ EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : '+ EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmEstR06.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmEstR06.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmEstR06.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCat.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCat From EstCat Where CodCat = '+ QuotedStr(EdCodCat.Text);
          Open;

          EdNomCat.Text := FieldByName('NomCat').AsString;

     end;

     end
  else
     EdNomCat.Text := '';
end;

procedure TfmEstR06.bPsqCatClick(Sender: TObject);
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

procedure TfmEstR06.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodTip.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomTip From EstTip Where CodTip = '+ QuotedStr(EdCodTip.Text);
          Open;

          EdNomTip.Text := FieldByName('NomTip').AsString;

     end;

     end
  else
     EdNomTip.Text := '';
end;

procedure TfmEstR06.bPsqTipClick(Sender: TObject);
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

procedure TfmEstR06.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodMrc.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomMrc From EstMrc Where CodMrc = '+ QuotedStr(EdCodMrc.Text);
          Open;

          EdNomMrc.Text := FieldByName('NomMrc').AsString;

     end;

     end
  else
     EdNomMrc.Text := '';
end;

procedure TfmEstR06.PsqMrcClick(Sender: TObject);
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

procedure TfmEstR06.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmEstR06.grR06);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

procedure TfmEstR06.BbPsqEmpClick(Sender: TObject);
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

  if Trim( EdCodEmp.Text ) <> '' then EdCodCat.SetFocus;

end;

procedure TfmEstR06.EdCodEmpExit(Sender: TObject);
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

procedure TfmEstR06.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From EstR06 Where EstR06.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmEstR06.FormDestroy(Sender: TObject);
begin
  inherited;  
  fmEstR06 := Nil;
end;

end.
