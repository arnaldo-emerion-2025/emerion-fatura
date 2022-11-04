unit ManRom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, ppDB, ppDBPipe, ppBands, ppClass, ppStrtch,
  ppMemo, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit, dxDBColorCurrencyEdit,
  dxDBColorEdit;

type
  TfmManRom = class(TfmPadrao)
    DsNfs: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteFat1: TdxColorDateEdit;
    EdPsqId_CmpNfs: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteFat2: TdxColorDateEdit;
    Label25: TLabel;
    EdPsqTotGer1: TdxColorCurrencyEdit;
    Label19: TLabel;
    EdPsqTotGer2: TdxColorCurrencyEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    EdPsqCodPfa: TdxColorEdit;
    EdPsqCodFor: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqFor: TSpeedButton;
    bPsqPfa: TSpeedButton;
    EdPsqNomPfa: TdxColorEdit;
    EdPsqNomFor: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    grNfs: ThGrid;
    quSql: TwwQuery;
    bExcluir: TSpeedButton;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    pnHreNfs: TPanel;
    CmpNf2: TwwQuery;
    pnSitNfs: TPanel;
    rgStatus: TRadioGroup;
    grNf2: ThGrid;
    DsNf2: TwwDataSource;
    dbRes: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label11: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    CmpNfsDTEFAT: TDateTimeField;
    CmpNfsCODPFA: TStringField;
    CmpNfsNRONFS: TIntegerField;
    CmpNfsTOTGE1: TFloatField;
    CmpNfs: TwwQuery;
    UpNfs: TUpdateSQL;
    CmpNf2DESNF2: TStringField;
    CmpNf2QTPNF2: TFloatField;
    CmpNf2QTDNF2: TFloatField;
    CmpNf2VLUNF2: TFloatField;
    CmpNf2IPINF2: TFloatField;
    CmpNf2ICMNF2: TFloatField;
    CmpNf2TOTITE: TFloatField;
    bFinalizar: TSpeedButton;
    CmpNf2QTNNF2: TFloatField;
    pnCodIte: TPanel;
    CmpNf2CODCLP: TStringField;
    CmpNf2CODGRU: TStringField;
    CmpNf2CODSUB: TStringField;
    CmpNf2CODPRO: TStringField;
    CmpNfsID_CMPNFS: TIntegerField;
    CmpNfsCODFOR: TIntegerField;
    CmpNfsSITNFS: TStringField;
    CmpNfsNOMFOR: TStringField;
    CmpNf2ID_CMPNF2: TIntegerField;
    CmpNfsHREFAT: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqForClick(Sender: TObject);
    procedure bPsqPfaClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure EdPsqId_CmpNfsExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqId_CmpNfsKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdPsqCodForExit(Sender: TObject);
    procedure DsNfsDataChange(Sender: TObject; Field: TField);
    procedure bFinalizarClick(Sender: TObject);
    procedure DsNf2DataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
    Permissao : string;
  public
    {Public declarations}
    Id_CmpNfs : integer;
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManRom: TfmManRom;

implementation

uses dxDemoUtils, Bbgeral, Bbacesso, Bbfuncao, Bbmensag, ManGDB, PsqEmp,
     PsqPfa, ManPri, AuxPsq, ManRo1, AuxIni, ManFro, PsqCro, PsqFro, ManE06;

{$R *.DFM}

procedure TfmManRom.FormCreate(Sender: TObject);
begin
  inherited;

  EdPsqDteFat1.Date := Date;
  EdPsqDteFat2.Date := Date;

  CmpNfs.Close;
  CmpNfs.Params[0].AsDateTime := Date;
  CmpNfs.Open;

  sBase := ' Select CmpNfs.Id_CmpNfs,'+
           '        CmpNfs.DteFat,'+
           '        CmpNfs.HreFat,'+
           '        CmpNfs.NroNfs,'+
           '        CmpNfs.CodPfa,'+
           '        CmpNfs.CodFor,'+
           '        CmpNfs.TotGe1,'+
           '        CmpNfs.SitNfs,'+
           '        FinFor.NomFor '+
           ' From CmpNfs LEFT JOIN FinFor ON (CmpNfs.CodFor = FinFor.CodFor)';
           
end;

