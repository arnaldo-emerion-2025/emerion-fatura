unit ManCom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxDBELib, dxColorPickEdit, dxColorEdit, dxDBColorCurrencyEdit;

type
  TfmManCom = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label2: TLabel;
    grRes: ThGrid;
    quSql: TwwQuery;
    bRejeitar: TSpeedButton;
    bLiberar: TSpeedButton;
    UpRes: TUpdateSQL;
    pnCodCli: TPanel;
    Panel1: TPanel;
    EdPsqId_PedRes: TdxColorEdit;
    dbRes: TdxDBGraphicEdit;
    PedResDTERES: TDateTimeField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTOTRES: TFloatField;
    PedResTOTREN: TFloatField;
    PedResTOTGER: TFloatField;
    PedResNOMCLI: TStringField;
    dbOco: TdxDBGraphicEdit;
    Label1: TLabel;
    PedRe2: TwwQuery;
    PedRe2QTPRE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2TOTRE2: TFloatField;
    PedRe2DSCRE2: TFloatField;
    PedRe2PACRE2: TFloatField;
    PedRe2TOTREN: TFloatField;
    PedRe2DSCPER: TFloatField;
    DsRe2: TwwDataSource;
    grRe2: ThGrid;
    rgTipo: TdxColorPickEdit;
    bVencimentos: TSpeedButton;
    bAtualizar: TBitBtn;
    bObservar: TSpeedButton;
    PedResCODCLI: TIntegerField;
    PedResSITRES: TStringField;
    pnDesRe2: TPanel;
    PedResID_PEDRES: TIntegerField;
    PedRe2DESRE2: TStringField;
    PedRe2PCORE2: TFloatField;
    PedRe2FLGVAL: TStringField;
    PedRe2FLGLIB: TStringField;
    PedRe2NRORE2: TIntegerField;
    PedRe2FLGATU: TStringField;
    PedRe2ID_PEDRE2: TIntegerField;
    PedPar: TwwQuery;
    PedParUSADEC: TStringField;
    bRetornar: TSpeedButton;
    PedRe2FLGMAR: TStringField;
    pnQtdReg: TPanel;
    pnTotReg: TPanel;
    PedRe2CODITE: TStringField;
    PedRe2CODCLP: TStringField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bLiberarClick(Sender: TObject);
    procedure bRejeitarClick(Sender: TObject);
    procedure EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
    procedure grRe2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure bVencimentosClick(Sender: TObject);
    procedure rgTipoChange(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bObservarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure DsRe2DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
  private
    Id_PedRes : integer;
    sBase,sBase2 : string;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManCom: TfmManCom;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManRej, ManLco,
     ManPre, ManObp, PsqEs2, ManEve, PsqHre;

{$R *.DFM}

procedure TfmManCom.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 113 then bVencimentos.OnClick(Sender);

  if key = 114 then bRejeitar.OnClick(Sender);

  if key = 115 then bLiberar.OnClick(Sender);

  if key = 116 then bObservar.OnClick(Sender);  

  if key = 117 then bRetornar.OnClick(Sender);

end;

procedure TfmManCom.FormShow(Sender: TObject);
begin
  inherited;

  if PedParUsaDec.Value = 'Nao' then PedRe2QtpRe2.DisplayFormat := '###,###,##0';
  
  with PedRes,SQL do begin

       Close;
       Text := sBase + ' Order by PedRes.Id_PedRes';
       Open;

  end;

  CountRegistros;

  EdPsqId_PedRes.SetFocus;
  
end;

procedure TfmManCom.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCom.bLiberarClick(Sender: TObject);
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

              fmManLco := TfmManLco.Create(Self);

              fmManLco.Id_PedRes := PedResId_PedRes.Value;

              fmManLco.PedCom.Close;
              fmManLco.PedCom.Params[0].AsInteger := -1;
              fmManLco.PedCom.Open;

              fmManLco.ShowModal;

              sCorreto := fmManLco.Liberar;

           finally

              FreeAndNil(fmManLco);

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

procedure TfmManCom.bRejeitarClick(Sender: TObject);
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

              fmManRej.Caption := 'Aguardando liberação do depto comercial - Rejeitar pedido';

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

procedure TfmManCom.EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManCom.bVencimentosClick(Sender: TObject);
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

procedure TfmManCom.rgTipoChange(Sender: TObject);
begin
  inherited;
  if rgTipo.ItemIndex = 0 then begin

     with PedRe2,SQL do begin

          Close;
          Text := sBase2 +
                  ' Where PedRe2.Id_PedRes = :Id_PedRes'+
                  ' Order by PedRe2.NroRe2';
          Open;

     end;
  end;

  if rgTipo.ItemIndex = 1 then begin

     with PedRe2,SQL do begin

          Close;
          Text := sBase2 +
                  ' Where PedRe2.Id_PedRes = :Id_PedRes'+
                  '   and PedRe2.FlgMar = '+ QuotedStr('Sim') +
                  '   and PedRe2.FlgLib = '+ QuotedStr('Nao') +
                  ' Order by PedRe2.NroRe2';
          Open;

     end;
  end;
  
  if rgTipo.ItemIndex = 2 then begin

     with PedRe2,SQL do begin

          Close;
          Text := sBase2 +
                  ' Where PedRe2.Id_PedRes = :Id_PedRes'+
                  '   and PedRe2.FlgVal = '+ QuotedStr('Sim') +
                  '   and PedRe2.FlgLib = '+ QuotedStr('Nao') +
                  ' Order by PedRe2.NroRe2';
          Open;

     end;
  end;
end;

procedure TfmManCom.grRe2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
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

procedure TfmManCom.bAtualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqId_PedRes.Text ) <> '' then begin

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  ' and PedRes.Id_PedRes = '+ QuotedStr(EdPsqId_PedRes.Text) +
                  ' Order by PedRes.Id_PedRes';
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

