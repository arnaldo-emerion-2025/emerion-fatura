unit ManPrc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, Buttons, dxCntner, dxEditor, dxEdLib, StdCtrls,
  dxExEdtr, Db, DBTables, Wwquery, dxColorCurrencyEdit, dxColorEdit,
  dxColorPickEdit;

type
  TfmManPrc = class(TfmPadrao)
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
    Label2: TLabel;
    Label25: TLabel;
    EdPsqCodTip: TdxColorEdit;
    bPsqTip: TSpeedButton;
    EdPsqNomTip: TdxColorEdit;
    Label27: TLabel;
    EdVb1Ite: TdxColorCurrencyEdit;
    Label28: TLabel;
    EdCodCm1: TdxColorEdit;
    bPsqCm1: TSpeedButton;
    EdPerCm1: TdxColorCurrencyEdit;
    Label29: TLabel;
    EdVb2Ite: TdxColorCurrencyEdit;
    Label30: TLabel;
    EdCodCm2: TdxColorEdit;
    bPsqCm2: TSpeedButton;
    EdPerCm2: TdxColorCurrencyEdit;
    Label31: TLabel;
    EdVb3Ite: TdxColorCurrencyEdit;
    Label32: TLabel;
    EdCodCm3: TdxColorEdit;
    bPsqCm3: TSpeedButton;
    EdPerCm3: TdxColorCurrencyEdit;
    EdVb5Ite: TdxColorCurrencyEdit;
    EdVb4Ite: TdxColorCurrencyEdit;
    Label33: TLabel;
    Label34: TLabel;
    EdCodCm5: TdxColorEdit;
    EdCodCm4: TdxColorEdit;
    bPsqCm4: TSpeedButton;
    bPsqCm5: TSpeedButton;
    EdPerCm5: TdxColorCurrencyEdit;
    EdPerCm4: TdxColorCurrencyEdit;
    Label35: TLabel;
    Label36: TLabel;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
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
    Label7: TLabel;
    EdMs1Ite: TdxColorCurrencyEdit;
    Label8: TLabel;
    EdMs2Ite: TdxColorCurrencyEdit;
    Label9: TLabel;
    EdMs3Ite: TdxColorCurrencyEdit;
    Label11: TLabel;
    EdMs4Ite: TdxColorCurrencyEdit;
    Label12: TLabel;
    EdMs5Ite: TdxColorCurrencyEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    EdDs5Ite: TdxColorCurrencyEdit;
    EdDs4Ite: TdxColorCurrencyEdit;
    EdDs3Ite: TdxColorCurrencyEdit;
    EdDs2Ite: TdxColorCurrencyEdit;
    EdDs1Ite: TdxColorCurrencyEdit;
    CheckEdit01: TdxCheckEdit;
    CheckEdit02: TdxCheckEdit;
    CheckEdit03: TdxCheckEdit;
    CheckEdit04: TdxCheckEdit;
    CheckEdit05: TdxCheckEdit;
    CheckEdit06: TdxCheckEdit;
    CheckEdit07: TdxCheckEdit;
    CheckEdit08: TdxCheckEdit;
    CheckEdit09: TdxCheckEdit;
    CheckEdit10: TdxCheckEdit;
    CheckEdit15: TdxCheckEdit;
    CheckEdit14: TdxCheckEdit;
    CheckEdit13: TdxCheckEdit;
    CheckEdit12: TdxCheckEdit;
    CheckEdit11: TdxCheckEdit;
    CheckEdit20: TdxCheckEdit;
    CheckEdit19: TdxCheckEdit;
    CheckEdit18: TdxCheckEdit;
    CheckEdit17: TdxCheckEdit;
    CheckEdit16: TdxCheckEdit;
    EdPsqClsIpi: TdxColorEdit;
    Label18: TLabel;
    EdTp1Ite: TdxColorPickEdit;
    EdTp2Ite: TdxColorPickEdit;
    EdTp3Ite: TdxColorPickEdit;
    EdTp4Ite: TdxColorPickEdit;
    EdTp5Ite: TdxColorPickEdit;
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
    procedure bPsqCm1Click(Sender: TObject);
    procedure EdCodCm1Exit(Sender: TObject);
    procedure bPsqCm2Click(Sender: TObject);
    procedure EdCodCm2Exit(Sender: TObject);
    procedure bPsqCm3Click(Sender: TObject);
    procedure EdCodCm3Exit(Sender: TObject);
    procedure bPsqCm4Click(Sender: TObject);
    procedure EdCodCm4Exit(Sender: TObject);
    procedure bPsqCm5Click(Sender: TObject);
    procedure EdCodCm5Exit(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
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
  fmManPrc: TfmManPrc;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, PsqEmp, PsqClp, PsqTip, PsqUnd,
     PsqCom, PsqIcm, PsqIpi, PsqStr, ManGDB, AuxIni;

{$R *.DFM}

procedure TfmManPrc.LimpaControls;
var
i : integer;
begin;

  for i := 0 to ComponentCount - 1 do begin

      if Components[i] is TdxColorEdit then (Components[i] as TdxColorEdit).Text := '';

      if Components[i] is TdxColorCurrencyEdit then (Components[i] as TdxColorCurrencyEdit).Value := 0;

      if Components[i] is TdxCheckEdit then (Components[i] as TdxCheckEdit).Checked := False;

  end;

  EdPsqCodClp.Text := '1';

  EdPsqNomClp.Text := 'ACABADO';

end;

procedure TfmManPrc.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPrc.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPrc.EdPsqCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if GFlgAce <> 'Sim' then begin

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
     EdPsqNomEmp.Text := '';
end;

procedure TfmManPrc.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManPrc.EdPsqCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '+ QuotedStr(EdPsqCodClp.Text);
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

procedure TfmManPrc.BbPsqClpClick(Sender: TObject);
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

procedure TfmManPrc.EdPsqCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGru.Text ) <> '' then begin

     EdPsqCodGru.Text := FNumZeros(EdPsqCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstGru.NomGru From EstGru Where EstGru.CodGru = '+ QuotedStr(EdPsqCodGru.Text);
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

procedure TfmManPrc.BbPsqGruClick(Sender: TObject);
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

procedure TfmManPrc.EdPsqCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodSub.Text ) <> '' then begin

     EdPsqCodSub.Text := FNumZeros(EdPsqCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstSub.NomSub'+
                  ' From EstSub '+
                  ' Where EstSub.CodGru = '+ QuotedStr(EdPsqCodGru.Text)+
                  '   and EstSub.CodSub = '+ QuotedStr(EdPsqCodSub.Text);
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

procedure TfmManPrc.BbPsqSubClick(Sender: TObject);
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

procedure TfmManPrc.EdPsqCodProExit(Sender: TObject);
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

procedure TfmManPrc.BbPsqProClick(Sender: TObject);
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

procedure TfmManPrc.bPsqTipClick(Sender: TObject);
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

procedure TfmManPrc.EdPsqCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodTip.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstTip.NomTip From EstTip Where EstTip.CodTip = '+ QuotedStr(EdPsqCodTip.Text);
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

procedure TfmManPrc.bPsqCm1Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqCom := TfmPsqCom.Create(Self);

     fmPsqCom.ShowModal;

     if Trim( fmPsqCom.CodCom ) <> '' then begin

        EdCodCm1.Text  := fmPsqCom.CodCom;
        EdPerCm1.Value := fmPsqCom.PerCom;

     end;

  finally

     FreeAndNil(fmPsqCom);

  end;
  
  EdCodCm1.SetFocus;

end;

procedure TfmManPrc.EdCodCm1Exit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCm1.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select * From FinCom Where FinCom.CodCom = '+ QuotedStr(EdCodCm1.Text);
          Open;

     end;

     if Trim( quSql.FieldByName('CodCom').AsString) <> '' then
        EdPerCm1.Value := quSql.FieldByName('PerCom').AsFloat
     else
        fmsgErro('Letra de Comissão Informada não Encontrada.',EdCodCm1);

     end
  else
     EdPerCm1.Value := 0;
end;

procedure TfmManPrc.bPsqCm2Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqCom := TfmPsqCom.Create(Self);

     fmPsqCom.ShowModal;

     if Trim( fmPsqCom.CodCom ) <> '' then begin

        EdCodCm2.Text  := fmPsqCom.CodCom;
        EdPerCm2.Value := fmPsqCom.PerCom;

     end;

  finally

     FreeAndNil(fmPsqCom);

  end;
  
  EdCodCm2.SetFocus;

end;

procedure TfmManPrc.EdCodCm2Exit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCm2.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select * From FinCom Where FinCom.CodCom = '+ QuotedStr(EdCodCm2.Text);
          Open;


     end;

     if Trim( quSql.FieldByName('CodCom').AsString) <> '' then
        EdPerCm2.Value := quSql.FieldByName('PerCom').AsFloat
     else
        fmsgErro('Letra de Comissão Informada não Encontrada.',EdCodCm2);

     end
  else
     EdPerCm2.Value := 0;
end;

procedure TfmManPrc.bPsqCm3Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqCom := TfmPsqCom.Create(Self);

     fmPsqCom.ShowModal;

     if Trim( fmPsqCom.CodCom ) <> '' then begin

        EdCodCm3.Text  := fmPsqCom.CodCom;
        EdPerCm3.Value := fmPsqCom.PerCom;

     end;

  finally

     FreeAndNil(fmPsqCom);

  end;
  
  EdCodCm3.SetFocus;

end;

procedure TfmManPrc.EdCodCm3Exit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCm3.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select * From FinCom Where FinCom.CodCom = '+ QuotedStr(EdCodCm3.Text);
          Open;


     end;

     if Trim( quSql.FieldByName('CodCom').AsString) <> '' then
        EdPerCm3.Value := quSql.FieldByName('PerCom').AsFloat
     else
        fmsgErro('Letra de Comissão Informada não Encontrada.',EdCodCm3);

     end
  else
     EdPerCm3.Value := 0;
end;

procedure TfmManPrc.bPsqCm4Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqCom := TfmPsqCom.Create(Self);

     fmPsqCom.ShowModal;

     if Trim( fmPsqCom.CodCom ) <> '' then begin

        EdCodCm4.Text  := fmPsqCom.CodCom;
        EdPerCm4.Value := fmPsqCom.PerCom;

     end;

  finally   

     FreeAndNil(fmPsqCom);

  end;
  
  EdCodCm4.SetFocus;

end;

procedure TfmManPrc.EdCodCm4Exit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCm4.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select * From FinCom Where FinCom.CodCom = '+ QuotedStr(EdCodCm4.Text);
          Open;


     end;

     if Trim( quSql.FieldByName('CodCom').AsString) <> '' then
        EdPerCm4.Value := quSql.FieldByName('PerCom').AsFloat
     else
        fmsgErro('Letra de Comissão Informada não Encontrada.',EdCodCm4);

     end
  else
     EdPerCm4.Value := 0;
end;

procedure TfmManPrc.bPsqCm5Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqCom := TfmPsqCom.Create(Self);

     fmPsqCom.ShowModal;

     if Trim( fmPsqCom.CodCom ) <> '' then begin

        EdCodCm5.Text  := fmPsqCom.CodCom;
        EdPerCm5.Value := fmPsqCom.PerCom;

     end;

  finally   

     FreeAndNil(fmPsqCom);

  end;
  
  EdCodCm5.SetFocus;

end;

procedure TfmManPrc.EdCodCm5Exit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCm5.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select * From FinCom Where FinCom.CodCom = '+ QuotedStr(EdCodCm5.Text);
          Open;


     end;

     if Trim( quSql.FieldByName('CodCom').AsString) <> '' then
        EdPerCm5.Value := quSql.FieldByName('PerCom').AsFloat
     else
        fmsgErro('Letra de Comissão Informada não Encontrada.',EdCodCm5);

     end
  else
     EdPerCm5.Value := 0;
end;

procedure TfmManPrc.bCancelarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfmManPrc.bConfirmarClick(Sender: TObject);
var
sUpdate,SeqArq,sFiltro : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     ActiveControl := nil;

     if (Trim( EdPsqCodGru.Text ) = '') and (Trim( EdPsqCodSub.Text ) = '') and (Trim( EdPsqCodPro.Text ) = '') then begin

        if (Trim( EdPsqClsIpi.Text ) = '') and (Trim( EdPsqCodCat.Text ) = '') and (Trim( EdPsqCodTip.Text ) = '') and (Trim( EdPsqCodMrc.Text ) = '') then begin

           fmsgErro('Alterações de Preços em Todos os Itens do Cadastro não Podem ser Realizadas. Consulte o Administrador do Sistema.',EdPsqCodEmp);

        end;
     end;

     if Trim( EdPsqCodEmp.Text ) <> '' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FlgFil From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
             Open;

             if FieldbyName('FlgFil').AsString = 'Sim' then fmsgErro('Empresa Informada Esta Incorreta.',EdPsqCodEmp);

        end;
     end;
  
     if fMsg('Atenção !' +#10+ 'Alterações Globais costumam ser MUITO DEMORADAS.' +#10+ 'Disso Depende a velocidade e a Memoria do seu Servidor, quanto maior for a Seleção de Itens, mais Tende a Demorar.' +#10+ 'Tem Certeza que Deseja Realizar esta Operação ?','S') then begin

        Randomize;
        SeqArq := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                  copy(TimeToStr(Time),1,2)+
                  copy(TimeToStr(Time),4,2)+
                  copy(TimeToStr(Time),7,2)+
                  FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
                  FNumZeros(Trim( IntToStr(Random(50000)) ),5);

        sUpdate := ' Update EstIte Set FlgTrg = '+ QuotedStr('*');

        if CheckEdit01.Checked then begin

           if EdVb1Ite.Value > 0 then
              sUpdate := sUpdate + ' ,Vb1Ite = '+ QuotedStr(fConvertValor(EdVb1Ite.Text))
           else
              sUpdate := sUpdate + ' ,Vb1Ite = 0';

        end;

        if CheckEdit02.Checked then begin

           if EdVb2Ite.Value > 0 then
              sUpdate := sUpdate + ' ,Vb2Ite = '+ QuotedStr(fConvertValor(EdVb2Ite.Text))
           else
              sUpdate := sUpdate + ' ,Vb2Ite = 0';

        end;

        if CheckEdit03.Checked then begin

           if EdVb3Ite.Value > 0 then
              sUpdate := sUpdate + ' ,Vb3Ite = '+ QuotedStr(fConvertValor(EdVb3Ite.Text))
           else
              sUpdate := sUpdate + ' ,Vb3Ite = 0';

        end;

        if CheckEdit04.Checked then begin

           if EdVb4Ite.Value > 0 then
              sUpdate := sUpdate + ' ,Vb4Ite = '+ QuotedStr(fConvertValor(EdVb4Ite.Text))
           else
              sUpdate := sUpdate + ' ,Vb4Ite = 0';

        end;

        if CheckEdit05.Checked then begin

           if EdVb5Ite.Value > 0 then
              sUpdate := sUpdate + ' ,Vb5Ite = '+ QuotedStr(fConvertValor(EdVb5Ite.Text))
           else
              sUpdate := sUpdate + ' ,Vb5Ite = 0';

        end;

        if CheckEdit06.Checked then begin

           if EdDs1Ite.Value > 0 then
              sUpdate := sUpdate + ' ,Ds1Ite = '+ QuotedStr(fConvertValor(EdDs1Ite.Text))
           else
              sUpdate := sUpdate + ' ,Ds1Ite = 0';

        end;

        if CheckEdit07.Checked then begin

           if EdDs2Ite.Value > 0 then
              sUpdate := sUpdate + ' ,Ds2Ite = '+ QuotedStr(fConvertValor(EdDs2Ite.Text))
           else
              sUpdate := sUpdate + ' ,Ds2Ite = 0';

        end;

        if CheckEdit08.Checked then begin

           if EdDs3Ite.Value > 0 then
              sUpdate := sUpdate + ' ,Ds3Ite = '+ QuotedStr(fConvertValor(EdDs3Ite.Text))
           else
              sUpdate := sUpdate + ' ,Ds3Ite = 0';

        end;

        if CheckEdit09.Checked then begin

           if EdDs4Ite.Value > 0 then
              sUpdate := sUpdate + ' ,Ds4Ite = '+ QuotedStr(fConvertValor(EdDs4Ite.Text))
           else
              sUpdate := sUpdate + ' ,Ds4Ite = 0';

        end;

        if CheckEdit10.Checked then begin

           if EdDs5Ite.Value > 0 then
              sUpdate := sUpdate + ' ,Ds5Ite = '+ QuotedStr(fConvertValor(EdDs5Ite.Text))
           else
              sUpdate := sUpdate + ' ,Ds5Ite = 0';

        end;
           
        if CheckEdit11.Checked then begin

           if EdMs1Ite.Value > 0 then begin

              if EdTp1Ite.ItemIndex = 0 then
                 sUpdate := sUpdate + ' ,Ms1Ite = '+ QuotedStr(fConvertValor(EdMs1Ite.Text))
              else
                 sUpdate := sUpdate + ' ,Mk1Ite = '+ QuotedStr(fConvertValor(EdMs1Ite.Text));

              end
           else
              begin

              if EdTp1Ite.ItemIndex = 0 then
                 sUpdate := sUpdate + ' ,Ms1Ite = 0'
              else
                 sUpdate := sUpdate + ' ,Mk1Ite = 0';
                 
           end;
        end;

        if CheckEdit12.Checked then begin

           if EdMs2Ite.Value > 0 then begin

              if EdTp2Ite.ItemIndex = 0 then
                 sUpdate := sUpdate + ' ,Ms2Ite = '+ QuotedStr(fConvertValor(EdMs2Ite.Text))
              else
                 sUpdate := sUpdate + ' ,Mk2Ite = '+ QuotedStr(fConvertValor(EdMs2Ite.Text));

              end
           else
              begin

              if EdTp2Ite.ItemIndex = 0 then
                 sUpdate := sUpdate + ' ,Ms2Ite = 0'
              else
                 sUpdate := sUpdate + ' ,Mk2Ite = 0';

           end;
        end;

        if CheckEdit13.Checked then begin

           if EdMs3Ite.Value > 0 then begin

              if EdTp3Ite.ItemIndex = 0 then
                 sUpdate := sUpdate + ' ,Ms3Ite = '+ QuotedStr(fConvertValor(EdMs3Ite.Text))
              else
                 sUpdate := sUpdate + ' ,Mk3Ite = '+ QuotedStr(fConvertValor(EdMs3Ite.Text));

              end
           else
              begin

              if EdTp3Ite.ItemIndex = 0 then
                 sUpdate := sUpdate + ' ,Ms3Ite = 0'
              else
                 sUpdate := sUpdate + ' ,Mk3Ite = 0';

           end;
        end;

        if CheckEdit14.Checked then begin

           if EdMs4Ite.Value > 0 then begin

              if EdTp4Ite.ItemIndex = 0 then
                 sUpdate := sUpdate + ' ,Ms4Ite = '+ QuotedStr(fConvertValor(EdMs4Ite.Text))
              else
                 sUpdate := sUpdate + ' ,Mk4Ite = '+ QuotedStr(fConvertValor(EdMs4Ite.Text));

              end
           else
              begin

              if EdTp4Ite.ItemIndex = 0 then
                 sUpdate := sUpdate + ' ,Ms4Ite = 0'
              else
                 sUpdate := sUpdate + ' ,Mk4Ite = 0';

           end;
        end;

        if CheckEdit15.Checked then begin

           if EdMs5Ite.Value > 0 then begin

              if EdTp5Ite.ItemIndex = 0 then
                 sUpdate := sUpdate + ' ,Ms5Ite = '+ QuotedStr(fConvertValor(EdMs5Ite.Text))
              else
                 sUpdate := sUpdate + ' ,Mk5Ite = '+ QuotedStr(fConvertValor(EdMs5Ite.Text));

              end
           else
              begin

              if EdTp5Ite.ItemIndex = 0 then
                 sUpdate := sUpdate + ' ,Ms5Ite = 0'
              else
                 sUpdate := sUpdate + ' ,Mk5Ite = 0';
                 
           end;
        end;

        if CheckEdit16.Checked then begin

           if Trim( EdCodCm1.Text ) <> '' then
              sUpdate := sUpdate + ' ,CodCm1 = '+ QuotedStr(EdCodCm1.Text)
           else
              sUpdate := sUpdate + ' ,CodCm1 = Null';

        end;

        if CheckEdit17.Checked then begin

           if Trim( EdCodCm2.Text ) <> '' then
              sUpdate := sUpdate + ' ,CodCm2 = '+ QuotedStr(EdCodCm2.Text)
           else
              sUpdate := sUpdate + ' ,CodCm2 = Null';

        end;

        if CheckEdit18.Checked then begin

           if Trim( EdCodCm3.Text ) <> '' then
              sUpdate := sUpdate + ' ,CodCm3 = '+ QuotedStr(EdCodCm3.Text)
           else
              sUpdate := sUpdate + ' ,CodCm3 = Null';

        end;

        if CheckEdit19.Checked then begin

           if Trim( EdCodCm4.Text ) <> '' then
              sUpdate := sUpdate + ' ,CodCm4 = '+ QuotedStr(EdCodCm4.Text)
           else
              sUpdate := sUpdate + ' ,CodCm4 = Null';

        end;

        if CheckEdit20.Checked then begin

           if Trim( EdCodCm5.Text ) <> '' then
              sUpdate := sUpdate + ' ,CodCm5 = '+ QuotedStr(EdCodCm5.Text)
           else
              sUpdate := sUpdate + ' ,CodCm5 = Null';

        end;
           
        if Pos(',',sUpdate) > 0 then begin

           sFiltro := ' Where Exists( Select * From EstPro Where EstPro.CodClp = EstIte.CodClp'+
                      '                                      and EstPro.CodGru = EstIte.CodGru'+
                      '                                      and EstPro.CodSub = EstIte.CodSub'+
                      '                                      and EstPro.CodPro = EstIte.CodPro';

           if Trim( EdPsqCodCat.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodCat = '+ QuotedStr(EdPsqCodCat.Text);
           if Trim( EdPsqCodTip.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodTip = '+ QuotedStr(EdPsqCodTip.Text);
           if Trim( EdPsqCodMrc.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.CodMrc = '+ QuotedStr(EdPsqCodMrc.Text);
           if Trim( EdPsqClsIpi.Text ) <> '' then sFiltro := sFiltro + ' and EstPro.ClfSai = '+ QuotedStr(EdPsqClsIpi.Text);

           sFiltro := sFiltro + ')';

           if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and EstIte.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
           if Trim( EdPsqCodClp.Text ) <> '' then sFiltro := sFiltro + ' and EstIte.CodClp = '+ QuotedStr(EdPsqCodClp.Text);
           if Trim( EdPsqCodGru.Text ) <> '' then sFiltro := sFiltro + ' and EstIte.CodGru = '+ QuotedStr(EdPsqCodGru.Text);
           if Trim( EdPsqCodSub.Text ) <> '' then sFiltro := sFiltro + ' and EstIte.CodSub = '+ QuotedStr(EdPsqCodSub.Text);
           if Trim( EdPsqCodPro.Text ) <> '' then sFiltro := sFiltro + ' and EstIte.CodPro = '+ QuotedStr(EdPsqCodPro.Text);

           if Pos('and',sFiltro) > 0 then begin

              fmManGDB.dbMain.StartTransaction;

              try

                 with quSQL,SQL do begin

                      Close;
                      Text := sUpdate + sFiltro;
                      ExecSQL;

                 end;

                 fmManGDB.dbMain.Commit;

              except

                 fmManGDB.dbMain.Rollback;

                 EdPsqCodEmp.SetFocus;

              end;
           end;
        end;

        if Pos(',',sUpdate) > 0 then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Insert Into EstPrc(AnoPrc,SeqPrc,DtePrc,HrePrc,CodUsu,CodEmp,CodClp,CodGru,CodSub,CodPro,CodCat,CodTip,CodMrc,'+
                        '                    Vb1Ite,CodCm1,Vb2Ite,CodCm2,Vb3Ite,CodCm3,Vb4Ite,CodCm4,Vb5Ite,CodCm5,Ms1Ite,Ms2Ite,Ms3Ite,'+
                        '                    Ms4Ite,Ms5Ite,Ds1Ite,Ds2Ite,Ds3Ite,Ds4Ite,Ds5Ite,SeqArq)'+
                        '             Values(:AnoPrc,:SeqPrc,:DtePrc,:HrePrc,:CodUsu,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodCat,:CodTip,'+
                        '                    :CodMrc,:Vb1Ite,:CodCm1,:Vb2Ite,:CodCm2,:Vb3Ite,:CodCm3,:Vb4Ite,:CodCm4,:Vb5Ite,:CodCm5,:Ms1Ite,'+
                        '                    :Ms2Ite,:Ms3Ite,:Ms4Ite,:Ms5Ite,:Ds1Ite,:Ds2Ite,:Ds3Ite,:Ds4Ite,:Ds5Ite,:SeqArq)';

                with Params do begin

                     Params[00].AsInteger  := 1;
                     Params[01].AsInteger  := 1;
                     Params[02].AsString   := fDateToSQL(Date);
                     Params[03].AsString   := TimeToStr(Time);
                     Params[04].AsInteger  := GUsu_Id;

                     Params[05].DataType   := ftString;
                     if Trim( EdPsqCodEmp.Text ) <> '' then Params[05].Value := EdPsqCodEmp.Text;

                     Params[06].DataType   := ftString;
                     if Trim( EdPsqCodClp.Text ) <> '' then Params[06].Value := EdPsqCodClp.Text;

                     Params[07].DataType   := ftString;
                     if Trim( EdPsqCodGru.Text ) <> '' then Params[07].Value := EdPsqCodGru.Text;

                     Params[08].DataType   := ftString;
                     if Trim( EdPsqCodSub.Text ) <> '' then Params[08].Value := EdPsqCodSub.Text;

                     Params[09].DataType   := ftString;
                     if Trim( EdPsqCodPro.Text ) <> '' then Params[09].Value := EdPsqCodPro.Text;

                     Params[10].DataType   := ftString;
                     if Trim( EdPsqCodCat.Text ) <> '' then Params[10].Value := EdPsqCodCat.Text;

                     Params[11].DataType   := ftString;
                     if Trim( EdPsqCodTip.Text ) <> '' then Params[11].Value := EdPsqCodTip.Text;

                     Params[12].DataType   := ftString;
                     if Trim( EdPsqCodMrc.Text ) <> '' then Params[12].Value := EdPsqCodMrc.Text;

                     Params[13].AsFloat    := EdVb1Ite.Value;

                     Params[14].DataType   := ftString;
                     if Trim( EdCodCm1.Text ) <> '' then Params[14].Value := EdCodCm1.Text;

                     Params[15].AsFloat    := EdVb2Ite.Value;

                     Params[16].DataType   := ftString;
                     if Trim( EdCodCm2.Text ) <> '' then Params[16].Value := EdCodCm2.Text;

                     Params[17].AsFloat    := EdVb3Ite.Value;

                     Params[18].DataType   := ftString;
                     if Trim( EdCodCm3.Text ) <> '' then Params[18].Value := EdCodCm3.Text;

                     Params[19].AsFloat    := EdVb4Ite.Value;

                     Params[20].DataType   := ftString;
                     if Trim( EdCodCm4.Text ) <> '' then Params[20].Value := EdCodCm4.Text;

                     Params[21].AsFloat    := EdVb5Ite.Value;

                     Params[22].DataType   := ftString;
                     if Trim( EdCodCm5.Text ) <> '' then Params[22].Value := EdCodCm5.Text;

                     Params[23].AsFloat    := EdMs1Ite.Value;
                     Params[24].AsFloat    := EdMs2Ite.Value;
                     Params[25].AsFloat    := EdMs3Ite.Value;
                     Params[26].AsFloat    := EdMs4Ite.Value;
                     Params[27].AsFloat    := EdMs5Ite.Value;
                     Params[28].AsFloat    := EdDs1Ite.Value;
                     Params[29].AsFloat    := EdDs2Ite.Value;
                     Params[30].AsFloat    := EdDs3Ite.Value;
                     Params[31].AsFloat    := EdDs4Ite.Value;
                     Params[32].AsFloat    := EdDs5Ite.Value;

                     Params[33].DataType   := ftString;
                     Params[33].AsString   := SeqArq;

                end;

                ExecSQL;

           end;
        end;

        fMsg('Operação Realizada com Sucesso.','I');

        LimpaControls;

        EdPsqCodEmp.SetFocus;

     end;

     end
  else
     fmsgErro(GMensagem,Nil);     
end;

procedure TfmManPrc.EdPsqCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCat.Text ) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstCat.NomCat From EstCat Where EstCat.CodCat = '+ QuotedStr(EdPsqCodCat.Text);
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

procedure TfmManPrc.EdPsqCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodMrc.Text ) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstMrc.NomMrc From EstMrc Where EstMrc.CodMrc = '+ QuotedStr(EdPsqCodMrc.Text);
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

procedure TfmManPrc.bPsqCatClick(Sender: TObject);
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

procedure TfmManPrc.bPsqMrcClick(Sender: TObject);
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

procedure TfmManPrc.FormShow(Sender: TObject);
begin
  inherited;

  EdPsqCodClp.Text := '1';

  EdPsqNomClp.Text := 'ACABADO';

  EdPsqCodEmp.SetFocus;

end;

procedure TfmManPrc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManPrc.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPrc := Nil;
end;

end.
