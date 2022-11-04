unit ManTxf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, hNavigator, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery, StdCtrls,
  Mask, DBCtrls, hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, ComCtrls,
  wwdblook, Buttons, AlignEdit, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass,
  ppProd, ppReport, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe, wwriched,
  dxCntner, dxEditor, dxEdLib, dxExEdtr, dxDBELib, ppStrtch, ppMemo,
  dxDBColorPickEdit, dxDBColorMemo, dxDBColorEdit, dxColorPickEdit,
  dxColorEdit;

type
  TfmManTxf = class(TfmPadrao)
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    quSql: TwwQuery;
    DsReport: TppDBPipeline;
    ppReport: TppReport;
    pcTxf: TPageControl;
    EstTxf: TwwQuery;
    dsTxf: TwwDataSource;
    upTxf: TUpdateSQL;
    hbReport: TppHeaderBand;
    ppLabel20: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    dbReport: TppDetailBand;
    nvTxf: ThDBNavigator;
    EstTxfCODTXF: TStringField;
    EstTxfDSRTXF: TStringField;
    EstTxfDSCTXF: TStringField;
    Label8: TLabel;
    Shape7: TShape;
    Shape2: TShape;
    Label4: TLabel;
    EdPsqCodTxf: TdxColorEdit;
    EdPsqDsrTxf: TdxColorEdit;
    Label6: TLabel;
    BbPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Label1: TLabel;
    Shape1: TShape;
    Shape3: TShape;
    Panel3: TPanel;
    grTxf: ThGrid;
    Label12: TLabel;
    Shape11: TShape;
    Label13: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Label14: TLabel;
    EdCodTxf: TdxDBColorEdit;
    EdDsrTxf: TdxDBColorEdit;
    Label15: TLabel;
    Label7: TLabel;
    EdDscTxf: TdxDBColorMemo;
    EstTxfTIPTXF: TStringField;
    Label11: TLabel;
    EdPsqTipTxf: TdxColorPickEdit;
    Label16: TLabel;
    EdTipTxf: TdxDBColorPickEdit;
    ppCodTxf: TppDBText;
    ppDscTxf: TppDBMemo;
    ppLabel3: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel4: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    procedure FormCreate(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure grCatDblClick(Sender: TObject);
    procedure EstTxfNewRecord(DataSet: TDataSet);
    procedure nvTxfImprime(Sender: TObject);
    procedure EdDscTxfChange(Sender: TObject);
    procedure nvTxfBeforeSalva(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grTxfDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dsTxfDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sFiltro, sOrdem : string;
  end;

var
  fmManTxf: TfmManTxf;

implementation

uses Bbgeral, BbMensag, ManPri, ManGDB, Fpreview;

{$R *.DFM}

procedure TfmManTxf.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select * from EstTxf ';
end;

procedure TfmManTxf.bbPesquisaClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' order by CodTxf';
       1: sOrdem := ' order by DsrTxf';
  end;

  if (EdPsqTipTxf.Text <> '') and (EdPsqTipTxf.Text <> 'Todos') then sFiltro := ' Where TipTxf = '''+EdPsqTipTxf.Text+'''';

  if (EdPsqCodTxf.Text <> '') then begin
     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where CodTxf = '''+ EdPsqCodTxf.Text +''''
     else
        sFiltro := sFiltro + ' and CodTxf = '''+ EdPsqCodTxf.Text +'''';
  end;

  if Rgbusca.ItemIndex = 0 then begin

     if (EdPsqDsrTxf.Text <> '') then begin
        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where DsrTxf LIKE '''+ EdPsqDsrTxf.Text +'%'''
        else
           sFiltro := sFiltro + ' and DsrTxf LIKE '''+ EdPsqDsrTxf.Text +'%''';
     end;

     end
  else
     begin

     if (EdPsqDsrTxf.Text <> '') then begin
        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where DsrTxf LIKE ''%' + EdPsqDsrTxf.Text + '%'''
        else
           sFiltro := sFiltro + ' and DsrTxf LIKE ''%' + EdPsqDsrTxf.Text + '%''';
     end;
  end;

  with EstTxf,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManTxf.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodTxf.SetFocus;
end;

procedure TfmManTxf.pcPag2Show(Sender: TObject);
begin
  inherited;
  if EdCodTxf.Enabled then
     EdCodTxf.SetFocus
  else
     EdDsrTxf.SetFocus;
end;

procedure TfmManTxf.grCatDblClick(Sender: TObject);
begin
  inherited;
  pcTxf.ActivePage := pcPag2;
end;

procedure TfmManTxf.EstTxfNewRecord(DataSet: TDataSet);
begin
  inherited;

  if copy(GFprm,1,1) <> 'S' then Abort;

  PcTxf.ActivePage := pcPag2;

  EdCodTxf.Enabled := True;
  EdTipTxf.Enabled := True;

  EdCodTxf.Font.Style := [];
  EdTipTxf.Font.Style := [];

  EdCodTxf.Setfocus;

end;

procedure TfmManTxf.nvTxfImprime(Sender: TObject);
begin
  inherited;

  EstTxf.First;

  if not EstTxf.Eof then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManTxf);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManTxf.EdDscTxfChange(Sender: TObject);
var
oldstart, oldlength : integer;
begin
  inherited;

  if nvTxf.Salvar then begin

     EdDscTxf.OnChange := nil;

     try
       oldstart  := EdDscTxf.SelStart;
       oldlength := EdDscTxf.SelLength;

       try
         EdDscTxf.Text := UpperCase(EdDscTxf.Text);
       finally
         EdDscTxf.SelStart  := oldstart;
         EdDscTxf.SelLength := oldlength;
       end;

     finally
        EdDscTxf.OnChange := EdDscTxfChange;
     end;
  end;
end;

procedure TfmManTxf.nvTxfBeforeSalva(Sender: TObject);
begin
  inherited;

  if Trim( EstTxfCodTxf.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdCodTxf);

  if Trim( EstTxfDsrTxf.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdDsrTxf);

  if Trim( EstTxfTipTxf.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdTipTxf);

end;

procedure TfmManTxf.FormShow(Sender: TObject);
begin
  inherited;

  pcTxf.ActivePage := pcPag1;

  EdPsqCodTxf.SetFocus;

end;

procedure TfmManTxf.grTxfDblClick(Sender: TObject);
begin
  inherited;
  pcTxf.ActivePage := pcPag2;
end;

procedure TfmManTxf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManTxf.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManTxf := Nil;
end;

procedure TfmManTxf.dsTxfDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvTxf.Salvar then begin

     if EstTxfCodTxf.Value <> '' then begin

        EdCodTxf.Enabled := False;
        EdTipTxf.Enabled := False;

        EdCodTxf.Font.Style := [fsBold];
        EdTipTxf.Font.Style := [fsBold];

        end
     else
        begin

        EdCodTxf.Enabled := True;
        EdTipTxf.Enabled := True;

        EdCodTxf.Font.Style := [];
        EdTipTxf.Font.Style := [];

     end;
  end;
end;

end.
