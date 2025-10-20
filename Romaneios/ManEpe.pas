unit ManEpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit;

type
  TfmManEpe = class(TfmPadrao)
    FatOrc: TwwQuery;
    FatOr2: TwwQuery;
    UpOrc: TUpdateSQL;
    DsOr2: TDataSource;
    DsOrc: TDataSource;
    quSql: TwwQuery;
    grOr21: TdxDBGraphicEdit;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    EdObsOr2: TdxDBColorEdit;
    pnObsOr2: TPanel;
    LbText: TLabel;
    Label8: TLabel;
    Label32: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Label26: TLabel;
    Shape3: TShape;
    EdSeqOr2: TdxDBColorCurrencyEdit;
    Label43: TLabel;
    Label44: TLabel;
    pnNroOr2: TPanel;
    Label3: TLabel;
    pnTotOrc: TPanel;
    EdTotOrc: TdxDBColorCurrencyEdit;
    Label12: TLabel;
    pnTotGer: TPanel;
    EdTotGer: TdxDBColorCurrencyEdit;
    Label18: TLabel;
    Label19: TLabel;
    Panel2: TPanel;
    Label29: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label6: TLabel;
    Label46: TLabel;
    Label9: TLabel;
    pnNumRes: TPanel;
    EdNumRes: TdxDBColorEdit;
    EdCodEmp: TdxDBColorEdit;
    EdCodCli: TdxDBColorEdit;
    EdCodPfa: TdxDBColorEdit;
    EdCodVen: TdxDBColorEdit;
    pnNomVen: TPanel;
    EdNomVen: TdxDBColorEdit;
    pnNomPfa: TPanel;
    EdNomPfa: TdxDBColorEdit;
    pnNomCli: TPanel;
    EdNomCli: TdxDBColorEdit;
    pnNomEmp: TPanel;
    EdNomEmp: TdxDBColorEdit;
    Label2: TLabel;
    Label16: TLabel;
    Label53: TLabel;
    Label68: TLabel;
    EdDteOrc: TdxDBColorDateEdit;
    pnUfeOrc: TPanel;
    EdUfeOrc: TdxDBColorEdit;
    PaintBox1: TPaintBox;
    FatOr2CODGRU: TStringField;
    FatOr2CODSUB: TStringField;
    FatOr2CODPRO: TStringField;
    FatOr2DESOR2: TStringField;
    FatOr2QTPOR2: TFloatField;
    FatOr2VLUOR2: TFloatField;
    FatOr2ICMOR2: TFloatField;
    FatOr2TOTOR2: TFloatField;
    grOr2: ThGrid;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Label31: TLabel;
    Label45: TLabel;
    EdDtcTmo: TdxDBColorDateEdit;
    Label17: TLabel;
    Label37: TLabel;
    EdValTmo: TdxDBColorCurrencyEdit;
    FatOrcCODEMP: TIntegerField;
    FatOrcDTERES: TDateTimeField;
    FatOrcNUMRES: TIntegerField;
    FatOrcSEQLIB: TIntegerField;
    FatOrcSEQORC: TIntegerField;
    FatOrcDTEORC: TDateTimeField;
    FatOrcHREORC: TStringField;
    FatOrcFLGTMO: TStringField;
    FatOrcCODTMO: TIntegerField;
    FatOrcTIPTMO: TStringField;
    FatOrcDTCTMO: TDateTimeField;
    FatOrcVALTMO: TFloatField;
    FatOrcFLGAVI: TStringField;
    FatOrcSEQITE: TIntegerField;
    FatOrcQTIORC: TIntegerField;
    FatOrcQTPORC: TIntegerField;
    FatOrcSQPORC: TIntegerField;
    FatOrcQTDVOL: TIntegerField;
    FatOrcTOTORC: TFloatField;
    FatOrcTOTFRT: TFloatField;
    FatOrcTOTSEG: TFloatField;
    FatOrcTOTDES: TFloatField;
    FatOrcTOTGER: TFloatField;
    FatOrcLANORC: TFloatField;
    FatOrcSLDORC: TFloatField;
    FatOrcCODUSU: TIntegerField;
    FatOrcHRECOR: TStringField;
    FatOrcDTECOR: TDateTimeField;
    FatOrcUSUCOR: TIntegerField;
    FatOrcOBSCOR: TMemoField;
    FatOrcOBSORC: TMemoField;
    FatOrcTRASDA: TIntegerField;
    FatOrcDTESDA: TDateTimeField;
    FatOrcHRESDA: TStringField;
    FatOrcUSUSDA: TIntegerField;
    FatOrcOBSSDA: TStringField;
    FatOrcCODVEI: TIntegerField;
    FatOrcDTEENT: TDateTimeField;
    FatOrcHREENT: TStringField;
    FatOrcUSUENT: TIntegerField;
    FatOrcOBSENT: TStringField;
    FatOrcFLGATU: TStringField;
    FatOrcFLGIMP: TStringField;
    FatOrcDTEATU: TDateTimeField;
    FatOrcHREATU: TStringField;
    FatOrcUSUATU: TIntegerField;
    FatOrcSITORC: TStringField;
    FatOrcNROCOL: TStringField;
    FatOrcFLGIPI: TStringField;
    FatOrcCODCLI: TIntegerField;
    FatOrcCODVEN: TIntegerField;
    FatOrcCODPFA: TStringField;
    FatOrcTIPPFA: TStringField;
    FatOrcMODPFA: TStringField;
    FatOrcUFEORC: TStringField;
    FatOrcCEPCLI: TStringField;
    FatOrcTENCLI: TStringField;
    FatOrcENDCLI: TStringField;
    FatOrcREFCLI: TStringField;
    FatOrcNUMCLI: TStringField;
    FatOrcBAICLI: TStringField;
    FatOrcCIDCLI: TStringField;
    FatOrcUFECLI: TStringField;
    FatOrcINECLI: TStringField;
    FatOrcCGECLI: TStringField;
    FatOrcCODTRA: TIntegerField;
    FatOr2CODEMP: TIntegerField;
    FatOr2DTERES: TDateTimeField;
    FatOr2NUMRES: TIntegerField;
    FatOr2SEQLIB: TIntegerField;
    FatOr2SEQORC: TIntegerField;
    FatOr2CODCLP: TStringField;
    FatOr2IPIOR2: TFloatField;
    FatOr2SEQOR2: TIntegerField;
    FatOr2OBSOR2: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdDteOrcExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure DsOr2DataChange(Sender: TObject; Field: TField);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grOr2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdDteOrcKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grOr2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EdDteOrcMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
  private
  public
    sEnc,FlgTam,FlgCor,sEntr,Finalizar : string;
  end;

