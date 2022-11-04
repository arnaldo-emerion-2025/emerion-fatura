unit ManCat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  wwdbdatetimepicker, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, dxDBColorEdit,
  dxColorEdit;

type
  TfmManCat = class(TfmPadrao)
    UpCat: TUpdateSQL;
    EstCat: TwwQuery;
    DsCat: TwwDataSource;
    pcCat: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Label10: TLabel;
    EdPsqCodCat: TdxColorEdit;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Bbselecionar: TBitBtn;
    Panel1: TPanel;
    nvCat: ThDBNavigator;
    Panel3: TPanel;
    grCat: ThGrid;
    Label3: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Panel4: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Shape11: TShape;
    Label9: TLabel;
    EdNomCat: TdxDBColorEdit;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomCat: TdxColorEdit;
    EdCodCat: TdxDBColorEdit;
    Label12: TLabel;
    Shape1: TShape;
    Shape3: TShape;
    Shape7: TShape;
    EstCatCODCAT: TIntegerField;
    EstCatNOMCAT: TStringField;
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
    ppCodCat: TppDBText;
    ppNomCat: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel10: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grCatDblClick(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure EstCatNewRecord(DataSet: TDataSet);
    procedure pcPag2Show(Sender: TObject);
    procedure hbReportBeforePrint(Sender: TObject);
    procedure nvCatImprime(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sOrdem, sFiltro : string;
  end;

var
  fmManCat: TfmManCat;

implementation

uses Bbgeral, Bbmensag, ManGDB, ManPri, Fpreview;

{$R *.DFM}

{*************************************************************************
* Rotina: Evitar Movimentação de Janelas
*************************************************************************}
procedure TfmManCat.FormCreate(Sender: TObject);
begin
  inherited;
  sBase  := ' Select * From EstCat ';
end;

procedure TfmManCat.BbselecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by CodCat';
       1: sOrdem := ' Order by NomCat';
  end;

  if Trim( EdpsqCodCat.Text ) <> '' then sFiltro := ' Where CodCat = '''+ EdpsqCodCat.Text +'''';

  if Rgbusca.ItemIndex = 0 then begin

     if Trim( EdpsqNomCat.Text ) <> '' then sFiltro := ' Where NomCat LIKE '''+ EdpsqNomCat.Text +'%''';

     end
  else
     begin

     if Trim( EdpsqNomCat.Text ) <> '' then sFiltro := ' Where NomCat LIKE ''%' + EdpsqNomCat.Text + '%''';

  end;

  with EstCat,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManCat.EstCatNewRecord(DataSet: TDataSet);
begin
  inherited;

  PcCat.ActivePage := pcPag2;

  EdNomCat.SetFocus

end;

procedure TfmManCat.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodCat.SetFocus;
end;

procedure TfmManCat.grCatDblClick(Sender: TObject);
begin
  inherited;
  pcCat.ActivePage := pcPag2;
end;

procedure TfmManCat.FormShow(Sender: TObject);
begin
  inherited;

  PcCat.ActivePage := PcPag1;

  EdPsqCodCat.SetFocus;

end;

procedure TfmManCat.pcPag2Show(Sender: TObject);
begin
  inherited;
  EdNomCat.SetFocus;
end;

procedure TfmManCat.hbReportBeforePrint(Sender: TObject);
begin
  inherited;

  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;

end;

procedure TfmManCat.nvCatImprime(Sender: TObject);
begin
  inherited;

  EstCat.First;

  if not EstCat.Eof then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManCat);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        if Assigned(fmPreview) then FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManCat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManCat.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCat := Nil;
end;

end.
