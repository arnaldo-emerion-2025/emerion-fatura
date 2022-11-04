unit ManCon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxDBELib, dxColorEdit;

type
  TfmManCon = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label2: TLabel;
    grRes: ThGrid;
    quSql: TwwQuery;
    UpRes: TUpdateSQL;
    pnCodCli: TPanel;
    Panel1: TPanel;
    EdPsqId_PedRes: TdxColorEdit;
    dbRes: TdxDBGraphicEdit;
    PedResDTERES: TDateTimeField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTOTGER: TFloatField;
    PedResNOMCLI: TStringField;
    dbOco: TdxDBGraphicEdit;
    Label1: TLabel;
    PedRe2: TwwQuery;
    PedRe2DESRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2TOTRE2: TFloatField;
    DsRe2: TwwDataSource;
    grRe2: ThGrid;
    bAtualizar: TBitBtn;
    PedResSITRES: TStringField;
    PedRe2NRORE2: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResID_PEDRES: TIntegerField;
    PedRe2ID_PEDRE2: TIntegerField;
    PedPar: TwwQuery;
    PedParUSADEC: TStringField;
    pnQtdReg: TPanel;
    pnTotReg: TPanel;
    bVencimentos: TSpeedButton;
    bRejeitar: TSpeedButton;
    bLiberar: TSpeedButton;
    bObservar: TSpeedButton;
    PedRe2CODITE: TStringField;
    PopupMenu1: TPopupMenu;
    FIN02010301: TMenuItem;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure bVencimentosClick(Sender: TObject);
    procedure bRejeitarClick(Sender: TObject);
    procedure bLiberarClick(Sender: TObject);
    procedure bObservarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FIN02010301Click(Sender: TObject);
  private
    sBase : string;
    Id_PedRes : integer;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManCon: TfmManCon;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManRej, ManLcc,
     ManPre, ManObp, PsqHre, ManE17;

{$R *.DFM}

procedure TfmManCon.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 113 then bVencimentos.OnClick(Sender);

  if key = 114 then bRejeitar.OnClick(Sender);

  if key = 115 then bLiberar.OnClick(Sender);

  if key = 116 then bObservar.OnClick(Sender);  

end;

procedure TfmManCon.FormShow(Sender: TObject);
begin
  inherited;

  if PedParUsaDec.Value = 'Nao' then PedRe2QtpRe2.DisplayFormat := '###,###,##0';

  with PedRes,SQL do begin

       Close;
       Text := sBase + ' Order by PedRes.Id_PedRes';
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

  EdPsqId_PedRes.SetFocus;

end;

procedure TfmManCon.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCon.EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManCon.bAtualizarClick(Sender: TObject);
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

procedure TfmManCon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManCon.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCon := nil;
end;

procedure TfmManCon.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if PedResCodCli.Value > 0 then
     pnCodCli.Caption := ' Código do cliente : ' + FNumZeros(IntToStr(PedResCodCli.Value),7)
  else
     pnCodCli.Caption := ' Código do cliente : ';
end;

procedure TfmManCon.CountRegistros;
begin
  
  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(PedRes.TotGer) as TotReg,'+
               '        Count(*) as QtdReg'+
               ' From PedRes'+
               ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Consultas de Cadastro');

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

procedure TfmManCon.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.Id_PedRes,'+
           '        PedRes.DteRes,'+
           '        PedRes.CodVen,'+
           '        PedRes.CodCli,'+
           '        PedRes.CodPfa,'+
           '        PedRes.TotGer,'+
           '        PedRes.SitRes,'+
           '        FinCli.NomCli '+
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Consultas de Cadastro');

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;
end;

procedure TfmManCon.bVencimentosClick(Sender: TObject);
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

procedure TfmManCon.bRejeitarClick(Sender: TObject);
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

              fmManRej := TfmManRej.Create(Self);

              fmManRej.Caption := 'Aguardando consultas de cadastro - Rejeitar pedido';

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

procedure TfmManCon.bLiberarClick(Sender: TObject);
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

              fmManLcc := TfmManLcc.Create(Self);

              fmManLcc.Id_PedRes := PedResId_PedRes.Value;

              fmManLcc.PedCon.Close;
              fmManLcc.PedCon.Params[0].AsInteger := -1;
              fmManLcc.PedCon.Open;

              fmManLcc.ShowModal;

              sCorreto := fmManLcc.Liberar;

           finally

              FreeAndNil(fmManLcc);

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

procedure TfmManCon.bObservarClick(Sender: TObject);
begin
  inherited;
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

procedure TfmManCon.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfmManCon.FIN02010301Click(Sender: TObject);
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