procedure TfmManRom.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

  if GFlgAce <> 'Sim' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select FLGDEL,SEQIMP from GerPar';
          Open;

          if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

             GFlgAce := 'Sim';

             if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

             end
          else
             begin

             GEmpLog := 0;
             GFlgAce := 'Nao';

          end;
     end;
  end;
  
  sFiltro := '';

  sOrdem := ' Order by CmpNfs.Id_CmpNfs';

  case rgStatus.Itemindex of
       0: sFiltro := ' Where CmpNfs.SitNfs = '+ QuotedStr('Nao Concluido');
       1: sFiltro := ' Where CmpNfs.SitNfs = '+ QuotedStr('Processo de Alteracao');
       2: sFiltro := ' Where CmpNfs.SitNfs = '+ QuotedStr('Aguardando Emissao de Nota Fiscal');
       3: sFiltro := ' Where CmpNfs.SitNfs = '+ QuotedStr('Concluido');
       4: sFiltro := ' Where CmpNfs.SitNfs = '+ QuotedStr('Cancelado');
       5: sFiltro := ' Where CmpNfs.SitNfs = '+ QuotedStr('Recebido');
       6: sFiltro := ' Where CmpNfs.SitNfs = '+ QuotedStr('Recebido Parcialmente');
       7: sFiltro := ' Where CmpNfs.SitNfs = '+ QuotedStr('Saldo Nao Atendido');
  end;

  if Trim( EdPsqId_CmpNfs.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpNfs.Id_CmpNfs = '+ QuotedStr(EdPsqId_CmpNfs.Text)
     else
        sFiltro := ' Where CmpNfs.Id_CmpNfs = '+ QuotedStr(EdPsqId_CmpNfs.Text);

  end;
  
  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpNfs.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text)
     else
        sFiltro := ' Where CmpNfs.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text);

  end;
  
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpNfs.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text)
     else
        sFiltro := ' Where CmpNfs.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

  end;

  if Trim( EdPsqCodFor.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpNfs.CodFor = '+ QuotedStr(EdPsqCodFor.Text)
     else
        sFiltro := ' Where CmpNfs.CodFor = '+ QuotedStr(EdPsqCodFor.Text);

  end;

  if Trim( EdPsqCodPfa.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpNfs.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text)
     else
        sFiltro := ' Where CmpNfs.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text);

  end;
  
  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpNfs.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDteFat1.Date))
     else
        sFiltro := ' Where CmpNfs.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDteFat1.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteFat2.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpNfs.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDteFat2.Date))
     else
        sFiltro := ' Where CmpNfs.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDteFat2.Date));

  end;

  if EdPsqTotGer1.Value > 0 then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpNfs.TotGer >= '+ QuotedStr(fConvertValor(EdPsqTotGer1.Text))
     else
        sFiltro := ' Where CmpNfs.TotGer >= '+ QuotedStr(fConvertValor(EdPsqTotGer1.Text));

  end;

  if EdPsqTotGer2.Value > 0 then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpNfs.TotGer <= '+ QuotedStr(fConvertValor(EdPsqTotGer2.Text))
     else
        sFiltro := ' Where CmpNfs.TotGer <= '+ QuotedStr(fConvertValor(EdPsqTotGer2.Text));

  end;

  with CmpNfs,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grNfs.SetFocus;

end;

procedure TfmManRom.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if GFlgAce <> 'Sim' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FLGDEL,SEQIMP from GerPar';
             Open;

             if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

                GFlgAce := 'Sim';

                if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

                end
             else
                begin

                GEmpLog := 0;
                GFlgAce := 'Nao';

             end;
        end;
     end;
     
     with quSql,SQL do begin

          Close;
          Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('ApeEmp').AsString ) <> '' then
             EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
          else
             begin

             EdPsqApeEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmManRom.bPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManRom.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;
  end;
end;

procedure TfmManRom.EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           EdPsqNomFor.Text := fmAuxIni.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           EdPsqNomFor.Text := fmAuxPsq.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxPsq.CodFor);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManRom.bPsqForClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        EdPsqNomFor.Text := fmAuxIni.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManRom.EdPsqId_CmpNfsExit(Sender: TObject);
begin
  if Trim( EdPsqId_CmpNfs.Text ) <> '' then begin

     EdPsqNroNfs.Clear;
     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodFor.Clear;
     EdPsqNomFor.Clear;
     EdPsqCodPfa.Clear;
     EdPsqNomPfa.Clear;

     EdPsqDteFat1.Clear;
     EdPsqDteFat2.Clear;

     EdPsqTotGer1.Value := 0;
     EdPsqTotGer2.Value := 0;

  end;
