unit ManCol;

interface

uses
  Windows, Forms, dxGrClms, dxDBGrid, Db, DBTables, StdCtrls, dxTLClms, dxTL,
  dxCntner, dxExEdtr, Controls, ExtCtrls, Classes, dxDBTLCl, dxDBCtrl,
  FShowPadrao;

type
  TfmManCol = class(TfmShowPadrao)
    Panel1: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject; const Text: string; State: TdxCheckBoxState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    {Private declarations}
    DragNode: TdxTreeListNode;
  public
    {Public declarations}
    procedure Synchronize(Grid: TdxDBGrid);
  end;

var
  fmManCol: TfmManCol;

implementation

uses SysUtils;

{$R *.DFM}

procedure TfmManCol.TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
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

procedure TfmManCol.TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TfmManCol.TLCustomizeStartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TfmManCol.TLCustomizeIsVisibleToggleClick(Sender: TObject; const Text: string; State: TdxCheckBoxState);
var
  column: TdxTreeListColumn;
begin

  column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);

  column.Visible := State = cbsChecked;

end;

procedure TfmManCol.Synchronize(Grid: TdxDBGrid);
var
  i: Integer;
  Node: TdxTreeListNode;
begin

  TLCustomize.ClearNodes;

  for i := 0 to Grid.ColumnCount - 1 do
  begin

    Node := TLCustomize.Add;

    Node.Values[TLCustomizeColumn.Index] := Grid.Columns[I].Caption;

    if Grid.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;

    Node.Data := Grid.Columns[I];

  end;
end;

procedure TfmManCol.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    close;
end;

end.
