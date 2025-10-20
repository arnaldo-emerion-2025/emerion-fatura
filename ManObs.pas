unit ManObs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxDBEdtr, dxDBColorLookupEdit, dxDBColorEdit,
  dxDBColorDateEdit, dxDBColorMemo, dxColorEdit, dxColorDateEdit;

type
  TfmManObs = class(TfmPadrao)
    FatObs: TwwQuery;
    DsObs: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteCr1: TdxColorDateEdit;
    EdPsqNumRes: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteCr2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqCli: TSpeedButton;
    BbPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    rgOrdem: TRadioGroup;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    grObs: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    quSql: TwwQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    pnApeVen: TPanel;
    bIncluir: TSpeedButton;
    grPe21: TdxDBGraphicEdit;
    FatObsCODEMP: TIntegerField;
    FatObsDTERES: TDateTimeField;
    FatObsNUMRES: TIntegerField;
    FatObsNUMNFS: TIntegerField;
    FatObsCODUSU: TIntegerField;
    FatObsCODCLI: TIntegerField;
    FatObsNOMCLI: TStringField;
    FatObsCODVEN: TIntegerField;
    FatObsAPEVEN: TStringField;
    FatObsNOMVEN: TStringField;
    FatObsLOGUSU: TStringField;
    FatObsDSCPFA: TStringField;
    FatObsINSCLI: TStringField;
    FatObsCGCCLI: TStringField;
    FatObsUFERES: TStringField;
    FatObsHRERES: TStringField;
    EdObsObs: TdxDBColorMemo;
    bExcluir: TSpeedButton;
    UpObs: TUpdateSQL;
    bEditar: TSpeedButton;
    FatObsDTEATU: TDateTimeField;
    FatObsHREATU: TStringField;
    FatObsUSUATU: TIntegerField;
    Label1: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    EdDteAtu: TdxDBColorDateEdit;
    EdUsuAtu: TdxDBColorEdit;
    Label15: TLabel;
    EdHreAtu: TdxDBColorEdit;
    Bevel4: TBevel;
    CbNomAtu: TdxDBColorLookupEdit;
    GerUsu: TwwQuery;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    DsUsu: TwwDataSource;
    rgStatus: TRadioGroup;
    FatObsSEQOBS: TIntegerField;
    FatObsDTEOBS: TDateTimeField;
    FatObsHREOBS: TStringField;
    FatObsOBSOBS: TMemoField;
    FatObsSITOBS: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqNumResExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bIncluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bExcluirClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DsObsDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    DteRes: TDateTime;
    sBase, sFiltro, sOrdem: string;
    CodEmp, NumRes, SeqObs: integer;
  end;

var
  Linha: integer;
  fmManObs: TfmManObs;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqCli, PsqVen,
  ManPri, ManOb1;

{$R *.DFM}

procedure TfmManObs.FormCreate(Sender: TObject);
begin
  inherited;

  EdPsqDteCr1.Date := Date;
  EdPsqDteCr2.Date := Date;

  FatObs.Close;
  FatObs.Params[0].AsDateTime := EdPsqDteCr1.Date;
  FatObs.Open;

  sBase := ' Select FatObs.*,CodCli,NomCli,PedRes.CodVen,ApeVen,NomVen,LogUsu,DscPfa,Inscli,CgcCli,UfeRes,HreRes' +
    ' From FatObs INNER JOIN PedRes ON (FatObs.CodEmp = PedRes.CodEmp)' +
    '                              AND (FatObs.DteRes = PedRes.DteRes)' +
    '                              AND (FatObs.NumRes = PedRes.NumRes)' +
    '              LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)' +
    '              LEFT JOIN FinVen ON (PedRes.CodVen = FinVen.CodVen)' +
    '              LEFT JOIN EstPfa ON (PedRes.CodPfa = EstPfa.CodPfa)' +
    '                              AND (PedRes.TipPfa = EstPfa.TipPfa)' +
    '              LEFT JOIN GerUsu ON (FatObs.CodUsu = GerUsu.CodUsu)';

end;

