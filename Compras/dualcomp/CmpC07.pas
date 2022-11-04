unit CmpC07;

interface

uses
  Windows, Forms, dxGrClms, dxDBGrid, Db, DBTables, StdCtrls, dxTLClms, dxTL,
  dxCntner, dxExEdtr, Controls, ExtCtrls, Classes, dxDBTLCl, dxDBCtrl,
  FShowPadrao;

type
  TfmCmpC07 = class(TfmShowPadrao)
    Panel1: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject; const Text: String; State: TdxCheckBoxState);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    {Private declarations}
    DragNode : TdxTreeListNode;
    procedure Synchronize;
  public
    {Public declarations}
  end;

var
  fmCmpC07: TfmCmpC07;

implementation

uses SysUtils, CmpR07;

{$R *.DFM}

procedure TfmCmpC07.TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
var
column : TdxTreeListColumn;
begin

  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);

  column := TdxTreeListColumn(DragNode.Data);

  if (TLCustomize.FocusedNode <> nil) then
     column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else
     column.Index := 0;
end;

procedure TfmCmpC07.TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TfmCmpC07.TLCustomizeStartDrag(Sender: TObject; var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TfmCmpC07.TLCustomizeIsVisibleToggleClick(Sender: TObject;  const Text: String; State: TdxCheckBoxState);
var
column : TdxTreeListColumn;
begin

  column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);

  column.Visible := State = cbsChecked;

end;

procedure TfmCmpC07.Synchronize;
var
i : Integer;
Node: TdxTreeListNode;
begin

  TLCustomize.ClearNodes;

  for i := 0 to fmCmpR07.grEnt.ColumnCount - 1 do begin

      Node := TLCustomize.Add;

      Node.Values[TLCustomizeColumn.Index] := fmCmpR07.grEnt.Columns[I].Caption;

      if fmCmpR07.grEnt.Columns[I].Visible then
         Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;

      Node.Data := fmCmpR07.grEnt.Columns[I];

  end;
end;

procedure TfmCmpC07.FormCreate(Sender: TObject);
begin
  inherited;
  Synchronize;
end;

procedure TfmCmpC07.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

end.
