unit ManPrg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxDBELib, dxColorEdit;

type
  TfmManPrg = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label2: TLabel;
    Bevel2: TBevel;
    grRes: ThGrid;
    quSql: TwwQuery;
    bIncluir: TSpeedButton;
    UpRes: TUpdateSQL;
    pnCodCli: TPanel;
    Panel1: TPanel;
    EdPsqNumRes: TdxColorEdit;
    dbRes: TdxDBGraphicEdit;
    PedResNUMRES: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResDTFRES: TDateTimeField;
    PedResTOTGER: TFloatField;
    PedResNOMCLI: TStringField;
    pnDteRes: TPanel;
    PedRe2: TwwQuery;
    DsRe2: TwwDataSource;
    grRe2: ThGrid;
    PedRe2DESRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2ICMRE2: TFloatField;
    PedRe2TOTRE2: TFloatField;
    PedRe2DSCPRO: TStringField;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    bAtualizar: TBitBtn;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResCODCLI: TIntegerField;
    PedResSITRES: TStringField;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2NRORE2: TIntegerField;
    PedRe2FLGVAL: TStringField;
    PedRe2FLGPAC: TStringField;
    PedRe2FLGLIB: TStringField;
    bRetornar: TSpeedButton;
    pnQtdReg: TPanel;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure grRe2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure bRetornarClick(Sender: TObject);
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
  Linha : Integer;
  fmManPrg: TfmManPrg;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManLpr;

{$R *.DFM}

procedure TfmManPrg.CountRegistros;
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select Count(*) as QtdReg From PedRes'+
               ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Periodo de Programacao');

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

procedure TfmManPrg.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 117 then bRetornar.OnClick(Sender);

end;

procedure TfmManPrg.FormShow(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.CodEmp,'+
           '        PedRes.DteRes,'+
           '        PedRes.NumRes,'+
           '        PedRes.DtfRes,'+
           '        PedRes.CodVen,'+
           '        PedRes.CodPfa,'+
           '        PedRes.CodCli,'+
           '        PedRes.TotGer,'+
           '        PedRes.SitRes,'+
           '        FinCli.NomCli'+
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Periodo de Programacao');
  
  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;
  
  with PedRes,SQL do begin

       Close;
       Text := sBase + ' Order by PedRes.NumRes';
       Open;

  end;

  CountRegistros;
  
  with quSQL,SQL do begin

       Close;
       Text := ' Select UsaDec From PedPar';
       Open;

       if FieldbyName('UsaDec').AsString = 'Sim' then
          PedRe2QtpRe2.DisplayFormat := '###,###,##0.0000'
       else
          PedRe2QtpRe2.DisplayFormat := '###,###,##0';
          
  end;

  EdPsqNumRes.SetFocus;

end;

procedure TfmManPrg.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPrg.bIncluirClick(Sender: TObject);
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
        
        try

           fmManLpr := TfmManLpr.Create(Self);

           fmManLpr.PedRes.Close;
           fmManLpr.PedRes.Params[0].AsInteger  := PedResCodEmp.Value;
           fmManLpr.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
           fmManLpr.PedRes.Params[2].AsInteger  := PedResNumRes.Value;
           fmManLpr.PedRes.Open;

           fmManLpr.ShowModal;

           sCorreto := fmManLpr.Liberar;

        finally   

           FreeAndNil(fmManLpr);

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

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManPrg.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPrg.bAtualizarClick(Sender: TObject);
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

     if PedResCodEmp.Value > 0 then begin

        CodEmp := PedResCodEmp.Value;
        DteRes := PedResDteRes.Value;
        NumRes := PedResNumRes.Value;

     end;

     CountRegistros;
     
     end
  else
     begin

     with PedRes,SQL do begin

          Close;
          Text := sBase + ' Order by PedRes.NumRes';          
          Open;

     end;

     CountRegistros;

  end;
end;

procedure TfmManPrg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManPrg.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPrg := nil;
end;

procedure TfmManPrg.grRe2DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then begin

     with (Sender as ThGrid).Canvas do begin

          Font.Color := clWhite;

          FillRect(Rect);

     end;

     end
  else
     begin

     if ((PedRe2.FieldbyName('FlgVal').AsString = 'Sim') or (PedRe2.FieldbyName('FlgPac').AsString = 'Sim')) and (PedRe2.FieldbyName('FlgLib').AsString = 'Nao') then begin

        with (Sender as ThGrid).Canvas do begin

             Font.Color := clRed;

             FillRect(Rect);

        end;
     end;
  end;

  (Sender as ThGrid).DefaultDrawDataCell(Rect, Field, State);

end;

procedure TfmManPrg.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if PedResCodEmp.Value > 0 then
     pnDteRes.Caption := ' Emitido Em ' + FormatDateTime('dd/mm/yyyy',PedResDteRes.Value)
  else
     pnDteRes.Caption := ' Emitido Em ';

  if PedResCodCli.Value > 0 then
     pnCodCli.Caption := ' Código do Cliente : ' + FNumZeros(IntToStr(PedResCodCli.Value),7)
  else
     pnCodCli.Caption := ' Código do Cliente : ';

end;

procedure TfmManPrg.bRetornarClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedResCodEmp.Value > 0 then begin

        if fMsg('Confirma Retorno do Pedido para o Vendedor ?','O') then begin

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

           PedRes.Edit;

           PedResSitRes.Value := 'Aguardando Complemento';

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

                   PedRes.Locate('CodEmp;DteRes;NumRes',VarArrayOf([CodEmp,DteRes,NumRes]),[LoPartialKey]);

                   grRes.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           EdPsqNumRes.Text := '';

           with PedRes,SQL do begin

                Close;
                Text := sBase + ' Order by PedRes.NumRes';
                Open;

           end;

           CountRegistros;

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

end.

