unit PsqPcp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor;

type
  TfmPsqPcp = class(TForm)
    PedCli: TwwQuery;
    DsCli: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxEdit;
    PedCliNOMCLI: TStringField;
    PedCliCODCLI: TIntegerField;
    Label21: TLabel;
    Label28: TLabel;
    grCli: ThGrid;
    PedCliCODVEN: TIntegerField;
    PedCliUFFCLI: TStringField;
    PedCliCGCCLI: TStringField;
    PedCliAPECLI: TStringField;
    Panel2: TPanel;
    rgBusca: TRadioGroup;
    PedCliCODATD: TIntegerField;
    PedCliCODPFA: TStringField;
    PedCliTIPPFA: TStringField;
    PedCliCODREP: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grCliDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdpesquisaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdpesquisaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grCliKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grCliMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    {Private declarations}
  public
    {Public declarations}
    CodCli,CodVen,CodAtd,CodRep : integer;
    NomCli,UffCli,CgcCli,CodPfa,TipPfa : string;
  end;

var
  fmPsqPcp: TfmPsqPcp;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqPcp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 27 then close;

  if key = 13 then begin

     CodCli := PedCliCodCli.Value;
     CodVen := PedCliCodVen.Value;
     CodRep := PedCliCodRep.Value;
     CodAtd := PedCliCodAtd.Value;
     NomCli := PedCliNomCli.Value;
     UffCli := PedCliUffCli.Value;
     CgcCli := PedCliCgcCli.Value;
     CodPfa := PedCliCodPfa.Value;
     TipPfa := PedCliTipPfa.Value;

     Close;

  end;

  if key = 33 then PedCli.MoveBy(-10); {Page Up}
  if key = 34 then PedCli.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then PedCli.Last;  {End}
     if key = 36 then PedCli.First; {Home}

     if key = 40 then PedCli.Next;  {Para Baixo}
     if key = 38 then PedCli.Prior; {Para Cima}

  end;
end;

procedure TfmPsqPcp.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqPcp.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then PedCli.Locate('NomCli',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then PedCli.Locate('ApeCli',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 2 then PedCli.Locate('CgcCli',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqPcp.grCliDblClick(Sender: TObject);
begin

  CodCli := PedCliCodCli.Value;
  CodVen := PedCliCodVen.Value;
  CodRep := PedCliCodRep.Value;
  CodAtd := PedCliCodAtd.Value;
  NomCli := PedCliNomCli.Value;
  UffCli := PedCliUffCli.Value;
  CgcCli := PedCliCgcCli.Value;
  CodPfa := PedCliCodPfa.Value;
  TipPfa := PedCliTipPfa.Value;

  Close;

end;

procedure TfmPsqPcp.FormShow(Sender: TObject);
begin
  EdPesquisa.SetFocus;
end;

procedure TfmPsqPcp.EdpesquisaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grCli.Color := $00FCF4ED;

  EdPesquisa.Color := clInfoBk;

end;

procedure TfmPsqPcp.EdpesquisaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grCli.Color := $00FCF4ED;

  EdPesquisa.Color := clInfoBk;

end;

procedure TfmPsqPcp.grCliKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grCli.Color := clInfoBk;

  EdPesquisa.Color := $00FCF4ED;

end;

procedure TfmPsqPcp.grCliMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grCli.Color := clInfoBk;

  EdPesquisa.Color := $00FCF4ED;

end;

end.
