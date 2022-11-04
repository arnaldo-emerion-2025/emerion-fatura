unit PsqCep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Wwquery, Wwdatsrc, Grids, Wwdbigrd, Wwdbgrid, hGrid,
  StdCtrls, Buttons, ExtCtrls, Mask, hEdits, wwdblook, dxCntner, dxEditor,
  dxExEdtr, dxDBEdtr, dxDBELib, dxEdLib, jpeg, dxColorEdit,
  dxColorLookupEdit, dxColorPickEdit;

type
  TfmPsqCep = class(TForm)
    dsCep: TwwDataSource;
    GerCep: TwwQuery;
    GerCepNUMCEP: TStringField;
    GerCepENDCEP: TStringField;
    GerCepBAICEP: TStringField;
    GerCepCIDCEP: TStringField;
    GerCepENTCEP: TStringField;
    GerCepTIPCEP: TStringField;
    GerCepSIGUFE: TStringField;
    GerCepCODCEP: TStringField;
    GerCepCODLOC: TStringField;
    CepLoc: TwwQuery;
    CepLocNOMLOC: TStringField;
    quSql: TwwQuery;
    DsLoc: TwwDataSource;
    PaintBox: TPaintBox;
    Label1: TLabel;
    Bevel1: TBevel;
    Label8: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    EdUfeCep: TdxColorPickEdit;
    EdCidCep: TdxColorLookupEdit;
    EdEndCep: TdxColorEdit;
    EdCodTit: TdxColorPickEdit;
    bbPesquisa: TBitBtn;
    Rgbusca: TRadioGroup;
    Label3: TLabel;
    Bevel2: TBevel;
    Panel3: TPanel;
    Image1: TImage;
    Bevel4: TBevel;
    grPesquisa: ThGrid;
    Label21: TLabel;
    Label5: TLabel;
    procedure bbPesquisaClick(Sender: TObject);
    procedure grPesquisaDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1DblClick(Sender: TObject);
  private
  public
    sBase,sFiltro,sOrdem,sCepCli,sTenCli,sEndCli,sBaiCli,sCidCli,sUfeCli: String;
  end;

var
  fmPsqCep: TfmPsqCep;

implementation

uses ShellAPI, BbMensag, ManGDB;

{$R *.DFM}

procedure TfmPsqCep.bbPesquisaClick(Sender: TObject);
var
AbrTit : string;
begin

  AbrTit  := '';
  sFiltro := '';

  if Trim( EdCodTit.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select AbrTit From CepTit '+
                  ' Where NomTit = '''+EdCodTit.Text+'''';
          Open;

    end;

    AbrTit := quSql.FieldbyName('AbrTit').AsString;

  end;

  if Trim( EdUfeCep.Text ) <> '' then sFiltro := ' Where SigUfe = ''' + EdUfeCep.Text + '''';

  if Trim( AbrTit ) <> '' then begin
     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where TipCep = '''+ AbrTit +''''
     else
        sFiltro := sFiltro + ' and TipCep = '''+ AbrTit +'''';
  end;

  if Trim( EdCidCep.Text ) <> '' then begin
     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where CidCep = '''+ EdCidCep.Text +''''
     else
        sFiltro := sFiltro + ' and CidCep = '''+ EdCidCep.Text +'''';
  end;

  if Rgbusca.ItemIndex = 0 then begin

     if Trim( EdEndCep.Text ) <> '' then begin
        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where EndCep LIKE '''+ EdEndCep.Text +'%'''
        else
           sFiltro := sFiltro + ' and EndCep LIKE '''+ EdEndCep.Text +'%''';
     end;

     end
  else
     begin

     if Trim( EdEndCep.Text ) <> '' then begin
        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where EndCep LIKE ''%'+ EdEndCep.Text +'%'''
        else
           sFiltro := sFiltro + ' and EndCep LIKE ''%'+ EdEndCep.Text +'%''';
     end;
  end;

  with GerCep,SQL do begin

       Close;
       Text := sBase + sFiltro;
       Open;

       if EOF then
          fMsgErro('Nenhum Cep Encontrado',EdCodTit);
  end;
end;

procedure TfmPsqCep.grPesquisaDblClick(Sender: TObject);
begin

  sCepCli := GerCep.FieldByName('NumCep').AsString;
  sTenCli := GerCep.FieldByName('TipCep').AsString;
  sEndCli := GerCep.FieldByName('EndCep').AsString;
  sBaiCli := GerCep.FieldByName('BaiCep').AsString;
  sCidCli := GerCep.FieldByName('CidCep').AsString;
  sUfeCli := GerCep.FieldByName('SigUfe').AsString;

  close;

end;

procedure TfmPsqCep.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then close;

 {if key = 13 then begin

     sCepCli := GerCep.FieldByName('NumCep').AsString;
     sTenCli := GerCep.FieldByName('TipCep').AsString;
     sEndCli := GerCep.FieldByName('EndCep').AsString;
     sBaiCli := GerCep.FieldByName('BaiCep').AsString;
     sCidCli := GerCep.FieldByName('CidCep').AsString;
     sUfeCli := GerCep.FieldByName('SigUfe').AsString;

     close;

  end;}

  if key = 33 then GerCep.MoveBy(-10); {Page Up}
  if key = 34 then GerCep.MoveBy(10);  {Page Down}

end;

procedure TfmPsqCep.FormShow(Sender: TObject);
begin
  inherited;
  
  EdCodTit.Text := 'RUA';

  EdUfeCep.Text := GUfeEmp;

  EdCidCep.LookupkeyValue := GCidEmp;

  EdCodTit.SetFocus;

end;

procedure TfmPsqCep.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select * From GerCep ';
end;

procedure TfmPsqCep.Image1DblClick(Sender: TObject);
var
pagina : string;
begin
  inherited;

  pagina := 'http://www.correios.com.br/servicos/cep/cep_default.cfm';

  ShellExecute(0, Nil, PChar(pagina), Nil, Nil, sw_Normal);

end;

end.
