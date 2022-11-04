unit ImpF01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, FShowPadrao, dxDBColorEdit, dxDBColorCurrencyEdit,
  dxDBColorDateEdit;

type
  TfmImpF01 = class(TfmShowPadrao)
    PedGr4: TwwQuery;
    DsGr4: TwwDataSource;
    PedGr4APEFOR: TStringField;
    PaintBox: TPaintBox;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label8: TLabel;
    Label25: TLabel;
    dxDBEdit28: TdxDBColorEdit;
    grFor: ThGrid;
    pnTexto: TLabel;
    Label28: TLabel;
    PedGr4CODFOR: TIntegerField;
    PedGr4QTDREG: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    {Private declarations}
  public
    Id_PedGer : integer;
    {Public declarations}
  end;

var
  fmImpF01: TfmImpF01;

implementation

uses dxDemoUtils, ManGDB, ManE09;

{$R *.DFM}

procedure TfmImpF01.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmImpF01.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmImpF01.FormShow(Sender: TObject);
begin
  inherited;
  grFor.SetFocus;
end;

procedure TfmImpF01.grForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then begin

     if PedGr4CodFor.Value > 0 then begin
             
        try

           fmManE09 := TfmManE09.Create(Self);

           fmManE09.Id_FinFor := PedGr4CodFor.Value;
           
           fmManE09.PedGer.Close;
           fmManE09.PedGer.Params[0].AsInteger := Id_PedGer;
           fmManE09.PedGer.Open;

           fmManE09.PedGr4.Close;
           fmManE09.PedGr4.Params[0].AsInteger := Id_PedGer;
           fmManE09.PedGr4.Params[1].AsInteger := PedGr4CodFor.Value;
           fmManE09.PedGr4.Open;

           fmManE09.RLReport1.PreviewModal;

        finally

           FreeAndNil(fmManE09);

        end;
     end;
  end;
end;

end.
