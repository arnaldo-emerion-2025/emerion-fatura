unit ManEmb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  wwdbdatetimepicker, ppDB, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass,
  ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe, dxDBColorEdit,
  dxColorEdit;

type
  TfmManEmb = class(TfmPadrao)
    UpEmb: TUpdateSQL;
    EstEmb: TwwQuery;
    DsEmb: TwwDataSource;
    pcEmb: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Label10: TLabel;
    EdPsqCodEmb: TdxColorEdit;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    bSelecionar: TBitBtn;
    Panel1: TPanel;
    nvEmb: ThDBNavigator;
    Panel3: TPanel;
    grEmb: ThGrid;
    Label3: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Panel4: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Shape11: TShape;
    Label9: TLabel;
    EdNomEmb: TdxDBColorEdit;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomEmb: TdxColorEdit;
    EdCodEmb: TdxDBColorEdit;
    Label12: TLabel;
    Shape1: TShape;
    Shape3: TShape;
    Shape7: TShape;
    DsReport: TppDBPipeline;
    ppReport: TppReport;
    hbReport: TppHeaderBand;
    ppLabel20: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel3: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel45: TppLabel;
    dbReport: TppDetailBand;
    ppCodEmb: TppDBText;
    ppNomEmb: TppDBText;
    EstEmbCODEMB: TStringField;
    EstEmbNOMEMB: TStringField;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grEmbDblClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EstEmbNewRecord(DataSet: TDataSet);
    procedure pcPag2Show(Sender: TObject);
    procedure DsEmbDataChange(Sender: TObject; Field: TField);
    procedure nvEmbImprime(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sOrdem, sFiltro : string;
  end;

var
  fmManEmb: TfmManEmb;

implementation

uses FPreview, Bbgeral, Bbmensag, ManPri;

{$R *.DFM}

{*************************************************************************
* Rotina: Evitar Movimentação de Janelas
*************************************************************************}
procedure TfmManEmb.FormCreate(Sender: TObject);
begin
  inherited;
  sBase  := ' Select * From EstEmb ';
end;

procedure TfmManEmb.bSelecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by CodEmb';
       1: sOrdem := ' Order by NomEmb';
  end;

  if Trim( EdpsqCodEmb.Text ) <> '' then sFiltro := ' Where CodEmb = '''+ EdpsqCodEmb.Text +'''';

  if Rgbusca.ItemIndex = 0 then begin

     if Trim( EdpsqNomEmb.Text ) <> '' then sFiltro := ' Where NomEmb LIKE '''+ EdpsqNomEmb.Text +'%''';

     end
  else
     begin

     if Trim( EdpsqNomEmb.Text ) <> '' then sFiltro := ' Where NomEmb LIKE ''%'+ EdpsqNomEmb.Text +'%''';

  end;

  with EstEmb,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManEmb.EstEmbNewRecord(DataSet: TDataSet);
begin
  inherited;

  PcEmb.ActivePage := pcPag2;

  EdCodEmb.Enabled := True;

  EdCodEmb.Font.Style := [];

  EdCodEmb.SetFocus

end;

procedure TfmManEmb.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodEmb.SetFocus;
end;

procedure TfmManEmb.grEmbDblClick(Sender: TObject);
begin
  inherited;
  pcEmb.ActivePage := pcPag2;
end;

procedure TfmManEmb.FormShow(Sender: TObject);
begin
  inherited;

  PcEmb.ActivePage := PcPag1;

  EdPsqCodEmb.SetFocus;

end;

procedure TfmManEmb.pcPag2Show(Sender: TObject);
begin
  inherited;

  if EdCodEmb.Enabled then
     EdCodEmb.SetFocus
  else
     EdNomEmb.SetFocus;
     
end;

procedure TfmManEmb.DsEmbDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvEmb.Salvar then begin

     if EdCodEmb.Enabled then begin

        EdCodEmb.Enabled := False;

        EdCodEmb.Font.Style := [fsBold];

     end;
  end
end;

procedure TfmManEmb.nvEmbImprime(Sender: TObject);
begin
  inherited;

  EstEmb.First;

  if not EstEmb.Eof then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManEmb);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        if Assigned(fmPreview) then FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManEmb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManEmb.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManEmb := Nil;
end;

end.
