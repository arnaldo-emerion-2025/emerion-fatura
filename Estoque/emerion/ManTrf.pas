unit ManTrf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, Buttons, dxCntner, dxEditor, dxEdLib, StdCtrls,
  dxExEdtr, Db, DBTables, Wwquery, dxColorDateEdit, dxColorCurrencyEdit,
  dxColorEdit;

type
  TfmManTrf = class(TfmPadrao)
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    EdCodPro: TdxColorEdit;                           
    EdCodSub: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodEmp1: TdxColorEdit;
    bPsqEmp1: TSpeedButton;
    bPsqClp: TSpeedButton;
    bPsqGru: TSpeedButton;
    bPsqSub: TSpeedButton;
    bPsqPro: TSpeedButton;
    EdNomPro: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    EdNomEmp1: TdxColorEdit;
    Label7: TLabel;
    EdCodCor: TdxColorEdit;
    bPsqCor: TSpeedButton;
    EdNomCor: TdxColorEdit;
    Label25: TLabel;
    EdCodTam: TdxColorEdit;
    bPsqTam: TSpeedButton;
    EdValOpe: TdxColorCurrencyEdit;
    EdQtdOpe: TdxColorCurrencyEdit;
    EdIcmOpe: TdxColorCurrencyEdit;
    EdCstOpe: TdxColorCurrencyEdit;
    EdIpiOpe: TdxColorCurrencyEdit;
    BbConf: TBitBtn;
    BbCanc: TBitBtn;
    quSql: TwwQuery;
    EdDteOpe: TdxColorDateEdit;
    Label1: TLabel;
    PaintBox: TPaintBox;
    Label13: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label27: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label2: TLabel;
    EdTotIpi: TdxColorCurrencyEdit;
    EdTotIcm: TdxColorCurrencyEdit;
    EdTipIpi: TdxColorEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    EdObsEnf: TdxColorEdit;
    Label34: TLabel;
    Label35: TLabel;
    EdCodEmp2: TdxColorEdit;
    bPsqEmp2: TSpeedButton;
    EdNomEmp2: TdxColorEdit;
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodEmp1KeyPress(Sender: TObject; var Key: Char);
    procedure EdCodEmp1Exit(Sender: TObject);
    procedure bPsqEmp1Click(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure bPsqClpClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure bPsqCorClick(Sender: TObject);
    procedure EdCodCorExit(Sender: TObject);
    procedure bPsqTamClick(Sender: TObject);
    procedure EdCodTamExit(Sender: TObject);
    procedure BbConfClick(Sender: TObject);
    procedure BbCancClick(Sender: TObject);
    procedure LimpaControls;
    procedure FormShow(Sender: TObject);
    procedure EdIcmOpeExit(Sender: TObject);
    procedure EdIpiOpeExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdCodEmp2Exit(Sender: TObject);
    procedure bPsqEmp2Click(Sender: TObject);
  private
    { Private declarations }
    OpePadrao,
    sFlgTab: string;
  public
    { Public declarations }
  end;

var
  fmManTrf: TfmManTrf;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, PsqEmp, PsqClp, PsqTam, PsqEco,
     ManGDB, AuxIni, PsqOpe;

{$R *.DFM}

procedure TfmManTrf.LimpaControls;
var
i : integer;
begin;
  for i := 0 to ComponentCount - 1 do begin

      if Components[i] is TdxColorEdit then (Components[i] as TdxColorEdit).Text := '';

      if Components[i] is TdxColorCurrencyEdit then (Components[i] as TdxColorCurrencyEdit).Value := 0;

  end;
end;

procedure TfmManTrf.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManTrf.EdCodEmp1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManTrf.EdCodEmp1Exit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodEmp1.Text ) <> '' then begin

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
          Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdCodEmp1.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('NomEmp').AsString ) <> '' then
             EdNomEmp1.Text := FieldByName('NomEmp').AsString
          else
             begin

             EdNomEmp1.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdCodEmp1);

          end;
     end;

     end
  else
     EdNomEmp1.Text := '';
end;

procedure TfmManTrf.bPsqEmp1Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdNomEmp1.Text := fmPsqEmp.NomEmp;
        EdCodEmp1.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;

  if Trim( EdCodEmp1.Text ) <> '' then EdCodEmp2.SetFocus;

end;

