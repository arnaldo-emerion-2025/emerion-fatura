unit ColR02;

interface

uses
  Windows, Forms, dxGrClms, dxDBGrid, Db, DBTables, StdCtrls, dxTLClms, dxTL,
  dxCntner, dxExEdtr, Controls, ExtCtrls, Classes, dxDBTLCl, dxDBCtrl,
  FShowPadrao;

type
  TfmColR02 = class(TfmShowPadrao)
    Panel1: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject; const Text: string; State: TdxCheckBoxState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    {Private declarations}

    DragNode: TdxTreeListNode;
    procedure Synchronize;

  public
    {Public declarations}
  end;

var
  fmColR02: TfmColR02;

implementation

uses SysUtils, FatR02;

{$R *.DFM}

procedure TfmColR02.TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  column: TdxTreeListColumn;
begin

  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);

  column := TdxTreeListColumn(DragNode.Data);

  if (TLCustomize.FocusedNode <> nil) then
    column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else
    column.Index := 0;
end;

procedure TfmColR02.TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TfmColR02.TLCustomizeStartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TfmColR02.TLCustomizeIsVisibleToggleClick(Sender: TObject; const Text: string; State: TdxCheckBoxState);
var
  column: TdxTreeListColumn;
begin

  column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);

  column.Visible := State = cbsChecked;

end;

procedure TfmColR02.Synchronize;
var
  i: Integer;
  Node: TdxTreeListNode;
begin

  TLCustomize.ClearNodes;

  for i := 0 to fmFatR02.grFat.ColumnCount - 1 do
  begin

    Node := TLCustomize.Add;

    Node.Values[TLCustomizeColumn.Index] := fmFatR02.grFat.Columns[I].Caption;

    if fmFatR02.grFat.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;

    Node.Data := fmFatR02.grFat.Columns[I];

  end;
end;

procedure TfmColR02.FormCreate(Sender: TObject);
begin
  inherited;
  Synchronize;
end;

procedure TfmColR02.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    close;
end;

end.
