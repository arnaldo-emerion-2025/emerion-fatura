unit ManCor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  wwdbdatetimepicker, dxDBColorEdit, dxColorEdit;

type
  TfmManCor = class(TfmPadrao)
    UpCor: TUpdateSQL;
    EstCor: TwwQuery;
    DsCor: TwwDataSource;
    pcCor: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Shape2: TShape;
    Label10: TLabel;
    EdPsqCodCor: TdxColorEdit;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Bbselecionar: TBitBtn;
    Panel1: TPanel;
    nvCor: ThDBNavigator;
    Panel3: TPanel;
    grCor: ThGrid;
    Shape4: TShape;
    Label3: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Panel4: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    Shape11: TShape;
    Label9: TLabel;
    EdNomCor: TdxDBColorEdit;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomCor: TdxColorEdit;
    EdCodCor: TdxDBColorEdit;
    Label12: TLabel;
    EstCorNOMCOR: TStringField;
    Shape1: TShape;
    Shape3: TShape;
    EstCorCODCOR: TStringField;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grCorDblClick(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure EstCorNewRecord(DataSet: TDataSet);
    procedure pcPag2Show(Sender: TObject);
    procedure DsCorDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sOrdem, sFiltro : string;
  end;

var
  fmManCor: TfmManCor;

implementation

uses Bbgeral, Bbmensag, ManPri;

{$R *.DFM}

{*************************************************************************
* Rotina: Evitar Movimentação de Janelas
*************************************************************************}
procedure TfmManCor.FormCreate(Sender: TObject);
begin
  inherited;
  sBase  := ' Select * From EstCor ';
end;

procedure TfmManCor.BbselecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by CodCor';
       1: sOrdem := ' Order by NomCor';
  end;

  if (EdpsqCodCor.Text <> '') then sFiltro := ' Where CodCor = '''+ EdpsqCodCor.Text +'''';

  if Rgbusca.ItemIndex = 0 then begin

     if (EdpsqNomCor.Text <> '') then sFiltro := ' Where NomCor LIKE '''+ EdpsqNomCor.Text +'%''';

     end
  else
     begin

     if (EdpsqNomCor.Text <> '') then sFiltro := ' Where NomCor LIKE ''%' + EdpsqNomCor.Text + '%''';

  end;

  with EstCor,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManCor.EstCorNewRecord(DataSet: TDataSet);
begin
  inherited;

  PcCor.ActivePage := pcPag2;

  EdCodCor.Enabled := True;

  EdCodCor.Font.Style := [];

  EdCodCor.SetFocus

end;

procedure TfmManCor.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodCor.SetFocus;
end;

procedure TfmManCor.grCorDblClick(Sender: TObject);
begin
  inherited;
  pcCor.ActivePage := pcPag2;
end;

procedure TfmManCor.FormShow(Sender: TObject);
begin
  inherited;

  PcCor.ActivePage := PcPag1;

  EdPsqCodCor.SetFocus;

end;

procedure TfmManCor.pcPag2Show(Sender: TObject);
begin
  inherited;

  if EdCodCor.Enabled then
     EdCodCor.SetFocus
  else
     EdNomCor.SetFocus;

end;

procedure TfmManCor.DsCorDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvCor.Salvar then begin

     if EdCodCor.Enabled then begin

        EdCodCor.Enabled := False;

        EdCodCor.Font.Style := [fsBold];

     end;
  end
end;

procedure TfmManCor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManCor.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCor := Nil;
end;

end.
