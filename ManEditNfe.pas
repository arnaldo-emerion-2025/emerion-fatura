unit ManEditNfe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Db, DBClient, Buttons,
  Mask, DBCtrls, DBTables, clipbrd, TypInfo;

type
  TFrmEditNfe = class(TForm)
    GroupBox1: TGroupBox;
    EdNomDest: TDBEdit;
    Label8: TLabel;
    EdCgcDest: TDBEdit;
    Label9: TLabel;
    EdDteEm: TDBEdit;
    Label10: TLabel;
    EdEndDest: TDBEdit;
    Label11: TLabel;
    EdBaisDest: TDBEdit;
    Label12: TLabel;
    EdCepDest: TDBEdit;
    Label13: TLabel;
    EdDteSaida: TDBEdit;
    Label14: TLabel;
    EdMunDest: TDBEdit;
    Label15: TLabel;
    EdFonDest: TDBEdit;
    Label16: TLabel;
    EdUfDest: TDBEdit;
    Label17: TLabel;
    EdInscDest: TDBEdit;
    Label18: TLabel;
    EdHrSaida: TDBEdit;
    Label19: TLabel;
    GroupBox2: TGroupBox;
    EdBcIcm: TDBEdit;
    Label20: TLabel;
    EdVlrIcm: TDBEdit;
    Label21: TLabel;
    EdBasIcmSub: TDBEdit;
    Label22: TLabel;
    EdVlrIcmSub: TDBEdit;
    Label23: TLabel;
    EdVlrTotNf: TDBEdit;
    Label24: TLabel;
    EdVlrPis: TDBEdit;
    Label25: TLabel;
    EdVlrFrete: TDBEdit;
    Label26: TLabel;
    EdVlrSeg: TDBEdit;
    Label27: TLabel;
    EdVlrDes: TDBEdit;
    Label28: TLabel;
    EdVlrDespesas: TDBEdit;
    Label29: TLabel;
    EdVlrCofins: TDBEdit;
    Label30: TLabel;
    EdVlrtotPro: TDBEdit;
    Label31: TLabel;
    GroupBox3: TGroupBox;
    EdNumNot: TDBEdit;
    Label1: TLabel;
    EdChaveAce: TDBEdit;
    Label2: TLabel;
    EdProto: TDBEdit;
    Label3: TLabel;
    EdNatOpe: TDBEdit;
    Label4: TLabel;
    EdIncEstadual: TDBEdit;
    Label5: TLabel;
    InscEstadualST: TDBEdit;
    Label6: TLabel;
    EdCnpj: TDBEdit;
    Label7: TLabel;
    GroupBox4: TGroupBox;
    EdNomTrans: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    EdAntt: TDBEdit;
    Label34: TLabel;
    EdPlacaVeiculo: TDBEdit;
    Label35: TLabel;
    EdUfVeiculo: TDBEdit;
    Label36: TLabel;
    EdCgcTrans: TDBEdit;
    Label37: TLabel;
    EdEndTrans: TDBEdit;
    Label38: TLabel;
    EdMunTrans: TDBEdit;
    Label39: TLabel;
    EdUfTrans: TDBEdit;
    Label40: TLabel;
    EdInscTrans: TDBEdit;
    Label41: TLabel;
    EdQtd: TDBEdit;
    Label42: TLabel;
    EdEspecie: TDBEdit;
    Label43: TLabel;
    Edmarca: TDBEdit;
    Label44: TLabel;
    EdNumeracao: TDBEdit;
    Label45: TLabel;
    EdPesBruto: TDBEdit;
    Label46: TLabel;
    EdPesLIq: TDBEdit;
    Label47: TLabel;
    ds: TGroupBox;
    CDSCAB: TClientDataSet;
    CDSPROD: TClientDataSet;
    dsProd: TDataSource;
    GridProd: TDBGrid;
    dsCabecalho: TDataSource;
    SQLCAB: TQuery;
    SQLITE: TQuery;
    SQLBUS: TQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox6: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    Label66: TLabel;
    Label67: TLabel;
    Label78: TLabel;
    Label80: TLabel;
    EdIcmVbCstRet: TDBEdit;
    EdIcmSTret: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit17: TDBEdit;
    GroupBox13: TGroupBox;
    Label68: TLabel;
    Label69: TLabel;
    Label79: TLabel;
    Label81: TLabel;
    EdIpiCenq: TDBEdit;
    EdIpiCst: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox14: TGroupBox;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    EdPisvBc: TDBEdit;
    EdPisPpis: TDBEdit;
    EdPisVpis: TDBEdit;
    GroupBox15: TGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    EdCofVbc: TDBEdit;
    EdCofPpis: TDBEdit;
    EdCofVpis: TDBEdit;
    GroupBox7: TGroupBox;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit16: TDBEdit;
    CBOrigem: TDBComboBox;
    TabSheet2: TTabSheet;
    SQLDI: TQuery;
    SQLDIID_DI: TIntegerField;
    SQLDIID_CMPNF2: TIntegerField;
    SQLDINUMDI: TStringField;
    SQLDIDATADI: TDateTimeField;
    SQLDILOCALDESEMB: TStringField;
    SQLDIUFDESEMB: TStringField;
    SQLDIDATADESEMB: TDateTimeField;
    SQLDICODEXPORT: TStringField;
    SQLDIDET: TQuery;
    DSDI: TDataSource;
    DSDIDET: TDataSource;
    SQLDIDETID_DIDET: TIntegerField;
    SQLDIDETID_DI: TIntegerField;
    SQLDIDETNSEQADIC: TIntegerField;
    SQLDIDETCODFAB: TStringField;
    SQLDIDETVDESCDI: TFloatField;
    SQLDIDETQTDE: TFloatField;
    SQLDIDETNADICAO: TIntegerField;
    CDSDI: TClientDataSet;
    CDSDIID_DI: TIntegerField;
    CDSDIID_CMPNF2: TIntegerField;
    CDSDINUMDI: TStringField;
    CDSDIDATADI: TDateTimeField;
    CDSDILOCALDESEMB: TStringField;
    CDSDIUFDESEMB: TStringField;
    CDSDIDATADESEMB: TDateTimeField;
    CDSDICODEXPORT: TStringField;
    CDSDIDET: TClientDataSet;
    CDSDIDETID_DIDET: TIntegerField;
    CDSDIDETID_DI: TIntegerField;
    CDSDIDETNSEQADIC: TIntegerField;
    CDSDIDETCODFAB: TStringField;
    CDSDIDETVDESCDI: TFloatField;
    CDSDIDETQTDE: TFloatField;
    CDSDIDETNADICAO: TIntegerField;
    CDSCABTAB: TStringField;
    CDSCABNUMNOT: TIntegerField;
    CDSCABCHAVEACE: TStringField;
    CDSCABNATOPE: TStringField;
    CDSCABCODEMP: TIntegerField;
    CDSCABNUMRES: TIntegerField;
    CDSCABDTERES: TDateTimeField;
    CDSCABSEQLIB: TIntegerField;
    CDSCABINSEMP: TStringField;
    CDSCABINSSTEMP: TStringField;
    CDSCABCGCEMP: TStringField;
    CDSCABNOMCLI: TStringField;
    CDSCABCGCCLI: TStringField;
    CDSCABDTEEMISSAO: TDateTimeField;
    CDSCABENFCLI: TStringField;
    CDSCABBAFCLI: TStringField;
    CDSCABCEFCLI: TStringField;
    CDSCABDTEENTSAI: TDateTimeField;
    CDSCABCIFCLI: TStringField;
    CDSCABFONCLI: TStringField;
    CDSCABUFFCLI: TStringField;
    CDSCABINSCLI: TStringField;
    CDSCABHRESAIDA: TStringField;
    CDSCABNOMTRA: TStringField;
    CDSCABFRTPORCONTA: TStringField;
    CDSCABPLACAVEICULO: TStringField;
    CDSCABUFVEICULO: TStringField;
    CDSCABCGCTRANS: TStringField;
    CDSCABENDTRAS: TStringField;
    CDSCABCIDTRANS: TStringField;
    CDSCABUFTRANS: TStringField;
    CDSCABINSTRAS: TStringField;
    CDSCABQTDVOLUMES: TIntegerField;
    CDSCABESPECIE: TStringField;
    CDSCABMARCATRANS: TStringField;
    CDSCABNUMERACAO: TStringField;
    CDSCABPESBRT: TFloatField;
    CDSCABPESLIQ: TFloatField;
    CDSCABBCICM: TFloatField;
    CDSCABVLRICM: TFloatField;
    CDSCABBCICMST: TFloatField;
    CDSCABVLRICMST: TFloatField;
    CDSCABVLRPIS: TFloatField;
    CDSCABVLRTOTPRO: TFloatField;
    CDSCABVLRFRETE: TFloatField;
    CDSCABVLRSEGURO: TFloatField;
    CDSCABVLRDES: TFloatField;
    CDSCABVLROUTDESP: TFloatField;
    CDSCABVLRCOFINS: TFloatField;
    CDSCABVLRTOTNOT: TFloatField;
    CDSCABOB1FAT: TMemoField;
    CDSCABOB2FAT: TMemoField;
    CDSCABOB3FAT: TMemoField;
    CDSCABOB4FAT: TMemoField;
    CDSCABOB5FAT: TMemoField;
    CDSCABOB6FAT: TMemoField;
    CDSCABOB7FAT: TMemoField;
    CDSCABOB8FAT: TMemoField;
    CDSCABENDTRANS: TStringField;
    CDSCABNOMPAI: TStringField;
    CDSCABID_FINPAI: TIntegerField;
    Panel1: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    EdCodPais: TDBMemo;
    EdNomPais: TDBMemo;
    Label50: TLabel;
    EdObsFat: TDBMemo;
    DBEdit19: TDBMemo;
    DBEdit20: TDBMemo;
    DBEdit21: TDBMemo;
    DBEdit22: TDBMemo;
    DBEdit23: TDBMemo;
    DBEdit24: TDBMemo;
    DBEdit25: TDBMemo;
    SQLITECODCLP: TStringField;
    SQLITECODGRU: TStringField;
    SQLITECODSUB: TStringField;
    SQLITECODPRO: TStringField;
    SQLITECODEMP: TIntegerField;
    SQLITEPRODUTO: TStringField;
    SQLITEDESCRICAOPRO: TStringField;
    SQLITEDESC2: TStringField;
    SQLITENUMRES: TIntegerField;
    SQLITEDTERES: TDateTimeField;
    SQLITESEQLIB: TIntegerField;
    SQLITESEQPE2: TIntegerField;
    SQLITENCM: TStringField;
    SQLITEORIG: TStringField;
    SQLITECFOP: TStringField;
    SQLITEUNIDADE: TStringField;
    SQLITEQUANTIDADE: TFloatField;
    SQLITEVALUNITARIO: TFloatField;
    SQLITEVALDESC: TFloatField;
    SQLITEVALLIQ: TFloatField;
    SQLITEBASICMS: TFloatField;
    SQLITEALIQICMS: TFloatField;
    SQLITEVALICMS: TFloatField;
    SQLITEALIQIPI: TFloatField;
    SQLITEVALIPI: TFloatField;
    SQLITEVALSUB: TFloatField;
    SQLITEBASESUB: TFloatField;
    SQLITEMVA: TFloatField;
    SQLITEPERPIS: TFloatField;
    SQLITEPERCOF: TFloatField;
    SQLITEBASPIS: TFloatField;
    SQLITEBASCOF: TFloatField;
    SQLITETOTPIS: TFloatField;
    SQLITETOTCOF: TFloatField;
    SQLITEBASIPI: TFloatField;
    SQLITECSTPIS: TStringField;
    SQLITECSTCOF: TStringField;
    SQLITECSTIPI: TStringField;
    CDSPRODCODCLP: TStringField;
    CDSPRODCODGRU: TStringField;
    CDSPRODCODSUB: TStringField;
    CDSPRODCODPRO: TStringField;
    CDSPRODCODEMP: TIntegerField;
    CDSPRODPRODUTO: TStringField;
    CDSPRODDESCRICAOPRO: TStringField;
    CDSPRODDESC2: TStringField;
    CDSPRODNUMRES: TIntegerField;
    CDSPRODDTERES: TDateTimeField;
    CDSPRODSEQLIB: TIntegerField;
    CDSPRODSEQPE2: TIntegerField;
    CDSPRODORIG: TStringField;
    CDSPRODCFOP: TStringField;
    CDSPRODUNIDADE: TStringField;
    CDSPRODQUANTIDADE: TFloatField;
    CDSPRODVALUNITARIO: TFloatField;
    CDSPRODVALDESC: TFloatField;
    CDSPRODVALLIQ: TFloatField;
    CDSPRODBASICMS: TFloatField;
    CDSPRODALIQICMS: TFloatField;
    CDSPRODVALICMS: TFloatField;
    CDSPRODALIQIPI: TFloatField;
    CDSPRODVALIPI: TFloatField;
    CDSPRODVALSUB: TFloatField;
    CDSPRODBASESUB: TFloatField;
    CDSPRODMVA: TFloatField;
    CDSPRODPERPIS: TFloatField;
    CDSPRODPERCOF: TFloatField;
    CDSPRODBASPIS: TFloatField;
    CDSPRODBASCOF: TFloatField;
    CDSPRODTOTPIS: TFloatField;
    CDSPRODTOTCOF: TFloatField;
    CDSPRODBASIPI: TFloatField;
    CDSPRODCSTPIS: TStringField;
    CDSPRODCSTCOF: TStringField;
    CDSPRODCSTIPI: TStringField;
    Label59: TLabel;
    lblDanfe: TEdit;
    CbCstPis: TDBLookupComboBox;
    CbCstIpi: TDBLookupComboBox;
    CbCstCof: TDBLookupComboBox;
    GroupBox8: TGroupBox;
    Label62: TLabel;
    DBEdit12: TDBEdit;
    Label61: TLabel;
    DBEdit11: TDBEdit;
    Label63: TLabel;
    DBEdit13: TDBEdit;
    CBSitTrib: TDBLookupComboBox;
    Label54: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    DBEdit9: TDBEdit;
    DBEdit14: TDBEdit;
    CDSCABVLRIPI: TFloatField;
    CDSCABVLRIMPI: TFloatField;
    CDSPRODVLRIMP: TFloatField;
    Label82: TLabel;
    DBEdit15: TDBEdit;
    SQLITEVLRIMP: TFloatField;
    bSalvar: TSpeedButton;
    DBEdit18: TDBEdit;
    Label83: TLabel;
    bCalcular: TSpeedButton;
    SQLITETOTFRT: TFloatField;
    SQLITETOTSEG: TFloatField;
    SQLITETOTOUTDESP: TFloatField;
    CDSPRODTOTFRT: TFloatField;
    CDSPRODTOTSEG: TFloatField;
    CDSPRODTOTOUTDESP: TFloatField;
    SQLITEALIQSUB: TFloatField;
    CDSPRODALIQSUB: TFloatField;
    SQLITECSTICMS: TStringField;
    CDSPRODCSTICMS: TStringField;
    Label87: TLabel;
    DBEdit29: TDBEdit;
    Label88: TLabel;
    DBEdit30: TDBEdit;
    Label89: TLabel;
    DBEdit31: TDBEdit;
    Label90: TLabel;
    DBEdit32: TDBEdit;
    Bevel1: TBevel;
    CDSPRODTOTIBPT: TFloatField;
    CDSCABTOTIBPT: TFloatField;
    SQLITETOTIBPT: TFloatField;
    CDSCABBCIPI: TFloatField;
    CDSCABBCPIS: TFloatField;
    CDSCABBCCOFINS: TFloatField;
    DBEdit35: TDBEdit;
    Label93: TLabel;
    CDSPRODNCM: TStringField;
    Button1: TButton;
    DBEdit37: TDBEdit;
    Label95: TLabel;
    CDSCABLOGCLI: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    TIPFRT: TQuery;
    dsTIPFRT: TDataSource;
    CDSCABINDIC_CF: TIntegerField;
    CDSCABINDIC_PRESENCA: TIntegerField;
    DBLookupComboBox2: TDBLookupComboBox;
    Label94: TLabel;
    INDIC_CON: TQuery;
    INDIC_CONID: TIntegerField;
    INDIC_CONTIPO: TStringField;
    dsCF: TDataSource;
    INDIC_PRES: TQuery;
    INDIC_PRESID: TIntegerField;
    INDIC_PRESSITUACAO: TStringField;
    dsINDIC_PRES: TDataSource;
    Label96: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    CDSPRODTOTDESONERADO: TFloatField;
    CDSCABTOTDESONERADO: TFloatField;
    DBEdit36: TDBEdit;
    Label97: TLabel;
    Label98: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    dsDesoneracao: TDataSource;
    desoneracao: TQuery;
    Label99: TLabel;
    DBEdit38: TDBEdit;
    SQLITETOTDESONERADO: TFloatField;
    CDSPRODCODDESONERACAO: TStringField;
    SQLITECODDESONERACAO: TIntegerField;
    edCEST: TDBEdit;
    Label100: TLabel;
    CDSPRODCEST: TStringField;
    SQLITECEST: TStringField;
    GroupBox5: TGroupBox;
    Label84: TLabel;
    DBEdit26: TDBEdit;
    Label85: TLabel;
    DBEdit27: TDBEdit;
    DBEdit33: TDBEdit;
    Label91: TLabel;
    DBEdit34: TDBEdit;
    Label92: TLabel;
    Label86: TLabel;
    DBEdit28: TDBEdit;
    GroupBox9: TGroupBox;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    CDSCABTOT_FCPUFDEST: TFloatField;
    CDSCABTOT_ICMSUFDEST: TFloatField;
    CDSCABTOT_ICMSUFREMET: TFloatField;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    Bevel2: TBevel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    Bevel3: TBevel;
    CDSPRODBAS_UFDEST: TFloatField;
    CDSPRODALIQ_FCPUFDEST: TFloatField;
    CDSPRODALIQ_ICMSUFDEST: TFloatField;
    CDSPRODALIQ_ICMSINTER: TFloatField;
    CDSPRODALIQ_ICMSINTERPART: TFloatField;
    CDSPRODTOT_FCPUFDEST: TFloatField;
    CDSPRODTOT_ICMSUFDEST: TFloatField;
    CDSPRODTOT_ICMSUFREMET: TFloatField;
    SQLITEBAS_UFDEST: TFloatField;
    SQLITEALIQ_FCPUFDEST: TFloatField;
    SQLITEALIQ_ICMSUFDEST: TFloatField;
    SQLITEALIQ_ICMSINTER: TFloatField;
    SQLITEALIQ_ICMSINTERPART: TFloatField;
    SQLITETOT_FCPUFDEST: TFloatField;
    SQLITETOT_ICMSUFDEST: TFloatField;
    SQLITETOT_ICMSUFREMET: TFloatField;
    btnLote: TButton;
    CDSPRODNROPE2: TIntegerField;
    SQLITENROPE2: TIntegerField;
    btnLoteMed: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure PageControl1DrawTab(Control: TCustomTabControl;
      TabIndex: Integer; const Rect: TRect; Active: Boolean);
    procedure dsProdDataChange(Sender: TObject; Field: TField);
    procedure bSalvarClick(Sender: TObject);
    procedure bCalcularClick(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure DBEdit35KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure CDSPRODBeforePost(DataSet: TDataSet);
    procedure btnLoteClick(Sender: TObject);
    procedure btnLoteMedClick(Sender: TObject);

  private
    { Private declarations }
    origtb: string;
    ALT_VISU: string;
    function BuscaNF_FP(CODEMP, NUMRES, DTERES, SEQLIB: string): integer;
    function BuscaItem_FP(CODEMP, NUMRES, DTERES, SEQLIB: string): Integer;
    procedure BuscaNF_FG(CODEMP, NUMGER, DTEGER: string);
    function BuscaItem_FG(CODEMP, DTEGER, NUMGER, SEQGE2: string): integer;
    procedure BuscaNf_LJ(ID_LOJFAT: string);
    procedure BuscaItem_LJ(ID_LOJFAT: string);
    procedure UpdateFP;
    procedure UpdateFG;
    procedure UpdateLJ;
    procedure BuscaNF;
    function formataReal(valor: Double; Decimal: integer = 2): string;
    procedure CarregaDI(ID: integer);
    procedure CarregaCombos(CODEMP: string);
    procedure AtualizaCombos();
    procedure calculaCabecalho();
    procedure calculaItens();
    procedure ratear();
    procedure ValidacaoProdutos;

  public
    { Public declarations }
    totpro, totnot, toticm, totipi, totcof, totpis, totII,
      toticmsub, bcIcm, bcIcmSt, basipi, baspis, bascof, BasFCP, BasUFDestino, BasEmitente: boolean;
    //variaveis para verificar se calcula ou nao os dados do cabecalho
    valicm, valipi, valpis, valcof, valsub, bcIcmStITE: boolean; //variaveis para verificar se calcula ou nao os dados dos itens
    valFrt, valSeg, valOut, valDesc: boolean; //Variávei para Ratear

    function ShowModal(CODEMP, ORIGTB, NRONFS: string; DtePed: TDateTime; ALT_VISU: string; NUMPED: string = ''; SEQLIB: string = ''): integer;
    procedure setReadOnly();

  end;

var
  FrmEditNfe: TFrmEditNfe;

const
  _BR = #13;

implementation

uses ManGDB, Bbfuncao, ManParEditNfe, ManListaNFeRef, manLote, ManLoteMed;

{$R *.DFM}

procedure TFrmEditNfe.FormCreate(Sender: TObject);
var
  verificador: string;
  i: integer;
begin
  DecimalSeparator := ',';
  ThousandSeparator := '.';
  LongDateFormat := 'dd/mm/yyyy';
  ShortDateFormat := 'dd/mm/yy';

  CDSCAB.CreateDataSet;
  CDSPROD.CreateDataSet;

  //ST ICMS
  fmManGdb.CarregaCboICMS(Trim(FmManGdb.BuscaSimples('GEREMP', 'TIPEMP', ' CODEMP = ' + IntToStr(GEmp_Id))) = 'Simples Nacional');

  //st PIS
  fmManGdb.CarregaCboPIS;

  //st COF
  fmManGdb.CarregaCboCOF;

  //st IPI
  fmManGdb.CarregaCboIPI('Saida');

  {ComboBox_AutoWidth(CBSitTrib);
  ComboBox_AutoWidth(CbCstIpi);
  ComboBox_AutoWidth(CbCstPis);
  ComboBox_AutoWidth(EdPisVpis);
  ComboBox_AutoWidth(CbCstCof); }

  //BuscaNF;
end;

procedure TFrmEditNfe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_RETURN then
    Perform(Wm_NextDlgCtl, 0, 0);
  if (not GridProd.Focused) then
  begin
    if Key = Vk_UP then
      Perform(Wm_NextDlgCtl, 1, 0);
    if Key = Vk_DOWN then
      Perform(Wm_NextDlgCtl, 0, 0);
  end;

  if (key = 116) and (bCalcular.Enabled) then // f5 - Calcular
    bCalcular.OnClick(Sender);

  if (Key = 123) and (bSalvar.Enabled) then // F12 - Salvar
    bSalvar.OnClick(Sender);
end;

function TFrmEditNfe.BuscaNF_FP(CODEMP, NUMRES, DTERES, SEQLIB: string): integer;
begin
  SQLCAB.active := False;
  SQLCAB.sql.text :=
    ' SELECT ' + QuotedStr('FP') + ' tab,  ' + _BR
    + '  FP.nronfs AS NUMNOT, ' + _BR
    + '  FP.seqnfe AS CHAVEACE, ' + _BR
    + '  FP.CODEMP, ' + _BR
    + '  0.0 AS TOTIMP, ' + _BR
    + '  FP.TOTIPI AS TOTIPI, ' + _BR
    + '  FP.NUMRES AS NUMRES, ' + _BR
    + '  FP.DTERES AS DTERES, ' + _BR
    + '  FP.SEQLIB AS SEQLIB, ' + _BR
    + '  FP.modpfa AS NATOPE, ' + _BR
    + '  GE.insemp AS INSEMP, ' + _BR
    + '  FP.inssub AS INSSTEMP, ' + _BR
    + '  GE.cgcemp AS CGCEMP, ' + _BR
    + '  FP.noment AS NOMCLI, ' + _BR
    + '  FP.cgccli AS CGCCLI, ' + _BR
    + '  FP.dteres AS DTEEMISSAO, ' + _BR
    + '  FP.TEFCLI AS LOGCLI, ' + _BR
    + '  FP.ENFCLI AS ENFCLI, ' + _BR
    + '  FP.BAFCLI AS BAFCLI, ' + _BR
    + '  FP.CEFCLI AS CEFCLI, ' + _BR
    + '  FP.dtesda AS DTEENTSAI, ' + _BR
    + '  FP.CIFCLI AS CIFCLI, ' + _BR
    + '  CLI.pt1cli||CLI.fo1cli AS FONCLI, ' + _BR
    + '  FP.UFFCLI AS UFFCLI, ' + _BR
    + '  FP.inscli AS INSCLI, ' + _BR
    + '  FP.HRESDA AS HRESAIDA, ' + _BR
    + '  FP.nomtra AS NOMTRA, ' + _BR
    + '  FP.ID_FRETE AS FRTPORCONTA, ' + _BR
    + '  FP.plctra AS PLACAVEICULO, ' + _BR
    + '  FP.ufeplc AS UFVEICULO, ' + _BR
    + '  FP.cgctra AS CGCTRANS, ' + _BR
    + '  FP.endtra AS ENDTRAS, ' + _BR
    + '  FP.cidtra AS CIDTRANS, ' + _BR
    + '  FP.ufetra AS UFTRANS, ' + _BR
    + '  FP.instra AS INSTRAS, ' + _BR
    + '  FP.altvol AS QTDVOLUMES, ' + _BR
    + '  FP.espfat AS ESPECIE, ' + _BR
    + '  FP.marfat AS MARCATRANS, ' + _BR
    + '  FP.nrofat AS NUMERACAO, ' + _BR
    + '  FP.infbrt AS PESBRT, ' + _BR
    + '  FP.infliq AS PESLIQ, ' + _BR
    + '  FP.basicm AS BCICM, ' + _BR
    + '  FP.toticm AS VLRICM, ' + _BR
    + '  FP.bassub AS BCICMST, ' + _BR
    + '  FP.totsub AS VLRICMST, ' + _BR
    + '  FP.totpis AS VLRPIS, ' + _BR
    + '  FP.totger AS VLRTOTNOT, ' + _BR
    + '  FP.totfrt AS VLRFRETE, ' + _BR
    + '  FP.totseg AS VLRSEGURO, ' + _BR
    + '  FP.totdsr AS VLRDES, ' + _BR
    + '  FP.TOTOUTDESP AS VLROUTDESP, ' + _BR
    + '  FP.totcof AS VLRCOFINS, ' + _BR
    + '  FP.totfat AS VLRTOTPRO, ' + _BR
    + '  PA.nompai AS NOMPAI, ' + _BR
    + '  CLI.ID_FinPai AS ID_FINPAI, ' + _BR
    + '  FP.ob1fat AS OB1FAT, ' + _BR
    + '  FP.ob2fat AS OB2FAT, ' + _BR
    + '  FP.ob3fat AS OB3FAT, ' + _BR
    + '  FP.ob4fat AS OB4FAT, ' + _BR
    + '  FP.ob5fat AS OB5FAT, ' + _BR
    + '  FP.ob6fat AS OB6FAT, ' + _BR
    + '  FP.ob7fat AS OB7FAT, ' + _BR
    + '  FP.ob8fat AS OB8FAT, ' + _BR
    + '  FP.endtra AS ENDTRANS, ' + _BR
    + '  FP.TOTIBPT, ' + _BR
    + '  EP.tippfa, ' + _BR
    + '  FP.TOTDESONERADO, ' + _BR
    + '  FP.INDIC_CF, ' + _BR
    + '  FP.INDIC_PRESENCA, ' + _BR

  + '  FP.TOT_FCPUFDEST, ' + _BR
    + '  FP.TOT_ICMSUFDEST, ' + _BR
    + '  FP.TOT_ICMSUFREMET ' + _BR

  + ' FROM FatPed FP ' + _BR
    + '  INNER JOIN geremp GE ON FP.CodEmp = GE.codemp ' + _BR
    + '  INNER JOIN fincli CLI ON FP.codcli = CLI.codcli ' + _BR
    + '  INNER JOIN FINPAI PA ON CLI.id_FinPai = PA.ID_FinPai ' + _BR
    + ' INNER JOIN ESTPFA EP ON EP.CODPFA = FP.CODPFA ' + _BR
    + ' WHERE FP.CODEMP = ' + CODEMP + _BR
    + '  and FP.NUMRES = ' + NUMRES + _BR
    + '  and FP.DTERES = ' + DTERES + _BR
    + '  and FP.SEQLIB = ' + SEQLIB;

  SQLCAB.active := True;

  SQLCAB.First;
  SQLCAB.Last;
  SQLCAB.First;

  if SQLCAB.RecordCount = 1 then
  begin
    CDSCAB.EmptyDataSet;
    CDSCAB.Insert;

    CDSCABTAB.AsString := SQLCAB.FieldByName('TAB').AsString;
    CDSCABSEQLIB.AsString := SQLCAB.FieldByName('SEQLIB').AsString;
    CDSCABNUMNOT.AsInteger := SQLCAB.FieldByName('NUMNOT').AsInteger;
    CDSCABNATOPE.AsString := SQLCAB.FieldByName('NATOPE').AsString;

    CDSCABCODEMP.AsInteger := SQLCAB.FieldByName('CODEMP').AsInteger;

    CDSCABVLRIPI.AsFloat := SQLCAB.FieldByName('TOTIPI').AsFloat;

    CDSCABNUMRES.AsString := SQLCAB.FieldByName('NUMRES').AsString;
    CDSCABDTERES.AsDateTime := SQLCAB.FieldByName('DTERES').AsDateTime;

    CDSCABINSEMP.AsString := SQLCAB.FieldByName('INSEMP').AsString;
    CDSCABINSSTEMP.AsString := SQLCAB.FieldByName('INSSTEMP').AsString;
    CDSCABCGCEMP.AsString := SQLCAB.FieldByName('CGCEMP').AsString;
    CDSCABNOMCLI.AsString := SQLCAB.FieldByName('NOMCLI').AsString;
    CDSCABCGCCLI.AsString := SQLCAB.FieldByName('CGCCLI').AsString;
    CDSCABDTEEMISSAO.AsDateTime := SQLCAB.FieldByName('DTEEMISSAO').AsdateTime;
    CDSCABLOGCLI.AsString := SQLCAB.FieldByName('LOGCLI').AsString;
    CDSCABENFCLI.AsString := SQLCAB.FieldByName('ENFCLI').AsString;
    CDSCABBAFCLI.AsString := SQLCAB.FieldByName('BAFCLI').AsString;
    CDSCABCEFCLI.AsString := SQLCAB.FieldByName('CEFCLI').AsString;
    CDSCABDTEENTSAI.AsDateTime := SQLCAB.FieldByName('DTEENTSAI').AsdateTime;
    CDSCABCIFCLI.AsString := SQLCAB.FieldByName('CIFCLI').AsString;
    CDSCABFONCLI.AsString := SQLCAB.FieldByName('FONCLI').AsString;
    CDSCABUFFCLI.AsString := SQLCAB.FieldByName('UFFCLI').AsString;
    CDSCABINSCLI.AsString := SQLCAB.FieldByName('INSCLI').AsString;
    CDSCABHRESAIDA.AsString := SQLCAB.FieldByName('HRESAIDA').AsString;
    CDSCABNOMTRA.AsString := SQLCAB.FieldByName('NOMTRA').AsString;
    CDSCABFRTPORCONTA.AsString := SQLCAB.FieldByName('FRTPORCONTA').AsString;
    CDSCABPLACAVEICULO.AsString := SQLCAB.FieldByName('PLACAVEICULO').AsString;
    CDSCABUFVEICULO.AsString := SQLCAB.FieldByName('UFVEICULO').AsString;
    CDSCABCGCTRANS.AsString := SQLCAB.FieldByName('CGCTRANS').AsString;
    CDSCABENDTRAS.AsString := SQLCAB.FieldByName('ENDTRAS').AsString;
    CDSCABCIDTRANS.AsString := SQLCAB.FieldByName('CIDTRANS').AsString;
    CDSCABUFTRANS.AsString := SQLCAB.FieldByName('UFTRANS').AsString;
    CDSCABINSTRAS.AsString := SQLCAB.FieldByName('INSTRAS').AsString;
    CDSCABQTDVOLUMES.AsInteger := SQLCAB.FieldByName('QTDVOLUMES').AsInteger;
    CDSCABESPECIE.AsString := SQLCAB.FieldByName('ESPECIE').AsString;
    CDSCABMARCATRANS.AsString := SQLCAB.FieldByName('MARCATRANS').AsString;
    CDSCABNUMERACAO.AsString := SQLCAB.FieldByName('NUMERACAO').AsString;
    CDSCABPESBRT.AsFloat := SQLCAB.FieldByName('PESBRT').AsFloat;
    CDSCABPESLIQ.AsFloat := SQLCAB.FieldByName('PESLIQ').AsFloat;
    CDSCABBCICM.AsFloat := SQLCAB.FieldByName('BCICM').AsFloat;
    CDSCABVLRICM.AsFloat := SQLCAB.FieldByName('VLRICM').AsFloat;
    CDSCABBCICMST.AsFloat := SQLCAB.FieldByName('BCICMST').AsFloat;
    CDSCABVLRICMST.AsFloat := SQLCAB.FieldByName('VLRICMST').AsFloat;
    CDSCABVLRPIS.AsFloat := SQLCAB.FieldByName('VLRPIS').AsFloat;
    CDSCABVLRTOTPRO.AsFloat := SQLCAB.FieldByName('VLRTOTPRO').AsFloat;
    CDSCABVLRFRETE.AsFloat := SQLCAB.FieldByName('VLRFRETE').AsFloat;
    CDSCABVLRSEGURO.AsFloat := SQLCAB.FieldByName('VLRSEGURO').AsFloat;
    CDSCABVLRDES.AsFloat := SQLCAB.FieldByName('VLRDES').AsFloat;
    CDSCABVLROUTDESP.AsFloat := SQLCAB.FieldByName('VLROUTDESP').AsFloat;
    CDSCABVLRCOFINS.AsFloat := SQLCAB.FieldByName('VLRCOFINS').AsFloat;
    CDSCABVLRTOTNOT.AsFloat := SQLCAB.FieldByName('VLRTOTNOT').AsFloat;
    CDSCABTOTIBPT.AsFloat := SQLCAB.FieldByName('TOTIBPT').AsFloat;
    CDSCABOB1FAT.AsString := SQLCAB.FieldByName('OB1FAT').AsString;
    CDSCABOB2FAT.AsString := SQLCAB.FieldByName('OB2FAT').AsString;
    CDSCABOB3FAT.AsString := SQLCAB.FieldByName('OB3FAT').AsString;
    CDSCABOB4FAT.AsString := SQLCAB.FieldByName('OB4FAT').AsString;
    CDSCABOB5FAT.AsString := SQLCAB.FieldByName('OB5FAT').AsString;
    CDSCABOB6FAT.AsString := SQLCAB.FieldByName('OB6FAT').AsString;
    CDSCABOB7FAT.AsString := SQLCAB.FieldByName('OB7FAT').AsString;
    CDSCABOB8FAT.AsString := SQLCAB.FieldByName('OB8FAT').AsString;
    CDSCABPLACAVEICULO.AsString := SQLCAB.FieldByName('PLACAVEICULO').AsString;
    CDSCABUFVEICULO.AsString := SQLCAB.FieldByName('UFVEICULO').AsString;
    CDSCABENDTRAS.AsString := SQLCAB.FieldByName('ENDTRAS').AsString;
    CDSCABUFTRANS.AsString := SQLCAB.FieldByName('UFTRANS').AsString;
    CDSCABINSTRAS.AsString := SQLCAB.FieldByName('INSTRAS').AsString;
    CDSCABCHAVEACE.AsString := SQLCAB.FieldByName('CHAVEACE').AsString;
    CDSCABFONCLI.AsString := SQLCAB.FieldByName('FONCLI').AsString;
    CDSCABMARCATRANS.AsString := SQLCAB.FieldByName('MARCATRANS').AsString;
    CDSCABNOMPAI.AsString := SQLCAB.FieldByName('NOMPAI').AsString;
    CDSCABID_FINPAI.Value := SQLCAB.FieldByName('ID_FINPAI').Value;
    CDSCABINSSTEMP.AsString := SQLCAB.FieldByName('INSSTEMP').AsString;
    CDSCABESPECIE.AsString := SQLCAB.FieldByName('ESPECIE').AsString;
    CDSCABHRESAIDA.AsString := SQLCAB.FieldByName('HRESAIDA').AsString;
    CDSCABINDIC_CF.AsString := SQLCAB.FieldByName('INDIC_CF').AsString;
    CDSCABINDIC_PRESENCA.AsString := SQLCAB.FieldByName('INDIC_PRESENCA').AsString;
    CDSCABTOTDESONERADO.AsFloat := SQLCAB.FieldByName('TOTDESONERADO').AsFloat;

    CDSCABTOT_FCPUFDEST.AsFloat := SQLCAB.FieldByName('TOT_FCPUFDEST').AsFloat;
    CDSCABTOT_ICMSUFDEST.AsFloat := SQLCAB.FieldByName('TOT_ICMSUFDEST').AsFloat;
    CDSCABTOT_ICMSUFREMET.AsFloat := SQLCAB.FieldByName('TOT_ICMSUFREMET').AsFloat;

    CDSCAB.Post;

    BuscaItem_FP(CODEMP, NUMRES, DTERES, SEQLIB);

    CarregaCombos(CDSCABCODEMP.AsString);
  end;

end;

function TFrmEditNfe.BuscaItem_FP(CODEMP, NUMRES, DTERES, SEQLIB: string): Integer;
begin

  SQLITE.Active := False;

  SQLITE.SQL.TEXT := ' SELECT ' + _BR
    + ' FP2.codclp AS CODCLP, ' + _BR
    + ' FP2.codgru AS CODGRU, ' + _BR
    + ' FP2.codsub AS CODSUB, ' + _BR
    + ' FP2.codpro AS CODPRO, ' + _BR
    + ' FP2.CODEMP AS CODEMP, ' + _BR
    + ' FP2.codclp||FP2.codgru||FP2.codsub||FP2.codpro AS PRODUTO, ' + _BR
    + ' Coalesce(PRO.dscpro, FP2.despe2) AS DESCRICAOPRO, ' + _BR
    + ' FP2.ObsPe2 AS DESC2, ' + _BR
    + ' FP2.NUMRES AS NUMRES, ' + _BR
    + ' FP2.NROPE2 AS NROPE2, ' + _BR
    + ' FP2.DTERES AS DTERES, ' + _BR
    + ' FP2.SEQLIB AS SEQLIB, ' + _BR
    + ' FP2.SEQPE2 AS SEQPE2, ' + _BR
    + ' FP2.clsipi AS NCM, ' + _BR
    + ' FP2.codst1 AS ORIG, ' + _BR
    + ' FP2.codst2 AS CSTICMS, ' + _BR
    + ' FP2.codcfo AS CFOP, ' + _BR
    + ' FP2.codund AS UNIDADE, ' + _BR
    + ' FP2.qtppe2 AS QUANTIDADE, ' + _BR
    + ' FP2.vlqpe2 AS VALUNITARIO, ' + _BR
    + ' FP2.TOTDESCINC AS VALDESC, ' + _BR
    + ' FP2.TOTPE2 AS VALLIQ, ' + _BR
    + ' FP2.basicm AS BASICMS, ' + _BR
    + ' FP2.icmpe2 AS ALIQICMS, ' + _BR
    + ' FP2.toticm AS VALICMS, ' + _BR
    + ' FP2.ipipe2 AS ALIQIPI, ' + _BR
    + ' FP2.totipi AS VALIPI, ' + _BR
    + ' FP2.totsub AS VALSUB, ' + _BR
    + ' FP2.bassub AS BASESUB, ' + _BR
    + ' FP2.mrgsub as MVA, ' + _BR
    + ' 0.0 as VLRIMP, ' + _BR
    + ' FP2.ALIQPIS PERPIS, ' + _BR
    + ' FP2.ALIQCOF PERCOF, ' + _BR
    + ' FP2.baspis, ' + _BR
    + ' FP2.bascof, ' + _BR
    + ' FP2.totpis, ' + _BR
    + ' FP2.TOTCOF, ' + _BR
    + ' FP2.basipi, ' + _BR
    + ' FP2.CSTIPI, ' + _BR
    + ' FP2.CSTPIS, ' + _BR
    + ' FP2.CSTCOF, ' + _BR
    + ' FP2.TOTFRT, ' + _BR
    + ' FP2.TOTSEG, ' + _BR
    + ' FP2.ICMSUB as ALIQSUB, ' + _BR
    + ' FP2.TOTOUTDESP, ' + _BR
    + ' FP2.TOTDESONERADO, ' + _BR
    + ' FP2.CODDESONERACAO, ' + _BR
    + ' FP2.CEST, ' + _BR
    + ' FP2.TOTIBPT, ' + _BR

  + ' FP2.BAS_UFDEST, ' + _BR
    + ' FP2.ALIQ_FCPUFDEST, ' + _BR
    + ' FP2.ALIQ_ICMSUFDEST, ' + _BR
    + ' FP2.ALIQ_ICMSINTER, ' + _BR
    + ' FP2.ALIQ_ICMSINTERPART, ' + _BR
    + ' FP2.TOT_FCPUFDEST, ' + _BR
    + ' FP2.TOT_ICMSUFDEST, ' + _BR
    + ' FP2.TOT_ICMSUFREMET ' + _BR

  + ' FROM fatpe2 FP2 ' + _BR
    + ' LEFT OUTER JOIN estpro PRO ON ' + _BR
    + ' FP2.codclp = PRO.codclp AND ' + _BR
    + ' FP2.codgru = PRO.codgru AND ' + _BR
    + ' FP2.codsub = PRO.codsub AND ' + _BR
    + ' FP2.codpro = PRO.codpro ' + _BR
    + ' INNER JOIN fatped FP ON ' + _BR
    + ' FP2.codemp = FP.codemp AND ' + _BR
    + ' FP2.dteres = FP.dteres AND ' + _BR
    + ' FP2.numres = FP.numres AND ' + _BR
    + ' FP2.seqlib = FP.seqlib AND ' + _BR
    + ' FP2.seqfat = FP.seqfat ' + _BR
    + ' WHERE FP2.CODEMP = ' + CODEMP + _BR
    + ' and fp2.NUMRES = ' + NUMRES + _BR
    + ' and fp2.DTERES = ' + DTERES + _BR
    + ' and fp2.SEQLIB = ' + SEQLIB;

  SQLITE.Active := True;

  cdsProd.EmptyDataSet;

  if SQLITE.RecordCount > 0 then
  begin
    SQLITE.first;

    while not SQLITE.eof do
    begin

      CDSPROD.Append;
      CDSPRODCODCLP.AsString := SQLITE.FieldByName('CODCLP').AsString;
      CDSPRODCODEMP.AsString := SQLITE.FieldByName('CODEMP').AsString;
      CDSPRODCODGRU.AsString := SQLITE.FieldByName('CODGRU').AsString;
      CDSPRODCODSUB.AsString := SQLITE.FieldByName('CODSUB').AsString;
      CDSPRODCODPRO.AsString := SQLITE.FieldByName('CODPRO').AsString;
      CDSPRODPRODUTO.AsString := SQLITE.FieldByName('PRODUTO').AsString;
      CDSPRODSEQPE2.AsString := SQLITE.FieldByName('SEQPE2').AsString;
      CDSPRODDESCRICAOPRO.AsString := SQLITE.FieldByName('DESCRICAOPRO').AsString;

      CDSPRODALIQSUB.AsFloat := SQLITE.FieldByName('ALIQSUB').AsFloat;

      CDSPRODNCM.AsString := SQLITE.FieldByName('NCM').AsString;

      CDSPRODNUMRES.AsInteger := SQLITE.FieldByName('NUMRES').AsInteger;
      CDSPRODDTERES.value := SQLITE.FieldByName('DTERES').value;
      CDSPRODSEQLIB.AsInteger := SQLITE.FieldByName('SEQLIB').AsInteger;
      CDSPRODNROPE2.AsInteger := SQLITE.FieldByName('NROPE2').AsInteger;

      //CDSPRODSTICMS.AsString := SQLITE.FieldByName('STICMS').AsString;
      //CDSPRODNCM.AsString := SQLITE.FieldByName('NCM').AsString;
      CDSPRODORIG.AsString := SQLITE.FieldByName('ORIG').AsString;
      CDSPRODCSTICMS.AsString := SQLITE.FieldByName('CSTICMS').AsString;
      CDSPRODCSTIPI.AsString := SQLITE.FieldByName('CSTIPI').AsString;
      CDSPRODCSTPIS.AsString := SQLITE.FieldByName('CSTPIS').AsString;
      CDSPRODCSTCOF.AsString := SQLITE.FieldByName('CSTCOF').AsString;

      CDSPRODCFOP.AsString := SQLITE.FieldByName('CFOP').AsString;
      CDSPRODUNIDADE.AsString := SQLITE.FieldByName('UNIDADE').AsString;
      CDSPRODQUANTIDADE.AsFloat := SQLITE.FieldByName('QUANTIDADE').AsFloat;
      CDSPRODVALUNITARIO.AsFloat := SQLITE.FieldByName('VALUNITARIO').AsFloat;
      CDSPRODVALDESC.AsFloat := SQLITE.FieldByName('VALDESC').AsFloat;
      CDSPRODVALLIQ.AsFloat := SQLITE.FieldByName('VALLIQ').AsFloat;
      CDSPRODBASICMS.AsFloat := SQLITE.FieldByName('BASICMS').AsFloat;
      CDSPRODALIQICMS.AsFloat := SQLITE.FieldByName('ALIQICMS').AsFloat;
      CDSPRODVALICMS.AsFloat := SQLITE.FieldByName('VALICMS').AsFloat;
      CDSPRODALIQIPI.AsFloat := SQLITE.FieldByName('ALIQIPI').AsFloat;
      CDSPRODVALIPI.AsFloat := SQLITE.FieldByName('VALIPI').AsFloat;
      CDSPRODVALSUB.AsFloat := SQLITE.FieldByName('VALSUB').AsFloat;
      CDSPRODBASESUB.AsFloat := SQLITE.FieldByName('BASESUB').AsFloat;
      CDSPRODDESC2.AsString := SQLITE.FieldByName('DESC2').AsString;

      CDSPRODMVA.AsString := SQLITE.FieldByName('MVA').AsString;
      CDSPRODPERPIS.AsString := SQLITE.FieldByName('PERPIS').AsString;
      CDSPRODPERCOF.AsString := SQLITE.FieldByName('PERCOF').AsString;
      CDSPRODbaspis.AsString := SQLITE.FieldByName('baspis').AsString;
      CDSPRODbascof.AsString := SQLITE.FieldByName('bascof').AsString;
      CDSPRODtotpis.AsString := SQLITE.FieldByName('totpis').AsString;
      CDSPRODTOTCOF.AsString := SQLITE.FieldByName('TOTCOF').AsString;
      CDSPRODbasipi.AsString := SQLITE.FieldByName('basipi').AsString;

      CDSPRODTOTFRT.AsFloat := SQLITE.FieldByName('TOTFRT').AsFloat;
      CDSPRODTOTSEG.AsFloat := SQLITE.FieldByName('TOTSEG').AsFloat;
      CDSPRODTOTOUTDESP.AsFloat := SQLITE.FieldByName('TOTOUTDESP').AsFloat;
      CDSPRODTOTIBPT.AsFloat := SQLITE.FieldByName('TOTIBPT').AsFloat;
      CDSPRODCEST.AsString := SQLITE.FieldByName('CEST').AsString;

      CDSPRODTOTDESONERADO.AsFloat := SQLITE.FieldByName('TOTDESONERADO').AsFloat;
      CDSPRODCODDESONERACAO.AsString := SQLITE.FieldByName('CODDESONERACAO').AsString;

      CDSPRODBAS_UFDEST.AsFloat := SQLITE.FieldByName('BAS_UFDEST').AsFloat;
      CDSPRODALIQ_FCPUFDEST.AsFloat := SQLITE.FieldByName('ALIQ_FCPUFDEST').AsFloat;
      CDSPRODALIQ_ICMSUFDEST.AsFloat := SQLITE.FieldByName('ALIQ_ICMSUFDEST').AsFloat;
      CDSPRODALIQ_ICMSINTER.AsFloat := SQLITE.FieldByName('ALIQ_ICMSINTER').AsFloat;
      CDSPRODALIQ_ICMSINTERPART.AsFloat := SQLITE.FieldByName('ALIQ_ICMSINTERPART').AsFloat;
      CDSPRODTOT_FCPUFDEST.AsFloat := SQLITE.FieldByName('TOT_FCPUFDEST').AsFloat;
      CDSPRODTOT_ICMSUFDEST.AsFloat := SQLITE.FieldByName('TOT_ICMSUFDEST').AsFloat;
      CDSPRODTOT_ICMSUFREMET.AsFloat := SQLITE.FieldByName('TOT_ICMSUFREMET').AsFloat;

      CDSPROD.Post;

      SQLITE.Next;

    end;

  end;

  CDSPROD.First;

  //   if GridProd.CanFocus then
  //      GridProd.SetFocus;

  //EdNumNot.SetFocus;

end;

procedure TFrmEditNfe.BuscaNF;
var
  auxStr: string;
begin

  {auxStr := InputBox('Alteração de NFe', 'Informe o número da NFe que deseja alterar:', '0');

  try
    if (trim(auxStr) = '') or (strtoint(trim(auxStr)) = 0) then
    begin
      messagebox(handle, 'Número informado inválido. Tente novamente.', 'Alteração de NFe', mb_ok + MB_ICONEXCLAMATION);
      abort;
    end;

    fmNFEAltPort := TfmNFEAltPort.Create(self);

    try
      if fmNFEAltPort.BuscaNFE(strtoint(trim(auxStr))) > 0 then
      begin
        BuscaNF_FP(fmNFEAltPort.CODEMP, fmNFEAltPort.NUMRES, QuotedStr(fmNFEAltPort.DTERES), fmNFEAltPort.SEQLIB);
      end;

    finally
      freeandnil(fmNFEAltPort);
    end;

  except
    messagebox(handle, 'Número informado inválido. Tente novamente.', 'Alteração de NFe', mb_ok + MB_ICONWARNING);
  end;}

end;

procedure TFrmEditNfe.FormShow(Sender: TObject);
begin
  FrmEditNfe.VertScrollBar.Position := 0;
  INDIC_CON.Active := True;
  INDIC_PRES.Active := True;
  desoneracao.Active := True;
  TIPFRT.Active := True;
end;

procedure TFrmEditNfe.UpdateFP;
var
  dataSaida: string;
  cstpis, cstcof, cstipi: string;
begin
  SQLBUS.Active := False;

  if (CDSCABDTEENTSAI.Value <= 1) then
  begin

    dataSaida := ' DTESDA = NULL, ';
  end
  else
    dataSaida := ' DTESDA = ' + QuotedStr(FormatDateTime('yyyy-mm-dd', CDSCABDTEENTSAI.AsDateTime)) + ',';

  if ALT_VISU = 'ALT' then
  begin
    SQLBUS.Active := false;
    SQLBUS.SQL.Text := 'Update fatped Set libera_resp =  ' + QuotedStr('S')
      + ', libera_codusu = ' + IntToStr(fmManGDB.VCODUSU)
      + ', LIBERA_DTEHRE = (select Cast( ' + QuotedStr('NOW') + ' as Date) From RDB$DATABASE) '
      + ' WHERE (CODEMP = ' + CDSCABCODEMP.AsString + ') '
      + ' AND (NUMRES = ' + CDSCABNUMRES.AsString + ') '
      + ' AND (DTERES = ' + QuotedStr(FormatDateTime('yyyy-mm-dd', CDSCABDTERES.AsDateTime)) + ') '
      + ' AND (SEQLIB = ' + CDSCABSEQLIB.AsString + ')';

    SQLBUS.ExecSQL;

    CDSPROD.First;

    SQLBUS.Active := false;

    while not CDSPROD.Eof do
    begin
      ValidacaoProdutos;
      SQLBUS.SQL.Clear;

      cstpis := QuotedStr(CDSPRODCSTPIS.AsString);
      cstcof := QuotedStr(CDSPRODCSTCOF.AsString);
      cstipi := QuotedStr(CDSPRODCSTIPI.AsString);

      if (cstpis = QuotedStr('')) then
        cstpis := ' null';
      if (cstcof = QuotedStr('')) then
        cstcof := ' null';
      if (cstipi = QuotedStr('')) then
        cstipi := ' null';

      SQLBUS.SQL.Text :=
        ' UPDATE FATPE2 '
        + ' SET '
        + ' OBSPE2 =  ' + QuotedStr(CDSPRODDESC2.AsString) + ',' + _BR //STICMS -- Mistério
      + ' CLSIPI =  ' + QuotedStr(CDSPRODNCM.AsString) + ',' + _BR
        + ' CODST1 =  ' + QuotedStr(CDSPRODORIG.AsString) + ',' + _BR
        + ' CODST2 =  ' + QuotedStr(CDSPRODCSTICMS.AsString) + ',' + _BR
        + ' ICMSUB =  ' + QuotedStr(CDSPRODALIQSUB.AsString) + ',' + _BR
        + ' CODCFO =  ' + QuotedStr(CDSPRODCFOP.AsString) + ',' + _BR
        + ' CODUND =  ' + QuotedStr(CDSPRODUNIDADE.AsString) + ',' + _BR
        + ' QTPPE2 =  ' + formataReal(CDSPRODQUANTIDADE.AsFloat, 3) + ',' + _BR
        + ' VALPE2 =  ' + formataReal(CDSPRODVALUNITARIO.AsFloat, 4) + ',' + _BR
        + ' VLQPE2 =  ' + formataReal(CDSPRODVALUNITARIO.AsFloat, 4) + ',' + _BR
        + ' TOTDESCINC =  ' + formataReal(CDSPRODVALDESC.AsFloat) + ',' + _BR
        + ' TOTPE2 =  ' + formataReal(CDSPRODVALLIQ.AsFloat) + ',' + _BR
        + ' BASICM =  ' + formataReal(CDSPRODBASICMS.AsFloat) + ',' + _BR
        + ' ICMPE2 =  ' + formataReal(CDSPRODALIQICMS.AsFloat) + ',' + _BR
        + ' TOTICM =  ' + formataReal(CDSPRODVALICMS.AsFloat) + ',' + _BR
        + ' IPIPE2 =  ' + formataReal(CDSPRODALIQIPI.AsFloat) + ',' + _BR
        + ' TOTIPI =  ' + formataReal(CDSPRODVALIPI.AsFloat) + ',' + _BR
        + ' TOTSUB =  ' + formataReal(CDSPRODVALSUB.AsFloat) + ',' + _BR
        + ' BASSUB =  ' + formataReal(CDSPRODBASESUB.AsFloat) + ',' + _BR
        + ' MRGSUB =  ' + formataReal(CDSPRODMVA.AsFloat) + ',' + _BR
        + ' PERPIS =  ' + formataReal(CDSPRODPERPIS.AsFloat) + ',' + _BR
        + ' PERCOF =  ' + formataReal(CDSPRODPERCOF.AsFloat) + ',' + _BR

      + ' ALIQPIS =  ' + formataReal(CDSPRODPERPIS.AsFloat) + ',' + _BR
        + ' ALIQCOF =  ' + formataReal(CDSPRODPERCOF.AsFloat) + ',' + _BR

      + ' BASPIS =  ' + formataReal(CDSPRODBASPIS.AsFloat) + ',' + _BR
        + ' BASCOF =  ' + formataReal(CDSPRODBASCOF.AsFloat) + ',' + _BR
        + ' TOTPIS =  ' + formataReal(CDSPRODTOTPIS.AsFloat) + ',' + _BR
        + ' TOTCOF =  ' + formataReal(CDSPRODTOTCOF.AsFloat) + ',' + _BR
        + ' BASIPI =  ' + formataReal(CDSPRODBASIPI.AsFloat) + ',' + _BR
        + ' CSTIPI =  ' + CSTIPI + ',' + _BR
        + ' CSTPIS =  ' + CSTPIS + ',' + _BR
        + ' CSTCOF =  ' + CSTCOF + ',' + _BR
        + ' TOTFRT =  ' + formataReal(CDSPRODTOTFRT.AsFloat) + ',' + _BR
        + ' TOTSEG =  ' + formataReal(CDSPRODTOTSEG.AsFloat) + ',' + _BR
        + ' TOTIBPT = ' + FormataReal(CDSPRODTOTIBPT.AsFloat) + ',' + _BR
        + ' CEST = ' + quotedStr(CDSPRODCEST.AsString) + ',' + _BR

      + ' BAS_UFDEST = ' + FormataReal(CDSPRODBAS_UFDEST.AsFloat) + ',' + _BR
        + ' ALIQ_FCPUFDEST = ' + FormataReal(CDSPRODALIQ_FCPUFDEST.AsFloat) + ',' + _BR
        + ' ALIQ_ICMSUFDEST = ' + FormataReal(CDSPRODALIQ_ICMSUFDEST.AsFloat) + ',' + _BR
        + ' ALIQ_ICMSINTER = ' + FormataReal(CDSPRODALIQ_ICMSINTER.AsFloat) + ',' + _BR
        + ' ALIQ_ICMSINTERPART = ' + FormataReal(CDSPRODALIQ_ICMSINTERPART.AsFloat) + ',' + _BR
        + ' TOT_FCPUFDEST = ' + FormataReal(CDSPRODTOT_FCPUFDEST.AsFloat) + ',' + _BR
        + ' TOT_ICMSUFDEST = ' + FormataReal(CDSPRODTOT_ICMSUFDEST.AsFloat) + ',' + _BR
        + ' TOT_ICMSUFREMET = ' + FormataReal(CDSPRODTOT_ICMSUFREMET.AsFloat) + ',' + _BR

      + ' TOTDESONERADO = ' + FormataReal(CDSPRODTOTDESONERADO.AsFloat) + ',' + _BR

      + IfThen(Trim(CDSPRODCODDESONERACAO.AsString) <> '', ' CODDESONERACAO = '
        + QuotedStr(CDSPRODCODDESONERACAO.AsString) + ',' + _BR, 'CODDESONERACAO = 0' + ',' + _BR)

      + ' TOTOUTDESP = ' + formataReal(CDSPRODTOTOUTDESP.AsFloat) + _BR
        + ' WHERE NUMRES =  ' + QuotedStr(CDSCABNUMRES.AsString) + ' AND ' + _BR
        + ' DTERES =  ' + QuotedStr(FormatDateTime('yyyy-mm-dd', CDSPRODDTERES.AsDateTime)) + ' AND' + _BR
        + ' SEQLIB =  ' + QuotedStr(CDSPRODSEQLIB.AsString) + ' AND' + _BR
        + ' SEQPE2 =  ' + QuotedStr(CDSPRODSEQPE2.AsString) + ' AND' + _BR
        + ' CODEMP =  ' + CDSPRODCODEMP.AsString;

      SQLBUS.ExecSQL;

      CDSPROD.Next;

    end;

    SQLBUS.SQL.Clear;

    SQLBUS.SQL.Text :=
      ' UPDATE FatPed '
      + ' SET '
      + ' MODPFA = ' + QuotedStr(CDSCABNATOPE.AsString) + ',' + _BR
      + ' DTERES = ' + QuotedStr(FormatDateTime('yyyy-mm-dd', CDSCABDTEEMISSAO.AsDateTime)) + ',' + _BR
      + ' INSSUB = ' + QuotedStr(CDSCABINSSTEMP.AsString) + ',' + _BR
      + ' NOMENT = ' + QuotedStr(CDSCABNOMCLI.AsString) + ',' + _BR
      + ' CGCCLI = ' + QuotedStr(CDSCABCGCCLI.AsString) + ',' + _BR
      + ' TEFCLI = ' + QuotedStr(CDSCABLOGCLI.AsString) + ',' + _BR
      + ' ENFCLI = ' + QuotedStr(CDSCABENFCLI.AsString) + ',' + _BR
      + ' BAFCLI = ' + QuotedStr(CDSCABBAFCLI.AsString) + ',' + _BR
      + ' CEFCLI = ' + QuotedStr(CDSCABCEFCLI.AsString) + ',' + _BR
      + dataSaida + _BR
      + ' CIFCLI = ' + QuotedStr(CDSCABCIFCLI.AsString) + ',' + _BR
      + ' UFFCLI = ' + QuotedStr(CDSCABUFFCLI.AsString) + ',' + _BR
      + ' INSCLI = ' + QuotedStr(CDSCABINSCLI.AsString) + ',' + _BR
      + ' HRESDA = ' + QuotedStr(CDSCABHRESAIDA.AsString) + ',' + _BR
      + ' NOMTRA = ' + QuotedStr(CDSCABNOMTRA.AsString) + ',' + _BR
      //+ ' TIPFRT = ' + QuotedStr(CDSCABFRTPORCONTA.AsString) + ',' + _BR
    + ' ID_FRETE = ' + QuotedStr(CDSCABFRTPORCONTA.AsString) + ',' + _BR
      + ' PLCTRA = ' + QuotedStr(CDSCABPLACAVEICULO.AsString) + ',' + _BR
      + ' UFEPLC = ' + QuotedStr(CDSCABUFVEICULO.AsString) + ',' + _BR
      + ' CGCTRA = ' + QuotedStr(CDSCABCGCTRANS.AsString) + ',' + _BR
      + ' CIDTRA = ' + QuotedStr(CDSCABCIDTRANS.AsString) + ',' + _BR
      + ' UFETRA = ' + QuotedStr(CDSCABUFTRANS.AsString) + ',' + _BR
      + ' INSTRA = ' + QuotedStr(CDSCABINSTRAS.AsString) + ',' + _BR
      + ' ALTVOL = ' + QuotedStr(CDSCABQTDVOLUMES.AsString) + ',' + _BR
      + ' ESPFAT = ' + QuotedStr(CDSCABESPECIE.AsString) + ',' + _BR
      + ' MARFAT = ' + QuotedStr(CDSCABMARCATRANS.AsString) + ',' + _BR
      + ' nrofat = ' + QuotedStr(CDSCABNUMERACAO.AsString) + ',' + _BR
      + ' INFBRT = ' + formataReal(CDSCABPESBRT.AsFloat, 3) + ',' + _BR
      + ' INFLIQ = ' + formataReal(CDSCABPESLIQ.AsFloat, 3) + ',' + _BR
      + ' BASICM = ' + formataReal(CDSCABBCICM.AsFloat) + ',' + _BR
      + ' TOTICM = ' + formataReal(CDSCABVLRICM.AsFloat) + ',' + _BR
      + ' BASSUB = ' + formataReal(CDSCABBCICMST.AsFloat) + ',' + _BR
      + ' TOTSUB = ' + formataReal(CDSCABVLRICMST.AsFloat) + ',' + _BR
      + ' TOTPIS = ' + formataReal(CDSCABVLRPIS.AsFloat) + ',' + _BR
      + ' TOTGER = ' + formataReal(CDSCABVLRTOTNOT.AsFloat) + ',' + _BR
      + ' TOTFRT = ' + formataReal(CDSCABVLRFRETE.AsFloat) + ',' + _BR
      + ' BASIPI = ' + formataReal(CDSCABBCIPI.AsFloat) + ',' + _BR
      + ' TOTIPI = ' + formataReal(CDSCABVLRIPI.AsFloat) + ',' + _BR
      + ' TOTSEG = ' + formataReal(CDSCABVLRSEGURO.AsFloat) + ',' + _BR
      + ' TOTDSR = ' + formataReal(CDSCABVLRDES.AsFloat) + ',' + _BR
      + ' TOTOUTDESP = ' + formataReal(CDSCABVLROUTDESP.AsFloat) + ',' + _BR
      + ' TOTCOF = ' + formataReal(CDSCABVLRCOFINS.AsFloat) + ',' + _BR
      + ' TOTFAT = ' + formataReal(CDSCABVLRTOTPRO.AsFloat) + ',' + _BR
      + ' TOTIBPT = ' + FormataReal(CDSCABTOTIBPT.AsFloat) + ',' + _BR

    + IfThen(Trim(CDSCABINDIC_CF.AsString) <> '', ' INDIC_CF = '
      + QuotedStr(CDSCABINDIC_CF.AsString) + ',' + _BR, '')

    + IfThen(Trim(CDSCABINDIC_PRESENCA.AsString) <> '', ' INDIC_PRESENCA = '
      + QuotedStr(CDSCABINDIC_PRESENCA.AsString) + ',' + _BR, '')

    + ' TOTDESONERADO = ' + FormataReal(CDSCABTOTDESONERADO.AsFloat) + ',' + _BR

    + ' OB1FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB1FAT.AsString)) + ',' + _BR
      + ' OB2FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB2FAT.AsString)) + ',' + _BR
      + ' OB3FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB3FAT.AsString)) + ',' + _BR
      + ' OB4FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB4FAT.AsString)) + ',' + _BR
      + ' OB5FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB5FAT.AsString)) + ',' + _BR
      + ' OB6FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB6FAT.AsString)) + ',' + _BR
      + ' OB7FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB7FAT.AsString)) + ',' + _BR
      + ' OB8FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB8FAT.AsString)) + ',' + _BR
      + ' ENDTRA = ' + QuotedStr(AnsiUpperCase(CDSCABENDTRAS.AsString)) + ',' + _BR

    + ' TOT_FCPUFDEST = ' + FormataReal(CDSCABTOT_FCPUFDEST.AsFloat) + ',' + _BR
      + ' TOT_ICMSUFDEST = ' + FormataReal(CDSCABTOT_ICMSUFDEST.AsFloat) + ',' + _BR
      + ' TOT_ICMSUFREMET = ' + FormataReal(CDSCABTOT_ICMSUFREMET.AsFloat) + _BR

    + ' WHERE (CODEMP = ' + CDSCABCODEMP.AsString + ')  '
      + ' AND (NUMRES = ' + CDSCABNUMRES.AsString + ') '
      + ' AND (DTERES = ' + QuotedStr(FormatDateTime('yyyy-mm-dd', CDSCABDTERES.AsDateTime)) + ') '
      + ' AND (SEQLIB = ' + CDSCABSEQLIB.AsString + ')';

    SQLBUS.ExecSQL;

    SQLBUS.Active := False;
  end;

  Self.Close;
end;

function TFrmEditNfe.formataReal(valor: Double; Decimal: integer = 2): string;
begin
  result := StringReplace(StringReplace(FormatFloat('0.' + Replicate('0', Decimal), valor), '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll]);

end;

procedure TFrmEditNfe.CarregaDI(ID: integer);
begin
  sqlDI.Active := False;
  sqlDI.SQL.text := 'select ID_DI,ID_CMPNF2,NUMDI,DATADI,LOCALDESEMB,UFDESEMB,DATADESEMB,CODEXPORT '
    + ' from di '
    + ' where ID_CMPNF2 = ' + inttostr(ID);
  sqlDI.Active := true;

  sqlDI.First;
  sqlDI.Last;
  sqlDI.First;

  if sqlDI.RecordCount > 0 then
  begin

    while not sqlDI.EOF do
    begin
      CDSDI.APPEND;
      CDSDIID_DI.AsInteger := SQLDIID_DI.AsInteger;
      CDSDIID_CMPNF2.AsInteger := SQLDIID_CMPNF2.AsInteger;
      CDSDINUMDI.AsString := SQLDINUMDI.AsString;
      CDSDIDATADI.AsDateTime := SQLDIDATADI.AsDateTime;
      CDSDILOCALDESEMB.AsString := SQLDILOCALDESEMB.AsString;
      CDSDIUFDESEMB.AsString := SQLDIUFDESEMB.AsString;
      CDSDIDATADESEMB.AsDateTime := SQLDIDATADESEMB.AsDateTime;
      CDSDICODEXPORT.AsString := SQLDICODEXPORT.AsString;
      CDSDI.Post;

      sqlDI.Next;
    end;

  end;

  if CDSDI.RecordCount > 0 then
  begin
    CDSDI.first;

    while not CDSDI.EOF do
    begin
      CDSDIDET.APPEND;
      CDSDIDETID_DIDET.AsInteger := SQLDIDETID_DIDET.AsInteger;
      CDSDIDETID_DI.AsInteger := SQLDIDETID_DI.AsInteger;
      CDSDIDETNSEQADIC.AsInteger := SQLDIDETNSEQADIC.AsInteger;
      CDSDIDETCODFAB.AsString := SQLDIDETCODFAB.AsString;
      CDSDIDETVDESCDI.AsFloat := SQLDIDETVDESCDI.AsFloat;
      CDSDIDETQTDE.AsFloat := SQLDIDETQTDE.AsFloat;
      CDSDIDETNADICAO.AsInteger := SQLDIDETNADICAO.AsInteger;
      CDSDIDET.POST;

      CDSDI.Next;
    end;
  end;

end;

procedure TFrmEditNfe.PageControl1DrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
  //pinta a fonte
  Control.Canvas.Font.Color := clNavy;
  Control.Canvas.Font.Style := [fsBold];
  //
  // pinta a paleta / aba
  Control.Canvas.brush.Color := $00F0E8D9;

  Control.Canvas.TextOut(Rect.left + 5, Rect.top + 3, PageControl1.Pages[tabindex].Caption);
  PageControl1.Pages[TabIndex].Repaint;
end;

procedure TFrmEditNfe.BuscaNF_FG(CODEMP, NUMGER, DTEGER: string);
begin
  SQLCAB.active := False;
  SQLCAB.sql.text :=
    ' SELECT ' + QuotedStr('FG') + ' tab, ' + _BR
    + ' FG.nronfs AS NUMNOT,  ' + _BR
    + ' FG.TOTIMPII AS TOTIMP,  ' + _BR
    + ' FG.seqnfe AS CHAVEACE,  ' + _BR
    + ' FG.CODEMP,  ' + _BR
    + ' FG.NUMGER AS NUMRES, ' + _BR
    + ' FG.DTEGER AS DTERES, ' + _BR
    + ' 0 AS SEQLIB,  ' + _BR
    + ' FG.modpfa AS NATOPE,  ' + _BR
    + ' FG.totip1 AS TOTIPI,  ' + _BR
    + ' GE.insemp AS INSEMP,  ' + _BR
    + ' FG.inssub AS INSSTEMP,  ' + _BR
    + ' GE.cgcemp AS CGCEMP,  ' + _BR
    + ' FG.noment AS NOMCLI,  ' + _BR
    + ' FG.cgccli AS CGCCLI,  ' + _BR
    + ' FG.dteger AS DTEEMISSAO, ' + _BR
    + ' FG.TEFCLI AS LOGCLI, ' + _BR
    + ' FG.ENFCLI AS ENFCLI,  ' + _BR
    + ' FG.BAFCLI AS BAFCLI,  ' + _BR
    + ' FG.CEFCLI AS CEFCLI,  ' + _BR
    + ' FG.dtesda AS DTEENTSAI,  ' + _BR
    + ' FG.CIFCLI AS CIFCLI,  ' + _BR
    + ' CLI.pt1cli||CLI.fo1cli AS FONCLI,  ' + _BR
    + ' FG.UFFCLI AS UFFCLI,  ' + _BR
    + ' FG.inscli AS INSCLI,  ' + _BR
    + ' FG.HRESDA AS HRESAIDA,  ' + _BR
    + ' FG.nomtra AS NOMTRA,  ' + _BR
    + ' FG.ID_FRETE AS FRTPORCONTA,  ' + _BR
    + ' FG.plctra AS PLACAVEICULO,  ' + _BR
    + ' FG.ufeplc AS UFVEICULO,  ' + _BR
    + ' FG.cgctra AS CGCTRANS,  ' + _BR
    + ' FG.endtra AS ENDTRAS,  ' + _BR
    + ' FG.cidtra AS CIDTRANS,  ' + _BR
    + ' FG.ufetra AS UFTRANS,  ' + _BR
    + ' FG.instra AS INSTRAS,  ' + _BR
    + ' FG.altvol AS QTDVOLUMES,  ' + _BR
    + ' FG.espger AS ESPECIE, ' + _BR
    + ' FG.marger AS MARCATRANS, ' + _BR
    + ' FG.nroger AS NUMERACAO, ' + _BR
    + ' FG.infbrt AS PESBRT,  ' + _BR
    + ' FG.infliq AS PESLIQ,  ' + _BR
    + ' FG.basic1 AS BCICM,  ' + _BR
    + ' FG.totic1 AS VLRICM,  ' + _BR
    + ' FG.bassu1 AS BCICMST,  ' + _BR
    + ' FG.totsu1 AS VLRICMST,  ' + _BR
    + ' FG.totpis AS VLRPIS,  ' + _BR
    + ' FG.TOTIT1 AS VLRTOTPRO,  ' + _BR
    + ' FG.totfrt AS VLRFRETE,  ' + _BR
    + ' FG.totseg AS VLRSEGURO,  ' + _BR
    + ' FG.totdsr AS VLRDES,  ' + _BR
    + ' FG.totOUTDESP AS VLROUTDESP,  ' + _BR
    + ' FG.TOTIBPT,' + _BR
    + ' FG.totcof AS VLRCOFINS,  ' + _BR
    + ' FG.totger AS VLRTOTNOT, ' + _BR
    + ' FG.INDIC_CF,  ' + _BR
    + ' FG.INDIC_PRESENCA, ' + _BR
    + ' PA.nompai AS NOMPAI,  ' + _BR
    + ' CLI.ID_FinPai AS ID_FINPAI,  ' + _BR
    + ' cast(FG.ob1ger AS Varchar(2000)) AS OB1FAT, ' + _BR
    + ' cast(FG.ob2ger AS Varchar(2000)) AS OB2FAT,  ' + _BR
    + ' cast(FG.ob3ger AS Varchar(2000)) AS OB3FAT, ' + _BR
    + ' cast(FG.ob4ger AS Varchar(2000)) AS OB4FAT,  ' + _BR
    + ' cast(FG.ob5ger AS Varchar(2000)) AS OB5FAT,  ' + _BR
    + ' cast(FG.ob6ger AS Varchar(2000)) AS OB6FAT,  ' + _BR
    + ' cast(FG.ob7ger AS Varchar(2000)) AS OB7FAT,  ' + _BR
    + ' cast(FG.ob8ger AS Varchar(2000)) AS OB8FAT,  ' + _BR
    + ' FG.endtra AS ENDTRANS, ' + _BR
    + ' FG.TOTDESONERADO, ' + _BR
    + ' EP.TIPPFA, ' + _BR
    + ' FG.TOT_FCPUFDEST, ' + _BR
    + ' FG.TOT_ICMSUFDEST, ' + _BR
    + ' FG.TOT_ICMSUFREMET ' + _BR
    + ' FROM FatGer FG ' + _BR
    + ' INNER JOIN geremp GE ON  ' + _BR
    + '  FG.CodEmp = GE.codemp  ' + _BR
    + ' INNER JOIN fincli CLI ON  ' + _BR
    + '  FG.codcli = CLI.codcli  ' + _BR
    + ' INNER JOIN FINPAI PA ON  ' + _BR
    + '  CLI.id_FinPai = PA.ID_FinPai  ' + _BR
    + ' INNER JOIN ESTPFA EP ON ' + _BR
    + '  EP.CODPFA = FG.CODPFA ' + _BR
    + ' WHERE FG.CODEMP = ' + CODEMP + _BR
    + '  and FG.numger = ' + NUMGER + _BR
    + '  and FG.dteger = ' + DTEGER;

  SQLCAB.Active := True;

  SQLCAB.First;
  SQLCAB.Last;
  SQLCAB.First;

  if SQLCAB.RecordCount = 1 then
  begin

    //st IPI
    fmManGdb.CarregaCboIPI(Trim(SQLCAB.FieldByName('TIPPFA').AsString));

    CDSCAB.EmptyDataSet;
    CDSCAB.Insert;

    CDSCABTAB.AsString := SQLCAB.FieldByName('TAB').AsString;
    CDSCABSEQLIB.AsString := SQLCAB.FieldByName('SEQLIB').AsString;
    CDSCABNUMNOT.AsInteger := SQLCAB.FieldByName('NUMNOT').AsInteger;
    CDSCABNATOPE.AsString := SQLCAB.FieldByName('NATOPE').AsString;

    CDSCABVLRIPI.AsFloat := SQLCAB.FieldByName('TOTIPI').AsFloat;

    CDSCABVLRIMPI.AsFloat := SQLCAB.FieldByName('TOTIMP').AsFloat;

    CDSCABCODEMP.AsInteger := SQLCAB.FieldByName('CODEMP').AsInteger;
    CDSCABNUMRES.AsString := SQLCAB.FieldByName('NUMRES').AsString;
    CDSCABDTERES.AsDateTime := SQLCAB.FieldByName('DTERES').AsDateTime;

    CDSCABINSEMP.AsString := SQLCAB.FieldByName('INSEMP').AsString;
    CDSCABINSSTEMP.AsString := SQLCAB.FieldByName('INSSTEMP').AsString;
    CDSCABCGCEMP.AsString := SQLCAB.FieldByName('CGCEMP').AsString;
    CDSCABNOMCLI.AsString := SQLCAB.FieldByName('NOMCLI').AsString;
    CDSCABCGCCLI.AsString := SQLCAB.FieldByName('CGCCLI').AsString;
    CDSCABDTEEMISSAO.AsDateTime := SQLCAB.FieldByName('DTEEMISSAO').AsdateTime;
    CDSCABLOGCLI.AsString := SQLCAB.FieldByName('LOGCLI').AsString;
    CDSCABENFCLI.AsString := SQLCAB.FieldByName('ENFCLI').AsString;
    CDSCABBAFCLI.AsString := SQLCAB.FieldByName('BAFCLI').AsString;
    CDSCABCEFCLI.AsString := SQLCAB.FieldByName('CEFCLI').AsString;
    CDSCABDTEENTSAI.AsDateTime := SQLCAB.FieldByName('DTEENTSAI').AsdateTime;
    CDSCABCIFCLI.AsString := SQLCAB.FieldByName('CIFCLI').AsString;
    CDSCABFONCLI.AsString := SQLCAB.FieldByName('FONCLI').AsString;
    CDSCABUFFCLI.AsString := SQLCAB.FieldByName('UFFCLI').AsString;
    CDSCABINSCLI.AsString := SQLCAB.FieldByName('INSCLI').AsString;
    CDSCABHRESAIDA.AsString := SQLCAB.FieldByName('HRESAIDA').AsString;
    CDSCABNOMTRA.AsString := SQLCAB.FieldByName('NOMTRA').AsString;
    CDSCABFRTPORCONTA.AsString := SQLCAB.FieldByName('FRTPORCONTA').AsString;
    CDSCABPLACAVEICULO.AsString := SQLCAB.FieldByName('PLACAVEICULO').AsString;
    CDSCABUFVEICULO.AsString := SQLCAB.FieldByName('UFVEICULO').AsString;
    CDSCABCGCTRANS.AsString := SQLCAB.FieldByName('CGCTRANS').AsString;
    CDSCABENDTRAS.AsString := SQLCAB.FieldByName('ENDTRAS').AsString;
    CDSCABCIDTRANS.AsString := SQLCAB.FieldByName('CIDTRANS').AsString;
    CDSCABUFTRANS.AsString := SQLCAB.FieldByName('UFTRANS').AsString;
    CDSCABINSTRAS.AsString := SQLCAB.FieldByName('INSTRAS').AsString;
    CDSCABQTDVOLUMES.AsInteger := SQLCAB.FieldByName('QTDVOLUMES').AsInteger;
    CDSCABESPECIE.AsString := SQLCAB.FieldByName('ESPECIE').AsString;
    CDSCABMARCATRANS.AsString := SQLCAB.FieldByName('MARCATRANS').AsString;
    CDSCABNUMERACAO.AsString := SQLCAB.FieldByName('NUMERACAO').AsString;
    CDSCABPESBRT.AsFloat := SQLCAB.FieldByName('PESBRT').AsFloat;
    CDSCABPESLIQ.AsFloat := SQLCAB.FieldByName('PESLIQ').AsFloat;
    CDSCABBCICM.AsFloat := SQLCAB.FieldByName('BCICM').AsFloat;
    CDSCABVLRICM.AsFloat := SQLCAB.FieldByName('VLRICM').AsFloat;
    CDSCABBCICMST.AsFloat := SQLCAB.FieldByName('BCICMST').AsFloat;
    CDSCABVLRICMST.AsFloat := SQLCAB.FieldByName('VLRICMST').AsFloat;
    CDSCABVLRPIS.AsFloat := SQLCAB.FieldByName('VLRPIS').AsFloat;
    CDSCABVLRTOTPRO.AsFloat := SQLCAB.FieldByName('VLRTOTPRO').AsFloat;
    CDSCABVLRFRETE.AsFloat := SQLCAB.FieldByName('VLRFRETE').AsFloat;
    CDSCABVLRSEGURO.AsFloat := SQLCAB.FieldByName('VLRSEGURO').AsFloat;
    CDSCABVLRDES.AsFloat := SQLCAB.FieldByName('VLRDES').AsFloat;
    CDSCABVLROUTDESP.AsFloat := SQLCAB.FieldByName('VLROUTDESP').AsFloat;
    CDSCABVLRCOFINS.AsFloat := SQLCAB.FieldByName('VLRCOFINS').AsFloat;
    CDSCABVLRTOTNOT.AsFloat := SQLCAB.FieldByName('VLRTOTNOT').AsFloat;
    CDSCABTOTIBPT.AsFloat := SQLCAB.FieldByName('TOTIBPT').AsFloat;
    CDSCABINDIC_CF.AsString := SQLCAB.FieldByName('INDIC_CF').AsString;
    CDSCABINDIC_PRESENCA.AsString := SQLCAB.FieldByName('INDIC_PRESENCA').AsString;
    CDSCABTOTDESONERADO.AsFloat := SQLCAB.FieldByName('TOTDESONERADO').AsFloat;

    CDSCABOB1FAT.AsString := SQLCAB.FieldByName('OB1FAT').AsString;
    CDSCABOB2FAT.AsString := SQLCAB.FieldByName('OB2FAT').AsString;
    CDSCABOB3FAT.AsString := SQLCAB.FieldByName('OB3FAT').AsString;
    CDSCABOB4FAT.AsString := SQLCAB.FieldByName('OB4FAT').AsString;
    CDSCABOB5FAT.AsString := SQLCAB.FieldByName('OB5FAT').AsString;
    CDSCABOB6FAT.AsString := SQLCAB.FieldByName('OB6FAT').AsString;
    CDSCABOB7FAT.AsString := SQLCAB.FieldByName('OB7FAT').AsString;
    CDSCABOB8FAT.AsString := SQLCAB.FieldByName('OB8FAT').AsString;

    CDSCABTOT_FCPUFDEST.AsFloat := SQLCAB.FieldByName('TOT_FCPUFDEST').AsFloat;
    CDSCABTOT_ICMSUFDEST.AsFloat := SQLCAB.FieldByName('TOT_ICMSUFDEST').AsFloat;
    CDSCABTOT_ICMSUFREMET.AsFloat := SQLCAB.FieldByName('TOT_ICMSUFREMET').AsFloat;

    { EdObsFat.MaxLength :=  SQLCAB.FieldByName('OB1FAT').Size;
      DBEdit19.MaxLength := SQLCAB.FieldByName('OB2FAT').Size;
      DBEdit20.MaxLength := SQLCAB.FieldByName('OB3FAT').Size;
      DBEdit21.MaxLength := SQLCAB.FieldByName('OB4FAT').Size;
      DBEdit22.MaxLength := SQLCAB.FieldByName('OB5FAT').Size;
      DBEdit23.MaxLength := SQLCAB.FieldByName('OB6FAT').Size;
      DBEdit24.MaxLength := SQLCAB.FieldByName('OB7FAT').Size;
      DBEdit25.MaxLength := SQLCAB.FieldByName('OB8FAT').Size;}

    EdObsFat.MaxLength := 80;
    DBEdit19.MaxLength := 80;
    DBEdit20.MaxLength := 80;
    DBEdit21.MaxLength := 80;
    DBEdit22.MaxLength := 80;
    DBEdit23.MaxLength := 80;
    DBEdit24.MaxLength := 80;
    DBEdit25.MaxLength := 80;

    CDSCABPLACAVEICULO.AsString := SQLCAB.FieldByName('PLACAVEICULO').AsString;
    CDSCABUFVEICULO.AsString := SQLCAB.FieldByName('UFVEICULO').AsString;
    CDSCABENDTRAS.AsString := SQLCAB.FieldByName('ENDTRAS').AsString;
    CDSCABUFTRANS.AsString := SQLCAB.FieldByName('UFTRANS').AsString;
    CDSCABINSTRAS.AsString := SQLCAB.FieldByName('INSTRAS').AsString;
    CDSCABCHAVEACE.AsString := SQLCAB.FieldByName('CHAVEACE').AsString;
    CDSCABFONCLI.AsString := SQLCAB.FieldByName('FONCLI').AsString;
    CDSCABMARCATRANS.AsString := SQLCAB.FieldByName('MARCATRANS').AsString;
    CDSCABNOMPAI.AsString := SQLCAB.FieldByName('NOMPAI').AsString;
    CDSCABID_FINPAI.Value := SQLCAB.FieldByName('ID_FINPAI').Value;
    CDSCABINSSTEMP.AsString := SQLCAB.FieldByName('INSSTEMP').AsString;
    CDSCABESPECIE.AsString := SQLCAB.FieldByName('ESPECIE').AsString;
    CDSCABHRESAIDA.AsString := SQLCAB.FieldByName('HRESAIDA').AsString;

    CDSCAB.Post;
  end;

  BuscaItem_FG(CDSCABCODEMP.AsString, QuotedStr(FormatDateTime('yyyy-mm-dd', CDSCABDTERES.asDateTime)), CDSCABNUMRES.AsString, '');

  CarregaCombos(CDSCABCODEMP.AsString);

end;

function TFrmEditNfe.BuscaItem_FG(CODEMP, DTEGER, NUMGER,
  SEQGE2: string): integer;
begin
  SQLITE.Active := False;

  SQLITE.SQL.TEXT :=
    'SELECT '
    + _BR + ' FG2.codclp AS CODCLP, '
    + _BR + ' FG2.codgru AS CODGRU, '
    + _BR + ' FG2.codsub AS CODSUB, '
    + _BR + ' FG2.codpro AS CODPRO, '
    + _BR + ' FG2.vlrimpii AS VLRIMP, '
    + _BR + ' FG2.CODEMP AS CODEMP, '
    + _BR + ' FG2.codclp||FG2.codgru||FG2.codsub||FG2.codpro AS PRODUTO, '
    + _BR + ' Coalesce(PRO.dscpro, FG2.DesGe2) AS DESCRICAOPRO, '
    + _BR + ' FG2.ObsGe2 AS DESC2, '
    + _BR + ' FG2.NUMGER AS NUMRES, '
    + _BR + ' FG2.NROGE2 AS NROPE2, '
    + _BR + ' FG2.DTEGER AS DTERES, '
    + _BR + ' 0 AS SEQLIB, '
    + _BR + ' FG2.SEQGE2 AS SEQPE2, '
    + _BR + ' FG2.clsipi AS NCM, '
    + _BR + ' FG2.codst1 AS ORIG, '
    + _BR + ' FG2.codst2 AS CSTICMS, '
    + _BR + ' FG2.codcfo AS CFOP, '
    + _BR + ' FG2.codund AS UNIDADE, '
    + _BR + ' FG2.QTPGE2 AS QUANTIDADE, '
    + _BR + ' FG2.vluge2 AS VALUNITARIO, '
    + _BR + ' FG2.TOTDESCINC AS VALDESC, '
    //+ _BR + ' FG2.TOTGE2 AS VALLIQ, '
  + _BR + ' FG2.TOTITE AS VALLIQ, '
    + _BR + ' FG2.basicm AS BASICMS, '
    + _BR + ' FG2.icmge2 AS ALIQICMS, '
    + _BR + ' FG2.toticm AS VALICMS, '
    + _BR + ' FG2.ipige2 AS ALIQIPI, '
    + _BR + ' FG2.totipi AS VALIPI, '
    + _BR + ' FG2.totsub AS VALSUB, '
    + _BR + ' FG2.bassub AS BASESUB, '
    + _BR + ' FG2.mrgsub as MVA, '
    + _BR + ' FG2.aliqpis PERPIS, '
    + _BR + ' FG2.aliqcof PERCOF, '
    + _BR + ' FG2.baspis, '
    + _BR + ' FG2.bascof, '
    + _BR + ' FG2.totpis, '
    + _BR + ' FG2.TOTCOF, '
    + _BR + ' FG2.basipi, '
    + _BR + ' FG2.CSTIPI, '
    + _BR + ' FG2.CSTPIS, '
    + _BR + ' FG2.CSTCOF, '
    + _BR + ' FG2.TOTFRT, '
    + _BR + ' FG2.TOTSEG, '
    + _BR + ' FG2.ICMSUB as ALIQSUB, '
    + _BR + ' FG2.TOTOUTDESP, '

  + _BR + ' FG2.TOTDESONERADO, '
    + _BR + ' FG2.CODDESONERACAO , '

  + _BR + ' FG2.TOTIBPT, '
    + _BR + ' FG2.CEST, '

  + _BR + ' FG2.BAS_UFDEST, '
    + _BR + ' FG2.ALIQ_FCPUFDEST, '
    + _BR + ' FG2.ALIQ_ICMSUFDEST, '
    + _BR + ' FG2.ALIQ_ICMSINTER, '
    + _BR + ' FG2.ALIQ_ICMSINTERPART, '
    + _BR + ' FG2.TOT_FCPUFDEST, '
    + _BR + ' FG2.TOT_ICMSUFDEST, '
    + _BR + ' FG2.TOT_ICMSUFREMET '

  + _BR + ' FROM fatge2 FG2 '
    + _BR + ' LEFT OUTER JOIN estpro PRO ON '
    + _BR + '  FG2.codclp = PRO.codclp AND '
    + _BR + '  FG2.codgru = PRO.codgru AND '
    + _BR + '  FG2.codsub = PRO.codsub AND '
    + _BR + '  FG2.codpro = PRO.codpro '
    + _BR + ' LEFT OUTER JOIN fatger FG ON '
    + _BR + '  FG2.codemp = FG.codemp AND '
    + _BR + '  FG2.dteger = FG.dteger AND '
    + _BR + '  FG2.numger = FG.numger '
    + _BR + 'WHERE FG2.codemp = ' + CODEMP
    + _BR + ' and FG2.NUMGER = ' + NUMGER
    + _BR + ' and FG2.DTEGER = ' + DTEGER;

  SQLITE.Active := True;

  SQLITE.First;
  SQLITE.Last;
  SQLITE.First;

  cdsProd.EmptyDataSet;

  if SQLITE.RecordCount > 0 then
  begin
    SQLITE.first;

    while not SQLITE.eof do
    begin
      CDSPROD.Append;
      CDSPRODCODCLP.AsString := SQLITE.FieldByName('CODCLP').AsString;
      CDSPRODCODEMP.AsString := SQLITE.FieldByName('CODEMP').AsString;
      CDSPRODCODGRU.AsString := SQLITE.FieldByName('CODGRU').AsString;
      CDSPRODCODSUB.AsString := SQLITE.FieldByName('CODSUB').AsString;
      CDSPRODCODPRO.AsString := SQLITE.FieldByName('CODPRO').AsString;
      CDSPRODPRODUTO.AsString := SQLITE.FieldByName('PRODUTO').AsString;
      CDSPRODDESCRICAOPRO.AsString := SQLITE.FieldByName('DESCRICAOPRO').AsString;

      if not SQLITE.FieldByName('VLRIMP').IsNull then
        CDSPRODVLRIMP.AsFloat := SQLITE.FieldByName('VLRIMP').AsFloat
      else
        CDSPRODVLRIMP.AsFloat := 0;

      CDSPRODNCM.AsString := SQLITE.FieldByName('NCM').AsString;

      CDSPRODALIQSUB.AsFloat := SQLITE.FieldByName('ALIQSUB').AsFloat;

      CDSPRODNUMRES.AsInteger := SQLITE.FieldByName('NUMRES').AsInteger;
      CDSPRODDTERES.value := SQLITE.FieldByName('DTERES').value;
      CDSPRODSEQLIB.AsInteger := SQLITE.FieldByName('SEQLIB').AsInteger;
      CDSPRODSEQPE2.AsInteger := SQLITE.FieldByName('SEQPE2').AsInteger;

      //CDSPRODSTICMS.AsString := SQLITE.FieldByName('STICMS').AsString;
      CDSPRODNCM.AsString := SQLITE.FieldByName('NCM').AsString;
      CDSPRODORIG.AsString := SQLITE.FieldByName('ORIG').AsString;
      CDSPRODCSTICMS.AsString := SQLITE.FieldByName('CSTICMS').AsString;
      CDSPRODCFOP.AsString := SQLITE.FieldByName('CFOP').AsString;
      CDSPRODUNIDADE.AsString := SQLITE.FieldByName('UNIDADE').AsString;
      CDSPRODQUANTIDADE.AsFloat := SQLITE.FieldByName('QUANTIDADE').AsFloat;
      CDSPRODVALUNITARIO.AsFloat := SQLITE.FieldByName('VALUNITARIO').AsFloat;
      CDSPRODVALDESC.AsFloat := SQLITE.FieldByName('VALDESC').AsFloat;
      CDSPRODVALLIQ.AsFloat := SQLITE.FieldByName('VALLIQ').AsFloat;
      CDSPRODBASICMS.AsFloat := SQLITE.FieldByName('BASICMS').AsFloat;
      CDSPRODALIQICMS.AsFloat := SQLITE.FieldByName('ALIQICMS').AsFloat;
      CDSPRODVALICMS.AsFloat := SQLITE.FieldByName('VALICMS').AsFloat;
      CDSPRODALIQIPI.AsFloat := SQLITE.FieldByName('ALIQIPI').AsFloat;
      CDSPRODVALIPI.AsFloat := SQLITE.FieldByName('VALIPI').AsFloat;
      CDSPRODVALSUB.AsFloat := SQLITE.FieldByName('VALSUB').AsFloat;
      CDSPRODBASESUB.AsFloat := SQLITE.FieldByName('BASESUB').AsFloat;
      CDSPRODDESC2.AsString := SQLITE.FieldByName('DESC2').AsString;
      CDSPRODNROPE2.AsInteger := SQLITE.FieldByName('NROPE2').AsInteger;

      CDSPRODMVA.AsString := SQLITE.FieldByName('MVA').AsString;
      CDSPRODPERPIS.AsString := SQLITE.FieldByName('PERPIS').AsString;
      CDSPRODPERCOF.AsString := SQLITE.FieldByName('PERCOF').AsString;
      CDSPRODbaspis.AsString := SQLITE.FieldByName('baspis').AsString;
      CDSPRODbascof.AsString := SQLITE.FieldByName('bascof').AsString;
      CDSPRODtotpis.AsString := SQLITE.FieldByName('totpis').AsString;
      CDSPRODTOTCOF.AsString := SQLITE.FieldByName('TOTCOF').AsString;
      CDSPRODbasipi.AsString := SQLITE.FieldByName('basipi').AsString;
      CDSPRODCSTIPI.AsString := SQLITE.FieldByName('CSTIPI').AsString;
      CDSPRODCSTPIS.AsString := SQLITE.FieldByName('CSTPIS').AsString;
      CDSPRODCSTCOF.AsString := SQLITE.FieldByName('CSTCOF').AsString;

      CDSPRODTOTFRT.AsFloat := SQLITE.FieldByName('TOTFRT').AsFloat;
      CDSPRODTOTSEG.AsFloat := SQLITE.FieldByName('TOTSEG').AsFloat;
      CDSPRODTOTOUTDESP.AsFloat := SQLITE.FieldByName('TOTOUTDESP').AsFloat;
      CDSPRODTOTIBPT.AsFloat := SQLITE.FieldByName('TOTIBPT').AsFloat;
      CDSPRODCEST.AsString := SQLITE.FieldByName('CEST').AsString;

      CDSPRODTOTDESONERADO.AsFloat := SQLITE.FieldByName('TOTDESONERADO').AsFloat;
      CDSPRODCODDESONERACAO.AsString := SQLITE.FieldByName('CODDESONERACAO').AsString;

      CDSPRODBAS_UFDEST.AsFloat := SQLITE.FieldByName('BAS_UFDEST').AsFloat;
      CDSPRODALIQ_FCPUFDEST.AsFloat := SQLITE.FieldByName('ALIQ_FCPUFDEST').AsFloat;
      CDSPRODALIQ_ICMSUFDEST.AsFloat := SQLITE.FieldByName('ALIQ_ICMSUFDEST').AsFloat;
      CDSPRODALIQ_ICMSINTER.AsFloat := SQLITE.FieldByName('ALIQ_ICMSINTER').AsFloat;
      CDSPRODALIQ_ICMSINTERPART.AsFloat := SQLITE.FieldByName('ALIQ_ICMSINTERPART').AsFloat;
      CDSPRODTOT_FCPUFDEST.AsFloat := SQLITE.FieldByName('TOT_FCPUFDEST').AsFloat;
      CDSPRODTOT_ICMSUFDEST.AsFloat := SQLITE.FieldByName('TOT_ICMSUFDEST').AsFloat;
      CDSPRODTOT_ICMSUFREMET.AsFloat := SQLITE.FieldByName('TOT_ICMSUFREMET').AsFloat;

      CDSPROD.Post;

      SQLITE.Next;

    end;

  end;

  CDSPROD.First;

end;

procedure TFrmEditNfe.UpdateFG;
var
  dataSaida: string;
  cstpis, cstcof, cstipi: string;
begin
  SQLBUS.Active := False;

  if ALT_VISU = 'ALT' then
  begin
    SQLBUS.Active := false;
    SQLBUS.SQL.Text := 'Update FATGER Set libera_resp =  ' + QuotedStr('S')
      + ', libera_codusu = ' + IntToStr(fmManGDB.VCODUSU)
      + ', LIBERA_DTEHRE = (select Cast( ' + QuotedStr('NOW') + ' as Date) From RDB$DATABASE) '
      + ' WHERE (CODEMP = ' + CDSCABCODEMP.AsString + ') '
      + ' AND (NUMGER = ' + CDSCABNUMRES.AsString + ') '
      + ' AND (DTEGER = ' + QuotedStr(FormatDateTime('yyyy-mm-dd', CDSCABDTERES.AsDateTime)) + ')';

    SQLBUS.ExecSQL;

    CDSPROD.First;

    SQLBUS.Active := false;

    while not CDSPROD.Eof do
    begin

      ValidacaoProdutos;

      cstpis := QuotedStr(CDSPRODCSTPIS.AsString);
      cstcof := QuotedStr(CDSPRODCSTCOF.AsString);
      cstipi := QuotedStr(CDSPRODCSTIPI.AsString);

      if (cstpis = QuotedStr('')) then
        cstpis := ' null';
      if (cstcof = QuotedStr('')) then
        cstcof := ' null';
      if (cstipi = QuotedStr('')) then
        cstipi := ' null';

      SQLBUS.SQL.Clear;
      SQLBUS.SQL.Text :=
        ' UPDATE FatGe2 '
        + ' SET '
        + ' OBSGE2 =  ' + QuotedStr(CDSPRODDESC2.AsString) + ',' + _BR
        + ' vlrimpii =  ' + formataReal(CDSPRODVLRIMP.AsFloat) + ',' + _BR
        + ' CLSIPI =  ' + QuotedStr(CDSPRODNCM.AsString) + ',' + _BR
        + ' CODST1 =  ' + QuotedStr(CDSPRODORIG.AsString) + ',' + _BR
        + ' CODST2 =  ' + QuotedStr(CDSPRODCSTICMS.AsString) + ',' + _BR
        + ' CODCFO =  ' + QuotedStr(CDSPRODCFOP.AsString) + ',' + _BR
        + ' CODUND =  ' + QuotedStr(CDSPRODUNIDADE.AsString) + ',' + _BR
        + ' QTPGE2 =  ' + formataReal(CDSPRODQUANTIDADE.AsFloat, 3) + ',' + _BR
        + ' VLUGE2 =  ' + StringReplace(StringReplace(FormatFloat('0.0000', CDSPRODVALUNITARIO.AsFloat), '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll]) +
        ',' + _BR
        + ' TOTDESCINC =  ' + formataReal(CDSPRODVALDESC.AsFloat) + ',' + _BR
        //+ ' TOTGE2 =  ' + formataReal(CDSPRODVALLIQ.AsFloat) + ',' + _BR
      + ' TOTITE =  ' + formataReal(CDSPRODVALLIQ.AsFloat) + ',' + _BR
        + ' BASICM =  ' + formataReal(CDSPRODBASICMS.AsFloat) + ',' + _BR
        + ' ICMGE2 =  ' + formataReal(CDSPRODALIQICMS.AsFloat) + ',' + _BR
        + ' TOTICM =  ' + formataReal(CDSPRODVALICMS.AsFloat) + ',' + _BR
        + ' IPIGE2 =  ' + formataReal(CDSPRODALIQIPI.AsFloat) + ',' + _BR
        + ' TOTIPI =  ' + formataReal(CDSPRODVALIPI.AsFloat) + ',' + _BR
        + ' TOTSUB =  ' + formataReal(CDSPRODVALSUB.AsFloat) + ',' + _BR
        + ' BASSUB =  ' + formataReal(CDSPRODBASESUB.AsFloat) + ',' + _BR
        + ' MRGSUB =  ' + formataReal(CDSPRODMVA.AsFloat) + ',' + _BR
        + ' PERPIS =  ' + formataReal(CDSPRODPERPIS.AsFloat) + ',' + _BR
        + ' PERCOF =  ' + formataReal(CDSPRODPERCOF.AsFloat) + ',' + _BR

      + ' ALIQPIS =  ' + formataReal(CDSPRODPERPIS.AsFloat) + ',' + _BR
        + ' ALIQCOF =  ' + formataReal(CDSPRODPERCOF.AsFloat) + ',' + _BR

      + ' BASPIS =  ' + formataReal(CDSPRODBASPIS.AsFloat) + ',' + _BR
        + ' BASCOF =  ' + formataReal(CDSPRODBASCOF.AsFloat) + ',' + _BR
        + ' TOTPIS =  ' + formataReal(CDSPRODTOTPIS.AsFloat) + ',' + _BR
        + ' TOTCOF =  ' + formataReal(CDSPRODTOTCOF.AsFloat) + ',' + _BR
        + ' BASIPI =  ' + formataReal(CDSPRODBASIPI.AsFloat) + ',' + _BR
        + ' ICMSUB =  ' + formataReal(CDSPRODALIQSUB.AsFloat) + ',' + _BR
        + ' CSTIPI =  ' + CSTIPI + ',' + _BR
        + ' CSTPIS =  ' + CSTPIS + ',' + _BR
        + ' CSTCOF =  ' + CSTCOF + ',' + _BR
        + ' TOTFRT =  ' + formataReal(CDSPRODTOTFRT.AsFloat) + ',' + _BR
        + ' TOTSEG =  ' + formataReal(CDSPRODTOTSEG.AsFloat) + ',' + _BR
        + ' TOTIBPT = ' + FormataReal(CDSPRODTOTIBPT.AsFloat) + ',' + _BR
        + ' CEST = ' + quotedStr(CDSPRODCEST.AsString) + ',' + _BR

      + ' BAS_UFDEST = ' + formataReal(CDSPRODBAS_UFDEST.AsFloat) + ',' + _BR
        + ' ALIQ_FCPUFDEST = ' + formataReal(CDSPRODALIQ_FCPUFDEST.AsFloat) + ',' + _BR
        + ' ALIQ_ICMSUFDEST = ' + formataReal(CDSPRODALIQ_ICMSUFDEST.AsFloat) + ',' + _BR
        + ' ALIQ_ICMSINTER = ' + formataReal(CDSPRODALIQ_ICMSINTER.AsFloat) + ',' + _BR
        + ' ALIQ_ICMSINTERPART = ' + formataReal(CDSPRODALIQ_ICMSINTERPART.AsFloat) + ',' + _BR
        + ' TOT_FCPUFDEST = ' + formataReal(CDSPRODTOT_FCPUFDEST.AsFloat) + ',' + _BR
        + ' TOT_ICMSUFDEST = ' + formataReal(CDSPRODTOT_ICMSUFDEST.AsFloat) + ',' + _BR
        + ' TOT_ICMSUFREMET = ' + formataReal(CDSPRODTOT_ICMSUFREMET.AsFloat) + ',' + _BR

      + ' TOTDESONERADO =  ' + formataReal(CDSPRODTOTDESONERADO.AsFloat) + ',' + _BR

      + IfThen(Trim(CDSPRODCODDESONERACAO.AsString) <> '', ' CODDESONERACAO = '
        + QuotedStr(CDSPRODCODDESONERACAO.AsString) + ',' + _BR, 'CODDESONERACAO = 0 ' + ',' + _BR)

      + ' TOTOUTDESP =  ' + formataReal(CDSPRODTOTOUTDESP.AsFloat) + _BR

      + ' WHERE NUMGER =  ' + QuotedStr(CDSCABNUMRES.AsString) + ' AND ' + _BR
        + ' DTEGER =  ' + QuotedStr(FormatDateTime('yyyy-mm-dd', CDSPRODDTERES.AsDateTime)) + ' AND' + _BR
        + ' SEQGE2 =  ' + QuotedStr(CDSPRODSEQPE2.AsString) + ' AND' + _BR
        + ' CODEMP =  ' + CDSPRODCODEMP.AsString;

      SQLBUS.ExecSQL;

      CDSPROD.Next;

    end;

    if (CDSCABDTEENTSAI.Value <= 1) then
      dataSaida := ' DTESDA = NULL, '
    else
      dataSaida := ' DTESDA = ' + QuotedStr(FormatDateTime('yyyy-mm-dd', CDSCABDTEENTSAI.AsDateTime)) + ',';

    SQLBUS.SQL.Clear;
    SQLBUS.SQL.Text :=
      ' UPDATE FATGER '
      + ' SET '
      + ' MODPFA = ' + QuotedStr(CDSCABNATOPE.AsString) + ',' + _BR
      + ' DTEGER = ' + QuotedStr(FormatDateTime('yyyy-mm-dd', CDSCABDTEEMISSAO.AsDateTime)) + ',' + _BR
      + ' INSSUB = ' + QuotedStr(CDSCABINSSTEMP.AsString) + ',' + _BR
      + ' NOMENT = ' + QuotedStr(CDSCABNOMCLI.AsString) + ',' + _BR
      + ' CGCCLI = ' + QuotedStr(CDSCABCGCCLI.AsString) + ',' + _BR
      + ' TEFCLI = ' + QuotedStr(CDSCABLOGCLI.AsString) + ',' + _BR
      + ' ENFCLI = ' + QuotedStr(CDSCABENFCLI.AsString) + ',' + _BR
      + ' BAFCLI = ' + QuotedStr(CDSCABBAFCLI.AsString) + ',' + _BR
      + ' CEFCLI = ' + QuotedStr(CDSCABCEFCLI.AsString) + ',' + _BR
      + dataSaida + _BR
      + ' CIFCLI = ' + QuotedStr(CDSCABCIFCLI.AsString) + ',' + _BR
      + ' UFFCLI = ' + QuotedStr(CDSCABUFFCLI.AsString) + ',' + _BR
      + ' INSCLI = ' + QuotedStr(CDSCABINSCLI.AsString) + ',' + _BR
      + ' HRESDA = ' + QuotedStr(CDSCABHRESAIDA.AsString) + ',' + _BR
      + ' NOMTRA = ' + QuotedStr(CDSCABNOMTRA.AsString) + ',' + _BR
      + ' TIPFRT = ' + QuotedStr(CDSCABFRTPORCONTA.AsString) + ',' + _BR
      + ' ID_FRETE = ' + QuotedStr(CDSCABFRTPORCONTA.AsString) + ',' + _BR
      + ' PLCTRA = ' + QuotedStr(CDSCABPLACAVEICULO.AsString) + ',' + _BR
      + ' UFEPLC = ' + QuotedStr(CDSCABUFVEICULO.AsString) + ',' + _BR
      + ' CGCTRA = ' + QuotedStr(CDSCABCGCTRANS.AsString) + ',' + _BR
      + ' CIDTRA = ' + QuotedStr(CDSCABCIDTRANS.AsString) + ',' + _BR
      + ' UFETRA = ' + QuotedStr(CDSCABUFTRANS.AsString) + ',' + _BR
      + ' INSTRA = ' + QuotedStr(CDSCABINSTRAS.AsString) + ',' + _BR
      + ' ALTVOL = ' + QuotedStr(CDSCABQTDVOLUMES.AsString) + ',' + _BR
      + ' ESPGER = ' + QuotedStr(CDSCABESPECIE.AsString) + ',' + _BR
      + ' MARGER = ' + QuotedStr(CDSCABMARCATRANS.AsString) + ',' + _BR
      + ' nroger = ' + QuotedStr(CDSCABNUMERACAO.AsString) + ',' + _BR
      + ' INFBRT = ' + formataReal(CDSCABPESBRT.AsFloat, 3) + ',' + _BR
      + ' INFLIQ = ' + formataReal(CDSCABPESLIQ.AsFloat, 3) + ',' + _BR
      + ' BASIC1 = ' + formataReal(CDSCABBCICM.AsFloat) + ',' + _BR
      + ' BASICM = ' + formataReal(CDSCABBCICM.AsFloat) + ',' + _BR
      + ' TOTICM = ' + formataReal(CDSCABVLRICM.AsFloat) + ',' + _BR
      + ' TOTIC1 = ' + formataReal(CDSCABVLRICM.AsFloat) + ',' + _BR
      + ' BASSUB = ' + formataReal(CDSCABBCICMST.AsFloat) + ',' + _BR
      + ' BASSU1 = ' + formataReal(CDSCABBCICMST.AsFloat) + ',' + _BR
      + ' TOTSUB = ' + formataReal(CDSCABVLRICMST.AsFloat) + ',' + _BR
      + ' TOTSU1 = ' + formataReal(CDSCABVLRICMST.AsFloat) + ',' + _BR
      + ' TOTPIS = ' + formataReal(CDSCABVLRPIS.AsFloat) + ',' + _BR
      + ' totger = ' + formataReal(CDSCABVLRTOTNOT.AsFloat) + ',' + _BR
      + ' TOTGE1 = ' + formataReal(CDSCABVLRTOTNOT.AsFloat) + ',' + _BR
      + ' TOTIT1 = ' + formataReal(CDSCABVLRTOTPRO.AsFloat) + ',' + _BR
      + ' TOTFRT = ' + formataReal(CDSCABVLRFRETE.AsFloat) + ',' + _BR
      + ' TOTIPI = ' + formataReal(CDSCABVLRIPI.AsFloat) + ',' + _BR
      + ' TOTIP1 = ' + formataReal(CDSCABVLRIPI.AsFloat) + ',' + _BR
      + ' TOTSEG = ' + formataReal(CDSCABVLRSEGURO.AsFloat) + ',' + _BR
      + ' TOTDESCINC = ' + formataReal(CDSCABVLRDES.AsFloat) + ',' + _BR
      + ' TOTOUTDESP = ' + formataReal(CDSCABVLROUTDESP.AsFloat) + ',' + _BR
      + ' TOTIBPT = ' + FormataReal(CDSCABTOTIBPT.AsFloat) + ',' + _BR
      + ' TOTCOF = ' + formataReal(CDSCABVLRCOFINS.AsFloat) + ',' + _BR
      + ' TOTGER = ' + formataReal(CDSCABVLRTOTNOT.AsFloat) + ',' + _BR

    + ' TOTDESONERADO = ' + formataReal(CDSCABTOTDESONERADO.AsFloat) + ',' + _BR

    + IfThen(Trim(CDSCABINDIC_CF.AsString) <> '', ' INDIC_CF = '
      + QuotedStr(CDSCABINDIC_CF.AsString) + ',' + _BR, '')

    + IfThen(Trim(CDSCABINDIC_PRESENCA.AsString) <> '', ' INDIC_PRESENCA = '
      + QuotedStr(CDSCABINDIC_PRESENCA.AsString) + ',' + _BR, '')

    + ' OB1GER = ' + QuotedStr(AnsiUpperCase(CDSCABOB1FAT.AsString)) + ',' + _BR
      + ' OB2GER = ' + QuotedStr(AnsiUpperCase(CDSCABOB2FAT.AsString)) + ',' + _BR
      + ' OB3GER = ' + QuotedStr(AnsiUpperCase(CDSCABOB3FAT.AsString)) + ',' + _BR
      + ' OB4GER = ' + QuotedStr(AnsiUpperCase(CDSCABOB4FAT.AsString)) + ',' + _BR
      + ' OB5GER = ' + QuotedStr(AnsiUpperCase(CDSCABOB5FAT.AsString)) + ',' + _BR
      + ' OB6GER = ' + QuotedStr(AnsiUpperCase(CDSCABOB6FAT.AsString)) + ',' + _BR
      + ' OB7GER = ' + QuotedStr(AnsiUpperCase(CDSCABOB7FAT.AsString)) + ',' + _BR
      + ' OB8GER = ' + QuotedStr(AnsiUpperCase(CDSCABOB8FAT.AsString)) + ',' + _BR
      + ' TOTIMPII = ' + formataReal(CDSCABVLRIMPI.AsFloat) + ',' + _BR
      + ' ENDTRA = ' + QuotedStr(AnsiUpperCase(CDSCABENDTRAS.AsString)) + ',' + _BR

    + ' TOT_FCPUFDEST = ' + formataReal(CDSCABTOT_FCPUFDEST.AsFloat) + ',' + _BR
      + ' TOT_ICMSUFDEST = ' + formataReal(CDSCABTOT_ICMSUFDEST.AsFloat) + ',' + _BR
      + ' TOT_ICMSUFREMET = ' + formataReal(CDSCABTOT_ICMSUFREMET.AsFloat) + _BR
      + ' WHERE CODEMP = ' + CDSCABCODEMP.AsString
      + ' AND NUMGER = ' + CDSCABNUMRES.AsString
      + ' AND DTEGER = ' + QuotedStr(FormatDateTime('yyyy-mm-dd', CDSCABDTERES.AsDateTime));

    SQLBUS.ExecSQL;

    SQLBUS.Active := False;
  end;

  Self.Close;
end;

procedure TFrmEditNfe.CarregaCombos(CODEMP: string);
var
  verificador: string;
begin

  with SQLBUS, SQL do
  begin
    close;
    text :=
      'select codst1 from estst1';
    open;

    First;
    while not Eof do
    begin
      CBOrigem.Items.Add(SQLBUS.FieldByName('codst1').AsString);
      Next;
    end;
  end;

  verificador := fmManGDB.BuscaSimples('GerEmp', 'TipEmp', 'CodEmp = ' + CODEMP);

  {with SQLBUS, SQL do
  begin
    close;
    text :=
      'select codst2 from estst2';
    open;

    first;
    while not Eof do
    begin
      if (verificador = 'Simples Nacional') then
      begin
        if (Length(SQLBUS.FieldByName('CodSt2').AsString) = 3) then
          CBSitTrib.Items.Add(SQLBUS.FieldByName('codst2').AsString);
      end
      else
        if (Length(SQLBUS.FieldByName('CodSt2').AsString) = 2) then
          CBSitTrib.Items.Add(SQLBUS.FieldByName('codst2').AsString);
      Next;
    end;
  end;}

  try
    if (StrToIntDef(Copy(CDSPRODCFOP.AsString, 0, 1),0) in [1, 2, 3]) then
      lbldanfe.Text := '0 - Entrada'
    else
      lbldanfe.Text := '1 - Saída';
  except

  end;

  //Preencher combo da CST do IPI
 {SQLBUS.Active := False;
 SQLBUS.SQL.Text := 'select signfe from estsip order by signfe';
 SQLBUS.Active := True;

 SQLBUS.First;
 while not SQLBUS.Eof do
 begin
   CbCstIpi.Items.Add(SQLBUS.FieldByName('signfe').AsString);
   SQLBUS.Next;
 end;}

  //Preencher o combo da CSTPIS
 {SQLBUS.Active := False;
 SQLBUS.SQL.Text := 'select signfe from estpis order by signfe';
 SQLBUS.Active := True;

 while not SQLBUS.Eof do
 begin
   CbCstPis.Items.Add(SQLBUS.FieldByName('signfe').AsString);
   SQLBUS.Next;
 end; }

  //Preenchar combo da CSTCOFINS
 {SQLBUS.Active := False;
 SQLBUS.SQL.Text := 'select signfe from estcof order by signfe';
 SQLBUS.Active := True;
 while not SQLBUS.Eof do
 begin
   CbCstCof.Items.Add(SQLBUS.FieldByName('signfe').AsString);
   SQLBUS.Next;
 end;}
end;

function TFrmEditNfe.ShowModal(CODEMP, ORIGTB, NRONFS: string;
  DtePed: TDateTime; ALT_VISU: string; NUMPED: string; SEQLIB: string): integer;
begin
  Self.origtb := ORIGTB;

  Self.ALT_VISU := ALT_VISU;

  if Self.ALT_VISU = 'VISU' then
  begin
    Self.Caption := 'Emerion - Editar NFe         Modo: Visualização';
    setReadOnly;
  end
  else
  begin
    Self.Caption := 'Emerion - Editar NFe        Modo: Alteração';
  end;

  if ORIGTB = 'FP' then
  begin
    BuscaNF_FP(CODEMP, NUMPED, QuotedStr(FormatDateTime('yyyy-mm-dd', DTEPED)), SEQLIB);
  end;

  if ORIGTB = 'FG' then
  begin
    BuscaNF_FG(CODEMP, NUMPED, QuotedStr(FormatDateTime('yyyy-mm-dd', DTEPED)));
  end;

  if ORIGTB = 'LF' then
  begin
    BuscaNf_LJ(NUMPED);
  end;

  inherited ShowModal;

end;

procedure TFrmEditNfe.AtualizaCombos;
var
  CstIpi, CstPis, CstCof: string;
begin
  if (CDSPRODCSTIPI.AsString <> '') then
    CstIpi := FmManGdb.BuscaSimples('EstSip', 'SigNfe', 'id_estsip = ' + CDSPRODCSTIPI.AsString);
  {if (CDSPRODCSTPIS.AsString <> '') then
    CstPis := FmManGdb.BuscaSimples('EstPis', 'SigNfe', 'id_estpis = ' + CDSPRODCSTPIS.AsString);
  if (CDSPRODCSTCOF.AsString <> '') then
    CstCof := FmManGdb.BuscaSimples('EstCof', 'SigNfe', 'id_estcof = ' + CDSPRODCSTCOF.AsString);}

  {CbCstIpi.Text := CstIpi;
  CbCstPis.Text := CstPis;
  CbCstCof.Text := CstCof;}

end;

procedure TFrmEditNfe.dsProdDataChange(Sender: TObject; Field: TField);
begin
  if (CDSPRODCODPRO.AsString <> '') then
    AtualizaCombos;
end;

procedure TFrmEditNfe.BuscaNf_LJ(ID_LOJFAT: string);
begin
  SqlCab.Active := False;
  SqlCab.Sql.Text :=
    ' SELECT ' + QuotedStr('LJ') + ' as tab,' + _BR +
    '  LJ.nronfs AS NUMNOT, ' + _BR +
    '  LJ.seqnfe AS CHAVEACE, ' + _BR +
    '  LJ.CODEMP, ' + _BR +
    '  0.0 AS TOTIMP, ' + _BR +
    '  LJ.BASIPI, ' + _BR +
    '  LJ.TOTIPI AS TOTIPI, ' + _BR +
    '  LJ.ID_LOJFAT AS NUMRES, ' + _BR +
    '  LJ.DTEPED AS DTERES, ' + _BR +
    '  LJ.SEQLIB AS SEQLIB, ' + _BR +
    '  LJ.modpfa AS NATOPE, ' + _BR +
    '  GE.insemp AS INSEMP, ' + _BR +
    '  LJ.inssub AS INSSTEMP, ' + _BR +
    '  GE.cgcemp AS CGCEMP, ' + _BR +
    '  LJ.nomcli AS NOMCLI, ' + _BR +
    '  LJ.cgccli AS CGCCLI, ' + _BR +
    '  LJ.DTEPED AS DTEEMISSAO, ' + _BR +
    '  LJ.TEFCLI AS LOGCLI,' + _BR +
    '  LJ.ENFCLI AS ENFCLI, ' + _BR +
    '  LJ.BAFCLI AS BAFCLI, ' + _BR +
    '  LJ.CEFCLI AS CEFCLI, ' + _BR +
    '  LJ.dtenfe AS DTEENTSAI, ' + _BR +
    '  LJ.CIFCLI AS CIFCLI, ' + _BR +
    '  CLI.pt1cli||CLI.fo1cli AS FONCLI, ' + _BR +
    '  LJ.UFFCLI AS UFFCLI, ' + _BR +
    '  LJ.inscli AS INSCLI, ' + _BR +
    '  LJ.hrenfe AS HRESAIDA, ' + _BR +
    '  LJ.nomtra AS NOMTRA, ' + _BR +
    '  LJ.tipfrt AS FRTPORCONTA, ' + _BR +
    '  LJ.plctra AS PLACAVEICULO, ' + _BR +
    '  LJ.ufeplc AS UFVEICULO, ' + _BR +
    '  LJ.cgctra AS CGCTRANS, ' + _BR +
    '  LJ.endtra AS ENDTRAS, ' + _BR +
    '  LJ.cidtra AS CIDTRANS, ' + _BR +
    '  LJ.ufetra AS UFTRANS, ' + _BR +
    '  LJ.instra AS INSTRAS, ' + _BR +
    '  LJ.altvol AS QTDVOLUMES, ' + _BR +
    '  LJ.espfat AS ESPECIE, ' + _BR +
    '  LJ.marfat AS MARCATRANS, ' + _BR +
    '  LJ.nrofat AS NUMERACAO, ' + _BR +
    '  LJ.infbrt AS PESBRT, ' + _BR +
    '  LJ.infliq AS PESLIQ, ' + _BR +
    '  LJ.basicm AS BCICM, ' + _BR +
    '  LJ.toticm AS VLRICM, ' + _BR +
    '  LJ.bassub AS BCICMST, ' + _BR +
    '  LJ.totsub AS VLRICMST, ' + _BR +
    '  LJ.totfat AS BASPIS, ' + _BR +
    '  LJ.totpis AS VLRPIS, ' + _BR +
    '  LJ.totger AS VLRTOTNOT, ' + _BR +
    '  LJ.totfrt AS VLRFRETE, ' + _BR +
    '  LJ.totseg AS VLRSEGURO, ' + _BR +
    '  LJ.TOTDESCINC AS VLRDES, ' + _BR +
    '  LJ.TOTOUTDESP AS VLROUTDESP, ' + _BR +
    '  LJ.totfat AS BASCOF, ' + _BR +
    '  LJ.totcof AS VLRCOFINS, ' + _BR +
    '  LJ.totfat AS VLRTOTPRO, ' + _BR +
    '  LJ.TOTIBPT, ' + _BR +
    '  PA.nompai AS NOMPAI, ' + _BR +
    '  CLI.ID_FinPai AS ID_FINPAI, ' + _BR +
    '  LJ.ob1fat AS OB1FAT, ' + _BR +
    '  LJ.ob2fat AS OB2FAT, ' + _BR +
    '  LJ.ob3fat AS OB3FAT, ' + _BR +
    '  LJ.ob4fat AS OB4FAT, ' + _BR +
    '  LJ.ob5fat AS OB5FAT, ' + _BR +
    '  LJ.ob6fat AS OB6FAT, ' + _BR +
    '  LJ.ob7fat AS OB7FAT, ' + _BR +
    '  LJ.ob8fat AS OB8FAT, ' + _BR +
    '  LJ.endtra AS ENDTRANS, ' + _BR +
    '  LJ.TIPPFA, ' + _BR +
    '  LJ.INDIC_CF, ' + _BR +
    '  LJ.TOTDESONERADO, ' + _BR +
    '  LJ.INDIC_PRESENCA ' + _BR +
    ' FROM LojFat LJ ' + _BR +
    ' INNER JOIN geremp GE ON ' + _BR +
    ' LJ.CodEmp = GE.codemp ' + _BR +
    ' INNER JOIN fincli CLI ON ' + _BR +
    ' LJ.codcli = CLI.codcli ' + _BR +
    ' INNER JOIN FINPAI PA ON ' + _BR +
    ' CLI.id_FinPai = PA.ID_FinPai ' + _BR +
    ' WHERE LJ.ID_LOJFAT = ' + ID_LOJFAT;
  SqlCab.Active := True;

  if not SQLCAB.IsEmpty then
  begin
    CDSCAB.EmptyDataSet;
    CDSCAB.Insert;

    CDSCABTAB.AsString := SQLCAB.FieldByName('TAB').AsString;
    //CDSCABSEQLIB.AsString := SQLCAB.FieldByName('SEQLIB').AsString;
    CDSCABNUMNOT.AsInteger := SQLCAB.FieldByName('NUMNOT').AsInteger;
    CDSCABNATOPE.AsString := SQLCAB.FieldByName('NATOPE').AsString;

    CDSCABCODEMP.AsInteger := SQLCAB.FieldByName('CODEMP').AsInteger;

    CDSCABVLRIPI.AsFloat := SQLCAB.FieldByName('TOTIPI').AsFloat;
    CDSCABVLRIPI.AsFloat := SQLCAB.FieldByName('TOTIPI').AsFloat;

    CDSCABNUMRES.AsString := SQLCAB.FieldByName('NUMRES').AsString;
    CDSCABDTERES.AsDateTime := SQLCAB.FieldByName('DTERES').AsDateTime;

    CDSCABINSEMP.AsString := SQLCAB.FieldByName('INSEMP').AsString;
    CDSCABINSSTEMP.AsString := SQLCAB.FieldByName('INSSTEMP').AsString;
    CDSCABCGCEMP.AsString := SQLCAB.FieldByName('CGCEMP').AsString;
    CDSCABNOMCLI.AsString := SQLCAB.FieldByName('NOMCLI').AsString;
    CDSCABCGCCLI.AsString := SQLCAB.FieldByName('CGCCLI').AsString;
    CDSCABDTEEMISSAO.AsDateTime := SQLCAB.FieldByName('DTEEMISSAO').AsdateTime;
    CDSCABLOGCLI.AsString := SQLCAB.FieldByName('LOGCLI').AsString;
    CDSCABENFCLI.AsString := SQLCAB.FieldByName('ENFCLI').AsString;
    CDSCABBAFCLI.AsString := SQLCAB.FieldByName('BAFCLI').AsString;
    CDSCABCEFCLI.AsString := SQLCAB.FieldByName('CEFCLI').AsString;
    CDSCABDTEENTSAI.AsDateTime := SQLCAB.FieldByName('DTEENTSAI').AsdateTime;
    CDSCABCIFCLI.AsString := SQLCAB.FieldByName('CIFCLI').AsString;
    CDSCABFONCLI.AsString := SQLCAB.FieldByName('FONCLI').AsString;
    CDSCABUFFCLI.AsString := SQLCAB.FieldByName('UFFCLI').AsString;
    CDSCABINSCLI.AsString := SQLCAB.FieldByName('INSCLI').AsString;
    CDSCABHRESAIDA.AsString := SQLCAB.FieldByName('HRESAIDA').AsString;
    CDSCABNOMTRA.AsString := SQLCAB.FieldByName('NOMTRA').AsString;
    CDSCABFRTPORCONTA.AsString := SQLCAB.FieldByName('FRTPORCONTA').AsString;
    CDSCABPLACAVEICULO.AsString := SQLCAB.FieldByName('PLACAVEICULO').AsString;
    CDSCABUFVEICULO.AsString := SQLCAB.FieldByName('UFVEICULO').AsString;
    CDSCABCGCTRANS.AsString := SQLCAB.FieldByName('CGCTRANS').AsString;
    CDSCABENDTRAS.AsString := SQLCAB.FieldByName('ENDTRAS').AsString;
    CDSCABCIDTRANS.AsString := SQLCAB.FieldByName('CIDTRANS').AsString;
    CDSCABUFTRANS.AsString := SQLCAB.FieldByName('UFTRANS').AsString;
    CDSCABINSTRAS.AsString := SQLCAB.FieldByName('INSTRAS').AsString;
    CDSCABQTDVOLUMES.AsInteger := SQLCAB.FieldByName('QTDVOLUMES').AsInteger;
    CDSCABESPECIE.AsString := SQLCAB.FieldByName('ESPECIE').AsString;
    CDSCABMARCATRANS.AsString := SQLCAB.FieldByName('MARCATRANS').AsString;
    CDSCABNUMERACAO.AsString := SQLCAB.FieldByName('NUMERACAO').AsString;
    CDSCABPESBRT.AsFloat := SQLCAB.FieldByName('PESBRT').AsFloat;
    CDSCABPESLIQ.AsFloat := SQLCAB.FieldByName('PESLIQ').AsFloat;
    CDSCABBCICM.AsFloat := SQLCAB.FieldByName('BCICM').AsFloat;
    CDSCABVLRICM.AsFloat := SQLCAB.FieldByName('VLRICM').AsFloat;
    CDSCABBCICMST.AsFloat := SQLCAB.FieldByName('BCICMST').AsFloat;
    CDSCABVLRICMST.AsFloat := SQLCAB.FieldByName('VLRICMST').AsFloat;
    CDSCABVLRPIS.AsFloat := SQLCAB.FieldByName('VLRPIS').AsFloat;
    CDSCABVLRTOTPRO.AsFloat := SQLCAB.FieldByName('VLRTOTPRO').AsFloat;
    CDSCABVLRFRETE.AsFloat := SQLCAB.FieldByName('VLRFRETE').AsFloat;
    CDSCABVLRSEGURO.AsFloat := SQLCAB.FieldByName('VLRSEGURO').AsFloat;
    CDSCABVLRDES.AsFloat := SQLCAB.FieldByName('VLRDES').AsFloat;
    CDSCABVLROUTDESP.AsFloat := SQLCAB.FieldByName('VLROUTDESP').AsFloat;
    CDSCABVLRCOFINS.AsFloat := SQLCAB.FieldByName('VLRCOFINS').AsFloat;
    CDSCABVLRTOTNOT.AsFloat := SQLCAB.FieldByName('VLRTOTNOT').AsFloat;
    CDSCABTOTIBPT.AsFloat := SQLCAB.FieldByName('TOTIBPT').AsFloat;
    CDSCABOB1FAT.AsString := SQLCAB.FieldByName('OB1FAT').AsString;
    CDSCABOB2FAT.AsString := SQLCAB.FieldByName('OB2FAT').AsString;
    CDSCABOB3FAT.AsString := SQLCAB.FieldByName('OB3FAT').AsString;
    CDSCABOB4FAT.AsString := SQLCAB.FieldByName('OB4FAT').AsString;
    CDSCABOB5FAT.AsString := SQLCAB.FieldByName('OB5FAT').AsString;
    CDSCABOB6FAT.AsString := SQLCAB.FieldByName('OB6FAT').AsString;
    CDSCABOB7FAT.AsString := SQLCAB.FieldByName('OB7FAT').AsString;
    CDSCABOB8FAT.AsString := SQLCAB.FieldByName('OB8FAT').AsString;
    CDSCABPLACAVEICULO.AsString := SQLCAB.FieldByName('PLACAVEICULO').AsString;
    CDSCABUFVEICULO.AsString := SQLCAB.FieldByName('UFVEICULO').AsString;
    CDSCABENDTRAS.AsString := SQLCAB.FieldByName('ENDTRAS').AsString;
    CDSCABUFTRANS.AsString := SQLCAB.FieldByName('UFTRANS').AsString;
    CDSCABINSTRAS.AsString := SQLCAB.FieldByName('INSTRAS').AsString;
    CDSCABCHAVEACE.AsString := SQLCAB.FieldByName('CHAVEACE').AsString;
    CDSCABFONCLI.AsString := SQLCAB.FieldByName('FONCLI').AsString;
    CDSCABMARCATRANS.AsString := SQLCAB.FieldByName('MARCATRANS').AsString;
    CDSCABNOMPAI.AsString := SQLCAB.FieldByName('NOMPAI').AsString;
    CDSCABID_FINPAI.AsInteger := SQLCAB.FieldByName('ID_FINPAI').AsInteger;
    CDSCABINSSTEMP.AsString := SQLCAB.FieldByName('INSSTEMP').AsString;
    CDSCABESPECIE.AsString := SQLCAB.FieldByName('ESPECIE').AsString;
    CDSCABHRESAIDA.AsString := SQLCAB.FieldByName('HRESAIDA').AsString;

    CDSCABBCPIS.AsFloat := SQLCAB.FieldByName('BASPIS').AsFloat;
    CDSCABBCCOFINS.AsFloat := SQLCAB.FieldByName('BASCOF').AsFloat;
    CDSCABBCIPI.AsFloat := SQLCAB.FieldByName('BASIPI').AsFloat;

    CDSCABINDIC_CF.AsString := SQLCAB.FieldByName('INDIC_CF').AsString;
    CDSCABINDIC_PRESENCA.AsString := SQLCAB.FieldByName('INDIC_PRESENCA').AsString;

    CDSCABTOTDESONERADO.AsFloat := SQLCAB.FieldByName('TOTDESONERADO').AsFloat;

    CDSCAB.Post;

    //BuscaItem_FP(CODEMP, NUMRES, DTERES, SEQLIB);

  end;
  BuscaItem_LJ(ID_LOJFAT);
  CarregaCombos(CDSCABCODEMP.AsString);
end;

procedure TFrmEditNfe.BuscaItem_LJ(ID_LOJFAT: string);
begin
  SqlIte.Active := False;
  SqlIte.Sql.Text :=
    ' SELECT ' + _BR +
    ' LJ2.codclp AS CODCLP, ' + _BR +
    ' LJ2.codgru AS CODGRU, ' + _BR +
    ' LJ2.codsub AS CODSUB, ' + _BR +
    ' LJ2.codpro AS CODPRO, ' + _BR +
    ' Cast(0.0 as numeric(15,2)) as VLRIMP, ' + _BR +
    ' LJ2.CODEMP AS CODEMP, ' + _BR +
    ' LJ2.codclp||LJ2.codgru||LJ2.codsub||codpro AS PRODUTO, ' + _BR +
    ' PRO.dscpro AS DESCRICAOPRO, ' + _BR +
    ' LJ2.ObsPe2 AS DESC2,  ' + _BR +
    ' LJ2.ID_LOJFAT AS NUMRES, ' + _BR +
    ' LJ2.DTEPED AS DTERES, ' + _BR +
    ' LJ2.SEQPE2 AS SEQLIB, ' + _BR +
    ' LJ2.SEQPE2 AS SEQPE2, ' + _BR +
    ' LJ2.NROPE2 AS NROPE2, ' + _BR +
    ' LJ2.clsipi AS NCM, ' + _BR +
    ' LJ2.codst1 AS ORIG, ' + _BR +
    ' LJ2.codst2 AS CSTICMS, ' + _BR +
    ' LJ2.icmsub AS ALIQSUB, ' + _BR +
    ' LJ2.codcfo AS CFOP, ' + _BR +
    ' LJ2.codund AS UNIDADE, ' + _BR +
    ' LJ2.qtppe2 AS QUANTIDADE, ' + _BR +
    ' LJ2.vlupe2 AS VALUNITARIO, ' + _BR +
    ' LJ2.TOTOUTDESP AS VALDESC, ' + _BR +
    ' LJ2.TOTPE2 AS VALLIQ, ' + _BR +
    // ' LJ2.totge2 AS VALLIQ, ' + _BR +
  ' LJ2.basicm AS BASICMS,' + _BR +
    ' LJ2.icmpe2 AS ALIQICMS, ' + _BR +
    ' LJ2.toticm AS VALICMS, ' + _BR +
    ' LJ2.ipipe2 AS ALIQIPI, ' + _BR +
    ' LJ2.totipi AS VALIPI, ' + _BR +
    ' LJ2.totsub AS VALSUB, ' + _BR +
    ' LJ2.bassub AS BASESUB, ' + _BR +
    ' LJ2.mrgsub as MVA, ' + _BR +
    ' LJ2.ALIQPIS as PERPIS, ' + _BR +
    ' LJ2.ALIQCOF as PERCOF,  ' + _BR +
    //    ' LJ.totpis as BASPIS, ' + _BR +
//' LJ.totcof as BASCOF, ' + _BR +
  ' LJ2.totpis, ' + _BR +
    ' LJ2.TOTCOF, ' + _BR +
    ' LJ2.basipi, ' + _BR +
    ' LJ2.baspis, ' + _BR +
    ' LJ2.bascof, ' + _BR +
    ' LJ2.CSTIPI, ' + _BR +
    ' LJ2.CSTPIS, ' + _BR +
    ' LJ2.CSTCOF, ' + _BR +
    ' LJ2.TOTFRT, ' + _BR +
    ' LJ2.TOTSEG, ' + _BR +
    ' LJ2.ICMSUB as ALIQSUB,  ' + _BR +
    ' LJ2.TOTDESCINC, ' + _BR +
    ' LJ2.TOTIBPT, ' + _BR +
    ' LJ2.TOTDESONERADO, ' + _BR +
    ' LJ2.CODDESONERACAO, ' + _BR +
    ' LJ2.TOTOUTDESP,  ' + _BR +
    ' LJ2.CEST, ' + _BR +

  ' LJ2.BAS_UFDEST, ' + _BR +
    ' LJ2.ALIQ_FCPUFDEST, ' + _BR +
    ' LJ2.ALIQ_ICMSUFDEST, ' + _BR +
    ' LJ2.ALIQ_ICMSINTER, ' + _BR +
    ' LJ2.ALIQ_ICMSINTERPART, ' + _BR +
    ' LJ2.TOT_FCPUFDEST, ' + _BR +
    ' LJ2.TOT_ICMSUFDEST, ' + _BR +
    ' LJ2.TOT_ICMSUFREMET ' + _BR +

  ' FROM LOJFA2 LJ2  ' + _BR +
    ' INNER JOIN estpro PRO ON ' + _BR +
    '  LJ2.codclp = PRO.codclp AND ' + _BR +
    '  LJ2.codgru = PRO.codgru AND ' + _BR +
    '  LJ2.codsub = PRO.codsub AND ' + _BR +
    '  LJ2.codpro = PRO.codpro ' + _BR +
    ' INNER JOIN LOJFAT LJ ON ' + _BR +
    '  LJ2.ID_LOJFAT = LJ.ID_LOJFAT ' + _BR +
    ' WHERE LJ2.ID_LOJFAT = ' + ID_LOJFAT;
  //+ #13 + ' and LJ2.seqpe2 = ' + SEQPE2;

  SqlIte.Active := True;

  SqlIte.First;
  SqlIte.Last;
  SqlIte.First;

  cdsProd.EmptyDataSet;

  if SQLITE.RecordCount > 0 then
  begin
    SQLITE.first;

    while not SQLITE.eof do
    begin

      CDSPROD.Append;
      CDSPRODCODCLP.AsString := SQLITE.FieldByName('CODCLP').AsString;
      CDSPRODCODEMP.AsString := SQLITE.FieldByName('CODEMP').AsString;
      CDSPRODCODGRU.AsString := SQLITE.FieldByName('CODGRU').AsString;
      CDSPRODCODSUB.AsString := SQLITE.FieldByName('CODSUB').AsString;
      CDSPRODCODPRO.AsString := SQLITE.FieldByName('CODPRO').AsString;
      CDSPRODPRODUTO.AsString := SQLITE.FieldByName('PRODUTO').AsString;
      CDSPRODDESCRICAOPRO.AsString := SQLITE.FieldByName('DESCRICAOPRO').AsString;

      CDSPRODNCM.AsString := SQLITE.FieldByName('NCM').AsString;

      CDSPRODNUMRES.AsInteger := SQLITE.FieldByName('NUMRES').AsInteger;
      CDSPRODDTERES.value := SQLITE.FieldByName('DTERES').value;
      CDSPRODSEQLIB.AsInteger := SQLITE.FieldByName('SEQLIB').AsInteger;
      CDSPRODSEQPE2.AsInteger := SQLITE.FieldByName('SEQPE2').AsInteger;
      CDSPRODNROPE2.AsInteger := SQLITE.FieldByName('NROPE2').AsInteger;

      //CDSPRODSTICMS.AsString := SQLITE.FieldByName('STICMS').AsString;
      //CDSPRODNCM.AsString := SQLITE.FieldByName('NCM').AsString;
      CDSPRODORIG.AsString := SQLITE.FieldByName('ORIG').AsString;
      CDSPRODCSTICMS.AsString := SQLITE.FieldByName('CSTICMS').AsString;
      CDSPRODCFOP.AsString := SQLITE.FieldByName('CFOP').AsString;
      CDSPRODUNIDADE.AsString := SQLITE.FieldByName('UNIDADE').AsString;
      CDSPRODQUANTIDADE.AsFloat := SQLITE.FieldByName('QUANTIDADE').AsFloat;
      CDSPRODVALUNITARIO.AsFloat := SQLITE.FieldByName('VALUNITARIO').AsFloat;
      CDSPRODVALDESC.AsFloat := SQLITE.FieldByName('VALDESC').AsFloat;
      CDSPRODVALLIQ.AsFloat := SQLITE.FieldByName('VALLIQ').AsFloat;
      CDSPRODALIQSUB.AsFloat := SQLITE.FieldByName('ALIQSUB').AsFloat;
      CDSPRODBASICMS.AsFloat := SQLITE.FieldByName('BASICMS').AsFloat;
      CDSPRODALIQICMS.AsFloat := SQLITE.FieldByName('ALIQICMS').AsFloat;
      CDSPRODVALICMS.AsFloat := SQLITE.FieldByName('VALICMS').AsFloat;
      CDSPRODALIQIPI.AsFloat := SQLITE.FieldByName('ALIQIPI').AsFloat;
      CDSPRODVALIPI.AsFloat := SQLITE.FieldByName('VALIPI').AsFloat;
      CDSPRODVALSUB.AsFloat := SQLITE.FieldByName('VALSUB').AsFloat;
      CDSPRODBASESUB.AsFloat := SQLITE.FieldByName('BASESUB').AsFloat;
      CDSPRODDESC2.AsString := SQLITE.FieldByName('DESC2').AsString;

      CDSPRODMVA.AsString := SQLITE.FieldByName('MVA').AsString;
      CDSPRODPERPIS.AsString := SQLITE.FieldByName('PERPIS').AsString;
      CDSPRODPERCOF.AsString := SQLITE.FieldByName('PERCOF').AsString;
      CDSPRODbaspis.AsString := SQLITE.FieldByName('baspis').AsString;
      CDSPRODbascof.AsString := SQLITE.FieldByName('bascof').AsString;
      CDSPRODtotpis.AsString := SQLITE.FieldByName('totpis').AsString;
      CDSPRODTOTCOF.AsString := SQLITE.FieldByName('TOTCOF').AsString;
      CDSPRODbasipi.AsString := SQLITE.FieldByName('basipi').AsString;
      CDSPRODCSTIPI.AsString := SQLITE.FieldByName('CSTIPI').AsString;
      CDSPRODCSTPIS.AsString := SQLITE.FieldByName('CSTPIS').AsString;
      CDSPRODCSTCOF.AsString := SQLITE.FieldByName('CSTCOF').AsString;

      CDSPRODTOTFRT.AsFloat := SQLITE.FieldByName('TOTFRT').AsFloat;
      CDSPRODTOTSEG.AsFloat := SQLITE.FieldByName('TOTSEG').AsFloat;
      CDSPRODTOTOUTDESP.AsFloat := SQLITE.FieldByName('TOTOUTDESP').AsFloat;
      CDSPRODTOTIBPT.AsFloat := SQLITE.FieldByName('TOTIBPT').AsFloat;
      CDSPRODCEST.AsString := SQLITE.FieldByName('CEST').AsString;

      CDSPRODTOTDESONERADO.AsFloat := SQLITE.FieldByName('TOTDESONERADO').AsFloat;
      CDSPRODCODDESONERACAO.AsString := SQLITE.FieldByName('CODDESONERACAO').AsString;

      CDSPRODBAS_UFDEST.AsFloat := SQLITE.FieldByName('BAS_UFDEST').AsFloat;
      CDSPRODALIQ_FCPUFDEST.AsFloat := SQLITE.FieldByName('ALIQ_FCPUFDEST').AsFloat;
      CDSPRODALIQ_ICMSUFDEST.AsFloat := SQLITE.FieldByName('ALIQ_ICMSUFDEST').AsFloat;
      CDSPRODALIQ_ICMSINTER.AsFloat := SQLITE.FieldByName('ALIQ_ICMSINTER').AsFloat;
      CDSPRODALIQ_ICMSINTERPART.AsFloat := SQLITE.FieldByName('ALIQ_ICMSINTERPART').AsFloat;
      CDSPRODTOT_FCPUFDEST.AsFloat := SQLITE.FieldByName('TOT_FCPUFDEST').AsFloat;
      CDSPRODTOT_ICMSUFDEST.AsFloat := SQLITE.FieldByName('TOT_ICMSUFDEST').AsFloat;
      CDSPRODTOT_ICMSUFREMET.AsFloat := SQLITE.FieldByName('TOT_ICMSUFREMET').AsFloat;

      CDSPROD.Post;

      SQLITE.Next;

    end;

  end;

  CDSPROD.First;
end;

procedure TFrmEditNfe.bSalvarClick(Sender: TObject);
begin

  if CDSCAB.State in [dsEdit, dsInsert] then
    CDSCAB.Post;

  if CDSPROD.State in [dsEdit, dsInsert] then
    CDSPROD.Post;

  if origtb = 'FP' then
    UpdateFP
  else if origtb = 'FG' then
    UpdateFG
  else if origtb = 'LF' then
    UpdateLJ;
end;

(*Procedure para deixar os componentes com Tag = 1
com ReadOnly = True*)

procedure TFrmEditNfe.setReadOnly;
var
  i: Integer;
  PropInfo: PPropInfo;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i].Tag = 1) then
      //Tag para ReadOnly = True\\
    begin
      { Pega o A propriedade do componente caso ela exista }
      PropInfo := GetPropInfo(components[i].ClassInfo, 'ReadOnly');
      { verifica se a propriedade do compenente existe e seta um valor}
      if Assigned(PropInfo) then
        SetOrdProp(Components[i], PropInfo, Longint(True));

      { Pega o A propriedade do componente caso ela exista }
      PropInfo := GetPropInfo(components[i].ClassInfo, 'Color');
      { verifica se a propriedade do compenente existe e seta um valor}
      if Assigned(PropInfo) then
        SetOrdProp(Components[i], PropInfo, Longint($00F7F7F7));
    end;
  end;
  bSalvar.Enabled := False;
end;

procedure TFrmEditNfe.bCalcularClick(Sender: TObject);
begin

  try
    frmParEditNFe := TfrmParEditNFe.Create(self);
    frmParEditNFe.ShowModal;
  finally
    FreeAndNil(frmParEditNFe);
    calculaItens;
    calculaCabecalho;
    calculaItens;
    calculaCabecalho;
    ratear;
  end;
end;

procedure TFrmEditNfe.calculaCabecalho;
begin
  CDSCAB.Edit;

  if (totpro) then
    CDSCABVLRTOTPRO.AsFloat := 0;

  if (toticm) then
    CDSCABVLRICM.AsFloat := 0;

  if (totipi) then
    CDSCABVLRIPI.AsFloat := 0;

  if (totcof) then
    CDSCABVLRCOFINS.AsFloat := 0;

  if (totpis) then
    CDSCABVLRPIS.AsFloat := 0;

  if (bcIcm) then
    CDSCABBCICM.AsFloat := 0;

  if (bcIcmSt) then
    CDSCABBCICMST.AsFloat := 0;

  if (totII) then
    CDSCABVLRIMPI.AsFloat := 0;

  if (toticmsub) then
    CDSCABVLRICMST.AsFloat := 0;

  if (basipi) then
    CDSCABBCIPI.AsFloat := 0;

  if (baspis) then
    CDSCABBCPIS.AsFloat := 0;

  if (bascof) then
    CDSCABBCCOFINS.AsFloat := 0;

  //, BasFCP, BasUFDestino, BasEmitente
  if (BasFCP) then
    CDSCABTOT_FCPUFDEST.AsFloat := 0;
  if (BasUFDestino) then
    CDSCABTOT_ICMSUFDEST.AsFloat := 0;
  if (BasEmitente) then
    CDSCABTOT_ICMSUFREMET.AsFloat := 0;

  CDSPROD.First;
  while (not CDSPROD.eof) do
  begin
    // total dos produtos = soma de totdos os itens
    if (totpro) then
      CDSCABVLRTOTPRO.AsFloat := CDSCABVLRTOTPRO.AsFloat + CDSPRODVALLIQ.AsFloat;
    // total icm = soma do icms dos itens
    if (toticm) then
      CDSCABVLRICM.AsFloat := CDSCABVLRICM.AsFloat + CDSPRODVALICMS.AsFloat;
    // total ipi = soma do ipi dos itens
    if (totipi) then
      CDSCABVLRIPI.AsFloat := CDSCABVLRIPI.AsFloat + CDSPRODVALIPI.AsFloat;
    // total cofins = soma do cofins dos itens
    if (totcof) then
      CDSCABVLRCOFINS.AsFloat := CDSCABVLRCOFINS.AsFloat + CDSPRODTOTCOF.AsFloat;
    // total do pis = soma do pis dos itens
    if (totpis) then
      CDSCABVLRPIS.AsFloat := CDSCABVLRPIS.AsFloat + CDSPRODTOTPIS.AsFloat;

    if (bcIcm) then
      CDSCABBCICM.AsFloat := CDSCABBCICM.AsFloat + CDSPRODBASICMS.AsFloat;

    if (bcIcmSt) then
      CDSCABBCICMST.AsFloat := CDSCABBCICMST.AsFloat + CDSPRODBASESUB.AsFloat;

    if (totII) then
      CDSCABVLRIMPI.AsFloat := CDSCABVLRIMPI.AsFloat + CDSPRODVLRIMP.AsFloat;

    if (toticmsub) then
      CDSCABVLRICMST.AsFloat := CDSCABVLRICMST.AsFloat + CDSPRODVALSUB.AsFloat;

    if (basipi) then
      CDSCABBCIPI.AsFloat := CDSCABBCIPI.AsFloat + CDSPRODBASIPI.AsFloat;

    if (baspis) then
      CDSCABBCPIS.AsFloat := CDSCABBCPIS.AsFloat + CDSPRODBASPIS.AsFloat;

    if (bascof) then
      CDSCABBCCOFINS.AsFloat := CDSCABBCCOFINS.AsFloat + CDSPRODBASCOF.AsFloat;

    if (BasFCP) then
      CDSCABTOT_FCPUFDEST.AsFloat := CDSCABTOT_FCPUFDEST.AsFloat + CDSPRODTOT_FCPUFDEST.AsFloat;

    if (BasUFDestino) then
      CDSCABTOT_ICMSUFDEST.AsFloat := CDSCABTOT_ICMSUFDEST.AsFloat + CDSPRODTOT_ICMSUFDEST.AsFloat;

    if (BasEmitente) then
      CDSCABTOT_ICMSUFREMET.AsFloat := CDSCABTOT_ICMSUFREMET.AsFloat + CDSPRODTOT_ICMSUFREMET.AsFloat;

    CDSPROD.Next;
  end;

  //Total da Nota =  soma(todas despesas) - valorDesconto
  if (totnot) then
    CDSCABVLRTOTNOT.AsFloat :=
      CDSCABVLRICMST.asFloat + CDSCABVLRIPI.AsFloat +
      CDSCABVLRTOTPRO.asFloat + CDSCABVLRFRETE.asFLoat +
      CDSCABVLRSEGURO.asFloat + CDSCABVLROUTDESP.asFloat +
      CDSCABVLRIMPI.asFloat - CDSCABVLRDES.asFloat;

  CDSCAB.Post;
end;

procedure TFrmEditNfe.calculaItens;
begin

  CDSPROD.First;
  while (not CDSPROD.eof) do
  begin
    CDSPROD.edit;

    if (bcIcmStITE) then
    begin
      CDSPRODBASESUB.AsFloat := (CDSPRODVALLIQ.AsFloat + CDSPRODVALIPI.AsFLoat);
      CDSPRODBASESUB.AsFloat := CDSPRODBASESUB.AsFloat * (CDSPRODMVA.AsFloat / 100 + 1);
    end;
    if (valicm) then
      CDSPRODVALICMS.AsFloat := CDSPRODBASICMS.AsFloat * (CDSPRODALIQICMS.AsFloat / 100);

    if (valsub) then
    begin
      CDSPRODVALSUB.AsFloat := CDSPRODBASESUB.AsFloat * (CDSPRODALIQSUB.AsFloat / 100);
      CDSPRODVALSUB.AsFloat := CDSPRODVALSUB.AsFloat - CDSPRODVALICMS.AsFloat;

      if CDSPRODVALSUB.AsFloat < 0 then
        CDSPRODVALSUB.AsFloat := 0;
    end;

    if (valipi) then
      CDSPRODVALIPI.AsFloat := CDSPRODBASIPI.AsFloat * (CDSPRODALIQIPI.AsFloat / 100);

    if (valpis) then
      CDSPRODTOTPIS.AsFloat := CDSPRODBASPIS.AsFloat * (CDSPRODPERPIS.AsFloat / 100);

    if (valcof) then
      CDSPRODTOTCOF.AsFloat := CDSPRODBASCOF.AsFloat * (CDSPRODPERCOF.AsFloat / 100);

    CDSPROD.post;
    CDSPROD.Next;
  end;
end;
//|||||||||||||||||||||||||||||||||||||||||||||||||||||//
//Rateia frete, seguro e outras despesas entre os ítens//
//|||||||||||||||||||||||||||||||||||||||||||||||||||||//

procedure TFrmEditNfe.ratear;
var
  totfrt, totseg, totdesp, totdesc: real; {Variáveis de totalização para o rateio}
begin
  if (not (valFrt) or (valSeg) or (valOut) or (valDesc)) then
  begin
    CDSPROD.First;
    while (not CDSPROD.eof) do
    begin
      CDSPROD.edit;
      if (not (CDSPROD.RecordCount - CDSPROD.RecNo = 0)) then
      begin
        if (valfrt) then
        begin
          CDSPRODTOTFRT.AsFloat := CDSCABVLRFRETE.AsFloat * CDSPRODVALLIQ.AsFloat / CDSCABVLRTOTNOT.AsFloat;
          totfrt := totfrt + CDSPRODTOTFRT.AsFLoat;
        end;

        if (valseg) then
        begin
          CDSPRODTOTSEG.AsFloat := CDSCABVLRSEGURO.AsFloat * CDSPRODVALLIQ.AsFloat / CDSCABVLRTOTNOT.AsFloat;
          totseg := totseg + CDSPRODTOTSEG.AsFloat;
        end;

        if (valout) then
        begin
          CDSPRODTOTOUTDESP.AsFloat := CDSCABVLROUTDESP.AsFloat * CDSPRODVALLIQ.AsFloat / CDSCABVLRTOTNOT.AsFloat;
          totdesp := totdesp + CDSPRODTOTOUTDESP.AsFloat;
        end;

        {if (valdesc) then
        begin
          CDSCABVALDESC.AsFloat := CDSCABVLRDES.AsFloat * CDSPRODVALLIQ.AsFloat / CDSCABVLRTOTNOT.AsFloat;
          totdesc := totdesc + CDSPRODVALDESC.AsFloat;
        end;}
      end
      else
      begin
        ///////////////////////////////////////////////////////////////////////////
        // o último ítem ficará como restante do frete, seguro e outras despesas //
        // Esse procedimento é feito devido ao arredondamento do frete por ítem  //
        //que é só com duas casas decimais                                       //
        ///////////////////////////////////////////////////////////////////////////
        if (valfrt) then
          CDSPRODTOTFRT.AsFloat := CDSCABVLRFRETE.AsFloat - totfrt;
        if (valseg) then
          CDSPRODTOTSEG.AsFloat := CDSCABVLRSEGURO.AsFloat - totseg;
        if (valout) then
          CDSPRODTOTOUTDESP.AsFloat := CDSCABVLROUTDESP.AsFloat - totdesp;
        {if (valDesc) then
          CDSPRODVALDESC.AsFloat := CDSCABVLRDES.AsFloat - totdesc;}
      end;
      CDSPROD.Post;
      CDSPROD.next;
    end;
  end;

end;

procedure TFrmEditNfe.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  TForm(Sender).VertScrollBar.Position := TForm(Sender).VertScrollBar.Position - trunc(WheelDelta / 4);
end;

procedure TFrmEditNfe.UpdateLJ;
var
  dataSaida: string;
  cstpis, cstcof, cstipi: string;
begin
  SQLBUS.Active := False;

  if ALT_VISU = 'ALT' then
  begin
    SQLBUS.Active := false;
    SQLBUS.SQL.Text := 'Update LOJFAT Set libera_resp =  ' + QuotedStr('S')
      + ', libera_codusu = ' + IntToStr(fmManGDB.VCODUSU)
      + ', LIBERA_DTEHRE = (select Cast( ' + QuotedStr('NOW') + ' as Date) From RDB$DATABASE) '
      + ' WHERE (ID_LOJFAT = ' + CDSCABNUMRES.AsString + ') ';

    SQLBUS.ExecSQL;

    CDSPROD.First;

    SQLBUS.Active := false;

    while not CDSPROD.Eof do
    begin

      cstpis := QuotedStr(CDSPRODCSTPIS.AsString);
      cstcof := QuotedStr(CDSPRODCSTCOF.AsString);
      cstipi := QuotedStr(CDSPRODCSTIPI.AsString);

      if (cstpis = QuotedStr('')) then
        cstpis := ' null';
      if (cstcof = QuotedStr('')) then
        cstcof := ' null';
      if (cstipi = QuotedStr('')) then
        cstipi := ' null';

      SQLBUS.SQL.Clear;
      SQLBUS.SQL.Text :=
        ' UPDATE LOJFA2 '
        + ' SET '
        + ' OBSPE2 =  ' + QuotedStr(CDSPRODDESC2.AsString) + ',' + _BR
        + ' CLSIPI =  ' + QuotedStr(CDSPRODNCM.AsString) + ',' + _BR
        + ' CODST1 =  ' + QuotedStr(CDSPRODORIG.AsString) + ',' + _BR
        + ' CODST2 =  ' + QuotedStr(CDSPRODCSTICMS.AsString) + ',' + _BR
        + ' CODCFO =  ' + QuotedStr(CDSPRODCFOP.AsString) + ',' + _BR
        + ' CODUND =  ' + QuotedStr(CDSPRODUNIDADE.AsString) + ',' + _BR
        + ' QTPPE2 =  ' + formataReal(CDSPRODQUANTIDADE.AsFloat, 3) + ',' + _BR
        + ' VLUPE2 =  ' + StringReplace(StringReplace(FormatFloat('0.0000', CDSPRODVALUNITARIO.AsFloat), '.', '', [rfReplaceAll]), ',', '.', [rfReplaceAll]) +
        ',' + _BR
        + ' TOTDESCINC =  ' + formataReal(CDSPRODVALDESC.AsFloat) + ',' + _BR
        + ' TOTGE2 =  ' + formataReal(CDSPRODVALLIQ.AsFloat) + ',' + _BR
        // + ' TOTITE =  ' + formataReal(CDSPRODVALLIQ.AsFloat) + ',' + _BR
      + ' BASICM =  ' + formataReal(CDSPRODBASICMS.AsFloat) + ',' + _BR
        + ' ICMPE2 =  ' + formataReal(CDSPRODALIQICMS.AsFloat) + ',' + _BR
        + ' TOTICM =  ' + formataReal(CDSPRODVALICMS.AsFloat) + ',' + _BR
        + ' IPIPE2 =  ' + formataReal(CDSPRODALIQIPI.AsFloat) + ',' + _BR
        + ' TOTIPI =  ' + formataReal(CDSPRODVALIPI.AsFloat) + ',' + _BR
        + ' TOTSUB =  ' + formataReal(CDSPRODVALSUB.AsFloat) + ',' + _BR
        + ' BASSUB =  ' + formataReal(CDSPRODBASESUB.AsFloat) + ',' + _BR
        + ' MRGSUB =  ' + formataReal(CDSPRODMVA.AsFloat) + ',' + _BR
        + ' PERPIS =  ' + formataReal(CDSPRODPERPIS.AsFloat) + ',' + _BR
        + ' PERCOF =  ' + formataReal(CDSPRODPERCOF.AsFloat) + ',' + _BR
        + ' ALIQPIS =  ' + formataReal(CDSPRODPERPIS.AsFloat) + ',' + _BR
        + ' ALIQCOF =  ' + formataReal(CDSPRODPERCOF.AsFloat) + ',' + _BR
        + ' BASPIS =  ' + formataReal(CDSPRODBASPIS.AsFloat) + ',' + _BR
        + ' BASCOF =  ' + formataReal(CDSPRODBASCOF.AsFloat) + ',' + _BR
        + ' TOTPIS =  ' + formataReal(CDSPRODTOTPIS.AsFloat) + ',' + _BR
        + ' TOTCOF =  ' + formataReal(CDSPRODTOTCOF.AsFloat) + ',' + _BR
        + ' BASIPI =  ' + formataReal(CDSPRODBASIPI.AsFloat) + ',' + _BR
        + ' ICMSUB =  ' + formataReal(CDSPRODALIQSUB.AsFloat) + ',' + _BR
        + ' CSTIPI =  ' + CSTIPI + ',' + _BR
        + ' CSTPIS =  ' + CSTPIS + ',' + _BR
        + ' CSTCOF =  ' + CSTCOF + ',' + _BR
        + ' TOTFRT =  ' + formataReal(CDSPRODTOTFRT.AsFloat) + ',' + _BR
        + ' TOTSEG =  ' + formataReal(CDSPRODTOTSEG.AsFloat) + ',' + _BR

      + ' TOTDESONERADO =  ' + formataReal(CDSPRODTOTDESONERADO.AsFloat) + ',' + _BR
        + IfThen(Trim(CDSPRODCODDESONERACAO.AsString) <> '', ' CODDESONERACAO = '
        + QuotedStr(CDSPRODCODDESONERACAO.AsString) + ',' + _BR, 'CODDESONERACAO = 0')

      + ' TOTIBPT = ' + FormataReal(CDSPRODTOTIBPT.AsFloat) + ',' + _BR
        + ' CEST = ' + quotedStr(CDSPRODCEST.AsString) + ',' + _BR

      + ' BAS_UFDEST = ' + FormataReal(CDSPRODBAS_UFDEST.AsFloat) + ',' + _BR
        + ' ALIQ_FCPUFDEST = ' + FormataReal(CDSPRODALIQ_FCPUFDEST.AsFloat) + ',' + _BR
        + ' ALIQ_ICMSUFDEST = ' + FormataReal(CDSPRODALIQ_ICMSUFDEST.AsFloat) + ',' + _BR
        + ' ALIQ_ICMSINTER = ' + FormataReal(CDSPRODALIQ_ICMSINTER.AsFloat) + ',' + _BR
        + ' ALIQ_ICMSINTERPART = ' + FormataReal(CDSPRODALIQ_ICMSINTERPART.AsFloat) + ',' + _BR
        + ' TOT_FCPUFDEST = ' + FormataReal(CDSPRODTOT_FCPUFDEST.AsFloat) + ',' + _BR
        + ' TOT_ICMSUFDEST = ' + FormataReal(CDSPRODTOT_ICMSUFDEST.AsFloat) + ',' + _BR
        + ' TOT_ICMSUFREMET = ' + FormataReal(CDSPRODTOT_ICMSUFREMET.AsFloat) + ',' + _BR

      + ' TOTOUTDESP =  ' + formataReal(CDSPRODTOTOUTDESP.AsFloat) + _BR
        + ' WHERE ID_LOJFAT =  ' + QuotedStr(CDSCABNUMRES.AsString) + ' AND ' + _BR
        + ' SEQPE2 =  ' + QuotedStr(CDSPRODSEQPE2.AsString);

      SQLBUS.ExecSQL;

      CDSPROD.Next;

    end;

    if (CDSCABDTEENTSAI.Value <= 1) then
      dataSaida := ' DTESDA = NULL, '
    else
      dataSaida := ' DTESDA = ' + QuotedStr(FormatDateTime('yyyy-mm-dd', CDSCABDTEENTSAI.AsDateTime)) + ',';

    SQLBUS.SQL.Clear;
    SQLBUS.SQL.Text :=
      ' UPDATE LOJFAT '
      + ' SET '
      + ' MODPFA = ' + QuotedStr(CDSCABNATOPE.AsString) + ',' + _BR
      + ' DTEFAT = ' + QuotedStr(FormatDateTime('yyyy-mm-dd', CDSCABDTEEMISSAO.AsDateTime)) + ',' + _BR
      + ' INSSUB = ' + QuotedStr(CDSCABINSSTEMP.AsString) + ',' + _BR
      + ' NOMENT = ' + QuotedStr(CDSCABNOMCLI.AsString) + ',' + _BR
      + ' CGCCLI = ' + QuotedStr(CDSCABCGCCLI.AsString) + ',' + _BR
      + ' TEFCLI = ' + QuotedStr(CDSCABLOGCLI.AsString) + ',' + _BR
      + ' ENFCLI = ' + QuotedStr(CDSCABENFCLI.AsString) + ',' + _BR
      + ' BAFCLI = ' + QuotedStr(CDSCABBAFCLI.AsString) + ',' + _BR
      + ' CEFCLI = ' + QuotedStr(CDSCABCEFCLI.AsString) + ',' + _BR
      + dataSaida + _BR
      + ' CIFCLI = ' + QuotedStr(CDSCABCIFCLI.AsString) + ',' + _BR
      + ' UFFCLI = ' + QuotedStr(CDSCABUFFCLI.AsString) + ',' + _BR
      + ' INSCLI = ' + QuotedStr(CDSCABINSCLI.AsString) + ',' + _BR
      + ' HRESDA = ' + QuotedStr(CDSCABHRESAIDA.AsString) + ',' + _BR
      + ' NOMTRA = ' + QuotedStr(CDSCABNOMTRA.AsString) + ',' + _BR
      + ' TIPFRT = ' + QuotedStr(CDSCABFRTPORCONTA.AsString) + ',' + _BR
      + ' PLCTRA = ' + QuotedStr(CDSCABPLACAVEICULO.AsString) + ',' + _BR
      + ' UFEPLC = ' + QuotedStr(CDSCABUFVEICULO.AsString) + ',' + _BR
      + ' CGCTRA = ' + QuotedStr(CDSCABCGCTRANS.AsString) + ',' + _BR
      + ' CIDTRA = ' + QuotedStr(CDSCABCIDTRANS.AsString) + ',' + _BR
      + ' UFETRA = ' + QuotedStr(CDSCABUFTRANS.AsString) + ',' + _BR
      + ' INSTRA = ' + QuotedStr(CDSCABINSTRAS.AsString) + ',' + _BR
      + ' ALTVOL = ' + QuotedStr(CDSCABQTDVOLUMES.AsString) + ',' + _BR
      + ' ESPFAT = ' + QuotedStr(CDSCABESPECIE.AsString) + ',' + _BR
      + ' MARFAT = ' + QuotedStr(CDSCABMARCATRANS.AsString) + ',' + _BR
      + ' NROFAT = ' + QuotedStr(CDSCABNUMERACAO.AsString) + ',' + _BR
      + ' INFBRT = ' + formataReal(CDSCABPESBRT.AsFloat, 3) + ',' + _BR
      + ' INFLIQ = ' + formataReal(CDSCABPESLIQ.AsFloat, 3) + ',' + _BR
      + ' BASICM = ' + formataReal(CDSCABBCICM.AsFloat) + ',' + _BR
      + ' TOTICM = ' + formataReal(CDSCABVLRICM.AsFloat) + ',' + _BR
      + ' BASSUB = ' + formataReal(CDSCABBCICMST.AsFloat) + ',' + _BR
      + ' TOTSUB = ' + formataReal(CDSCABVLRICMST.AsFloat) + ',' + _BR
      //+ ' BASPIS = ' + formataReal(CDSCABBCPIS.AsFloat) + ',' + _BR
    + ' TOTPIS = ' + formataReal(CDSCABVLRPIS.AsFloat) + ',' + _BR
      + ' TOTFAT = ' + formataReal(CDSCABVLRTOTPRO.AsFloat) + ',' + _BR
      + ' TOTFRT = ' + formataReal(CDSCABVLRFRETE.AsFloat) + ',' + _BR
      + ' BASIPI = ' + formataReal(CDSCABBCIPI.AsFloat) + ',' + _BR
      + ' TOTIPI = ' + formataReal(CDSCABVLRIPI.AsFloat) + ',' + _BR
      + ' TOTSEG = ' + formataReal(CDSCABVLRSEGURO.AsFloat) + ',' + _BR
      + ' TOTDESCINC = ' + formataReal(CDSCABVLRDES.AsFloat) + ',' + _BR
      + ' TOTOUTDESP = ' + formataReal(CDSCABVLROUTDESP.AsFloat) + ',' + _BR
      + ' TOTIBPT = ' + formataReal(CDSCABTOTIBPT.AsFloat) + ',' + _BR
      //+ ' BASCOF = ' + formataReal(CDSCABBCCOFINS.AsFloat) + ',' + _BR
    + ' TOTCOF = ' + formataReal(CDSCABVLRCOFINS.AsFloat) + ',' + _BR
      + ' TOTGER = ' + formataReal(CDSCABVLRTOTNOT.AsFloat) + ',' + _BR

    + ' TOTDESONERADO = ' + formataReal(CDSCABTOTDESONERADO.AsFloat) + ',' + _BR

    + IfThen(Trim(CDSCABINDIC_CF.AsString) <> '', ' INDIC_CF = '
      + QuotedStr(CDSCABINDIC_CF.AsString) + ',' + _BR, '')

    + IfThen(Trim(CDSCABINDIC_PRESENCA.AsString) <> '', ' INDIC_PRESENCA = '
      + QuotedStr(CDSCABINDIC_PRESENCA.AsString) + ',' + _BR, '')

    + ' OB1FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB1FAT.AsString)) + ',' + _BR
      + ' OB2FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB2FAT.AsString)) + ',' + _BR
      + ' OB3FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB3FAT.AsString)) + ',' + _BR
      + ' OB4FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB4FAT.AsString)) + ',' + _BR
      + ' OB5FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB5FAT.AsString)) + ',' + _BR
      + ' OB6FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB6FAT.AsString)) + ',' + _BR
      + ' OB7FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB7FAT.AsString)) + ',' + _BR
      + ' OB8FAT = ' + QuotedStr(AnsiUpperCase(CDSCABOB8FAT.AsString)) + ',' + _BR
      + ' ENDTRA = ' + QuotedStr(AnsiUpperCase(CDSCABENDTRAS.AsString)) + _BR
      + ' WHERE ID_LOJFAT = ' + CDSCABNUMRES.AsString;

    SQLBUS.ExecSQL;

    SQLBUS.Active := False;
  end;

  Self.Close;

end;

procedure TFrmEditNfe.ValidacaoProdutos;
begin

  //Validação do NCM
  if Length(trim(CDSPRODNCM.AsString)) <> 8 then
  begin
    ShowMessage(CDSPRODCODCLP.AsString + '.' + CDSPRODCODGRU.AsString + '.' + CDSPRODCODSUB.AsString + '.' + CDSPRODCODPRO.AsString + ' - NCM : ' +
      QuotedStr(CDSPRODNCM.AsString) + ' - Quantidade digitos diferente de 8 no NCM.');
    abort;
  end;

  if (pos(CDSPRODNCM.AsString, '.') > 0) or (pos(CDSPRODNCM.AsString, ' ') > 0) or (pos(CDSPRODNCM.AsString, '-') > 0) then
  begin
    ShowMessage(CDSPRODCODCLP.AsString + '.' + CDSPRODCODGRU.AsString + '.' + CDSPRODCODSUB.AsString + '.' + CDSPRODCODPRO.AsString + ' - NCM : ' +
      QuotedStr(CDSPRODNCM.AsString) + ' - Não pode possuir traços, pontos ou espaços no NCM.');
    abort;
  end;

  //Origem
  if (trim(CDSPRODORIG.AsString) = '') then
  begin
    ShowMessage(CDSPRODCODCLP.AsString + '.' + CDSPRODCODGRU.AsString + '.' + CDSPRODCODSUB.AsString + '.' + CDSPRODCODPRO.AsString + ' - Origem : ' +
      QuotedStr(CDSPRODORIG.AsString) + ' - Obrigatório informar origem do produto.');
    abort;
  end;

  //situação Tributária ICMS
  if (trim(CDSPRODCSTICMS.AsString) = '') then
  begin
    ShowMessage(CDSPRODCODCLP.AsString + '.' + CDSPRODCODGRU.AsString + '.' + CDSPRODCODSUB.AsString + '.' + CDSPRODCODPRO.AsString +
      ' - Situação tributária do ICMS : ' +
      QuotedStr(CDSPRODCSTICMS.AsString) + ' - Obrigatório informar situação tributária do ICMS do produto.');
    abort;
  end;

  //situação Tributária IPI
  if (trim(CDSPRODCSTIPI.AsString) = '') then
  begin
    ShowMessage(CDSPRODCODCLP.AsString + '.' + CDSPRODCODGRU.AsString + '.' + CDSPRODCODSUB.AsString + '.' + CDSPRODCODPRO.AsString +
      ' - Situação tributária do IPI : ' +
      QuotedStr(CDSPRODCSTIPI.AsString) + ' - Obrigatório informar situação tributária do IPI do produto.');
    abort;
  end;

  //situação Tributária PIS
  if (trim(CDSPRODCSTPIS.AsString) = '') then
  begin
    ShowMessage(CDSPRODCODCLP.AsString + '.' + CDSPRODCODGRU.AsString + '.' + CDSPRODCODSUB.AsString + '.' + CDSPRODCODPRO.AsString +
      ' - Situação tributária do PIS : ' +
      QuotedStr(CDSPRODCSTPIS.AsString) + ' - Obrigatório informar situação tributária do PIS do produto.');
    abort;
  end;

  //situação Tributária Cofins
  if (trim(CDSPRODCSTCOF.AsString) = '') then
  begin
    ShowMessage(CDSPRODCODCLP.AsString + '.' + CDSPRODCODGRU.AsString + '.' + CDSPRODCODSUB.AsString + '.' + CDSPRODCODPRO.AsString +
      ' - Situação tributária do Cofins : ' +
      QuotedStr(CDSPRODCSTCOF.AsString) + ' - Obrigatório informar situação tributária do Cofins do produto.');
    abort;
  end;

end;

procedure TFrmEditNfe.DBEdit35KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8, #9]) then
  begin
    key := #0;
  end;
end;

procedure TFrmEditNfe.Button1Click(Sender: TObject);
begin
  //Gerenciar Referências NFE
  fmManListaNFeRef := TfmManListaNFeRef.Create(Self);
  try
    fmManListaNFeRef.ShowModal(CDSCABNUMRES.Asinteger);
  finally
    FreeAndNil(fmManListaNFeRef);
  end;
end;

procedure TFrmEditNfe.CDSPRODBeforePost(DataSet: TDataSet);
begin
  if CDSPRODCODDESONERACAO.AsString = '' then
    CDSPRODCODDESONERACAO.AsString := '0';
end;

procedure TFrmEditNfe.btnLoteClick(Sender: TObject);
begin
inherited;
   try
      fmLote := TfmLote.Create(Self);

      fmLote.fatPedLote.Active := False;
      fmLote.fatPedLote.Params.ParamByName('CODEMP').AsInteger  := CDSCABCODEMP.AsInteger;
      fmLote.fatPedLote.Params.ParamByName('DTERES').AsDate     := CDSCABDTERES.AsDateTime;
      fmLote.fatPedLote.Params.ParamByName('NUMRES').AsInteger  := CDSCABNUMRES.AsInteger;
      fmLote.ITEM := CDSPRODDESCRICAOPRO.AsString;

      if(origtb = 'FP') then
        fmLote.fatPedLote.Params.ParamByName('TIPO_TABELA').AsString  := 'FATPED'
      else
        fmLote.fatPedLote.Params.ParamByName('TIPO_TABELA').AsString  := 'FATGER';

      fmLote.fatPedLote.Params.ParamByName('CODCLP').AsInteger  := CDSPRODCODCLP.AsInteger;
      fmLote.fatPedLote.Params.ParamByName('CODGRU').AsString   := CDSPRODCODGRU.AsString;
      fmLote.fatPedLote.Params.ParamByName('CODSUB').AsString   := CDSPRODCODSUB.AsString;
      fmLote.fatPedLote.Params.ParamByName('CODPRO').AsString   := CDSPRODCODPRO.AsString;
      fmLote.fatPedLote.Active := True;

      fmLote.carregaVariaveis;
      fmLote.Visible := False;
      fmLote.ShowModal;
   finally
      FreeAndNil(fmLote);
   end;
end;

procedure TFrmEditNfe.btnLoteMedClick(Sender: TObject);
begin
inherited;
   try
      fmLotesMed := TfmLotesMed.Create(Self);

      fmLotesMed.fatPedLoteMed.Active := False;
      fmLotesMed.fatPedLoteMed.Params.ParamByName('CODEMP').AsInteger  := CDSCABCODEMP.AsInteger;
      fmLotesMed.fatPedLoteMed.Params.ParamByName('DTERES').AsDate     := CDSCABDTERES.AsDateTime;
      fmLotesMed.fatPedLoteMed.Params.ParamByName('NUMRES').AsInteger  := CDSCABNUMRES.AsInteger;
      fmLotesMed.ITEM := CDSPRODDESCRICAOPRO.AsString;

      if(origtb = 'FP') then
        fmLotesMed.fatPedLoteMed.Params.ParamByName('TIPO_TABELA').AsString  := 'FATPED'
      else
        fmLotesMed.fatPedLoteMed.Params.ParamByName('TIPO_TABELA').AsString  := 'FATGER';

      fmLotesMed.fatPedLoteMed.Params.ParamByName('CODCLP').AsInteger  := CDSPRODCODCLP.AsInteger;
      fmLotesMed.fatPedLoteMed.Params.ParamByName('CODGRU').AsString   := CDSPRODCODGRU.AsString;
      fmLotesMed.fatPedLoteMed.Params.ParamByName('CODSUB').AsString   := CDSPRODCODSUB.AsString;
      fmLotesMed.fatPedLoteMed.Params.ParamByName('CODPRO').AsString   := CDSPRODCODPRO.AsString;
      fmLotesMed.fatPedLoteMed.Active := True;

      fmLotesMed.carregaVariaveis;
      fmLotesMed.Visible := False;
      fmLotesMed.ShowModal;
   finally
      FreeAndNil(fmLotesMed);
   end;
end;

end.

