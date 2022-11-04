unit ManOb1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  StdCtrls, Buttons, DBTables, Db, Wwdatsrc, Wwquery, dxDBEdtr,
  dxDBColorPickEdit, dxDBColorLookupEdit, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorMemo;

type
  TfmManOb1 = class(TfmPadrao)
    PaintBox: TPaintBox;
    EdObsObs: TdxDBColorMemo;
    bCancelar: TBitBtn;
    bConfirmar: TBitBtn;
    FatObs: TwwQuery;
    FatObsNUMNFS: TIntegerField;
    FatObsNUMRES: TIntegerField;
    FatObsCODCLI: TIntegerField;
    FatObsCODVEN: TIntegerField;
    FatObsLOGUSU: TStringField;
    FatObsCODEMP: TIntegerField;
    FatObsDTERES: TDateTimeField;
    FatObsCODUSU: TIntegerField;
    FatObsNOMCLI: TStringField;
    FatObsAPEVEN: TStringField;
    FatObsNOMVEN: TStringField;
    FatObsDSCPFA: TStringField;
    FatObsINSCLI: TStringField;
    FatObsCGCCLI: TStringField;
    FatObsUFERES: TStringField;
    FatObsHRERES: TStringField;
    DsObs: TwwDataSource;
    UpObs: TUpdateSQL;
    Label29: TLabel;
    Label9: TLabel;
    EdNumRes: TdxDBColorEdit;
    Label2: TLabel;
    Label68: TLabel;
    EdDteRes: TdxDBColorDateEdit;
    Label37: TLabel;
    Label48: TLabel;
    EdCodEmp: TdxDBColorEdit;
    bpsqEmp: TSpeedButton;
    EdApeEmp: TdxDBColorEdit;
    pnApeEmp: TPanel;
    Label1: TLabel;
    quSql: TwwQuery;
    FatObsDTEATU: TDateTimeField;
    FatObsHREATU: TStringField;
    FatObsUSUATU: TIntegerField;
    Label5: TLabel;
    EdHreAtu: TdxDBColorEdit;
    Bevel1: TBevel;
    CbNomAtu: TdxDBColorLookupEdit;
    GerUsu: TwwQuery;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    DsUsu: TwwDataSource;
    EdUsuAtu: TdxDBColorEdit;
    EdDteAtu: TdxDBColorDateEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EdSitObs: TdxDBColorPickEdit;
    Label12: TLabel;
    Label13: TLabel;
    FatObsSEQOBS: TIntegerField;
    FatObsDTEOBS: TDateTimeField;
    FatObsHREOBS: TStringField;
    FatObsOBSOBS: TMemoField;
    FatObsSITOBS: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    EdNumNfs: TdxDBColorEdit;
    procedure PaintBoxPaint(Sender: TObject);
    procedure bpsqEmpClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure bConfirmarClick(Sender: TObject);
    procedure FatObsNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodEmpExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManOb1: TfmManOb1;

implementation

uses dxDemoUtils, Bbmensag, ManGDB, ManObs, PsqEmp;

{$R *.DFM}

procedure TfmManOb1.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManOb1.bpsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      FatObsCodEmp.Value := fmPsqEmp.CodEmp;

      EdCodEmp.Text := IntToStr(FatObsCodEmp.Value);

      pnApeEmp.Caption := fmPsqEmp.ApeEmp;

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;

  EdCodEmp.SetFocus;

end;