procedure TfmManCom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManCom.bObservarClick(Sender: TObject);
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

procedure TfmManCom.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) then begin

     if key = #5 then begin {Estoque}

        if ( Trim(PedRe2CodClp.Value) <> '' ) and
           ( Trim(PedRe2CodGru.Value) <> '' ) and
           ( Trim(PedRe2CodSub.Value) <> '' ) and
           ( Trim(PedRe2CodPro.Value) <> '' ) then begin

           try

              fmPsqEs2 := TfmPsqEs2.Create(Self);

              fmPsqEs2.sEntr := 'N';

              fmPsqEs2.sCodClp := '1';

              with fmPsqEs2.EstPro,SQL do begin

                   Close;
                   Text := ' Select EstPro.CodClp,'+
                           '        EstPro.CodGru,'+
                           '        EstPro.CodSub,'+
                           '        EstPro.CodPro,'+
                           '        EstPro.DscPro,'+
                           '        EstPro.RefPro,'+
                           '        EstPro.LocPro,'+
                           '        EstPro.CodUne,'+
                           '        EstPro.CodUns,'+
                           '        EstPro.QtePro,'+
                           '        EstPro.QtsPro,'+
                           '        EstPro.EntIpi,'+
                           '        EstPro.SaiIpi,'+
                           '        EstPro.ClfEnt,'+
                           '        EstPro.ClfSai,'+
                           '        EstPro.EntIcm,'+
                           '        EstPro.SaiIcm,'+
                           '        EstPro.SimPro,'+
                           '        EstPro.CodSt1,'+
                           '        EstPro.CodSt2,'+
                           '        EstPro.QtdEmb,'+
                           '        EstPro.ImgPro,'+
                           '        EstPro.FlgPro,'+
                           '        EstPro.CbaPro,'+
                           '        EstPro.WebPro,'+
                           '        EstPro.CodCat,'+
                           '        EstPro.CodTip,'+
                           '        EstPro.CodMrc,'+
                           '        EstPro.NumPro,'+
                           '        EstPro.CodAnt,'+
                           '        EstPro.IdePro '+
                           ' From EstPro'+
                           ' Where EstPro.CodClp = '+ QuotedStr('1')+
                           '   and EstPro.FlbPro = '+ QuotedStr(' ');

                   if Trim( PedRe2CodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '+ QuotedStr(PedRe2CodGru.Value);
                   if Trim( PedRe2CodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '+ QuotedStr(PedRe2CodSub.Value);
                   if Trim( PedRe2CodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '+ QuotedStr(PedRe2CodPro.Value);

                   Text := Text + ' Order by EstPro.DscPro';

                   Open;

              end;

              fmPsqEs2.ShowModal;

           finally

              FreeAndNil(fmPsqEs2);

           end;
        end;
     end;
  end;

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

procedure TfmManCom.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCom := nil;
end;

procedure TfmManCom.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if PedResCodCli.Value > 0 then
     pnCodCli.Caption := ' Código do cliente : ' + FNumZeros(IntToStr(PedResCodCli.Value),7)
  else
     pnCodCli.Caption := ' Código do cliente : ';
end;

procedure TfmManCom.DsRe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if PedRe2Id_PedRe2.Value > 0 then
     pnDesRe2.Caption := ' ' + PedRe2DesRe2.Value
  else
     pnDesRe2.Caption := ' ';
end;

procedure TfmManCom.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(PedRes.TotGer) as TotReg,'+
               '        Count(*) as QtdReg'+
               ' From PedRes'+
               ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao do Depto Comercial');

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

procedure TfmManCom.FormCreate(Sender: TObject);
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
           '        PedRes.SitRes,'+
           '        FinCli.NomCli '+
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao do Depto Comercial');

   sBase2 := ' Select PedRe2.Id_PedRe2,'+
             '        PedRe2.CodClp,'+
             '        PedRe2.CodGru,'+
             '        PedRe2.CodSub,'+
             '        PedRe2.CodPro,'+
             '        PedRe2.DesRe2,'+
             '        PedRe2.QtpRe2,'+
             '        PedRe2.VlqRe2,'+
             '        PedRe2.TotRe2,'+
             '        PedRe2.DscPer,'+
             '        PedRe2.DscRe2,'+
             '        PedRe2.PacRe2,'+
             '        PedRe2.PcoRe2,'+
             '        PedRe2.TotRen,'+
             '        PedRe2.FlgVal,'+
             '        PedRe2.FlgMar,'+
             '        PedRe2.FlgLib,'+
             '        PedRe2.NroRe2,'+
             '        PedRe2.FlgAtu,'+
             '        PedRe2.CodClp || _UNICODE_FSS '+ QuotedStr('-') +' || PedRe2.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || PedRe2.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || PedRe2.CodPro as CodIte'+
             ' From PedRe2';

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;
end;

procedure TfmManCom.bRetornarClick(Sender: TObject);
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

           fmManEve.Caption := 'Aguardando liberação do depto comercial - Retornar para o vendedor';

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
     end;

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

end.

