unit ManPrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  wwdbdatetimepicker, dxDBColorDateEdit, dxDBColorLookupEdit,
  dxDBColorEdit, dxDBColorCurrencyEdit, dxColorDateEdit, dxColorEdit;

type
  TfmManPrm = class(TfmPadrao)
    UpPedPrm: TUpdateSQL;
    PedPrm: TwwQuery;
    DsPedPrm: TwwDataSource;
    pcPedPrm: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label10: TLabel;
    EdPsqId_PedPrm: TdxColorEdit;
    rgOrdem: TRadioGroup;
    bSelecionar: TBitBtn;
    Panel3: TPanel;
    grPedPrm: ThGrid;
    Label3: TLabel;
    Panel4: TPanel;
    Shape9: TShape;
    Label5: TLabel;
    Shape10: TShape;
    Label7: TLabel;
    Shape11: TShape;
    Label9: TLabel;
    EdNomPrm: TdxDBColorEdit;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomPrm: TdxColorEdit;
    EdId_PedPrm: TdxDBColorEdit;
    Label12: TLabel;
    Label21: TLabel;
    nvPedPrm: ThDBNavigator;
    Panel5: TPanel;
    grPedPr2: ThGrid;
    Label6: TLabel;
    Shape5: TShape;
    PedPr2: TwwQuery;
    DsPedPr2: TwwDataSource;
    UpPedPr2: TUpdateSQL;
    quSql: TwwQuery;
    EdDtiPrm: TdxDBColorDateEdit;
    Label11: TLabel;
    EdDtfPrm: TdxDBColorDateEdit;
    Panel6: TPanel;
    nvPedPr2: ThDBNavigator;
    EstGru: TwwQuery;
    EstGruCODGRU: TStringField;
    EstGruNOMGRU: TStringField;
    EstSub: TwwQuery;
    EstSubCODGRU: TStringField;
    EstSubCODSUB: TStringField;
    EstSubNOMSUB: TStringField;
    DsEstSub: TwwDataSource;
    DsEstGru: TwwDataSource;
    Shape1: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape2: TShape;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqDtiPrm: TdxColorDateEdit;
    EdPsqDtfPrm: TdxColorDateEdit;
    EstPro: TwwQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    DsEstPro: TwwDataSource;
    EstProCODPRO: TStringField;
    EstProDSCPRO: TStringField;
    Panel1: TPanel;
    Label8: TLabel;
    Label13: TLabel;
    Label23: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    EdDs5Pr2: TdxDBColorCurrencyEdit;
    EdDs4Pr2: TdxDBColorCurrencyEdit;
    EdDs3Pr2: TdxDBColorCurrencyEdit;
    EdDs2Pr2: TdxDBColorCurrencyEdit;
    EdDs1Pr2: TdxDBColorCurrencyEdit;
    EdCodPro: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodGru: TdxDBColorEdit;
    CbNomGru: TdxDBColorLookupEdit;
    CbNomSub: TdxDBColorLookupEdit;
    CbNomPro: TdxDBColorLookupEdit;
    Label19: TLabel;
    EdQt1Pr2: TdxDBColorCurrencyEdit;
    Label24: TLabel;
    EdQt2Pr2: TdxDBColorCurrencyEdit;
    Label25: TLabel;
    EdQt3Pr2: TdxDBColorCurrencyEdit;
    Label26: TLabel;
    EdQt4Pr2: TdxDBColorCurrencyEdit;
    Label27: TLabel;
    EdQt5Pr2: TdxDBColorCurrencyEdit;
    Label28: TLabel;
    EdSitPrm: TdxDBColorEdit;
    rgStatus: TRadioGroup;
    PedPrmID_PEDPRM: TIntegerField;
    PedPrmNOMPRM: TStringField;
    PedPrmDTIPRM: TDateTimeField;
    PedPrmDTFPRM: TDateTimeField;
    PedPrmQTIPR2: TIntegerField;
    PedPrmFLGATU: TStringField;
    PedPrmUSUCON: TIntegerField;
    PedPrmDTECON: TDateTimeField;
    PedPrmHRECON: TStringField;
    PedPrmSITPRM: TStringField;
    Label48: TLabel;
    Label49: TLabel;
    Label29: TLabel;
    EdPsqCodPro: TdxColorEdit;
    EdPsqCodSub: TdxColorEdit;
    EdPsqCodGru: TdxColorEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    EdPsqNomPro: TdxColorEdit;
    EdPsqNomSub: TdxColorEdit;
    EdPsqNomGru: TdxColorEdit;
    PedPr2ID_PEDPR2: TIntegerField;
    PedPr2ID_PEDPRM: TIntegerField;
    PedPr2CODCLP: TStringField;
    PedPr2CODGRU: TStringField;
    PedPr2CODSUB: TStringField;
    PedPr2CODPRO: TStringField;
    PedPr2DS1PR2: TFloatField;
    PedPr2QT1PR2: TFloatField;
    PedPr2RE1PR2: TFloatField;
    PedPr2SL1PR2: TFloatField;
    PedPr2DS2PR2: TFloatField;
    PedPr2QT2PR2: TFloatField;
    PedPr2RE2PR2: TFloatField;
    PedPr2SL2PR2: TFloatField;
    PedPr2DS3PR2: TFloatField;
    PedPr2QT3PR2: TFloatField;
    PedPr2RE3PR2: TFloatField;
    PedPr2SL3PR2: TFloatField;
    PedPr2DS4PR2: TFloatField;
    PedPr2QT4PR2: TFloatField;
    PedPr2RE4PR2: TFloatField;
    PedPr2SL4PR2: TFloatField;
    PedPr2DS5PR2: TFloatField;
    PedPr2QT5PR2: TFloatField;
    PedPr2RE5PR2: TFloatField;
    PedPr2SL5PR2: TFloatField;
    PedPr2NROPR2: TIntegerField;
    PedPr2FLGATU: TStringField;
    PedPr2DSCPRO: TStringField;
    PedPr2CODITE: TStringField;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    EdRe5Pr2: TdxDBColorCurrencyEdit;
    EdRe4Pr2: TdxDBColorCurrencyEdit;
    EdRe3Pr2: TdxDBColorCurrencyEdit;
    EdRe2Pr2: TdxDBColorCurrencyEdit;
    EdRe1Pr2: TdxDBColorCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grPedPrmDblClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure PedPrmNewRecord(DataSet: TDataSet);
    procedure pcPag2Show(Sender: TObject);
    procedure DsPedPrmDataChange(Sender: TObject; Field: TField);
    procedure DsPedPr2DataChange(Sender: TObject; Field: TField);
    procedure PedPr2BeforeEdit(DataSet: TDataSet);
    procedure PedPr2AfterCancel(DataSet: TDataSet);
    procedure PedPr2AfterPost(DataSet: TDataSet);
    procedure PedPr2NewRecord(DataSet: TDataSet);
    procedure PedPrmBeforeEdit(DataSet: TDataSet);
    procedure PedPrmAfterCancel(DataSet: TDataSet);
    procedure PedPrmAfterPost(DataSet: TDataSet);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure nvPedPr2BeforeSalva(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdPsqId_PedPrmKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodProExit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure nvPedPr2Salva(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodGruExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure EdPsqCodSubExit(Sender: TObject);
    procedure EdPsqCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodProExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure EdPsqCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sOrdem, sFiltro : string;
  end;

var
  fmManPrm: TfmManPrm;

implementation

uses Bbgeral, Bbmensag, Bbfuncao, ManPri, AuxIni, AuxPsq;

{$R *.DFM}

{*************************************************************************
* Rotina: Evitar Movimentação de Janelas
*************************************************************************}
procedure TfmManPrm.FormCreate(Sender: TObject);
begin
  inherited;
  sBase  := ' Select * From PedPrm ';
end;

procedure TfmManPrm.bSelecionarClick(Sender: TObject);
var
  sFiltro1: string;
begin
  inherited;

  ActiveControl := nil;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by PedPrm.CodPrm';
       1: sOrdem := ' Order by PedPrm.NomPrm';
  end;

  case rgStatus.Itemindex of
       0: sFiltro := ' Where PedPrm.SitPrm = '+ QuotedStr('Em Transito');
       1: sFiltro := ' Where PedPrm.SitPrm = '+ QuotedStr('Concluida');
  end;

  if Trim( EdpsqId_PedPrm.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where PedPrm.Id_PedPrm = '+ QuotedStr(EdPsqId_PedPrm.Text)
     else
        sFiltro := sFiltro + ' and PedPrm.Id_PedPrm = '+ QuotedStr(EdPsqId_PedPrm.Text);

  end;

  if Trim( EdpsqNomPrm.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where PedPrm.NomPrm = '+ QuotedStr(EdPsqNomPrm.Text)
     else
        sFiltro := sFiltro + ' Where PedPrm.NomPrm = '+ QuotedStr(EdPsqNomPrm.Text);

  end;

  if EdPsqDtiPrm.Date > 0 then begin

     if EdPsqDtfPrm.Date > 0 then begin

        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where Exists(Select * From PedPr3 Where PedPr3.Id_PedPrm = PedPrm.Id_PedPrm and PedPr3.DtePrm >= '+ QuotedStr(fDateToSQL(EdPsqDtiPrm.Date)) +' and PedPr3.DtePrm <= '+ QuotedStr(fDateToSQL(EdPsqDtfPrm.Date))
        else
           sFiltro := sFiltro + ' and Exists(Select * From PedPr3 Where PedPr3.Id_PedPrm = PedPrm.Id_PedPrm and PedPr3.DtePrm >= '+ QuotedStr(fDateToSQL(EdPsqDtiPrm.Date)) +' and PedPr3.DtePrm <= '+ QuotedStr(fDateToSQL(EdPsqDtfPrm.Date));

        end
     else
        begin

        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where Exists(Select * From PedPr3 Where PedPr3.Id_PedPrm = PedPrm.Id_PedPrm and PedPr3.DtePrm >= '+ QuotedStr(fDateToSQL(EdPsqDtiPrm.Date))
        else
           sFiltro := sFiltro + ' and Exists(Select * From PedPr3 Where PedPr3.Id_PedPrm = PedPrm.Id_PedPrm and PedPr3.DtePrm >= '+ QuotedStr(fDateToSQL(EdPsqDtiPrm.Date));

     end;

     end
  else
     begin

     if EdPsqDtfPrm.Date > 0 then begin

        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where Exists(Select * From PedPr3 Where PedPr3.Id_PedPrm = PedPrm.Id_PedPrm and PedPr3.DtePrm <= '+ QuotedStr(fDateToSQL(EdPsqDtfPrm.Date))
        else
           sFiltro := sFiltro + ' and Exists(Select * From PedPr3 Where PedPr3.Id_PedPrm = PedPrm.Id_PedPrm and PedPr3.DtePrm <= '+ QuotedStr(fDateToSQL(EdPsqDtfPrm.Date));

     end;
  end;

  sFiltro1 := '';

  if Trim( EdPsqCodGru.Text ) <> '' then sFiltro1 := sFiltro1 + ' and PedPr2.CodGru = '+ QuotedStr(EdPsqCodGru.Text);
  if Trim( EdPsqCodSub.Text ) <> '' then sFiltro1 := sFiltro1 + ' and PedPr2.CodSub = '+ QuotedStr(EdPsqCodSub.Text);
  if Trim( EdPsqCodPro.Text ) <> '' then sFiltro1 := sFiltro1 + ' and PedPr2.CodPro = '+ QuotedStr(EdPsqCodPro.Text);

  if Trim( sFiltro1 ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and Exists(Select * From PedPr2 Where PedPr2.Id_PedPrm = PedPrm.Id_PedPrm'+ sFiltro1 +' )'
     else
        sFiltro := ' Where Exists(Select * From PedPr2 Where PedPr2.Id_PedPrm = PedPrm.Id_PedPrm'+ sFiltro1 +' )';

  end;
  
  with PedPr2,SQL do begin

       Close;
       Text := ' Select PedPr2.*,'+
               '        EstPro.DscPro,'+
               '        PedPr2.CodClp || _UNICODE_FSS '+ QuotedStr('-') +' || PedPr2.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || PedPr2.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || PedPr2.CodPro as CodIte'+
               ' From PedPr2 LEFT JOIN EstPro ON (PedPr2.CodClp = EstPro.CodClp '+
               '                             AND  PedPr2.CodGru = EstPro.CodGru '+
               '                             AND  PedPr2.CodSub = EstPro.CodSub '+
               '                             AND  PedPr2.CodPro = EstPro.CodPro)'+
               ' Where PedPr2.Id_PedPrm = :Id_PedPrm'+ sFiltro1 +
               ' Order by PedPr2.NroPr2';
       Open;

  end;
  
  with PedPrm,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManPrm.PedPrmNewRecord(DataSet: TDataSet);
begin
  inherited;

  PedPrm.DisableControls;

  PedPrmId_PedPrm.Value := 0;

  PedPrmQtiPr2.Value := 0;
  PedPrmSitPrm.Value := 'Em Transito';

  PedPrm.EnableControls;

  PcPedPrm.ActivePage := pcPag2;

  EdDs1Pr2.Enabled := False;
  EdDs2Pr2.Enabled := False;
  EdDs3Pr2.Enabled := False;
  EdDs4Pr2.Enabled := False;
  EdDs5Pr2.Enabled := False;
  EdQt1Pr2.Enabled := False;
  EdQt2Pr2.Enabled := False;
  EdQt3Pr2.Enabled := False;
  EdQt4Pr2.Enabled := False;
  EdQt5Pr2.Enabled := False;

  EdDs1Pr2.Font.Style := [fsBold];
  EdDs2Pr2.Font.Style := [fsBold];
  EdDs3Pr2.Font.Style := [fsBold];
  EdDs4Pr2.Font.Style := [fsBold];
  EdDs5Pr2.Font.Style := [fsBold];
  EdQt1Pr2.Font.Style := [fsBold];
  EdQt2Pr2.Font.Style := [fsBold];
  EdQt3Pr2.Font.Style := [fsBold];
  EdQt4Pr2.Font.Style := [fsBold];
  EdQt5Pr2.Font.Style := [fsBold];

  nvPedPr2.Enabled := False;
  grPedPr2.Enabled := False;

  EdNomPrm.SetFocus;

end;

procedure TfmManPrm.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqId_PedPrm.SetFocus;
end;

procedure TfmManPrm.grPedPrmDblClick(Sender: TObject);
begin
  inherited;
  pcPedPrm.ActivePage := pcPag2;
end;

procedure TfmManPrm.FormShow(Sender: TObject);
begin
  inherited;

  PcPedPrm.ActivePage := PcPag1;

  EdPsqId_PedPrm.SetFocus;

end;

procedure TfmManPrm.pcPag2Show(Sender: TObject);
begin
  inherited;
  if EdNomPrm.Enabled then
     EdNomPrm.SetFocus
  else
     begin

     if EdDs1Pr2.Enabled then EdDs1Pr2.SetFocus;

  end;
end;

procedure TfmManPrm.DsPedPrmDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvPedPrm.Salvar then begin

     if not EdDs1Pr2.Enabled then begin

        if PedPrmId_PedPrm.Value > 0 then begin

           EdDs1Pr2.Enabled := True;
           EdDs2Pr2.Enabled := True;
           EdDs2Pr2.Enabled := True;
           EdDs3Pr2.Enabled := True;
           EdDs4Pr2.Enabled := True;
           EdDs5Pr2.Enabled := True;
           EdQt1Pr2.Enabled := True;
           EdQt2Pr2.Enabled := True;
           EdQt2Pr2.Enabled := True;
           EdQt3Pr2.Enabled := True;
           EdQt4Pr2.Enabled := True;
           EdQt5Pr2.Enabled := True;

           EdDs1Pr2.Font.Style := [];
           EdDs2Pr2.Font.Style := [];
           EdDs2Pr2.Font.Style := [];
           EdDs3Pr2.Font.Style := [];
           EdDs4Pr2.Font.Style := [];
           EdDs5Pr2.Font.Style := [];
           EdQt1Pr2.Font.Style := [];
           EdQt2Pr2.Font.Style := [];
           EdQt2Pr2.Font.Style := [];
           EdQt3Pr2.Font.Style := [];
           EdQt4Pr2.Font.Style := [];
           EdQt5Pr2.Font.Style := [];

        end;

        nvPedPr2.Enabled := True;
        grPedPr2.Enabled := True;

     end;
  end;
end;

procedure TfmManPrm.DsPedPr2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvPedPr2.Salvar then begin

     if EdCodGru.Enabled then begin

        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;

        EdCodGru.Font.Style := [fsBold];
        EdCodSub.Font.Style := [fsBold];
        EdCodPro.Font.Style := [fsBold];

        EdNomPrm.Enabled := True;
        EdDtiPrm.Enabled := True;
        EdDtfPrm.Enabled := True;

        EdNomPrm.Font.Style := [];
        EdDtiPrm.Font.Style := [];
        EdDtfPrm.Font.Style := [];

        nvPedPrm.Enabled := True;

     end;
  end;

  if EstGru.Params[0].AsString <> PedPr2CodGru.Value then begin

     EstGru.Close;
     EstGru.Params[0].AsString := PedPr2CodGru.Value;
     EstGru.Open;

  end;

  if (EstSub.Params[0].AsString <> PedPr2CodGru.Value) and
     (EstSub.Params[1].AsString <> PedPr2CodSub.Value) then begin

     EstSub.Close;
     EstSub.Params[0].AsString := PedPr2CodGru.Value;
     EstSub.Params[1].AsString := PedPr2CodSub.Value;
     EstSub.Open;

  end;

  if (EstPro.Params[0].AsString <> PedPr2CodGru.Value) and
     (EstPro.Params[1].AsString <> PedPr2CodSub.Value) and
     (EstPro.Params[2].AsString <> PedPr2CodPro.Value) then begin

     EstPro.Close;
     EstPro.Params[0].AsString := PedPr2CodGru.Value;
     EstPro.Params[1].AsString := PedPr2CodSub.Value;
     EstPro.Params[2].AsString := PedPr2CodPro.Value;
     EstPro.Open;

  end;  
end;

procedure TfmManPrm.PedPr2BeforeEdit(DataSet: TDataSet);
begin
  inherited;

  EdNomPrm.Enabled := False;
  EdDtiPrm.Enabled := False;
  EdDtfPrm.Enabled := False;

  EdNomPrm.Font.Style := [fsBold];
  EdDtiPrm.Font.Style := [fsBold];
  EdDtfPrm.Font.Style := [fsBold];

  nvPedPrm.Enabled := False;

end;

procedure TfmManPrm.PedPr2AfterCancel(DataSet: TDataSet);
begin
  inherited;

  EdNomPrm.Enabled := True;
  EdDtiPrm.Enabled := True;
  EdDtfPrm.Enabled := True;

  EdNomPrm.Font.Style := [];
  EdDtiPrm.Font.Style := [];
  EdDtfPrm.Font.Style := [];

  nvPedPrm.Enabled := True;

end;

procedure TfmManPrm.PedPr2AfterPost(DataSet: TDataSet);
begin
  inherited;

  EdNomPrm.Enabled := True;
  EdDtiPrm.Enabled := True;
  EdDtfPrm.Enabled := True;

  EdNomPrm.Font.Style := [];
  EdDtiPrm.Font.Style := [];
  EdDtfPrm.Font.Style := [];

  nvPedPrm.Enabled := True;

end;

procedure TfmManPrm.PedPr2NewRecord(DataSet: TDataSet);
begin
  inherited;

  PedPr2.DisableControls;

  PedPr2Id_PedPr2.Value := 0;
  PedPr2Id_PedPrm.Value := PedPrmId_PedPrm.Value;

  PedPr2Ds1Pr2.Value := 0;
  PedPr2Ds2Pr2.Value := 0;
  PedPr2Ds3Pr2.Value := 0;
  PedPr2Ds4Pr2.Value := 0;
  PedPr2Ds5Pr2.Value := 0;
  PedPr2Qt1Pr2.Value := 0;
  PedPr2Re1Pr2.Value := 0;
  PedPr2Sl1Pr2.Value := 0;
  PedPr2Qt2Pr2.Value := 0;
  PedPr2Re2Pr2.Value := 0;
  PedPr2Sl2Pr2.Value := 0;
  PedPr2Qt3Pr2.Value := 0;
  PedPr2Re3Pr2.Value := 0;
  PedPr2Sl3Pr2.Value := 0;
  PedPr2Qt4Pr2.Value := 0;
  PedPr2Re4Pr2.Value := 0;
  PedPr2Sl4Pr2.Value := 0;
  PedPr2Qt5Pr2.Value := 0;
  PedPr2Re5Pr2.Value := 0;
  PedPr2Sl5Pr2.Value := 0;
  PedPr2CodClp.Value := '1';
  PedPr2NroPr2.Value := PedPrmQtiPr2.Value + 1;

  PedPr2.EnableControls;

  EdNomPrm.Enabled := False;
  EdDtiPrm.Enabled := False;
  EdDtfPrm.Enabled := False;

  EdNomPrm.Font.Style := [fsBold];
  EdDtiPrm.Font.Style := [fsBold];
  EdDtfPrm.Font.Style := [fsBold];

  nvPedPrm.Enabled := False;

  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;
  EdDs1Pr2.Enabled := True;
  EdDs2Pr2.Enabled := True;
  EdDs3Pr2.Enabled := True;
  EdDs4Pr2.Enabled := True;
  EdDs5Pr2.Enabled := True;
  EdQt1Pr2.Enabled := True;
  EdQt2Pr2.Enabled := True;
  EdQt3Pr2.Enabled := True;
  EdQt4Pr2.Enabled := True;
  EdQt5Pr2.Enabled := True;

  EdCodGru.Font.Style := [];
  EdCodSub.Font.Style := [];
  EdCodPro.Font.Style := [];
  EdDs1Pr2.Font.Style := [];
  EdDs2Pr2.Font.Style := [];
  EdDs3Pr2.Font.Style := [];
  EdDs4Pr2.Font.Style := [];
  EdDs5Pr2.Font.Style := [];
  EdQt1Pr2.Font.Style := [];
  EdQt2Pr2.Font.Style := [];
  EdQt3Pr2.Font.Style := [];
  EdQt4Pr2.Font.Style := [];
  EdQt5Pr2.Font.Style := [];

  EdCodGru.SetFocus;

end;

procedure TfmManPrm.PedPrmBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  EdDs1Pr2.Enabled := False;
  EdDs2Pr2.Enabled := False;
  EdDs3Pr2.Enabled := False;
  EdDs4Pr2.Enabled := False;
  EdDs5Pr2.Enabled := False;
  EdQt1Pr2.Enabled := False;
  EdQt2Pr2.Enabled := False;
  EdQt3Pr2.Enabled := False;
  EdQt4Pr2.Enabled := False;
  EdQt5Pr2.Enabled := False;

  EdDs1Pr2.Font.Style := [fsBold];
  EdDs2Pr2.Font.Style := [fsBold];
  EdDs3Pr2.Font.Style := [fsBold];
  EdDs4Pr2.Font.Style := [fsBold];
  EdDs5Pr2.Font.Style := [fsBold];
  EdQt1Pr2.Font.Style := [fsBold];
  EdQt2Pr2.Font.Style := [fsBold];
  EdQt3Pr2.Font.Style := [fsBold];
  EdQt4Pr2.Font.Style := [fsBold];
  EdQt5Pr2.Font.Style := [fsBold];

  nvPedPr2.Enabled := False;
  grPedPr2.Enabled := False;

end;

procedure TfmManPrm.PedPrmAfterCancel(DataSet: TDataSet);
begin
  inherited;

  EdDs1Pr2.Enabled := True;
  EdDs2Pr2.Enabled := True;
  EdDs3Pr2.Enabled := True;
  EdDs4Pr2.Enabled := True;
  EdDs5Pr2.Enabled := True;
  EdQt1Pr2.Enabled := True;
  EdQt2Pr2.Enabled := True;
  EdQt3Pr2.Enabled := True;
  EdQt4Pr2.Enabled := True;
  EdQt5Pr2.Enabled := True;

  EdDs1Pr2.Font.Style := [];
  EdDs2Pr2.Font.Style := [];
  EdDs3Pr2.Font.Style := [];
  EdDs4Pr2.Font.Style := [];
  EdDs5Pr2.Font.Style := [];
  EdQt1Pr2.Font.Style := [];
  EdQt2Pr2.Font.Style := [];
  EdQt3Pr2.Font.Style := [];
  EdQt4Pr2.Font.Style := [];
  EdQt5Pr2.Font.Style := [];

  nvPedPr2.Enabled := True;
  grPedPr2.Enabled := True;

end;

procedure TfmManPrm.PedPrmAfterPost(DataSet: TDataSet);
begin
  inherited;

  EdDs1Pr2.Enabled := True;
  EdDs2Pr2.Enabled := True;
  EdDs3Pr2.Enabled := True;
  EdDs4Pr2.Enabled := True;
  EdDs5Pr2.Enabled := True;
  EdQt1Pr2.Enabled := True;
  EdQt2Pr2.Enabled := True;
  EdQt3Pr2.Enabled := True;
  EdQt4Pr2.Enabled := True;
  EdQt5Pr2.Enabled := True;

  EdDs1Pr2.Font.Style := [];
  EdDs2Pr2.Font.Style := [];
  EdDs3Pr2.Font.Style := [];
  EdDs4Pr2.Font.Style := [];
  EdDs5Pr2.Font.Style := [];
  EdQt1Pr2.Font.Style := [];
  EdQt2Pr2.Font.Style := [];
  EdQt3Pr2.Font.Style := [];
  EdQt4Pr2.Font.Style := [];
  EdQt5Pr2.Font.Style := [];

  nvPedPr2.Enabled := True;
  grPedPr2.Enabled := True;

end;

procedure TfmManPrm.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if nvPedPr2.Salvar then begin

     if Trim( PedPr2CodGru.Value ) <> '' then PedPr2CodGru.Value := FNumZeros(PedPr2CodGru.Value,3);

  end;
end;

procedure TfmManPrm.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if nvPedPr2.Salvar then begin

     if Trim( PedPr2CodSub.Value ) <> '' then PedPr2CodSub.Value := FNumZeros(PedPr2CodSub.Value,4);

  end;
end;

procedure TfmManPrm.nvPedPr2BeforeSalva(Sender: TObject);
begin
  inherited;

  if Trim( PedPr2CodGru.Value ) <> '' then
     PedPr2CodGru.Value := FNumZeros(PedPr2CodGru.Value,3)
  else
     fmsgErro('Campo de Preenchimento Obrigatorio não informado.',EdCodGru);

  if Trim( PedPr2CodSub.Value ) <> '' then
     PedPr2CodSub.Value := FNumZeros(PedPr2CodSub.Value,4)
  else
     fmsgErro('Campo de Preenchimento Obrigatorio não informado.',EdCodSub);

  if Trim( PedPr2CodPro.Value ) <> '' then
     PedPr2CodPro.Value := FNumStrZero(PedPr2CodPro.Value)
  else
     fmsgErro('Campo de Preenchimento Obrigatorio não informado.',EdCodPro);

end;

procedure TfmManPrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;  
end;

procedure TfmManPrm.EdPsqId_PedPrmKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPrm.EdCodProExit(Sender: TObject);
begin
  inherited;
  if nvPedPr2.Salvar then begin

     if Trim( PedPr2CodPro.Value ) <> '' then PedPr2CodPro.Value := FNumStrZero(PedPr2CodPro.Value);

  end;
end;

procedure TfmManPrm.Panel1Exit(Sender: TObject);
var
  operac : string;
begin
  inherited;
  if nvPedPr2.Salvar then begin

     if PedPr2.State = dsInsert then Operac := 'I';

     if Trim( PedPr2CodGru.Value ) <> '' then begin

        nvPedPr2.SBSalvaClick(Sender);

        if (Operac = 'I') and (not nvPedPr2.Salvar) then begin

           nvPedPr2.SBIncluiClick(Sender);

           EdCodGru.SetFocus;

        end;
     end;
  end;
end;

procedure TfmManPrm.nvPedPr2Salva(Sender: TObject);
var
  Id_PedPrm : integer;
begin
  inherited;

  Id_PedPrm := PedPrmId_PedPrm.Value;

  PedPrm.Close;
  PedPrm.Open;

  PedPrm.Locate('Id_PedPrm',Id_PedPrm,[LoPartialKey]);

end;

procedure TfmManPrm.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPrm := Nil;
end;

procedure TfmManPrm.EdPsqCodGruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := '1';

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxIni.CodGru;
           EdPsqNomGru.Text := fmAuxIni.NomGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdPsqCodGru.Text ) <> '' then EdPsqCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := '1';

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

            EdPsqCodGru.Text := fmAuxPsq.CodGru;
            EdPsqNomGru.Text := fmAuxPsq.NomGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdPsqCodGru.Text ) <> '' then EdPsqCodSub.SetFocus;

  end;
end;

procedure TfmManPrm.EdPsqCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGru.Text ) <> '' then begin

     EdPsqCodGru.Text := FNumZeros(EdPsqCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstGru.NomGru From EstGru Where EstGru.CodGru = '+ QuotedStr(EdPsqCodGru.Text);
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomGru').AsString ) <> '' then
        EdPsqNomGru.Text := quSql.FieldByName('NomGru').AsString
     else
        fmsgErro('Grupo Informado não Encontrado.',EdPsqCodGru);

     end
  else
     EdPsqNomGru.Text := '';
end;

procedure TfmManPrm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  
  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := '1';

     fmAuxIni.TipoPesq := 'G';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodGru.Text ) <> '' then EdPsqCodSub.SetFocus;

end;

procedure TfmManPrm.SpeedButton2Click(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := '1';
     
     if Trim( EdPsqCodGru.Text ) <> '' then fmAuxIni.CodGru := EdPsqCodGru.Text;

     fmAuxIni.TipoPesq := 'S';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodSub ) <> '' then begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;
        EdPsqCodSub.Text := fmAuxIni.CodSub;
        EdPsqNomSub.Text := fmAuxIni.NomSub;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodSub.Text ) <> '' then EdPsqCodPro.SetFocus;

end;

procedure TfmManPrm.EdPsqCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodSub.Text ) <> '' then begin

     EdPsqCodSub.Text := FNumZeros(EdPsqCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstSub.NomSub'+
                  ' From EstSub '+
                  ' Where EstSub.CodGru = '+ QuotedStr(EdPsqCodGru.Text)+
                  '   and EstSub.CodSub = '+ QuotedStr(EdPsqCodSub.Text);
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomSub').AsString ) <> '' then
        EdPsqNomSub.Text := quSql.FieldByName('NomSub').AsString
     else
        fmsgErro('SubGrupo Informado não Encontrado.',EdPsqCodSub);

     end
  else
     EdPsqNomSub.Text := '';
end;

procedure TfmManPrm.EdPsqCodSubKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := '1';
        fmAuxIni.CodGru := EdPsqCodGru.Text;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxIni.CodGru;
           EdPsqNomGru.Text := fmAuxIni.NomGru;
           EdPsqCodSub.Text := fmAuxIni.CodSub;
           EdPsqNomSub.Text := fmAuxIni.NomSub;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdPsqCodSub.Text ) <> '' then EdPsqCodPro.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := '1';
        fmAuxPsq.CodGru := EdPsqCodGru.Text;

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxPsq.CodGru;
           EdPsqNomGru.Text := fmAuxPsq.NomGru;
           EdPsqCodSub.Text := fmAuxPsq.CodSub;
           EdPsqNomSub.Text := fmAuxPsq.NomSub;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdPsqCodSub.Text ) <> '' then EdPsqCodPro.SetFocus;

  end;
end;

procedure TfmManPrm.EdPsqCodProExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPro.Text ) <> '' then begin

     EdPsqCodPro.Text := FNumStrZero(EdPsqCodPro.Text);

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPro From EstPro '+
                  ' Where CodClp = :CodClp'+
                  '   and CodGru = :CodGru'+
                  '   and CodSub = :CodSub'+
                  '   and CodPro = :CodPro';

          with Params do begin

               Params[0].AsString := '1';
               Params[1].AsString := EdPsqCodGru.Text;
               Params[2].AsString := EdPsqCodSub.Text;
               Params[3].AsString := EdPsqCodPro.Text;

          end;

          Open;

          EdPsqNomPro.Text := FieldByName('DscPro').AsString;

     end;

     end
  else
     EdPsqNomPro.Text := '';
end;

procedure TfmManPrm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  
  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := '1';
     
     if Trim( EdPsqCodGru.Text ) <> '' then fmAuxIni.CodGru := EdPsqCodGru.Text;
     if Trim( EdPsqCodSub.Text ) <> '' then fmAuxIni.CodSub := EdPsqCodSub.Text;

     fmAuxIni.TipoPesq := 'I';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodPro ) <> '' then begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;
        EdPsqCodSub.Text := fmAuxIni.CodSub;
        EdPsqNomSub.Text := fmAuxIni.NomSub;
        EdPsqCodPro.Text := fmAuxIni.CodPro;
        EdPsqNomPro.Text := fmAuxIni.DscPro;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodPro.Text ) <> '' then bSelecionar.SetFocus;

