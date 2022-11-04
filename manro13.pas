unit ManRo13;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, wwdbdatetimepicker, ComCtrls, wwriched, Buttons,
  dxfOutlookBar, dxfColorButton, dxBar, dxfPictureButton, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, Grids, Wwdbigrd, Wwdbgrid, hGrid,
  FShowPadrao;

type
  TfmManRo13 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    CmpNF5: TQuery;
    DsNF5: TDataSource;
    dbPed: TdxDBGraphicEdit;
    grNf5: ThGrid;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label32: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label1: TLabel;
    UpNF5: TUpdateSQL;
    Label3: TLabel;
    Label5: TLabel;
    CmpNF5CODEMP: TIntegerField;
    CmpNF5DTENFS: TDateTimeField;
    CmpNF5SEQNFS: TIntegerField;
    CmpNF5SEQNF5: TIntegerField;
    CmpNF5HREENT: TStringField;
    CmpNF5DTEDOC: TDateTimeField;
    CmpNF5DTECRE: TDateTimeField;
    CmpNF5TOTENT: TFloatField;
    CmpNF5TOTIPI: TFloatField;
    CmpNF5TOTGER: TFloatField;
    CmpNF5CODUSU: TIntegerField;
    CmpNF5FLGENT: TStringField;
    CmpNF5EMPENT: TIntegerField;
    CmpNF5DTEENT: TDateTimeField;
    CmpNF5FLGATU: TStringField;
    CmpNF5LOGUSU: TStringField;
    CmpNF5NUMDOC: TIntegerField;
    Label2: TLabel;
    pnFornecedor: TPanel;
    CmpNF5CODFOR: TIntegerField;
    CmpNF5APEFOR: TStringField;
    CmpNF5NUMENT: TIntegerField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure bretornarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grNf5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsNF5DataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManRo13: TfmManRo13;

implementation

uses dxDemoUtils, Bbfuncao, ManRo1;

{$R *.DFM}

procedure TfmManRo13.bretornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManRo13.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManRo13.FormShow(Sender: TObject);
begin
  inherited;
  grNf5.SetFocus;  
end;

procedure TfmManRo13.grNf5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if CmpNf5CodEmp.Value > 0 then begin

     if key = 32 then begin

        if CmpNf5FlgEnt.Value = 'Nao' then begin

           try

              CmpNf5.Edit;
              CmpNf5FlgEnt.Value := 'Sim';
              CmpNf5.ApplyUpdates;

              fmManRo1.CmpNfs.Close;
              fmManRo1.CmpNfs.Open;

              fmManRo1.CmpNf2.Close;
              fmManRo1.CmpNf2.Open;

              close;

           except

              CmpNf5.CancelUpdates;

              grNf5.SetFocus;

           end;
        end;
     end;

     if key = 46 then begin

        with fmManRo1.quSQL,SQL do begin

             Close;
             Text := ' Update CmpEnt Set FlgAtu = '+ QuotedStr('*')   + ',' +
                     '                   FlgRom = '+ QuotedStr('Sim') +
                     ' Where CmpEnt.CodEmp = '+ QuotedStr(IntToStr(CmpNf5EmpEnt.Value)) +
                     '   and CmpEnt.DteEnt = '+ QuotedStr(fDateToSQL(CmpNf5DteEnt.Value)) +
                     '   and CmpEnt.NumEnt = '+ QuotedStr(IntToStr(CmpNf5NumEnt.Value)) ;
             ExecSQL;

        end;

        CmpNf5.Delete;

        CmpNf5.ApplyUpdates;

        CmpNf5.Close;
        CmpNf5.Open;

     end;
  end;
end;

procedure TfmManRo13.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmManRo13.DsNF5DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if CmpNf5CodFor.Value > 0 then
     pnFornecedor.Caption := ' Fornecedor : '+IntToStr(CmpNf5CodFor.Value)+ ' - ' +CmpNf5ApeFor.Value
  else
     pnFornecedor.Caption := ' Fornecedor : ';
end;

end.
