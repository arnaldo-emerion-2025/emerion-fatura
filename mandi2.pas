unit mandi2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, FShowPadrao,
  Fpadrao, StdCtrls, Buttons, Grids, DBGrids, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, dxDBColorDateEdit, dxCntner, dxDBColorEdit, Db, DBTables,
  Wwquery, ExtCtrls, DBCtrls, Wwdatsrc, dxDBEdtr, dxDBColorLookupEdit, Mask,
  dxDBColorCurrencyEdit, dxDBColorMaskEdit;

type
  TFMMANDI2 = class(TfmShowPadrao)
    DSDIDET: TDataSource;
    UPDIDET: TUpdateSQL;
    DSDI: TDataSource;
    UpDI: TUpdateSQL;
    SQLDIDET: TwwQuery;
    SQLDI: TwwQuery;
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
    quSql: TwwQuery;
    SQLDIDETNADICAO: TIntegerField;
    Panel3: TPanel;
    Label7: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edNumDI: TdxDBColorEdit;
    edDataDi: TdxDBColorDateEdit;
    edLocalDesemb: TdxDBColorEdit;
    edDataDesemb: TdxDBColorDateEdit;
    edCodExport: TdxDBColorEdit;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    bContinuar: TButton;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    GroupBox2: TGroupBox;
    dxDBColorEdit5: TdxDBColorEdit;
    Label8: TLabel;
    Label9: TLabel;
    edCodFabricante: TdxDBColorEdit;
    Label10: TLabel;
    edVlDesconto: TdxDBColorEdit;
    edQtd: TdxDBColorEdit;
    Label11: TLabel;
    Label12: TLabel;
    edNumAdicao: TdxDBColorEdit;
    bDiCancelar: TButton;
    bDiConcluir: TButton;
    bIteRemover: TButton;
    bIteIncluir: TButton;
    SQLDITAB_ORIGEM: TStringField;
    SQLDIID_ITEM_ORIGEM: TIntegerField;
    bIteConcluir: TButton;
    bDiIncluir: TButton;
    bDiRemover: TButton;
    bIteCancelar: TButton;
    Label13: TLabel;
    dxDBColorLookupEdit3: TdxDBColorLookupEdit;
    transporte: TwwQuery;
    dsTransporte: TwwDataSource;
    dxDBColorLookupEdit1: TdxDBColorLookupEdit;
    Label14: TLabel;
    transporteID: TIntegerField;
    transporteTRANSPORTE: TStringField;
    SQLDIVIA_TRANSP: TIntegerField;
    SQLDIINTERMEDIO: TIntegerField;
    SQLDICNPJ: TStringField;
    SQLDIUF_TERCEIRO: TStringField;
    SQLDIVALOR_AFRMM: TFloatField;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    intermedio: TwwQuery;
    dsIntermedio: TwwDataSource;
    intermedioID: TIntegerField;
    intermedioINTERMEDIO: TStringField;
    uf: TwwQuery;
    dsUfe: TwwDataSource;
    ufSIGUFE: TStringField;
    dxDBColorLookupEdit2: TdxDBColorLookupEdit;
    dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit;
    dxDBColorMaskEdit1: TdxDBColorMaskEdit;
    edUFDesemb: TdxDBColorLookupEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure bDiConcluirClick(Sender: TObject);
    procedure bDiCancelarClick(Sender: TObject);
    procedure bIteIncluirClick(Sender: TObject);
    procedure bIteRemoverClick(Sender: TObject);
    procedure SQLDINewRecord(DataSet: TDataSet);
    procedure SQLDIAfterPost(DataSet: TDataSet);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure SQLDIDETAfterPost(DataSet: TDataSet);
    procedure SQLDIDETNewRecord(DataSet: TDataSet);
    procedure edCodExportKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bDiIncluirClick(Sender: TObject);
    procedure bDiRemoverClick(Sender: TObject);
    procedure bIteConcluirClick(Sender: TObject);
    procedure DSDIStateChange(Sender: TObject);
    procedure DSDIDETStateChange(Sender: TObject);
    procedure SQLDIBeforePost(DataSet: TDataSet);
    procedure SQLDIDETBeforePost(DataSet: TDataSet);
  private
    TB, ID: string;
    { Private declarations }
  public
    sContinuar: Boolean;
    function ShowModal(TB, ID: string): integer;
    procedure enableControlsDI();
    procedure disableControlsDI();
    procedure enableControlsIte();
    procedure disableControlsIte();
    { Public declarations }
  end;

