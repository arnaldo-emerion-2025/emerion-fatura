unit uPerfilDevolucao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBCtrl, dxDBGrid, dxTL, dxCntner, dxExEdtr, dxEdLib, dxColorPickEdit,
  dxColorEdit, StdCtrls, Buttons, dxEditor, dxColorDateEdit, ExtCtrls, AuxIni,
  Db, DBTables, Wwquery, auxPsq, BbMensag, PsqClp, BbGeral, PsqEmp, Fpadrao,
  Menus, dxDBTLCl, dxGrClms, Wwdatsrc, BbFuncao, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;
  
  TfrmPerfilDevolucao = class(TfmPadrao)
    Label17: TLabel;
    Label18: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    Label5: TLabel;
    bPsqCli: TSpeedButton;
    Label13: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    BbPsqPro: TSpeedButton;
    BbPsqSub: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqClp: TSpeedButton;
    Label16: TLabel;
    Label19: TLabel;
    EdDteDev1: TdxColorDateEdit;
    EdDteDev2: TdxColorDateEdit;
    bPesquisa: TBitBtn;
    bImprime: TBitBtn;
    EdCodCli: TdxColorEdit;
    EdNomCli: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodPro: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdNomPro: TdxColorEdit;
    EdSitDev: TdxColorPickEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    EdCodEmp: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    Label11: TLabel;
    Label12: TLabel;
    edNfsCli: TdxColorEdit;
    Label14: TLabel;
    Label15: TLabel;
    edNroNfs: TdxColorEdit;
    Label20: TLabel;
    Label21: TLabel;
    edNumNfs: TdxColorEdit;
    grDevolucao: TdxDBGrid;
    quSql: TwwQuery;
    perfilDevolucao: TwwQuery;
    dsPerfilDevolucao: TwwDataSource;
    perfilDevolucaoCODIGO: TStringField;
    perfilDevolucaoDESCRICAO: TStringField;
    perfilDevolucaoCOD_CLIENTE: TIntegerField;
    perfilDevolucaoNUM_PEDIDO: TIntegerField;
    perfilDevolucaoNFE_VENDA: TIntegerField;
    perfilDevolucaoNFE_CLIENTE: TIntegerField;
    perfilDevolucaoNFE_ENTRADA: TIntegerField;
    perfilDevolucaoDATA_EMISSAO_DEVOLUCAO: TDateTimeField;
    perfilDevolucaoQTD_PEDIDO_VENDA: TFloatField;
    perfilDevolucaoQTD_DEVOLVIDA: TFloatField;
    perfilDevolucaoSITDEV: TStringField;
    grDevolucaoCODIGO: TdxDBGridMaskColumn;
    grDevolucaoDESCRICAO: TdxDBGridMaskColumn;
    grDevolucaoCOD_CLIENTE: TdxDBGridMaskColumn;
    grDevolucaoNUM_PEDIDO: TdxDBGridMaskColumn;
    grDevolucaoNFE_CLIENTE: TdxDBGridMaskColumn;
    grDevolucaoNFE_ENTRADA: TdxDBGridMaskColumn;
    grDevolucaoDATA_EMISSAO_DEVOLUCAO: TdxDBGridDateColumn;
    grDevolucaoQTD_PEDIDO_VENDA: TdxDBGridMaskColumn;
    grDevolucaoQTD_DEVOLVIDA: TdxDBGridMaskColumn;
    grDevolucaoSITDEV: TdxDBGridMaskColumn;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    Colunas1: TMenuItem;
    SaveDialog: TSaveDialog;
    edNumRes: TdxColorEdit;
    Label22: TLabel;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    grDevolucaoNFE_VENDA: TdxDBGridMaskColumn;
    procedure bPsqCliClick(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCliKeyPress(Sender: TObject; var Key: Char);
    procedure BbPsqClpClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodClpKeyPress(Sender: TObject; var Key: Char);
    procedure BbPsqGruClick(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodGruKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodSubKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bImprimeClick(Sender: TObject);
  private
    { Private declarations }
    sBase, sFiltro, sOrdem      :       String;

    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    { Public declarations }
  end;

var
  frmPerfilDevolucao: TfrmPerfilDevolucao;

implementation

uses ManGDB, ManCol;

{$R *.DFM}

procedure TfrmPerfilDevolucao.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin

    DefaultExt := ADefaultExt;

    Filter := AFilter;

    FileName := AFileName;

    if Execute then
      AMethod(FileName, True);

  end;
end;

procedure TfrmPerfilDevolucao.bPsqCliClick(Sender: TObject);
begin

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'C';

    fmAuxIni.sCodVen_Id := GCodVen_Id;

    fmAuxIni.sGUs_Id := GGUs_Id;

    fmAuxIni.sCodAtd_Id := GCodAtd_Id;

    fmAuxIni.ShowModal;

    if fmAuxIni.CodCli > 0 then
    begin

      EdNomCli.Text := fmAuxIni.NomCli;
      EdCodCli.Text := IntToStr(fmAuxIni.CodCli);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodCli.Text) <> '' then
  begin

    if EdCodClp.Enabled then
      EdCodClp.SetFocus
    else
      EdCodClp.SetFocus;

  end;
end;

procedure TfrmPerfilDevolucao.EdCodCliExit(Sender: TObject);
begin
  if Trim(EdCodCli.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomCli From FinCli ' +
        ' Where CodCli = ''' + EdCodCli.Text + '''';
      Open;

      EdNomCli.Text := FieldByName('NomCli').AsString;

    end;

  end
  else
    EdNomCli.Text := '';
end;

procedure TfrmPerfilDevolucao.EdCodCliKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'C';

      fmAuxIni.sCodVen_Id := GCodVen_Id;

      fmAuxIni.sGUs_Id := GGUs_Id;

      fmAuxIni.sCodAtd_Id := GCodAtd_Id;

      fmAuxIni.ShowModal;

      if fmAuxIni.CodCli > 0 then
      begin

        EdNomCli.Text := fmAuxIni.NomCli;
        EdCodCli.Text := IntToStr(fmAuxIni.CodCli);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    EdCodCli.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'C';

      fmAuxPsq.sCodVen_Id := GCodVen_Id;

      fmAuxPsq.sGUs_Id := GGUs_Id;

      fmAuxPsq.sCodAtd_Id := GCodAtd_Id;

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodCli > 0 then
      begin

        EdNomCli.Text := fmAuxPsq.NomCli;
        EdCodCli.Text := IntToStr(fmAuxPsq.CodCli);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    EdCodCli.SetFocus;

  end;
end;

procedure TfrmPerfilDevolucao.EdCodCliKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfrmPerfilDevolucao.BbPsqClpClick(Sender: TObject);
begin
  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'Cls';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodClp) <> '' then
    begin

      EdCodClp.Text := fmAuxIni.CodClp;
      EdNomClp.Text := fmAuxIni.NomClp;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodClp.Text) <> '' then
    EdCodGru.SetFocus;
end;

procedure TfrmPerfilDevolucao.EdCodClpExit(Sender: TObject);
begin
  if Trim(EdCodClp.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomClp From EstClp ' +
        ' Where CodClp = ''' + EdCodClp.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomClp').AsString) <> '' then
      EdNomClp.Text := quSql.FieldByName('NomClp').AsString
    else
      fmsgErro('Classificação Informada não Encontrada.', EdCodClp);

  end
  else
    EdNomClp.Text := '';
end;

procedure TfrmPerfilDevolucao.EdCodClpKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqClp := TfmPsqClp.Create(Self);

      fmPsqClp.ShowModal;

      if Trim(fmPsqClp.CodClp) <> '' then
      begin

        EdCodClp.Text := fmPsqClp.CodClp;
        EdNomClp.Text := fmPsqClp.NomClp;

      end;

    finally

      FreeAndNil(fmPsqClp);

    end;

    if Trim(EdCodClp.Text) <> '' then
      EdCodGru.SetFocus;

  end;
end;

procedure TfrmPerfilDevolucao.EdCodClpKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfrmPerfilDevolucao.BbPsqGruClick(Sender: TObject);
begin

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodClp.Text) <> '' then
      fmAuxIni.CodClp := EdCodClp.Text;

    fmAuxIni.TipoPesq := 'G';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodGru) <> '' then
    begin

      EdCodGru.Text := fmAuxIni.CodGru;
      EdNomGru.Text := fmAuxIni.NomGru;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodGru.Text) <> '' then
    EdCodSub.SetFocus;
