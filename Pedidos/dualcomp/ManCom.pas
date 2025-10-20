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
    Bevel2: TBevel;
    grRes: ThGrid;
    quSql: TwwQuery;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    UpRes: TUpdateSQL;
    pnCodCli: TPanel;
    Panel1: TPanel;
    EdPsqNumRes: TdxColorEdit;
    dbRes: TdxDBGraphicEdit;
    PedResDTERES: TDateTimeField;
    PedResNUMRES: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTOTRES: TFloatField;
    PedResTOTREN: TFloatField;
    PedResTOTGER: TFloatField;
    PedResNOMCLI: TStringField;
    dbOco: TdxDBGraphicEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    PedRe2: TwwQuery;
    PedRe2DESRE2: TStringField;
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
    bVencimento: TSpeedButton;
    bAtualizar: TBitBtn;
    bObservar: TSpeedButton;
    PedResCODEMP: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResSITRES: TStringField;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2NRORE2: TIntegerField;
    PedRe2FLGVAL: TStringField;
    PedRe2FLGPAC: TStringField;
    PedRe2FLGLIB: TStringField;
    pnDesRe2: TPanel;
    PedRe2CODITE: TStringField;
    UpRe2: TUpdateSQL;
    PedRe2PCORE2: TFloatField;
    PedRe2FLASEQ: TStringField;
    pnQtdReg: TPanel;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure grRe2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure bVencimentoClick(Sender: TObject);
    procedure rgTipoChange(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bObservarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure PedRe2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DsRe2DataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
    sBase,sBase2 : string;
    CodEmp : integer;
    DteRes : TDateTime;
    NumRes : integer;
  public
    {Public declarations}
  end;

var
  fmManCom: TfmManCom;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManObs,
     ManLco, ManPre, ManObp, PsqEs2;

{$R *.DFM}

procedure TfmManCom.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 113 then bVencimento.OnClick(Sender);

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bObservar.OnClick(Sender);  

end;

procedure TfmManCom.FormShow(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.CodEmp,'+
           '        PedRes.DteRes,'+
           '        PedRes.NumRes,'+
           '        PedRes.CodVen,'+
           '        PedRes.CodCli,'+
           '        PedRes.CodPfa,'+
           '        PedRes.TotRes,'+
           '        PedRes.TotGer,'+
           '        PedRes.TotRen,'+
           '        PedRes.SitRes,'+
           '        FinCli.NomCli'+
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao do Depto Comercial');

   sBase2 := ' Select PedRe2.CodEmp,'+
             '        PedRe2.DteRes,'+
             '        PedRe2.NumRes,'+
             '        PedRe2.SeqRe2,'+
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
             '        PedRe2.FlgPac,'+
             '        PedRe2.FlgLib,'+
             '        PedRe2.NroRe2,'+
             '        PedRe2.FlaSeq '+
             ' From PedRe2';

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

procedure TfmManCom.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCom.bIncluirClick(Sender: TObject);
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

              fmManLco := TfmManLco.Create(Self);

              fmManLco.PedRes.Close;
              fmManLco.PedRes.Params[0].AsInteger  := PedResCodEmp.Value;
              fmManLco.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
              fmManLco.PedRes.Params[2].AsInteger  := PedResNumRes.Value;
              fmManLco.PedRes.Open;

              fmManLco.ShowModal;

              sCorreto := fmManLco.Liberar;

           finally

              FreeAndNil(fmManLco);

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

procedure TfmManCom.bEditarClick(Sender: TObject);
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

              fmManObs.Caption := 'Liberações de Pedidos Aguardando Depto Comercial';

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

procedure TfmManCom.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManCom.bVencimentoClick(Sender: TObject);
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

procedure TfmManCom.rgTipoChange(Sender: TObject);
begin
  inherited;
  if rgTipo.ItemIndex = 0 then begin

     with PedRe2,SQL do begin

          Close;
          Text := sBase2 +
                  ' Where PedRe2.CodEmp = :CodEmp'+
                  '   and PedRe2.DteRes = :DteRes'+
                  '   and PedRe2.NumRes = :NumRes'+
                  ' Order by CodEmp,DteRes,NumRes,NroRe2';
          Open;

     end;
  end;

  if rgTipo.ItemIndex = 1 then begin

     with PedRe2,SQL do begin

          Close;
          Text := sBase2 +
                  ' Where PedRe2.CodEmp = :CodEmp'+
                  '   and PedRe2.DteRes = :DteRes'+
                  '   and PedRe2.NumRes = :NumRes'+
                  '   and PedRe2.FlgVal = '''+ 'Sim' +''' and PedRe2.FlgLib = '''+ 'Nao' +''''+
                  ' Order by CodEmp,DteRes,NumRes,NroRe2';
          Open;

     end;
  end;

  if rgTipo.ItemIndex = 2 then begin

     with PedRe2,SQL do begin

          Close;
          Text := sBase2 +
                  ' Where PedRe2.CodEmp = :CodEmp'+
                  '   and PedRe2.DteRes = :DteRes'+
                  '   and PedRe2.NumRes = :NumRes'+
                  '   and PedRe2.FlgPac = '''+ 'Sim' +''' and PedRe2.FlgLib = '''+ 'Nao' +''''+
                  ' Order by CodEmp,DteRes,NumRes,NroRe2';
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

     if ((PedRe2.FieldbyName('FlgVal').AsString = 'Sim') or (PedRe2.FieldbyName('FlgPac').AsString = 'Sim')) and (PedRe2.FieldbyName('FlgLib').AsString = 'Nao') then begin

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

procedure TfmManCom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManCom.bObservarClick(Sender: TObject);
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

procedure TfmManCom.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) then begin

     if key = #5 then begin {Estoque}

        if ( Trim(PedRe2CodGru.Value) <> '' ) and
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
                           '        EstPro.IdePro'+
                           ' From EstPro'+
                           ' Where EstPro.CodClp = '''+ '1' +''''+
                           '   and EstPro.FlbPro = '''+ ' ' +'''';

                   if Trim( PedRe2CodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '''+ PedRe2CodGru.Value +'''';
                   if Trim( PedRe2CodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '''+ PedRe2CodSub.Value +'''';
                   if Trim( PedRe2CodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '''+ PedRe2CodPro.Value +'''';

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
     pnCodCli.Caption := ' Código do Cliente : ' + FNumZeros(IntToStr(PedResCodCli.Value),7)
  else
     pnCodCli.Caption := ' Código do Cliente : ';
end;

procedure TfmManCom.PedRe2CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if PedRe2CodEmp.Value > 0 then
     Text := PedRe2CodGru.Value+ '.' +PedRe2CodSub.Value+ '.' +PedRe2CodPro.Value+'    '
  else
     Text := ' ';
end;

procedure TfmManCom.DsRe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if PedRe2CodEmp.Value > 0 then
     pnDesRe2.Caption := ' ' + PedRe2DesRe2.Value
  else
     pnDesRe2.Caption := ' ';
end;

procedure TfmManCom.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Count(*) as QtdReg From PedRes'+
               ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Liberacao do Depto Comercial');

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

