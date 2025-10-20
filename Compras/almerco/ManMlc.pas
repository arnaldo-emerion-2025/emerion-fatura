unit ManMlc;

interface

uses
  SysUtils, Classes, Controls, Forms, 
  Fpadrao, hNavigator, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery, StdCtrls,
  Mask, DBCtrls, hEdits, Wwdbigrd, Wwdbgrid, hGrid, 
  wwdblook, Buttons, AlignEdit, ppDB, ppDBPipe, ppBands, ppVar, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, dxDBELib,
  dxCntner, dxEditor, dxEdLib, dxDBColorEdit, dxColorEdit, ComCtrls, Grids;

type
  TfmManMLc = class(TfmPadrao)
    pcMLc: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    CmpMlc: TwwQuery;
    DsCmpMlc: TwwDataSource;
    upCmpMLc: TUpdateSQL;
    quSql: TwwQuery;
    Panel1: TPanel;
    grMLc: ThGrid;
    Label1: TLabel;
    Shape1: TShape;
    Shape4: TShape;
    EdPsqId_CmpMLc: TdxColorEdit;
    EdPsqNomMLc: TdxColorEdit;
    Label4: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    Shape3: TShape;
    Shape2: TShape;
    Bbselecionar: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Label12: TLabel;
    Shape11: TShape;
    Label2: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    EdId_CmpMLc: TdxDBColorEdit;
    EdNomMLc: TdxDBColorEdit;
    Label7: TLabel;
    Label9: TLabel;
    Panel2: TPanel;
    nvMLc: ThDBNavigator;
    ppReport: TppReport;
    hbReport: TppHeaderBand;
    ppLabel20: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    dbReport: TppDetailBand;
    ppId_CmpMlc: TppDBText;
    ppNomMlc: TppDBText;
    ppDBPipeline: TppDBPipeline;
    ppSystemVariable4: TppSystemVariable;
    ppLabel3: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel45: TppLabel;
    CmpMlcID_CMPMLC: TIntegerField;
    CmpMlcNOMMLC: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CmpMlcNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure nvMLcImprime(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure grMLcDblClick(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    sBase, sFiltro, sOrdem : string;
    {Public declarations}
  end;

var
  fmManMLc: TfmManMLc;

implementation

uses BbGeral, BbMensag, ManGDB, ManPri, Fpreview;

{$R *.DFM}

procedure TfmManMLc.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := 'Select * From CmpMLc';
end;

procedure TfmManMLc.CmpMlcNewRecord(DataSet: TDataSet);
begin
  inherited;

  PcMlc.ActivePage := pcPag2;

  if CmpMlc.State <> dsInsert then CmpMlc.Insert;

  EdNomMlc.Setfocus;

end;

procedure TfmManMLc.FormShow(Sender: TObject);
begin
  inherited;

  pcMlc.ActivePage := pcPag1;

  EdPsqId_CmpMlc.SetFocus;

end;

procedure TfmManMLc.nvMLcImprime(Sender: TObject);
begin
  inherited;

  CmpMlc.First;

  if not CmpMlc.EOF then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManMLc);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManMLc.dbReportBeforePrint(Sender: TObject);
begin
  inherited;
  ppId_CmpMLc.Caption := PreString(IntToStr(CmpMLcId_CmpMLc.Value),7);
  ppNomMLc.Caption := CmpMLcNomMLc.Value;
end;

procedure TfmManMLc.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqId_CmpMLc.SetFocus;
end;

procedure TfmManMLc.pcPag2Show(Sender: TObject);
begin
  inherited;
  EdNomMLc.SetFocus;
end;

procedure TfmManMLc.grMLcDblClick(Sender: TObject);
begin
  inherited;
  pcMLc.ActivePage := pcPag2;
end;

procedure TfmManMLc.BbselecionarClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;
  
  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by CmpMLc.Id_CmpMLc';
       1: sOrdem := ' Order by CmpMLc.NomMLc';
  end;

  if Trim(EdPsqId_CmpMLc.Text) <> '' then sFiltro := ' Where CmpMLc.Id_CmpMLc = '+ QuotedStr(EdPsqId_CmpMLc.Text);

  if Rgbusca.ItemIndex = 0 then begin

     if Trim(EdPsqNomMLc.Text) <> '' then sFiltro := ' Where CmpMLc.NomMLc LIKE '+ QuotedStr(EdPsqNomMLc.Text +'%');

     end
  else
     begin

     if Trim(EdPsqNomMLc.Text) <> '' then sFiltro := ' Where CmpMLc.NomMLc LIKE '+ QuotedStr('%'+ EdPsqNomMLc.Text + '%');

  end;

  with CmpMLc,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManMLc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManMLc.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManMLc := Nil;
end;

end.