var
  FMMANDI2: TFMMANDI2;

implementation

uses ManGDB, MAnNGE_NFE2;
{$R *.DFM}

procedure TFMMANDI2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;

end;

procedure TFMMANDI2.FormCreate(Sender: TObject);
begin
  inherited;
  sContinuar := False;
  SQLDI.active := false;
  SQLDI.Params[0].AsInteger := fmManNge_NFE2.FatGe2ID_FATGE2.Value;
  sqldi.Active := true;

  if sqldi.IsEmpty then
  begin
    panel1.BringToFront;

  end
  else
    panel1.Sendtoback;

  SQLDIDET.Active := false;
  SQLDIDET.Active := True;

  DisableControlsDI;
  DisableControlsITE;
end;

procedure TFMMANDI2.FormShow(Sender: TObject);
begin
  inherited;

  bDiIncluir.SetFocus;

  DSDIStateChange(DSDI);

end;

procedure TFMMANDI2.bContinuarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFMMANDI2.bDiConcluirClick(Sender: TObject);
begin
  inherited;

  if (SQLDI.state in [dsedit, dsinsert]) then
    sqldi.post;

  sqldi.Active := False;
  sqldi.Active := True;
  sqldi.Last;
  EnableControlsDI;

  panel1.SendToBack;
end;

procedure TFMMANDI2.bDiCancelarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja Cancelar as Altera��es?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    SQLDI.Cancel;
    SQLDIDET.Cancel;
    panel1.SendToBack;
    EnableControlsDI;
    EnableControlsIte;
  end;
end;

procedure TFMMANDI2.bIteIncluirClick(Sender: TObject);
begin

  inherited;
  if SQLDIDET.State <> dsBrowse then
  begin
    if messagebox(Handle, 'Adi��o da DI n�o conclu�da. Deseja Cancelar?', 'Inclu��o de DI', MB_ICONQUESTION + MB_YESNO) = IDYES then
      SQLDIDET.Cancel;
    EnableControlsITE
  end
  else
  begin
    DIsableControlsIte;
  end;

  SQLDIDET.Active := true;
  SQLDIDET.Append;

  if edNumAdicao.canfocus then
    edNumAdicao.SetFocus;

  panel1.BringToFront;

end;

procedure TFMMANDI2.bIteRemoverClick(Sender: TObject);
begin
  inherited;
    //Inicia processo de exclus�o
  if messagebox(handle, 'Confirma Exclus�o dos Dados da Adi��o.', 'Dados da adi��o', MB_ICONQUESTION + MB_YESNO) = IDYES then
  begin
    SQLDIDET.Delete;
    with SQLDIDET do
    begin
      EnableControlsIte;
      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
      ;
      try
        ApplyUpdates; {Tenta aplicar as altera��es}
        ;
        fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
        ;
      except
        fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
        ;
      end;
      CommitUpdates; {sucesso!, limpa o cache...}
    end;

  end
  else
  begin
    Abort;
  end;

end;

procedure TFMMANDI2.SQLDINewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLDIID_CMPNF2.AsInteger := fmManNge_NFE2.FatGe2ID_FATGE2.AsInteger;
  SQLDINUMDI.AsString := fmManNge_NFE2.Vdiddi;
  SQLDIDATADI.AsDateTime := fmManNge_NFE2.vdidata;
  SQLDILOCALDESEMB.AsString := fmManNge_NFE2.VdiLOCDESEMB;
  SQLDIDATADESEMB.AsDateTime := fmManNge_NFE2.VdiDataDesemb;
  SQLDIUFDESEMB.AsString := fmManNge_NFE2.VdiUF;
  SQLDICODEXPORT.AsString := fmManNge_NFE2.VDICexp;
  SQLDITAB_ORIGEM.AsString := TB;
  SQLDIID_DI.AsString := ID;