end;

procedure TfmManPrm.EdPsqCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := '1';
        
        fmAuxIni.CodGru := EdPsqCodGru.Text;
        fmAuxIni.CodSub := EdPsqCodSub.Text;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxIni.CodGru;
           EdPsqNomGru.Text := fmAuxIni.NomGru;
           EdPsqCodSub.Text := fmAuxIni.CodSub;
           EdPsqNomSub.Text := fmAuxIni.NomSub;
           EdPsqCodPro.Text := fmAuxIni.CodPro;
           EdPsqNomPro.Text := fmAuxIni.DscPro;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdPsqCodPro.Text ) <> '' then bSelecionar.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := '1';
        
        fmAuxPsq.CodGru := EdPsqCodGru.Text;
        fmAuxPsq.CodSub := EdPsqCodSub.Text;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxPsq.CodGru;
           EdPsqNomGru.Text := fmAuxPsq.NomGru;
           EdPsqCodSub.Text := fmAuxPsq.CodSub;
           EdPsqNomSub.Text := fmAuxPsq.NomSub;
           EdPsqCodPro.Text := fmAuxPsq.CodPro;
           EdPsqNomPro.Text := fmAuxPsq.DscPro;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdPsqCodPro.Text ) <> '' then bSelecionar.SetFocus;

  end;
