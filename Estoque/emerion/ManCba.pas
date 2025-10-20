unit ManCba;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, Buttons, dxCntner, dxEditor, dxEdLib, StdCtrls,
  dxExEdtr, Db, DBTables, Wwquery, AlignEdit, dxColorCurrencyEdit,
  dxColorEdit;

type
  TfmManCba = class(TfmPadrao)
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    EdPsqCodPro: TdxColorEdit;
    EdPsqCodSub: TdxColorEdit;
    EdPsqCodGru: TdxColorEdit;
    EdPsqCodClp: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqClp: TSpeedButton;
    bPsqGru: TSpeedButton;
    bPsqSub: TSpeedButton;
    bPsqPro: TSpeedButton;
    EdPsqNomPro: TdxColorEdit;
    EdPsqNomSub: TdxColorEdit;
    EdPsqNomGru: TdxColorEdit;
    EdPsqNomClp: TdxColorEdit;
    EdPsqNomEmp: TdxColorEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    Label27: TLabel;
    EdVb1Ite: TdxColorCurrencyEdit;
    Label29: TLabel;
    EdVb2Ite: TdxColorCurrencyEdit;
    Label31: TLabel;
    EdVb3Ite: TdxColorCurrencyEdit;
    EdVb5Ite: TdxColorCurrencyEdit;
    EdVb4Ite: TdxColorCurrencyEdit;
    Label35: TLabel;
    Label36: TLabel;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    PaintBox: TPaintBox;
    quSql: TwwQuery;
    Label7: TLabel;
    EdPsqCodBar: TdxColorEdit;
    pnVb1Ite: TAlignEdit;
    pnVb2Ite: TAlignEdit;
    pnVb3Ite: TAlignEdit;
    pnVb4Ite: TAlignEdit;
    pnVb5Ite: TAlignEdit;
    Label8: TLabel;
    EdQtdBar: TdxColorEdit;
    rgImprimir: TRadioGroup;
    dxCheckEdit1: TdxCheckEdit;
    Label9: TLabel;
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure EdPsqCodClpExit(Sender: TObject);
    procedure bPsqClpClick(Sender: TObject);
    procedure EdPsqCodGruExit(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure EdPsqCodSubExit(Sender: TObject);
    procedure EdPsqCodProExit(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqCodBarExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManCba: TfmManCba;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, PsqEmp, PsqClp, ManGDB, AuxIni;

{$R *.DFM}

procedure TfmManCba.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCba.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManCba.EdPsqCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select FLGDEL,SEQIMP from GerPar';
          Open;

          if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

             GFlgAce := 'Sim';

             if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

             end
          else
             begin

             GEmpLog := 0;
             GFlgAce := 'Nao';

          end;
     end;

     with quSql,SQL do begin

          Close;
          Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('NomEmp').AsString ) <> '' then
             EdPsqNomEmp.Text := FieldByName('NomEmp').AsString
          else
             begin

             EdPsqNomEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio.',EdPsqCodEmp);
end;

procedure TfmManCba.bPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;

  if Trim( EdPsqCodEmp.Text ) <> '' then EdPsqCodBar.SetFocus;

end;

procedure TfmManCba.EdPsqCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp '+
                  ' Where CodClp = '''+ EdPsqCodClp.Text +'''';
          Open;


     end;

     if Trim( quSQL.FieldbyName('NomClp').AsString ) <> '' then
        EdPsqNomClp.Text := quSql.FieldByName('NomClp').AsString
     else
        fmsgErro('Classificação Informada não Encontrada.',EdPsqCodClp);

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio.',EdPsqCodClp);
end;

procedure TfmManCba.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Cls';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodClp ) <> '' then begin

        EdPsqCodClp.Text := fmAuxIni.CodClp;
        EdPsqNomClp.Text := fmAuxIni.NomClp;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodClp.Text ) <> '' then EdPsqCodGru.SetFocus;

end;

procedure TfmManCba.EdPsqCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGru.Text ) <> '' then begin

     EdPsqCodGru.Text := FNumZeros(EdPsqCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru '+
                  ' Where CodGru = '''+ EdPsqCodGru.Text +'''';
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomGru').AsString ) <> '' then
        EdPsqNomGru.Text := quSql.FieldByName('NomGru').AsString
     else
        fmsgErro('Grupo Informado não Encontrado.',EdPsqCodGru);

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio.',EdPsqCodGru);
     
end;

procedure TfmManCba.bPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;

     fmAuxIni.TipoPesq := 'G';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdPsqCodGru.Text ) <> '' then EdPsqCodSub.SetFocus;

end;

procedure TfmManCba.EdPsqCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodSub.Text ) <> '' then begin

     EdPsqCodSub.Text := FNumZeros(EdPsqCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub '+
                  ' Where CodGru = '''+ EdPsqCodGru.Text +''''+
                  '   and CodSub = '''+ EdPsqCodSub.Text +'''';
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomSub').AsString ) <> '' then
        EdPsqNomSub.Text := quSql.FieldByName('NomSub').AsString
     else
        fmsgErro('SubGrupo Informado não Encontrado.',EdPsqCodSub);

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio.',EdPsqCodSub);

end;

procedure TfmManCba.bPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;
     if Trim( EdPsqCodGru.Text ) <> '' then fmAuxIni.CodGru := EdPsqCodGru.Text;

     fmAuxIni.TipoPesq := 'S';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodSub ) <> '' then begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;
        EdPsqCodSub.Text := fmAuxIni.CodSub;
        EdPsqNomSub.Text := fmAuxIni.NomSub;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdPsqCodSub.Text ) <> '' then EdPsqCodPro.SetFocus;

end;

procedure TfmManCba.EdPsqCodProExit(Sender: TObject);
var
  PerIpi : real;
  CodIpi : string;
  TipIpi : string;
begin
  inherited;
  if Trim( EdPsqCodPro.Text ) <> '' then begin

     EdPsqCodPro.Text := FNumStrZero(EdPsqCodPro.Text);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstPro.DscPro,'+
                  '        EstPro.IpiSai,'+
                  '        EstPro.IpiTsd '+
                  ' From EstPro '+
                  ' Where CodClp = :CodClp'+
                  '   and CodGru = :CodGru'+
                  '   and CodSub = :CodSub'+
                  '   and CodPro = :CodPro';

          with Params do begin

               Params[0].AsString := EdPsqCodClp.Text;
               Params[1].AsString := EdPsqCodGru.Text;
               Params[2].AsString := EdPsqCodSub.Text;
               Params[3].AsString := EdPsqCodPro.Text;

          end;

          Open;

     end;

     if Trim( quSQL.FieldbyName('DscPro').AsString ) <> '' then begin

        EdPsqNomPro.Text := quSql.FieldByName('DscPro').AsString;

        CodIpi := quSql.FieldbyName('IpiSai').AsString;
        TipIpi := quSql.FieldbyName('IpiTsd').AsString;

        PerIpi := 0;
                 
        with quSQL,SQL do begin

             Close;
             Text := ' Select EstIpi.TrbIpi,'+
                     '        EstIpi.PerIpi '+
                     ' From EstIpi'+
                     ' Where EstIpi.CodIpi = '+ QuotedStr(CodIpi) +
                     '   and EstIpi.TipIpi = '+ QuotedStr(TipIpi) ;
             Open;

             if FieldbyName('TrbIpi').AsString = 'Sim' then PerIpi := FieldbyName('PerIpi').AsFloat;

        end;
        
        with quSql,SQL do begin

             Close;
             Text := ' Select EstIte.Vb1Ite,'+
                     '        EstIte.Vb2Ite,'+
                     '        EstIte.Vb3Ite,'+
                     '        EstIte.Vb4Ite,'+
                     '        EstIte.Vb5Ite From EstIte '+
                     ' Where EstIte.CodEmp = :CodEmp'+
                     '   and EstIte.CodClp = :CodClp'+
                     '   and EstIte.CodGru = :CodGru'+
                     '   and EstIte.CodSub = :CodSub'+
                     '   and EstIte.CodPro = :CodPro';

             with Params do begin

                  Params[0].AsInteger := StrToInt(EdPsqCodEmp.Text);
                  Params[1].AsString  := EdPsqCodClp.Text;
                  Params[2].AsString  := EdPsqCodGru.Text;
                  Params[3].AsString  := EdPsqCodSub.Text;
                  Params[4].AsString  := EdPsqCodPro.Text;

             end;

             Open;

             if PerIpi > 0 then begin

                pnVb1Ite.Text := FormatFloat('###,###,##0.0000',(FieldByName('Vb1Ite').AsFloat + ((FieldByName('Vb1Ite').AsFloat * PerIpi)/100)));
                pnVb2Ite.Text := FormatFloat('###,###,##0.0000',(FieldByName('Vb2Ite').AsFloat + ((FieldByName('Vb2Ite').AsFloat * PerIpi)/100)));
                pnVb3Ite.Text := FormatFloat('###,###,##0.0000',(FieldByName('Vb3Ite').AsFloat + ((FieldByName('Vb3Ite').AsFloat * PerIpi)/100)));
                pnVb4Ite.Text := FormatFloat('###,###,##0.0000',(FieldByName('Vb4Ite').AsFloat + ((FieldByName('Vb4Ite').AsFloat * PerIpi)/100)));
                pnVb5Ite.Text := FormatFloat('###,###,##0.0000',(FieldByName('Vb5Ite').AsFloat + ((FieldByName('Vb5Ite').AsFloat * PerIpi)/100)));

                end
             else
                begin

                pnVb1Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb1Ite').AsFloat);
                pnVb2Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb2Ite').AsFloat);
                pnVb3Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb3Ite').AsFloat);
                pnVb4Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb4Ite').AsFloat);
                pnVb5Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb5Ite').AsFloat);

             end;

        end;        

        end
     else
        fmsgErro('Item Informado não Encontrado.',EdPsqCodPro);

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio.',EdPsqCodPro);
end;

procedure TfmManCba.bPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;
     if Trim( EdPsqCodGru.Text ) <> '' then fmAuxIni.CodGru := EdPsqCodGru.Text;

     fmAuxIni.TipoPesq := 'I';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodPro ) <> '' then begin

        EdPsqCodClp.Text := fmAuxIni.CodClp;
        EdPsqNomClp.Text := fmAuxIni.NomClp;
        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;
        EdPsqCodSub.Text := fmAuxIni.CodSub;
        EdPsqNomSub.Text := fmAuxIni.NomSub;
        EdPsqCodPro.Text := fmAuxIni.CodPro;
        EdPsqNomPro.Text := fmAuxIni.DscPro;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdPsqCodPro.Text ) <> '' then EdVb1Ite.SetFocus;

end;

procedure TfmManCba.bCancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfmManCba.bConfirmarClick(Sender: TObject);
var
Impr       : TextFile;
i,j        : Integer;
PerIpi     : real;
CodIpi     : string;
TipIpi     : string;
Descr_Prod : string;
Preco_Prod : string;
Codigo_Bar : string;
Codigo_Pro : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if fMsg('Confirma Impressão de Etiquetas de Código de Barras ?','S') then begin

        ActiveControl := nil;

        if Trim( EdQtdBar.Text ) <> '' then begin

           if Trim( EdQtdBar.Text ) <> '0' then begin

              if Trim( EdPsqCodPro.Text ) <> '' then begin

                 with quSql,SQL do begin

                      Close;
                      Text := ' Select EstPro.CodGru,'+
                              '        EstPro.CodSub,'+
                              '        EstPro.CodPro,'+
                              '        EstPro.DsrPro,'+
                              '        EstPro.IpiSai,'+
                              '        EstPro.IpiTsd '+
                              ' From EstPro '+
                              ' Where EstPro.CodClp = :CodClp'+
                              '   and EstPro.CodGru = :CodGru'+
                              '   and EstPro.CodSub = :CodSub'+
                              '   and EstPro.CodPro = :CodPro';

                      with Params do begin

                           Params[0].AsString := EdPsqCodClp.Text;
                           Params[1].AsString := EdPsqCodGru.Text;
                           Params[2].AsString := EdPsqCodSub.Text;
                           Params[3].AsString := EdPsqCodPro.Text;

                      end;

                      Open;

                      Descr_Prod := copy(FieldbyName('DsrPro').AsString,1,20);
                   
                      Codigo_Pro := '('+IntToStr(StrToInt(FieldbyName('CodGru').AsString))+ '.' +IntToStr(StrToInt(FieldbyName('CodSub').AsString))+ '.' +fStrToInt(FieldbyName('CodPro').AsString)+')';

                      CodIpi := FieldbyName('IpiSai').AsString;
                      TipIpi := FieldbyName('IpiTsd').AsString;

                 end;

                 PerIpi := 0;
                 
                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstIpi.TrbIpi,'+
                              '        EstIpi.PerIpi '+
                              ' From EstIpi'+
                              ' Where EstIpi.CodIpi = '+ QuotedStr(CodIpi) +
                              '   and EstIpi.TipIpi = '+ QuotedStr(TipIpi) ;
                      Open;

                      if FieldbyName('TrbIpi').AsString = 'Sim' then PerIpi := FieldbyName('PerIpi').AsFloat;

                 end;
                 
                 if Trim( EdPsqCodBar.Text ) <> '' then
                    Codigo_Bar := Trim( EdPsqCodBar.Text )
                 else
                    begin

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select EstBar.CodBar From EstBar '+
                                 ' Where EstBar.CodClp = :CodClp'+
                                 '   and EstBar.CodGru = :CodGru'+
                                 '   and EstBar.CodSub = :CodSub'+
                                 '   and EstBar.CodPro = :CodPro'+
                                 '   and EstBar.FlgInt = :FlgInt';

                         with Params do begin

                              Params[0].AsString := EdPsqCodClp.Text;
                              Params[1].AsString := EdPsqCodGru.Text;
                              Params[2].AsString := EdPsqCodSub.Text;
                              Params[3].AsString := EdPsqCodPro.Text;
                              Params[4].AsString := 'Sim';

                         end;

                         Open;

                         Codigo_Bar := Trim( FieldbyName('CodBar').AsString );

                    end;
                 end;

                 if Trim( Codigo_Bar ) <> '' then begin

                    with quSql,SQL do begin

                         Close;
                         Text := ' Select EstIte.Vb1Ite,'+
                                 '        EstIte.Vb2Ite,'+
                                 '        EstIte.Vb3Ite,'+
                                 '        EstIte.Vb4Ite,'+
                                 '        EstIte.Vb5Ite From EstIte '+
                                 ' Where EstIte.CodEmp = :CodEmp'+
                                 '   and EstIte.CodClp = :CodClp'+
                                 '   and EstIte.CodGru = :CodGru'+
                                 '   and EstIte.CodSub = :CodSub'+
                                 '   and EstIte.CodPro = :CodPro';

                         with Params do begin

                              Params[0].AsInteger := StrToInt(EdPsqCodEmp.Text);
                              Params[1].AsString  := EdPsqCodClp.Text;
                              Params[2].AsString  := EdPsqCodGru.Text;
                              Params[3].AsString  := EdPsqCodSub.Text;
                              Params[4].AsString  := EdPsqCodPro.Text;

                         end;

                         Open;

                         if PerIpi > 0 then begin

                            pnVb1Ite.Text := FormatFloat('###,###,##0.0000',(FieldByName('Vb1Ite').AsFloat + ((FieldByName('Vb1Ite').AsFloat * PerIpi)/100)));
                            pnVb2Ite.Text := FormatFloat('###,###,##0.0000',(FieldByName('Vb2Ite').AsFloat + ((FieldByName('Vb2Ite').AsFloat * PerIpi)/100)));
                            pnVb3Ite.Text := FormatFloat('###,###,##0.0000',(FieldByName('Vb3Ite').AsFloat + ((FieldByName('Vb3Ite').AsFloat * PerIpi)/100)));
                            pnVb4Ite.Text := FormatFloat('###,###,##0.0000',(FieldByName('Vb4Ite').AsFloat + ((FieldByName('Vb4Ite').AsFloat * PerIpi)/100)));
                            pnVb5Ite.Text := FormatFloat('###,###,##0.0000',(FieldByName('Vb5Ite').AsFloat + ((FieldByName('Vb5Ite').AsFloat * PerIpi)/100)));

                            end
                         else
                            begin

                            pnVb1Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb1Ite').AsFloat);
                            pnVb2Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb2Ite').AsFloat);
                            pnVb3Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb3Ite').AsFloat);
                            pnVb4Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb4Ite').AsFloat);
                            pnVb5Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb5Ite').AsFloat);

                         end;   
                    end;

                    if PerIpi > 0 then begin

                       case rgImprimir.Itemindex of
                            0: Preco_Prod := FormatFloat('###,###,##0.0000',(quSQL.FieldByName('Vb1Ite').AsFloat + ((quSQL.FieldByName('Vb1Ite').AsFloat * PerIpi)/100)));
                            1: Preco_Prod := FormatFloat('###,###,##0.0000',(quSQL.FieldByName('Vb2Ite').AsFloat + ((quSQL.FieldByName('Vb2Ite').AsFloat * PerIpi)/100)));
                            2: Preco_Prod := FormatFloat('###,###,##0.0000',(quSQL.FieldByName('Vb3Ite').AsFloat + ((quSQL.FieldByName('Vb3Ite').AsFloat * PerIpi)/100)));
                            3: Preco_Prod := FormatFloat('###,###,##0.0000',(quSQL.FieldByName('Vb4Ite').AsFloat + ((quSQL.FieldByName('Vb4Ite').AsFloat * PerIpi)/100)));
                            4: Preco_Prod := FormatFloat('###,###,##0.0000',(quSQL.FieldByName('Vb5Ite').AsFloat + ((quSQL.FieldByName('Vb5Ite').AsFloat * PerIpi)/100)));
                            5: Preco_Prod := ' ';
                       end;

                       end
                    else
                       begin

                       case rgImprimir.Itemindex of
                            0: Preco_Prod := FormatFloat('###,###,##0.0000',quSQL.FieldByName('Vb1Ite').AsFloat);
                            1: Preco_Prod := FormatFloat('###,###,##0.0000',quSQL.FieldByName('Vb2Ite').AsFloat);
                            2: Preco_Prod := FormatFloat('###,###,##0.0000',quSQL.FieldByName('Vb3Ite').AsFloat);
                            3: Preco_Prod := FormatFloat('###,###,##0.0000',quSQL.FieldByName('Vb4Ite').AsFloat);
                            4: Preco_Prod := FormatFloat('###,###,##0.0000',quSQL.FieldByName('Vb5Ite').AsFloat);
                            5: Preco_Prod := ' ';
                       end;
                    end;
                       
                    Codigo_Pro := Trim( Codigo_Pro )+ ' ' +Trim( Preco_Prod );

                    AssignFile(Impr, 'LPT1');

                    Rewrite(Impr);

                    if dxCheckEdit1.Checked then begin

                       Codigo_Pro := 'Importado por DC';
                       Codigo_Bar := ' ';
                       Descr_Prod := '62.778.048/0001-82';

                    end;
                 
                    i := 1;

                    while i <= StrToInt(EdQtdBar.Text) do begin

                          if i = 1 then i := 3;

                          Writeln(Impr,CHR(02) + 'f220'  + CHR(13));       // Fixo
                          Writeln(Impr,CHR(02) + 'O0220' + CHR(13));       // OFFSE (Offset Borda Etiqueta)
                          Writeln(Impr,CHR(02) + 'L'     + CHR(13));       // Fixo
                          Writeln(Impr,CHR(02) + 'D11'   + CHR(13));       // Tamanho do Pixel.
                          Writeln(Impr,CHR(02) + 'H10'   + CHR(13));       // Calor da Cabeca de ImpressÆo.

                          for j := 1 to 3 do begin

                              if Trim( EdPsqCodEmp.Text ) = '3' then begin

                                 if j = 3 then begin          // 3ª Coluna

                                    //           RT    FT    XH    YV    ALT     LIN      COL
                                    Writeln(Impr,'1' + '2' + '1' + '1' + '000' + '0065' + '0285' + Codigo_Pro + CHR(13));
                                    Writeln(Impr,'1' + 'F' + '2' + '2' + '030' + '0025' + '0285' + Trim(Codigo_Bar) + CHR(13));
                                    Writeln(Impr,'1' + '2' + '1' + '1' + '000' + '0010' + '0285' + copy(Trim(Descr_Prod),1,20) + CHR(13));

                                    // G - EAN  8
                                    // F - EAN 13

                                 end;

                                 if j = 2 then begin         // 2ª Coluna

                                    //           RT    FT    XH    YV    ALT     LIN      COL
                                    Writeln(Impr,'1' + '2' + '1' + '1' + '000' + '0065' + '0148' + Codigo_Pro + CHR(13));
                                    Writeln(Impr,'1' + 'F' + '2' + '2' + '030' + '0025' + '0148' + Trim(Codigo_Bar) + CHR(13));
                                    Writeln(Impr,'1' + '2' + '1' + '1' + '000' + '0010' + '0148' + copy(Trim(Descr_Prod),1,20) + CHR(13));

                                    // G - EAN  8  (FT)
                                    // F - EAN 13  (FT)

                                 end;

                                 if j = 1 then begin         // 1ª Coluna

                                    //           RT    FT    XH    YV    ALT     LIN      COL
                                    Writeln(Impr,'1' + '2' + '1' + '1' + '000' + '0065' + '0014' + Codigo_Pro + CHR(13));
                                    Writeln(Impr,'1' + 'F' + '2' + '2' + '030' + '0025' + '0014' + Trim(Codigo_Bar) + CHR(13));
                                    Writeln(Impr,'1' + '2' + '1' + '1' + '000' + '0010' + '0014' + copy(Trim(Descr_Prod),1,20) + CHR(13));

                                    // G - EAN  8
                                    // F - EAN 13

                                 end;

                                 end
                              else
                                 begin

                                 if j = 3 then begin          // 3ª Coluna

                                    //           RT    FT    XH    YV    ALT     LIN      COL
                                    Writeln(Impr,'1' + '2' + '1' + '1' + '000' + '0065' + '0272' + Codigo_Pro + CHR(13));
                                    Writeln(Impr,'1' + 'F' + '2' + '2' + '030' + '0025' + '0272' + Trim(Codigo_Bar) + CHR(13));
                                    Writeln(Impr,'1' + '2' + '1' + '1' + '000' + '0010' + '0272' + copy(Trim(Descr_Prod),1,20) + CHR(13));

                                    // G - EAN  8
                                    // F - EAN 13

                                 end;

                                 if j = 2 then begin         // 2ª Coluna

                                    //           RT    FT    XH    YV    ALT     LIN      COL
                                    Writeln(Impr,'1' + '2' + '1' + '1' + '000' + '0065' + '0140' + Codigo_Pro + CHR(13));
                                    Writeln(Impr,'1' + 'F' + '2' + '2' + '030' + '0025' + '0140' + Trim(Codigo_Bar) + CHR(13));
                                    Writeln(Impr,'1' + '2' + '1' + '1' + '000' + '0010' + '0140' + copy(Trim(Descr_Prod),1,20) + CHR(13));

                                    // G - EAN  8  (FT)
                                    // F - EAN 13  (FT)

                                 end;

                                 if j = 1 then begin         // 1ª Coluna

                                    //           RT    FT    XH    YV    ALT     LIN      COL
                                    Writeln(Impr,'1' + '2' + '1' + '1' + '000' + '0065' + '0008' + Codigo_Pro + CHR(13));
                                    Writeln(Impr,'1' + 'F' + '2' + '2' + '030' + '0025' + '0008' + Trim(Codigo_Bar) + CHR(13));
                                    Writeln(Impr,'1' + '2' + '1' + '1' + '000' + '0010' + '0008' + copy(Trim(Descr_Prod),1,20) + CHR(13));

                                    // G - EAN  8
                                    // F - EAN 13

                                 end;
                              end;
                          end;

                          Writeln(Impr,'Q' + '0001' + CHR(13));
                          Writeln(Impr,'E' + CHR(13));

                          i := i + 3;
                       
                    end;

                    CloseFile(Impr);

                    end
                 else
                    fmsgErro('Item Informado sem Código de Barras Interno.',EdPsqCodPro);

                 end
              else
                 fmsgErro('Item não Informado para Impressão dos Códigos de Barras.',EdPsqCodPro);

              end
           else
              fmsgErro('Quantidade de Estiquetas a Serem Emitidas não Informada.',EdQtdBar);

           end
        else
           fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdQtdBar);

      end;

      end
   else
      fmsgErro(GMensagem,Nil);
end;

procedure TfmManCba.FormShow(Sender: TObject);
begin
  inherited;

  EdPsqCodClp.Text := '1';

  EdPsqNomClp.Text := 'ACABADO';

  if GEmp_Id > 0 then begin
  
     EdPsqCodEmp.Text := IntToStr(GEmp_Id);

     with quSQL,SQL do begin

          Close;
          Text := ' Select GerEmp.NomEmp From GerEmp Where GerEmp.CodEmp = '''+ IntToStr(GEmp_Id) +'''';
          Open;

          EdPsqNomEmp.Text := FieldbyName('NomEmp').AsString;

     end;

     EdPsqCodBar.SetFocus;

     end
  else
     EdPsqCodEmp.SetFocus;   

end;

procedure TfmManCba.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManCba.FormDestroy(Sender: TObject);
begin
  inherited;

  if Assigned(fmManCba) then begin

     fmManCba.Release;

     fmManCba := Nil;

  end;
end;

procedure TfmManCba.EdPsqCodBarExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodBar.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstBar.CodClp,'+
                  '        EstBar.CodGru,'+
                  '        EstBar.CodSub,'+
                  '        EstBar.CodPro From EstBar Where EstBar.CodBar = '''+ EdPsqCodBar.Text +'''';
          Open;

          EdPsqCodClp.Text := FieldByName('CodClp').AsString;
          EdPsqCodGru.Text := FieldByName('CodGru').AsString;
          EdPsqCodSub.Text := FieldByName('CodSub').AsString;
          EdPsqCodPro.Text := FieldByName('CodPro').AsString;
          
     end;

     if Trim( EdPsqCodPro.Text ) <> '' then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '''+ EdPsqCodClp.Text +'''';
             Open;

             EdPsqNomClp.Text := FieldByName('NomClp').AsString;

        end;

        with quSql,SQL do begin

             Close;
             Text := ' Select EstGru.NomGru From EstGru Where EstGru.CodGru = '''+ EdPsqCodGru.Text +'''';
             Open;

             EdPsqNomGru.Text := quSql.FieldByName('NomGru').AsString;
             
        end; 

        with quSql,SQL do begin

             Close;
             Text := ' Select EstSub.NomSub From EstSub '+
                     ' Where EstSub.CodGru = '''+ EdPsqCodGru.Text +''''+
                     '   and EstSub.CodSub = '''+ EdPsqCodSub.Text +'''';
             Open;
          
             EdPsqNomSub.Text := FieldByName('NomSub').AsString;

        end;

        with quSql,SQL do begin

             Close;
             Text := ' Select EstPro.DscPro From EstPro '+
                     ' Where EstPro.CodClp = :CodClp'+
                     '   and EstPro.CodGru = :CodGru'+
                     '   and EstPro.CodSub = :CodSub'+
                     '   and EstPro.CodPro = :CodPro';

             with Params do begin

                  Params[0].AsString := EdPsqCodClp.Text;
                  Params[1].AsString := EdPsqCodGru.Text;
                  Params[2].AsString := EdPsqCodSub.Text;
                  Params[3].AsString := EdPsqCodPro.Text;

             end;

             Open;

             EdPsqNomPro.Text := FieldByName('DscPro').AsString;
             
        end;

        with quSql,SQL do begin

             Close;
             Text := ' Select EstIte.Vb1Ite,'+
                     '        EstIte.Vb2Ite,'+
                     '        EstIte.Vb3Ite,'+
                     '        EstIte.Vb4Ite,'+
                     '        EstIte.Vb5Ite From EstIte '+
                     ' Where EstIte.CodEmp = :CodEmp'+
                     '   and EstIte.CodClp = :CodClp'+
                     '   and EstIte.CodGru = :CodGru'+
                     '   and EstIte.CodSub = :CodSub'+
                     '   and EstIte.CodPro = :CodPro';

             with Params do begin

                  Params[0].AsInteger := StrToInt(EdPsqCodEmp.Text);
                  Params[1].AsString  := EdPsqCodClp.Text;
                  Params[2].AsString  := EdPsqCodGru.Text;
                  Params[3].AsString  := EdPsqCodSub.Text;
                  Params[4].AsString  := EdPsqCodPro.Text;

             end;

             Open;

             pnVb1Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb1Ite').AsFloat);
             pnVb2Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb2Ite').AsFloat);
             pnVb3Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb3Ite').AsFloat);
             pnVb4Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb4Ite').AsFloat);
             pnVb5Ite.Text := FormatFloat('###,###,##0.0000',FieldByName('Vb5Ite').AsFloat);

        end;

        EdQtdBar.SetFocus;

        end
     else
        fmsgErro('Código de Barras Informado não Encontrado.',EdPsqCodBar);

  end;     
end;

end.
