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
    grRes: ThGrid;
    quSql: TwwQuery;
    UpRes: TUpdateSQL;
    pnCodCli: TPanel;
    Panel1: TPanel;
    EdPsqId_PedRes: TdxColorEdit;
    dbRes: TdxDBGraphicEdit;
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
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    bAtualizar: TBitBtn;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResCODCLI: TIntegerField;
    PedResSITRES: TStringField;
    PedRe2NRORE2: TIntegerField;
    PedRe2FLGVAL: TStringField;
    PedRe2FLGLIB: TStringField;
    pnQtdReg: TPanel;
    PedResID_PEDRES: TIntegerField;
    PedRe2CODITE: TStringField;
    PedPar: TwwQuery;
    PedParUSADEC: TStringField;
    PedRe2FLGMAR: TStringField;
    pnTotReg: TPanel;
    bVencimentos: TSpeedButton;
    bLiberar: TSpeedButton;
    bObservar: TSpeedButton;
    bRetornar: TSpeedButton;
    Label1: TLabel;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure grRe2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure bRetornarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bVencimentosClick(Sender: TObject);
    procedure bObservarClick(Sender: TObject);
    procedure bLiberarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    {Private declarations}
    Id_PedRes : integer;
    sBase,sOrdem : string;
  public
    {Public declarations}
  end;

var
  fmManPrg: TfmManPrg;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManLpr,
     ManPre, ManObp, ManEve, PsqHre;

{$R *.DFM}

procedure TfmManPrg.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(PedRes.TotGer) as TotReg,'+
               '        Count(*) as QtdReg'+
               ' From PedRes'+
               ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Periodo de Programacao');

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

procedure TfmManPrg.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 113 then bVencimentos.OnClick(Sender);

  if key = 115 then bLiberar.OnClick(Sender);

  if key = 116 then bObservar.OnClick(Sender);

  if key = 117 then bRetornar.OnClick(Sender);

end;

procedure TfmManPrg.FormShow(Sender: TObject);
begin
  inherited;

  if PedParUsaDec.Value = 'Nao' then PedRe2QtpRe2.DisplayFormat := '###,###,##0';

  with PedRes,SQL do begin

       Close;
       Text := sBase + sOrdem;
       Open;

  end;

  CountRegistros;
  
  EdPsqId_PedRes.SetFocus;

end;

procedure TfmManPrg.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPrg.EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPrg.bAtualizarClick(Sender: TObject);
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

     if ((PedRe2.FieldbyName('FlgVal').AsString = 'Sim') or (PedRe2.FieldbyName('FlgMar').AsString = 'Sim')) and (PedRe2.FieldbyName('FlgLib').AsString = 'Nao') then begin

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

  if PedResId_PedRes.Value > 0 then
     pnDteRes.Caption := ' Emitido em ' + FormatDateTime('dd/mm/yyyy',PedResDteRes.Value)
  else
     pnDteRes.Caption := ' Emitido em ';

  if PedResCodCli.Value > 0 then
     pnCodCli.Caption := ' Código do cliente : ' + FNumZeros(IntToStr(PedResCodCli.Value),7)
  else
     pnCodCli.Caption := ' Código do cliente : ';

end;

procedure TfmManPrg.bRetornarClick(Sender: TObject);
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

           fmManEve := TfmManEve.Create(Self);

           fmManEve.Caption := 'Aguardando periodo de programação - Retornar para o vendedor';

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

procedure TfmManPrg.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.Id_PedRes,'+
           '        PedRes.CodEmp,'+
           '        PedRes.DteRes,'+
           '        PedRes.DtfRes,'+
           '        PedRes.CodVen,'+
           '        PedRes.CodPfa,'+
           '        PedRes.CodCli,'+
           '        PedRes.TotGer,'+
           '        PedRes.SitRes,'+
           '        FinCli.NomCli '+
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Periodo de Programacao');

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;

  sOrdem := ' Order by PedRes.DtfRes,PedRes.Id_PedRes';

end;

procedure TfmManPrg.bVencimentosClick(Sender: TObject);
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

procedure TfmManPrg.bObservarClick(Sender: TObject);
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

procedure TfmManPrg.bLiberarClick(Sender: TObject);
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

           fmManLpr := TfmManLpr.Create(Self);

           fmManLpr.Id_PedRes := PedResId_PedRes.Value;

           fmManLpr.PedPro.Close;
           fmManLpr.PedPro.Params[0].AsInteger := -1;
           fmManLpr.PedPro.Open;

           fmManLpr.ShowModal;

           sCorreto := fmManLpr.Liberar;

        finally   

           FreeAndNil(fmManLpr);

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

procedure TfmManPrg.FormKeyPress(Sender: TObject; var Key: Char);
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

