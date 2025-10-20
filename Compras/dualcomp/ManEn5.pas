unit ManEn5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, wwdbdatetimepicker, ComCtrls, wwriched, Buttons,
  dxfOutlookBar, dxfColorButton, dxBar, dxfPictureButton, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, Grids, Wwdbigrd, Wwdbgrid, hGrid,
  FShowPadrao;

type
  TfmManEn5 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    CmpEnt: TQuery;
    DsEnt: TDataSource;
    dbPed: TdxDBGraphicEdit;
    grEnt: ThGrid;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label32: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    CmpEntCODEMP: TIntegerField;
    CmpEntDTEENT: TDateTimeField;
    CmpEntNUMENT: TIntegerField;
    CmpEntSEQOEN: TIntegerField;
    CmpEntDTEDOC: TDateTimeField;
    CmpEntDTECRE: TDateTimeField;
    CmpEntCODFOR: TIntegerField;
    CmpEntTOTENT: TFloatField;
    CmpEntTOTIPI: TFloatField;
    CmpEntTOTGER: TFloatField;
    CmpEntFLGENT: TStringField;
    CmpEntEMPOEN: TIntegerField;
    CmpEntDTEOEN: TDateTimeField;
    CmpEntNUMOEN: TIntegerField;
    CmpEntCODUSU: TIntegerField;
    CmpEntNROOEN: TIntegerField;
    CmpEntLOGUSU: TStringField;
    CmpEntHREENT: TStringField;
    CmpEntAPEFOR: TStringField;
    Label1: TLabel;
    UpEnt: TUpdateSQL;
    Label2: TLabel;
    Label3: TLabel;
    pnTotOen: TLabel;
    Label5: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bretornarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grEntKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManEn5: TfmManEn5;

implementation

uses dxDemoUtils, Bbgeral, BbMensag, ManEnt, ManGDB;

{$R *.DFM}

procedure TfmManEn5.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmManEn5.bretornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManEn5.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEn5.FormShow(Sender: TObject);
begin
  inherited;
  
  pnTotOen.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotOen.Value);

  grEnt.SetFocus;
  
end;

procedure TfmManEn5.grEntKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if CmpEntCodEmp.Value > 0 then begin

     if key = 32 then begin

        if CmpEntFlgEnt.Value = 'Nao' then begin

           CmpEnt.Edit;

           CmpEntFlgEnt.Value := 'Sim';

           with CmpEnt do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if CmpEnt.State <> dsBrowse then CmpEnt.CancelUpdates;

                   grEnt.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           fmManEnt.CmpEnt.Close;
           fmManEnt.CmpEnt.Open;

           pnTotOen.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotOen.Value);

           end
        else
           begin

           CmpEnt.Edit;

           CmpEntFlgEnt.Value := 'Nao';

           with CmpEnt do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if CmpEnt.State <> dsBrowse then CmpEnt.CancelUpdates;

                   grEnt.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           fmManEnt.CmpEnt.Close;
           fmManEnt.CmpEnt.Open;

           pnTotOen.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotOen.Value);

        end;
     end;
  end;
end;

end.
