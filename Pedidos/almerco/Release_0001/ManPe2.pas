unit ManPe2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, dxDBColorPickEdit,
  dxDBColorMemo, dxDBColorLookupEdit, dxDBColorEdit, dxColorPickEdit;

type
  TfmManPe2 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    EdCepCli: TdxDBColorEdit;
    EdTenCli: TdxDBColorEdit;
    EdEndCli: TdxDBColorEdit;
    EdRefCli: TdxDBColorEdit;
    EdBaiCli: TdxDBColorEdit;
    EdCidCli: TdxDBColorEdit;
    EdNumCli: TdxDBColorEdit;
    Label1: TLabel;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    EdUfeCli: TdxDBColorPickEdit;
    Label2: TLabel;
    sbPsqCep: TSpeedButton;
    Label61: TLabel;
    EdCgeCli: TdxDBColorEdit;
    Label62: TLabel;
    EdIneCli: TdxDBColorEdit;
    Label7: TLabel;
    EdNomEnt: TdxDBColorEdit;
    EdOb1Res: TdxDBColorEdit;
    EdOb2Res: TdxDBColorEdit;
    EdOb3Res: TdxDBColorEdit;
    EdOb4Res: TdxDBColorEdit;
    EdOb5Res: TdxDBColorEdit;
    EdOb6Res: TdxDBColorEdit;
    EdOb7Res: TdxDBColorEdit;
    EdOb8Res: TdxDBColorEdit;
    CbNomTit: TdxColorPickEdit;
    Label40: TLabel;
    Label39: TLabel;
    EdId_FinUfe: TdxDBColorEdit;
    pnId_FinUfe: TPanel;
    EdId_FinCie: TdxDBColorEdit;
    EdNomCie: TdxDBColorEdit;
    pnNomCie: TPanel;
    FinCieNOMCIE: TStringField;
    DsFinCie: TwwDataSource;
    LbText: TLabel;
    SpeedButton1: TSpeedButton;
    FinCie: TwwQuery;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCepCliExit(Sender: TObject);
    procedure sbPsqCepClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCgeCliExit(Sender: TObject);
    procedure EdTenCliExit(Sender: TObject);
    procedure CbNomTitChange(Sender: TObject);
    procedure EdId_FinCieExit(Sender: TObject);
    procedure EdId_FinCieEnter(Sender: TObject);
    procedure EdId_FinCieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EdUfeCliExit(Sender: TObject);
    procedure EdNomEntEnter(Sender: TObject);
  private
    sTenCli : string;
    cepanterior : string;
    UfeCli_Ant : string;
    Id_FinCie_Ant : integer;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPe2: TfmManPe2;

implementation

uses dxDemoUtils, ShellApi, Bbgeral, Bbfuncao, BbMensag, ManPed, ManPe3,
     PsqCep, ManGDB, ManE04, ManE05, ManPe4, ImpF02, AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmManPe2.FormCreate(Sender: TObject);
begin
  inherited;
  fmManPed.PedRes.Edit;
end;

procedure TfmManPe2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManPe2.FormShow(Sender: TObject);
var
  Linha  : string;
  NroLin : integer;
  SeqLin : integer;
