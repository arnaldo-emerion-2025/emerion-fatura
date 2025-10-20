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
    CmpOen: TQuery;
    DsOen: TDataSource;
    dbPed: TdxDBGraphicEdit;
    grOen: ThGrid;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label32: TLabel;
    Label15: TLabel;
    Label24: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    CmpOenFLGENT: TStringField;
    CmpOenLOGUSU: TStringField;
    CmpOenHREENT: TStringField;
    CmpOenAPEFOR: TStringField;
    Label1: TLabel;
    UpEnt: TUpdateSQL;
    Label2: TLabel;
    Label3: TLabel;
    pnTotOen: TLabel;
    Label5: TLabel;
    CmpOenID_CMPOEN: TIntegerField;
    CmpOenID_CMPENT: TIntegerField;
    CmpOenDTEENT: TDateTimeField;
    CmpOenNUMDOC: TIntegerField;
    pnNomFor: TPanel;
    CmpOenTOTENC: TFloatField;
    CmpOenTOTIPC: TFloatField;
    CmpOenTOTSUC: TFloatField;
    CmpOenTOTGEC: TFloatField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bretornarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grOenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsOenDataChange(Sender: TObject; Field: TField);
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

  grOen.SetFocus;
  
end;

procedure TfmManEn5.grOenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if CmpOenId_CmpOen.Value > 0 then begin

     if key = 32 then begin

        if CmpOenFlgEnt.Value = 'Nao' then begin

           CmpOen.Edit;

           CmpOenFlgEnt.Value := 'Sim';

           with CmpOen do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if CmpOen.State <> dsBrowse then CmpOen.CancelUpdates;

                   grOen.SetFocus;

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

           CmpOen.Edit;

           CmpOenFlgEnt.Value := 'Nao';

           with CmpOen do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if CmpOen.State <> dsBrowse then CmpOen.CancelUpdates;

                   grOen.SetFocus;

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

procedure TfmManEn5.DsOenDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnNomFor.Caption := ' Fornecedor : '+Trim(CmpOenApeFor.Value);
end;

end.
