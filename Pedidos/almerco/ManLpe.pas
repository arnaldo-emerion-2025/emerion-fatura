unit ManLpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxDBELib, dxColorEdit;

type
  TfmManLpe = class(TfmPadrao)
    PedRes: TwwQuery;
    PedLib: TwwQuery;
    DsLib: TwwDataSource;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label2: TLabel;
    grRes: ThGrid;
    Label3: TLabel;
    grLib: ThGrid;
    quSql: TwwQuery;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    UpRes: TUpdateSQL;
    UpLib: TUpdateSQL;
    Panel1: TPanel;
    EdPsqId_PedRes: TdxColorEdit;
    bExcluir: TSpeedButton;
    pnDteRes: TPanel;
    bFinalizar: TSpeedButton;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
    PedResCODCLI: TIntegerField;
    PedResTOTGER: TFloatField;
    PedResFATGER: TFloatField;
    PedResDEVGER: TFloatField;
    PedResSLDGER: TFloatField;
    pnNomCli: TPanel;
    PedLibDTELIB: TDateTimeField;
    PedLibHRELIB: TStringField;
    PedLibTOTGER: TFloatField;
    PedLibNOMUSU: TStringField;
    pnImpresso: TPanel;
    bAtualizar: TBitBtn;
    PedLibSITLIB: TStringField;
    PedResNOMPFA: TStringField;
    PedResID_PEDRES: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResFLGATU: TStringField;
    PedResLIBSLD: TStringField;
    PedResSITRES: TStringField;
    PedResNOMCLI: TStringField;
    PedResDSRPFA: TStringField;
    PedLibID_PEDLIB: TIntegerField;
    PedLibQTILIB: TIntegerField;
    PedLibNROLIB: TIntegerField;
    PedResQTDIMP: TIntegerField;
    PedResCODPFA: TStringField;
    pnQtdReg: TPanel;
    pnTotReg: TPanel;
    PedResID_SEPPED: TIntegerField;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
    procedure bIncluirClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bFinalizarClick(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure PedResNOMPFAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    sBase     : string;
    Id_PedRes : integer;
    {Private declarations}
  public
    Id_PedLib : integer;
    {Public declarations}
  end;

var
  Permissao : string;
  fmManLpe  : TfmManLpe;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, AuxPsq, ManLib,
     ManFpe, PsqHre;

{$R *.DFM}

procedure TfmManLpe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 117 then bExcluir.OnClick(Sender);

  if key = 118 then bFinalizar.OnClick(Sender);

end;

procedure TfmManLpe.FormShow(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.Id_PedRes,'+
           '        PedRes.DteRes,'+
           '        PedRes.CodCli,'+
           '        PedRes.CodPfa,'+
           '        PedRes.TotGer,'+
           '        PedRes.FatGer,'+
           '        PedRes.DevGer,'+
           '        PedRes.SldGer,'+
           '        PedRes.FlgAtu,'+
           '        PedRes.LibSld,'+
           '        PedRes.QtdImp,'+
           '        PedRes.Id_SepPed,'+
           '        PedRes.SitRes,'+
           '        FinCli.NomCli,'+
           '        EstPfa.DsrPfa '+
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           '             LEFT JOIN EstPfa ON (PedRes.CodPfa = EstPfa.CodPfa)'+
           '                             AND (PedRes.TipPfa = EstPfa.TipPfa)';

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' Where PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;

  CountRegistros;
  
  EdPsqId_PedRes.SetFocus;

end;

procedure TfmManLpe.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLpe.EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManLpe.bIncluirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManLib then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe uma liberação de pedido em andamento.','E');

        fmManLib.WindowState := wsNormal;
        fmManLib.BringToFront;

        end
     else
        begin

        Id_PedRes := PedResId_PedRes.Value;

        with PedRes,SQL do begin

             Close;
             Text := sBase +
                     ' Where PedRes.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes)) +
                     '   and (PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao para Faturamento') +
                     '    or  PedRes.SitRes = '+ QuotedStr('Aguardando Separacao dos Itens a Faturar') + ')' +
                     '    or (PedRes.SitRes = '+ QuotedStr('Parcialmente Faturado') +' and PedRes.LibSld = '+ QuotedStr('Sim') +')';
             Open;

        end;

        CountRegistros;

        if PedResId_SepPed.Value = 0 then begin

           if (Trim(PedResSitRes.Value) = 'Parcialmente Faturado') or
              (Trim(PedResSitRes.Value) = 'Aguardando Liberacao para Faturamento') then begin

              PedRes.Edit;

              PedResSitRes.Value := 'Aguardando Separacao dos Itens a Faturar';

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

              Id_PedLib := PedLibId_PedLib.Value;

              fmManLib := TfmManLib.Create(Self);
              fmManLib.Show;

              end
           else
              begin

              if Trim(PedResSitRes.Value) = 'Aguardando Separacao dos Itens a Faturar' then
                 fmsgErro('Operação não Pode ser Realizada. Pedido Aguardando Liberações dos Itens para Faturamento.',Nil)

              else if Trim(PedResSitRes.Value) = 'Aguardando Separacao de Estoque' then
                      fmsgErro('Operação não Pode ser Realizada. Pedido Aguardando Separação de Estoque.',Nil)

              else if Trim(PedResSitRes.Value) = 'Pronto para Faturar' then
                      fmsgErro('Operação não Pode ser Realizada. Pedido Aguardando Faturamento de Liberações Realizadas.',Nil)

              else if Trim(PedResSitRes.Value) = 'Faturado' then
                      fmsgErro('Operação não Pode ser Realizada. Pedido nao Possui mais Saldos para Liberar.',Nil)

           end;

           end
        else
           fmsgErro('Operação não pode ser realizada. Pedido em processo de separação no ckeckout.',Nil);
           
     end;

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManLpe.bEditarClick(Sender: TObject);
var
  i     : Integer;
  Found : integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManLib then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe uma liberação de pedido em andamento.','E');

        fmManLib.WindowState := wsNormal;
        fmManLib.BringToFront;

        end
     else
        begin

        if PedResId_PedRes.Value > 0 then begin

           Id_PedRes := PedResId_PedRes.Value;

           with PedRes,SQL do begin

                Close;
                Text := sBase +
                        ' Where PedRes.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes)) +
                        '   and (PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao para Faturamento') +
                        '    or  PedRes.SitRes = '+ QuotedStr('Aguardando Separacao dos Itens a Faturar') + ')' +
                        '    or (PedRes.SitRes = '+ QuotedStr('Parcialmente Faturado') +' and PedRes.LibSld = '+ QuotedStr('Sim') +')';
                Open;

           end;

           CountRegistros;

           if PedLibId_PedLib.Value > 0 then begin

              if PedResId_SepPed.Value = 0 then begin

                 Id_PedLib := PedLibId_PedLib.Value;

                 fmManLib := TfmManLib.Create(Self);
                 fmManLib.Show;

                 end
              else
                 fmsgErro('Operação não pode ser realizada. Pedido em processo de separação no ckeckout.',Nil);

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManLpe.bExcluirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManLib then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe uma liberação de pedido em andamento.','E');

        fmManLib.WindowState := wsNormal;
        fmManLib.BringToFront;

        end
     else
        begin

        if PedLibId_PedLib.Value > 0 then begin

           Id_PedRes := PedResId_PedRes.Value;

           with PedRes,SQL do begin

                Close;
                Text := sBase +
                        ' Where PedRes.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes)) +
                        '   and (PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao para Faturamento') +
                        '    or  PedRes.SitRes = '+ QuotedStr('Aguardando Separacao dos Itens a Faturar') + ')' +
                        '    or (PedRes.SitRes = '+ QuotedStr('Parcialmente Faturado') +' and PedRes.LibSld = '+ QuotedStr('Sim') +')';
                Open;

           end;

           CountRegistros;

           PedLib.Close;
           PedLib.Open;

           if PedLibId_PedLib.Value > 0 then begin
        
              if PedResId_SepPed.Value = 0 then begin

                 if Trim(PedLibSitLib.Value) = 'Nao Concluido' then begin

                    PedLib.Delete;

                    with PedLib do begin

                         fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                         try

                            ApplyUpdates; {Tenta aplicar as alterações};

                            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                         except

                            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                            if PedLib.State <> dsBrowse then PedLib.CancelUpdates;

                            grLib.SetFocus;

                            raise;

                         end;

                         CommitUpdates; {sucesso!, limpa o cache...}

                    end;

                    PedRes.Close;
                    PedRes.Open;

                    end
                 else
                    begin

                    if Trim(PedLibSitLib.Value) = 'Concluido' then
                       fmsgErro('Operação não Pode ser Realizada. Liberação Aguardando Faturamento.',Nil)

                    else if Trim(PedLibSitLib.Value) = 'Faturado' then
                            fmsgErro('Operação não Pode ser Realizada. Liberação Faturada.',Nil);

                 end;

                 end
              else
                 fmsgErro('Operação não pode ser realizada. Pedido em processo de separação no ckeckout.',Nil);
              
           end;
        end;
     end;
     
     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManLpe.bFinalizarClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManLib then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe uma liberação de pedido em andamento.','E');

        fmManLib.WindowState := wsNormal;
        fmManLib.BringToFront;

        end
     else
        begin

        if PedResId_PedRes.Value > 0 then begin

           Id_PedRes := PedResId_PedRes.Value;

           with PedRes,SQL do begin

                Close;
                Text := sBase +
                        ' Where PedRes.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes)) +
                        '   and (PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao para Faturamento') +
                        '    or  PedRes.SitRes = '+ QuotedStr('Aguardando Separacao dos Itens a Faturar') + ')' +
                        '    or (PedRes.SitRes = '+ QuotedStr('Parcialmente Faturado') +' and PedRes.LibSld = '+ QuotedStr('Sim') +')';
                Open;

           end;

           CountRegistros;

           if PedResId_SepPed.Value = 0 then begin
        
              if Trim(PedResSitRes.Value) = 'Aguardando Liberacao para Faturamento' then begin

                 if fMsg('Confirma envio do pedido para separacao de estoque ?','O') then begin

                    PedRes.Edit;

                    PedResSitRes.Value := 'Aguardando Separacao de Estoque';

                    with PedRes do begin

                         fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                         try

                            ApplyUpdates; {Tenta aplicar as alterações};

                            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                         except

                            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                            PedRes.Close;
                            PedRes.Open;

                            grRes.SetFocus;

                            raise;

                         end;

                         CommitUpdates; {sucesso!, limpa o cache...}

                    end;

                    EdPsqId_PedRes.Text := '';

                    with PedRes,SQL do begin

                         Close;
                         Text := sBase +
                                 ' Where (PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao para Faturamento') +
                                 '    or  PedRes.SitRes = '+ QuotedStr('Aguardando Separacao dos Itens a Faturar') + ')' +
                                 '    or (PedRes.SitRes = '+ QuotedStr('Parcialmente Faturado') +' and PedRes.LibSld = '+ QuotedStr('Sim') +')'+
                                 ' Order by PedRes.Id_PedRes';
                         Open;

                    end;

                    CountRegistros;

                 end;
              end;

              if Trim(PedResSitRes.Value) = 'Parcialmente Faturado' then begin

                 if fMsg('Confirma Envio do Pedido para Tela de Parcialmente Faturados ?','O') then begin

                    PedRes.Edit;

                    PedResFlgAtu.Value := '*';

                    PedResLibSld.Value := 'Nao';

                    with PedRes do begin

                         fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                         try

                            ApplyUpdates; {Tenta aplicar as alterações};

                            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                         except

                            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                            PedRes.Close;
                            PedRes.Open;

                            grRes.SetFocus;

                            raise;

                         end;

                         CommitUpdates; {sucesso!, limpa o cache...}

                    end;

                    EdPsqId_PedRes.Text := '';

                    with PedRes,SQL do begin

                         Close;
                         Text := sBase +
                                 ' Where (PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao para Faturamento') +
                                 '    or  PedRes.SitRes = '+ QuotedStr('Aguardando Separacao dos Itens a Faturar') + ')' +
                                 '    or (PedRes.SitRes = '+ QuotedStr('Parcialmente Faturado') +' and PedRes.LibSld = '+ QuotedStr('Sim') +')'+
                                 ' Order by PedRes.Id_PedRes';
                         Open;

                    end;

                    CountRegistros;

                 end;
              end;

              if Trim(PedResSitRes.Value) = 'Aguardando Separacao dos Itens a Faturar' then
                 fmsgErro('Operação não pode ser realizada. Existem liberações em andamento para o pedido.',Nil);

              end
           else
              fmsgErro('Operação não pode ser realizada. Pedido em processo de separação no ckeckout.',Nil);

        end;
     end;
     
     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManLpe.bAtualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqId_PedRes.Text ) <> '' then begin

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  ' Where PedRes.Id_PedRes = '+ QuotedStr(EdPsqId_PedRes.Text) +
                  '   and (PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao para Faturamento') +
                  '    or  PedRes.SitRes = '+ QuotedStr('Aguardando Separacao dos Itens a Faturar') + ')' +
                  '    or (PedRes.SitRes = '+ QuotedStr('Parcialmente Faturado') +' and PedRes.LibSld = '+ QuotedStr('Sim') +')';
          Open;

     end;
     
     if PedResId_PedRes.Value > 0 then Id_PedRes := PedResId_PedRes.Value;

     CountRegistros;

     end
  else
     begin

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  ' Where (PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao para Faturamento') +
                  '    or  PedRes.SitRes = '+ QuotedStr('Aguardando Separacao dos Itens a Faturar') + ')' +
                  '    or (PedRes.SitRes = '+ QuotedStr('Parcialmente Faturado') +' and PedRes.LibSld = '+ QuotedStr('Sim') +')'+
                  ' Order by PedRes.Id_PedRes';
          Open;

     end;

     CountRegistros;

  end;