end;

procedure TFMMANDI2.SQLDIAfterPost(DataSet: TDataSet);
begin
  inherited;
  with sqldi do
  begin
    fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}

    try
      ApplyUpdates; {Tenta aplicar as altera��es}

      fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}

    except
      fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}

    end;
    CommitUpdates; {sucesso!, limpa o cache...}
  end;

  fmManNge_NFE2.Vdiddi := SQLDINUMDI.AsString;
  fmManNge_NFE2.Vdidata := SQLDIDATADI.AsDateTime;
  fmManNge_NFE2.VdiLOCDESEMB := SQLDILOCALDESEMB.AsString;
  fmManNge_NFE2.Vdidatadesemb := SQLDIDATADESEMB.AsDateTime;
  fmManNge_NFE2.VdiUF := SQLDIUFDESEMB.AsString;
  fmManNge_NFE2.VDICexp := SQLDICODEXPORT.AsString;
  fmManNge_NFE2.vdidata := SQLDIDATADI.AsDateTime;
  fmManNge_NFE2.VdiDataDesemb := SQLDIDATADESEMB.AsDateTime;

end;

procedure TFMMANDI2.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  Panel1.bringtofront;
end;

procedure TFMMANDI2.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
    Panel1.bringtofront;

end;

procedure TFMMANDI2.SQLDIDETAfterPost(DataSet: TDataSet);
begin
  inherited;
  with SQLDIDET do
  begin
    fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}

    try
      ApplyUpdates; {Tenta aplicar as altera��es}

      fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}

    except
      fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}

    end;
    CommitUpdates; {sucesso!, limpa o cache...}
  end;
end;

procedure TFMMANDI2.SQLDIDETNewRecord(DataSet: TDataSet);
begin
  inherited;
  SQLDIDETID_DI.AsInteger := SQLDIID_DI.AsInteger;
  SQLDIDETNSEQADIC.AsInteger := 1;
  SQLDIDETVDESCDI.AsInteger := 0;
  SQLDIDETQTDE.AsInteger := 0;
  SQLDIDETCODFAB.Value := fmManNge_NFE2.FatGe2CODGRU.AsString + '.' + fmManNge_NFE2.FatGe2CODSUB.AsString + '.' + fmManNge_NFE2.FatGe2CODPRO.AsString;
end;

procedure TFMMANDI2.edCodExportKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ((key = vk_return) or (key = vk_tab)) then
  begin
    DBGrid1.SelectedIndex := 3;
  end;
end;

function TFMMANDI2.ShowModal(TB, ID: string): integer;
begin
  Self.TB := TB;
  Self.ID := ID;

  inherited ShowModal;
end;

procedure TFMMANDI2.bDiIncluirClick(Sender: TObject);
begin
  inherited;
  if SQLDI.State <> DsBrowse then
  begin
    MessageBox(handle, 'Necess�rio concluir a DI antes de incluir nova.', 'Dados da DI', mb_ok + MB_ICONINFORMATION);
    EnableControlsDI;
    Abort;
  end
  else
  begin
    SQLDI.Append;
    DisableControlsDI;
    edNumDI.SetFocus;
  end;
end;

procedure TFMMANDI2.bDiRemoverClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Confirma Exclus�o de Dados da DI?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    sqldi.Delete;
    EnableControlsDI;
    with sqldi do
    begin
      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
      ;
      try
        ApplyUpdates; {Tenta aplicar as altera��es}
        ;
        fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
        ;
      except
        fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
        ;
      end;
      CommitUpdates; {sucesso!, limpa o cache...}
    end;
  end;
end;

procedure TFMMANDI2.bIteConcluirClick(Sender: TObject);
begin
  inherited;
  if (SQLDIDET.state in [dsedit, dsinsert]) then
  begin
    sqldidet.post;

    sqldidet.Active := False;
    sqldidet.Active := True;
    sqldidet.Last;

    EnableControlsIte;
  end;