begin
  inherited;
  if Trim(fmManPed.PedResUfeCli.Value) <> '' then begin

     if fmManPed.PedResId_FinUfe.Value = 0 then begin

        with fmManPed.quSQL,SQL do begin

             Close;
             Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManPed.PedResUfeCli.Value);
             Open;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then
                fmManPed.PedResId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
             else
                fmManPed.PedResId_FinUfe.Clear;

        end;
     end;
  end;

  Id_FinCie_Ant := fmManPed.PedResId_FinCie.Value;

  UfeCli_Ant := fmManPed.PedResUfeCli.Value;

  EdNomEnt.Text := fmManPed.PedResNomEnt.Value;
  EdCepCli.Text := fmManPed.PedResCepCli.Value;
  EdTenCli.Text := fmManPed.PedResTenCli.Value;
  EdEndCli.Text := fmManPed.PedResEndCli.Value;
  EdNumCli.Text := fmManPed.PedResNumCli.Value;
  EdRefCli.Text := fmManPed.PedResRefCli.Value;
  EdBaiCli.Text := fmManPed.PedResBaiCli.Value;
  EdCidCli.Text := fmManPed.PedResCidCli.Value;
  EdUfeCli.Text := fmManPed.PedResUfeCli.Value;

  if fmManPed.PedResId_FinUfe.Value > 0 then
     pnId_FinUfe.Caption := IntToStr(fmManPed.PedResId_FinUfe.Value)
  else
     pnId_FinUfe.Caption := '';

  if fmManPed.PedResId_FinCie.Value = 0 then begin

     if fmManPed.PedResId_FinUfe.Value > 0 then begin

        with fmManPed.quSQL,SQL do begin

             Close;
             Text := ' Select FinCie.Id_FinCie'+
                     ' From FinCie'+
                     ' Where FinCie.Id_FinUfe = '+ QuotedStr(IntToStr(fmManPed.PedResId_FinUfe.Value)) +
                     '   and FinCie.NomCie = '+ QuotedStr(fmManPed.PedResCidCli.Value);
             Open;

             if FieldbyName('Id_FinCie').AsInteger > 0 then
                fmManPed.PedResId_FinCie.Value := FieldbyName('Id_FinCie').AsInteger
             else
                fmManPed.PedResId_FinCie.Clear;

        end;
     end;
  end;

  FinCie.Close;
  FinCie.Params[0].AsInteger := fmManPed.PedResId_FinCie.Value;
  FinCie.Open;

  pnNomCie.Caption := FinCieNomCie.Value;

  cepanterior := fmManPed.PedResCepCli.Value;

  if Trim( fmManPed.PedResCgeCli.Value ) <> '' then begin

     if Length(Trim( fmManPed.PedResCgeCli.Value )) > 11 then
        fmManPed.PedResCgeCli.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManPed.PedResCgeCli.EditMask := '!999.999.999\-99;0;';

     end
  else
     fmManPed.PedResCgeCli.EditMask := '';

  sTenCli := fmManPed.PedResTenCli.Value;

  if Trim( sTenCli ) <> '' then begin

     NroLin := 0;

     for SeqLin := 1 to 605 do begin

         Linha := CbNomTit.Items.Strings[SeqLin];

         Linha := copy(Linha,pos('(',Linha)+ 1,40);

         Linha := copy(Linha,1,pos(')',Linha)-1);

         if Trim( Linha ) = sTenCli then begin

            NroLin := SeqLin;

            Break;

         end;
     end;

     CbNomTit.ItemIndex := NroLin;

     end
  else
     CbNomTit.Text := '';

  EdNomEnt.SetFocus;

end;

procedure TfmManPe2.bRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManPe2.bContinuarClick(Sender: TObject);
var
  Id_PedRe2 : integer;