procedure TfmManTrf.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp '+
                  ' Where EstClp.CodClp = '+ QuotedStr(EdCodClp.Text);
          Open;


     end;

     if Trim( quSQL.FieldbyName('NomClp').AsString ) <> '' then
        EdNomClp.Text := quSql.FieldByName('NomClp').AsString
     else
        fmsgErro('Classificação Informada não Encontrada.',EdCodClp);

     end
  else
     EdNomClp.Text := '';
end;

procedure TfmManTrf.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqClp := TfmPsqClp.Create(Self);

     fmPsqClp.ShowModal;

     if Trim( fmPsqClp.CodClp ) <> '' then begin

        EdCodClp.Text := fmPsqClp.CodClp;
        EdNomClp.Text := fmPsqClp.NomClp;

     end;

  finally   

     FreeAndNil(fmPsqClp);

  end;
  
  if Trim( EdCodClp.Text ) <> '' then EdCodGru.SetFocus;

end;

procedure TfmManTrf.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGru.Text ) <> '' then begin

     EdCodGru.Text := FNumZeros(EdCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru '+
                  ' Where EstGru.CodGru = '+ QuotedStr(EdCodGru.Text);
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomGru').AsString ) <> '' then
        EdNomGru.Text := quSql.FieldByName('NomGru').AsString
     else
        fmsgErro('Grupo Informado não Encontrado.',EdCodGru);

     end
  else
     EdNomGru.Text := '';
end;

procedure TfmManTrf.bPsqGruClick(Sender: TObject);
begin
  inherited;

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

procedure TfmManTrf.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodSub.Text ) <> '' then begin

     EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub '+
                  ' Where EstSub.CodGru = '+ QuotedStr(EdCodGru.Text) +
                  '   and EstSub.CodSub = '+ QuotedStr(EdCodSub.Text) ;
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomSub').AsString ) <> '' then
        EdNomSub.Text := quSql.FieldByName('NomSub').AsString
     else
        fmsgErro('SubGrupo Informado não Encontrado.',EdCodSub);

     end
  else
     EdNomSub.Text := '';
end;

procedure TfmManTrf.bPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdCodClp.Text;
     fmAuxIni.CodGru := EdCodGru.Text;

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

procedure TfmManTrf.EdCodProExit(Sender: TObject);
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

     end;

     if Trim( quSQL.FieldbyName('DscPro').AsString ) <> '' then begin

        EdNomPro.Text := quSql.FieldByName('DscPro').AsString;

        with quSQL,SQL do begin

             Close;
             Text := ' Select VreIte From EstIte'+
                     ' Where CodEmp = '+ QuotedStr(EdCodEmp1.Text) +
                     '   and CodClp = '+ QuotedStr(EdCodClp.Text) +
                     '   and CodGru = '+ QuotedStr(EdCodGru.Text) +
                     '   and CodSub = '+ QuotedStr(EdCodSub.Text) +
                     '   and CodPro = '+ QuotedStr(EdCodPro.Text) ;
             Open;

             EdValOpe.Value := FieldbyName('VreIte').AsFloat;

        end;

        end
     else
        fmsgErro('Item Informado não Encontrado.',EdCodPro);

     end
  else
     EdNomPro.Text := '';
end;

procedure TfmManTrf.bPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdCodClp.Text;
     fmAuxIni.CodGru := EdCodGru.Text;
     fmAuxIni.CodSub := EdCodSub.Text;

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

        with quSQL,SQL do begin

             Close;
             Text := ' Select VreIte From EstIte'+
                     ' Where CodEmp = '+ QuotedStr(EdCodEmp1.Text) +
                     '   and CodClp = '+ QuotedStr(EdCodClp.Text) +
                     '   and CodGru = '+ QuotedStr(EdCodGru.Text) +
                     '   and CodSub = '+ QuotedStr(EdCodSub.Text) +
                     '   and CodPro = '+ QuotedStr(EdCodPro.Text) ;
             Open;

             EdValOpe.Value := FieldbyName('VreIte').AsFloat;

        end;
     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  EdCodPro.SetFocus;

end;

procedure TfmManTrf.bPsqTamClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqTam := TfmPsqTam.Create(Self);

     fmPsqTam.EstTam.Close;

     if Trim( EdCodEmp1.Text ) <> '' then
        fmPsqTam.EstTam.Params[0].AsInteger := 0
     else
        fmPsqTam.EstTam.Params[0].AsInteger := StrToInt( EdCodEmp1.Text );

     fmPsqTam.EstTam.Params[1].AsString  := EdCodClp.Text;
     fmPsqTam.EstTam.Params[2].AsString  := EdCodGru.Text;
     fmPsqTam.EstTam.Params[3].AsString  := EdCodSub.Text;
     fmPsqTam.EstTam.Params[4].AsString  := EdCodPro.Text;
     fmPsqTam.EstTam.Open;

     fmPsqTam.ShowModal;

     if Trim( fmPsqTam.CodTam ) <> '' then EdCodTam.Text := fmPsqTam.CodTam;

  finally   

     FreeAndNil(fmPsqTam);

  end;

  EdCodTam.SetFocus;