end;

procedure TFMMANDI2.DSDIStateChange(Sender: TObject);
begin
  inherited;
  bDiIncluir.Enabled := SQLDI.State in [dsBrowse];
  bDiConcluir.Enabled := SQLDI.State in [dsEdit, dsInsert];
  bDiCancelar.Enabled := SQLDI.State in [dsEdit, dsInsert];
  bDiRemover.Enabled := SQLDI.State in [dsBrowse];

  edNumDI.ReadOnly := not (SQLDI.State in [dsEdit, dsInsert]);
  edDataDi.ReadOnly := not (SQLDI.State in [dsEdit, dsInsert]);
  edLocalDesemb.ReadOnly := not (SQLDI.State in [dsEdit, dsInsert]);
  edUFDesemb.ReadOnly := not (SQLDI.State in [dsEdit, dsInsert]);
  edDataDesemb.ReadOnly := not (SQLDI.State in [dsEdit, dsInsert]);
  edCodExport.ReadOnly := not (SQLDI.State in [dsEdit, dsInsert]);

  bIteIncluir.Enabled := ((SQLDI.State in [dsBrowse]) and (not SQLDI.IsEmpty) and (SQLDIDET.State in [dsBrowse]));

end;

procedure TFMMANDI2.DSDIDETStateChange(Sender: TObject);
begin
  inherited;
  bIteConcluir.Enabled := SQLDIDET.State in [dsEdit, dsInsert];
  bIteCancelar.Enabled := SQLDIDET.State in [dsEdit, dsInsert];
  bIteRemover.Enabled := SQLDIDET.State in [dsBrowse];

  edCodFabricante.ReadOnly := not (SQLDIDET.State in [dsEdit, dsInsert]);
  edVlDesconto.ReadOnly := not (SQLDIDET.State in [dsEdit, dsInsert]);
  edQtd.ReadOnly := not (SQLDIDET.State in [dsEdit, dsInsert]);
  edNumAdicao.ReadOnly := not (SQLDIDET.State in [dsEdit, dsInsert]);

end;

procedure TFMMANDI2.SQLDIBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Trim(SQLDINUMDI.AsString) = '') then
  begin
    messagebox(handle, 'Obrigat�rio informar n�mero da DI.', 'Informa��es da DI', MB_OK + MB_ICONINFORMATION);
    if edNumDI.CanFocus then
      edNumDI.SetFocus;
    abort;
  end;

  if (Trim(SQLDILOCALDESEMB.AsString) = '') then
  begin
    messagebox(handle, 'Obrigat�rio informar local de desembarque.', 'Informa��es da DI', MB_OK + MB_ICONINFORMATION);
    if edLocalDesemb.CanFocus then
      edLocalDesemb.SetFocus;
    abort;
  end;

  if (Trim(SQLDIUFDESEMB.AsString) = '') then
  begin
    messagebox(handle, 'Obrigat�rio informar UF de desembarque.', 'Informa��es da DI', MB_OK + MB_ICONINFORMATION);
    if edUFDesemb.CanFocus then
      edUFDesemb.SetFocus;
    abort;
  end;

  if (Trim(SQLDICODEXPORT.AsString) = '') then
  begin
    messagebox(handle, 'Obrigat�rio informar c�digo de exportador.', 'Informa��es da DI', MB_OK + MB_ICONINFORMATION);
    if edCodExport.CanFocus then
      edCodExport.SetFocus;
    abort;
  end;

end;

procedure TFMMANDI2.SQLDIDETBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Trim(SQLDIDETNADICAO.AsString) = '') then
  begin
    messagebox(handle, 'Obrigat�rio informar n�mero da adi��o.', 'Informa��es da Adi��o da DI', MB_OK + MB_ICONINFORMATION);
    if edNumAdicao.CanFocus then
      edNumAdicao.SetFocus;
    abort;
  end;
end;

end.