var
  fmManEpe: TfmManEpe;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, AuxPsq, PsqEst,
     ManLpe, ManEp1;

{$R *.DFM}

procedure TfmManEpe.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  sEntr := 'N';

  Finalizar := 'N';

end;

procedure TfmManEpe.FormShow(Sender: TObject);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select * From EstPar';
       Open;

  end;

  FlgCor := quSQL.FieldbyName('TamCor').AsString;
  FlgTam := quSQL.FieldbyName('FlgTam').AsString;

  sEntr := 'S';

  FatOrc.Close;
  FatOrc.Params[0].AsInteger  := fmManLpe.CodEmp;
  FatOrc.Params[1].AsDateTime := fmManLpe.DteRes;
  FatOrc.Params[2].AsInteger  := fmManLpe.NumRes;
  FatOrc.Params[3].AsInteger  := fmManLpe.SeqLib;
  FatOrc.Params[4].AsInteger  := fmManLpe.SeqOrc;
  FatOrc.Open;

  FatOr2.Close;
  FatOr2.Params[0].AsInteger  := FatOrcCodEmp.Value;
  FatOr2.Params[1].AsDateTime := FatOrcDteRes.Value;
  FatOr2.Params[2].AsInteger  := FatOrcNumRes.Value;
  FatOr2.Params[3].AsInteger  := FatOrcSeqLib.Value;
  FatOr2.Params[4].AsInteger  := FatOrcSeqOrc.Value;
  FatOr2.Open;

  pnUfeOrc.Caption := FatOrcUfeOrc.Value;
  pnNumRes.Caption := IntToStr(FatOrcNumRes.Value);
  
  with quSql,SQL do begin

       Close;
       Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(FatOrcCodEmp.Value));
       Open;

       pnNomEmp.Caption := FieldByName('NomEmp').AsString;

  end;

  with quSql,SQL do begin

       Close;
       Text := ' Select NomCli From FinCli Where FinCli.CodCli = '+ QuotedStr(IntToStr(FatOrcCodCli.Value));
       Open;

       pnNomCli.Caption := FieldByName('NomCli').AsString;

  end;

  with quSql,SQL do begin

       Close;
       Text := ' Select ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(FatOrcCodVen.Value));
       Open;

       pnNomVen.Caption := FieldByName('ApeVen').AsString;

  end;

  with quSql,SQL do begin

       Close;
       Text := ' Select DscPfa From EstPfa Where EstPfa.CodPfa = '+ QuotedStr(FatOrcCodPfa.Value) +' and EstPfa.TipPfa = '+ QuotedStr(FatOrcTipPfa.Value);
       Open;

       pnNomPfa.Caption := FieldByName('DscPfa').AsString;

  end;

  if FatOrcSitOrc.Value <> 'Nao Concluido' then
     sEnc := 'S'
  else
     begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select FlgCot From FatPar';
          Open;

          if FieldbyName('FlgCot').AsString = 'Sim' then begin

             EdValTmo.Enabled := True;

             EdValTmo.Font.Style := [];

          end;
     end;

     EdDteOrc.Enabled := True;

     EdDteOrc.Font.Style := [];

     FatOrc.Edit;

     EdDteOrc.SetFocus;

  end;
end;

procedure TfmManEpe.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEpe.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManEpe := Nil;
end;

procedure TfmManEpe.EdDteOrcKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := ''

end;

procedure TfmManEpe.EdDteOrcMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := ''

end;

