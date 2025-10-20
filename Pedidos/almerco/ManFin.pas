unit ManFin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxDBELib, dxColorEdit;

type
  TfmManFin = class(TfmPadrao)
    PedRes: TwwQuery;
    PedOco: TwwQuery;
    DsLib: TwwDataSource;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label2: TLabel;
    grRes: ThGrid;
    grLib: ThGrid;
    quSql: TwwQuery;
    PedResDTERES: TDateTimeField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTOTRES: TFloatField;
    PedResTOTREN: TFloatField;
    PedResTOTGER: TFloatField;
    PedResNOMCLI: TStringField;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    UpRes: TUpdateSQL;
    PedOcoNOMOCO: TStringField;
    pnCodCli: TPanel;
    Panel1: TPanel;
    EdPsqId_PedRes: TdxColorEdit;
    bAnalise: TSpeedButton;
    pnFlbCli: TPanel;
    dbRes: TdxDBGraphicEdit;
    dbOco: TdxDBGraphicEdit;
    PedOcoTIPOCO: TStringField;
    PedOcoNRORE2: TIntegerField;
    bVencimento: TSpeedButton;
    bAtualizar: TBitBtn;
    bObservar: TSpeedButton;
    PedResCODCLI: TIntegerField;
    PedResFLBCLI: TStringField;
    PedResSITRES: TStringField;
    PedResFLGGER: TStringField;
    PedResID_PEDRES: TIntegerField;
    PedResFLGATU: TStringField;
    PedOcoID_PEDOCO: TIntegerField;
    PedOcoID_PEDRES: TIntegerField;
    PedOcoDTEOCO: TDateTimeField;
    PedPar: TwwQuery;
    PedParUSADEC: TStringField;
    pnQtdReg: TPanel;
    pnTotReg: TPanel;
    pnNomBan: TPanel;
    PedResCODBAN: TIntegerField;
    PedResNOMBAN: TStringField;
    pnTotRen: TPanel;
    PopupMenu1: TPopupMenu;
    FIN02010301: TMenuItem;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
    procedure bAnaliseClick(Sender: TObject);
    procedure bVencimentoClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bObservarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FIN02010301Click(Sender: TObject);
  private
    sBase     : string;
    Id_PedRes : integer;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManFin: TfmManFin;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManRej, ManLre,
     ManPre, ManObp, PsqHre, ManE17;

{$R *.DFM}

procedure TfmManFin.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 113 then bVencimento.OnClick(Sender);

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bObservar.OnClick(Sender);

  if key = 117 then bAnalise.OnClick(Sender);

end;

procedure TfmManFin.FormShow(Sender: TObject);
begin
  inherited;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then
     pnTotRen.Visible := False;
  
  with PedRes,SQL do begin

       Close;
       Text := sBase + ' Order by PedRes.Id_PedRes';
       Open;

  end;

  CountRegistros;

  EdPsqId_PedRes.SetFocus;

end;

procedure TfmManFin.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManFin.bIncluirClick(Sender: TObject);
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

        if PedResId_PedRes.Value > 0 then begin

           try

              fmManLre := TfmManLre.Create(Self);

              fmManLre.Id_PedRes := PedResId_PedRes.Value;
              
              fmManLre.PedFin.Close;
              fmManLre.PedFin.Params[0].AsInteger := -1;
              fmManLre.PedFin.Open;

              fmManLre.ShowModal;

              sCorreto := fmManLre.Liberar;

           finally

              FreeAndNil(fmManLre);

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
        end;   
     end;

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManFin.EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManFin.bAnaliseClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedResId_PedRes.Value > 0 then begin

        Id_PedRes := PedResId_PedRes.Value;

        with PedRes,SQL do begin

             Close;
             Text := sBase +
                     ' and PedRes.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes)) +
                     ' Order by PedRes.Id_PedRes';
             Open;

        end;

        CountRegistros;

        if PedResId_PedRes.Value > 0 then begin

           if fMsg('Confirma a analise financeira do cliente ?','O') then begin

              PedRes.Edit;

              PedResFlgAtu.Value := '*';

              PedResFlgGer.Value := 'Sim';

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

              PedOco.Close;
              PedOco.Open;

              CountRegistros;

              grRes.SetFocus;

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManFin.bVencimentoClick(Sender: TObject);
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

        try

           fmManPre := TfmManPre.Create(Self);

           fmManPre.PedRe3.Close;
           fmManPre.PedRe3.Params[0].AsInteger := PedResId_PedRes.Value;
           fmManPre.PedRe3.Open;

           fmManPre.ShowModal;

        finally

           FreeAndNil(fmManPre);

        end;
     end;
  end;
