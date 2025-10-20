unit mandi_fatped;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, FShowPadrao,
  Fpadrao, StdCtrls, Buttons, Grids, DBGrids, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, dxDBColorDateEdit, dxCntner, dxDBColorEdit, Db, DBTables,
  Wwquery, ExtCtrls, DBCtrls;

type
  TFMMANDI_FATPED = class(TfmShowPadrao)
    DSDIDET: TDataSource;
    UPDIDET: TUpdateSQL;
    DSDI: TDataSource;
    UpDI: TUpdateSQL;
    bContinuar: TSpeedButton;
    SQLDIDET: TwwQuery;
    SQLDI: TwwQuery;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    dxDBColorEdit2: TdxDBColorEdit;
    dxDBColorDateEdit1: TdxDBColorDateEdit;
    dxDBColorEdit3: TdxDBColorEdit;
    dxDBColorDateEdit2: TdxDBColorDateEdit;
    dxDBColorEdit4: TdxDBColorEdit;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    SQLDIID_DI: TIntegerField;
    SQLDIID_CMPNF2: TIntegerField;
    SQLDINUMDI: TStringField;
    SQLDIDATADI: TDateTimeField;
    SQLDILOCALDESEMB: TStringField;
    SQLDIUFDESEMB: TStringField;
    SQLDIDATADESEMB: TDateTimeField;
    SQLDICODEXPORT: TStringField;
    SQLDIDETID_DIDET: TIntegerField;
    SQLDIDETID_DI: TIntegerField;
    SQLDIDETNSEQADIC: TIntegerField;
    SQLDIDETCODFAB: TStringField;
    SQLDIDETVDESCDI: TFloatField;
    SQLDIDETQTDE: TFloatField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    quSql: TwwQuery;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label7: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SQLDINewRecord(DataSet: TDataSet);
    procedure SQLDIAfterPost(DataSet: TDataSet);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure SQLDIDETAfterPost(DataSet: TDataSet);
    procedure SQLDIDETNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    sContinuar: Boolean;
    { Public declarations }
  end;

var
  FMMANDI_FATPED: TFMMANDI_FATPED;

implementation

uses ManGDB, MAnNGE_NFE;
{$R *.DFM}

procedure TFMMANDI_FATPED.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;

end;

procedure TFMMANDI_FATPED.FormCreate(Sender: TObject);
begin
  inherited;
  sContinuar := False;
  SQLDI.active := false;
  SQLDI.Params[0].AsInteger := fmManNge_NFE.FatGe2ID_FATGE2.Value;
  sqldi.Active := true;

  if sqldi.IsEmpty then
  begin
    SQLDI.Insert;
    SQLDIID_CMPNF2.value := fmmannge_nfe.FatGe2ID_FATGE2.Value;
    sqldi.Post;

    sqldi.Active := false;
    sqldi.sql.text := 'Select * from DI where ID_CMPNF2 = ' + QuotedStr(fmmannge_nfe.FatGe2ID_FATGE2.Asstring);
    sqldi.Open;

    SQLDIDET.Active := true;
    SQLDIDET.Insert;
    SQLDIDETID_DI.Value := SQLDIID_DI.Value;
    SQLDIDETNSEQADIC.Value := 1;
    SQLDIDETVDESCDI.Value := 0;
    SQLDIDETCODFAB.Value := fmmannge_nfe.FatGe2CODGRU.AsString + '.' + fmmannge_nfe.FatGe2CODSUB.AsString + '.' + fmmannge_nfe.FatGe2CODPRO.AsString;
    SQLDIDET.post;
    panel1.BringToFront;

  end
  else
    panel1.Sendtoback;


  SQLDIDET.Active := false;
  SQLDIDET.Active := True;
end;

procedure TFMMANDI_FATPED.FormShow(Sender: TObject);
begin
  inherited;
  dxDBColorEdit1.SetFocus;
end;

