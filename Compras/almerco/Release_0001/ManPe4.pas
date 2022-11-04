unit ManPe4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, ExtCtrls, StdCtrls, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, Db, DBTables, Buttons, dxEditor,
  dxDBColorCurrencyEdit;

type
  TfmManPe4 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    CmpPre: TQuery;
    DsPre: TDataSource;
    dbReq: TdxDBGraphicEdit;
    grPre: ThGrid;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    dbGr4: TdxDBGraphicEdit;
    grPr2: ThGrid;
    CmpPr2: TQuery;
    DsPr2: TDataSource;
    pnFornecedor: TPanel;
    CmpPreID_CMPPRE: TIntegerField;
    CmpPreID_PEDRES: TIntegerField;
    CmpPrePEDCLI: TStringField;
    CmpPreNOMFOR: TStringField;
    CmpPreNOMCLI: TStringField;
    CmpPreAPEVEN: TStringField;
    CmpPrePEDIDO: TStringField;
    Label1: TLabel;
    UpPr2: TUpdateSQL;
    CmpPr2ID_CMPPR2: TIntegerField;
    CmpPr2ID_CMPPRE: TIntegerField;
    CmpPr2ID_CMPREQ: TIntegerField;
    CmpPr2QTDREQ: TFloatField;
    CmpPr2QTDPED: TFloatField;
    CmpPr2QTRPED: TFloatField;
    CmpPr2SLDREQ: TFloatField;
    CmpPr2ID_CMPPE2: TIntegerField;
    CmpPr2CODCLP: TStringField;
    CmpPr2CODGRU: TStringField;
    CmpPr2CODSUB: TStringField;
    CmpPr2CODPRO: TStringField;
    CmpPr2DSCPRO: TStringField;
    CmpPr2CODITE: TStringField;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label28: TLabel;
    pnItem: TPanel;
    pnOperacao: TPanel;
    Label10: TLabel;
    EdQtdPed: TdxDBColorCurrencyEdit;
    LbText: TLabel;
    procedure PaintBoxPaint(Sender: TObject);
    procedure CmpPr2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CmpPrePEDIDOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DsPreDataChange(Sender: TObject; Field: TField);
    procedure grPreKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grPreEnter(Sender: TObject);
    procedure grPr2Enter(Sender: TObject);
    procedure grPr2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnOperacaoExit(Sender: TObject);
    procedure DsPr2DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManPe4: TfmManPe4;

implementation

uses dxDemoUtils, Bbgeral, ManGDB, ManPed;

{$R *.DFM}

procedure TfmManPe4.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe4.CmpPr2CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if Trim( CmpPr2CodClp.Value ) <> '' then
     Text := CmpPr2CodClp.Value+ '-' +CmpPr2CodGru.Value+ '.' +CmpPr2CodSub.Value+ '.' +CmpPr2CodPro.Value
  else
     Text := '';
end;

procedure TfmManPe4.CmpPrePEDIDOGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if CmpPreId_PedRes.Value > 0 then
     Text := IntToStr(CmpPreId_PedRes.Value)
  else
     Text := Trim(CmpPrePedCli.Value);
end;

procedure TfmManPe4.DsPreDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if CmpPreId_CmpPre.Value > 0 then
     pnFornecedor.Caption := ' Fornecedor : '+Trim(CmpPreNomFor.Value)
  else
     pnFornecedor.Caption := ' Fornecedor : ';
     
end;

procedure TfmManPe4.grPreKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin

     grPre.Enabled := False;

     grPr2.Enabled := True;

     grPr2.SetFocus;

  end;
end;

procedure TfmManPe4.grPreEnter(Sender: TObject);
begin
  inherited;

  grPre.Color := clInfoBk;

  grPr2.Color := $00FCF4ED;

  LbText.Caption := 'ENTER-Alterar Janela';

end;

procedure TfmManPe4.grPr2Enter(Sender: TObject);
begin
  inherited;

  grPr2.Color := clInfoBk;

  grPre.Color := $00FCF4ED;

  LbText.Caption := 'ENTER-Alterar Janela BARRA DE ESPAÇO-Selecionar/Não Selecionar Item';

end;

procedure TfmManPe4.grPr2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin  // Tecla ENTER //

     CmpPr2.First;

     grPr2.Enabled := False;

     grPre.Enabled := True;

     grPre.SetFocus;

  end;

  if key = 32 then begin // Barra de Espaço //

     if CmpPr2Id_CmpPr2.Value > 0 then begin

        CmpPr2.Edit;

        if CmpPr2QtdPed.Value = 0 then CmpPr2QtdPed.Value := CmpPr2SldReq.Value;

        EdQtdPed.Value := CmpPr2QtdPed.Value;

        pnOperacao.Visible := True;

        EdQtdPed.SetFocus;

     end;
  end;
end;

procedure TfmManPe4.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if not pnOperacao.Visible then
        close
     else
        begin

        if CmpPr2.State <> dsBrowse then CmpPr2.CancelUpdates;

        pnOperacao.Visible := False;

        grPr2.SetFocus;

     end;
  end;
end;

procedure TfmManPe4.pnOperacaoExit(Sender: TObject);
var
  Id_CmpPre,Id_CmpPr2 : integer;
begin
  inherited;
  if CmpPr2.State <> dsBrowse then begin

     Id_CmpPre := CmpPreId_CmpPre.Value;
     Id_CmpPr2 := CmpPr2Id_CmpPr2.Value;

     with CmpPr2 do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if CmpPr2.State = dsBrowse then CmpPr2.Edit;

             if not pnOperacao.Visible then pnOperacao.Visible := True;

             EdQtdPed.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     CmpPr2.Close;
     CmpPr2.Open;

     CmpPre.Close;
     CmpPre.Open;

     fmManPed.CmpPed.Close;
     fmManPed.CmpPed.Open;

     fmManPed.CmpPe2.Close;
     fmManPed.CmpPe2.Open;

     CmpPre.Locate('Id_CmpPre',Id_CmpPre, [loPartialKey]);
     CmpPr2.Locate('Id_CmpPr2',Id_CmpPr2, [loPartialKey]);

     pnOperacao.Visible := False;

     if not CmpPr2.EOF then CmpPr2.Next;

     grPr2.SetFocus;

  end;
end;

procedure TfmManPe4.DsPr2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Trim(CmpPr2CodClp.Value) <> '' then
     pnItem.Caption := CmpPr2CodClp.Value+ '-' +CmpPr2CodGru.Value+ '.' +CmpPr2CodSub.Value+ '.' +CmpPr2CodPro.Value
  else
     pnItem.Caption := ''; 
end;

end.
