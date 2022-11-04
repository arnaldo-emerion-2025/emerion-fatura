unit ManSld;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxDBELib, dxColorEdit;

type
  TfmManSld = class(TfmPadrao)
    PaintBox: TPaintBox;
    Label2: TLabel;
    quSql: TwwQuery;
    bFinalizar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    Panel1: TPanel;
    EdPsqId_PedRes: TdxColorEdit;
    BitBtn1: TBitBtn;
    PedRe2: TwwQuery;
    PedRe2CODITE: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2VLQRE2: TFloatField;
    PedRe2ICMRE2: TFloatField;
    PedRe2TOTRE2: TFloatField;
    PedRe2NRORE2: TIntegerField;
    PedRe2FLGVAL: TStringField;
    PedRe2FLGLIB: TStringField;
    DsRe2: TwwDataSource;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grRe2: ThGrid;
    PedRe2SLDRE2: TFloatField;
    PedPar: TwwQuery;
    PedParUSADEC: TStringField;
    pnCodCli: TPanel;
    PedRes: TwwQuery;
    PedResID_PEDRES: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResNOMCLI: TStringField;
    PedResCODVEN: TIntegerField;
    PedResCODEMP: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResSITRES: TStringField;
    UpRes: TUpdateSQL;
    DsRes: TwwDataSource;
    dbRes: TdxDBGraphicEdit;
    grRes: ThGrid;
    PedResLIBSLD: TStringField;
    PedResFLGATU: TStringField;
    PedResFLGEST: TStringField;
    pnQtdReg: TPanel;
    pnTotReg: TPanel;
    PedResTOTGER: TFloatField;
    PedResFATGER: TFloatField;
    PedResSLDGER: TFloatField;
    Label1: TLabel;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure batualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure bFinalizarClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    Id_PedRes : integer;
    sBase, sOrdem : string;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManSld: TfmManSld;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManFpe,
     ManE06, ManE07, PsqHre;

{$R *.DFM}

procedure TfmManSld.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bFinalizar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

end;

procedure TfmManSld.FormShow(Sender: TObject);
begin
  inherited;

  if PedParUsaDec.Value = 'Nao' then PedRe2SldRe2.DisplayFormat := '###,###,##0';

  with PedRes,SQL do begin

       Close;
       Text := sBase + sOrdem;
       Open;

  end;

  CountRegistros;

  EdPsqId_PedRes.SetFocus;

end;

procedure TfmManSld.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSld.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if PedResCodCli.Value > 0 then
     pnCodCli.Caption := ' Código do cliente : ' + FNumZeros(IntToStr(PedResCodCli.Value),7)
  else
     pnCodCli.Caption := ' Código do cliente : ';

end;

procedure TfmManSld.batualizarClick(Sender: TObject);
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

     CountRegistros;
     
     end
  else
     begin

     with PedRes,SQL do begin

          Close;
          Text := sBase + sOrdem;
          Open;

     end;

     CountRegistros;

  end;
end;

procedure TfmManSld.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManSld.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManSld := Nil;
end;

procedure TfmManSld.EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManSld.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(PedRes.SldGer) as TotReg,'+
               '        Count(*) as QtdReg'+
               ' From PedRes'+
               ' Where PedRes.SitRes = '+ QuotedStr('Parcialmente Faturado') +' and PedRes.LibSld = '+ QuotedStr('Nao');

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

procedure TfmManSld.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.Id_PedRes,'+
           '        PedRes.CodEmp,'+
           '        PedRes.DteRes,'+
           '        PedRes.CodVen,'+
           '        PedRes.CodCli,'+
           '        PedRes.TotGer,'+
           '        PedRes.FatGer,'+
           '        PedRes.SldGer,'+
           '        PedRes.LibSld,'+
           '        PedRes.FlgAtu,'+
           '        PedRes.FlgEst,'+
           '        PedRes.SitRes,'+
           '        FinCli.NomCli '+
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           ' Where PedRes.SitRes = '+ QuotedStr('Parcialmente Faturado') +' and PedRes.LibSld = '+ QuotedStr('Nao');

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;

  sOrdem := ' Order by PedRes.Id_PedRes';

end;

procedure TfmManSld.bFinalizarClick(Sender: TObject);
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
        
        try

           fmManFpe := TfmManFpe.Create(Self);

           fmManFpe.Id_PedRes := PedResId_PedRes.Value;

           fmManFpe.PedFpe.Close;
           fmManFpe.PedFpe.Params[0].AsInteger := -1;
           fmManFpe.PedFpe.Open;

           fmManFpe.ShowModal;

           sCorreto := fmManFpe.Liberar;

        finally

           FreeAndNil(fmManFpe);

        end;

        if sCorreto = 'Sim' then begin

           EdPsqId_PedRes.Text := '';

           with PedRes,SQL do begin

                Close;
                Text := sBase + sOrdem;
                Open;

           end;

           CountRegistros;

        end;
     end;

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManSld.bImprimirClick(Sender: TObject);
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

        if fMsg('Confirma impressão do saldo do pedido ?','O') then begin

           try

              fmManE06 := TfmManE06.Create(Self);

              fmManE06.PedRes.Close;
              fmManE06.PedRes.Params[0].AsInteger := PedResId_PedRes.Value;
              fmManE06.PedRes.Open;

              fmManE06.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE06);

           end;
        end;

        if fMsg('Imprime via de separação do saldo pedido ?','O') then begin

           PedRes.Edit;

           PedResFlgAtu.Value := 'E';
           
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

              fmManE07 := TfmManE07.Create(Self);

              fmManE07.PedRes.Close;
              fmManE07.PedRes.Params[0].AsInteger := PedResId_PedRes.Value;
              fmManE07.PedRes.Open;

              fmManE07.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE07);

           end;
        end;
     end;
  end;   
end;

procedure TfmManSld.bIncluirClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedResId_PedRes.Value > 0 then begin

        with PedRes,SQL do begin

             Close;
             Text := sBase +
                     ' and PedRes.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes));
             Open;

        end;

        CountRegistros;

        if PedResId_PedRes.Value > 0 then begin

           if fMsg('Confirma liberação do pedido para novo faturamento ?','O') then begin

              PedRes.Edit;

              PedResFlgAtu.Value := '*';

              PedResLibSld.Value := 'Sim';

              with PedRes do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

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
                   Text := sBase + sOrdem;
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

procedure TfmManSld.FormKeyPress(Sender: TObject; var Key: Char);
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

