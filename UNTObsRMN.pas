unit UNTObsRMN;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxDBColorLookupEdit,
  dxCntner, dxEdLib, dxDBColorEdit, StdCtrls, ComCtrls, DBCtrls,
  DBColorRichEdit, dxDBColorMemo, Buttons;

type
  TFrmObsRMN = class(TForm)
    PaintBox: TPaintBox;
    Panel3: TPanel;
    Label11: TLabel;
    dxDBColorMemo1: TdxDBColorMemo;
    blFinalizar: TSpeedButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxDBColorMemo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure blFinalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmObsRMN: TFrmObsRMN;

implementation

uses PsqCro, manrom;

{$R *.DFM}

procedure TFrmObsRMN.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 123 then
    close;
end;

procedure TFrmObsRMN.dxDBColorMemo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 123 then
    close;
end;

procedure TFrmObsRMN.blFinalizarClick(Sender: TObject);
begin
  close;
end;

end.
