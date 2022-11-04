unit ManTrf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxDBELib, dxColorPickEdit, dxColorEdit;

type
  TfmManTrf = class(TfmPadrao)
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
    dbOco: TdxDBGraphicEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    PedRe2: TwwQuery;
    PedRe2DSCPRO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2TOTRE2: TFloatField;
    PedRe2TOTREN: TFloatField;
    DsRe2: TwwDataSource;
    grRe2: ThGrid;
    bAtualizar: TBitBtn;
    bObservar: TSpeedButton;
    PedResAPECLI: TStringField;
    PedResCODEMP: TIntegerField;
    PedResCODCLI: TIntegerField;
    PedResSITRES: TStringField;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2NRORE2: TIntegerField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bObservarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  Linha : Integer;
  fmManTrf: TfmManTrf;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManObs,
     ManObp, PsqEs2;

{$R *.DFM}

procedure TfmManTrf.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bObservar.OnClick(Sender);  

end;

procedure TfmManTrf.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumRes.SetFocus;
end;

procedure TfmManTrf.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManTrf.bIncluirClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedResCodEmp.Value > 0 then begin

        PedRes.Edit;

        PedResSitRes.Value := 'Liberado';

        with PedRes do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedRes.State = dsBrowse then PedRes.Edit;

                grRes.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        EdPsqNumRes.Text := '';

        with PedRes,SQL do begin

             Close;
             Text := ' Select PedRes.CodEmp,'+
                     '        PedRes.DteRes,'+
                     '        PedRes.NumRes,'+
                     '        PedRes.CodVen,'+
                     '        PedRes.CodCli,'+
                     '        PedRes.CodPfa,'+
                     '        PedRes.TotRes,'+
                     '        PedRes.TotGer,'+
                     '        PedRes.TotRen,'+
                     '        PedRes.SitRes,'+
                     '        FinCli.ApeCli'+
                     ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
                     ' Where PedRes.SitRes = '''+ 'Aguardando Liberacao do Depto de Compras' +''''+
                     ' Order by PedRes.NumRes';
             Open;

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManTrf.bEditarClick(Sender: TObject);
var
sCorreto : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedResCodEmp.Value > 0 then begin

        try

           fmManObs := TfmManObs.Create(Self);

           fmManObs.Caption := 'Liberações de Pedidos Aguardando Depto de Compras';

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
                Text := ' Select PedRes.CodEmp,'+
                        '        PedRes.DteRes,'+
                        '        PedRes.NumRes,'+
                        '        PedRes.CodVen,'+
                        '        PedRes.CodCli,'+
                        '        PedRes.CodPfa,'+
                        '        PedRes.TotRes,'+
                        '        PedRes.TotGer,'+
                        '        PedRes.TotRen,'+
                        '        PedRes.SitRes,'+
                        '        FinCli.ApeCli'+
                        ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
                        ' Where PedRes.SitRes = '''+ 'Aguardando Liberacao do Depto de Compras' +''''+
                        ' Order by PedRes.NumRes';
                Open;

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManTrf.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManTrf.bAtualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNumRes.Text ) <> '' then begin

     with PedRes,SQL do begin

          Close;
          Text := ' Select PedRes.CodEmp,'+
                  '        PedRes.DteRes,'+
                  '        PedRes.NumRes,'+
                  '        PedRes.CodVen,'+
                  '        PedRes.CodCli,'+
                  '        PedRes.CodPfa,'+
                  '        PedRes.TotRes,'+
                  '        PedRes.TotGer,'+
                  '        PedRes.TotRen,'+
                  '        PedRes.SitRes,'+
                  '        FinCli.ApeCli'+
                  ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
                  ' Where PedRes.NumRes = '''+ EdPsqNumRes.Text                           +''''+
                  '   and PedRes.SitRes = '''+ 'Aguardando Liberacao do Depto de Compras' +''''+
                  ' Order by PedRes.NumRes';          
          Open;

     end;

     end
  else
     begin

     with PedRes,SQL do begin

          Close;
          Text := ' Select PedRes.CodEmp,'+
                  '        PedRes.DteRes,'+
                  '        PedRes.NumRes,'+
                  '        PedRes.CodVen,'+
                  '        PedRes.CodCli,'+
                  '        PedRes.CodPfa,'+
                  '        PedRes.TotRes,'+
                  '        PedRes.TotGer,'+
                  '        PedRes.TotRen,'+
                  '        PedRes.SitRes,'+
                  '        FinCli.ApeCli'+
                  ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
                  ' Where PedRes.SitRes = '''+ 'Aguardando Liberacao do Depto de Compras' +''''+
                  ' Order by PedRes.NumRes';
          Open;

     end;
  end;
end;

procedure TfmManTrf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManTrf.bObservarClick(Sender: TObject);
begin
  inherited;
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

procedure TfmManTrf.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure TfmManTrf.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManTrf := nil;
end;

procedure TfmManTrf.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if PedResCodCli.Value > 0 then
     pnCodCli.Caption := ' Código do Cliente : ' + FNumZeros(IntToStr(PedResCodCli.Value),7)
  else
     pnCodCli.Caption := ' Código do Cliente : ';
end;

end.

