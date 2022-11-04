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
    Bevel2: TBevel;
    grRes: ThGrid;
    grLib: ThGrid;
    quSql: TwwQuery;
    PedResNUMRES: TIntegerField;
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
    PedOcoCODEMP: TIntegerField;
    PedOcoNUMRES: TIntegerField;
    PedOcoSEQOCO: TIntegerField;
    PedOcoNOMOCO: TStringField;
    pnCodCli: TPanel;
    Panel1: TPanel;
    EdPsqNumRes: TdxColorEdit;
    PedOcoDTERES: TDateTimeField;
    bAnalise: TSpeedButton;
    pnFlbCli: TPanel;
    dbRes: TdxDBGraphicEdit;
    dbOco: TdxDBGraphicEdit;
    PedOcoTIPOCO: TStringField;
    PedOcoNRORE2: TIntegerField;
    bVencimento: TSpeedButton;
    bAtualizar: TBitBtn;
    bObservar: TSpeedButton;
    PedResCODEMP: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResFLBCLI: TStringField;
    PedResSITRES: TStringField;
    PedResFLGSLD: TStringField;
    PedResFLGGER: TStringField;
    pnQtdReg: TPanel;
    pnApeTra: TPanel;
    PedResCODTRA: TIntegerField;
    PedResAPETRA: TStringField;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bAnaliseClick(Sender: TObject);
    procedure bVencimentoClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bObservarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
    sBase  : string;
    CodEmp : integer;
    DteRes : TDateTime;
    NumRes : integer;
  public
    {Public declarations}
  end;