end;

procedure TfmManRom.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

  if key = 117 then bExcluir.OnClick(Sender);

  if key = 118 then bFinalizar.OnClick(Sender);

  if key = 121 then begin {F10 - Observações}

     if Trim(CmpNfsSitNfs.Value) = 'Cancelado' then begin

        try

           fmPsqCro := TfmPsqCro.Create(Self);

           fmPsqCro.CmpNfs.Close;
           fmPsqCro.CmpNfs.Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
           fmPsqCro.CmpNfs.Open;

           fmPsqCro.ShowModal;

        finally

           FreeAndNil(fmPsqCro);

        end;

        end
     else
        begin

        if Trim(CmpNfsSitNfs.Value) = 'Saldo Nao Atendido' then begin

           try

              fmPsqFro := TfmPsqFro.Create(Self);

              fmPsqFro.CmpNfs.Close;
              fmPsqFro.CmpNfs.Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
              fmPsqFro.CmpNfs.Open;

              fmPsqFro.ShowModal;

           finally

              FreeAndNil(fmPsqFro);

           end;
        end;
     end;
  end;      
end;

procedure TfmManRom.FormShow(Sender: TObject);
begin
  inherited;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then
     Permissao := fAcesso('CMP020401')
  else                     
     Permissao := 'SSSSS';

  if copy(Permissao,1,1) = 'N' then bIncluir.Enabled := False;
  if copy(Permissao,2,1) = 'N' then bEditar.Enabled := False;
  if copy(Permissao,3,1) = 'N' then bExcluir.Enabled := False;

  EdPsqNroNfs.SetFocus;
  
end;

procedure TfmManRom.bPsqPfaClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqPfa := TfmPsqPfa.Create(Self);

     with fmPsqPfa.EstPfa,SQL do begin

          Close;
          Text := ' Select EstPfa.CodPfa,'+
                  '        EstPfa.TipPfa,'+
                  '        EstPfa.DscPfa,'+
                  '        EstPfa.DsrPfa,'+
                  '        EstPfa.CodCf1,'+
                  '        EstPfa.CodCf2,'+
                  '        EstPfa.IntFin,'+
                  '        EstPfa.AtuEst,'+
                  '        EstPfa.ConSum,'+
                  '        EstPfa.ModPfa '+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString := 'Saida';

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

        EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
        EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

     end;

  finally   

     FreeAndNil(fmPsqPfa);

  end;
end;

procedure TfmManRom.EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqPfa := TfmPsqPfa.Create(Self);

        with fmPsqPfa.EstPfa,SQL do begin

             Close;
             Text := ' Select EstPfa.CodPfa,'+
                     '        EstPfa.TipPfa,'+
                     '        EstPfa.DscPfa,'+
                     '        EstPfa.DsrPfa,'+
                     '        EstPfa.CodCf1,'+
                     '        EstPfa.CodCf2,'+
                     '        EstPfa.IntFin,'+
                     '        EstPfa.AtuEst,'+
                     '        EstPfa.ConSum,'+
                     '        EstPfa.ModPfa '+
                     ' From EstPfa'+
                     ' Where EstPfa.TipPfa = :TipPfa'+
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString := 'Saida';

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
           EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

        end;

     finally

        FreeAndNil(fmPsqPfa);

     end;
  end;
end;

procedure TfmManRom.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManRom.EdPsqId_CmpNfsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManRom.EdPsqCodPfaExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPfa.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPfa From EstPfa'+
                  ' Where EstPfa.TipPfa = '+ QuotedStr('Saida')+
                  '   and EstPfa.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text);
          Open;

          EdPsqNomPfa.Text := FieldByName('DscPfa').AsString;

     end;

     end
  else
     EdPsqNomPfa.Text := '';
end;

