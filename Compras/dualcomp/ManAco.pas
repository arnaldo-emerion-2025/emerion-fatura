unit ManAco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, Buttons, dxCntner, dxEditor, dxEdLib, StdCtrls,
  dxExEdtr, Db, DBTables, Wwquery, dxColorCurrencyEdit, dxColorEdit;

type
  TfmManAco = class(TfmPadrao)
    Label5: TLabel;
    Label6: TLabel;
    EdCodPfo: TdxColorEdit;
    EdCodFor: TdxColorEdit;
    bPsqFor: TSpeedButton;
    EdNomFor: TdxColorEdit;
    BbConf: TBitBtn;
    BbCanc: TBitBtn;
    quSql: TwwQuery;
    PaintBox: TPaintBox;
    Label13: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label26: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    EdCodGFo: TdxColorEdit;
    bPsqGFo: TSpeedButton;
    EdNomGFo: TdxColorEdit;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label3: TLabel;
    EdCodPro: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    bPsqClp: TSpeedButton;
    bPsqGru: TSpeedButton;
    bPsqSub: TSpeedButton;
    bPsqPro: TSpeedButton;
    EdNomPro: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    Label4: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EdCodAtu: TdxColorEdit;
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodForKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodForExit(Sender: TObject);
    procedure bPsqForClick(Sender: TObject);
    procedure BbConfClick(Sender: TObject);
    procedure BbCancClick(Sender: TObject);
    procedure LimpaControls;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bPsqGFoClick(Sender: TObject);
    procedure EdCodGFoExit(Sender: TObject);
    procedure bPsqClpClick(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManAco: TfmManAco;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, ManGDB, PsqFor, AuxIni,
     AuxPsq, PsqGfo;

{$R *.DFM}

procedure TfmManAco.LimpaControls;
var
i : integer;
begin;
  for i := 0 to ComponentCount - 1 do begin

      if Components[i] is TdxColorEdit then (Components[i] as TdxColorEdit).Text := '';

      if Components[i] is TdxColorCurrencyEdit then (Components[i] as TdxColorCurrencyEdit).Value := 0;

  end;
end;

procedure TfmManAco.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManAco.EdCodForKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManAco.EdCodForExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodFor.Text ) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := 'Select NomFor From FinFor Where CodFor = '''+ EdCodFor.Text +'''';
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomFor').AsString ) <> '' then
        EdNomFor.Text := quSql.FieldByName('NomFor').AsString
     else
        fmsgErro('Fornecedor Informado não Encontrado.',EdCodFor);
  end;
end;

procedure TfmManAco.bPsqForClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        EdNomFor.Text := fmAuxIni.NomFor;
        EdCodFor.Text := IntToStr(fmAuxIni.CodFor);

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodFor.Text ) <> '' then EdCodPfo.SetFocus;

end;

procedure TfmManAco.BbCancClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfmManAco.BbConfClick(Sender: TObject);
var
sFiltro : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     ActiveControl := nil;

     if Trim( EdCodFor.Text ) = '' then begin

        if Trim( EdCodGFo.Text ) = '' then
           fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodFor);

     end;

     if Trim( EdCodAtu.Text ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodAtu);

     if Trim( EdCodPfo.Text ) = '' then begin

        if (Trim( EdCodClp.Text ) = '') or
           (Trim( EdCodGru.Text ) = '') or
           (Trim( EdCodSub.Text ) = '') or
           (Trim( EdCodPro.Text ) = '') then
           fmsgErro('Digite o Codigo do Item Corretamente.',EdCodClp);

     end;

     sFiltro := '';

     if Trim( EdCodFor.Text ) <> '' then sFiltro := ' Where CmpPfo.CodFor = '+ QuotedStr(EdCodFor.Text);

     if Trim( EdCodGFo.Text ) <> '' then begin

        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where Exists(Select * From FinFor Where FinFor.CodFor = CmpPfo.CodFor and FinFor.CodGFo = '+ QuotedStr(EdCodGFo.Text) + ' )'
        else
           sFiltro := sFiltro + ' and Exists(Select * From FinFor Where FinFor.CodFor = CmpPfo.CodFor and FinFor.CodGFo = '+ QuotedStr(EdCodGFo.Text) + ' )';

     end;

     if Trim( EdCodClp.Text ) <> '' then begin

        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where CmpPfo.CodClp = '+ QuotedStr(EdCodClp.Text)
        else
           sFiltro := sFiltro + ' and CmpPfo.CodClp = '+ QuotedStr(EdCodClp.Text);

     end;
  
     if Trim( EdCodGru.Text ) <> '' then begin

        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where CmpPfo.CodGru = '+ QuotedStr(EdCodGru.Text)
        else
           sFiltro := sFiltro + ' and CmpPfo.CodGru = '+ QuotedStr(EdCodGru.Text);

     end;

     if Trim( EdCodSub.Text ) <> '' then begin

        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where CmpPfo.CodSub = '+ QuotedStr(EdCodSub.Text)
        else
           sFiltro := sFiltro + ' and CmpPfo.CodSub = '+ QuotedStr(EdCodSub.Text);

     end;

     if Trim( EdCodPro.Text ) <> '' then begin

        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where CmpPfo.CodPro = '+ QuotedStr(EdCodPro.Text)
        else
           sFiltro := sFiltro + ' and CmpPfo.CodPro = '+ QuotedStr(EdCodPro.Text);

     end;
  
     if Trim( EdCodPfo.Text ) <> '' then begin
  
        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where CmpPfo.CodPfo = '+ QuotedStr(EdCodPfo.Text)
        else
           sFiltro := sFiltro + ' and CmpPfo.CodPfo = '+ QuotedStr(EdCodPfo.Text);

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Update CmpPfo set CodPfo = :CodPfo '+ sFiltro;

          with Params do begin

               Params[0].AsString := EdCodAtu.Text;

          end;

          ExecSQL;

     end;

     EdCodPfo.Text := '';
     EdCodGru.Text := '';
     EdNomGru.Text := '';
     EdCodSub.Text := '';
     EdNomSub.Text := '';
     EdCodPro.Text := '';
     EdNomPro.Text := '';
     EdCodAtu.Text := '';

     EdCodPfo.SetFocus;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManAco.FormShow(Sender: TObject);
begin
  inherited;

  EdCodClp.Text := '1';

  EdNomClp.Text := 'ACABADO';

  EdCodFor.SetFocus;

end;

procedure TfmManAco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManAco.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManAco := nil;
end;

procedure TfmManAco.bPsqGFoClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGFo := TfmPsqGFo.Create(Self);

     fmPsqGFo.ShowModal;

     if fmPsqGFo.CodGFo > 0 then begin

        EdNomGFo.Text := fmPsqGFo.NomGFo;
        EdCodGFo.Text := IntToStr(fmPsqGFo.CodGFo);

     end;

  finally

     FreeAndNil(fmPsqGFo);

  end;
end;

procedure TfmManAco.EdCodGFoExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGFo.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGFo From FinGFo Where CodGFo = '''+ EdCodGFo.Text +'''';
          Open;

          EdNomGFo.Text := FieldByName('NomGFo').AsString;

     end;

     end
  else
     EdNomGFo.Text := '';
end;

procedure TfmManAco.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Cls';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodClp ) <> '' then begin

        EdCodClp.Text := fmAuxIni.CodClp;
        EdNomClp.Text := fmAuxIni.NomClp;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodClp.Text ) <> '' then EdCodGru.SetFocus;

end;

procedure TfmManAco.bPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;

     fmAuxIni.TipoPesq := 'G';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodGru.Text ) <> '' then EdCodSub.SetFocus;

end;

procedure TfmManAco.bPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;
     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;

     fmAuxIni.TipoPesq := 'S';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodSub ) <> '' then begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;
        EdCodSub.Text := fmAuxIni.CodSub;
        EdNomSub.Text := fmAuxIni.NomSub;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodSub.Text ) <> '' then EdCodPro.SetFocus;

end;

procedure TfmManAco.bPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;
     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;
     if Trim( EdCodSub.Text ) <> '' then fmAuxIni.CodGru := EdCodSub.Text;

     fmAuxIni.TipoPesq := 'I';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodPro ) <> '' then begin

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

  if Trim( EdCodPro.Text ) <> '' then EdCodPfo.SetFocus;

end;

procedure TfmManAco.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp '+
                  ' Where CodClp = '''+ EdCodClp.Text +'''';
          Open;

          EdNomClp.Text := FieldByName('NomClp').AsString

     end;


     end
  else
     EdNomClp.Text := '';
end;

procedure TfmManAco.EdCodClpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Cls';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodClp ) <> '' then begin

           EdCodClp.Text := fmAuxIni.CodClp;
           EdNomClp.Text := fmAuxIni.NomClp;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodClp.Text ) <> '' then EdCodGru.SetFocus;

  end;
end;

procedure TfmManAco.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGru.Text ) <> '' then begin

     EdCodGru.Text := FNumZeros(EdCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru '+
                  ' Where CodGru = '''+ EdCodGru.Text +'''';
          Open;

          EdNomGru.Text := FieldByName('NomGru').AsString

     end;

     end
  else
     EdNomGru.Text := '';
end;

procedure TfmManAco.EdCodGruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxIni.CodGru;
           EdNomGru.Text := fmAuxIni.NomGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodGru.Text ) <> '' then EdCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

            EdCodGru.Text := fmAuxPsq.CodGru;
            EdNomGru.Text := fmAuxPsq.NomGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdCodGru.Text ) <> '' then EdCodSub.SetFocus;

  end;
end;

procedure TfmManAco.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodSub.Text ) <> '' then begin

     EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub '+
                  ' Where CodGru = '''+ EdCodGru.Text +''''+
                  '   and CodSub = '''+ EdCodSub.Text +'''';
          Open;

          EdNomSub.Text := FieldByName('NomSub').AsString

     end;

     end
  else
     EdNomSub.Text := '';
end;

procedure TfmManAco.EdCodSubKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;
        fmAuxIni.CodGru := EdCodGru.Text;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxIni.CodGru;
           EdNomGru.Text := fmAuxIni.NomGru;
           EdCodSub.Text := fmAuxIni.CodSub;
           EdNomSub.Text := fmAuxIni.NomSub;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodSub.Text ) <> '' then EdCodPro.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;
        fmAuxPsq.CodGru := EdCodGru.Text;

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxPsq.CodGru;
           EdNomGru.Text := fmAuxPsq.NomGru;
           EdCodSub.Text := fmAuxPsq.CodSub;
           EdNomSub.Text := fmAuxPsq.NomSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdCodSub.Text ) <> '' then EdCodPro.SetFocus;

  end;
end;

procedure TfmManAco.EdCodProExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodPro.Text ) <> '' then begin

     EdCodPro.Text := FNumStrZero(EdCodPro.Text);

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPro From EstPro '+
                  ' Where CodClp = :CodClp'+
                  '   and CodGru = :CodGru'+
                  '   and CodSub = :CodSub'+
                  '   and CodPro = :CodPro';

          with Params do begin

               Params[0].AsString := EdCodClp.Text;
               Params[1].AsString := EdCodGru.Text;
               Params[2].AsString := EdCodSub.Text;
               Params[3].AsString := EdCodPro.Text;

          end;

          Open;

          EdNomPro.Text := FieldByName('DscPro').AsString;

     end;

     end
  else
     EdNomPro.Text := '';
end;

procedure TfmManAco.EdCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;
        fmAuxIni.CodGru := EdCodGru.Text;
        fmAuxIni.CodSub := EdCodSub.Text;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

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

     if Trim( EdCodPro.Text ) <> '' then EdCodPfo.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;
        fmAuxPsq.CodGru := EdCodGru.Text;
        fmAuxPsq.CodSub := EdCodSub.Text;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdCodClp.Text := fmAuxPsq.CodClp;
           EdNomClp.Text := fmAuxPsq.NomClp;
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

     if Trim( EdCodPro.Text ) <> '' then EdCodPfo.SetFocus;

  end;
end;

end.