end;

procedure TfmManTrf.EdCodTamExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodTam.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstQte '+
                  ' Where EstQte.CodEmp = '+ QuotedStr(EdCodEmp1.Text) +
                  '   and EstQte.CodClp = '+ QuotedStr(EdCodClp.Text) +
                  '   and EstQte.CodGru = '+ QuotedStr(EdCodGru.Text) +
                  '   and EstQte.CodSub = '+ QuotedStr(EdCodSub.Text) +
                  '   and EstQte.CodPro = '+ QuotedStr(EdCodPro.Text) ;
          Open;

     end;

     if quSQL.FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Tamanho Informado para o Item não Encontrado.',EdCodTam);

     end
  else
     fmsgErro('Tamanho Informado para o Item não Encontrado.',EdCodTam);
end;

procedure TfmManTrf.bPsqCorClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEco := TfmPsqEco.Create(Self);

     fmPsqEco.EstQte.Close;

     if Trim( EdCodEmp1.Text ) <> '' then
        fmPsqEco.EstQte.Params[0].AsInteger := 0
     else
        fmPsqEco.EstQte.Params[0].AsInteger := StrToInt( EdCodEmp1.Text );

     fmPsqEco.EstQte.Open;
     
     fmPsqEco.EstQte.Params[1].AsString  := EdCodClp.Text;
     fmPsqEco.EstQte.Params[2].AsString  := EdCodGru.Text;
     fmPsqEco.EstQte.Params[3].AsString  := EdCodSub.Text;
     fmPsqEco.EstQte.Params[4].AsString  := EdCodPro.Text;
     fmPsqEco.EstQte.Params[5].AsString  := EdCodTam.Text;
     fmPsqEco.EstQte.Open;

     fmPsqEco.ShowModal;

     if Trim( fmPsqEco.CodCor ) <> '' then EdCodCor.Text := fmPsqEco.CodCor;

  finally   

     FreeAndNil(fmPsqEco);

  end;
  
  EdCodCor.SetFocus;

end;

procedure TfmManTrf.EdCodCorExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCor From EstCor Where EstCor.CodCor = '+ QuotedStr(EdCodCor.Text);
          Open;


     end;

     if Trim( quSQL.FieldbyName('NomCor').AsString ) <> '' then
        EdNomCor.Text := quSql.FieldByName('NomCor').AsString
     else
        fmsgErro('Cor Informada para o Item não Encontrada.',EdCodCor);

     end
  else
     EdNomCor.Text := '';
end;

