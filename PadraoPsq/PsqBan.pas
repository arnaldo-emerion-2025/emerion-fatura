unit PsqBan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqBan = class(TForm)
    FinBan: TwwQuery;
    DsBan: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grBan: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    FinBanCODBAN: TIntegerField;
    FinBanNOMBAN: TStringField;
    FinBanULTENV: TIntegerField;
    FinBanULTRET: TIntegerField;
    FinBanFLGTRG: TStringField;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    quSql: TwwQuery;
    procedure grBanDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodBan : integer;
    NomBan : string;
  end;

var
  fmPsqBan: TfmPsqBan;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmPsqBan.grBanDblClick(Sender: TObject);
begin

  CodBan := FinBanCodBan.Value;
  NomBan := FinBanNomBan.Value;

  Close;

end;

procedure TfmPsqBan.EdPesquisaChange(Sender: TObject);
begin
  FinBan.Locate('NOMBAN',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqBan.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodBan := FinBanCodBan.Value;
     NomBan := FinBanNomBan.Value;

     Close;

  end;

  if key = 33 then FinBan.MoveBy(-10); {Page Up}
  if key = 34 then FinBan.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinBan.Last;  {End}
     if key = 36 then FinBan.First; {Home}

     if key = 40 then FinBan.Next; {Para Baixo}
     if key = 38 then FinBan.Prior; {Para Cima}

  end;
end;

procedure TfmPsqBan.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqBan.FormCreate(Sender: TObject);
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

     with FinBan,SQL do begin

          Close;
          Text := ' Select * From FinBan'+
                  ' Where Exists(Select * From FinCnb Where FinCnb.CodBan = FinBan.CodBan and FinCnb.FlgInt = '''+ 'Nao' +''' )'+
                  ' Order by FinBan.NomBan';
          Open;

     end;
  end;
end;

end.