end;

procedure TfmManPrm.EdCodGruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := PedPr2CodClp.Value;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if PedPr2.State = dsBrowse then begin

              if PedPr2Id_PedPrm.Value > 0 then
                 PedPr2.Edit
              else
                 PedPr2.Append;

           end;

           PedPr2CodGru.Value := fmAuxIni.CodGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( PedPr2CodGru.Value ) <> '' then EdCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := PedPr2CodClp.Value;

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if PedPr2.State = dsBrowse then begin

              if PedPr2Id_PedPrm.Value > 0 then
                 PedPr2.Edit
              else
                 PedPr2.Append;

           end;

           PedPr2CodGru.Value := fmAuxPsq.CodGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedPr2CodGru.Value ) <> '' then EdCodSub.SetFocus;

  end;
end;

procedure TfmManPrm.EdCodSubKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( PedPr2CodClp.Value ) <> '' then fmAuxIni.CodClp := PedPr2CodClp.Value;
        if Trim( PedPr2CodGru.Value ) <> '' then fmAuxIni.CodGru := PedPr2CodGru.Value;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if PedPr2.State = dsBrowse then begin

              if PedPr2Id_PedPrm.Value > 0 then
                 PedPr2.Edit
              else
                 PedPr2.Append;

           end;

           PedPr2CodGru.Value := fmAuxIni.CodGru;
           PedPr2CodSub.Value := fmAuxIni.CodSub;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( PedPr2CodSub.Value ) <> '' then EdCodPro.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( PedPr2CodClp.Value ) <> '' then fmAuxPsq.CodClp := PedPr2CodClp.Value;
        if Trim( PedPr2CodGru.Value ) <> '' then fmAuxPsq.CodGru := PedPr2CodGru.Value;

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if PedPr2.State = dsBrowse then begin

              if PedPr2Id_PedPrm.Value > 0 then
                 PedPr2.Edit
              else
                 PedPr2.Append;

           end;

           PedPr2CodGru.Value := fmAuxPsq.CodGru;
           PedPr2CodSub.Value := fmAuxPsq.CodSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedPr2CodSub.Value ) <> '' then EdCodPro.SetFocus;

  end;
