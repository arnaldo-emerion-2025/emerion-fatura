unit ManRef;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, Buttons, dxCntner, dxEditor, dxEdLib, StdCtrls,
  dxExEdtr, Db, DBTables, Wwquery, dxDBELib, dxColorPickEdit,
  dxColorCurrencyEdit, dxColorEdit;

type
  TfmManRef = class(TfmPadrao)
    bConfirmar: TBitBtn;
    bFechar: TBitBtn;
    PaintBox: TPaintBox;
    quSql: TwwQuery;
    Label37: TLabel;
    EdPsqCodCat: TdxColorEdit;
    bPsqCat: TSpeedButton;
    EdPsqNomCat: TdxColorEdit;
    Label13: TLabel;
    EdPsqVcrIte: TdxColorCurrencyEdit;
    procedure PaintBoxPaint(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure EdPsqCodCatExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqCodCatKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodCatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManRef: TfmManRef;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, ManGDB, AuxIni;

{$R *.DFM}

procedure TfmManRef.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManRef.bFecharClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfmManRef.bConfirmarClick(Sender: TObject);
var
SeqError : integer;
sFiltro  : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     ActiveControl := nil;

     if Trim( EdPsqCodCat.Text ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPsqCodCat);

     if EdPsqVcrIte.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPsqVcrIte);

     sFiltro := ' Where Exists(Select * From EstPro Where EstPro.CodClp = EstIte.CodClp'+
                '                                     and EstPro.CodGru = EstIte.CodGru'+
                '                                     and EstPro.CodSub = EstIte.CodSub'+
                '                                     and EstPro.CodPro = EstIte.CodPro'+
                '                                     and EstPro.CodCat = '+ QuotedStr(EdPsqCodCat.Text) + ')';
  
     if fMsg('Atenção !' +#10+ 'Alterações Globais costumam ser MUITO DEMORADAS.' +#10+ 'Disso Depende a velocidade e a Memoria do seu Servidor, quanto maior for a Seleção de Itens, mais Tende a Demorar.' +#10+ 'Tem Certeza que Deseja Realizar esta Operação ?','S') then begin

        if fmManGDB.dbMain.InTransaction then fmManGDB.dbMain.Rollback;
     
        fmManGDB.dbMain.StartTransaction;

        try

           with quSQL,SQL do begin

                Close;
                Text := ' Update EstIte Set VcrIte = Round(ValImp * :ValorCotacao,4),FlgTrg = :FlgTrg'+ sFiltro;

                with Params do begin

                     Params[0].AsFloat  := EdPsqVcrIte.Value;
                     Params[1].AsString := '*';

                end;

                ExecSQL;

           end;

           fmManGDB.dbMain.Commit;

           SeqError := 1;

        except

           fmManGDB.dbMain.Rollback;

           EdPsqCodCat.SetFocus;

        end;

        if SeqError = 1 then begin

           fMsg('Operação Realizada com Sucesso.','I');

           EdPsqCodCat.Clear;
           EdPsqNomCat.Clear;

           EdPsqVcrIte.Value := 0;

           end
        else
           fMsg('Operação não Realizada. Comunique ao Administrador do Sistema.','E');

        EdPsqCodCat.SetFocus;

     end;

     end
  else
     fmsgErro(GMensagem,Nil);

end;

procedure TfmManRef.EdPsqCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCat.Text ) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomCat From EstCat Where CodCat = '''+ EdPsqCodCat.Text +'''';
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomCat').AsString ) <> '' then
        EdPsqNomCat.Text := quSql.FieldByName('NomCat').AsString
     else
        fmsgErro('Categoria Informada não Encontrada.',EdPsqCodCat);

     end
  else
     EdPsqNomCat.Text := 'TODAS';
end;

procedure TfmManRef.bPsqCatClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Categoria';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCat > 0 then begin

        EdPsqNomCat.Text := fmAuxIni.NomCat;
        EdPsqCodCat.Text := IntToStr( fmAuxIni.CodCat );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqCodCat.SetFocus;

end;

procedure TfmManRef.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodCat.SetFocus;
end;

procedure TfmManRef.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManRef.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManRef := Nil;
end;

procedure TfmManRef.EdPsqCodCatKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManRef.EdPsqCodCatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Categoria';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCat > 0 then begin

           EdPsqNomCat.Text := fmAuxIni.NomCat;
           EdPsqCodCat.Text := IntToStr( fmAuxIni.CodCat );

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqCodCat.SetFocus;

  end;
end;

end.
