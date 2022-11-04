unit ManIcm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, hNavigator, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery, StdCtrls,
  Mask, DBCtrls, hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, ComCtrls,
  wwdblook, Buttons, AlignEdit, ppBands, ppClass, ppDB, ppCtrls, ppVar,
  ppPrnabl, ppProd, ppReport, ppComm, ppRelatv, ppCache, ppDBPipe, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, wwriched, dxDBEdtr,
  dxDBColorLookupEdit, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxDBColorEdit, dxColorPickEdit, dxColorEdit;

type
  TfmManIcm = class(TfmPadrao)
    pcIcm: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    quSql: TwwQuery;
    nvIcm: ThDBNavigator;
    EstIcm: TwwQuery;
    DsIcm: TwwDataSource;
    UpIcm: TUpdateSQL;
    Label12: TLabel;
    Shape11: TShape;
    Panel3: TPanel;
    grIcm: ThGrid;
    Label1: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    EdPsqNomIcm: TdxColorEdit;
    EdPsqCodIcm: TdxColorEdit;
    Label8: TLabel;
    Shape2: TShape;
    BbPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Shape3: TShape;
    EdPsqTipIcm: TdxColorPickEdit;
    Label11: TLabel;
    Label13: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdCodIcm: TdxDBColorEdit;
    EdNomIcm: TdxDBColorEdit;
    EdTipIcm: TdxDBColorPickEdit;
    Label3: TLabel;
    EdTrbIcm: TdxDBColorPickEdit;
    Shape7: TShape;
    Shape1: TShape;
    Label54: TLabel;
    EdPerIcm: TdxDBColorCurrencyEdit;
    Label7: TLabel;
    EdRedIcm: TdxDBColorCurrencyEdit;
    EdRecIcm: TdxDBColorCurrencyEdit;
    Label10: TLabel;
    Label17: TLabel;
    EdBasIcm: TdxDBColorCurrencyEdit;
    EstIcmTIPICM: TStringField;
    EstIcmNOMICM: TStringField;
    EstIcmTRBICM: TStringField;
    EstIcmPERICM: TFloatField;
    EstIcmREDICM: TFloatField;
    EstIcmRECICM: TFloatField;
    EstIcmBASICM: TFloatField;
    EstIcmINCREV: TFloatField;
    EstIcmINCFIN: TFloatField;
    EstIcmITECON: TStringField;
    EstIcmCODST1: TStringField;
    EstIcmCODST2: TStringField;
    EdIncRev: TdxDBColorCurrencyEdit;
    Label2: TLabel;
    EdIncFin: TdxDBColorCurrencyEdit;
    Label19: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    EdCodSt1: TdxDBColorEdit;
    CbNomSt1: TdxDBColorLookupEdit;
    Label23: TLabel;
    EdCodSt2: TdxDBColorEdit;
    CbNomSt2: TdxDBColorLookupEdit;
    EstSt2: TwwQuery;
    EstSt2NOMST2: TStringField;
    EstSt2CODST2: TStringField;
    EstSt1: TwwQuery;
    EstSt1NOMST1: TStringField;
    EstSt1CODST1: TStringField;
    DsSt1: TwwDataSource;
    DsSt2: TwwDataSource;
    DsReport: TppDBPipeline;
    ppReport: TppReport;
    hbReport: TppHeaderBand;
    ppLabel20: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    dbReport: TppDetailBand;
    ppCodIcm: TppDBText;
    ppNomIcm: TppDBText;
    ppTipIcm: TppDBText;
    ppPerIcm: TppDBText;
    ppRedIcm: TppDBText;
    ppRecIcm: TppDBText;
    ppBasIcm: TppDBText;
    ppIncRev: TppDBText;
    ppTrbIcm: TppDBText;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppIncFin: TppDBText;
    ppLabel17: TppLabel;
    ppCodSt1: TppDBText;
    ppCodSt2: TppDBText;
    EstIcmCODICM: TStringField;
    ppLabel45: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    procedure FormCreate(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure EstIcmNewRecord(DataSet: TDataSet);
    procedure grIcmDblClick(Sender: TObject);
    procedure nvIcmImprime(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsIcmDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sFiltro, sOrdem: string;
  end;

var
  fmManIcm: TfmManIcm;

implementation

uses Bbgeral, BbMensag, ManPri, Fpreview;

{$R *.DFM}

procedure TfmManIcm.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select * From EstIcm ';
  pcIcm.ActivePage := pcPag1;
end;

procedure TfmManIcm.bbPesquisaClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
    0: sOrdem := ' Order by CodIcm';
    1: sOrdem := ' Order by NomIcm';
    2: sOrdem := ' Order by TipIcm';
  end;

  if (EdPsqTipIcm.Text <> '') and (EdPsqTipIcm.Text <> 'Todos') then sFiltro := ' Where TipIcm = ''' + EdPsqTipIcm.Text + '''';

  if (EdPsqCodIcm.Text <> '') then
  begin
    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where CodIcm = ''' + EdPsqCodIcm.Text + ''''
    else
      sFiltro := sFiltro + ' and CodIcm = ''' + EdPsqCodIcm.Text + '''';
  end;

  if Rgbusca.ItemIndex = 0 then
  begin

    if (EdPsqNomIcm.Text <> '') then
    begin
      if pos('Where', sFiltro) = 0 then
        sFiltro := ' Where NomIcm LIKE ''' + EdPsqNomIcm.Text + '%'''
      else
        sFiltro := sFiltro + ' and NomIcm LIKE ''' + EdPsqNomIcm.Text + '%''';
    end;

  end
  else
  begin

    if (EdPsqNomIcm.Text <> '') then
    begin
      if pos('Where', sFiltro) = 0 then
        sFiltro := ' Where NomIcm LIKE ''%' + EdPsqNomIcm.Text + '%'''
      else
        sFiltro := sFiltro + ' and NomIcm LIKE ''%' + EdPsqNomIcm.Text + '%''';
    end;
  end;

  with EstIcm, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;
end;

procedure TfmManIcm.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodIcm.SetFocus;
end;

procedure TfmManIcm.dbReportBeforePrint(Sender: TObject);
begin
  inherited;
  ppCodIcm.Caption := PreString(EstIcmCodIcm.Value, 7);
  ppTipIcm.Caption := EstIcmTipIcm.Value;
  ppNomIcm.Caption := EstIcmNomIcm.Value;
end;

procedure TfmManIcm.EstIcmNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstIcm.DisableControls;

  EstIcmPerIcm.Value := 0;
  EstIcmRedIcm.Value := 0;
  EstIcmIncRev.Value := 0;
  EstIcmRecIcm.Value := 100;
  EstIcmIncFin.Value := 100;
  EstIcmBasIcm.Value := 100;
  EstIcmTrbIcm.Value := 'Sim';
  EstIcmIteCon.Value := 'Nao';
  EstIcmTipIcm.Value := 'Saida';

  EstIcm.EnableControls;

  PcIcm.ActivePage := pcPag2;

  EdCodIcm.Enabled := True;
  EdTipIcm.Enabled := True;

  EdCodIcm.Font.Style := [];
  EdTipIcm.Font.Style := [];

  EdCodIcm.Setfocus;

end;

procedure TfmManIcm.grIcmDblClick(Sender: TObject);
begin
  inherited;
  pcIcm.ActivePage := pcPag2;
end;

procedure TfmManIcm.nvIcmImprime(Sender: TObject);
begin
  inherited;

  EstIcm.First;

  if not EstIcm.Eof then
  begin

    try

      ppReport.DeviceType := 'Screen';
      fmPreview := TfmPreview.Create(fmManIcm);
      fmPreview.ppViewer.Report := ppReport;
      ppReport.PrintToDevices;
      fmPreview.ShowModal;

      if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

    finally

      FreeAndNil(fmPreview);

    end;
  end;
end;

procedure TfmManIcm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManIcm.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManIcm := nil;
end;

procedure TfmManIcm.DsIcmDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvIcm.Salvar then
  begin

    if EstIcmCodIcm.Value <> '' then
    begin

      EdCodIcm.Enabled := False;
      EdTipIcm.Enabled := False;

      EdCodIcm.Font.Style := [fsBold];
      EdTipIcm.Font.Style := [fsBold];

    end
    else
    begin

      EdCodIcm.Enabled := True;
      EdTipIcm.Enabled := True;

      EdCodIcm.Font.Style := [];
      EdTipIcm.Font.Style := [];

    end;
  end;
end;

end.
