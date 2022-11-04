unit ManSep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxDBELib, dxColorEdit, dxColorPickEdit;

type
  TfmManSep = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label2: TLabel;
    grRes: ThGrid;
    quSql: TwwQuery;
    Panel1: TPanel;
    EdPsqId_PedRes: TdxColorEdit;
    bRetornar: TSpeedButton;
    pnDteRes: TPanel;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
    PedResTOTGER: TFloatField;
    PedResSLDGER: TFloatField;
    bImprimir: TSpeedButton;
    pnImpresso: TPanel;
    UpRes: TUpdateSQL;
    PedRe2: TwwQuery;
    PedRe2DESRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    DsRe2: TwwDataSource;
    grRe2: ThGrid;
    bLiberar: TSpeedButton;
    bAtualizar: TBitBtn;
    pnApeTra: TPanel;
    PedResDTERES: TDateTimeField;
    PedResTOTRES: TFloatField;
    PedResTOTIPI: TFloatField;
    PedResAPETRA: TStringField;
    PedResFLGIMP: TStringField;
    PedResCODVEN: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResCODTRA: TIntegerField;
    PedResCODFIL: TIntegerField;
    PedResLANEST: TStringField;
    PedResQTDIMP: TIntegerField;
    PedResSITRES: TStringField;
    PedResDTFRES: TDateTimeField;
    PedResHRERES: TStringField;
    PedResUFERES: TStringField;
    PedRe2SLDRE2: TFloatField;
    PedResCODATD: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTIPPFA: TStringField;
    PedResDSRPFA: TStringField;
    PedResNOMCLI: TStringField;
    PedResNOMPFA: TStringField;
    PedResCLIENTE: TStringField;
    PedResID_PEDRES: TIntegerField;
    PedResQTIRE2: TIntegerField;
    PedResFLGATU: TStringField;
    PedRe2CODITE: TStringField;
    PedResFLGEST: TStringField;
    PedResCODEAN: TStringField;
    PedPar: TwwQuery;
    PedParUSADEC: TStringField;
    pnQtdReg: TPanel;
    pnTotReg: TPanel;
    PedResFLGANT: TStringField;
    rgTipo: TdxColorPickEdit;
    PedResID_SEPPED: TIntegerField;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure bLiberarClick(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure batualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure PedResNOMPFAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure PedResCLIENTEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure rgTipoChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    sBase     : string;
    Id_PedRes : integer;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManSep : TfmManSep;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, AuxPsq,
     ManE07, ManEve, PsqHre;

{$R *.DFM}

procedure TfmManSep.CountRegistros;
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(PedRes.TotGer) as TotReg,'+
               '        Count(*) as QtdReg'+
               ' From PedRes'+
               ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Separacao de Estoque');

       if Id_PedRes > 0 then Text := Text + ' and PedRes.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes));

       Open;

       if FieldbyName('QtdReg').AsInteger > 0 then begin

          pnQtdReg.Caption := IntToStr(FieldbyName('QtdReg').AsInteger)+' Pedido(s)';

          pnTotReg.Caption := FormatFloat('###,###,##0.00',FieldbyName('TotReg').AsFloat)+' ';
          
          end
       else
          begin

          pnQtdReg.Caption := '0 Pedido(s)';

          pnTotReg.Caption := '0'+ decimalseparator +'00 ';
          
       end;   
  end;

  Id_PedRes := 0;

end;

procedure TfmManSep.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 115 then bLiberar.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

  if key = 117 then bRetornar.OnClick(Sender);

end;

procedure TfmManSep.FormShow(Sender: TObject);
begin
  inherited;

  if PedParUsaDec.Value = 'Nao' then PedRe2QtpRe2.DisplayFormat := '###,###,##0';

  with PedRes,SQL do begin

       Close;
       Text := sBase +
               ' and PedRes.FlgImp = '+ QuotedStr('Nao') +
               ' Order by PedRes.Id_PedRes';
       Open;

  end;

  CountRegistros;

  with quSQL,SQL do begin

       Close;
       Text := ' Select UsaDec From PedPar';
       Open;

       if FieldbyName('UsaDec').AsString = 'Sim' then
          PedRe2SldRe2.DisplayFormat := '###,###,##0.0000'
       else
          PedRe2SldRe2.DisplayFormat := '###,###,##0';

  end;

  EdPsqId_PedRes.SetFocus;

end;

procedure TfmManSep.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSep.EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManSep.bImprimirClick(Sender: TObject);
begin
  inherited;
  if PedResId_PedRes.Value > 0 then begin

     Id_PedRes := PedResId_PedRes.Value;

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  ' and PedRes.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes));
          Open;

     end;

     CountRegistros;

     if PedResId_PedRes.Value > 0 then begin

        if PedResId_SepPed.Value = 0 then begin

           if fMsg('Imprime via de separação do pedido ?','O') then begin

              PedRes.Edit;

              PedResFlgAtu.Value := 'E';

              if Trim(PedResCodEan.Value) = '' then PedResCodEan.Value := fGeraCB2(fNumZeros(IntToStr(PedResId_PedRes.Value),12));

              PedResFlgEst.Value := 'Sim';

              with PedRes do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

                      grRes.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              PedRes.Close;
              PedRes.Open;

              try

                //Rolando - 06/abril/2010
                //Alterei o order by dos itens para a Compell
                //
                 fmManE07 := TfmManE07.Create(Self);

                 fmManE07.PedRes.Close;
                 fmManE07.PedRes.Params[0].AsInteger := PedResId_PedRes.Value;
                 fmManE07.PedRes.Open;

                 fmManE07.RLReport1.PreviewModal;

              finally

                 FreeAndNil(fmManE07);

              end;

              if fMsg('Via de separação impressa corretamente ?','O') then begin

                 PedRes.Edit;

                 PedResFlgAtu.Value := '*';

                 PedResQtdImp.Value := PedResQtdImp.Value + 1;

                 PedResFlgImp.Value := 'Sim';

                 with PedRes do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

                         grRes.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;

                 PedRes.Close;
                 PedRes.Open;

              end;
           end;

           end
        else
           fmsgErro('Operação não pode ser realizada. Pedido em processo de separação no ckeckout.',Nil);
           
     end;   
   end;
end;

procedure TfmManSep.bLiberarClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedResId_PedRes.Value > 0 then begin

        Id_PedRes := PedResId_PedRes.Value;

        with PedRes,SQL do begin

             Close;
             Text := sBase +
                     ' and PedRes.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes));
             Open;

        end;

        CountRegistros;

        if PedResId_PedRes.Value > 0 then begin

           if PedResId_SepPed.Value = 0 then begin

              if PedResFlgImp.Value = 'Sim' then begin

                 if fMsg('Confirma liberação da separacao do pedido para faturamento ?','O') then begin

                    PedRes.Edit;

                    PedResSitRes.Value := 'Aguardando Liberacao para Faturamento';

                    with PedRes do begin

                         fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                         try

                            ApplyUpdates; {Tenta aplicar as alterações};

                            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                         except

                            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                            if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

                            grRes.SetFocus;

                            raise;

                         end;

                         CommitUpdates; {sucesso!, limpa o cache...}

                    end;

                    EdPsqId_PedRes.Text := '';

                    with PedRes,SQL do begin

                         Close;
                         Text := sBase + ' Order by PedRes.Id_PedRes';
                         Open;

                    end;

                    CountRegistros;

                 end;

                 end
              else
                 fmsgErro('Operação não pode ser realizada. Via para separação do pedido não impressa.',Nil);

              end
           else
              fmsgErro('Operação não pode ser realizada. Pedido em processo de separação no ckeckout.',Nil);

        end;
     end;

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManSep.bRetornarClick(Sender: TObject);
var
  sCorreto : string;
begin                                                                                                                                                                                                                                 
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedResId_PedRes.Value > 0 then begin

        Id_PedRes := PedResId_PedRes.Value;

        with PedRes,SQL do begin

             Close;
             Text := sBase +
                     ' and PedRes.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes));
             Open;

        end;

        CountRegistros;
        
        if PedResId_SepPed.Value = 0 then begin

           try

              fmManEve := TfmManEve.Create(Self);

              fmManEve.Caption := 'Aguardando separacao de estoque - Retornar para o vendedor';

              fmManEve.Id_PedRes := PedResId_PedRes.Value;

              fmManEve.PedVen.Close;
              fmManEve.PedVen.Params[0].AsInteger := -1;
              fmManEve.PedVen.Open;

              fmManEve.ShowModal;

              sCorreto := fmManEve.Liberar;

           finally

              FreeAndNil(fmManEve);

           end;

           if sCorreto = 'Sim' then begin

              EdPsqId_PedRes.Text := '';

              with PedRes,SQL do begin

                   Close;
                   Text := sBase + ' Order by PedRes.Id_PedRes';
                   Open;

              end;

              CountRegistros;

           end;

           end
        else
           fmsgErro('Operação não pode ser realizada. Pedido em processo de separação no ckeckout.',Nil);
           
     end;

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManSep.batualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqId_PedRes.Text ) <> '' then begin

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  ' and PedRes.Id_PedRes = '+ QuotedStr(EdPsqId_PedRes.Text);
          Open;

     end;
     
     if PedResId_PedRes.Value > 0 then Id_PedRes := PedResId_PedRes.Value;

     end
  else
     begin

     if rgTipo.ItemIndex = 0 then begin

        with PedRes,SQL do begin

             Close;
             Text := sBase +
                     ' and PedRes.FlgImp = '+ QuotedStr('Sim') +
                     ' Order by PedRes.Id_PedRes';
             Open;

        end;
     end;

     if rgTipo.ItemIndex = 1 then begin

        with PedRes,SQL do begin

             Close;
             Text := sBase +
                     ' and PedRes.FlgImp = '+ QuotedStr('Nao') +
                     ' Order by PedRes.Id_PedRes';
             Open;

        end;
     end;

     if rgTipo.ItemIndex = 2 then begin

        with PedRes,SQL do begin

             Close;
             Text := sBase + ' Order by PedRes.Id_PedRes';
             Open;

        end;
     end;
  end;

  CountRegistros;