procedure TfmManRom.bEditarClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,2,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManRo1 then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe um Romaneio em Andamento.','E');

           fmManRo1.WindowState := wsNormal;
           fmManRo1.BringToFront;

           end
        else
           begin

           if CmpNfsId_CmpNfs.Value > 0 then begin
           
              Id_CmpNfs := CmpNfsId_CmpNfs.Value;

              with CmpNfs,SQL do begin

                   Close;
                   Text := sBase +
                           ' Where CmpNfs.Id_CmpNfs = '+ QuotedStr(IntToStr(Id_CmpNfs));
                   Open;

              end;

              if Trim(CmpNfsSitNfs.Value) = 'Aguardando Emissao de Nota Fiscal' then begin

                 CmpNfs.Edit;

                 CmpNfsSitNfs.Value := 'Processo de Alteracao';

                 with CmpNfs do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

                         grNfs.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;
              end;

              fmManRo1 := TfmManRo1.Create(Self);
              fmManRo1.Show;

           end;
        end;

        end
     else
        fMsgErro('Usuario não possui acesso a opcão.',nil);

     end
  else
     fmsgErro(GMensagem,Nil);   
end;

procedure TfmManRom.bIncluirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,1,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManRo1 then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe um Romaneio em Andamento.','E');

           fmManRo1.WindowState := wsNormal;
           fmManRo1.BringToFront;

           end
        else
           begin

           Id_CmpNfs := 0;

           with CmpNfs,SQL do begin

                Close;
                Text := sBase +
                        ' Where CmpNfs.Id_CmpNfs = :Id_CmpNfs';

                with Params do begin

                     Params[0].AsInteger := Id_CmpNfs;

                end;

                Open;

           end;

           fmManRo1 := TfmManRo1.Create(Self);
           fmManRo1.Show;

        end;

        end
     else
        fMsgErro('Usuario Não Possui Acesso a Opcão.',nil);

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManRom.bExcluirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,3,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManRo1 then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe um Romaneio em Andamento.','E');

           fmManRo1.WindowState := wsNormal;
           fmManRo1.BringToFront;

           end
        else
           begin

           if CmpNfsId_CmpNfs.Value > 0 then begin
           
              Id_CmpNfs := CmpNfsId_CmpNfs.Value;

              with CmpNfs,SQL do begin

                   Close;
                   Text := sBase +
                           ' Where CmpNfs.Id_CmpNfs = '+ QuotedStr(IntToStr(Id_CmpNfs));
                   Open;

              end;

              if (Trim(CmpNfsSitNfs.Value) = 'Nao Concluido') or
                 (Trim(CmpNfsSitNfs.Value) = 'Processo de Alteracao') or
                 (Trim(CmpNfsSitNfs.Value) = 'Aguardando Emissao de Nota Fiscal') then begin

                 if fMsg('Confirma a Exclusão da Operação ?','O') then begin

                    CmpNfs.Delete;

                    with CmpNfs do begin

                         fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                         try

                            ApplyUpdates; {Tenta aplicar as alterações};

                            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                         except

                            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                            if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

                            grNfs.SetFocus;

                            raise;

                         end;

                         CommitUpdates; {sucesso!, limpa o cache...}

                    end;

                    CmpNfs.Close;
                    CmpNfs.Open;

                    grNfs.SetFocus;

                 end;

                 end
              else
                 begin

                 if Trim(CmpNfsSitNfs.Value) = 'Concluido' then fMsg('Operação não Pode ser Realizada. Operação já Concluida.','E')

                 else if Trim(CmpNfsSitNfs.Value) = 'Recebido' then fMsg('Operação não Pode ser Realizada. Operação com Recebimentos já Realizados.','E')

                 else if Trim(CmpNfsSitNfs.Value) = 'Recebido Parcialmente' then fMsg('Operação não Pode ser Realizada. Operação com Recebimentos já Realizados.','E')

                 else if Trim(CmpNfsSitNfs.Value) = 'Saldo Nao Atendido' then fMsg('Operação não Pode ser Realizada. Operação com Saldo não Atendido.','E')

                 else if Trim(CmpNfsSitNfs.Value) = 'Cancelado' then fMsg('Operação não Pode ser Realizada. Operação Cancelada.','E')

              end;
           end;
        end;
        
        end
     else
        fMsgErro('Usuario Não Possui Acesso a Opcão.',nil);

     end
  else
     fmsgErro(GMensagem,Nil);   
end;

