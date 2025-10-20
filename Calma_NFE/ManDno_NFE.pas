unit ManDno_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxColorEdit;

type
  TfmManDno_NFE = class(TfmPadrao)
    PaintBox: TPaintBox;
    Label2: TLabel;
    Label3: TLabel;
    quSql: TwwQuery;
    bIncluir: TSpeedButton;
    UpFatDev: TUpdateSQL;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    EdPsqNumNfs: TdxColorEdit;
    FatDev: TwwQuery;
    DsFatDev: TwwDataSource;
    grFatDev: ThGrid;
    grFatDev1: TdxDBGraphicEdit;
    grFatDv21: TdxDBGraphicEdit;
    FatDevNUMRES: TIntegerField;
    FatDevNUMNFS: TIntegerField;
    FatDevDTEDEV: TDateTimeField;
    FatDevHREDEV: TStringField;
    FatDevTOTDEV: TFloatField;
    FatDevCODCLI: TIntegerField;
    FatDevCODVEN: TIntegerField;
    FatDv2: TwwQuery;
    DsDv2: TwwDataSource;
    grFatDv2: ThGrid;
    pnNomCli: TPanel;
    FatDevNFSCLI: TIntegerField;
    FatDevCODEMP: TIntegerField;
    FatDevDTERES: TDateTimeField;
    FatDevSEQLIB: TIntegerField;
    FatDevSEQFAT: TIntegerField;
    FatDevSEQDEV: TIntegerField;
    FatDevSITDEV: TStringField;
    FatDevNOMCLI: TStringField;
    FatDevAPEVEN: TStringField;
    FatDv2DESDV2: TStringField;
    FatDv2ULTQTD: TFloatField;
    FatDv2CODITE: TStringField;
    pnLogUsu: TPanel;
    FatDevLOGUSU: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure EdPsqNumNfsChange(Sender: TObject);
    procedure EdPsqNumNfsKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsFatDevDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    sBase: string;
    {Private declarations}
  public
    {Public declarations}
    DteRes: TDateTime;
    CodEmp, NumRes, SeqLib, SeqFat, SeqDev: integer;
  end;

var
  fmManDno_NFE: TfmManDno_NFE;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManDn1_NFE;

{$R *.DFM}

procedure TfmManDno_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select FatDev.CodEmp,' +
    '        FatDev.DteRes,' +
    '        FatDev.NumRes,' +
    '        FatDev.SeqLib,' +
    '        FatDev.SeqFat,' +
    '        FatDev.SeqDev,' +
    '        FatDev.NumNfs,' +
    '        cast(FatDev.NfsCli as integer)NFSCLI,' +
    '        FatDev.DteDev,' +
    '        FatDev.HreDev,' +
    '        FatDev.CodCli,' +
    '        FatDev.CodVen,' +
    '        FatDev.TotDev,' +
    '        FatDev.SitDev,' +
    '        FinCli.NomCli,' +
    '        FinVen.ApeVen,' +
    '        GerUsu.LogUsu ' +
    ' From FatDev LEFT JOIN FinCli ON (FatDev.CodCli = FinCli.CodCli)' +
    '             LEFT JOIN FinVen ON (FatDev.CodVen = FinVen.CodVen)' +
    '             LEFT JOIN GerUsu ON (FatDev.CodUsu = GerUsu.CodUsu)' +
    ' Where (FatDev.SitDev = ' + QuotedStr('Concluido') + ' or FatDev.SitDev = ' + QuotedStr('Faturando') + ')';

end;

procedure TfmManDno_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    close;

  if key = 115 then
    bIncluir.OnClick(Sender);

end;

procedure TfmManDno_NFE.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumNfs.SetFocus;
end;