end;

procedure TfrmPerfilDevolucao.BbPsqSubClick(Sender: TObject);
begin

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodClp.Text) <> '' then
      fmAuxIni.CodClp := EdCodClp.Text;
    if Trim(EdCodGru.Text) <> '' then
      fmAuxIni.CodGru := EdCodGru.Text;

    fmAuxIni.TipoPesq := 'S';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodSub) <> '' then
    begin

      EdCodGru.Text := fmAuxIni.CodGru;
      EdNomGru.Text := fmAuxIni.NomGru;
      EdCodSub.Text := fmAuxIni.CodSub;
      EdNomSub.Text := fmAuxIni.NomSub;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodSub.Text) <> '' then
    EdCodPro.SetFocus;

end;

procedure TfrmPerfilDevolucao.BbPsqProClick(Sender: TObject);
begin

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodClp.Text) <> '' then
      fmAuxIni.CodClp := EdCodClp.Text;
    if Trim(EdCodGru.Text) <> '' then
      fmAuxIni.CodGru := EdCodGru.Text;
    if Trim(EdCodSub.Text) <> '' then
      fmAuxIni.CodGru := EdCodSub.Text;

    fmAuxIni.TipoPesq := 'I';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodPro) <> '' then
    begin

      EdCodClp.Text := fmAuxIni.CodClp;
      EdNomClp.Text := fmAuxIni.NomClp;
      EdCodGru.Text := fmAuxIni.CodGru;
      EdNomGru.Text := fmAuxIni.NomGru;
      EdCodSub.Text := fmAuxIni.CodSub;
      EdNomSub.Text := fmAuxIni.NomSub;
      EdCodPro.Text := fmAuxIni.CodPro;
      EdNomPro.Text := fmAuxIni.DscPro;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodPro.Text) <> '' then
    bPesquisa.SetFocus;

