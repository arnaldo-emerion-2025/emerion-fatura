unit PsqCba;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, Buttons, Db, DBTables,
  Wwquery, dxColorEdit;

type
  TfmPsqCba = class(TForm)
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
    procedure EdCbaProKeyPress(Sender: TObject; var Key: Char);
    procedure bPesquisarClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sCodCat,sCodTip,sCodMrc : string;
    sCodClp,sCodGru,sCodSub,sCodPro : string;
  end;

var
  fmPsqCba: TfmPsqCba;

implementation

uses dxDemoUtils, Bbgeral, BbMensag, PsqEst, AuxPsq, AuxIni;

{$R *.DFM}

procedure TfmPsqCba.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then Close;

  if (key = 40) or (key = 38) then begin

     if key = 40 then
        Perform(Wm_NextDlgCtl,0,0)
     else
        Perform(Wm_NextDlgCtl,1,0);

     end
  else
     begin

     if key = 13 then Perform(Wm_NextDlgCtl,0,0)

  end;
end;

procedure TfmPsqCba.FormShow(Sender: TObject);
begin
  inherited;
  EdCbaPro.SetFocus;
end;

procedure TfmPsqCba.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCba.EdCbaProKeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in [ '0'..'9' ] ) and not ( key = ',' ) then key := #0;
end;

procedure TfmPsqCba.bPesquisarClick(Sender: TObject);
begin
  inherited;
  if Trim(EdCbaPro.Text) <> '' then begin
  
     with quSQL,SQL do begin

          Close;
          Text := ' Select EstPro.CodClp,'+
                  '        EstPro.CodGru,'+
                  '        EstPro.CodSub,'+
                  '        EstPro.CodPro,'+
                  '        EstPro.CodCat,'+
                  '        EstPro.CodTip,'+
                  '        EstPro.CodMrc From EstPro Where EstPro.CbaPro = '''+ EdCbaPro.Text +'''';
          Open;

          sCodClp := FieldbyName('CodClp').AsString;
          sCodGru := FieldbyName('CodGru').AsString;
          sCodSub := FieldbyName('CodSub').AsString;
          sCodPro := FieldbyName('CodPro').AsString;
          sCodMrc := IntToStr(FieldbyName('CodMrc').AsInteger);
          sCodCat := IntToStr(FieldbyName('CodCat').AsInteger);
          sCodTip := IntToStr(FieldbyName('CodTip').AsInteger);

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
           begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select EstPro.CodCat,'+
                        '        EstPro.CodTip,'+
                        '        EstPro.CodMrc'+
                        ' From EstPro'+
                        ' Where EstPro.CodClp = :CodClp'+
                        '   and EstPro.CodGru = :CodGru'+
                        '   and EstPro.CodSub = :CodSub'+
                        '   and EstPro.CodPro = :CodPro';

                with Params do begin

                     Params[0].AsString := sCodClp;
                     Params[1].AsString := sCodGru;
                     Params[2].AsString := sCodSub;
                     Params[3].AsString := sCodPro;

                end;

                Open;

                sCodMrc := IntToStr(FieldbyName('CodMrc').AsInteger);
                sCodCat := IntToStr(FieldbyName('CodCat').AsInteger);
                sCodTip := IntToStr(FieldbyName('CodTip').AsInteger);

           end;

           close;

        end;
     end;

     end
  else
     fmsgErro('Código de Barras não Informado.',EdCbaPro);   

end;

end.