begin

  ActiveControl := nil;

  fmManPed.PedResNomEnt.Value := Trim(fmManPed.PedResNomEnt.Value);
  fmManPed.PedResCepCli.Value := Trim(fmManPed.PedResCepCli.Value);
  fmManPed.PedResTenCli.Value := Trim(fmManPed.PedResTenCli.Value);    
  fmManPed.PedResEndCli.Value := Trim(fmManPed.PedResEndCli.Value);
  fmManPed.PedResNumCli.Value := Trim(fmManPed.PedResNumCli.Value);      
  fmManPed.PedResRefCli.Value := Trim(fmManPed.PedResRefCli.Value);      
  fmManPed.PedResBaiCli.Value := Trim(fmManPed.PedResBaiCli.Value);
  fmManPed.PedResCidCli.Value := Trim(fmManPed.PedResCidCli.Value);
  fmManPed.PedResUfeCli.Value := Trim(fmManPed.PedResUfeCli.Value);
  fmManPed.PedResCgeCli.Value := Trim(fmManPed.PedResCgeCli.Value);
  fmManPed.PedResIneCli.Value := Trim(fmManPed.PedResIneCli.Value);
  fmManPed.PedResOb1Res.Value := Trim(fmManPed.PedResOb1Res.Value);
  fmManPed.PedResOb2Res.Value := Trim(fmManPed.PedResOb2Res.Value);
  fmManPed.PedResOb3Res.Value := Trim(fmManPed.PedResOb3Res.Value);
  fmManPed.PedResOb4Res.Value := Trim(fmManPed.PedResOb4Res.Value);
  fmManPed.PedResOb5Res.Value := Trim(fmManPed.PedResOb5Res.Value);
  fmManPed.PedResOb6Res.Value := Trim(fmManPed.PedResOb6Res.Value);
  fmManPed.PedResOb7Res.Value := Trim(fmManPed.PedResOb7Res.Value);
  fmManPed.PedResOb8Res.Value := Trim(fmManPed.PedResOb8Res.Value);

  with fmManPed.PedRes do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManPed.PedRes.State = dsBrowse then fmManPed.PedRes.Edit;

          EdNomEnt.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  if fmManPed.PedResIntFin.Value = 'Sim' then begin

     if Trim(fmManPed.PedParTipPag.Value) = 'Lancamento manual' then begin

        try

           fmManPe4 := TfmManPe4.Create(Self);
           fmManPe4.ShowModal;

        finally

           FreeAndNil(fmManPe4);

        end;

        end
     else
        begin
        
        try

           fmManPe3 := TfmManPe3.Create(Self);
           fmManPe3.ShowModal;

        finally

           FreeAndNil(fmManPe3);

        end;
     end;   

     if fmManPed.Finalizar = 'S' then
        Close
     else
        begin

        fmManPed.PedRes.Close;
        fmManPed.PedRes.Open;

        fmManPed.PedRes.Edit;

        EdNomEnt.SetFocus;

     end;

     end
  else
     begin

     if fMsg('Confirma informações ?','O') then begin

        Id_PedRe2 := fmManPed.PedRe2Id_PedRe2.Value;

        fmManPed.PedRes.Edit;
        
        fmManPed.PedResSitRes.Value := 'Aguardando Separacao de Estoque';

        with fmManPed.PedRes do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                fmManPed.Finalizar := 'N';

                if fmManPed.PedRes.State = dsBrowse then fmManPed.PedRes.Edit;

                EdNomEnt.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManPed.PedRes.Close;
        fmManPed.PedRes.Open;

        fmManPed.PedRe2.Close;
        fmManPed.PedRe2.Open;

        fmManPed.PedRe2.Locate('Id_PedRe2',Id_PedRe2,[LoPartialKey]);

        fmManPed.Finalizar := 'S';

        if fMsg('Confirma impressão do pedido ?','O') then begin

           try

              fmManE04 := TfmManE04.Create(Self);

              fmManE04.PedRes.Close;
              fmManE04.PedRes.Params[0].AsInteger := fmManPed.PedResId_PedRes.Value;
              fmManE04.PedRes.Open;

              fmManE04.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE04);

           end;
        end;

        if fMsg('Imprime via de separação do pedido ?','O') then begin

           fmManPed.PedRes.Edit;

           fmManPed.PedResFlgAtu.Value := 'E';

           if Trim(fmManPed.PedResCodEan.Value) = '' then fmManPed.PedResCodEan.Value := fGeraCB2(fNumZeros(IntToStr(fmManPed.PedResId_PedRes.Value),12));

           fmManPed.PedResFlgEst.Value := 'Sim';

           with fmManPed.PedRes do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if fmManPed.PedRes.State = dsBrowse then fmManPed.PedRes.Edit;

                   EdNomEnt.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           fmManPed.PedRes.Close;
           fmManPed.PedRes.Open;

           try

              fmManE05 := TfmManE05.Create(Self);

              fmManE05.PedRes.Close;
              fmManE05.PedRes.Params[0].AsInteger := fmManPed.PedResId_PedRes.Value;
              fmManE05.PedRes.Open;

              fmManE05.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE05);

           end;
        end;

        if fmManPed.PedParFlgCot.Value = 'Sim' then begin

           if fmManPed.PedResQtiRe4.Value > 0 then begin

              if fMsg('Confirma impressão da via de cotação para os fornecedores ?','O') then begin

                 try

                    fmImpF02 := TfmImpF02.Create(Self);

                    fmImpF02.Id_PedRes := fmManPed.PedResId_PedRes.Value;

                    fmImpF02.PedRe4.Close;
                    fmImpF02.PedRe4.Params[0].AsInteger := fmManPed.PedResId_PedRes.Value;
                    fmImpF02.PedRe4.Open;

                    fmImpF02.ShowModal;

                 finally

                    FreeAndNil(fmImpF02);

                 end;
              end;
           end;     
        end;

        Close;
        
        end
     else
        EdNomEnt.SetFocus;

  end;   
end;

procedure TfmManPe2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManPed.PedRes.State <> dsBrowse then fmManPed.PedRes.CancelUpdates;
end;

