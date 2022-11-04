unit PsqCli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqCli = class(TForm)
    FinCli: TwwQuery;
    DsCli: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    FinCliNOMCLI: TStringField;
    FinCliCODCLI: TIntegerField;
    Label21: TLabel;
    Label28: TLabel;
    grCli: ThGrid;
    FinCliCODVEN: TIntegerField;
    FinCliUFFCLI: TStringField;
    FinCliCGCCLI: TStringField;
    FinCliAPECLI: TStringField;
    Panel2: TPanel;
    FinCliCODATD: TIntegerField;
    FinCliCODPFA: TStringField;
    FinCliTIPPFA: TStringField;
    rgBusca: TRadioGroup;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grCliDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodCli,CodVen,CodAtd : integer;
    NomCli,UffCli,CgcCli,CodPfa,TipPfa : string;
  end;

var
  fmPsqCli: TfmPsqCli;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCli.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  
  if key = 27 then close;

  if key = 13 then begin

     CodCli := FinCliCodCli.Value;
     CodVen := FinCliCodVen.Value;
     CodAtd := FinCliCodAtd.Value;
     NomCli := FinCliNomCli.Value;
     UffCli := FinCliUffCli.Value;
     CgcCli := FinCliCgcCli.Value;
     CodPfa := FinCliCodPfa.Value;
     TipPfa := FinCliTipPfa.Value;

     Close;

  end;

  if key = 33 then FinCli.MoveBy(-10); {Page Up}
  if key = 34 then FinCli.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinCli.Last;  {End}
     if key = 36 then FinCli.First; {Home}

     if key = 40 then FinCli.Next;  {Para Baixo}
     if key = 38 then FinCli.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCli.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCli.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then FinCli.Locate('NomCli',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then FinCli.Locate('ApeCli',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 2 then FinCli.Locate('CgcCli',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCli.grCliDblClick(Sender: TObject);
begin

  CodCli := FinCliCodCli.Value;
  CodVen := FinCliCodVen.Value;
  CodAtd := FinCliCodAtd.Value;
  NomCli := FinCliNomCli.Value;
  UffCli := FinCliUffCli.Value;
  CgcCli := FinCliCgcCli.Value;
  CodPfa := FinCliCodPfa.Value;
  TipPfa := FinCliTipPfa.Value;

  Close;

end;

procedure TfmPsqCli.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
