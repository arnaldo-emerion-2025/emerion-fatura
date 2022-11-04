unit ManFrt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxDBELib, dxColorEdit, RDprint;

type
  TfmManFrt = class(TfmPadrao)
    PedLib: TwwQuery;
    DsLib: TwwDataSource;
    PaintBox: TPaintBox;
    grLib: ThGrid;
    quSql: TwwQuery;
    bRejeitar: TSpeedButton;
    bLiberar: TSpeedButton;
    pnTelefone: TPanel;
    Panel1: TPanel;
    EdPsqId_PedRes: TdxColorEdit;
    PedLb2: TwwQuery;
    DsLb2: TwwDataSource;
    grLb2: ThGrid;
    PedLibDTERES: TDateTimeField;
    PedLibCODVEN: TIntegerField;
    PedLibCODPFA: TStringField;
    PedLibTOTGER: TFloatField;
    PedLibNOMCLI: TStringField;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
    pnCliente: TPanel;
    bAtualizar: TBitBtn;
    PedLibID_PEDLIB: TIntegerField;
    PedLibID_PEDRES: TIntegerField;
    PedLibCODCLI: TIntegerField;
    PedLibSITLIB: TStringField;
    PedLb2DESRE2: TStringField;
    PedLb2ULTQTS: TFloatField;
    PedLb2VLQRE2: TFloatField;
    PedLb2ICMRE2: TFloatField;
    PedLb2TOTLB2: TFloatField;
    PedLb2CODITE: TStringField;
    PedLibPT1CLI: TStringField;
    PedLibFO1CLI: TStringField;
    pnQtdReg: TPanel;
    pnTotReg: TPanel;
    bObservar: TSpeedButton;
    PedLibCODTRA: TIntegerField;
    pnQtdVol: TPanel;
    Panel2: TPanel;
    pnTotLiq: TPanel;
    Panel4: TPanel;
    pnTotBrt: TPanel;
    PedLibQTDVOL: TIntegerField;
    PedLibINFLIQ: TFloatField;
    PedLibINFBRT: TFloatField;
    pnCodCli: TPanel;
    PedLibINFCUB: TFloatField;
    Panel3: TPanel;
    pnTotCub: TPanel;
    PedLibID_SEPPED: TIntegerField;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bLiberarClick(Sender: TObject);
    procedure bRejeitarClick(Sender: TObject);
    procedure EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsLibDataChange(Sender: TObject; Field: TField);
    procedure bObservarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    {Private declarations}
    sBase : string;
    Id_PedRes,Id_PedLib : Integer;
  public
    {Public declarations}
  end;

var
  fmManFrt: TfmManFrt;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManRej, ManObp,
     ManLfr, PsqHre;

{$R *.DFM}

procedure TfmManFrt.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bRejeitar.OnClick(Sender);

  if key = 115 then bLiberar.OnClick(Sender);

  if key = 116 then bObservar.OnClick(Sender);

end;

