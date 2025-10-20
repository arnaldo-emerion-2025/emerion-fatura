unit ManApr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, Buttons, dxCntner, dxEditor, dxEdLib, StdCtrls,
  dxExEdtr, Db, DBTables, Wwquery, dxDBELib, dxColorPickEdit,
  dxColorCurrencyEdit, dxColorEdit;

type
  TfmManApr = class(TfmPadrao)
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
    BbPsqEmp: TSpeedButton;
    BbPsqClp: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqSub: TSpeedButton;
    BbPsqPro: TSpeedButton;
    EdPsqNomPro: TdxColorEdit;
    EdPsqNomSub: TdxColorEdit;
    EdPsqNomGru: TdxColorEdit;
    EdPsqNomClp: TdxColorEdit;
    EdPsqNomEmp: TdxColorEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    Label25: TLabel;
    EdPsqCodTip: TdxColorEdit;
    bPsqTip: TSpeedButton;
    EdPsqNomTip: TdxColorEdit;
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
    bFechar: TBitBtn;
    PaintBox: TPaintBox;
    quSql: TwwQuery;
    Label37: TLabel;
    EdPsqCodCat: TdxColorEdit;
    bPsqCat: TSpeedButton;
    EdPsqNomCat: TdxColorEdit;
    Label38: TLabel;
    EdPsqCodMrc: TdxColorEdit;
    bPsqMrc: TSpeedButton;
    EdPsqNomMrc: TdxColorEdit;
    Label13: TLabel;
    EdVcrIte: TdxColorCurrencyEdit;
    Label14: TLabel;
    EdTipVb1: TdxColorPickEdit;
    EdTipVb2: TdxColorPickEdit;
    Label15: TLabel;
    EdTipVb3: TdxColorPickEdit;
    Label16: TLabel;
    EdTipVb4: TdxColorPickEdit;
    Label17: TLabel;
    EdTipVb5: TdxColorPickEdit;
    Label18: TLabel;
    EdTipVcr: TdxColorPickEdit;
    Label19: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label20: TLabel;
    EdOpeVb5: TdxColorPickEdit;
    EdOpeVb4: TdxColorPickEdit;
    EdOpeVb3: TdxColorPickEdit;
    EdOpeVb2: TdxColorPickEdit;
    EdOpeVb1: TdxColorPickEdit;
    EdOpeVcr: TdxColorPickEdit;
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqCodClpExit(Sender: TObject);
    procedure BbPsqClpClick(Sender: TObject);
    procedure EdPsqCodGruExit(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure EdPsqCodSubExit(Sender: TObject);
    procedure EdPsqCodProExit(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdPsqCodTipExit(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure LimpaControls;
    procedure EdPsqCodCatExit(Sender: TObject);
    procedure EdPsqCodMrcExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManApr: TfmManApr;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, PsqEmp, PsqClp, PsqTip, PsqUnd,
     PsqCom, PsqIcm, PsqIpi, PsqStr, ManGDB, AuxIni;

{$R *.DFM}

procedure TfmManApr.LimpaControls;
var
i : integer;
begin;

  for i := 0 to ComponentCount - 1 do begin

      if Components[i] is TdxColorEdit then (Components[i] as TdxColorEdit).Text := '';

      if Components[i] is TdxColorCurrencyEdit then (Components[i] as TdxColorCurrencyEdit).Value := 0;

  end;

  EdPsqCodClp.Text := '1';

  EdPsqNomClp.Text := 'ACABADO';

end;

procedure TfmManApr.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManApr.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManApr.EdPsqCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := 'Select NomEmp From GerEmp Where CodEmp = '''+ EdPsqCodEmp.Text +'''';

          if GFlgAce = 'Sim' then Text := Text + '   and CodFil > '''+ '0' +'''';

          Open;

     end;

     if Trim( quSQL.FieldbyName('NomEmp').AsString ) <> '' then
        EdPsqNomEmp.Text := quSql.FieldByName('NomEmp').AsString
     else
        fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

     end
  else
     EdPsqNomEmp.Text := 'TODAS';
end;

procedure TfmManApr.BbPsqEmpClick(Sender: TObject);
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
  
  if Trim( EdPsqCodEmp.Text ) <> '' then EdPsqCodCat.SetFocus;

end;

procedure TfmManApr.EdPsqCodClpExit(Sender: TObject);
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
     EdPsqNomClp.Text := 'TODAS';
end;

procedure TfmManApr.BbPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );
     if Trim( EdPsqCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdPsqCodTip.Text );
     if Trim( EdPsqCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdPsqCodMrc.Text );

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

procedure TfmManApr.EdPsqCodGruExit(Sender: TObject);
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
     EdPsqNomGru.Text := 'TODOS';
end;

procedure TfmManApr.BbPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );
     if Trim( EdPsqCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdPsqCodTip.Text );
     if Trim( EdPsqCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdPsqCodMrc.Text );
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

procedure TfmManApr.EdPsqCodSubExit(Sender: TObject);
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
     EdPsqNomSub.Text := 'TODOS';
end;

procedure TfmManApr.BbPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;
     if Trim( EdPsqCodGru.Text ) <> '' then fmAuxIni.CodGru := EdPsqCodGru.Text;
     if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );
     if Trim( EdPsqCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdPsqCodTip.Text );
     if Trim( EdPsqCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdPsqCodMrc.Text );

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

procedure TfmManApr.EdPsqCodProExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPro.Text ) <> '' then begin

     EdPsqCodPro.Text := FNumStrZero(EdPsqCodPro.Text);

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPro From EstPro '+
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

     if Trim( quSQL.FieldbyName('DscPro').AsString ) <> '' then
        EdPsqNomPro.Text := quSql.FieldByName('DscPro').AsString
     else
        fmsgErro('Item Informado não Encontrado.',EdPsqCodPro);

     end
  else
     EdPsqNomPro.Text := 'TODOS';
end;

procedure TfmManApr.BbPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;
     if Trim( EdPsqCodGru.Text ) <> '' then fmAuxIni.CodGru := EdPsqCodGru.Text;
     if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );
     if Trim( EdPsqCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdPsqCodTip.Text );
     if Trim( EdPsqCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdPsqCodMrc.Text );

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

procedure TfmManApr.bPsqTipClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );

     fmAuxIni.TipoPesq := 'Tipo';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodTip > 0 then begin

        EdPsqNomTip.Text := fmAuxIni.NomTip;
        EdPsqCodTip.Text := IntToStr( fmAuxIni.CodTip );

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdPsqCodTip.Text ) <> '' then EdPsqCodMrc.SetFocus;

end;

procedure TfmManApr.EdPsqCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodTip.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomTip From EstTip '+
                  ' Where CodTip = '''+EdPsqCodTip.Text+'''';
          Open;


     end;

     if Trim( quSQL.FieldbyName('NomTip').AsString ) <> '' then
        EdPsqNomTip.Text := quSql.FieldByName('NomTip').AsString
     else
        fmsgErro('Tipo Informado não Encontrado.',EdPsqCodTip);

     end
  else
     EdPsqNomTip.Text := 'TODOS';
end;

procedure TfmManApr.bFecharClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfmManApr.bConfirmarClick(Sender: TObject);
var
SeqError : integer;
sUpdate,SeqOpe,sFiltro : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     ActiveControl := nil;

     if Trim( EdPsqCodEmp.Text ) <> '' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FlgFil From GerEmp Where GerEmp.CodEmp = '''+ EdPsqCodEmp.Text +'''';
             Open;

             if FieldbyName('FlgFil').AsString = 'Sim' then fmsgErro('Empresa Informada Esta Incorreta.',EdPsqCodEmp);

        end;
     end; 

     if fMsg('Atenção !' +#10+ 'Alterações Globais costumam ser MUITO DEMORADAS.' +#10+ 'Disso Depende a velocidade e a Memoria do seu Servidor, quanto maior for a Seleção de Itens, mais Tende a Demorar.' +#10+ 'Tem Certeza que Deseja Realizar esta Operação ?','S') then begin

        Randomize;
        SeqOpe := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                  copy(TimeToStr(Time),1,2)+
                  copy(TimeToStr(Time),4,2)+
                  copy(TimeToStr(Time),7,2)+
                  FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
                  FNumZeros(Trim( IntToStr(Random(50000)) ),5);

        sUpdate := ' Update EstIte Set FlgTrg = '''+ '*' +'''';

        if EdVcrIte.Value > 0 then begin

           if EdTipVcr.Text = 'Percentual' then begin

              if EdOpeVcr.Text = 'Acrescimo' then
                 sUpdate := sUpdate + ' ,VcrIte = round(VcrIte + ((VcrIte * '+ fConvertValor( EdVcrIte.Text ) +')/100),4)'
              else
                 sUpdate := sUpdate + ' ,VcrIte = round(VcrIte - ((VcrIte * '+ fConvertValor( EdVcrIte.Text ) +')/100),4)';

              end
           else
              sUpdate := sUpdate + ' ,VcrIte = '''+ fConvertValor( EdVcrIte.Text ) +'''';

        end;

        if EdVb1Ite.Value > 0 then begin

           if EdTipVb1.Text = 'Percentual' then begin

              if EdOpeVb1.Text = 'Acrescimo' then
                 sUpdate := sUpdate + ' ,Vb1Ite = round(Vb1Ite + ((Vb1Ite * '+ fConvertValor( EdVb1Ite.Text ) +')/100),4)'
              else
                 sUpdate := sUpdate + ' ,Vb1Ite = round(Vb1Ite - ((Vb1Ite * '+ fConvertValor( EdVb1Ite.Text ) +')/100),4)';

              end
           else
              sUpdate := sUpdate + ' ,Vb1Ite = '''+ fConvertValor( EdVb1Ite.Text ) +'''';

        end;

        if EdVb2Ite.Value > 0 then begin

           if EdTipVb2.Text = 'Percentual' then begin

              if EdOpeVb2.Text = 'Acrescimo' then
                 sUpdate := sUpdate + ' ,Vb2Ite = round(Vb2Ite + ((Vb2Ite * '+ fConvertValor( EdVb2Ite.Text ) +')/100),4)'
              else
                 sUpdate := sUpdate + ' ,Vb2Ite = round(Vb2Ite - ((Vb2Ite * '+ fConvertValor( EdVb2Ite.Text ) +')/100),4)'

              end
           else
              sUpdate := sUpdate + ' ,Vb2Ite = '''+ fConvertValor( EdVb2Ite.Text ) +'''';

        end;

        if EdVb3Ite.Value > 0 then begin

           if EdTipVb3.Text = 'Percentual' then begin

              if EdOpeVb3.Text = 'Acrescimo' then
                 sUpdate := sUpdate + ' ,Vb3Ite = round(Vb3Ite + ((Vb3Ite * '+ fConvertValor( EdVb3Ite.Text ) +')/100),4)'
              else
                 sUpdate := sUpdate + ' ,Vb3Ite = round(Vb3Ite - ((Vb3Ite * '+ fConvertValor( EdVb3Ite.Text ) +')/100),4)';

              end
           else
              sUpdate := sUpdate + ' ,Vb3Ite = '''+ fConvertValor( EdVb3Ite.Text ) +'''';

        end;

        if EdVb4Ite.Value > 0 then begin

           if EdTipVb4.Text = 'Percentual' then begin

              if EdOpeVb4.Text = 'Acrescimo' then
                 sUpdate := sUpdate + ' ,Vb4Ite = round(Vb4Ite + ((Vb4Ite * '+ fConvertValor( EdVb4Ite.Text ) +')/100),4)'
              else
                 sUpdate := sUpdate + ' ,Vb4Ite = round(Vb4Ite - ((Vb4Ite * '+ fConvertValor( EdVb4Ite.Text ) +')/100),4)';

              end   
           else
              sUpdate := sUpdate + ' ,Vb4Ite = '''+ fConvertValor( EdVb4Ite.Text ) +'''';

        end;

        if EdVb5Ite.Value > 0 then begin

           if EdTipVb5.Text = 'Percentual' then begin

              if EdOpeVb5.Text = 'Acrescimo' then
                 sUpdate := sUpdate + ' ,Vb5Ite = round(Vb5Ite + ((Vb5Ite * '+ fConvertValor( EdVb5Ite.Text ) +')/100),4)'
              else
                 sUpdate := sUpdate + ' ,Vb5Ite = round(Vb5Ite - ((Vb5Ite * '+ fConvertValor( EdVb5Ite.Text ) +')/100),4)';

              end
           else
              sUpdate := sUpdate + ' ,Vb5Ite = '''+ fConvertValor( EdVb5Ite.Text ) +'''';

        end;

        if Pos(',',sUpdate) > 0 then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Insert Into EstApr(DteApr,SeqApr,SeqOpe,HreOpe,CodEmp,CodCat,CodTip,CodMrc,CodClp,CodGru,CodSub,CodPro,'+
                        '                    AtuVcr,TipVcr,AtuVb1,TipVb1,AtuVb2,TipVb2,AtuVb3,TipVb3,AtuVb4,TipVb4,AtuVb5,TipVb5,'+
                        '                    QtdIte,SitApr,CodUsu,OpeVcr,OpeVb1,OpeVb2,OpeVb3,OpeVb4,OpeVb5)'+
                        '             Values(:DteApr,:SeqApr,:SeqOpe,:HreOpe,:CodEmp,:CodCat,:CodTip,:CodMrc,:CodClp,:CodGru,:CodSub,:CodPro,'+
                        '                    :AtuVcr,:TipVcr,:AtuVb1,:TipVb1,:AtuVb2,:TipVb2,:AtuVb3,:TipVb3,:AtuVb4,:TipVb4,:AtuVb5,:TipVb5,'+
                        '                    :QtdIte,:SitApr,:CodUsu,:OpeVcr,:OpeVb1,:OpeVb2,:OpeVb3,:OpeVb4,:OpeVb5)';

                with Params do begin

                     Params[00].Name       := 'DteApr';
                     Params[00].DataType   := ftDateTime;
                     Params[00].Value      := Date;
                     Params[01].Name       := 'DteApr';
                     Params[01].DataType   := ftInteger;
                     Params[01].Value      := 1;
                     Params[02].Name       := 'SeqOpe';
                     Params[02].DataType   := ftString;
                     Params[02].Value      := SeqOpe;
                     Params[03].Name       := 'HreOpe';
                     Params[03].DataType   := ftString;
                     Params[03].Value      := TimeToStr(Time);
                     Params[04].Name       := 'CodEmp';
                     Params[04].DataType   := ftInteger;
                     if Trim( EdPsqCodEmp.Text ) <> '' then Params[04].Value := StrToInt( EdPsqCodEmp.Text );

                     Params[05].Name       := 'CodCat';
                     Params[05].DataType   := ftInteger;
                     if Trim( EdPsqCodCat.Text ) <> '' then Params[05].Value := StrToInt( EdPsqCodCat.Text );

                     Params[06].Name       := 'CodTip';
                     Params[06].DataType   := ftInteger;
                     if Trim( EdPsqCodTip.Text ) <> '' then Params[06].Value := StrToInt( EdPsqCodTip.Text );

                     Params[07].Name       := 'CodTip';
                     Params[07].DataType   := ftInteger;
                     if Trim( EdPsqCodMrc.Text ) <> '' then Params[07].Value := StrToInt( EdPsqCodMrc.Text );

                     Params[08].Name       := 'CodClp';
                     Params[08].DataType   := ftString;
                     Params[08].Value      := EdPsqCodClp.Text;

                     Params[09].Name       := 'CodGru';
                     Params[09].DataType   := ftString;
                     Params[09].AsString   := EdPsqCodGru.Text;

                     Params[10].Name       := 'CodSub';
                     Params[10].DataType   := ftString;
                     Params[10].AsString   := EdPsqCodSub.Text;

                     Params[11].Name       := 'CodPro';
                     Params[11].DataType   := ftString;
                     Params[11].AsString   := EdPsqCodPro.Text;

                     Params[12].Name       := 'AtuVcr';
                     Params[12].DataType   := ftString;
                     Params[12].AsString   := fConvertValor( EdVcrIte.Text );

                     Params[13].Name       := 'TipVcr';
                     Params[13].DataType   := ftString;
                     Params[13].AsString   := EdTipVcr.Text;

                     Params[14].Name       := 'AtuVb1';
                     Params[14].DataType   := ftString;
                     Params[14].AsString   := fConvertValor( EdVb1Ite.Text );

                     Params[15].Name       := 'TipVb1';
                     Params[15].DataType   := ftString;
                     Params[15].AsString   := EdTipVb1.Text;

                     Params[16].Name       := 'AtuVb2';
                     Params[16].DataType   := ftString;
                     Params[16].AsString   := fConvertValor( EdVb2Ite.Text );

                     Params[17].Name       := 'TipVb2';
                     Params[17].DataType   := ftString;
                     Params[17].AsString   := EdTipVb2.Text;

                     Params[18].Name       := 'AtuVb3';
                     Params[18].DataType   := ftString;
                     Params[18].AsString   := fConvertValor( EdVb3Ite.Text );

                     Params[19].Name       := 'TipVb3';
                     Params[19].DataType   := ftString;
                     Params[19].AsString   := EdTipVb3.Text;

                     Params[20].Name       := 'AtuVb4';
                     Params[20].DataType   := ftString;
                     Params[20].AsString   := fConvertValor( EdVb4Ite.Text );

                     Params[21].Name       := 'TipVb4';
                     Params[21].DataType   := ftString;
                     Params[21].AsString   := EdTipVb4.Text;

                     Params[22].Name       := 'AtuVb5';
                     Params[22].DataType   := ftString;
                     Params[22].AsString   := fConvertValor( EdVb5Ite.Text );

                     Params[23].Name       := 'TipVb5';
                     Params[23].DataType   := ftString;
                     Params[23].AsString   := EdTipVb5.Text;

                     Params[24].Name       := 'QtdIte';
                     Params[24].DataType   := ftInteger;
                     Params[24].AsInteger  := 0;

                     Params[25].Name       := 'SitApr';
                     Params[25].DataType   := ftString;
                     Params[25].AsString   := 'Nao Concluida';

                     Params[26].Name       := 'CodUsu';
                     Params[26].DataType   := ftInteger;
                     Params[26].AsInteger  := GUsu_Id;

                     Params[27].Name       := 'OpcVcr';
                     Params[27].DataType   := ftString;
                     Params[27].AsString   := EdOpeVcr.Text;
                  
                     Params[28].Name       := 'OpcVb1';
                     Params[28].DataType   := ftString;
                     Params[28].AsString   := EdOpeVb1.Text;

                     Params[29].Name       := 'OpcVb2';
                     Params[29].DataType   := ftString;
                     Params[29].AsString   := EdOpeVb2.Text;

                     Params[30].Name       := 'OpcVb3';
                     Params[30].DataType   := ftString;
                     Params[30].AsString   := EdOpeVb3.Text;

                     Params[31].Name       := 'OpcVb4';
                     Params[31].DataType   := ftString;
                     Params[31].AsString   := EdOpeVb4.Text;

                     Params[32].Name       := 'OpcVb5';
                     Params[32].DataType   := ftString;
                     Params[32].AsString   := EdOpeVb5.Text;

                end;

                ExecSQL;

           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Select * From EstApr Where SeqOpe = '''+ SeqOpe +'''';
                Open;

           end;

           SeqError := 0;

           if quSQL.FieldbyName('SeqApr').AsInteger > 0 then begin

              sUpdate := sUpdate + ' ,DteApr = '''+ fDateToSQL(quSQL.FieldbyName('DteApr').AsDatetime) +'''';
              sUpdate := sUpdate + ' ,SeqApr = '''+ IntToStr(quSQL.FieldbyName('SeqApr').AsInteger)    +'''';

              sFiltro := ' Where Exists( Select * From EstPro Where CodClp = EstIte.CodClp'+
                         '                                      and CodGru = EstIte.CodGru'+
                         '                                      and CodSub = EstIte.CodSub'+
                         '                                      and CodPro = EstIte.CodPro';

              if Trim( EdPsqCodCat.Text ) <> '' then sFiltro := sFiltro + ' and CodCat = '''+ EdPsqCodCat.Text + '''';
              if Trim( EdPsqCodTip.Text ) <> '' then sFiltro := sFiltro + ' and CodTip = '''+ EdPsqCodTip.Text + '''';
              if Trim( EdPsqCodMrc.Text ) <> '' then sFiltro := sFiltro + ' and CodMrc = '''+ EdPsqCodMrc.Text + '''';

              sFiltro := sFiltro + ')';

              if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and CodEmp = '''+ EdPsqCodEmp.Text + '''';
              if Trim( EdPsqCodClp.Text ) <> '' then sFiltro := sFiltro + ' and CodClp = '''+ EdPsqCodClp.Text + '''';
              if Trim( EdPsqCodGru.Text ) <> '' then sFiltro := sFiltro + ' and CodGru = '''+ EdPsqCodGru.Text + '''';
              if Trim( EdPsqCodSub.Text ) <> '' then sFiltro := sFiltro + ' and CodSub = '''+ EdPsqCodSub.Text + '''';
              if Trim( EdPsqCodPro.Text ) <> '' then sFiltro := sFiltro + ' and CodPro = '''+ EdPsqCodPro.Text + '''';

              if Pos('and',sFiltro) > 0 then begin

                 fmManGDB.dbMain.StartTransaction;

                 try

                    with quSQL,SQL do begin

                         Close;
                         Text := sUpdate + sFiltro;
                         ExecSQL;

                    end;

                    fmManGDB.dbMain.Commit;

                    SeqError := 1;

                 except

                    fmManGDB.dbMain.Rollback;

                    EdPsqCodEmp.SetFocus;

                 end;
              end;
           end;
        end;

        if SeqError = 1 then begin

           fMsg('Operação Realizada com Sucesso.','I');

           LimpaControls;

           end
        else
           fMsg('Operação não Realizada. Comunique ao Administrador do Sistema.','E');

        EdPsqCodEmp.SetFocus;

     end;

     end
  else
     fmsgErro(GMensagem,Nil);
     
end;

procedure TfmManApr.EdPsqCodCatExit(Sender: TObject);
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

procedure TfmManApr.EdPsqCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodMrc.Text ) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomMrc From EstMrc Where CodMrc = '''+ EdPsqCodMrc.Text +'''';
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomMrc').AsString ) <> '' then
        EdPsqNomMrc.Text := quSql.FieldByName('NomMrc').AsString
     else
        fmsgErro('Marca Informada não Encontrada.',EdPsqCodMrc);

     end
  else
     EdPsqNomMrc.Text := 'TODAS';
end;

procedure TfmManApr.bPsqCatClick(Sender: TObject);
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
  
  if Trim( EdPsqCodCat.Text ) <> '' then EdPsqCodTip.SetFocus;

end;

procedure TfmManApr.bPsqMrcClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );
     if Trim( EdPsqCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdPsqCodTip.Text );

     fmAuxIni.TipoPesq := 'Marca';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodMrc > 0 then begin

        EdPsqNomMrc.Text := fmAuxIni.NomMrc;
        EdPsqCodMrc.Text := IntToStr( fmAuxIni.CodMrc );

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
  
  if Trim( EdPsqCodMrc.Text ) <> '' then EdPsqCodClp.SetFocus;

end;

procedure TfmManApr.FormShow(Sender: TObject);
begin
  inherited;

  EdPsqCodClp.Text := '1';

  EdPsqNomClp.Text := 'ACABADO';

  EdPsqCodEmp.SetFocus;

end;

procedure TfmManApr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManApr.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManAPr := Nil;
end;

end.
