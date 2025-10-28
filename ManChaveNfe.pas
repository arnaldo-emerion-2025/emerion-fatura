unit ManChaveNfe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, DBTables, Grids, DBGrids, ComCtrls, clipbrd;

type
  TfmManChaveNfe = class(TForm)
    Panel1: TPanel;
    Pn1: TPanel;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    edNroNfs: TEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    btnConfirma: TButton;
    SQLBUS: TQuery;
    SQLBUSTAB: TStringField;
    SQLBUSCODCLI: TIntegerField;
    SQLBUSNOMCLI: TStringField;
    SQLBUSNRONFS: TIntegerField;
    SQLBUSDTEFAT: TDateTimeField;
    SQLBUSSEQNFE: TStringField;
    dsBus: TDataSource;
    Button1: TButton;
    Label1: TLabel;
    edCliFor: TEdit;
    lbNomCli: TLabel;
    edDtIni: TDateTimePicker;
    edDtFim: TDateTimePicker;
    Label3: TLabel;
    SQLBUSID: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure SQLBUSTABGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure edNroNfsKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure CorZe(Sender: TObject);
  public
    { Public declarations }
    mComponAnt: TComponent;

  end;

var
  fmManChaveNfe: TfmManChaveNfe;
const
  _BR = #13#10;

implementation

{$R *.DFM}

procedure TfmManChaveNfe.Button1Click(Sender: TObject);
var
  strBase: string;
begin
  strBase :=
    ' select ''FP'' TAB, CODCLI, FC.NOMCLI, NRONFS, DTEFAT, SEQNFE, ID_FATPED ID ' + _BR +
    ' from fatped FP ' + _BR +
    ' join fincli fc on fc.codcli = fp.codcli ' + _BR +
    ' where fp.nronfs > 0 ' + _BR +
    ' and COALESCE(fp.seqnfe,'''') <> '''' ' + _BR;

  if trim(edNroNfs.Text) <> '' then
  begin
    strBase := strBase + ' and NRONFS = ' + trim(edNroNfs.Text) + _BR;
  end;

  if trim(edCliFor.Text) <> '' then
  begin
    strBase := strBase + ' and FC.CODCLI = ' + trim(edCliFor.Text) + _BR;
  end;

  if edDtIni.DateTime > 0 then
  begin
    strBase := strBase + ' and DTEFAT >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd', edDtIni.DateTime)) + _BR;
  end;

  if edDtFim.DateTime > 0 then
  begin
    strBase := strBase + ' and DTEFAT <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd', edDtFim.DateTime)) + _BR;
  end;

  strBase := strBase + ' union ' + _BR +
    ' select ''LF'' TAB, CODCLI, FC.NOMCLI, NRONFS, DTEFAT, SEQNFE, ID_LOJFAT ' + _BR +
    ' from lojfat LF ' + _BR +
    ' join fincli fc on fc.codcli = lf.codcli ' + _BR +
    ' where lf.nronfs > 0 ' + _BR +
    ' and COALESCE(lf.seqnfe,'''') <> '''' ' + _BR;

  if trim(edNroNfs.Text) <> '' then
  begin
    strBase := strBase + ' and NRONFS = ' + trim(edNroNfs.Text) + _BR;
  end;

  if trim(edCliFor.Text) <> '' then
  begin
    strBase := strBase + ' and FC.CODCLI = ' + trim(edCliFor.Text) + _BR;
  end;

  if edDtIni.DateTime > 0 then
  begin
    strBase := strBase + ' and DTEFAT >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd', edDtIni.DateTime)) + _BR;
  end;

  if edDtFim.DateTime > 0 then
  begin
    strBase := strBase + ' and DTEFAT <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd', edDtFim.DateTime)) + _BR;
  end;

  strBase := strBase + ' union ' + _BR +
    ' select ''CE'' TAB, CODFOR, CAST(FF.nomfor as VARCHAR(70)), ce.numdoc NRONFS, CE.DTEENT, CE.SEQNFE, ID_CMPENT ' + _BR +
    ' from cmpent CE ' + _BR +
    ' join finfor ff on ff.CODFOR = CE.CODFOR ' + _BR +
    ' where ce.numdoc > 0 ' + _BR;

  if trim(edNroNfs.Text) <> '' then
  begin
    strBase := strBase + ' and NRONFS = ' + trim(edNroNfs.Text) + _BR;
  end;

  if trim(edCliFor.Text) <> '' then
  begin
    strBase := strBase + ' and FF.CODFOR = ' + trim(edCliFor.Text) + _BR;
  end;

  if edDtIni.DateTime > 0 then
  begin
    strBase := strBase + ' and DTEENT >= ' + QuotedStr(FormatDateTime('yyyy-MM-dd', edDtIni.DateTime)) + _BR;
  end;

  if edDtFim.DateTime > 0 then
  begin
    strBase := strBase + ' and DTEENT <= ' + QuotedStr(FormatDateTime('yyyy-MM-dd', edDtFim.DateTime)) + _BR;
  end;

  strBase := strBase + ' order by 5 desc,4,2';

  if debughook > 0 then
    Clipboard.AsText := strBase;

  SQLBUS.Active := false;
  SQLBUS.SQL.Text := strBase;
  SQLBUS.Active := True;

end;

procedure TfmManChaveNfe.SQLBUSTABGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Text = 'FP' then
    Text := 'Comercial'
  else if Text = 'FG' then
    Text := 'Outros tipos'
  else if Text = 'LF' then
    Text := 'Loja'
  else if Text = 'CE' then
    Text := 'Entrada';
end;

procedure TfmManChaveNfe.edNroNfsKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8, #9]) then
    Key := #0;
end;

procedure TfmManChaveNfe.DBGrid1DblClick(Sender: TObject);
begin
  btnConfirma.Click;
end;

procedure TfmManChaveNfe.FormCreate(Sender: TObject);
begin
  edNroNfs.Text := '';
  edCliFor.Text := '';
  lbNomCli.Caption := '';
  edDtIni.DateTime := Date - 37;
  edDtIni.DateTime := Date - 7;

end;

procedure TfmManChaveNfe.btnConfirmaClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmManChaveNfe.CorZe(Sender: TObject);
var
  mComFoco, mSemFoco, mDesativado: TColor;
begin
  mDesativado := $00FCF4ED; // cor para quando o componente estiver desativado ou campos somente leitura...
  mSemFoco := $00FCF4ED; // cor para quando o componente estiver sem Foco
  mComFoco := clInfoText; // para quando o componente estiver Com Foco
  if TEdit(ActiveControl).Color <> mDesativado then
  begin
    if Assigned(mComponAnt) then
      if (ActiveControl is TEdit) or
      (ActiveControl is TDBGrid) or
      (ActiveControl is TEdit) then
      begin
        TEdit(ActiveControl).Color := mComFoco; // cor com foco
        mComponAnt := ActiveControl;
      end;
  end;

end;

procedure TfmManChaveNfe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_return then
    Self.Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.