end;

procedure TfrmPerfilDevolucao.EdCodGruExit(Sender: TObject);
begin
  if Trim(EdCodGru.Text) <> '' then
  begin

    EdCodGru.Text := FNumZeros(EdCodGru.Text, 3);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomGru From EstGru ' +
        ' Where CodGru = ''' + EdCodGru.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomGru').AsString) <> '' then
      EdNomGru.Text := quSql.FieldByName('NomGru').AsString
    else
      fmsgErro('Grupo Informado não Encontrado.', EdCodGru);

  end
  else
    EdNomGru.Text := '';
end;

procedure TfrmPerfilDevolucao.EdCodGruKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := EdCodClp.Text;

      fmAuxIni.TipoPesq := 'G';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdCodGru.Text) <> '' then
      EdCodSub.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := EdCodClp.Text;

      fmAuxPsq.TipoPesq := 'G';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        EdCodGru.Text := fmAuxPsq.CodGru;
        EdNomGru.Text := fmAuxPsq.NomGru;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(EdCodGru.Text) <> '' then
      EdCodSub.SetFocus;

  end;
end;

procedure TfrmPerfilDevolucao.EdCodGruKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfrmPerfilDevolucao.EdCodSubExit(Sender: TObject);
begin
  if Trim(EdCodSub.Text) <> '' then
  begin

    EdCodSub.Text := FNumZeros(EdCodSub.Text, 4);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomSub From EstSub ' +
        ' Where CodGru = ''' + EdCodGru.Text + '''' +
        '   and CodSub = ''' + EdCodSub.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomSub').AsString) <> '' then
      EdNomSub.Text := quSql.FieldByName('NomSub').AsString
    else
      fmsgErro('SubGrupo Informado não Encontrado.', EdCodSub);

  end
  else
    EdNomSub.Text := '';
end;

procedure TfrmPerfilDevolucao.EdCodSubKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := EdCodClp.Text;
      fmAuxIni.CodGru := EdCodGru.Text;

      fmAuxIni.TipoPesq := 'S';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;
        EdCodSub.Text := fmAuxIni.CodSub;
        EdNomSub.Text := fmAuxIni.NomSub;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdCodSub.Text) <> '' then
      EdCodPro.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := EdCodClp.Text;
      fmAuxPsq.CodGru := EdCodGru.Text;

      fmAuxPsq.TipoPesq := 'S';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        EdCodGru.Text := fmAuxPsq.CodGru;
        EdNomGru.Text := fmAuxPsq.NomGru;
        EdCodSub.Text := fmAuxPsq.CodSub;
        EdNomSub.Text := fmAuxPsq.NomSub;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(EdCodSub.Text) <> '' then
      EdCodPro.SetFocus;

  end;  
