unit ManUnd;

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
  TfmManUnd = class(TfmPadrao)
    UpUnd: TUpdateSQL;
    EstUnd: TwwQuery;
    DsUnd: TwwDataSource;
    pcUnd: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Label10: TLabel;
    EdPsqCodUnd: TdxColorEdit;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    bSelecionar: TBitBtn;
    Panel1: TPanel;
    nvUnd: ThDBNavigator;
    Panel3: TPanel;
    grUnd: ThGrid;
    Label3: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Panel4: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Shape11: TShape;
    Label9: TLabel;
    EdNomUnd: TdxDBColorEdit;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomUnd: TdxColorEdit;
    EdCodUnd: TdxDBColorEdit;
    Label12: TLabel;
    Shape1: TShape;
    Shape3: TShape;
    EstUndCODUND: TStringField;
    EstUndNOMUND: TStringField;
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
    ppCodUnd: TppDBText;
    ppNomUnd: TppDBText;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grUndDblClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EstUndNewRecord(DataSet: TDataSet);
    procedure pcPag2Show(Sender: TObject);
    procedure DsUndDataChange(Sender: TObject; Field: TField);
    procedure nvUndImprime(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sOrdem, sFiltro : string;
  end;

var
  fmManUnd: TfmManUnd;

implementation

uses FPreview, Bbgeral, Bbmensag, ManPri;

{$R *.DFM}

{*************************************************************************
* Rotina: Evitar Movimentação de Janelas
*************************************************************************}
procedure TfmManUnd.FormCreate(Sender: TObject);
begin
  inherited;
  sBase  := ' Select * From EstUnd ';
end;

procedure TfmManUnd.bSelecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by CodUnd';
       1: sOrdem := ' Order by NomUnd';
  end;

  if Trim( EdpsqCodUnd.Text ) <> '' then sFiltro := ' Where CodUnd = '''+ EdpsqCodUnd.Text +'''';

  if Rgbusca.ItemIndex = 0 then begin

     if Trim( EdpsqNomUnd.Text ) <> '' then sFiltro := ' Where NomUnd LIKE '''+ EdpsqNomUnd.Text +'%''';

     end
  else
     begin

     if Trim( EdpsqNomUnd.Text ) <> '' then sFiltro := ' Where NomUnd LIKE ''%'+ EdpsqNomUnd.Text +'%''';

  end;

  with EstUnd,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManUnd.EstUndNewRecord(DataSet: TDataSet);
begin
  inherited;

  PcUnd.ActivePage := pcPag2;

  EdCodUnd.Enabled := True;

  EdCodUnd.Font.Style := [];

  EdCodUnd.SetFocus

end;

procedure TfmManUnd.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodUnd.SetFocus;
end;

procedure TfmManUnd.grUndDblClick(Sender: TObject);
begin
  inherited;
  pcUnd.ActivePage := pcPag2;
end;

procedure TfmManUnd.FormShow(Sender: TObject);
begin
  inherited;

  PcUnd.ActivePage := PcPag1;

  EdPsqCodUnd.SetFocus;

end;

procedure TfmManUnd.pcPag2Show(Sender: TObject);
begin
  inherited;

  if EdCodUnd.Enabled then
     EdCodUnd.SetFocus
  else
     EdNomUnd.SetFocus;
     
end;

procedure TfmManUnd.DsUndDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvUnd.Salvar then begin

     if EdCodUnd.Enabled then begin

        EdCodUnd.Enabled := False;

        EdCodUnd.Font.Style := [fsBold];

     end;
  end
end;

procedure TfmManUnd.nvUndImprime(Sender: TObject);
begin
  inherited;

  EstUnd.First;

  if not EstUnd.Eof then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManUnd);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        if Assigned(fmPreview) then FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManUnd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManUnd.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManUnd := Nil;
end;

end.
