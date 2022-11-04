unit PsqCai;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqCai = class(TForm)
    LojCai: TwwQuery;
    DsCai: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grCai: ThGrid;
    LojCaiNOMCAI: TStringField;
    LojCaiCODCAI: TIntegerField;
    LojCaiCODEMP: TIntegerField;
    LojCaiNOMEMP: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grCaiDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomCai,NomEmp : string;
    CodCai,CodEmp : integer;
  end;

var
  fmPsqCai: TfmPsqCai;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCai.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodEmp := LojCaiCodEmp.Value;
     NomEmp := LojCaiNomEmp.Value;
     CodCai := LojCaiCodCai.Value;
     NomCai := LojCaiNomCai.Value;

     Close;

  end;

  if key = 33 then LojCai.MoveBy(-10); {Page Up}
  if key = 34 then LojCai.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then LojCai.Last;  {End}
     if key = 36 then LojCai.First; {Home}

     if key = 40 then LojCai.Next; {Para Baixo}
     if key = 38 then LojCai.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCai.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCai.EdpesquisaChange(Sender: TObject);
begin
  LojCai.Locate('NomCai',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCai.grCaiDblClick(Sender: TObject);
begin

  CodEmp := LojCaiCodEmp.Value;
  NomEmp := LojCaiNomEmp.Value;
  CodCai := LojCaiCodCai.Value;
  NomCai := LojCaiNomCai.Value;

  Close;

end;

procedure TfmPsqCai.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