var
  fmManFin: TfmManFin;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManObs, ManLre,
     ManPre, ManObp;

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

  sBase := ' Select PedRes.CodEmp,'+
           '        PedRes.DteRes,'+
           '        PedRes.NumRes,'+
           '        PedRes.CodVen,'+
           '        PedRes.CodCli,'+
           '        PedRes.CodPfa,'+
           '        PedRes.CodTra,'+
           '        PedRes.TotRes,'+
           '        PedRes.TotGer,'+
           '        PedRes.TotRen,'+
           '        PedRes.FlgSld,'+
           '        PedRes.FlgGer,'+
           '        PedRes.SitRes,'+
           '        FinTra.ApeTra,'+
           '        FinCli.NomCli,'+
           '        FinCli.FlbCli '+
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           '             LEFT JOIN FinTra ON (PedRes.CodTra = FinTra.CodTra)'+
           ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao do Depto Financeiro');

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;
  
  with PedRes,SQL do begin

       Close;
       Text := sBase + ' Order by PedRes.NumRes';
       Open;

  end;

  CountRegistros;

  EdPsqNumRes.SetFocus;
  
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

     if PedResCodEmp.Value > 0 then begin

        CodEmp := PedResCodEmp.Value;
        DteRes := PedResDteRes.Value;
        NumRes := PedResNumRes.Value;

        with PedRes,SQL do begin

             Close;
             Text := sBase +
                     '   and PedRes.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                     '   and PedRes.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                     '   and PedRes.NumRes = '+ QuotedStr(IntToStr(NumRes))   ;
             Open;

        end;
        
        CountRegistros;
        
        if PedResCodEmp.Value > 0 then begin

           try

              fmManLre := TfmManLre.Create(Self);

              fmManLre.PedRes.Close;
              fmManLre.PedRes.Params[0].AsInteger  := PedResCodEmp.Value;
              fmManLre.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
              fmManLre.PedRes.Params[2].AsInteger  := PedResNumRes.Value;
              fmManLre.PedRes.Open;

              fmManLre.ShowModal;

              sCorreto := fmManLre.Liberar;

           finally

              FreeAndNil(fmManLre);

           end;

           if sCorreto = 'Sim' then begin

              EdPsqNumRes.Text := '';

              with PedRes,SQL do begin

                   Close;
                   Text := sBase + ' Order by PedRes.NumRes';
                   Open;

              end;

              CountRegistros;
              
           end;
        end;   
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManFin.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManFin.bAnaliseClick(Sender: TObject);
var
DteRes : TDateTime;
CodEmp,NumRes : integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedResCodEmp.Value > 0 then begin

        CodEmp := PedResCodEmp.Value;
        DteRes := PedResDteRes.Value;
        NumRes := PedResNumRes.Value;

        with PedRes,SQL do begin

             Close;
             Text := sBase +
                     '   and PedRes.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                     '   and PedRes.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                     '   and PedRes.NumRes = '+ QuotedStr(IntToStr(NumRes))   +
                     ' Order by PedRes.NumRes';
             Open;

        end;

        CountRegistros;

        if PedResCodEmp.Value > 0 then begin

           if fMsg('Confirma Analise Financeira do Cliente ?','O') then begin

              PedRes.Edit;

              PedResFlgSld.Value := '*';

              PedResFlgGer.Value := 'Sim';

              with PedRes do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};
             
                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      PedRes.Close;
                      PedRes.Open;

                      PedOco.Close;
                      PedOco.Open;

                      grRes.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              PedRes.Close;
              PedRes.Open;

              CountRegistros;

              PedOco.Close;
              PedOco.Open;

              grRes.SetFocus;

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManFin.bVencimentoClick(Sender: TObject);
begin
  inherited;
  if PedResCodEmp.Value > 0 then begin

     CodEmp := PedResCodEmp.Value;
     DteRes := PedResDteRes.Value;
     NumRes := PedResNumRes.Value;

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  '   and PedRes.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                  '   and PedRes.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                  '   and PedRes.NumRes = '+ QuotedStr(IntToStr(NumRes))   ;
          Open;

     end;

     CountRegistros;

     if PedResCodEmp.Value > 0 then begin

        try

           fmManPre := TfmManPre.Create(Self);

           fmManPre.CodEmp := PedResCodEmp.Value;
           fmManPre.DteRes := PedResDteRes.Value;
           fmManPre.NumRes := PedResNumRes.Value;

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

     if PedResCodEmp.Value > 0 then begin

        CodEmp := PedResCodEmp.Value;
        DteRes := PedResDteRes.Value;
        NumRes := PedResNumRes.Value;

        with PedRes,SQL do begin

             Close;
             Text := sBase +
                     '   and PedRes.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                     '   and PedRes.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                     '   and PedRes.NumRes = '+ QuotedStr(IntToStr(NumRes))   ;
             Open;

        end;
        
        CountRegistros;
        
        if PedResCodEmp.Value > 0 then begin

           try

              fmManObs := TfmManObs.Create(Self);

              fmManObs.Caption := 'Liberações de Pedidos Aguardando Depto Financeiro';

              fmManObs.PedRes.Close;
              fmManObs.PedRes.Params[0].AsInteger  := PedResCodEmp.Value;
              fmManObs.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
              fmManObs.PedRes.Params[2].AsInteger  := PedResNumRes.Value;
              fmManObs.PedRes.Open;

              fmManObs.ShowModal;

              sCorreto := fmManObs.sCorreto;

           finally

              FreeAndNil(fmManObs);

           end;

           if sCorreto = 'Sim' then begin

              EdPsqNumRes.Text := '';

              with PedRes,SQL do begin

                   Close;
                   Text := sBase + ' Order by PedRes.NumRes';
                   Open;

              end;

              CountRegistros;
              
           end;
        end;   
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManFin.bAtualizarClick(Sender: TObject);
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
  if PedResCodEmp.Value > 0 then begin

     CodEmp := PedResCodEmp.Value;
     DteRes := PedResDteRes.Value;
     NumRes := PedResNumRes.Value;

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  '   and PedRes.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                  '   and PedRes.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                  '   and PedRes.NumRes = '+ QuotedStr(IntToStr(NumRes))   ;
          Open;

     end;

     CountRegistros;

     if PedResCodEmp.Value > 0 then begin

        try

           fmManObp := TfmManObp.Create(Self);

           fmManObp.PedRes.Close;
           fmManObp.PedRes.Params[0].AsInteger  := PedResCodEmp.Value;
           fmManObp.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
           fmManObp.PedRes.Params[2].AsInteger  := PedResNumRes.Value;
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

  pnApeTra.Caption := PedResApeTra.Value;

  if PedResFlbCli.Value = '*' then begin

     if not pnFlbCli.Visible then pnFlbCli.Visible := True;

     end
  else
     begin

     if pnFlbCli.Visible then pnFlbCli.Visible := False;

  end;

  if PedResCodCli.Value > 0 then
     pnCodCli.Caption := ' Código do Cliente : ' + FNumZeros(IntToStr(PedResCodCli.Value),7)
  else
     pnCodCli.Caption := ' Código do Cliente : ';
     
end;

procedure TfmManFin.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Count(*) as QtdReg From PedRes'+
               ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao do Depto Financeiro');

       if CodEmp > 0 then begin

          Text := Text + ' and PedRes.CodEmp = '+ QuotedStr(IntToStr(CodEmp));
          Text := Text + ' and PedRes.DteRes = '+ QuotedStr(fDateToSQL(DteRes));
          Text := Text + ' and PedRes.NumRes = '+ QuotedStr(IntToStr(NumRes));

       end;

       if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

          if GCodVen_Id > 0 then Text := Text + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

       end;
       
       Open;

       if FieldbyName('QtdReg').AsInteger > 0 then
          pnQtdReg.Caption := IntToStr(FieldbyName('QtdReg').AsInteger)+' Pedido(s)'
       else
          pnQtdReg.Caption := '0 Pedido(s)';
          
  end;

  CodEmp := 0;
  NumRes := 0;

end;

end.

