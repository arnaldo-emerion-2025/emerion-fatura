unit PsqCnd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, Db, Wwdatsrc, DBTables,
  Wwquery, DrLabel, hGrid, dxCntner, dxEditor, dxEdLib, dxExEdtr, dxDBELib,
  dxColorEdit;

type
  TfmPsqCnd = class(TForm)
    PedCnd: TwwQuery;
    DsCnd: TwwDataSource;
    PaintBox: TPaintBox;
    Label4: TLabel;
    Label5: TLabel;
    Edpesquisa: TdxColorEdit;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grEmp: ThGrid;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    PedCndID_PEDCND: TIntegerField;
    PedCndNOMCND: TStringField;
    PedCndDSCCND: TFloatField;
    Label6: TLabel;
    PedCndTAXCND: TFloatField;
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grEmpDblClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    Id_PedCnd : integer;
    NomCnd : string;
  end;

var
  fmPsqCnd : TfmPsqCnd;

implementation

{$R *.DFM}

procedure TfmPsqCnd.EdPesquisaChange(Sender: TObject);
begin
  PedCnd.Locate('NomCnd',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCnd.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     NomCnd := PedCndNomCnd.Value;
     
     Id_PedCnd := PedCndId_PedCnd.Value;

     Close;

  end;

  if key = 33 then PedCnd.MoveBy(-10); {Page Up}
  if key = 34 then PedCnd.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then PedCnd.Last;  {End}
     if key = 36 then PedCnd.First; {Home}

     if key = 40 then PedCnd.Next; {Para Baixo}
     if key = 38 then PedCnd.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCnd.grEmpDblClick(Sender: TObject);
begin

  NomCnd := PedCndNomCnd.Value;

  Id_PedCnd := PedCndId_PedCnd.Value;

  Close;

end;

end.