procedure TfmManOb1.FormShow(Sender: TObject);
begin
  inherited;
  if fmManObs.CodEmp > 0 then
  begin

    FatObs.Close;
    FatObs.Params[0].AsInteger := fmManObs.CodEmp;
    FatObs.Params[1].AsDateTime := fmManObs.DteRes;
    FatObs.Params[2].AsInteger := fmManObs.NumRes;
    FatObs.Params[3].AsInteger := fmManObs.SeqObs;
    FatObs.Open;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select ApeEmp From GerEmp' +
        ' Where CodEmp = :CodEmp';

      if GFlgAce = 'Sim' then
        Text := Text + ' and CodFil > ''' + '0' + '''';

      with Params do
      begin

        Params[0].AsInteger := FatObsCodEmp.Value;

      end;

      Open;

      pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

    end;

    GerUsu.Close;
    GerUsu.Params[0].AsInteger := FatObsUsuAtu.Value;
    GerUsu.Open;

    bPsqEmp.Enabled := False;

    EdCodEmp.Enabled := False;
    EdNumRes.Enabled := False;
    EdDteRes.Enabled := False;

    EdCodEmp.Font.Style := [fsBold];
    EdNumRes.Font.Style := [fsBold];
    EdDteRes.Font.Style := [fsBold];

    FatObs.Edit;

    EdObsObs.SetFocus;

  end
  else
  begin

    FatObs.Insert;

    EdCodEmp.SetFocus;

  end;
end;

procedure TfmManOb1.bCancelarClick(Sender: TObject);
begin
  inherited;

  if FatObs.State <> dsBrowse then
    FatObs.CancelUpdates;

  Close;

end;

procedure TfmManOb1.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManOb1.bConfirmarClick(Sender: TObject);
begin
  inherited;
  if FatObs.State = dsInsert then
  begin

    if fMsg('Confirma Lançamento de Crédito para o Cliente ?', 'S') then
    begin

      with FatObs do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alterações}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
          ;

          if FatObs.State = dsBrowse then
            FatObs.Edit;

          EdCodEmp.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      Close;

    end;

  end
  else
  begin

    if fMsg('Confirma Alterações no Lançamento de Crédito ?', 'S') then
    begin

      with FatObs do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alterações}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
          ;

          if FatObs.State = dsBrowse then
            FatObs.Edit;

          EdObsObs.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      Close;

    end;
  end;
end;

procedure TfmManOb1.FatObsNewRecord(DataSet: TDataSet);
begin
  inherited;

  FatObs.DisableControls;

  FatObsDteObs.Value := Date;
  FatObsCodEmp.Value := GEmp_Id;
  FatObsCodUsu.Value := GUsu_Id;
  FatObsSitObs.Value := 'Indeferido';
  FatObsHreObs.Value := TimeToStr(Time);

  if GEmp_Id > 0 then
    EdCodEmp.Text := IntToStr(GEmp_Id);

  GerUsu.Close;
  GerUsu.Params[0].AsInteger := FatObsUsuAtu.Value;
  GerUsu.Open;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select ApeEmp From GerEmp' +
      ' Where CodEmp = :CodEmp';

    if GFlgAce = 'Sim' then
      Text := Text + ' and CodFil > ''' + '0' + '''';

    with Params do
    begin

      Params[0].AsInteger := FatObsCodEmp.Value;

    end;

    Open;

    pnApeEmp.Caption := quSQL.FieldbyName('ApeEmp').AsString;

  end;

  FatObs.EnableControls;

  EdCodEmp.SetFocus;

end;

procedure TfmManOb1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  DteRes: TDateTime;
  CodEmp, NumRes, SeqObs: integer;
begin
  inherited;

  CodEmp := fmManObs.FatObsCodEmp.Value;
  DteRes := fmManObs.FatObsDteRes.Value;
  NumRes := fmManObs.FatObsNumRes.Value;
  SeqObs := fmManObs.FatObsSeqObs.Value;

  fmManObs.FatObs.Close;
  fmManObs.FatObs.Open;

  if CodEmp > 0 then
    fmManObs.FatObs.Locate('CodEmp;DteRes;NumRes;SeqObs', VarArrayOf([CodEmp, DteRes, NumRes, SeqObs]), [loPartialKey]);

  Action := CaFree;

end;

procedure TfmManOb1.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if FatObsCodEmp.Value > 0 then
  begin

    if GFlgAce <> 'Sim' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select FLGDEL,SEQIMP from GerPar';
        Open;

        if Trim(FieldbyName('FLGDEL').AsString) = '*' then
        begin

          GFlgAce := 'Sim';

          if FieldbyName('SEQIMP').AsInteger > 0 then
            GEmpLog := FieldbyName('SEQIMP').AsInteger;

        end
        else
        begin

          GEmpLog := 0;
          GFlgAce := 'Nao';

        end;
      end;
    end;

    with quSql, SQL do
    begin

      Close;
      Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      with Params do
      begin

        Params[0].AsInteger := FatObsCodEmp.Value;

      end;

      Open;

    end;

    if Trim(quSql.FieldbyName('ApeEmp').AsString) <> '' then
      pnApeEmp.Caption := quSql.FieldbyName('ApeEmp').AsString
    else
    begin

      pnApeEmp.Caption := '';

      fmsgErro('Empresa Informada não Encontrada', EdCodEmp);

    end;

  end
  else
  begin

    pnApeEmp.Caption := '';

    fmsgErro('Campo de Preenchimento Obrigátorio não Informado', EdCodEmp);

  end;
end;

procedure TfmManOb1.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManOb1 := nil;
end;

end.
