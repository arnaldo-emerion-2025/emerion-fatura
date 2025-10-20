unit ManTip;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  wwdbdatetimepicker, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, dxDBColorEdit,
  dxColorEdit;

type
  TfmManTip = class(TfmPadrao)
    UpTip: TUpdateSQL;
    EstTip: TwwQuery;
    DsTip: TwwDataSource;
    pcTip: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Label10: TLabel;
    EdPsqCodTip: TdxColorEdit;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Bbselecionar: TBitBtn;
    Panel1: TPanel;
    nvTip: ThDBNavigator;
    Panel3: TPanel;
    grTip: ThGrid;
    Label3: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Panel4: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Shape11: TShape;
    Label9: TLabel;
    EdNomTip: TdxDBColorEdit;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomTip: TdxColorEdit;
    EdCodTip: TdxDBColorEdit;
    Label12: TLabel;
    Shape1: TShape;
    Shape3: TShape;
    EstTipCODTIP: TIntegerField;
    EstTipNOMTIP: TStringField;
    Shape7: TShape;
    ppReport: TppReport;
    hbReport: TppHeaderBand;
    ppApeEmp: TppLabel;
    ppNomEmp: TppLabel;
    ppEndEmp: TppLabel;
    ppRefEmp: TppLabel;
    ppLabel20: TppLabel;
    ppLabel9: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    dbReport: TppDetailBand;
    ppCodTip: TppDBText;
    ppNomTip: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel10: TppLabel;
    DsReport: TppDBPipeline;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grTipDblClick(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure EstTipNewRecord(DataSet: TDataSet);
    procedure pcPag2Show(Sender: TObject);
    procedure hbReportBeforePrint(Sender: TObject);
    procedure nvTipImprime(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sOrdem, sFiltro : string;
  end;

var
  fmManTip: TfmManTip;

implementation

uses Bbgeral, Bbmensag, ManGDB, ManPri, Fpreview;

{$R *.DFM}

{*************************************************************************
* Rotina: Evitar Movimentação de Janelas
*************************************************************************}
procedure TfmManTip.FormCreate(Sender: TObject);
begin
  inherited;
  sBase  := ' Select * From EstTip ';
end;

procedure TfmManTip.BbselecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by CodTip';
       1: sOrdem := ' Order by NomTip';
  end;

  if (EdpsqCodTip.Text <> '') then sFiltro := ' Where CodTip = '''+ EdpsqCodTip.Text +'''';

  if Rgbusca.ItemIndex = 0 then begin

     if (EdpsqNomTip.Text <> '') then sFiltro := ' Where NomTip LIKE '''+ EdpsqNomTip.Text +'%''';

     end
  else
     begin

     if (EdpsqNomTip.Text <> '') then sFiltro := ' Where NomTip LIKE ''%' + EdpsqNomTip.Text + '%''';

  end;

  with EstTip,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManTip.EstTipNewRecord(DataSet: TDataSet);
begin
  inherited;

  PcTip.ActivePage := pcPag2;

  EdNomTip.SetFocus

end;

procedure TfmManTip.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodTip.SetFocus;
end;

procedure TfmManTip.grTipDblClick(Sender: TObject);
begin
  inherited;
  pcTip.ActivePage := pcPag2;
end;

procedure TfmManTip.FormShow(Sender: TObject);
begin
  inherited;

  PcTip.ActivePage := PcPag1;

  EdPsqCodTip.SetFocus;

end;

procedure TfmManTip.pcPag2Show(Sender: TObject);
begin
  inherited;
  EdNomTip.SetFocus;
end;

procedure TfmManTip.hbReportBeforePrint(Sender: TObject);
begin
  inherited;

  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;

end;

procedure TfmManTip.nvTipImprime(Sender: TObject);
begin
  inherited;

  EstTip.First;

  if not EstTip.Eof then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManTip);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        if Assigned(fmPreview) then FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManTip.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManTip.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManTip := Nil;
end;

end.