procedure TfmManTrf.BbCancClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfmManTrf.BbConfClick(Sender: TObject);
var
  SeqEnf: string;
  SeqSdf: string;
  vbaite: real;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     ActiveControl := nil;

     if EdValOpe.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Valor.',EdValOpe);

     EdTotIcm.Value := fRound(((EdQtdOpe.Value * EdValOpe.Value) * EdIcmOpe.Value)/100,2);
     EdTotIpi.Value := fRound(((EdQtdOpe.Value * EdValOpe.Value) * EdIpiOpe.Value)/100,2);

     if ( Trim(EdCodEmp1.Text) <> '' ) and
        ( Trim(EdCodEmp2.Text) <> '' ) and
        ( Trim(EdCodClp.Text) <> '' ) and
        ( Trim(EdCodGru.Text) <> '' ) and
        ( Trim(EdCodSub.Text) <> '' ) and
        ( Trim(EdCodPro.Text) <> '' ) and
        ( Trim(EdCodTam.Text) <> '' ) and
        ( Trim(EdCodCor.Text) <> '' ) then begin

        if Trim(EdCodEmp1.Text) <> Trim(EdCodEmp2.Text) then begin

           if Trim(EdObsEnf.Text) <> '' then begin

              if GGus_Id <> 1 then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstIte.CstIte,'+
                              '        EstIte.VchIte,'+
                              '        EstIte.VcpIte,'+
                              '        EstIte.VcrIte,'+
                              '        EstIte.VreIte,'+
                              '        EstIte.VprIte,'+
                              '        EstIte.VmeIte,'+
                              '        EstIte.VpfIte'+
                              ' From EstIte'+
                              ' Where EstIte.CodEmp = :CodEmp'+
                              '   and EstIte.CodClp = :CodClp'+
                              '   and EstIte.CodGru = :CodGru'+
                              '   and EstIte.CodSub = :CodSub'+
                              '   and EstIte.CodPro = :CodPro';

                      with Params do begin

                           Params[0].AsInteger := StrToInt(EdCodEmp1.Text);
                           Params[1].AsString  := EdCodClp.Text;
                           Params[2].AsString  := EdCodGru.Text;
                           Params[3].AsString  := EdCodSub.Text;
                           Params[4].AsString  := EdCodPro.Text;

                      end;

                      Open;

                      if sFlgTab = 'Ultimo Preco'           then vbaIte := FieldbyName('CstIte').AsFloat;
                      if sFlgTab = 'Custo Historico'        then vbaIte := FieldbyName('VchIte').AsFloat;
                      if sFlgTab = 'Custo Ponderado'        then vbaIte := FieldbyName('VcpIte').AsFloat;
                      if sFlgTab = 'Custo Referencial'      then vbaIte := FieldbyName('VcrIte').AsFloat;
                      if sFlgTab = 'Custo Historico (G)'    then vbaIte := FieldbyName('VreIte').AsFloat;
                      if sFlgTab = 'Custo Ponderado (G)'    then vbaIte := FieldbyName('VprIte').AsFloat;
                      if sFlgTab = 'Media Ponderada (E)'    then vbaIte := FieldbyName('VmeIte').AsFloat;
                      if sFlgTab = 'Custo da Ultima Compra' then vbaIte := FieldbyName('VpfIte').AsFloat;

                      if EdValOpe.Value <> vbaite then begin

                         if fmsgConf('Valor Informado para Entrada Diferente do Valor de Custo Informado para o Item de '+ FormatFloat('###,###,##0.00',vbaite)+ '.' + #10 + 'Confirma Alteração ? ','E') <> 'SIM' then begin

                            fmsgErro('Lançamento não Pode ser Realizado.',EdValOpe);

                         end;
                      end;
                 end;
              end;
        
              with quSQL,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg From EstQte'+
                           ' Where CodEmp = '+ QuotedStr(EdCodEmp1.Text) +
                           '   and CodClp = '+ QuotedStr(EdCodClp.Text) +
                           '   and CodGru = '+ QuotedStr(EdCodGru.Text) +
                           '   and CodSub = '+ QuotedStr(EdCodSub.Text) +
                           '   and CodPro = '+ QuotedStr(EdCodPro.Text) +
                           '   and CodTam = '+ QuotedStr(EdCodTam.Text) +
                           '   and CodCor = '+ QuotedStr(EdCodCor.Text) ;
                   Open;

              end;

              if quSQL.FieldbyName('QtdReg').AsInteger > 0 then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select Count(*) as QtdReg From EstQte'+
                              ' Where CodEmp = '+ QuotedStr(EdCodEmp2.Text) +
                              '   and CodClp = '+ QuotedStr(EdCodClp.Text) +
                              '   and CodGru = '+ QuotedStr(EdCodGru.Text) +
                              '   and CodSub = '+ QuotedStr(EdCodSub.Text) +
                              '   and CodPro = '+ QuotedStr(EdCodPro.Text) +
                              '   and CodTam = '+ QuotedStr(EdCodTam.Text) +
                              '   and CodCor = '+ QuotedStr(EdCodCor.Text) ;
                      Open;

                 end;

                 if quSQL.FieldbyName('QtdReg').AsInteger > 0 then begin

                    if fMsg('Confirma Operação ?','O') then begin

                       Randomize;
                       SeqSdf := FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                       Randomize;
                       SeqEnf := FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                       try

                          with quSQL,SQL do begin

                               Close;
                               Text := ' Insert Into EstSdf(AnoSdf,SeqSdf,CodEmp,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DteSdf,DteOpe,HreOpe,CodOpe,'+
                                       '                    QtdSdf,CodUsu,FlgSdf,FlgTrg,FlgSeq,ObsSdf)'+
                                       '             Values(:AnoSdf,:SeqSdf,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DteSdf,:DteOpe,:HreOpe,:CodOpe,'+
                                       '                    :QtdSdf,:CodUsu,:FlgSdf,:FlgTrg,:FlgSeq,:ObsSdf)';

                               with Params do begin

                                    Params[00].AsInteger  := StrToInt(copy(FormatDateTime('dd/mm/yyyy',Date),7,4));
                                    Params[01].AsInteger  := 1;
                                    Params[02].AsInteger  := StrToInt(EdCodEmp1.Text);
                                    Params[03].AsString   := EdCodClp.Text;
                                    Params[04].AsString   := EdCodGru.Text;
                                    Params[05].AsString   := EdCodSub.Text;
                                    Params[06].AsString   := EdCodPro.Text;
                                    Params[07].AsString   := EdCodTam.Text;
                                    Params[08].AsString   := EdCodCor.Text;
                                    Params[09].AsDateTime := EdDteOpe.Date;
                                    Params[10].AsDateTime := Date;
                                    Params[11].AsString   := TimeToStr(Time);
                                    Params[12].AsString   := 'ST';
                                    Params[13].AsFloat    := EdQtdOpe.Value;
                                    Params[14].AsInteger  := GUsu_Id;
                                    Params[15].AsString   := SeqSdf;
                                    Params[16].AsString   := ' ';
                                    Params[17].AsString   := ' ';
                                    Params[18].AsString   := EdObsEnf.Text;

                               end;

                               ExecSQL;

                          end;

                          with quSQL,SQL do begin

                               Close;
                               Text := ' Insert Into EstEnf(AnoEnf,SeqEnf,CodEmp,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DteEnf,DteOpe,HreOpe,CodOpe,'+
                                       '                    ValEnf,QtdEnf,PerIcm,ValIcm,PerIpi,ValIpi,ValCst,ClsIpi,CodUsu,FlgEnf,FlgTrg,ValRef,FlgSeq,FlgOpe,ObsEnf)'+
                                       '             Values(:AnoEnf,:SeqEnf,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DteEnf,:DteOpe,:HreOpe,:CodOpe,'+
                                       '                    :ValEnf,:QtdEnf,:PerIcm,:ValIcm,:PerIpi,:ValIpi,:ValCst,:ClsIpi,:CodUsu,:FlgEnf,:FlgTrg,:ValRef,:FlgSeq,:FlgOpe,:ObsEnf)';

                               with Params do begin

                                    Params[00].AsInteger  := StrToInt(copy(FormatDateTime('dd/mm/yyyy',Date),7,4));
                                    Params[01].AsInteger  := 1;
                                    Params[02].AsInteger  := StrToInt(EdCodEmp2.Text);
                                    Params[03].AsString   := EdCodClp.Text;
                                    Params[04].AsString   := EdCodGru.Text;
                                    Params[05].AsString   := EdCodSub.Text;
                                    Params[06].AsString   := EdCodPro.Text;
                                    Params[07].AsString   := EdCodTam.Text;
                                    Params[08].AsString   := EdCodCor.Text;
                                    Params[09].AsDateTime := EdDteOpe.Date;
                                    Params[10].AsDateTime := Date;
                                    Params[11].AsString   := TimeToStr(Time);
                                    Params[12].AsString   := 'ET';
                                    Params[13].AsFloat    := EdValOpe.Value;
                                    Params[14].AsFloat    := EdQtdOpe.Value;
                                    Params[15].AsFloat    := EdIcmOpe.Value;
                                    Params[16].AsFloat    := EdTotIcm.Value;
                                    Params[17].AsFloat    := EdIpiOpe.Value;
                                    Params[18].AsFloat    := EdTotIpi.Value;
                                    Params[19].AsFloat    := 0;
                                    Params[20].AsString   := EdTipIpi.Text;
                                    Params[21].AsInteger  := GUsu_Id;
                                    Params[22].AsString   := SeqEnf;
                                    Params[23].AsString   := ' ';
                                    Params[24].AsFloat    := EdCstOpe.Value;
                                    Params[25].AsString   := ' ';
                                    Params[26].AsString   := ' ';
                                    Params[27].AsString   := EdObsEnf.Text;

                               end;

                               ExecSQL;

                          end;

                          EdCodEmp1.Text := '';
                          EdCodEmp2.Text := '';

                          EdCodPro.Text := '';
                          EdNomPro.Text := '';

                          EdTipIpi.Text := '';

                          if EdCodTam.Enabled then EdCodTam.Text := '';

                          if EdCodCor.Enabled then begin

                             EdCodCor.Text := '';
                             EdNomCor.Text := '';

                          end;

                          EdValOpe.Value := 0;
                          EdQtdOpe.Value := 0;
                          EdIcmOpe.Value := 0;
                          EdTotIcm.Value := 0;
                          EdIpiOpe.Value := 0;
                          EdTotIpi.Value := 0;
                          EdCstOpe.Value := 0;

                          EdDteOpe.Date := Date;

                          if ( GEmp_Id ) > 0 then begin

                             EdCodEmp1.Text := IntToStr( GEmp_Id );

                             with quSQL,SQL do begin

                                  Close;
                                  Text := ' Select NomEmp From GerEmp Where CodEmp = '+ QuotedStr(EdCodEmp1.Text);
                                  Open;

                                  EdNomEmp1.Text := FieldByName('NomEmp').AsString

                             end;
                          end;

                          if fMsg('Repetir Último Grupo & SubGrupo ?','O') then
                             EdCodPro.SetFocus
                          else
                             begin

                             EdCodClp.Text := '';
                             EdNomClp.Text := '';
                             EdCodGru.Text := '';
                             EdNomGru.Text := '';
                             EdCodSub.Text := '';
                             EdNomSub.Text := '';

                             EdCodEmp1.SetFocus;

                          end;

                       except

                          EdCodEmp1.SetFocus;

                       end;
                    end;

                    end
                 else
                    fmsgErro('Item não Encontrado no Estoque da Empresa Informada.',EdCodEmp2);

                 end
              else
                 fmsgErro('Item não Encontrado no Estoque da Empresa Informada.',EdCodEmp1);

              end
           else
              fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Observações.',EdObsEnf);

           end
        else
           fmsgErro('Empresa de Origem Igual a Empresa de Destino.',EdCodEmp1);

        end
     else
        fmsgErro('Empresa e Codigo do Item não Informado.',EdCodEmp1);

     end
  else
     fmsgErro(GMensagem,Nil);
     
end;

procedure TfmManTrf.FormShow(Sender: TObject);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select * From EstPar';
       Open;

       OpePadrao := FieldbyName('OpeEnt').AsString;

       sFlgTab := FieldbyName('FlgTab').AsString;

       if FieldbyName('FlgTam').AsString = 'Nao' then begin

          EdCodTam.Text := 'UN';

          EdCodTam.Enabled := False;

          EdCodTam.Font.Style := [fsBold]

       end;

       if FieldbyName('TamCor').AsString = 'Nao' then begin

          EdCodCor.Text := 'UN';

          with quSql,SQL do begin

               Close;
               Text := ' Select NomCor From EstCor Where EstCor.CodCor = '+ QuotedStr(EdCodCor.Text);
               Open;

               EdNomCor.Text := FieldByName('NomCor').AsString

          end;

          EdCodCor.Enabled := False;

          EdCodCor.Font.Style := [fsBold]

       end;
  end;

  EdDteOpe.Date := Date;

  if GEmp_Id > 0 then begin

     EdCodEmp1.Text := IntToStr( GEmp_Id );

     with quSQL,SQL do begin

          Close;
          Text := 'Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdCodEmp1.Text);
          Open;

          EdNomEmp1.Text := FieldByName('NomEmp').AsString

     end;
  end;
end;

procedure TfmManTrf.EdIcmOpeExit(Sender: TObject);
begin
  inherited;
  EdTotIcm.Value := fRound(((EdQtdOpe.Value * EdValOpe.Value) * EdIcmOpe.Value)/100,2);
end;

procedure TfmManTrf.EdIpiOpeExit(Sender: TObject);
begin
  inherited;
  EdTotIpi.Value := fRound(((EdQtdOpe.Value * EdValOpe.Value) * EdIpiOpe.Value)/100,2);
end;

procedure TfmManTrf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManTrf.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManTrf := Nil;
end;

procedure TfmManTrf.EdCodEmp2Exit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodEmp2.Text ) <> '' then begin

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
          Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdCodEmp2.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('NomEmp').AsString ) <> '' then
             EdNomEmp2.Text := FieldByName('NomEmp').AsString
          else
             begin

             EdNomEmp2.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdCodEmp2);

          end;
     end;

     end
  else
     EdNomEmp2.Text := '';
end;

procedure TfmManTrf.bPsqEmp2Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdNomEmp2.Text := fmPsqEmp.NomEmp;
        EdCodEmp2.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;

  if Trim( EdCodEmp2.Text ) <> '' then EdCodClp.SetFocus;

end;

end.
