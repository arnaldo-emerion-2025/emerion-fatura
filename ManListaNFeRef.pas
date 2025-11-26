unit ManListaNFeRef;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, DBTables, StdCtrls, Mask, DBCtrls,
  AppEvnts, ComCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  dxDBColorPickEdit, IniFiles, dxColorPickEdit;

type
  TfmManListaNFeRef = class(TForm)
    pnCab: TPanel;
    pnFoot: TPanel;
    SQLREF: TQuery;
    btnConcluir: TButton;
    dsRef: TDataSource;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    upRef: TUpdateSQL;
    btnFecha: TButton;
    sbText: TStatusBar;
    Button1: TButton;
    btnIncluir: TButton;
    btnExclui: TButton;
    SQLREFID_FATGER: TIntegerField;
    SQLREFNFE_REF: TStringField;
    SQLREFCNPJ: TStringField;
    SQLREFNRONFS: TIntegerField;
    SQLREFCODUF: TIntegerField;
    SQLREFNRONFS_GER: TIntegerField;
    SQLREFCODCLI: TIntegerField;
    SQLREFNOMCLI: TStringField;
    SQLREFMODPFA: TStringField;
    SQLREFNUMGER: TIntegerField;
    SQLREFCGCCLI: TStringField;
    SQLREFMODELO: TIntegerField;
    SQLREFSERIE: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBEdit5: TDBEdit;
    edSerie: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBGrid2: TDBGrid;
    edNroCoo: TDBEdit;
    edNroEcf: TDBEdit;
    SQLREFMODELO_ECF: TStringField;
    SQLREFNUM_COO: TStringField;
    SQLREFTIPO_IMPRESSAO_ECF: TStringField;
    edModECF: TdxDBColorPickEdit;
    SQLREFNUM_ECF: TStringField;
    procedure btnConcluirClick(Sender: TObject);
    procedure btnFechaClick(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit10Enter(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure SQLREFNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluiClick(Sender: TObject);
    procedure dsRefDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    NumGer: integer;
  public
    { Public declarations }
    mComponAnt: TComponent;
    function ShowModal(NumGer: integer): integer;

  end;

var
  fmManListaNFeRef: TfmManListaNFeRef;

implementation

uses ManGDB;//, ManChaveNfe;

{$R *.DFM}

{ TfmManListaNFeRef }

function TfmManListaNFeRef.ShowModal(NumGer: integer): integer;
begin
  SQLREF.Active := False;

  Self.NumGer := NumGer;

  SQLREF.sql.Text :=
    'select ref.id_fatger,ref.nfe_ref,ref.cnpj,ref.modelo,ref.serie,ref.nronfs,ref.coduf, ' + _BR +
    ' ref.MODELO_ECF, ref.NUM_ECF, ref.NUM_COO, ref.TIPO_IMPRESSAO_ECF,' + _BR +
    ' ger.nronfs NRONFS_GER,ger.codcli,cli.nomcli, ger.modpfa,ger.numger,ger.cgccli ' + _BR +
    ' from fatger_ref ref ' + _BR +
    ' join fatger ger on ger.numger = ref.id_fatger ' + _BR +
    ' join fincli cli on cli.codcli = ger.codcli ' + _BR +
    ' where ger.NumGer = ' + inttostr(Numger);

  SQLREF.Active := True;

  inherited ShowModal;
end;

procedure TfmManListaNFeRef.btnConcluirClick(Sender: TObject);
var
   validou: Boolean;
   
   IniFile: String;
   ini, modImpressao: TIniFile;
begin

  validou := False;

  if ((Trim(DBEdit5.text) <> '') or
      (Trim(edSerie.text) <> '') or
      (Trim(DBEdit7.text) <> '') or
      (Trim(DBEdit8.text) <> '') or
      (Trim(DBEdit9.text) <> '') or
      (Trim(DBEdit10.text) <> '') ) then
     begin

      validou := True;

      if SQLREFSerie.Asinteger <= -1 then
      begin
        //Regra de Neg�cio foi alterada. Agora � SIM poss�vel a s�rie ser "Zero", � estranho; mas existe.
        messagebox(handle, 'S�rie � um campo obrigat�rio e deve ser maior ou igual a zero. Verifique e tente novamente.', 'Validacao', mb_ok + MB_ICONWARNING);
        Abort;
      end;

      if SQLREFModelo.Asinteger <= 0 then
      begin
        messagebox(handle, 'Modelo � um campo obrigat�rio e deve ser maior que zero. Verifique e tente novamente.', 'Validacao', mb_ok + MB_ICONWARNING);
        Abort;
      end;

      if SQLREFCODUF.Asinteger <= 0 then
      begin
        messagebox(handle, 'C�digo da UF � um campo obrigat�rio e deve ser maior que zero. Verifique e tente novamente.', 'Validacao', mb_ok + MB_ICONWARNING);
        Abort;
      end;

      if length(trim(SQLREFSerie.AsString)) <= 0 then
      begin
        messagebox(handle, 'CNPJ/CPF � um campo obrigat�rio. Verifique e tente novamente.', 'Validacao', mb_ok + MB_ICONWARNING);
        Abort;
      end;

      if length(trim(SQLREFNFE_REF.AsString)) <> 44 then
      begin
        messagebox(handle, 'Chave � um campo obrigat�rio e deve conter 44 caracteres. Verifique e tente novamente.', 'Validacao', mb_ok + MB_ICONWARNING);
        Abort;
      end;
     end;

  if ((Trim(edNroEcf.text) <> '') or
      (Trim(edNroCoo.text) <> '')) then
     begin
        validou := True;

        if (SQLREF.State in [dsEdit, dsInsert]) then
           begin
              SQLREF.FieldByName('MODELO_ECF').AsString := '2D';

              IniFile := ExtractFilePath(Application.ExeName) + 'NFeEmerion2.ini';

              Ini := TIniFile.Create(IniFile);
              try

                if Ini.ReadString('Geral', 'ModeloImpressao', '') = '' then
                   begin
                      Ini.WriteString('Geral', 'ModeloImpressao', '1');
                      SQLREF.FieldByName('TIPO_IMPRESSAO_ECF').AsString := '1';
                   end
                else
                   begin
                      SQLREF.FieldByName('TIPO_IMPRESSAO_ECF').AsString := Ini.ReadString('Geral', 'ModeloImpressao', '');
                   end;
              finally
                 Ini.Free;
              end;
           end;
           
        if trim(edModECF.Text) = '' then
           begin
              messagebox(handle, 'O modelo do Documento Fiscal � de Preenchimento Obrigat�rio. Verifique e tente novamente.', 'Validacao', mb_ok + MB_ICONWARNING);
              Abort;
           end;

        if length(trim(edNroEcf.Text)) > 6 then
           begin
              messagebox(handle, 'Nro do ECF � um campo obrigat�rio e deve conter no m�ximo 6 caracteres. Verifique e tente novamente.', 'Validacao', mb_ok + MB_ICONWARNING);
              Abort;
           end;

        if length(trim(edNroCoo.Text)) <> 6 then
           begin
              messagebox(handle, 'Nro do COO � um campo obrigat�rio e deve conter 6 caracteres. Verifique e tente novamente.', 'Validacao', mb_ok + MB_ICONWARNING);
              Abort;
           end;
     end;

  if not (validou) then
     begin
        messagebox(handle, 'H� campos de Preenchimento Obrigat�rio nao informados. Verifique e tente novamente.', 'Validacao', mb_ok + MB_ICONWARNING);
        Abort;
     end;

  fmManGDB.dbMain.StartTransaction;
  try
    SQLREF.Post;

    SQLREF.ApplyUpdates;

    fmManGDB.dbMain.Commit;
  except
    on E: Exception do
    begin
      fmManGDB.dbMain.Rollback;
      messagebox(handle, pchar('Houve problemas ao gravar o registro. Erro: ' + E.Message), 'Confirmacao de processo', mb_ok + MB_ICONEXCLAMATION);
    end;
  end;
end;

procedure TfmManListaNFeRef.btnFechaClick(Sender: TObject);
begin

  if (SQLREF.State in [dsedit, dsinsert]) then
    SQLREF.Cancel;

  Self.Close;
end;

procedure TfmManListaNFeRef.DBEdit10Exit(Sender: TObject);
begin
  sbText.Panels[0].Text := '';
end;

procedure TfmManListaNFeRef.DBEdit10Enter(Sender: TObject);
begin
  sbText.Panels[0].Text := 'F2 - Buscar Chave entre as NFE cadastradas.';
end;

procedure TfmManListaNFeRef.btnIncluirClick(Sender: TObject);
begin
  if not (SQLREF.State in [dsedit, dsinsert]) then
    begin
      SQLREF.Append;
    end
  else
    messagebox(handle, 'H� um registro em processo de edi��o.', 'Validacao', mb_ok + MB_ICONINFORMATION);

end;

procedure TfmManListaNFeRef.SQLREFNewRecord(DataSet: TDataSet);
begin
  SQLREFID_FATGER.AsInteger := NumGer;
end;

procedure TfmManListaNFeRef.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Screen.OnActiveControlChange := nil;
end;

procedure TfmManListaNFeRef.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
    Self.Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TfmManListaNFeRef.btnExcluiClick(Sender: TObject);
begin
  if (SQLREF.State in [dsedit, dsinsert]) then
    SQLREF.Cancel
  else
  begin
    if messagebox(handle, 'Deseja realmente excluir esta refer�ncia?', 'Confirmacao de exclus�o', mb_YesNo + MB_ICONQUESTION) = IDYES then
    begin

      fmManGDB.dbMain.StartTransaction;
      try
        SQLREF.Delete;

        SQLREF.ApplyUpdates;

        fmManGDB.dbMain.Commit;
      except
        on E: Exception do
        begin
          fmManGDB.dbMain.Rollback;
          messagebox(handle, pchar('Houve problemas ao excluir o registro. Erro: ' + E.Message), 'Confirmacao de processo', mb_ok + MB_ICONEXCLAMATION);
        end;
      end;

    end;
  end;
end;

procedure TfmManListaNFeRef.dsRefDataChange(Sender: TObject;
  Field: TField);
begin
  btnConcluir.Enabled := SQLREF.State in [dsEdit, dsInsert];
  btnIncluir.Enabled := not (SQLREF.State in [dsEdit, dsInsert]);
  btnExclui.Enabled := (not (SQLREF.State in [dsEdit, dsInsert])) and (not SQLREF.IsEmpty);

end;

end.

