unit PsqPfa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxDBColorEdit, dxColorEdit, Wwdbgrid;

type
  TfmPsqPfa = class(TForm)
    EstPfa: TwwQuery;
    DsPfa: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grPfa: ThGrid;
    Label2: TLabel;
    dxDBEdit5: TdxDBColorEdit;
    EdCfop1: TEdit;
    dxDBEdit1: TdxDBColorEdit;
    EdCfop2: TEdit;
    Label1: TLabel;
    Label34: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    dxDBEdit2: TdxDBColorEdit;
    EdIntFin: TEdit;
    dxDBEdit3: TdxDBColorEdit;
    EdAtuEst: TEdit;
    dxDBEdit4: TdxDBColorEdit;
    EdConSum: TEdit;
    EstPfaCODPFA: TStringField;
    EstPfaDSCPFA: TStringField;
    Label3: TLabel;
    dxDBEdit6: TdxDBColorEdit;
    EdModPfa: TEdit;
    EstPfaTIPPFA: TStringField;
    EstPfaDSRPFA: TStringField;
    EstPfaCODCF1: TStringField;
    EstPfaCODCF2: TStringField;
    EstPfaINTFIN: TStringField;
    EstPfaATUEST: TStringField;
    EstPfaCONSUM: TStringField;
    EstPfaMODPFA: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grPfaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsPfaDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    vTipo, vCompl:string;
    CodPfa,CodCf1,NomPfa : string;
  end;

var
  fmPsqPfa: TfmPsqPfa;

implementation

uses dxDemoUtils, ManNge_NFE;

{$R *.DFM}

procedure TfmPsqPfa.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodPfa := EstPfaCodPfa.Value;
     CodCf1 := EstPfaCodCf1.Value;
     NomPfa := EstPfaDscPfa.Value;
   fmManNge_NFE.vtiponota:= EstPfaMODPFA.AsString;

     Close;

  end;

  if key = 33 then EstPfa.MoveBy(-10); {Page Up}
  if key = 34 then EstPfa.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstPfa.Last;  {End}
     if key = 36 then EstPfa.First; {Home}

     if key = 40 then EstPfa.Next; {Para Baixo}
     if key = 38 then EstPfa.Prior; {Para Cima}

  end;
end;

procedure TfmPsqPfa.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqPfa.EdpesquisaChange(Sender: TObject);
begin
  EstPfa.Locate('DscPfa',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqPfa.grPfaDblClick(Sender: TObject);
begin

  CodPfa := EstPfaCodPfa.Value;
  CodCf1 := EstPfaCodCf1.Value;
  NomPfa := EstPfaDscPfa.Value;
  fmManNge_NFE.vtiponota:= EstPfaMODPFA.AsString;
  Close;

end;

procedure TfmPsqPfa.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

procedure TfmPsqPfa.DsPfaDataChange(Sender: TObject; Field: TField);
begin

  EdCfop1.Text := EstPfaCodCf1.Value;
  EdCfop2.Text := EstPfaCodCf2.Value;

  EdIntFin.Text := EstPfaIntFin.Value;
  EdAtuEst.Text := EstPfaAtuEst.Value;
  EdConsum.Text := EstPfaConSum.Value;
  EdModPfa.Text := EstPfaModPfa.Value;

end;

procedure TfmPsqPfa.FormCreate(Sender: TObject);
begin
vCompl:='';
vtipo:='';
end;

end.
