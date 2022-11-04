unit PsqSub;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqSub = class(TForm)
    EstSub: TwwQuery;
    DsSub: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grSub: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    EstSubCODGRU: TStringField;
    EstSubNOMSUB: TStringField;
    EstSubCODSUB: TStringField;
    EstSubNOMGRU: TStringField;
    Panel3: TPanel;
    Label1: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label2: TLabel;
    dxDBEdit5: TdxDBColorEdit;
    EdNomGru: TEdit;
    procedure grSubDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure DsSubDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    CodGru,CodSub,NomGru,NomSub : string;
  end;

var
  fmPsqSub: TfmPsqSub;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqSub.grSubDblClick(Sender: TObject);
begin

  CodGru := EstSubCodGru.Value;
  CodSub := EstSubCodSub.Value;
  NomGru := EstSubNomGru.Value;
  NomSub := EstSubNomSub.Value;

  Close;

end;

procedure TfmPsqSub.EdPesquisaChange(Sender: TObject);
begin
  EstSub.Locate('NOMSUB',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqSub.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodGru := EstSubCodGru.Value;
     CodSub := EstSubCodSub.Value;
     NomGru := EstSubNomGru.Value;
     NomSub := EstSubNomSub.Value;

     Close;

  end;

  if key = 33 then EstSub.MoveBy(-10); {Page Up}
  if key = 34 then EstSub.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstSub.Last;  {End}
     if key = 36 then EstSub.First; {Home}

     if key = 40 then EstSub.Next; {Para Baixo}
     if key = 38 then EstSub.Prior; {Para Cima}

  end;
end;

procedure TfmPsqSub.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqSub.DsSubDataChange(Sender: TObject; Field: TField);
begin
  EdNomGru.Text := EstSubCodGru.Value + ' - ' + EstSubNomGru.Value;
end;

end.