procedure TfmManDno_NFE.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManDno_NFE.bIncluirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
  sFiltro: string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    Found := -1;

    for i := 0 to Screen.FormCount - 1 do
    begin

      if Screen.Forms[i] is TfmManDn1_NFE then
        Found := i;

    end;

    if Found >= 0 then
    begin

      fmManDn1_NFE.WindowState := wsNormal;
      fmManDn1_NFE.BringToFront;

    end
    else
    begin

      if FatDevCodEmp.Value > 0 then
      begin

        sFiltro := ' and FatDev.CodEmp = ' + QuotedStr(IntToStr(FatDevCodEmp.Value)) +
          ' and FatDev.DteRes = ' + QuotedStr(fDateToSQL(FatDevDteRes.Value)) +
          ' and FatDev.NumRes = ' + QuotedStr(IntToStr(FatDevNumRes.Value)) +
          ' and FatDev.SeqLib = ' + QuotedStr(IntToStr(FatDevSeqLib.Value)) +
          ' and FatDev.SeqFat = ' + QuotedStr(IntToStr(FatDevSeqFat.Value)) +
          ' and FatDev.SeqDev = ' + QuotedStr(IntToStr(FatDevSeqDev.Value));

        with FatDev, SQL do
        begin

          Close;
          Text := sBase + sFiltro;
          Open;

        end;

        if FatDevCodEmp.Value > 0 then
        begin

          if (Trim(FatDevSitDev.Value) = 'Concluido') or (Trim(FatDevSitDev.Value) = 'Faturando') then
          begin

            CodEmp := FatDevCodEmp.Value;
            DteRes := FatDevDteRes.Value;
            NumRes := FatDevNumRes.Value;
            SeqLib := FatDevSeqLib.Value;
            SeqFat := FatDevSeqFat.Value;
            SeqDev := FatDevSeqDev.Value;

            if FatDevSitDev.Value = 'Concluido' then
            begin

              FatDev.Edit;

              FatDevSitDev.Value := 'Faturando';

              with FatDev do
              begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
                ;

                try

                  ApplyUpdates; {Tenta aplicar as alterações}
                  ;

                  fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
                  ;

                except

                  fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
                  ;

                  if FatDev.State <> dsBrowse then
                    FatDev.CancelUpdates;

                  FatDev.Close;
                  FatDev.Open;

                  grFatDev.SetFocus;

                  raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

              end;

              FatDev.Close;
              FatDev.Open;

            end;

            fmManDn1_NFE := TfmManDn1_NFE.Create(Self);
            fmManDn1_NFE.Show;

          end
          else
          begin

            if Trim(FatDevSitDev.Value) = 'Nao Concluido' then
              fmsgErro('Operação não pode ser realizada. Processo de devolução não concluido.', nil)

            else if Trim(FatDevSitDev.Value) = 'Processo de Alteracao' then
              fmsgErro('Operação não pode ser realizada. Processo de devolução sendo alterado no momento.', nil);

          end;
        end;
      end;
    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManDno_NFE.EdPsqNumNfsChange(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNumNfs.Text) <> '' then
    FatDev.Locate('NumNfs', EdPsqNumNfs.Text, [LoPartialKey]);
end;

procedure TfmManDno_NFE.EdPsqNumNfsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManDno_NFE.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  CodEmp := FatDevCodEmp.Value;
  DteRes := FatDevDteRes.Value;
  NumRes := FatDevNumRes.Value;
  SeqLib := FatDevSeqLib.Value;
  SeqFat := FatDevSeqFat.Value;
  SeqDev := FatDevSeqDev.Value;

  FatDev.Close;
  FatDev.Open;

  if SeqDev > 0 then
    FatDev.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqDev', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib, SeqFat, SeqDev]), [LoPartialKey]);

end;

procedure TfmManDno_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
  Found: Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is TfmManDn1_NFE then
      Found := i;

  end;

  if Found >= 0 then
    fmsgErro('Existe emissão de nota em andamento. Verificar.', nil)
  else
    Action := CaFree;

end;

procedure TfmManDno_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManDno_NFE := nil;
end;

procedure TfmManDno_NFE.DsFatDevDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnLogUsu.Caption := ' Usuário responsavel: ' + FatDevLogUsu.Value;
  pnNomCli.Caption := ' Cliente: ' + FatDevNomCli.Value;
end;

end.
