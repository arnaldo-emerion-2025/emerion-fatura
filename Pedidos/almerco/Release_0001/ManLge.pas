unit ManLge;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, dxCntner, dxExEdtr, dxEdLib, dxDBELib, Db, DBTables, Grids,
  Wwdbigrd, Wwdbgrid, hGrid, ExtCtrls, StdCtrls, Wwquery, dxEditor,
  dxDBColorCurrencyEdit, dxColorCurrencyEdit;

type
  TfmManLge = class(TfmShowPadrao)
    grLge1: TdxDBGraphicEdit;
    PedLge: TQuery;
    PedLg2: TQuery;
    UpPedLg2: TUpdateSQL;
    DsPedLge: TDataSource;
    DsPedLg2: TDataSource;
    PedLgeHREGER: TStringField;
    PedLgePEDCLI: TStringField;
    PedLgeTOTGER: TFloatField;
    PedLgeSITGER: TStringField;
    grLge: ThGrid;
    PaintBox: TPaintBox;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label32: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label14: TLabel;
    grLg21: TdxDBGraphicEdit;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    grLg2: ThGrid;
    Label8: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    LbText: TLabel;
    Label12: TLabel;
    pnDesLg2: TPanel;
    quSql: TwwQuery;
    PedLgeID_PEDGER: TIntegerField;
    PedLgeDTEGER: TDateTimeField;
    PedLg2QTPGR2: TFloatField;
    PedLg2QTLGR2: TFloatField;
    PedLg2SLDGR2: TFloatField;
    PedLg2VLQGR2: TFloatField;
    PedLg2CODITE: TStringField;
    PedLg2QTSGR2: TFloatField;
    pnAtender: TPanel;
    Label13: TLabel;
    EdUltQts: TdxDBColorCurrencyEdit;
    PedPar: TwwQuery;
    PedParUSADEC: TStringField;
    PedLgeID_PEDLGE: TIntegerField;
    PedLgeID_PEDRES: TIntegerField;
    PedLgeFLGRES: TStringField;
    PedLgeFLGITE: TStringField;
    PedLgeFLGATU: TStringField;
    PedLg2ID_PEDLG2: TIntegerField;
    PedLg2ID_PEDLGE: TIntegerField;
    PedLg2ID_PEDGR2: TIntegerField;
    PedLg2ULTQTS: TFloatField;
    PedLg2FLGRES: TStringField;
    PedLg2ID_PEDGR3: TIntegerField;
    PedLg2CODCLP: TStringField;
    PedLg2CODGRU: TStringField;
    PedLg2CODSUB: TStringField;
    PedLg2CODPRO: TStringField;
    PedLg2DESGR2: TStringField;
    procedure grLgeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grLg2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DsPedLg2DataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure PedLg2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure pnAtenderExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grLg2Enter(Sender: TObject);
    procedure grLgeEnter(Sender: TObject);
  private
    pSaida : string;
    { Private declarations }
  public
    { Public declarations }
    Id_PedRe2 : integer;
  end;

var
  fmManLge: TfmManLge;

implementation

uses Bbmensag, ManPed, ManGDB, ManRes;

{$R *.DFM}

procedure TfmManLge.grLgeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin

     grLge.Enabled := False;

     grLg2.Enabled := True;

     grLg2.SetFocus;

  end;
end;

procedure TfmManLge.grLg2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin

     PedLg2.First;

     grLg2.Enabled := False;

     grLge.Enabled := True;

     grLge.SetFocus;

  end;

  if key = 32 then begin

     if not pnAtender.Visible then begin

        if PedLg2Id_PedLg2.Value > 0 then begin

           pnAtender.Visible := True;

           PedLg2.Edit;

           if PedLg2UltQts.Value = 0 then begin

              PedLg2UltQts.Value := PedLg2SldGr2.Value;

              EdUltQts.Value := PedLg2UltQts.Value;

           end;
           
           EdUltQts.SetFocus;

        end;
     end;
  end;
end;

procedure TfmManLge.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if pnAtender.Visible then begin

        psaida := 'Sim';

        if PedLg2.State <> dsBrowse then PedLg2.CancelUpdates;

        pnAtender.Visible := False;

        psaida := 'Nao';

        grLg2.SetFocus;
        
        end
     else
        begin

        if grLg2.Enabled then begin

           PedLg2.First;

           grLg2.Enabled := False;

           grLge.Enabled := True;

           grLge.SetFocus;

           end
        else
           Close;

     end;      
  end;
end;

procedure TfmManLge.DsPedLg2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnDesLg2.Caption := ' '+PedLg2DesGr2.Value;
end;

procedure TfmManLge.FormShow(Sender: TObject);
begin
  inherited;

  if PedParUsaDec.Value = 'Sim' then begin

     PedLg2QtpGr2.DisplayFormat := '###,###,##0.0000';
     PedLg2QtsGr2.DisplayFormat := '###,###,##0.0000';
     PedLg2QtlGr2.DisplayFormat := '###,###,##0.0000';
     PedLg2SldGr2.DisplayFormat := '###,###,##0.0000';

     end
  else
     begin

     PedLg2QtpGr2.DisplayFormat := '###,###,##0';
     PedLg2QtsGr2.DisplayFormat := '###,###,##0';
     PedLg2QtlGr2.DisplayFormat := '###,###,##0';
     PedLg2SldGr2.DisplayFormat := '###,###,##0';

     EdUltQts.DecimalPlaces := 0;

     EdUltQts.DisplayFormat := '###,###,##0';

  end;

  grLge.SetFocus;
  
end;

procedure TfmManLge.PedLg2CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if Trim(PedLg2CodClp.Value) <> '' then
     Text := PedLg2CodGru.Value + '.' + PedLg2CodSub.Value + '.' + PedLg2CodPro.Value
  else
     Text := '';
end;

procedure TfmManLge.pnAtenderExit(Sender: TObject);
var
  Id_PedLge,Id_PedLg2 : integer;
begin
  inherited;
  if psaida = 'Nao' then begin

     Id_PedLge := PedLgeId_PedLge.Value;
     Id_PedLg2 := PedLg2Id_PedLg2.Value;

     with PedLg2 do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if PedLg2.State = dsBrowse then PedLg2.Edit;

             EdUltQts.SetFocus;
             
             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     PedLge.Close;
     PedLge.Open;

     PedLge.Locate('Id_PedLge',Id_PedLge, [loPartialKey]);

     PedLg2.Close;
     PedLg2.Open;

     PedLg2.Locate('Id_PedLg2',Id_PedLg2, [loPartialKey]);

     fmManPed.PedRes.Close;
     fmManPed.PedRes.Open;

     fmManPed.PedRe2.Close;
     fmManPed.PedRe2.Open;

     fmManPed.PedRe2.Last;

     pnAtender.Visible := False;
     
     grLg2.SetFocus;
     
  end;
end;

procedure TfmManLge.FormCreate(Sender: TObject);
begin
  inherited;
  psaida := 'Nao';
end;

procedure TfmManLge.grLg2Enter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Janela BARRA DE ESPAÇO-Selecionar/Não Selecionar o Item';
end;

procedure TfmManLge.grLgeEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Janela';
end;

end.