procedure TfmManObs.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

  if GFlgAce <> 'Sim' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FLGDEL,SEQIMP from GerPar';
      Open;

      if Trim(FieldbyName('FLGDEL').AsString) = '*' then
      begin

        GFlgAce := 'Sim';

        if FieldbyName('SEQIMP').AsInteger > 0 then
          GEmpLog := FieldbyName('SEQIMP').AsInteger;

      end
      else
      begin

        GEmpLog := 0;
        GFlgAce := 'Nao';

      end;
    end;
  end;

  sFiltro := '';

  case rgOrdem.Itemindex of
    0: sOrdem := ' Order by PedRes.CodCli,FatObs.CodEmp,FatObs.DteRes,FatObs.NumRes,FatObs.SeqObs';
    1: sOrdem := ' Order by PedRes.CodVen,FatObs.CodEmp,FatObs.DteRes,FatObs.NumRes,FatObs.SeqObs';
    2: sOrdem := ' Order by FatObs.DteObs,FatObs.CodEmp,FatObs.DteRes,FatObs.NumRes,FatObs.SeqObs';
    3: sOrdem := ' Order by FatObs.NumRes';
  end;

  case rgStatus.ItemIndex of
    0: sFiltro := ' Where FatObs.SitObs = ''' + 'Diferido' + '''';
    1: sFiltro := ' Where FatObs.SitObs = ''' + 'Indeferido' + '''';
  end;

  if Trim(EdPsqNumRes.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatObs.NumRes = ''' + EdPsqNumRes.Text + ''''
    else
      sFiltro := sFiltro + ' and FatObs.NumRes = ''' + EdPsqNumRes.Text + '''';

  end;

  if Trim(EdPsqCodEmp.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatObs.CodEmp = ''' + EdPsqCodEmp.Text + ''''
    else
      sFiltro := sFiltro + ' and FatObs.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  end;

  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where PedRes.CodCli = ''' + EdPsqCodCli.Text + ''''
    else
      sFiltro := sFiltro + ' and PedRes.CodCli = ''' + EdPsqCodCli.Text + '''';

  end;

  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where PedRes.CodVen = ''' + EdPsqCodVen.Text + ''''
    else
      sFiltro := sFiltro + ' and PedRes.CodVen = ''' + EdPsqCodVen.Text + '''';

  end;

  if Trim(fLimpaStr(EdPsqDteCr1.Text)) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatObs.DteObs >= ''' + fDateToSQL(EdPsqDteCr1.Date) + ''''
    else
      sFiltro := sFiltro + ' and FatObs.DteObs >= ''' + fDateToSQL(EdPsqDteCr1.Date) + '''';

  end;

  if Trim(fLimpaStr(EdPsqDteCr2.Text)) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatObs.DteObs <= ''' + fDateToSQL(EdPsqDteCr2.Date) + ''''
    else
      sFiltro := sFiltro + ' and FatObs.DteObs <= ''' + fDateToSQL(EdPsqDteCr2.Date) + '''';

  end;

  with FatObs, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;

  grObs.SetFocus;

end;

procedure TfmManObs.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim(EdPsqCodEmp.Text) <> '' then
  begin

    if GFlgAce <> 'Sim' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select FLGDEL,SEQIMP from GerPar';
        Open;

        if Trim(FieldbyName('FLGDEL').AsString) = '*' then
        begin

          GFlgAce := 'Sim';

          if FieldbyName('SEQIMP').AsInteger > 0 then
            GEmpLog := FieldbyName('SEQIMP').AsInteger;

        end
        else
        begin

          GEmpLog := 0;
          GFlgAce := 'Nao';

        end;
      end;
    end;

    with quSql, SQL do
    begin

      Close;
      Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('ApeEmp').AsString) <> '' then
        EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
      else
      begin

        EdPsqApeEmp.Text := '';

        fmsgErro('Empresa Informada não Encontrada.', EdPsqCodEmp);

      end;
    end;

  end
  else
    EdPsqApeEmp.Text := '';
end;

procedure TfmManObs.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select NomCli From FinCli Where CodCli = ''' + EdPsqCodCli.Text + '''';
      Open;

      EdPsqNomCli.Text := quSql.FieldByName('NomCli').AsString;
    end;

  end
  else
    EdPsqNomCli.Text := '';
end;

procedure TfmManObs.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
      EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManObs.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select NomVen From FinVen Where CodVen = ''' + EdPsqCodVen.Text + '''';
      Open;

      EdPsqNomVen.Text := quSql.FieldByName('NomVen').AsString;
    end;

  end
  else
    EdPsqNomVen.Text := '';
end;

procedure TfmManObs.BbPsqCliClick(Sender: TObject);
begin

  try

    fmPsqCli := TfmPsqCli.Create(Self);

    fmPsqCli.ShowModal;

    if fmPsqCli.CodCli > 0 then
    begin

      EdPsqCodCli.Text := IntToStr(fmPsqCli.CodCli);
      EdPsqNomCli.Text := fmPsqCli.NomCli;

    end;

  finally

    FreeAndNil(fmPsqCli);

  end;
end;

procedure TfmManObs.BbPsqVenClick(Sender: TObject);
begin

  try

    fmPsqVen := TfmPsqVen.Create(Self);

    fmPsqVen.ShowModal;

    if fmPsqVen.CodVen > 0 then
    begin

      EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);
      EdPsqNomVen.Text := fmPsqVen.NomVen;

    end;

  finally

    FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmManObs.EdPsqNumResExit(Sender: TObject);
begin
  if Trim(EdPsqNumRes.Text) <> '' then
  begin

    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;

    EdPsqDteCr1.Clear;
    EdPsqDteCr2.Clear;

  end;
end;

procedure TfmManObs.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumRes.SetFocus;
end;

procedure TfmManObs.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManObs.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManObs := nil;
end;

procedure TfmManObs.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManObs.bIncluirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    Found := -1;

    for i := 0 to Screen.FormCount - 1 do
    begin

      if Screen.Forms[i] is TfmManOb1 then
        Found := i;

    end;

    if Found >= 0 then
    begin

      fmManOb1.WindowState := wsNormal;
      fmManOb1.BringToFront;

    end
    else
    begin

      CodEmp := 0;
      NumRes := 0;
      SeqObs := 0;

      fmManOb1 := TfmManOb1.Create(Self);
      fmManOb1.Show;

    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManObs.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    Close;

  if key = 114 then
    bEditar.OnClick(Sender);

  if key = 115 then
    bIncluir.OnClick(Sender);

  if key = 117 then
    bExcluir.OnClick(Sender);

end;

procedure TfmManObs.bExcluirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    Found := -1;

    for i := 0 to Screen.FormCount - 1 do
    begin

      if Screen.Forms[i] is TfmManOb1 then
        Found := i;

    end;

    if Found >= 0 then
    begin

      fmManOb1.WindowState := wsNormal;
      fmManOb1.BringToFront;

    end
    else
    begin

      if FatObsCodEmp.Value > 0 then
      begin

        if fMsg('Confirma a Exclusão da Devolução ?', 'S') then
        begin

          FatObs.Delete;

          with FatObs do
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

              if FatObs.State <> dsBrowse then
                FatObs.CancelUpdates;

              grObs.SetFocus;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;

          FatObs.Close;
          FatObs.Open;

          grObs.SetFocus;

        end;
      end;
    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManObs.bEditarClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    Found := -1;

    for i := 0 to Screen.FormCount - 1 do
    begin

      if Screen.Forms[i] is TfmManOb1 then
        Found := i;

    end;

    if Found >= 0 then
    begin

      fmManOb1.WindowState := wsNormal;
      fmManOb1.BringToFront;

    end
    else
    begin

      if FatObsNumRes.Value > 0 then
      begin

        CodEmp := FatObsCodEmp.Value;
        DteRes := FatObsDteRes.Value;
        NumRes := FatObsNumRes.Value;
        SeqObs := FatObsSeqObs.Value;

        fmManOb1 := TfmManOb1.Create(Self);
        fmManOb1.Show;

      end;
    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManObs.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
  Found: Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is TfmManOb1 then
      Found := i;

  end;

  if Found >= 0 then
    fmsgErro('Existem Observações em Andamento. Por Favor Feche o Formulario.', nil)
  else
    Action := CaFree;

end;

procedure TfmManObs.DsObsDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnApeVen.Caption := ' ' + FatObsApeVen.Value;

  if GerUsuCodUsu.Value <> FatObsUsuAtu.Value then
  begin

    GerUsu.Close;
    GerUsu.Params[0].AsInteger := FatObsUsuAtu.Value;
    GerUsu.Open;

  end;
end;

end.
