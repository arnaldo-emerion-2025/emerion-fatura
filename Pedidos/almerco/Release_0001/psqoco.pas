unit PsqOco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, FShowPadrao;

type
  TfmPsqOco = class(TfmShowPadrao)
    PedOco: TwwQuery;
    DsOco: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBEdit;
    grOco: ThGrid;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label3: TLabel;
    PedRe2: TwwQuery;
    PedRe2DSCPRO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2DSCRE2: TFloatField;
    DsRe2: TwwDataSource;
    dbRe2: TdxDBGraphicEdit;
    grRe2: ThGrid;
    PedRe2DSCPER: TFloatField;
    PedOcoID_PEDRES: TIntegerField;
    PedOcoTIPOCO: TStringField;
    PedOcoNOMOCO: TStringField;
    PedOcoNRORE2: TIntegerField;
    PedOcoCODCLI: TIntegerField;
    PedOcoID_PEDOCO: TIntegerField;
    PedOcoDTEOCO: TDateTimeField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grOcoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grOcoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grRe2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grRe2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DsOcoDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqOco: TfmPsqOco;

implementation

uses dxDemoUtils, PsqOc3, Bbfuncao, PsqOc4;

{$R *.DFM}

procedure TfmPsqOco.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;

  if key = 112 then begin

     if PedOcoId_PedOco.Value = 3 then begin

        try

           fmPsqOc3 := TfmPsqOc3.Create(Self);

           with fmPsqOc3.FinCrp,SQL do begin

                Close;
                Text := ' Select FinCrp.*,'+ QuotedStr(fDateToSQL(Date)) +' - FinCrp.DtvCrp as Atraso,'+
                        '        TextoOcor(IntStrZeros(FinCrp.NumCrp,3),'+ QuotedStr('/') +',IntStrZeros(FinCre.QtpCre,3),'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as QtpCre,'+
                        '        FinBan.NomBan'+
                        ' From FinCrp LEFT JOIN FinCre ON (FinCrp.CodEmp = FinCre.CodEmp '+
                        '                             AND  FinCrp.DteCre = FinCre.DteCre '+
                        '                             AND  FinCrp.NumCre = FinCre.NumCre)'+
                        '             LEFT JOIN FinBan ON (FinCrp.CodBan = FinBan.CodBan)'+
                        ' Where FinCrp.CodCli = '+ QuotedStr(IntToStr(PedOcoCodCli.Value)) +
                        '   and FinCrp.FlgDel = '+ QuotedStr(' ')  +
                        '   and FinCrp.FlgDev = '+ QuotedStr(' ') +
                        '   and FinCrp.DtvCrp < '+ QuotedStr(fDateToSQL(Date)) +
                        ' Order by FinCrp.CodEmp,FinCrp.DteCre,FinCrp.NumCre,FinCrp.NumCrp';
                 Open;

           end;

           fmPsqOc3.ShowModal;

        finally

           FreeAndNil(fmPsqOc3);

        end;
     end;

     if PedOcoId_PedOco.Value = 4 then begin

        try

           fmPsqOc4 := TfmPsqOc4.Create(Self);

           fmPsqOc4.Caption := 'Cheques Reapresentados';

           with fmPsqOc4.FinChc,SQL do begin

                Close;
                Text := ' Select * From FinChc'+
                        ' Where FinChc.CodCli = '+ QuotedStr(IntToStr(PedOcoCodCli.Value)) +
                        '   and FinChc.SitChc = '+ QuotedStr('Reapresentado') +
                        ' Order by FinChc.CodCli,FinChc.CodBan,FinChc.CodAgb,FinChc.CodCnb,FinChc.NumChc';
                 Open;

           end;

           fmPsqOc4.ShowModal;

        finally

           FreeAndNil(fmPsqOc4);

        end;
     end;

     if PedOcoId_PedOco.Value = 4 then begin

        try

           fmPsqOc4 := TfmPsqOc4.Create(Self);

           fmPsqOc4.Caption := 'Cheques Devolvidos';

           with fmPsqOc4.FinChc,SQL do begin

                Close;
                Text := ' Select * From FinChc'+
                        ' Where FinChc.CodCli = '+ QuotedStr(IntToStr(PedOcoCodCli.Value)) +
                        '   and FinChc.SitChc = '+ QuotedStr('Devolvido') +
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

procedure TfmPsqOco.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqOco.FormShow(Sender: TObject);
begin
  inherited;
  grOco.SetFocus;
end;

procedure TfmPsqOco.grOcoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grOco.Color := clInfoBk;

  grRe2.Color := $00FCF4ED;

end;

procedure TfmPsqOco.grOcoMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grOco.Color := clInfoBk;

  grRe2.Color := $00FCF4ED;

end;

procedure TfmPsqOco.grRe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grRe2.Color := clInfoBk;

  grOco.Color := $00FCF4ED;

end;

procedure TfmPsqOco.grRe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grRe2.Color := clInfoBk;

  grOco.Color := $00FCF4ED;

end;

procedure TfmPsqOco.DsOcoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (PedOcoId_PedOco.Value >= 3) and (PedOcoId_PedOCo.Value <= 5) then
     Label2.Visible := True
  else
     Label2.Visible := False;
end;

end.