procedure TfmManFrt.FormShow(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedLib.Id_PedLib,'+
           '        PedLib.Id_PedRes,'+
           '        PedRes.DteRes,'+
           '        PedRes.CodCli,'+
           '        PedRes.CodVen,'+
           '        PedRes.CodPfa,'+
           '        PedRes.CodTra,'+
           '        PedLib.TotGer,'+
           '        PedLib.QtdVol,'+
           '        PedLib.InfLiq,'+
           '        PedLib.InfBrt,'+
           '        PedLib.InfCub,'+
           '        PedLib.Id_SepPed,'+
           '        PedLib.SitLib,'+
           '        FinCli.NomCli,'+
           '        FinCli.Pt1Cli,'+
           '        FinCli.Fo1Cli '+
           ' From PedLib LEFT JOIN PedRes ON (PedLib.Id_PedRes = PedRes.Id_PedRes)'+
           '             LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           ' Where PedLib.SitLib = '+ QuotedStr('Aguardando informacoes de transporte');

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;

  with PedLib,SQL do begin

       Close;
       Text := sBase + ' Order by PedLib.Id_PedRes';
       Open;

  end;

  CountRegistros;
  
  if GCodVen_Id > 0 then begin

     if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

         bLiberar.Enabled  := False;
         bRejeitar.Enabled := False;

     end;
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select UsaDec From PedPar';
       Open;

       if FieldbyName('UsaDec').AsString = 'Sim' then
          PedLb2UltQts.DisplayFormat := '###,###,##0.0000'
       else
          PedLb2UltQts.DisplayFormat := '###,###,##0';
          
  end;

  EdPsqId_PedRes.SetFocus;
  
end;

procedure TfmManFrt.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManFrt.bLiberarClick(Sender: TObject);
var
  sCorreto : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedLibId_PedRes.Value > 0 then begin

        Id_PedRes := PedLibId_PedRes.Value;

        with PedLib,SQL do begin

             Close;
             Text := sBase +
                     ' and PedLib.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes));
             Open;

        end;

        CountRegistros;

        if PedLibId_PedRes.Value > 0 then begin

           try

              fmManLfr := TfmManLfr.Create(Self);

              fmManLfr.CodTra := PedLibCodTra.Value;
              
              fmManLfr.Id_PedLib := PedLibId_PedLib.Value;
              fmManLfr.Id_PedRes := PedLibId_PedRes.Value;

              fmManLfr.PedTra.Close;
              fmManLfr.PedTra.Params[0].AsInteger := -1;
              fmManLfr.PedTra.Open;

              fmManLfr.ShowModal;

              sCorreto := fmManLfr.Liberar;

           finally

              FreeAndNil(fmManLfr);

           end;

           if sCorreto = 'Sim' then begin

              EdPsqId_PedRes.Text := '';

              with PedLib,SQL do begin

                   Close;
                   Text := sBase + ' Order by PedLib.Id_PedRes';
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

procedure TfmManFrt.bRejeitarClick(Sender: TObject);
var
  sCorreto : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedLibId_PedLib.Value > 0 then begin

        Id_PedLib := PedLibId_PedLib.Value;

        with PedLib,SQL do begin

             Close;
             Text := sBase +
                     ' and PedLib.Id_PedLib = '+ QuotedStr(IntToStr(Id_PedLib));
             Open;

        end;

        CountRegistros;

        if PedLibId_PedLib.Value > 0 then begin

           If PedLibId_SepPed.Value = 0 then begin

              try

                 fmManRej := TfmManRej.Create(Self);

                 fmManRej.Caption := 'Aguardando informações de transporte - Rejeitar pedido';

                 fmManRej.Id_PedRes := PedLibId_PedRes.Value;

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

                 with PedLib,SQL do begin

                      Close;
                      Text := sBase + ' Order by PedLib.Id_PedRes';
                      Open;

                 end;

                 CountRegistros;

              end;

              end
           else
              fmsgErro('Operação não pode ser realizada. Pedido em processo de separação no ckeckout.',Nil);
              
        end;
     end;

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManFrt.EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManFrt.bAtualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqId_PedRes.Text ) <> '' then begin

     with PedLib,SQL do begin

          Close;
          Text := sBase +
                  ' and PedLib.Id_PedRes = '+ QuotedStr(EdPsqId_PedRes.Text) +
                  ' Order by PedLib.Id_PedRes';
          Open;

     end;

     end
  else
     begin

     with PedLib,SQL do begin

          Close;
          Text := sBase + ' Order by PedLib.Id_PedRes';
          Open;

     end;
  end;

  CountRegistros;

end;

procedure TfmManFrt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManFrt.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManFrt := nil;
end;

procedure TfmManFrt.DsLibDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnQtdVol.Caption := IntToStr(PedLibQtdVol.Value)+' ';
  
  pnTotLiq.Caption := FormatFloat('###,###,##0.0000',PedLibInfLiq.Value)+' ';
  pnTotBrt.Caption := FormatFloat('###,###,##0.0000',PedLibInfBrt.Value)+' ';
  pnTotCub.Caption := FormatFloat('###,###,##0.0000',PedLibInfCub.Value)+' ';

  if PedLibCodCli.Value > 0 then
     pnCodCli.Caption := IntToStr(PedLibCodCli.Value)+' '
  else
     pnCodCli.Caption := '';

end;

procedure TfmManFrt.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(PedLib.TotGer) as TotReg,'+
               '        Count(*) as QtdReg'+
               ' From PedLib'+
               ' Where PedLib.SitLib = '+ QuotedStr('Aguardando informacoes de transporte');

       if Id_PedRes > 0 then Text := Text + ' and PedLib.Id_PedLib = '+ QuotedStr(IntToStr(Id_PedRes));

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

procedure TfmManFrt.bObservarClick(Sender: TObject);
begin
  inherited;
  if PedLibId_PedRes.Value > 0 then begin

     Id_PedRes := PedLibId_PedRes.Value;

     with PedLib,SQL do begin

          Close;
          Text := sBase +
                  ' and PedLib.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes));
          Open;

     end;

     CountRegistros;

     if PedLibId_PedRes.Value > 0 then begin

        try

           fmManObp := TfmManObp.Create(Self);

           fmManObp.PedRes.Close;
           fmManObp.PedRes.Params[0].AsInteger := PedLibId_PedRes.Value;
           fmManObp.PedRes.Open;

           fmManObp.ShowModal;

        finally

           FreeAndNil(fmManObp);

        end;
     end;
  end;
end;

procedure TfmManFrt.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #16 then begin {Historico do pedido}

     if PedLibId_PedRes.Value > 0 then begin

        Id_PedRes := PedLibId_PedRes.Value;

        with PedLib,SQL do begin

             Close;
             Text := sBase +
                     ' and PedLib.Id_PedRes = '+ QuotedStr(IntToStr(Id_PedRes));
             Open;

        end;

        CountRegistros;

        if PedLibId_PedRes.Value > 0 then begin

           try

              fmPsqHre := TfmPsqHre.Create(Self);

              fmPsqHre.PedLog.Close;
              fmPsqHre.PedLog.Params[0].AsInteger := PedLibId_PedRes.Value;
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

