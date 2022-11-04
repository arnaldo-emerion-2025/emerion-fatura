unit ManNro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, dxEditor, dxExEdtr, dxEdLib, dxCntner, StdCtrls,
  Buttons, Db, DBTables, Wwquery, dxColorCurrencyEdit, dxColorDateEdit,
  dxColorEdit;

type
  TfmManDsc = class(TfmPadrao)
    PaintBox: TPaintBox;
    Label10: TLabel;
    Label7: TLabel;
    Label21: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    EdCodEmp: TdxColorEdit;
    EdNumCre: TdxColorEdit;
    EdDteCre: TdxColorDateEdit;
    EdNumCrp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    EdNomEmp: TdxColorEdit;
    EdCodBan: TdxColorEdit;
    bPsqBan: TSpeedButton;
    EdNomBan: TdxColorEdit;
    Label3: TLabel;
    EdDteRcr: TdxColorDateEdit;
    EdValRcr: TdxColorCurrencyEdit;
    EdDtlRcr: TdxColorDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BbConf: TBitBtn;
    spProcedure: TStoredProc;
    quSql: TwwQuery;
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bPsqBanClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodBanExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BbConfClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManDsc: TfmManDsc;

implementation

uses dxDemoUtils, Bbmensag, PsqEmp, PsqBan, PsqDte, ManGDB;

{$R *.DFM}

procedure TfmManDsc.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManDsc.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManDsc.bPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdNomEmp.Text := fmPsqEmp.NomEmp;
        EdCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally   

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManDsc.bPsqBanClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqBan := TfmPsqBan.Create(Self);

     fmPsqBan.ShowModal;

     if fmPsqBan.CodBan > 0 then begin

        EdNomBan.Text := fmPsqBan.NomBan;
        EdCodBan.Text := IntToStr(fmPsqBan.CodBan);

     end;

  finally   

     FreeAndNil(fmPsqBan);

  end;
end;

procedure TfmManDsc.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodEmp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomEmp From GerEmp Where CodEmp = '''+ EdCodEmp.Text +'''';
          Open;

          EdNomEmp.Text := quSql.FieldByName('NomEmp').AsString;

     end;

     if Trim( quSQL.FieldbyName('NomEmp').AsString ) = '' then fmsgErro('Empresa Informada não Encontrada.',EdCodEmp);

     end
  else
     EdNomEmp.Text := '';
end;

procedure TfmManDsc.EdCodBanExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodBan.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomBan From FinBan Where CodBan = '''+ EdCodBan.Text +'''';
          Open;

          EdNomBan.Text := quSql.FieldByName('NomBan').AsString;

     end;

     if Trim( quSQL.FieldbyName('NomBan').AsString ) = '' then fmsgErro('Banco Informado não Encontrado.',EdCodBan);

     end
  else
     EdNomBan.Text := '';
end;

procedure TfmManDsc.FormShow(Sender: TObject);
begin
  inherited;
  EdCodEmp.SetFocus;
end;

procedure TfmManDsc.SpeedButton2Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqDte := TfmPsqDte.Create(Self);

     fmPsqDte.FinCre.Close;

     if Trim( EdCodEmp.Text ) <> '' then
        fmPsqDte.FinCre.Params[0].AsInteger := StrToInt( EdCodEmp.Text )
     else
        fmPsqDte.FinCre.Params[0].AsInteger := 0;

     if Trim( EdNumCre.Text ) <> '' then
        fmPsqDte.FinCre.Params[1].AsFloat := StrToFloat( EdNumCre.Text )
     else
        fmPsqDte.FinCre.Params[1].AsFloat := 0;

     fmPsqDte.FinCre.Open;

     fmPsqDte.ShowModal;

     if fmPsqDte.DteCre > 0 then EdDteCre.Date := fmPsqDte.DteCre;

  finally   

     FreeAndNil(fmPsqDte);

  end;
end;

procedure TfmManDsc.BbConfClick(Sender: TObject);
var
retorno : integer;
begin
  inherited;
  if fMsg('Confirma Lançamento ?','O') then begin

     fmManGDB.dbMain.StartTransaction;

     with spProcedure do begin

          ParamByName('CODEMP').AsInteger  := StrToInt(EdCodEmp.Text);
          ParamByName('NUMCRE').AsFloat    := StrToFloat(EdNumCre.Text);
          ParamByName('DTECRE').AsDateTime := EdDteCre.Date;
          ParamByName('NUMCRP').AsInteger  := StrToInt(EdNumCrp.Text);
          ParamByName('CODBAN').AsInteger  := StrToInt(EdCodBan.Text);
          ParamByName('DTERCR').AsDateTime := EdDteRcr.Date;
          ParamByName('VALRCR').AsFloat    := EdValRcr.Value;
          ParamByName('DTLRCR').AsDateTime := EdDtlRcr.Date;

          Close;
          Prepare;
          ExecProc;
          Unprepare;

          if ParamByName('RETORNO').Value <> null then begin

             retorno := ParamByName('RETORNO').Value;

             fmManGDB.dbMain.Commit

             end
          else
             fmManGDB.dbMain.Rollback;

     end;

     if retorno > 0 then EdCodEmp.SetFocus;
     
  end;
end;

procedure TfmManDsc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManDsc.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManDsc := Nil;
end;

end.
