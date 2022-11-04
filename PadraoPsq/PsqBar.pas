unit PsqBar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, Buttons, Db, DBTables,
  Wwquery, dxColorEdit;

type
  TfmPsqBar = class(TForm)
    PaintBox: TPaintBox;
    Label6: TLabel;
    EdCbaPro: TdxColorEdit;
    Label7: TLabel;
    Label13: TLabel;
    bPesquisar: TButton;
    quSql: TwwQuery;
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bPesquisarClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sCodCat,sCodTip,sCodMrc,sCodClp,sCodGru,sCodSub,sCodPro : string;
  end;

var
  fmPsqBar: TfmPsqBar;

implementation

uses dxDemoUtils, Bbgeral, BbMensag;

{$R *.DFM}

procedure TfmPsqBar.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then Close;
end;

procedure TfmPsqBar.FormShow(Sender: TObject);
begin
  inherited;
  
  sCodClp := '';
  sCodGru := '';
  sCodSub := '';
  sCodPro := '';

  EdCbaPro.SetFocus;

end;

procedure TfmPsqBar.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqBar.bPesquisarClick(Sender: TObject);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstPro.CodClp,'+
               '        EstPro.CodGru,'+
               '        EstPro.CodSub,'+
               '        EstPro.CodPro From EstPro Where EstPro.CbaPro = '''+ EdCbaPro.Text +'''';
       Open;

       sCodClp := FieldbyName('CodClp').AsString;
       sCodGru := FieldbyName('CodGru').AsString;
       sCodSub := FieldbyName('CodSub').AsString;
       sCodPro := FieldbyName('CodPro').AsString;

  end;

  if Trim(sCodPro) = '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstBar.CodClp,'+
                  '        EstBar.CodGru,'+
                  '        EstBar.CodSub,'+
                  '        EstBar.CodPro From EstBar Where EstBar.CodBar = '''+ EdCbaPro.Text +'''';
          Open;

          sCodClp := FieldbyName('CodClp').AsString;
          sCodGru := FieldbyName('CodGru').AsString;
          sCodSub := FieldbyName('CodSub').AsString;
          sCodPro := FieldbyName('CodPro').AsString;
          
     end;

     if Trim(sCodPro) = '' then
        fmsgErro('Codigo de Barras não Localizado.',EdCbaPro)
     else
        Close;   

     end
  else
     Close;

end;

end.
