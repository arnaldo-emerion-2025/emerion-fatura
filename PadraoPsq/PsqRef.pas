unit PsqRef;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqRef = class(TForm)
    EstPro: TwwQuery;
    DsPro: TwwDataSource;
    EstProCODCLP: TStringField;
    EstProCODGRU: TStringField;
    EstProCODSUB: TStringField;
    EstProCODPRO: TStringField;
    EstProDSCPRO: TStringField;
    EstProREFPRO: TStringField;
    EstProCODITE: TStringField;
    PaintBox: TPaintBox;
    Label1: TLabel;
    Label4: TLabel;
    dxDBEdit6: TdxDBColorEdit;
    dxDBEdit5: TdxDBColorEdit;
    EdNomGru: TEdit;
    EdNomSub: TEdit;
    EstProNOMGRU: TStringField;
    EstProNOMSUB: TStringField;
    dxDBEdit28: TdxDBColorEdit;
    grPro: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label2: TLabel;
    EstProCBAPRO: TStringField;
    EstProNOMCLP: TStringField;
    EstProSIMPRO: TStringField;
    quSql: TwwQuery;
    procedure grProDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure DsProDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    SimPro,CodClp,CodGru,CodSub,CodPro,DscPro,CbaPro,NomClp,NomGru,NomSub : string;
  end;

var
  fmPsqRef: TfmPsqRef;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqRef.grProDblClick(Sender: TObject);
begin

  CodClp := EstProCodClp.Value;
  NomClp := EstProNomClp.Value;
  CodGru := EstProCodGru.Value;
  NomGru := EstProNomGru.Value;
  CodSub := EstProCodSub.Value;
  NomSub := EstProNomSub.Value;
  CodPro := EstProCodPro.Value;
  DscPro := EstProDscPro.Value;
  SimPro := EstProSimPro.Value;
  CbaPro := EstProCbaPro.Value;

  Close;

end;

procedure TfmPsqRef.EdPesquisaChange(Sender: TObject);
begin
  EstPro.Locate('REFPRO',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqRef.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodClp := EstProCodClp.Value;
     NomClp := EstProNomClp.Value;
     CodGru := EstProCodGru.Value;
     NomGru := EstProNomGru.Value;
     CodSub := EstProCodSub.Value;
     NomSub := EstProNomSub.Value;
     CodPro := EstProCodPro.Value;
     DscPro := EstProDscPro.Value;
     SimPro := EstProSimPro.Value;
     CbaPro := EstProCbaPro.Value;

     Close;

  end;

  if key = 33 then EstPro.MoveBy(-10); {Page Up}
  if key = 34 then EstPro.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstPro.Last;  {End}
     if key = 36 then EstPro.First; {Home}

     if key = 40 then EstPro.Next; {Para Baixo}
     if key = 38 then EstPro.Prior; {Para Cima}

  end;
end;

procedure TfmPsqRef.DsProDataChange(Sender: TObject; Field: TField);
begin
  EdNomGru.Text := EstProNomGru.Value;
  EdNomSub.Text := EstProNomSub.Value;
end;

procedure TfmPsqRef.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
