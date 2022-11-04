unit AuxCod;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, Buttons, Db, DBTables,
  FShowPadrao, Wwquery, dxColorEdit;

type
  TfmAuxCod = class(TfmShowPadrao)
    quSql: TwwQuery;
    PaintBox: TPaintBox;
    Label3: TLabel;
    EdCodClp: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodPro: TdxColorEdit;
    BbSair: TBitBtn;
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BbSairClick(Sender: TObject);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sCodClp,sCodGru,sCodSub,sCodPro,sSimpro : string;
  end;

var
  fmAuxCod: TfmAuxCod;

implementation

uses dxDemoUtils, Bbgeral, BbMensag, ManGDB, PsqClp, AuxIni;

{$R *.DFM}

procedure TfmAuxCod.EdCodGruExit(Sender: TObject);
var
saida : boolean;
begin
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodClp.Focused) then
        saida := False
     else
        saida := True;

     if Saida then begin

        if Trim( EdCodGru.Text ) <> '' then begin

           EdCodGru.Text := FNumZeros(EdCodGru.Text,3);

           with quSql,SQL do begin

                Close;
                Text := ' Select Count(*) as Reg From EstGru'+
                        ' Where CodGru = '''+EdCodGru.Text+'''';
                Open;

           end;

           if quSql.FieldbyName('Reg').AsInteger = 0 then
              fmsgErro('Grupo Informado não Encontrado',EdCodGru);

           end
        else
           fmsgErro('Digite Código do Grupo ou Pressione Esc para Retornar',EdCodGru);
     end;
  end;   
end;

procedure TfmAuxCod.EdCodClpExit(Sender: TObject);
begin
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if Trim( EdCodClp.Text ) <> '' then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as Reg From EstClp'+
                     ' Where CodClp = '''+EdCodClp.Text+'''';
             Open;

        end;

        if quSql.FieldbyName('Reg').AsInteger = 0 then
           fmsgErro('Classificação informada não Encontrada',EdCodClp);

        end
     else
        fmsgErro('Digite Código da Classificação ou Pressione Esc para Retornar',EdCodClp);

     end
  else
     begin

     if Tecla = 'UP' then EdCodClp.SetFocus;

  end;
end;

procedure TfmAuxCod.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then Close;

  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TestaSimilar := 'S';

        fmAuxIni.CodClp := EdCodClp.Text;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then EdCodGru.Text := fmAuxIni.CodGru;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodGru.Text ) <> '' then EdCodSub.SetFocus;

  end;
end;

procedure TfmAuxCod.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then Close;

  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TestaSimilar := 'S';

        fmAuxIni.CodClp := EdCodClp.Text;
        fmAuxIni.CodGru := EdCodGru.Text;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodSub ) <> '' then begin

           EdCodGru.Text := fmAuxIni.CodGru;
           EdCodSub.Text := fmAuxIni.CodSub;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodSub.Text ) <> '' then EdCodPro.SetFocus;
     
  end;
end;

procedure TfmAuxCod.EdCodSubExit(Sender: TObject);
var
saida : boolean;
begin
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodClp.Focused) and (not EdCodGru.Focused) then
        saida := False
     else
        saida := True;

     if Saida then begin

        if Trim( EdCodSub.Text ) <> '' then begin

           EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

           with quSql,SQL do begin

                Close;
                Text := ' Select Count(*) as Reg From EstSub'+
                        ' Where CodGru = '''+EdCodGru.Text+''''+
                        '   and CodSub = '''+EdCodSub.Text+'''';
                Open;

           end;

           if quSql.FieldbyName('Reg').AsInteger = 0 then
              fmsgErro('Sub-Grupo Informado não Encontrado',EdCodSub);

           end
        else
           fmsgErro('Digite Código do Sub-Grupo ou Pressione Esc para Retornar',EdCodSub);
     end;
  end;
end;

procedure TfmAuxCod.EdCodProExit(Sender: TObject);
var
saida : boolean;
begin
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodClp.Focused) and (not EdCodGru.Focused) and (not EdCodSub.Focused) then
        saida := False
     else
        saida := True;

     if saida then begin

        if Trim( EdCodPro.Text ) <> '' then begin

           EdCodPro.Text := FNumStrZero(EdCodPro.Text);

           with quSql,SQL do begin

                Close;
                Text := ' Select Count(*) as Reg From EstPro'+
                        ' Where CodClp = '''+EdCodClp.Text+''''+
                        '   and CodGru = '''+EdCodGru.Text+''''+
                        '   and CodSub = '''+EdCodSub.Text+''''+
                        '   and CodPro = '''+EdCodPro.Text+'''';
                Open;

           end;

           if quSql.FieldbyName('Reg').AsInteger = 0 then
              fmsgErro('Item Informado não Encontrado',EdCodPro);

           BbSair.SetFocus;

           end
        else
           fmsgErro('Digite Código do Item ou Pressione Esc para Retornar',EdCodPro);
     end;
  end;
end;

procedure TfmAuxCod.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then Close;

  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TestaSimilar := 'S';

        fmAuxIni.CodClp := EdCodClp.Text;
        fmAuxIni.CodGru := EdCodGru.Text;
        fmAuxIni.CodSub := EdCodSub.Text;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodPro ) <> '' then begin

           EdCodClp.Text := fmAuxIni.CodClp;
           EdCodGru.Text := fmAuxIni.CodGru;
           EdCodSub.Text := fmAuxIni.CodSub;
           EdCodPro.Text := fmAuxIni.CodPro;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodPro.Text ) <> '' then EdCodPro.OnExit(Sender);

  end;
end;

procedure TfmAuxCod.BbSairClick(Sender: TObject);
begin

  sCodClp := '';
  sCodGru := '';
  sCodSub := '';
  sCodPro := '';
  sSimpro := '';

  with quSql,SQL do begin

       Close;
       Text := ' Select * From EstPro'+
               ' Where CodClp = '''+EdCodClp.Text+''''+
               '   and CodGru = '''+EdCodGru.Text+''''+
               '   and CodSub = '''+EdCodSub.Text+''''+
               '   and CodPro = '''+EdCodPro.Text+'''';
       Open;

  end;

  if Trim( quSql.FieldbyName('SimPro').AsString ) <> '' then begin

     sCodClp := EdCodClp.Text;
     sCodGru := EdCodGru.Text;
     sCodSub := EdCodSub.Text;
     sCodPro := EdCodPro.Text;
     sSimpro := quSql.FieldbyName('SimPro').AsString;

     Close;
     
     end
  else
     fmsgErro('Item não Possui Similaridade.',EdCodPro);

end;

procedure TfmAuxCod.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 27 then Close;

  if key = 112 then begin {f1 - Iniciais}

     try

        fmPsqClp := TfmPsqClp.Create(Self);

        with fmPsqClp.EstClp,SQL do begin

             Close;
             Text := ' Select * From EstClp'+
                     ' where Exists(Select * From EstPro Where CodClp = EstClp.CodClp'+
                     '                                     and SimPro is not null)'+
                     ' Order by NomClp ';
             Open;

        end;

        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then EdCodClp.Text := fmPsqClp.CodClp;

     finally   

        FreeAndNil(fmPsqClp);

     end;

     if Trim( EdCodClp.Text ) <> '' then EdCodGru.SetFocus;

  end;
end;

procedure TfmAuxCod.FormShow(Sender: TObject);
begin
  inherited;
  EdCodClp.SetFocus;
end;

procedure TfmAuxCod.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