end;

procedure TfmManFin.bEditarClick(Sender: TObject);
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
                     '  and PedRes.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes));
             Open;

        end;
        
        CountRegistros;
        
        if PedResId_PedRes.Value > 0 then begin

           try

              fmManRej := TfmManRej.Create(Self);

              fmManRej.Caption := 'Aguardando liberação do depto financeiro - Rejeitar pedido';

              fmManRej.Id_PedRes := PedResId_PedRes.Value;

              fmManRej.PedRej.Close;
              fmManRej.PedRej.Params[0].AsInteger := -1;
              fmManRej.PedRej.Open;

              fmManRej.ShowModal;

              sCorreto := fmManRej.Liberar;

           finally

              FreeAndNil(fmManRej);

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
        end;   
     end;

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManFin.bAtualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqId_PedRes.Text ) <> '' then begin

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  ' and PedRes.Id_PedRes = '+ QuotedStr(EdPsqId_PedRes.Text);
          Open;

     end;

     end
  else
     begin

     with PedRes,SQL do begin

          Close;
          Text := sBase + ' Order by PedRes.Id_PedRes';
          Open;

     end;
  end;

  CountRegistros;

end;

procedure TfmManFin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManFin.bObservarClick(Sender: TObject);
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

        try

           fmManObp := TfmManObp.Create(Self);

           fmManObp.PedRes.Close;
           fmManObp.PedRes.Params[0].AsInteger := PedResId_PedRes.Value;
           fmManObp.PedRes.Open;

           fmManObp.ShowModal;

        finally

           FreeAndNil(fmManObp);

        end;
     end;
  end;
end;

procedure TfmManFin.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManFin := nil;
end;

procedure TfmManFin.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if pnTotRen.Visible then pnTotRen.Caption := FormatFloat('###,###,##0.00',PedResTotRen.Value)+' % ';
  
  if PedResCodBan.Value > 0 then
     pnNomBan.Caption := ' '+IntToStr(PedResCodBan.Value)+ ' - ' +PedResNomBan.Value
  else
     pnNomBan.Caption := '';

  if PedResFlbCli.Value = '*' then begin

     if not pnFlbCli.Visible then pnFlbCli.Visible := True;

     end
  else
     begin

     if pnFlbCli.Visible then pnFlbCli.Visible := False;

  end;

  if PedResCodCli.Value > 0 then
     pnCodCli.Caption := ' Código do cliente : ' + FNumZeros(IntToStr(PedResCodCli.Value),7)
  else
     pnCodCli.Caption := ' Código do cliente : ';
     
end;

procedure TfmManFin.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(PedRes.TotGer) as TotReg,'+
               '        Count(*) as QtdReg'+
               ' From PedRes'+
               ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao do Depto Financeiro');

       if Id_PedRes > 0 then Text := Text + ' and PedRes.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes));

       if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

          if GCodVen_Id > 0 then Text := Text + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

       end;
       
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

procedure TfmManFin.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.Id_PedRes,'+
           '        PedRes.DteRes,'+
           '        PedRes.CodVen,'+
           '        PedRes.CodCli,'+
           '        PedRes.CodPfa,'+
           '        PedRes.TotRes,'+
           '        PedRes.TotGer,'+
           '        PedRes.TotRen,'+
           '        PedRes.FlgAtu,'+
           '        PedRes.FlgGer,'+
           '        PedRes.SitRes,'+
           '        FinCli.NomCli,'+
           '        FinCli.FlbCli,'+
           '        FinCli.CodBan,'+
           '        FinBan.NomBan '+
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           '             LEFT JOIN FinBan ON (FinCli.CodBan = FinBan.CodBan)'+
           ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao do Depto Financeiro');

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;
end;

procedure TfmManFin.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfmManFin.FIN02010301Click(Sender: TObject);
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

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg From FinCre Where FinCre.CodCli = '+ QuotedStr(IntToStr(PedResCodCli.Value));
             Open;

        end;     

        if quSQL.FieldbyName('QtdReg').AsInteger > 0 then begin

           try

              GsCodCli := PedResCodCli.Value;

              fmManE17 := TfmManE17.Create(Self);

              fmManE17.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE17);

           end;

           end
        else
           fmsgErro('Não foram localizadas movimentações de titulo para o cliente.',Nil);
           
     end;
  end;
end;

end.