procedure TFMMANDI_FATPED.bContinuarClick(Sender: TObject);
begin
  inherited;

  if ((SQLDI.State in [dsedit]) or (SQLDIDET.State in [dsedit])) then
  if MessageDlg( 'Deseja salvar os dados antes de Sair?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     SpeedButton4.Click
  else
     SpeedButton3.Click;

  close;
end;

procedure TFMMANDI_FATPED.SpeedButton4Click(Sender: TObject);
begin
  inherited;

  if (SQLDI.state in [dsedit, dsinsert]) then
  sqldi.post;

  if (SQLDIDET.state in [dsedit, dsinsert]) then
  sqldidet.post;

  panel1.SendToBack;
end;

procedure TFMMANDI_FATPED.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja Cancelar as Alterações?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    SQLDI.Cancel;
    SQLDIDET.Cancel;
    panel1.SendToBack;
  end;
end;

procedure TFMMANDI_FATPED.SpeedButton1Click(Sender: TObject);
begin

  inherited;
  SQLDI.Insert;
  SQLDIID_CMPNF2.value := fmmannge_nfe.FatGe2ID_FATGE2.Value;
  sqldi.Post;

  sqldi.Active := false;
  sqldi.sql.text := 'Select * from DI where ID_CMPNF2 = ' + QuotedStr(fmmannge_nfe.FatGe2ID_FATGE2.Asstring);
  sqldi.Open;
  sqldi.Last;

  SQLDIDET.Active := true;
  SQLDIDET.Insert;
  SQLDIDET.post;
  panel1.BringToFront;

end;

procedure TFMMANDI_FATPED.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Confirma Exclusão de Dados da DI?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    sqldi.Delete;
    with sqldi do
    begin
      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};
      try
        ApplyUpdates; {Tenta aplicar as alterações};
        fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};
      except
        fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};
      end;
      CommitUpdates; {sucesso!, limpa o cache...}
    end;
  end;
end;

procedure TFMMANDI_FATPED.SQLDINewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLDINUMDI.Value:=fmManNge_NFE.Vdiddi;
  SQLDIDATADI.Value:=fmManNge_NFE.Vdidata;
  SQLDILOCALDESEMB.Value:=fmManNge_NFE.VdiLOCDESEMB;
  SQLDIDATADESEMB.Value:=fmManNge_NFE.Vdidatadesemb;
  SQLDIUFDESEMB.Value:=fmManNge_NFE.VdiUF;
  SQLDICODEXPORT.Value:=fmManNge_NFE.VDICexp;
end;

procedure TFMMANDI_FATPED.SQLDIAfterPost(DataSet: TDataSet);
begin
  inherited;
  with sqldi do
  begin
    fmManGDB.dbMain.StartTransaction; {Inicia a Transação};
    try
      ApplyUpdates; {Tenta aplicar as alterações};
      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};
    except
      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};
    end;
    CommitUpdates; {sucesso!, limpa o cache...}
  end;

  fmManNge_NFE.Vdiddi:=SQLDINUMDI.Value;
  fmManNge_NFE.Vdidata:= SQLDIDATADI.Value;
  fmManNge_NFE.VdiLOCDESEMB:=SQLDILOCALDESEMB.Value;
  fmManNge_NFE.Vdidatadesemb:=SQLDIDATADESEMB.Value;
  fmManNge_NFE.VdiUF:=SQLDIUFDESEMB.Value;
  fmManNge_NFE.VDICexp:=SQLDICODEXPORT.Value;
end;

procedure TFMMANDI_FATPED.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  Panel1.bringtofront;
end;

procedure TFMMANDI_FATPED.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    Panel1.bringtofront;

end;

procedure TFMMANDI_FATPED.SQLDIDETAfterPost(DataSet: TDataSet);
begin
  inherited;
    with SQLDIDET do
    begin
      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};
      try
        ApplyUpdates; {Tenta aplicar as alterações};
        fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};
      except
        fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};
      end;
      CommitUpdates; {sucesso!, limpa o cache...}
    end;
end;

procedure TFMMANDI_FATPED.SQLDIDETNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLDIDETID_DI.Value := SQLDIID_DI.Value;
  SQLDIDETNSEQADIC.Value := 1;
  SQLDIDETVDESCDI.Value := 0;
  SQLDIDETCODFAB.Value := fmmannge_nfe.FatGe2CODGRU.AsString + '.' + fmmannge_nfe.FatGe2CODSUB.AsString + '.' + fmmannge_nfe.FatGe2CODPRO.AsString;
end;

end.