end;

procedure TfmManPrm.EdCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( PedPr2CodClp.Value ) <> '' then fmAuxIni.CodClp := PedPr2CodClp.Value;
        if Trim( PedPr2CodGru.Value ) <> '' then fmAuxIni.CodGru := PedPr2CodGru.Value;
        if Trim( PedPr2CodSub.Value ) <> '' then fmAuxIni.CodSub := PedPr2CodSub.Value;

        fmAuxIni.TipoPesq := 'IC';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if PedPr2.State = dsBrowse then begin

              if PedPr2Id_PedPrm.Value > 0 then
                 PedPr2.Edit
              else
                 PedPr2.Append;

           end;

           PedPr2CodClp.Value := fmAuxIni.CodClp;
           PedPr2CodGru.Value := fmAuxIni.CodGru;
           PedPr2CodSub.Value := fmAuxIni.CodSub;
           PedPr2CodPro.Value := fmAuxIni.CodPro;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( PedPr2CodPro.Value ) <> '' then EdDs1Pr2.SetFocus;

  end;

  if key = 113 then begin {F5 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( PedPr2CodClp.Value ) <> '' then fmAuxPsq.CodClp := PedPr2CodClp.Value;
        if Trim( PedPr2CodGru.Value ) <> '' then fmAuxPsq.CodGru := PedPr2CodGru.Value;
        if Trim( PedPr2CodSub.Value ) <> '' then fmAuxPsq.CodSub := PedPr2CodSub.Value;

        fmAuxPsq.TipoPesq := 'IC';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if PedPr2.State = dsBrowse then begin

              if PedPr2Id_PedPrm.Value > 0 then
                 PedPr2.Edit
              else
                 PedPr2.Append;

           end;

           PedPr2CodClp.Value := fmAuxPsq.CodClp;
           PedPr2CodGru.Value := fmAuxPsq.CodGru;
           PedPr2CodSub.Value := fmAuxPsq.CodSub;
           PedPr2CodPro.Value := fmAuxPsq.CodPro;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedPr2CodPro.Value ) <> '' then EdDs1Pr2.SetFocus;

  end;
end;

end.
