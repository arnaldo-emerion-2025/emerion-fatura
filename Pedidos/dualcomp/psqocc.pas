unit PsqOcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, FShowpadrao;

type
  TfmPsqOcc = class(TfmShowPadrao)
    PedOcc: TwwQuery;
    DsOcc: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBEdit;
    grOcc: ThGrid;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    PedOccCODEMP: TIntegerField;
    PedOccDTECTA: TDateTimeField;
    PedOccNUMCTA: TIntegerField;
    PedOccTIPOCC: TStringField;
    PedOccSEQOCC: TIntegerField;
    PedOccNOMOCC: TStringField;
    PedOccDTEOPE: TDateTimeField;
    PedOccCODCLI: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsOccDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqOcc: TfmPsqOcc;

implementation

uses dxDemoUtils, PsqOc3, Bbfuncao, PsqOc4;

{$R *.DFM}

procedure TfmPsqOcc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then close;

  if key = 112 then begin

     if PedOccSeqOcc.Value = 3 then begin

        try

           fmPsqOc3 := TfmPsqOc3.Create(Self);

           with fmPsqOc3.FinCrp,SQL do begin

                Close;
                Text := ' Select FinCrp.*,'''+ fDateToSQL(Date) +''' - FinCrp.DtvCrp as Atraso,'+
                        '        TextoOcor(IntStrZeros(FinCrp.NumCrp,3),'''+ '/' +''',IntStrZeros(FinCre.QtpCre,3),'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as QtpCre,'+
                        '        FinBan.NomBan'+
                        ' From FinCrp LEFT JOIN FinCre ON (FinCrp.CodEmp = FinCre.CodEmp)'+
                        '                             AND (FinCrp.DteCre = FinCre.DteCre)'+
                        '                             AND (FinCrp.NumCre = FinCre.NumCre)'+
                        '             LEFT JOIN FinBan ON (FinCrp.CodBan = FinBan.CodBan)'+
                        ' Where FinCrp.CodCli = '''+ IntToStr(PedOccCodCli.Value) +''''+
                        '   and FinCrp.FlgDel = '''+ ' '                          +''''+
                        '   and FinCrp.FlgDev = '''+ ' '                          +''''+
                        '   and FinCrp.DtvCrp < '''+ fDateToSQL(Date)             +''''+
                        ' Order by FinCrp.CodEmp,FinCrp.DteCre,FinCrp.NumCre,FinCrp.NumCrp';
                 Open;

           end;

           fmPsqOc3.ShowModal;

        finally

           FreeAndNil(fmPsqOc3);

        end;
     end;

     if PedOccSeqOcc.Value = 4 then begin

        try

           fmPsqOc4 := TfmPsqOc4.Create(Self);

           fmPsqOc4.Caption := 'Cheques Reapresentados';

           with fmPsqOc4.FinChc,SQL do begin

                Close;
                Text := ' Select * From FinChc'+
                        ' Where FinChc.CodCli = '''+ IntToStr(PedOccCodCli.Value) +''''+
                        '   and FinChc.SitChc = '''+ 'Reapresentado'              +''''+
                        ' Order by FinChc.CodCli,FinChc.CodBan,FinChc.CodAgb,FinChc.CodCnb,FinChc.NumChc';
                 Open;

           end;

           fmPsqOc4.ShowModal;

        finally

           FreeAndNil(fmPsqOc4);

        end;
     end;

     if PedOccSeqOcc.Value = 4 then begin

        try

           fmPsqOc4 := TfmPsqOc4.Create(Self);

           fmPsqOc4.Caption := 'Cheques Devolvidos';

           with fmPsqOc4.FinChc,SQL do begin

                Close;
                Text := ' Select * From FinChc'+
                        ' Where FinChc.CodCli = '''+ IntToStr(PedOccCodCli.Value) +''''+
                        '   and FinChc.SitChc = '''+ 'Devolvido'                  +''''+
                        ' Order by FinChc.CodCli,FinChc.CodBan,FinChc.CodAgb,FinChc.CodCnb,FinChc.NumChc';
                 Open;

           end;

           fmPsqOc4.ShowModal;

        finally

           FreeAndNil(fmPsqOc4);

        end;
     end;
  end;
end;

procedure TfmPsqOcc.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqOcc.FormShow(Sender: TObject);
begin
  inherited;
  grOcc.SetFocus;
end;

procedure TfmPsqOcc.DsOccDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (PedOccSeqOcc.Value >= 3) and (PedOccSeqOcc.Value <= 5) then
     Label2.Visible := True
  else
     Label2.Visible := False;
end;

end.