procedure TfmManPe2.EdCepCliExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManPed.PedResCepCli.Value)) <> '' then begin

     if fmManPed.PedResCepCli.Value <> cepanterior then begin

        with fmManPed.quSql,SQL do begin

             Close;
             Text := ' Select * From GerCep '+
                     ' Where NumCep = '''+fmManPed.PedResCepCli.Value+'''';
             Open;

        end;

        fmManPed.PedResEndCli.Value := fLimpaCep(fmManPed.quSql.FieldByName('EndCep').AsString);
        fmManPed.PedResTenCli.Value := fmManPed.quSql.FieldByName('TipCep').AsString;
        fmManPed.PedResBaiCli.Value := fmManPed.quSql.FieldByName('BaiCep').AsString;
        fmManPed.PedResCidCli.Value := fmManPed.quSql.FieldByName('CidCep').AsString;
        fmManPed.PedResUfeCli.Value := fmManPed.quSql.FieldByName('SigUfe').AsString;

     end;
  end;
end;

procedure TfmManPe2.sbPsqCepClick(Sender: TObject);
begin

  try

     fmPsqCep := TfmPsqCep.Create(Self);

     fmPsqCep.ShowModal;

     if Trim( fmPsqCep.sCepCli ) <> '' then begin

        if Trim( fmPsqCep.sCepCli ) <> '' then fmManPed.PedResCepCli.Value := fmPsqCep.sCepCli;
        if Trim( fmPsqCep.sTenCli ) <> '' then fmManPed.PedResTenCli.Value := fmPsqCep.sTenCli;
        if Trim( fmPsqCep.sEndCli ) <> '' then fmManPed.PedResEndCli.Value := fmPsqCep.sEndCli;
        if Trim( fmPsqCep.sBaiCli ) <> '' then fmManPed.PedResBaiCli.Value := fmPsqCep.sBaiCli;
        if Trim( fmPsqCep.sCidCli ) <> '' then fmManPed.PedResCidCli.Value := fmPsqCep.sCidCli;
        if Trim( fmPsqCep.sUfeCli ) <> '' then fmManPed.PedResUfeCli.Value := fmPsqCep.sUfeCli;

     end;

  finally

     FreeAndNil(fmPsqCep);

  end;

  EdNumCli.SetFocus;

end;

procedure TfmManPe2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe2.EdCgeCliExit(Sender: TObject);
begin
  inherited;

  if Trim( fmManPed.PedResCgeCli.Value ) <> '' then begin

     if Length(Trim( fmManPed.PedResCgeCli.Value )) > 11 then
        fmManPed.PedResCgeCli.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManPed.PedResCgeCli.EditMask := '!999.999.999\-99;0;';

     end
  else
     fmManPed.PedResCgeCli.EditMask := '';

end;

procedure TfmManPe2.EdTenCliExit(Sender: TObject);
var
  Linha  : string;
  NroLin : integer;
  SeqLin : integer;
begin
  inherited;
  if fmManPed.PedResTenCli.Value <> sTenCli then begin

     sTenCli := fmManPed.PedResTenCli.Value;

     if Trim( sTenCli ) <> '' then begin

        NroLin := 0;

        for SeqLin := 1 to 605 do begin

            Linha := CbNomTit.Items.Strings[SeqLin];

            Linha := copy(Linha,pos('(',Linha)+ 1,40);

            Linha := copy(Linha,1,pos(')',Linha)-1);

            if Trim( Linha ) = sTenCli then begin

               NroLin := SeqLin;

               Break;

            end;
        end;

        CbNomTit.ItemIndex := NroLin;

        end
     else
        CbNomTit.Text := '';

  end;      
end;

procedure TfmManPe2.CbNomTitChange(Sender: TObject);
var
  Linha : string;
begin
  inherited;

  Linha := copy(CbNomTit.Text,pos('(',CbNomTit.Text)+ 1,40);

  Linha := Trim( copy(Linha,1,pos(')',Linha)-1) );

  if Linha <> sTenCli then begin

     sTenCli := Linha;

     fmManPed.PedResTenCli.Value := Linha;

  end;
end;

procedure TfmManPe2.EdId_FinCieExit(Sender: TObject);
begin
  inherited;
  if fmManPed.PedResId_FinCie.Value <> Id_FinCie_Ant then begin

     Id_FinCie_Ant := fmManPed.PedResId_FinCie.Value;

     with fmManPed.quSQL,SQL do begin

          Close;
          Text := ' Select FinCie.NomCie,'+
                  '        FinCie.SigNfe '+
                  ' From FinCie'+
                  ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCie_Ant));
          Open;

          pnNomCie.Caption := Trim(FieldbyName('NomCie').AsString)+' IBGE: '+Trim(FieldbyName('SigNFE').AsString);

     end;
  end;
end;

procedure TfmManPe2.EdId_FinCieEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmManPe2.EdId_FinCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if fmManPed.PedResId_FinUfe.Value > 0 then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Municipios';

           fmAuxIni.Id_FinUfe := fmManPed.PedResId_FinUfe.Value;

           fmAuxIni.ShowModal;

           if fmAuxIni.Id_FinCie > 0 then begin

              fmManPed.PedResId_FinCie.Value := fmAuxIni.Id_FinCie;

              FinCie.Close;
              FinCie.Params[0].AsInteger := fmManPed.PedResId_FinCie.Value;
              FinCie.Open;

              pnNomCie.Caption := FinCieNomCie.Value;

           end;

         finally

           FreeAndNil(fmAuxIni);

        end;

        EdId_FinCie.SetFocus;

        end
     else
        fmsgErro('Código para UF da NFe não informado.',EdId_FinCie);

  end;

  if key = 113 then begin {F2 - Inteligente}

     if fmManPed.PedResId_FinUfe.Value > 0 then begin
     
        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Municipios';

           fmAuxPsq.Id_FinUfe := fmManPed.PedResId_FinUfe.Value;

           fmAuxPsq.ShowModal;

           if fmAuxPsq.Id_FinCie > 0 then begin

              fmManPed.PedResId_FinCie.Value := fmAuxPsq.Id_FinCie;

              FinCie.Close;
              FinCie.Params[0].AsInteger := fmManPed.PedResId_FinCie.Value;
              FinCie.Open;

              pnNomCie.Caption := FinCieNomCie.Value;

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        EdId_FinCie.SetFocus;

        end
     else
        fmsgErro('Código para UF da NFe não informado.',EdId_FinCie);

  end;
end;

procedure TfmManPe2.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if fmManPed.PedResId_FinUfe.Value > 0 then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManPed.PedResId_FinUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then begin

           fmManPed.PedResId_FinCie.Value := fmAuxIni.Id_FinCie;

           FinCie.Close;
           FinCie.Params[0].AsInteger := fmManPed.PedResId_FinCie.Value;
           FinCie.Open;

           pnNomCie.Caption := FinCieNomCie.Value;

        end;

      finally

        FreeAndNil(fmAuxIni);

     end;

     EdId_FinCie.SetFocus;

     end
  else
     fmsgErro('Código para UF da NFe não informado.',EdId_FinCie);
end;

procedure TfmManPe2.EdUfeCliExit(Sender: TObject);
begin
  inherited;
  if fmManPed.PedResUfeCli.Value <> UfeCli_Ant then begin

     UfeCli_Ant := fmManPed.PedResUfeCli.Value;

     fmManPed.PedResId_FinCie.Clear;

     with fmManPed.quSQL,SQL do begin

          Close;
          Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManPed.PedResUfeCli.Value);
          Open;

          if FieldbyName('Id_FinUfe').AsInteger > 0 then
             fmManPed.PedResId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
          else
             fmManPed.PedResId_FinUfe.Clear;

     end;

     if fmManPed.PedResId_FinUfe.Value > 0 then begin

        with fmManPed.quSQL,SQL do begin

             Close;
             Text := ' Select FinCie.Id_FinCie'+
                     ' From FinCie'+
                     ' Where FinCie.Id_FinUfe = '+ QuotedStr(IntToStr(fmManPed.PedResId_FinUfe.Value)) +
                     '   and FinCie.NomCie = '+ QuotedStr(fmManPed.PedResCidCli.Value);
             Open;

             if FieldbyName('Id_FinCie').AsInteger > 0 then
                fmManPed.PedResId_FinCie.Value := FieldbyName('Id_FinCie').AsInteger
             else
                fmManPed.PedResId_FinCie.Clear;

        end;
     end;

     FinCie.Close;
     FinCie.Params[0].AsInteger := fmManPed.PedResId_FinCie.Value;
     FinCie.Open;

     pnNomCie.Caption := FinCieNomCie.Value;
     
  end;
end;

procedure TfmManPe2.EdNomEntEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := '';
end;

end.

