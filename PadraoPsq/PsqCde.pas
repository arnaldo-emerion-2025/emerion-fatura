unit PsqCde;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, Buttons, Db, DBTables,
  Wwquery, dxColorEdit, FShowpadrao;

type
  TfmPsqCde = class(TfmShowPadrao)
    quSql: TwwQuery;
    PaintBox: TPaintBox;
    Label4: TLabel;
    EdCodGru: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodPro: TdxColorEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdCodMrc: TdxColorEdit;
    Label5: TLabel;
    EdCodTip: TdxColorEdit;
    Label6: TLabel;
    EdCodCat: TdxColorEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dbNomCat: TdxColorEdit;
    dbNomTip: TdxColorEdit;
    dbNomMrc: TdxColorEdit;
    dbNomGru: TdxColorEdit;
    dbNomSub: TdxColorEdit;
    dbDscPro: TdxColorEdit;
    EdNomCat: TEdit;
    EdNomTip: TEdit;
    EdNomMrc: TEdit;
    EdNomGru: TEdit;
    EdNomSub: TEdit;
    EdDscPro: TEdit;
    bPsqCat: TSpeedButton;
    bPsqTip: TSpeedButton;
    bPsqMrc: TSpeedButton;
    bPsqGru: TSpeedButton;
    bPsqSub: TSpeedButton;
    bPsqPro: TSpeedButton;
    LbText: TLabel;
    Label13: TLabel;
    procedure FormShow(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqCatClick(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodCatExit(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure EdCodProKeyPress(Sender: TObject; var Key: Char);
  private
    {Private declarations}
  public
    {Public declarations}
    sCodCat,sCodTip,sCodMrc,sCodClp,sCodGru,sCodSub,sCodPro : string;
  end;

var
  fmPsqCde: TfmPsqCde;

implementation

uses dxDemoUtils, Bbgeral, BbMensag, AuxPsq, AuxIni;

{$R *.DFM}

procedure TfmPsqCde.EdCodGruExit(Sender: TObject);
begin
  if Trim( EdCodGru.Text ) <> '' then begin

     EdCodGru.Text := FNumZeros(EdCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru Where CodGru = '''+ EdCodGru.Text +'''';
          Open;

          EdNomGru.Text := FieldbyName('NomGru').AsString;

     end;

     end
  else
     EdNomGru.Text := '';
end;

procedure TfmPsqCde.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := '1';

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxIni.CodGru;
           EdNomGru.Text := fmAuxIni.NomGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdCodGru.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( sCodClp ) <> '' then fmAuxPsq.CodClp := sCodClp;
        if Trim( sCodGru ) <> '' then fmAuxPsq.CodGru := sCodGru;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxPsq.CodGru;
           EdNomGru.Text := fmAuxPsq.NomGru;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     EdCodGru.SetFocus;

  end;
end;

procedure TfmPsqCde.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;

        fmAuxIni.CodClp := '1';

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxIni.CodGru;
           EdCodSub.Text := fmAuxIni.CodSub;
           EdNomSub.Text := fmAuxIni.NomSub;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( EdCodGru.Text ) <> '' then fmAuxPsq.CodGru := EdCodGru.Text;

        if Trim( sCodClp ) <> '' then fmAuxPsq.CodClp := sCodClp;
        if Trim( sCodGru ) <> '' then fmAuxPsq.CodGru := sCodGru;
        if Trim( sCodSub ) <> '' then fmAuxPsq.CodSub := sCodSub;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodSub ) <> '' then begin

           EdCodGru.Text := fmAuxPsq.CodGru;
           EdCodSub.Text := fmAuxPsq.CodSub;
           EdNomSub.Text := fmAuxPsq.NomSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdCodSub.SetFocus;

  end;
end;

procedure TfmPsqCde.EdCodSubExit(Sender: TObject);
begin
  if Trim( EdCodSub.Text ) <> '' then begin

     EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub'+
                  ' Where CodGru = '''+EdCodGru.Text+''''+
                  '   and CodSub = '''+EdCodSub.Text+'''';
          Open;

          EdNomSub.Text := FieldbyName('NomSub').AsString;

     end;

     end
  else
     EdNomSub.Text := '';
end;

procedure TfmPsqCde.EdCodProExit(Sender: TObject);
begin
  if Trim( EdCodPro.Text ) <> '' then begin

     EdCodPro.Text := FNumStrZero(EdCodPro.Text);

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPro From EstPro';

          if Trim( sCodClp ) <> '' then
             Text := Text + ' Where EstPro.CodClp = '''+ sCodClp       +''''+
                            '   and EstPro.CodGru = '''+ EdCodGru.Text +''''+
                            '   and EstPro.CodSub = '''+ EdCodSub.Text +''''+
                            '   and EstPro.CodPro = '''+ EdCodPro.Text +''''
          else
             Text := Text + ' Where EstPro.CodGru = '''+ EdCodGru.Text +''''+
                            '   and EstPro.CodSub = '''+ EdCodSub.Text +''''+
                            '   and EstPro.CodPro = '''+ EdCodPro.Text +'''';

          Open;

          EdDscPro.Text := FieldbyName('DscPro').AsString;

     end;

     end
  else
     EdDscPro.Text := '';

  sCodGru := EdCodGru.Text;
  sCodSub := EdCodSub.Text;
  sCodPro := EdCodPro.Text;

end;

procedure TfmPsqCde.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then Close;
end;

procedure TfmPsqCde.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := '1';
        fmAuxIni.CodGru := EdCodGru.Text;
        fmAuxIni.CodSub := EdCodSub.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxIni.CodGru;
           EdCodSub.Text := fmAuxIni.CodSub;
           EdCodPro.Text := fmAuxIni.CodPro;
           EdDscPro.Text := fmAuxIni.DscPro;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodPro.Text ) <> '' then EdCodPro.OnExit(Sender);

  end;

  if key = 113 then begin {F5 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( EdCodGru.Text ) <> '' then fmAuxPsq.CodGru := EdCodGru.Text;
        if Trim( EdCodSub.Text ) <> '' then fmAuxPsq.CodSub := EdCodSub.Text;

        if Trim( sCodClp ) <> '' then fmAuxPsq.CodClp := sCodClp;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxPsq.CodGru;
           EdCodSub.Text := fmAuxPsq.CodSub;
           EdCodPro.Text := fmAuxPsq.CodPro;
           EdDscPro.Text := fmAuxPsq.DscPro;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdCodPro.Text ) <> '' then EdCodPro.OnExit(Sender);

  end;
end;

procedure TfmPsqCde.FormShow(Sender: TObject);
begin
  inherited;
  
  if Trim( sCodCat ) <> '' then begin

     EdCodCat.Enabled := False;

     EdCodCat.Font.Style := [fsBold];

     EdCodCat.Text := sCodCat;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomCat From EstCat Where EstCat.CodCat = '''+ sCodCat +'''';
          Open;

          EdNomCat.Text := FieldbyName('NomCat').AsString;

     end;
  end;

  if Trim( sCodTip ) <> '' then begin

     EdCodTip.Enabled := False;

     EdCodTip.Font.Style := [fsBold];

     EdCodTip.Text := sCodTip;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomTip From EstTip Where EstTip.CodTip = '''+ sCodTip +'''';
          Open;

          EdNomTip.Text := FieldbyName('NomTip').AsString;

     end;
  end;

  if Trim( sCodMrc ) <> '' then begin

     EdCodMrc.Enabled := False;

     EdCodMrc.Font.Style := [fsBold];

     EdCodMrc.Text := sCodMrc;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomMrc From EstMrc Where EstMrc.CodMrc = '''+ sCodMrc +'''';
          Open;

          EdNomMrc.Text := FieldbyName('NomMrc').AsString;

     end;
  end;

  if Trim( sCodGru ) <> '' then begin

     EdCodGru.Enabled := False;

     EdCodGru.Font.Style := [fsBold];

     EdCodGru.Text := sCodGru;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru Where EstGru.CodGru = '''+ sCodGru +'''';
          Open;

          EdNomGru.Text := FieldbyName('NomGru').AsString;

     end;
  end;

  if Trim( sCodSub ) <> '' then begin

     EdCodSub.Enabled := False;

     EdCodSub.Font.Style := [fsBold];

     EdCodSub.Text := sCodSub;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub Where EstSub.CodGru = '''+ sCodGru +''' and EstSub.CodSub = '''+ sCodSub +'''';
          Open;

          EdNomSub.Text := FieldbyName('NomSub').AsString;

     end;
  end;

  if Trim( sCodPro ) <> '' then begin

     EdCodPro.Enabled := False;

     EdCodPro.Font.Style := [fsBold];

     EdCodPro.Text := sCodPro;

     with quSQL,SQL do begin

          Close;
          Text := ' Select DscPro From EstPro Where EstPro.CodGru = '''+ sCodGru +''' and EstPro.CodSub = '''+ sCodSub +''' and EstPro.CodPro = '''+ sCodPro +'''';
          Open;

          EdDscPro.Text := FieldbyName('DscPro').AsString;

     end;
  end;

  if EdCodCat.Enabled then
     EdCodCat.SetFocus
  else
     begin

     if EdCodTip.Enabled then
        EdCodTip.SetFocus
     else
        begin

        if EdCodMrc.Enabled then
           EdCodMrc.SetFocus
        else
           begin

           if EdCodGru.Enabled then
              EdCodGru.SetFocus
           else
              begin

              if EdCodSub.Enabled then
                 EdCodSub.SetFocus
              else
                 begin

                 if EdCodPro.Enabled then EdCodPro.SetFocus;

              end;
           end;
        end;
     end;
  end;
end;

procedure TfmPsqCde.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCde.EdCodGruKeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in [ '0'..'9' ] ) and not ( key = ',' ) then key := #0;
end;

procedure TfmPsqCde.bPsqCatClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Categoria';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCat > 0 then begin

        EdNomCat.Text := fmAuxIni.NomCat;
        EdCodCat.Text := IntToStr( fmAuxIni.CodCat );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdCodCat.SetFocus;

end;

procedure TfmPsqCde.bPsqTipClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );

     fmAuxIni.TipoPesq := 'Tipo';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodTip > 0 then begin

        EdNomTip.Text := fmAuxIni.NomTip;
        EdCodTip.Text := IntToStr( fmAuxIni.CodTip );

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  EdCodTip.SetFocus;

end;

procedure TfmPsqCde.bPsqMrcClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );

     fmAuxIni.TipoPesq := 'Marca';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodMrc > 0 then begin

        EdNomMrc.Text := fmAuxIni.NomMrc;
        EdCodMrc.Text := IntToStr( fmAuxIni.CodMrc );

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  EdCodMrc.SetFocus;

end;

procedure TfmPsqCde.bPsqGruClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := '1';

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

     fmAuxIni.TipoPesq := 'G';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  EdCodGru.SetFocus;

end;

procedure TfmPsqCde.bPsqSubClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;

     fmAuxIni.CodClp := '1';

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

     fmAuxIni.TipoPesq := 'S';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdCodSub.Text := fmAuxIni.CodSub;
        EdNomSub.Text := fmAuxIni.NomSub;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdCodSub.SetFocus;

end;

procedure TfmPsqCde.bPsqProClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := '1';
     fmAuxIni.CodGru := EdCodGru.Text;
     fmAuxIni.CodSub := EdCodSub.Text;

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

     fmAuxIni.TipoPesq := 'I';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdCodSub.Text := fmAuxIni.CodSub;
        EdCodPro.Text := fmAuxIni.CodPro;
        EdDscPro.Text := fmAuxIni.DscPro;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  EdCodPro.SetFocus;

end;

procedure TfmPsqCde.EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Categoria';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCat > 0 then begin

           EdNomCat.Text := fmAuxIni.NomCat;
           EdCodCat.Text := IntToStr(fmAuxIni.CodCat);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdCodCat.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Categoria';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCat > 0 then begin

           EdNomCat.Text := fmAuxPsq.NomCat;
           EdCodCat.Text := IntToStr(fmAuxPsq.CodCat);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     EdCodCat.SetFocus;

  end;
end;

procedure TfmPsqCde.EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Tipo';

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );

        fmAuxIni.ShowModal;

        if fmAuxIni.CodTip > 0 then begin

           EdNomTip.Text := fmAuxIni.NomTip;
           EdCodTip.Text := IntToStr(fmAuxIni.CodTip);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdCodTip.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Tipo';

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodTip > 0 then begin

           EdNomTip.Text := fmAuxPsq.NomTip;
           EdCodTip.Text := IntToStr(fmAuxPsq.CodTip);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     EdCodTip.SetFocus;

  end;
end;

procedure TfmPsqCde.EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Marca';

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );

        fmAuxIni.ShowModal;

        if fmAuxIni.CodMrc > 0 then begin

           EdNomMrc.Text := fmAuxIni.NomMrc;
           EdCodMrc.Text := IntToStr(fmAuxIni.CodMrc);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdCodMrc.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Marca';

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodMrc > 0 then begin

           EdNomMrc.Text := fmAuxPsq.NomMrc;
           EdCodMrc.Text := IntToStr(fmAuxPsq.CodMrc);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     EdCodMrc.SetFocus;

  end;
end;

procedure TfmPsqCde.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCat.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCat From EstCat Where CodCat = '''+ EdCodCat.Text +'''';
          Open;

          EdNomCat.Text := FieldbyName('NomCat').AsString;

     end;

     end
  else
     EdNomCat.Text := '';     
end;

procedure TfmPsqCde.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodTip.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomTip From EstTip Where CodTip = '''+ EdCodTip.Text +'''';
          Open;

          EdNomTip.Text := FieldbyName('NomTip').AsString;

     end;

     end
  else
     EdNomTip.Text := '';
end;

procedure TfmPsqCde.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodMrc.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomMrc From EstMrc Where CodMrc = '''+ EdCodMrc.Text +'''';
          Open;

          EdNomMrc.Text := FieldbyName('NomMrc').AsString;

     end;

     end
  else
     EdNomMrc.Text := '';
end;

procedure TfmPsqCde.EdCodProKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then begin

     if Trim( EdCodPro.Text ) <> '' then begin

        EdCodPro.Text := FNumStrZero(EdCodPro.Text);

        with quSql,SQL do begin

             Close;
             Text := ' Select DscPro From EstPro';

             if Trim( sCodClp ) <> '' then
                Text := Text + ' Where EstPro.CodClp = '''+ sCodClp       +''''+
                               '   and EstPro.CodGru = '''+ EdCodGru.Text +''''+
                               '   and EstPro.CodSub = '''+ EdCodSub.Text +''''+
                               '   and EstPro.CodPro = '''+ EdCodPro.Text +''''
             else
                Text := Text + ' Where EstPro.CodGru = '''+ EdCodGru.Text +''''+
                               '   and EstPro.CodSub = '''+ EdCodSub.Text +''''+
                               '   and EstPro.CodPro = '''+ EdCodPro.Text +'''';

             Open;

             EdDscPro.Text := FieldbyName('DscPro').AsString;

        end;

        end
     else
        EdDscPro.Text := '';

     sCodCat := EdCodCat.Text;
     sCodTip := EdCodTip.Text;
     sCodMrc := EdCodMrc.Text;
     sCodGru := EdCodGru.Text;
     sCodSub := EdCodSub.Text;
     sCodPro := EdCodPro.Text;

     close;

  end;
end;

end.