end;

procedure TfmManLpe.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i     : Integer;
  Found : integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManLib then Found := i;

  end;

  if Found >= 0 then
     fmsgErro('Existem liberações em andamento. Por favor feche o formulario.',Nil)
  else
     Action := CaFree;

end;

procedure TfmManLpe.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLpe := nil;
end;

procedure TfmManLpe.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if PedResQtdImp.Value > 0 then
     pnImpresso.Caption := 'Impresso'
  else
     pnImpresso.Caption := 'Não Impresso';
     
  if PedResCodCli.Value > 0 then
     pnNomCli.Caption := ' Cliente ' + FNumZeros(IntToStr(PedResCodCli.Value),7)+ ' - ' + PedResNomCli.Value
  else
     pnNomCli.Caption := ' Cliente ';

  if PedResId_PedRes.Value > 0 then
     pnDteRes.Caption := ' Emitido em ' + DateToStr(PedResDteRes.Value)
  else
     pnDteRes.Caption := ' Emitido em ';

end;

procedure TfmManLpe.PedResNOMPFAGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if PedResId_PedRes.Value > 0 then
     Text := PedResCodPfa.Value+ ' - ' +PedResDsrPfa.Value
  else
     Text := ' ';
end;

procedure TfmManLpe.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(PedRes.SldGer) as TotReg,'+
               '        Count(*) as QtdReg'+
               ' From PedRes'+
               ' Where (PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao para Faturamento') +
               '    or  PedRes.SitRes = '+ QuotedStr('Aguardando Separacao dos Itens a Faturar') + ')' +
               '    or (PedRes.SitRes = '+ QuotedStr('Parcialmente Faturado') +' and PedRes.LibSld = '+ QuotedStr('Sim') +')';

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

procedure TfmManLpe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #16 then begin {Historico do pedido}

     if PedResId_PedRes.Value > 0 then begin

        Id_PedRes := PedResId_PedRes.Value;

        with PedRes,SQL do begin

             Close;
             Text := sBase +
                     ' Where PedRes.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes));
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