end;

procedure TfmManSep.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManSep.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManSep := nil;
end;

procedure TfmManSep.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnApeTra.Caption := PedResApeTra.Value;

  if PedResFlgImp.Value = 'Sim' then
     pnImpresso.Caption := 'Impresso'
  else
     pnImpresso.Caption := 'Nao Impresso';

  if PedResId_PedRes.Value > 0 then
     pnDteRes.Caption := ' Emitido em ' + DateToStr(PedResDteRes.Value)
  else
     pnDteRes.Caption := ' Emitido em ';
     
end;

procedure TfmManSep.PedResNOMPFAGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if PedResId_PedRes.Value > 0 then
     Text := PedResCodPfa.Value+ ' - ' +PedResDsrPfa.Value
  else
     Text := ' ';
end;

procedure TfmManSep.PedResCLIENTEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if PedResId_PedRes.Value > 0 then
     Text := IntToStr(PedResCodCli.Value)+ ' - ' +PedResNomCli.Value
  else
     Text := ' ';
end;

procedure TfmManSep.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.Id_PedRes,'+
           '        PedRes.DteRes,'+
           '        PedRes.UfeRes,'+
           '        PedRes.HreRes,'+
           '        PedRes.DtfRes,'+
           '        PedRes.CodPfa,'+
           '        PedRes.TipPfa,'+
           '        PedRes.CodVen,'+
           '        PedRes.CodAtd,'+
           '        PedRes.CodCli,'+
           '        PedRes.CodTra,'+
           '        PedRes.CodFil,'+
           '        PedRes.LanEst,'+
           '        PedRes.FlgEst,'+
           '        PedRes.QtiRe2,'+
           '        PedRes.QtdImp,'+
           '        PedRes.FlgAtu,'+
           '        PedRes.TotRes,'+
           '        PedRes.TotIpi,'+
           '        PedRes.TotGer,'+
           '        PedRes.SldGer,'+
           '        PedRes.FlgImp,'+
           '        PedRes.FlgAnt,'+
           '        PedRes.CodEan,'+
           '        PedRes.Id_SepPed,'+
           '        PedRes.SitRes,'+
           '        FinTra.ApeTra,'+
           '        EstPfa.DsrPfa,'+
           '        FinCli.NomCli '+
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           '             LEFT JOIN FinTra ON (PedRes.CodTra = FinTra.CodTra)'+
           '             LEFT JOIN EstPfa ON (PedRes.CodPfa = EstPfa.CodPfa '+
           '                             AND  PedRes.TipPfa = EstPfa.TipPfa)'+
           ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Separacao de Estoque');

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;
end;