procedure TfmManEpe.DsOr2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnObsOr2.Caption := FatOr2ObsOr2.Value;

  pnNumRes.Caption := IntToStr(FatOrcNumRes.Value);

  pnTotOrc.Caption := FormatFloat('###,###,##0.00',FatOrcTotOrc.Value);
  pnTotGer.Caption := FormatFloat('###,###,##0.00',FatOrcTotGer.Value);

  pnNroOr2.Caption := FNumZeros(IntToStr(FatOr2SeqOr2.Value),4)+'/'+FNumZeros(IntToStr(FatOrcQtiOrc.Value),4);

end;

procedure TfmManEpe.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManEpe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if FatOrc.State <> dsBrowse then begin

        FatOrc.CancelUpdates;

        Close;

        end
     else
        Close;
  end;

  if key = 123 then begin {F12-Finalizar Pedido}

     if FatOrcTotOrc.Value > 0 then begin

        if grOr2.Focused then begin

           try

              fmManEp1 := TfmManEp1.Create(Self);

              fmManEp1.ShowModal;

           finally

              FreeAndNil(fmManEp1);

           end;

           if Finalizar = 'S' then close;

        end;
     end;
  end;
end;

procedure TfmManEpe.FormClose(Sender: TObject; var Action: TCloseAction);
var
DteRes : TDateTime;
CodEmp,NumRes,SeqLib : integer;
begin
  inherited;
  if finalizar = 'N' then begin

     if fMsg('Deseja Realmente Abandonar a Emissão do Romaneio ?','O') then begin

        if FatOrcNumRes.Value > 0 then begin

           if FatOrcSitOrc.Value = 'Nao Concluido' then begin

              FatOrc.Delete;

              with FatOrc do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      if FatOrc.State <> dsBrowse then FatOrc.CancelUpdates;

                      Abort;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;
           end;
        end;

        CodEmp := fmManLpe.PedLibCodEmp.Value;
        DteRes := fmManLpe.PedLibDteRes.Value;
        NumRes := fmManLpe.PedLibNumRes.Value;
        SeqLib := fmManLpe.PedLibSeqLib.Value;

        fmManLpe.PedLib.Close;
        fmManLpe.PedLib.Open;

        fmManLpe.FatOrc.Close;
        fmManLpe.FatOrc.Open;

        if CodEmp > 0 then fmManLpe.PedLib.Locate('CodEmp;DteRes;NumRes;SeqLib',VarArrayOf([CodEmp,DteRes,NumRes,SeqLib]), [loPartialKey]);

        Action := CaFree;

        end
     else
        Abort;

     end
  else
     begin

     if FatOrcSitOrc.Value <> 'Faturado' then begin

        CodEmp := fmManLpe.PedLibCodEmp.Value;
        DteRes := fmManLpe.PedLibDteRes.Value;
        NumRes := fmManLpe.PedLibNumRes.Value;
        SeqLib := fmManLpe.PedLibSeqLib.Value;

        fmManLpe.PedLib.Close;
        fmManLpe.PedLib.Open;

        fmManLpe.FatOrc.Close;
        fmManLpe.FatOrc.Open;

        fmManLpe.PedLib.Locate('CodEmp;DteRes;NumRes;SeqLib',VarArrayOf([CodEmp,DteRes,NumRes,SeqLib]), [loPartialKey])

        end
     else
        begin

        fmManLpe.PedLib.Close;
        fmManLpe.PedLib.Open;

        fmManLpe.FatOrc.Close;
        fmManLpe.FatOrc.Open;

        fmManLpe.EdPsqNumRes.Text := '';

     end;

     Action := CaFree;

  end;
end;

procedure TfmManEpe.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then begin

     if FatOrcSitOrc.Value = 'Faturado' then fMsg('Operação não Pode ser Realizada. Romaneio já Emitido.','E')

     else if FatOrcSitOrc.Value = 'Cancelado' then fMsg('Operação não Pode ser Realizada. Romaneio Cancelado.','E');

     Finalizar := 'S';

     Close;

  end;
end;

procedure TfmManEpe.grOr2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  LbText.Caption := '';
end;

procedure TfmManEpe.grOr2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  LbText.Caption := '';
end;

procedure TfmManEpe.EdDteOrcExit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then EdDteOrc.SetFocus
end;

procedure TfmManEpe.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManEpe.Panel2Exit(Sender: TObject);
begin
  inherited;

  if FatOrcDteOrc.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdDteOrc);

  if FatOrc.State <> dsBrowse then begin

     with FatOrc do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if FatOrc.State = dsBrowse then FatOrc.Edit;

             EdDteOrc.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     FatOrc.Close;
     FatOrc.Open;

     FatOr2.Close;
     FatOr2.Open;

     EdDteOrc.Enabled := False;
     EdValTmo.Enabled := False;

     EdDteOrc.Font.Style := [fsBold];
     EdValTmo.Font.Style := [fsBold];

     grOr2.SetFocus;

     end
  else
     begin

     EdDteOrc.Enabled := False;
     EdValTmo.Enabled := False;

     EdDteOrc.Font.Style := [fsBold];
     EdValTmo.Font.Style := [fsBold];

     grOr2.SetFocus;

  end;
end;

end.