procedure TfmManRom.bImprimirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if CmpNfsId_CmpNfs.Value > 0 then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManRo1 then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe um Romaneio em Andamento.','E');

        fmManRo1.WindowState := wsNormal;
        fmManRo1.BringToFront;

        end
     else
        begin

        if CmpNfsId_CmpNfs.Value > 0 then begin

           Id_CmpNfs := CmpNfsId_CmpNfs.Value;

           with CmpNfs,SQL do begin

                Close;
                Text := sBase +
                        ' Where CmpNfs.Id_CmpNfs = '+ QuotedStr(IntToStr(Id_CmpNfs));
                Open;

           end;

           if fMsg('Confirma impressão da via de controle interno do romaneio ?','O') then begin

              try

                 fmManE06 := TfmManE06.Create(Self);

                 fmManE06.CmpNfs.Close;
                 fmManE06.CmpNfs.Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
                 fmManE06.CmpNfs.Open;

                 fmManE06.RLReport1.PreviewModal;

              finally

                 FreeAndNil(fmManE06);

              end;
           end;
        end;   
     end;
  end;
end;

procedure TfmManRom.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManRom := nil;
end;

procedure TfmManRom.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     EdPsqId_CmpNfs.Clear;

     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodFor.Clear;
     EdPsqNomFor.Clear;
     EdPsqCodPfa.Clear;
     EdPsqNomPfa.Clear;

     EdPsqDteFat1.Clear;
     EdPsqDteFat2.Clear;

     EdPsqTotGer1.Value := 0;
     EdPsqTotGer2.Value := 0;

  end;
end;

procedure TfmManRom.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i     : Integer;
  Found : integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManRo1 then Found := i;

  end;

  if Found >= 0 then
     fmsgErro('Existem emissões de romaneio em andamento. Por favor feche o formulario.',Nil)
  else
     Action := CaFree;

end;

procedure TfmManRom.EdPsqCodForExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinFor.NomFor From FinFor Where FinFor.CodFor = '+ QuotedStr(EdPsqCodFor.Text);
          Open;

          EdPsqNomFor.Text := FieldByName('NomFor').AsString;

     end;

     end
  else
     EdPsqNomFor.Text := '';
end;

procedure TfmManRom.DsNfsDataChange(Sender: TObject; Field: TField);
var
  sText : string;
begin
  inherited;

  if Trim(CmpNfsSitNfs.Value) = 'Cancelado' then sText := 'F10 -';

  if Trim(CmpNfsSitNfs.Value) = 'Saldo Nao Atendido' then sText := 'F10 -';

  if Trim( sText ) <> '' then
     pnSitNfs.Caption := sText + ' ' + Trim(CmpNfsSitNfs.Value)
  else
     pnSitNfs.Caption := Trim(CmpNfsSitNfs.Value);

  pnHreNfs.Caption := ' '+CmpNfsHreFat.Value;

end;

procedure TfmManRom.bFinalizarClick(Sender: TObject);
var
  i      : Integer;
  Found  : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManRo1 then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe uma Emissão em Andamento.','E');

        fmManRo1.WindowState := wsNormal;
        fmManRo1.BringToFront;

        end
     else
        begin

        if CmpNfsId_CmpNfs.Value > 0 then begin

           Id_CmpNfs := CmpNfsId_CmpNfs.Value;

           with CmpNfs,SQL do begin

                Close;
                Text := sBase +
                        ' Where CmpNfs.Id_CmpNfs = '+ QuotedStr(IntToStr(Id_CmpNfs));
                Open;

           end;

           if (Trim(CmpNfsSitNfs.Value) <> 'Recebido') and
              (Trim(CmpNfsSitNfs.Value) <> 'Cancelado') and
              (Trim(CmpNfsSitNfs.Value) <> 'Nao Concluido') and
              (Trim(CmpNfsSitNfs.Value) <> 'Saldo Nao Atendido') then begin

              try

                 fmManFro := TfmManFro.Create(Self);

                 fmManFro.CmpNfs.Close;
                 fmManFro.CmpNfs.Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
                 fmManFro.CmpNfs.Open;

                 fmManFro.ShowModal;

              finally

                 FreeAndNil(fmManFro);

              end;

              CmpNfs.Close;
              CmpNfs.Open;

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManRom.DsNf2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if CmpNf2Id_CmpNf2.Value > 0 then
     pnCodIte.Caption := CmpNf2CodClp.Value+'-'+CmpNf2CodGru.Value+'.'+CmpNf2CodSub.Value+'.'+CmpNf2CodPro.Value
  else
     pnCodIte.Caption := ' ';
end;

end.