procedure TfmManSep.rgTipoChange(Sender: TObject);
begin
  inherited;
  if rgTipo.ItemIndex = 0 then begin

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  ' and PedRes.FlgImp = '+ QuotedStr('Sim') +
                  ' Order by PedRes.Id_PedRes';
          Open;

     end;
  end;

  if rgTipo.ItemIndex = 1 then begin

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  ' and PedRes.FlgImp = '+ QuotedStr('Nao') +
                  ' Order by PedRes.Id_PedRes';
          Open;

     end;
  end;

  if rgTipo.ItemIndex = 2 then begin

     with PedRes,SQL do begin

          Close;
          Text := sBase + ' Order by PedRes.Id_PedRes';
          Open;

     end;
  end;

  CountRegistros;

end;

procedure TfmManSep.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #16 then begin {Historico do pedido}

     if PedResId_PedRes.Value > 0 then begin

        Id_PedRes := PedResId_PedRes.Value;

        with PedRes,SQL do begin

             Close;
             Text := sBase +
                     ' and PedRes.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes));
             Open;

        end;
        
        CountRegistros;

        if PedResId_PedRes.Value > 0 then begin
        
           try

              fmPsqHre := TfmPsqHre.Create(Self);

              fmPsqHre.PedLog.Close;
              fmPsqHre.PedLog.Params[0].AsInteger := PedResId_PedRes.Value;
              fmPsqHre.PedLog.Open;

              fmPsqHre.ShowModal;

           finally

              FreeAndNil(fmPsqHre);

           end;
        end;   
     end;
  end;
end;

end.

