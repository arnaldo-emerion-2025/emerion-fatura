unit PsqEmp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqEmp = class(TForm)
    GerEmp: TwwQuery;
    DsEmp: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    GerEmpNOMEMP: TStringField;
    GerEmpCODEMP: TIntegerField;
    grEmp: ThGrid;
    GerEmpAPEEMP: TStringField;
    quSql: TwwQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grEmpDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    ApeEmp : string;
    NomEmp : string;
    CodEmp : integer;
  end;

var
  fmPsqEmp: TfmPsqEmp;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmPsqEmp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodEmp := GerEmpCodEmp.Value;
     ApeEmp := GerEmpApeEmp.Value;     
     NomEmp := GerEmpNomEmp.Value;

     Close;

  end;

  if key = 33 then GerEmp.MoveBy(-10); {Page Up}
  if key = 34 then GerEmp.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then GerEmp.Last;  {End}
     if key = 36 then GerEmp.First; {Home}

     if key = 40 then GerEmp.Next; {Para Baixo}
     if key = 38 then GerEmp.Prior; {Para Cima}

  end;
end;

procedure TfmPsqEmp.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqEmp.EdpesquisaChange(Sender: TObject);
begin
  GerEmp.Locate('APEEMP',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqEmp.grEmpDblClick(Sender: TObject);
begin

  CodEmp := GerEmpCodEmp.Value;
  ApeEmp := GerEmpApeEmp.Value;  
  NomEmp := GerEmpNomEmp.Value;

  Close;

end;

procedure TfmPsqEmp.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

procedure TfmPsqEmp.FormCreate(Sender: TObject);
begin

  if GFlgAce <> 'Sim' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select FLGDEL,SEQIMP from GerPar';
          Open;

          if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

             GFlgAce := 'Sim';

             if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

             end
          else
             begin

             GEmpLog := 0;
             GFlgAce := 'Nao';

          end;
     end;
  end;  

  if GFlgAce = 'Sim' then begin

     with GerEmp,SQL do begin

          Close;
          Text := ' Select NomEmp,ApeEmp,CodEmp From GerEmp';

          if GEmpLog > 0 then
             Text := Text + ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
          else
             Text := Text + ' Where GerEmp.CodFil > 0';

          Text := Text + ' Order by GerEmp.NomEmp';

          Open;

     end;
  end;
end;

end.