end;

procedure TfrmPerfilDevolucao.EdCodSubKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfrmPerfilDevolucao.EdCodProExit(Sender: TObject);
begin
  if Trim(EdCodPro.Text) <> '' then
  begin

    EdCodPro.Text := FNumStrZero(EdCodPro.Text);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select DscPro From EstPro ' +
        ' Where CodClp = :CodClp' +
        '   and CodGru = :CodGru' +
        '   and CodSub = :CodSub' +
        '   and CodPro = :CodPro';

      with Params do
      begin

        Params[0].AsString := EdCodClp.Text;
        Params[1].AsString := EdCodGru.Text;
        Params[2].AsString := EdCodSub.Text;
        Params[3].AsString := EdCodPro.Text;

      end;

      Open;

    end;

    if Trim(quSQL.FieldbyName('DscPro').AsString) <> '' then
      EdNomPro.Text := quSql.FieldByName('DscPro').AsString
    else
      fmsgErro('Item Informado não Encontrado.', EdCodPro);

  end
  else
    EdNomPro.Text := '';
end;

procedure TfrmPerfilDevolucao.EdCodProKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := EdCodClp.Text;
      fmAuxIni.CodGru := EdCodGru.Text;
      fmAuxIni.CodSub := EdCodSub.Text;

      fmAuxIni.TipoPesq := 'I';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;
        EdCodSub.Text := fmAuxIni.CodSub;
        EdNomSub.Text := fmAuxIni.NomSub;
        EdCodPro.Text := fmAuxIni.CodPro;
        EdNomPro.Text := fmAuxIni.DscPro;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdCodPro.Text) <> '' then
      EdDteDev1.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := EdCodClp.Text;
      fmAuxPsq.CodGru := EdCodGru.Text;
      fmAuxPsq.CodSub := EdCodSub.Text;

      fmAuxPsq.TipoPesq := 'I';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        EdCodGru.Text := fmAuxPsq.CodGru;
        EdNomGru.Text := fmAuxPsq.NomGru;
        EdCodSub.Text := fmAuxPsq.CodSub;
        EdNomSub.Text := fmAuxPsq.NomSub;
        EdCodPro.Text := fmAuxPsq.CodPro;
        EdNomPro.Text := fmAuxPsq.DscPro;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(EdCodPro.Text) <> '' then
      EdDteDev1.SetFocus;

  end;
end;

procedure TfrmPerfilDevolucao.SpeedButton1Click(Sender: TObject);
begin

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
      EdCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfrmPerfilDevolucao.EdCodEmpExit(Sender: TObject);
begin
  if Trim(EdCodEmp.Text) <> '' then
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
      Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('ApeEmp').AsString) <> '' then
        EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
      else
      begin

        EdPsqApeEmp.Text := '';

        fmsgErro('Empresa Informada não Encontrada.', EdCodEmp);

      end;
    end;

  end
  else
    EdPsqApeEmp.Text := '';
end;

procedure TfrmPerfilDevolucao.EdCodEmpKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfrmPerfilDevolucao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPerfilDevolucao.FormCreate(Sender: TObject);
begin
  inherited;
   sBase :=
   ' select' +
   ' dv2.codgru || ' + QuotedStr('.') + ' || dv2.codsub || ' + QuotedStr('.') + ' || dv2.codpro as CODIGO,' +
   ' dv2.desdv2 as DESCRICAO,' +
   ' dev.codcli as COD_CLIENTE,' +
   ' dev.numres as NUM_PEDIDO,' +
   ' dev.numnfs as NFE_VENDA,' +
   ' dev.nfscli as NFE_CLIENTE,' +
   ' ger.nronfs as NFE_ENTRADA,' +
   ' dev.dtedev as DATA_EMISSAO_DEVOLUCAO,' +
   ' dv2.qtpdv2 as QTD_PEDIDO_VENDA,' +
   ' dv2.ultqtd as QTD_DEVOLVIDA,' +
   ' dev.sitdev' +

   ' from fatdv2 dv2' +
   ' left join fatdev dev on' +
                    ' dv2.codemp = dev.codemp and' +
                    ' dv2.dteres = dev.dteres and' +
                    ' dv2.numres = dev.numres and' +
                    ' dv2.seqlib = dev.seqlib and' +
                    ' dv2.seqfat = dev.seqfat and' +
                    ' dv2.seqdev = dev.seqdev and' +
                    ' dv2.UltQtd > 0' +
   ' left join fatger ger on' +
                    ' ger.id_fatdev   =   dev.id_fatdev   and' +
                    ' ger.codemp      =   dev.codemp      and' +
                    ' ger.numger      =   dev.numger' +
   ' Where 1 = 1 ';
