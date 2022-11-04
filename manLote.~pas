unit manLote;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Grids, DBGrids, Db, Wwquery, ExtCtrls, dxExEdtr, dxEdLib,
  dxDBELib, dxDBColorCurrencyEdit, dxEditor, dxDBEdtr, dxDBColorLookupEdit,
  dxCntner, dxDBColorEdit, dxDBColorDateEdit, ComCtrls, Fpadrao, StdCtrls;

type
  TfmLote = class(TForm)
    updLote: TUpdateSQL;
    fatPedLote: TwwQuery;
    DsLote: TDataSource;
    fatPedLoteID: TIntegerField;
    fatPedLoteNLOTE: TFloatField;
    fatPedLoteQLOTE: TFloatField;
    fatPedLoteDFAB: TDateTimeField;
    fatPedLoteDVAL: TDateTimeField;
    fatPedLoteVPMC: TFloatField;
    fatPedLoteCODCLP: TStringField;
    fatPedLoteCODGRU: TStringField;
    fatPedLoteCODSUB: TStringField;
    fatPedLoteCODPRO: TStringField;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    EdNLote: TdxDBColorEdit;
    EdQLote: TdxDBColorCurrencyEdit;
    EdVPMC: TdxDBColorCurrencyEdit;
    EdDFab: TdxDBColorDateEdit;
    EdDVal: TdxDBColorDateEdit;
    StatusBar1: TStatusBar;
    fatPedLoteNUMRES: TIntegerField;
    fatPedLoteCODEMP: TIntegerField;
    fatPedLoteDTERES: TDateTimeField;
    Label1: TLabel;
    fatPedLoteTIPO_TABELA: TStringField;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel2Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fatPedLoteAfterInsert(DataSet: TDataSet);
    procedure fatPedLoteAfterCancel(DataSet: TDataSet);
    procedure fatPedLoteBeforeEdit(DataSet: TDataSet);
    procedure fatPedLoteAfterOpen(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdNLoteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure statusComponentes(status: Boolean);
    { Private declarations }
  public
     { Public declarations }
     CODEMP, NUMRES, CODCLP : Integer;
     CODGRU, CODSUB, CODPRO : String;
     DTERES                 : TDate;
     TIPO_TABELA, ITEM      : String;

     procedure carregaVariaveis();
  end;

var
  fmLote: TfmLote;

implementation

uses ManGDB;

{$R *.DFM}

procedure TfmLote.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 40) then
     begin {Tecla - Seta para Baixo}
        if (fatPedLote.Eof) then
           begin
              statusComponentes(true);
              fatPedLote.Append;
           end;
     end;

   //if not(fatPedLote.State in [dsBrowse]) then
   //  exit;

   if (key = 13) then
      begin {Tecla - Enter}
         if (fatPedLote.FieldByName('ID').AsInteger > 0) then
            fatPedLote.Edit;
      end
   else
      if(Key = 46) then
         begin {Tecla - Delete}
            fatPedLote.Delete;
            fmManGDB.applyUpdates(fatPedLote);
         end;
end;

procedure TfmLote.Panel2Exit(Sender: TObject);
begin
   try
      begin
         if(fatPedLote.State in [dsEdit, dsInsert])then
            begin
               fmManGDB.applyUpdates(fatPedLote);
               fatPedLote.Active := False;
               fatPedLote.Active := True;

               fatPedLote.Append;
            end;
      end
   except
      fatPedLote.Edit;
   end
end;

procedure TfmLote.statusComponentes(status: Boolean);
begin
   EdNLote.Enabled := status;
   EdQLote.Enabled := status;
   EdVPMC.Enabled := status;
   EdDFab.Enabled := status;
   EdDVal.Enabled := status;
end;

procedure TfmLote.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 123 then
      begin
         fmManGDB.applyUpdates(fatPedLote);
         Self.Close;
      end;
end;

procedure TfmLote.fatPedLoteAfterInsert(DataSet: TDataSet);
begin
   statusComponentes(true);
      
   fatPedLote.FieldByName('CODEMP').AsInteger   := CODEMP;
   fatPedLote.FieldByName('DTERES').AsDateTime  := DTERES;
   fatPedLote.FieldByName('NUMRES').AsInteger   := NUMRES;

   fatPedLote.FieldByName('CODCLP').AsInteger   := CODCLP;
   fatPedLote.FieldByName('CODGRU').AsString    := CODGRU;
   fatPedLote.FieldByName('CODSUB').AsString    := CODSUB;
   fatPedLote.FieldByName('CODPRO').AsString    := CODPRO;
   fatPedLote.FieldByName('TIPO_TABELA').AsString    := TIPO_TABELA;

   if(edNLote.CanFocus) then
      edNLote.SetFocus;
end;

procedure TfmLote.fatPedLoteAfterCancel(DataSet: TDataSet);
begin
   statusComponentes(false);
   DBGrid1.SetFocus;
end;

procedure TfmLote.fatPedLoteBeforeEdit(DataSet: TDataSet);
begin
   statusComponentes(True);
   if(edNLote.CanFocus) then
      edNLote.SetFocus;
end;

procedure TfmLote.fatPedLoteAfterOpen(DataSet: TDataSet);
begin
   Label1.Caption := 'Quantidade de Lotes:  ' + FormatFloat('000', fatPedLote.RecordCount);
end;

procedure TfmLote.carregaVariaveis;
begin
   CODEMP :=  fmLote.fatPedLote.Params.ParamByName('CODEMP').AsInteger;
   DTERES :=  fmLote.fatPedLote.Params.ParamByName('DTERES').AsDate;
   NUMRES :=  fmLote.fatPedLote.Params.ParamByName('NUMRES').AsInteger;
   TIPO_TABELA :=  fmLote.fatPedLote.Params.ParamByName('TIPO_TABELA').AsString;

   CODCLP :=  fmLote.fatPedLote.Params.ParamByName('CODCLP').AsInteger;
   CODGRU :=  fmLote.fatPedLote.Params.ParamByName('CODGRU').AsString;
   CODSUB :=  fmLote.fatPedLote.Params.ParamByName('CODSUB').AsString;
   CODPRO :=  fmLote.fatPedLote.Params.ParamByName('CODPRO').AsString;

   if(Trim(ITEM) <> '') then
      Self.Caption := 'Lotes. ' + ITEM;
end;

procedure TfmLote.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if(key = #13) then
      begin
         Perform(WM_NEXTDLGCTL,0,0);
      end
   else
      if(Key = #27) then
         begin
            fatPedLote.CancelUpdates;
            statusComponentes(false);
            DBGrid1.SetFocus;
         end;
end;

procedure TfmLote.EdNLoteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 38) then
       begin {Tecla - Seta para Cima}
          if (Trim(EdNLote.Text) = '') then
             begin
                fatPedLote.CancelUpdates;
                statusComponentes(false);
                DBGrid1.SetFocus;
             end;
       end;
end;

end.
