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
    Bevel2: TBevel;
    grRes: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    grLib: ThGrid;
    quSql: TwwQuery;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    UpRes: TUpdateSQL;
    pnSitLib: TPanel;
    UpLib: TUpdateSQL;
    Panel1: TPanel;
    EdPsqNumRes: TdxColorEdit;
    bExcluir: TSpeedButton;
    pnDteRes: TPanel;
    bFinalizar: TSpeedButton;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
    PedResNUMRES: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResTOTGER: TFloatField;
    PedResFATGER: TFloatField;
    PedResDEVGER: TFloatField;
    PedResSLDGER: TFloatField;
    pnNomCli: TPanel;
    PedLibCODEMP: TIntegerField;
    PedLibDTERES: TDateTimeField;
    PedLibNUMRES: TIntegerField;
    PedLibSEQLIB: TIntegerField;
    PedLibDTELIB: TDateTimeField;
    PedLibHRELIB: TStringField;
    PedLibQTSLIB: TIntegerField;
    PedLibTOTGER: TFloatField;
    PedLibNOMUSU: TStringField;
    pnImpresso: TPanel;
    bAtualizar: TBitBtn;
    PedLibSITLIB: TStringField;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResSITRES: TStringField;
    PedResNOMCLI: TStringField;
    PedResQTLRES: TIntegerField;
    PedResQTDIMP: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTIPPFA: TStringField;
    PedResDSRPFA: TStringField;
    PedResNOMPFA: TStringField;
    PedResFLGSLD: TStringField;
    PedResLIBSLD: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bIncluirClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bFinalizarClick(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure DsLibDataChange(Sender: TObject; Field: TField);
    procedure PedResNOMPFAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    {Private declarations}
    sBase : string;
  public
    {Public declarations}
    DteRes : TDateTime;
    CodEmp,NumRes,SeqLib : integer;
  end;

var
  Permissao : string;
  fmManLpe: TfmManLpe;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, AuxPsq, ManLib,
     ManFpe;

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

  sBase := ' Select PedRes.CodEmp,'+
           '        PedRes.DteRes,'+
           '        PedRes.NumRes,'+
           '        PedRes.CodPfa,'+
           '        PedRes.TipPfa,'+
           '        PedRes.CodCli,'+
           '        PedRes.TotGer,'+
           '        PedRes.FatGer,'+
           '        PedRes.DevGer,'+
           '        PedRes.SldGer,'+
           '        PedRes.QtlRes,'+
           '        PedRes.QtdImp,'+
           '        PedRes.FlgSld,'+
           '        PedRes.LibSld,'+                      
           '        PedRes.SitRes,'+
           '        FinCli.NomCli,'+
           '        EstPfa.DsrPfa'+
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           '             LEFT JOIN EstPfa ON (PedRes.CodPfa = EstPfa.CodPfa)'+
           '                             AND (PedRes.TipPfa = EstPfa.TipPfa)'+
           ' Where (PedRes.SitRes = '''+ 'Aguardando Liberacao para Faturamento'    +''''+
           '     or PedRes.SitRes = '''+ 'Aguardando Separacao dos Itens a Faturar' +''''+
           '    or (PedRes.SitRes = '''+ 'Parcialmente Faturado' +''' and PedRes.LibSld = '''+ 'Sim' +'''))';

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;
  
  EdPsqNumRes.SetFocus;
  
end;

procedure TfmManLpe.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLpe.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
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

     if (Trim(PedResSitRes.Value) = 'Aguardando Liberacao para Faturamento') or
        (Trim(PedResSitRes.Value) = 'Parcialmente Faturado') then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManLib then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe uma Liberação de Pedido em Andamento.','E');

           fmManLib.WindowState := wsNormal;
           fmManLib.BringToFront;

           end
        else
           begin

           CodEmp := PedResCodEmp.Value;
           DteRes := PedResDteRes.Value;
           NumRes := PedResNumRes.Value;

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

           PedRes.Close;
           PedRes.Open;

           PedRes.Locate('CodEmp;DteRes;NumRes',VarArrayOf([CodEmp,DteRes,NumRes]),[LoPartialKey]);

           SeqLib := PedResQtlRes.Value;

           fmManLib := TfmManLib.Create(Self);
           fmManLib.Show;

        end;

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
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManLpe.bEditarClick(Sender: TObject);
var
i     : Integer;
Found : integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedLibCodEmp.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManLib then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe uma Liberação de Pedido em Andamento.','E');

           fmManLib.WindowState := wsNormal;
           fmManLib.BringToFront;

           end
        else
           begin

           CodEmp := PedLibCodEmp.Value;
           DteRes := PedLibDteRes.Value;
           NumRes := PedLibNumRes.Value;
           SeqLib := PedLibSeqLib.Value;

           fmManLib := TfmManLib.Create(Self);
           fmManLib.Show;

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManLpe.bExcluirClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedLibCodEmp.Value > 0 then begin

        if PedLibSitLib.Value = 'Nao Concluido' then begin

           with quSql,SQL do begin

                Close;
                Text := ' Delete From PedLb2'+
                        ' Where CodEmp = :CodEmp'+
                        '   and DteRes = :DteRes'+
                        '   and NumRes = :NumRes'+
                        '   and SeqLib = :SeqLib';

                with Params do begin

                     Params[0].AsInteger  := PedLibCodEmp.Value;
                     Params[1].AsDateTime := PedLibDteRes.Value;
                     Params[2].AsInteger  := PedLibNumRes.Value;
                     Params[3].AsInteger  := PedLibSeqLib.Value;

                end;

                ExecSQL;

           end;

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

           CodEmp := PedResCodEmp.Value;
           DteRes := PedResDteRes.Value;
           NumRes := PedResNumRes.Value;

           PedRes.Close;
           PedRes.Open;

           PedRes.Locate('CodEmp;DteRes;NumRes',VarArrayOf([CodEmp,DteRes,NumRes]),[LoPartialKey]);

           end
        else
           begin

           if PedLibSitLib.Value = 'Concluido' then
              fmsgErro('Operação não Pode ser Realizada. Liberação Aguardando Faturamento.',Nil)

           else if PedLibSitLib.Value = 'Faturado' then
                   fmsgErro('Operação não Pode ser Realizada. Liberação Faturada.',Nil);

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManLpe.bFinalizarClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedResCodEmp.Value > 0 then begin

        if Trim(PedResSitRes.Value) = 'Aguardando Liberacao para Faturamento' then begin

           if fMsg('Confirma Envio do Pedido para Separacao de Estoque ?','O') then begin

              CodEmp := PedResCodEmp.Value;
              DteRes := PedResDteRes.Value;
              NumRes := PedResNumRes.Value;

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

                      PedRes.Locate('CodEmp;DteRes;NumRes',VarArrayOf([CodEmp,DteRes,NumRes]),[LoPartialKey]);

                      grRes.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              with PedRes,SQL do begin

                   Close;
                   Text := sBase + ' Order by PedRes.NumRes';
                   Open;

              end;
           end;
        end;

        if Trim(PedResSitRes.Value) = 'Parcialmente Faturado' then begin

           if fMsg('Confirma Envio do Pedido para Tela de Parcialmente Faturados ?','O') then begin

              CodEmp := PedResCodEmp.Value;
              DteRes := PedResDteRes.Value;
              NumRes := PedResNumRes.Value;

              PedRes.Edit;

              PedResFlgSld.Value := '*';

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

                      PedRes.Locate('CodEmp;DteRes;NumRes',VarArrayOf([CodEmp,DteRes,NumRes]),[LoPartialKey]);

                      grRes.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              with PedRes,SQL do begin

                   Close;
                   Text := sBase + ' Order by PedRes.NumRes';
                   Open;

              end;
           end;
        end;

        if Trim(PedResSitRes.Value) = 'Aguardando Separacao dos Itens a Faturar' then
           fmsgErro('Operação não Pode Ser Realizada. Existem Liberações em Andamento para o Pedido.',Nil);

     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManLpe.bAtualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNumRes.Text ) <> '' then begin

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  '   and PedRes.NumRes = '+ QuotedStr(EdPsqNumRes.Text) +
                  ' Order by PedRes.NumRes';
          Open;

     end;

     end
  else
     begin

     with PedRes,SQL do begin

          Close;
          Text := sBase + ' Order by PedRes.NumRes';
          Open;

     end;
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
     fmsgErro('Existem Liberações em Andamento. Por Favor Feche o Formulario.',Nil)
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

  if PedResCodEmp.Value > 0 then
     pnDteRes.Caption := ' Emitido Em ' + DateToStr(PedResDteRes.Value)
  else
     pnDteRes.Caption := ' Emitido Em ';

end;

procedure TfmManLpe.DsLibDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnSitLib.Caption := PedLibSitLib.Value;
end;

procedure TfmManLpe.PedResNOMPFAGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if PedResCodEmp.Value > 0 then
     Text := PedResCodPfa.Value+ ' - ' +PedResDsrPfa.Value
  else
     Text := ' ';
end;

end.

