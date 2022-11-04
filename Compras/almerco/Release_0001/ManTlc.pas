unit ManTlc;

interface

uses
  SysUtils, Classes, Controls, Forms, Graphics, 
  Fpadrao, hNavigator, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery, StdCtrls,
  Mask, DBCtrls, hEdits, Wwdbigrd, Wwdbgrid, hGrid, wwdblook, Buttons,
  AlignEdit, ppBands, ppClass, ppDB, ppCtrls, ppVar, ppPrnabl, ppProd,
  ppReport, ppComm, ppRelatv, ppCache, ppDBPipe, dxCntner, dxEditor, dxEdLib,
  dxDBELib, dxExEdtr, dxDBEdtr, dxDBColorLookupEdit, dxDBColorEdit, dxColorEdit,
  ComCtrls, Grids, dxDBColorCurrencyEdit, dxDBColorPickEdit;

type
  TfmManTlc = class(TfmPadrao)
    pcTlc: TPageControl;
    pcPag1: TTabSheet;
    Panel1: TPanel;
    grTlc: ThGrid;
    pcPag2: TTabSheet;
    CmpTlc: TwwQuery;
    dsCmpTlc: TwwDataSource;
    quSql: TwwQuery;
    nvTlc: ThDBNavigator;
    UpCmpTlc: TUpdateSQL;
    CmpMlc: TwwQuery;
    quPsq: TwwQuery;
    dsPsq: TwwDataSource;
    Label1: TLabel;
    Shape1: TShape;
    Shape4: TShape;
    Label10: TLabel;
    Label4: TLabel;
    EdPsqNomTlc: TdxColorEdit;
    EdPsqId_CmpTlc: TdxColorEdit;
    Bbselecionar: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Label3: TLabel;
    Shape3: TShape;
    Shape2: TShape;
    Label12: TLabel;
    Shape11: TShape;
    Label6: TLabel;
    EdPsqId_CmpMlc: TdxColorEdit;
    EdPsqNomMlc: TdxColorEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    EdNomTlc: TdxDBColorEdit;
    EdId_CmpTlc: TdxDBColorEdit;
    EdId_CmpMlc: TdxDBColorEdit;
    Label14: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    CbNomMlc: TdxDBColorLookupEdit;
    DsCmpMlc: TwwDataSource;
    BbPsqAgc: TSpeedButton;
    CmpTlcID_CMPTLC: TIntegerField;
    CmpTlcNOMTLC: TStringField;
    CmpTlcTIPTLC: TStringField;
    CmpTlcID_CMPMLC: TIntegerField;
    CmpTlcALITLC: TFloatField;
    CmpTlcBASTLC: TFloatField;
    CmpTlcREDTLC: TFloatField;
    CmpTlcABRTLC: TStringField;
    CmpTlcNOMMLC: TStringField;
    CmpMlcID_CMPMLC: TIntegerField;
    CmpMlcNOMMLC: TStringField;
    Label2: TLabel;
    EdAliTlc: TdxDBColorCurrencyEdit;
    Label5: TLabel;
    Label9: TLabel;
    EdRedTlc: TdxDBColorCurrencyEdit;
    EdBasTlc: TdxDBColorCurrencyEdit;
    quPsqID_CMPTLC: TIntegerField;
    quPsqNOMTLC: TStringField;
    quPsqID_CMPMLC: TIntegerField;
    quPsqNOMMLC: TStringField;
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
    ppId_CmpMlc: TppDBText;
    ppNomTlc: TppDBText;
    ppDBPipeline: TppDBPipeline;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    quPsqTIPTLC: TStringField;
    quPsqALITLC: TFloatField;
    quPsqBASTLC: TFloatField;
    quPsqREDTLC: TFloatField;
    quPsqABRTLC: TStringField;
    ppAliTlc: TppDBText;
    ppBasTlc: TppDBText;
    ppRedTlc: TppDBText;
    ppNomMlc: TppDBText;
    ppLabel7: TppLabel;
    Label13: TLabel;
    EdTipTcl: TdxDBColorPickEdit;
    procedure FormCreate(Sender: TObject);
    procedure CmpTlcNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure nvTlcImprime(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure grTlcDblClick(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure BbPsqAgcClick(Sender: TObject);
    procedure EdPsqId_CmpMlcChange(Sender: TObject);
    procedure EdPsqId_CmpTlcKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sFiltro, sOrdem : string;
  end;

var
  fmManTlc: TfmManTlc;

implementation

uses Bbgeral, BbMensag, ManGDB, ManPri, Fpreview, PsqMlc;

{$R *.DFM}

procedure TfmManTlc.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select CmpTlc.*,'+
           '        CmpMlc.NomMlc'+
           ' From CmpTlc LEFT JOIN CmpMlc ON (CmpTlc.Id_CmpMlc = CmpMlc.Id_CmpMlc)';
end;

procedure TfmManTlc.CmpTlcNewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpTlc.Disablecontrols;

  CmpTlcAliTlc.Value := 0;
  CmpTlcRedTlc.Value := 0;
  CmpTlcBasTlc.Value := 100;
  CmpTlcTipTlc.Value := 'Credito';

  CmpTlc.Enablecontrols;
  
  PcTlc.ActivePage := pcPag2;

  EdNomTlc.Setfocus;

end;

procedure TfmManTlc.FormShow(Sender: TObject);
begin
  inherited;

  pcTlc.ActivePage := pcPag1;

  EdPsqId_CmpTlc.SetFocus;

end;

procedure TfmManTlc.nvTlcImprime(Sender: TObject);
begin
  inherited;

  with quPsq,SQL do begin

       Close;
       Text := ' Select CmpTlc.*,'+
               '        CmpMlc.NomMlc'+
               ' From CmpTlc LEFT JOIN CmpMlc ON (CmpTlc.Id_CmpMlc = CmpMlc.Id_CmpMlc)'+ sFiltro + sOrdem;
       Open;

  end;

  if not quPsq.Eof then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManTlc);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        FreeAndNil(fmPreview);

     end;
  end;
end;

procedure TfmManTlc.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqId_CmpTlc.SetFocus;
end;

procedure TfmManTlc.pcPag2Show(Sender: TObject);
begin
  inherited;
  EdNomTlc.SetFocus
end;

procedure TfmManTlc.grTlcDblClick(Sender: TObject);
begin
  inherited;
  pcTlc.ActivePage := pcPag2;
end;

procedure TfmManTlc.BbselecionarClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by CmpTlc.Id_CmpTlc';
       1: sOrdem := ' Order by CmpTlc.NomTlc';
       2: sOrdem := ' Order by CmpTlc.Id_CmpMlc,CmpTlc.Id_CmpTlc';
  end;

  if sFiltro = '' then begin

     if Trim(EdPsqId_CmpTlc.Text) <> '' then sFiltro := sFiltro + ' Where CmpTlc.Id_CmpTlc = '+ QuotedStr(EdPsqId_CmpTlc.Text);

     end
  else
     begin

     if Trim(EdPsqId_CmpTlc.Text) <> '' then sFiltro := sFiltro + '   and CmpTlc.Id_CmpTlc = '+ QuotedStr(EdPsqId_CmpTlc.Text);

  end;

  if Rgbusca.ItemIndex = 0 then begin

     if sFiltro = '' then begin

        if Trim(EdPsqNomTlc.Text) <> '' then sFiltro := sFiltro + ' Where CmpTlc.NomTlc LIKE '+ QuotedStr(EdPsqNomTlc.Text +'%');

        end
     else
        begin

        if Trim(EdPsqNomTlc.Text) <> '' then sFiltro := sFiltro + '   and CmpTlc.NomTlc LIKE '+ QuotedStr(EdPsqNomTlc.Text +'%');

     end;

     end
  else
     begin

     if sFiltro = '' then begin

        if Trim(EdPsqNomTlc.Text) <> '' then sFiltro := sFiltro + ' Where CmpTlc.NomTlc LIKE '+ QuotedStr('%' + EdPsqNomTlc.Text + '%');

        end
     else
        begin

        if Trim(EdPsqNomTlc.Text) <> '' then sFiltro := sFiltro + '   and CmpTlc.NomTlc LIKE '+ QuotedStr('%' + EdPsqNomTlc.Text + '%');

     end;
  end;

  if sFiltro = '' then begin

     if Trim(EdPsqId_CmpMlc.Text) <> '' then sFiltro := sFiltro + ' Where CmpTlc.Id_FinMlc = '+ QuotedStr(EdPsqId_CmpMlc.Text);

     end
  else
     begin

     if Trim(EdPsqId_CmpMlc.Text) <> '' then sFiltro := sFiltro + '   and CmpTlc.Id_FinMlc = '+ QuotedStr(EdPsqId_CmpMlc.Text);

  end;

  with CmpTlc,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManTlc.BbPsqAgcClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqMlc := TfmPsqMlc.Create(Self);

     fmPsqMlc.ShowModal;

     if fmPsqMlc.Id_CmpMlc > 0 then begin

        EdPsqNomMlc.Text := fmPsqMlc.NomMlc;
        
        EdPsqId_CmpMlc.Text := IntToStr(fmPsqMlc.Id_CmpMlc);

     end;

  finally

     FreeAndNil(fmPsqMlc);

  end;
end;

procedure TfmManTlc.EdPsqId_CmpMlcChange(Sender: TObject);
begin
  inherited;
  if EdPsqId_CmpMlc.Text <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select CmpMlc.NomMlc From CmpMlc '+
                  ' Where CmpMlc.Id_CmpMlc = '+ QuotedStr(EdPsqId_CmpMlc.Text);
          Open;

          EdPsqNomMlc.Text := FieldByName('NomMlc').AsString;

     end;

     end
  else
     EdPsqNomMlc.Text := '';
end;

procedure TfmManTlc.EdPsqId_CmpTlcKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManTlc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManTlc.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManTlc := Nil;
end;

end.
