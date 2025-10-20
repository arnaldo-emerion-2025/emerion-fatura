unit ImpF02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, FShowPadrao, dxDBColorEdit, dxDBColorCurrencyEdit,
  dxDBColorDateEdit;

type
  TfmImpF02 = class(TfmShowPadrao)
    PedRe4: TwwQuery;
    DsRe4: TwwDataSource;
    PedRe4APEFOR: TStringField;
    PaintBox: TPaintBox;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label8: TLabel;
    Label25: TLabel;
    dxDBEdit28: TdxDBColorEdit;
    grFor: ThGrid;
    pnTexto: TLabel;
    Label28: TLabel;
    PedRe4CODFOR: TIntegerField;
    PedRe4QTDREG: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    {Private declarations}
  public
    Id_PedRes : integer;
    {Public declarations}
  end;

var
  fmImpF02: TfmImpF02;

implementation

uses dxDemoUtils, ManGDB, ManE10;

{$R *.DFM}

procedure TfmImpF02.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmImpF02.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmImpF02.FormShow(Sender: TObject);
begin
  inherited;
  grFor.SetFocus;
end;

procedure TfmImpF02.grForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then begin

     if PedRe4CodFor.Value > 0 then begin
             
        try

           fmManE10 := TfmManE10.Create(Self);

           fmManE10.Id_FinFor := PedRe4CodFor.Value;
           
           fmManE10.PedRes.Close;
           fmManE10.PedRes.Params[0].AsInteger := Id_PedRes;
           fmManE10.PedRes.Open;

           fmManE10.PedRe4.Close;
           fmManE10.PedRe4.Params[0].AsInteger := Id_PedRes;
           fmManE10.PedRe4.Params[1].AsInteger := PedRe4CodFor.Value;
           fmManE10.PedRe4.Open;

           fmManE10.RLReport1.PreviewModal;

        finally

           FreeAndNil(fmManE10);

        end;
     end;
  end;
end;

end.
