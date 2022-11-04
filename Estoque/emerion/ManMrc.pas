unit ManMrc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  wwdbdatetimepicker, ppDB, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, dxDBColorEdit,
  dxColorEdit;

type
  TfmManMrc = class(TfmPadrao)
    UpMrc: TUpdateSQL;
    EstMrc: TwwQuery;
    DsMrc: TwwDataSource;
    pcMrc: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Label10: TLabel;
    EdPsqCodMrc: TdxColorEdit;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Bbselecionar: TBitBtn;
    Panel1: TPanel;
    nvMrc: ThDBNavigator;
    Panel3: TPanel;
    grMrc: ThGrid;
    Label3: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Panel4: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Shape11: TShape;
    Label9: TLabel;
    EdNomMrc: TdxDBColorEdit;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomMrc: TdxColorEdit;
    EdCodMrc: TdxDBColorEdit;
    Label12: TLabel;
    Shape1: TShape;
    Shape3: TShape;
    Shape7: TShape;
    EstMrcCODMRC: TIntegerField;
    EstMrcNOMMRC: TStringField;
    DsReport: TppDBPipeline;
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
    ppCodMrc: TppDBText;
    ppNomMrc: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel10: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grMrcDblClick(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure EstMrcNewRecord(DataSet: TDataSet);
    procedure pcPag2Show(Sender: TObject);
    procedure hbReportBeforePrint(Sender: TObject);
    procedure nvMrcImprime(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sOrdem, sFiltro : string;
  end;

var
  fmManMrc: TfmManMrc;

implementation

uses Bbgeral, Bbmensag, ManGDB, ManPri, Fpreview;

{$R *.DFM}

{*************************************************************************
* Rotina: Evitar Movimentação de Janelas
*************************************************************************}
procedure TfmManMrc.FormCreate(Sender: TObject);
begin
  inherited;
  sBase  := ' Select * From EstMrc ';
end;

procedure TfmManMrc.BbselecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by CodMrc';
       1: sOrdem := ' Order by NomMrc';
  end;

  if (EdpsqCodMrc.Text <> '') then sFiltro := ' Where CodMrc = '''+ EdpsqCodMrc.Text +'''';

  if Rgbusca.ItemIndex = 0 then begin

     if (EdpsqNomMrc.Text <> '') then sFiltro := ' Where NomMrc LIKE '''+ EdpsqNomMrc.Text +'%''';

     end
  else
     begin

     if (EdpsqNomMrc.Text <> '') then sFiltro := ' Where NomMrc LIKE ''%' + EdpsqNomMrc.Text + '%''';

  end;

  with EstMrc,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManMrc.EstMrcNewRecord(DataSet: TDataSet);
begin
  inherited;

  PcMrc.ActivePage := pcPag2;

  EdNomMrc.SetFocus

end;

procedure TfmManMrc.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodMrc.SetFocus;
end;

procedure TfmManMrc.grMrcDblClick(Sender: TObject);
begin
  inherited;
  pcMrc.ActivePage := pcPag2;
end;

procedure TfmManMrc.FormShow(Sender: TObject);
begin
  inherited;

  PcMrc.ActivePage := PcPag1;

  EdPsqCodMrc.SetFocus;

end;

procedure TfmManMrc.pcPag2Show(Sender: TObject);
begin
  inherited;
  EdNomMrc.SetFocus;
end;

procedure TfmManMrc.hbReportBeforePrint(Sender: TObject);
begin
  inherited;

  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;

end;

procedure TfmManMrc.nvMrcImprime(Sender: TObject);
begin
  inherited;

  EstMrc.First;

  if not EstMrc.Eof then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManMrc);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        if Assigned(fmPreview) then FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManMrc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManMrc.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManMrc := Nil;
end;

end.
