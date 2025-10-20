unit ManLoteMed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, DBTables, Db, Wwquery, ComCtrls, StdCtrls, dxExEdtr,
  dxEdLib, dxDBELib, dxDBColorDateEdit, dxEditor, dxDBColorCurrencyEdit,
  dxCntner, dxDBColorEdit, ExtCtrls;

type
  TfmLotesMed = class(TForm)
    Panel2: TPanel;
    EdNLoteMed: TdxDBColorEdit;
    EdQLoteMed: TdxDBColorCurrencyEdit;
    EdVPMCMed: TdxDBColorCurrencyEdit;
    EdDFabMed: TdxDBColorDateEdit;
    EdDValMed: TdxDBColorDateEdit;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    fatPedLoteMed: TwwQuery;
    fatPedLoteMedID: TIntegerField;
    fatPedLoteMedNLOTE: TFloatField;
    fatPedLoteMedQLOTE: TFloatField;
    fatPedLoteMedDFAB: TDateTimeField;
    fatPedLoteMedDVAL: TDateTimeField;
    fatPedLoteMedVPMC: TFloatField;
    fatPedLoteMedCODCLP: TStringField;
    fatPedLoteMedCODGRU: TStringField;
    fatPedLoteMedCODSUB: TStringField;
    fatPedLoteMedCODPRO: TStringField;
    fatPedLoteMedNUMRES: TIntegerField;
    fatPedLoteMedCODEMP: TIntegerField;
    fatPedLoteMedDTERES: TDateTimeField;
    fatPedLoteMedTIPO_TABELA: TStringField;
    DsLoteMed: TDataSource;
    updLoteMed: TUpdateSQL;
    DBGrid1: TDBGrid;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel2Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fatPedLoteMedAfterInsert(DataSet: TDataSet);
    procedure fatPedLoteMedAfterCancel(DataSet: TDataSet);
    procedure fatPedLoteMedBeforeEdit(DataSet: TDataSet);
    procedure fatPedLoteMedAfterOpen(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdNLoteMedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
  procedure statusComponentes(status: Boolean);
    { Private declarations }
  public
     CODEMP, NUMRES, CODCLP : Integer;
     CODGRU, CODSUB, CODPRO : String;
     DTERES                 : TDate;
     TIPO_TABELA, ITEM      : String;

     procedure carregaVariaveis();
    { Public declarations }
  end;

var
  fmLotesMed: TfmLotesMed;

implementation

uses ManGDB, Bbfuncao;

{$R *.DFM}



procedure TfmLotesMed.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 40) then
     begin {Tecla - Seta para Baixo}
        if (fatPedLoteMed.Eof) then
           begin
              statusComponentes(true);
              fatPedLoteMed.Append;
           end;
     end;

   //if not(fatPedLote.State in [dsBrowse]) then
   //  exit;

   if (key = 13) then
      begin {Tecla - Enter}
         if (fatPedLoteMed.FieldByName('ID').AsInteger > 0) then
            fatPedLoteMed.Edit;
      end
   else
      if(Key = 46) then
         begin {Tecla - Delete}
            fatPedLoteMed.Delete;
            fmManGDB.applyUpdates(fatPedLoteMed);
         end;
end;

procedure TfmLotesMed.Panel2Exit(Sender: TObject);
begin
try
      begin
         if(fatPedLoteMed.State in [dsEdit, dsInsert])then
            begin
               fmManGDB.applyUpdates(fatPedLoteMed);
               fatPedLoteMed.Active := False;
               fatPedLoteMed.Active := True;

               fatPedLoteMed.Append;
            end;
      end
   except
      fatPedLoteMed.Edit;
   end
end;

procedure TfmLotesMed.statusComponentes(status: Boolean);
begin
   EdNLoteMed.Enabled := status;
   EdQLoteMed.Enabled := status;
   EdVPMCMed.Enabled := status;
   EdDFabMed.Enabled := status;
   EdDValMed.Enabled := status;
end;

procedure TfmLotesMed.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = 123 then
      begin
         fmManGDB.applyUpdates(fatPedLoteMed);
         Self.Close;
      end;
end;

procedure TfmLotesMed.fatPedLoteMedAfterInsert(DataSet: TDataSet);
begin
statusComponentes(true);
      
   fatPedLoteMed.FieldByName('CODEMP').AsInteger   := CODEMP;
   fatPedLoteMed.FieldByName('DTERES').AsDateTime  := DTERES;
   fatPedLoteMed.FieldByName('NUMRES').AsInteger   := NUMRES;

   fatPedLoteMed.FieldByName('CODCLP').AsInteger   := CODCLP;
   fatPedLoteMed.FieldByName('CODGRU').AsString    := CODGRU;
   fatPedLoteMed.FieldByName('CODSUB').AsString    := CODSUB;
   fatPedLoteMed.FieldByName('CODPRO').AsString    := CODPRO;
   fatPedLoteMed.FieldByName('TIPO_TABELA').AsString    := TIPO_TABELA;

   if(edNLoteMed.CanFocus) then
      edNLoteMed.SetFocus;
end;

procedure TfmLotesMed.fatPedLoteMedAfterCancel(DataSet: TDataSet);
begin
statusComponentes(false);
   DBGrid1.SetFocus;
end;

procedure TfmLotesMed.fatPedLoteMedBeforeEdit(DataSet: TDataSet);
begin
   statusComponentes(True);
   if(edNLoteMed.CanFocus) then
      edNLoteMed.SetFocus;
end;

procedure TfmLotesMed.fatPedLoteMedAfterOpen(DataSet: TDataSet);
begin
Label1.Caption := 'Quantidade de Lotes:  ' + FormatFloat('000', fatPedLoteMed.RecordCount);
end;

procedure TfmLotesMed.carregaVariaveis;
begin
   CODEMP :=  fmLotesMed.fatPedLoteMed.Params.ParamByName('CODEMP').AsInteger;
   DTERES :=  fmLotesMed.fatPedLoteMed.Params.ParamByName('DTERES').AsDate;
   NUMRES :=  fmLotesMed.fatPedLoteMed.Params.ParamByName('NUMRES').AsInteger;
   TIPO_TABELA :=  fmLotesMed.fatPedLoteMed.Params.ParamByName('TIPO_TABELA').AsString;

   CODCLP :=  fmLotesMed.fatPedLoteMed.Params.ParamByName('CODCLP').AsInteger;
   CODGRU :=  fmLotesMed.fatPedLoteMed.Params.ParamByName('CODGRU').AsString;
   CODSUB :=  fmLotesMed.fatPedLoteMed.Params.ParamByName('CODSUB').AsString;
   CODPRO :=  fmLotesMed.fatPedLoteMed.Params.ParamByName('CODPRO').AsString;

   if(Trim(ITEM) <> '') then
      Self.Caption := 'Lotes. ' + ITEM;
end;

procedure TfmLotesMed.FormKeyPress(Sender: TObject; var Key: Char);
begin
if(key = #13) then
      begin
         Perform(WM_NEXTDLGCTL,0,0);
      end
   else
      if(Key = #27) then
         begin
            fatPedLoteMed.CancelUpdates;
            statusComponentes(false);
            DBGrid1.SetFocus;
         end;
end;


procedure TfmLotesMed.EdNLoteMedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 38) then
       begin {Tecla - Seta para Cima}
          if (Trim(EdNLoteMed.Text) = '') then
             begin
                fatPedLoteMed.CancelUpdates;
                statusComponentes(false);
                DBGrid1.SetFocus;
             end;
          end;
       end;

end.