end;

procedure TfrmPerfilDevolucao.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

    fmManCol := TfmManCol.Create(Self);

    fmManCol.Synchronize(frmPerfilDevolucao.grDevolucao);

    fmManCol.ShowModal;

  finally

    FreeAndNil(fmManCol);

  end;
end;

procedure TfrmPerfilDevolucao.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Perfil de Devolução.htm', grDevolucao.SaveToHTML);
end;

procedure TfrmPerfilDevolucao.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Perfil de Devolução.xls', grDevolucao.SaveToXLS);
end;

procedure TfrmPerfilDevolucao.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Perfil de Devolução.xml', grDevolucao.SaveToXML);
end;

procedure TfrmPerfilDevolucao.bPesquisaClick(Sender: TObject);
begin
  inherited;

  sFiltro       := '';
  sOrdem        := '';

  if(EdSitDev.Text <> 'Todos') then
     sFiltro := sFiltro + ' and dev.SitDev = ' + QuotedStr(EdSitDev.Text);

  if Trim(EdNumNfs.Text) <> '' then
    sFiltro := sFiltro + ' and dev.NumNfs = ' + QuotedStr(EdNumNfs.Text)+_BR;
  if Trim(EdNumRes.Text) <> '' then
    sFiltro := sFiltro + ' and dev.NumRes = ' + QuotedStr(EdNumRes.Text)+_BR;
  if Trim(EdNroNfs.Text) <> '' then
    sFiltro := sFiltro + ' and ger.NroNfs = ' + QuotedStr(EdNroNfs.Text)+_BR;
  if Trim(EdNfsCli.Text) <> '' then
    sFiltro := sFiltro + ' and dev.NfsCli = ' + QuotedStr(EdNfsCli.Text)+_BR;
  if Trim(EdCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and dev.CodEmp = ' + QuotedStr(EdCodEmp.Text)+_BR;
  if Trim(EdCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and dev.CodCli = ' + QuotedStr(EdCodCli.Text)+_BR;

  if Trim(EdCodClp.Text) <> '' then
    sFiltro := sFiltro + ' and dv2.CodClp = ' + QuotedStr(EdCodClp.Text)+_BR;
  if Trim(EdCodGru.Text) <> '' then
    sFiltro := sFiltro + ' and dv2.CodGru = ' + QuotedStr(EdCodGru.Text)+_BR;
  if Trim(EdCodSub.Text) <> '' then
    sFiltro := sFiltro + ' and dv2.CodSub = ' + QuotedStr(EdCodSub.Text)+_BR;
  if Trim(EdCodPro.Text) <> '' then
    sFiltro := sFiltro + ' and dv2.CodPro = ' + QuotedStr(EdCodPro.Text)+_BR;

  if Trim(fLimpaStr(EdDteDev1.Text)) <> '' then
    sFiltro := sFiltro + ' and dev.DteDev >= ' + QuotedStr(fDateToSQL(EdDteDev1.Date))+_BR;
  if Trim(fLimpaStr(EdDteDev2.Text)) <> '' then
    sFiltro := sFiltro + ' and dev.DteDev <= ' + QuotedStr(fDateToSQL(EdDteDev2.Date))+_BR;

  perfilDevolucao.Active := False;
  perfilDevolucao.sql.text := sBase + sFiltro + sOrdem;
  perfilDevolucao.Active := True;
end;

procedure TfrmPerfilDevolucao.bImprimeClick(Sender: TObject);
begin
  inherited;

  dxComponentPrinterLink1.Preview;
end;

end.
