unit ImpF03;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, FShowPadrao, dxDBColorEdit, dxDBColorCurrencyEdit,
  dxDBColorDateEdit;

type
  TfmImpF03 = class(TfmShowPadrao)
    PedCt4: TwwQuery;
    DsCt4: TwwDataSource;
    PedCt4APEFOR: TStringField;
    PaintBox: TPaintBox;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label8: TLabel;
    Label25: TLabel;
    dxDBEdit28: TdxDBColorEdit;
    grFor: ThGrid;
    pnTexto: TLabel;
    Label28: TLabel;
    PedCt4CODFOR: TIntegerField;
    PedCt4QTDREG: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    {Private declarations}
  public
    Id_PedCta : integer;
    {Public declarations}
  end;

var
  fmImpF03: TfmImpF03;

implementation

uses dxDemoUtils, ManGDB, ManE11;

{$R *.DFM}

procedure TfmImpF03.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmImpF03.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmImpF03.FormShow(Sender: TObject);
begin
  inherited;
  grFor.SetFocus;
end;

procedure TfmImpF03.grForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then begin

     if PedCt4CodFor.Value > 0 then begin
             
        try

           fmManE11 := TfmManE11.Create(Self);

           fmManE11.Id_FinFor := PedCt4CodFor.Value;

           fmManE11.PedCta.Close;
           fmManE11.PedCta.Params[0].AsInteger := Id_PedCta;
           fmManE11.PedCta.Open;

           fmManE11.PedCt4.Close;
           fmManE11.PedCt4.Params[0].AsInteger := Id_PedCta;
           fmManE11.PedCt4.Params[1].AsInteger := PedCt4CodFor.Value;
           fmManE11.PedCt4.Open;

           fmManE11.RLReport1.PreviewModal;

        finally

           FreeAndNil(fmManE11);

        end;
     end;
  end;
end;

end.
