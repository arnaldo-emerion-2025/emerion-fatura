unit ManCno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit, inifiles;

type
  TfmManCno = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdOb1Can: TdxDBColorEdit;
    EdOb2Can: TdxDBColorEdit;
    EdOb3Can: TdxDBColorEdit;
    EdOb4Can: TdxDBColorEdit;
    EdOb5Can: TdxDBColorEdit;
    FatPed: TwwQuery;
    UpFatPed: TUpdateSQL;
    DsFatPed: TwwDataSource;
    quSql: TwwQuery;
    pnMensag: TPanel;
    pn_erro: TPanel;
    memo_erro: TMemo;
    bt_erro: TButton;
    FatGer: TwwQuery;
    DSFatger: TwwDataSource;
    UPFatGer: TUpdateSQL;
    FatPedDTERES: TDateTimeField;
    FatPedNUMRES: TIntegerField;
    FatPedSEQLIB: TIntegerField;
    FatPedSEQFAT: TIntegerField;
    FatPedNRONFS: TIntegerField;
    FatPedDTECAN: TDateTimeField;
    FatPedHRECAN: TStringField;
    FatPedUSUCAN: TIntegerField;
    FatPedOB1CAN: TStringField;
    FatPedOB2CAN: TStringField;
    FatPedOB3CAN: TStringField;
    FatPedOB4CAN: TStringField;
    FatPedOB5CAN: TStringField;
    FatPedFLGNFE: TStringField;
    FatPedENVNFE: TStringField;
    FatPedSEQNFE: TStringField;
    FatPedPRONFE: TStringField;
    FatPedDTCNFE: TDateTimeField;
    FatPedHRCNFE: TStringField;
    FatPedPRCNFE: TStringField;
    FatPedATUEST: TStringField;
    FatPedINTFIN: TStringField;
    FatPedSITFAT: TStringField;
    FatPedSEQNFE_1: TStringField;
    FatPedARQNFECANC: TBlobField;
    FatPedNFETHCANC: TSmallintField;
    FatGerDTERES: TDateTimeField;
    FatGerNUMRES: TIntegerField;
    FatGerCODEMP: TIntegerField;
    FatGerNRONFS: TIntegerField;
    FatGerDTECAN: TDateTimeField;
    FatGerHRECAN: TStringField;
    FatGerUSUCAN: TIntegerField;
    FatGerOB1CAN: TStringField;
    FatGerOB2CAN: TStringField;
    FatGerOB3CAN: TStringField;
    FatGerOB4CAN: TStringField;
    FatGerOB5CAN: TStringField;
    FatGerFLGNFE: TStringField;
    FatGerENVNFE: TStringField;
    FatGerSEQNFE: TStringField;
    FatGerPRONFE: TStringField;
    FatGerDTCNFE: TDateTimeField;
    FatGerHRCNFE: TStringField;
    FatGerPRCNFE: TStringField;
    FatGerATUEST: TStringField;
    FatGerINTFIN: TStringField;
    FatGerSITFAT: TStringField;
    FatGerSEQNFE_1: TStringField;
    FatGerARQNFECANC: TBlobField;
    FatGerNFETHCANC: TSmallintField;
    FatDev: TwwQuery;
    DSFatDev: TwwDataSource;
    Upfatdev: TUpdateSQL;
    FatPedRETNFE: TStringField;
    FatGerRETNFE: TStringField;
    FatPedCODEMP: TIntegerField;
    Button1: TButton;
    FatDevDTERES: TDateTimeField;
    FatDevNUMRES: TIntegerField;
    FatDevCODEMP: TIntegerField;
    FatDevNRONFS: TIntegerField;
    FatDevDTECAN: TDateTimeField;
    FatDevHRECAN: TStringField;
    FatDevUSUCAN: TIntegerField;
    FatDevOB1CAN: TStringField;
    FatDevOB2CAN: TStringField;
    FatDevOB3CAN: TStringField;
    FatDevOB4CAN: TStringField;
    FatDevOB5CAN: TStringField;
    FatDevFLGNFE: TStringField;
    FatDevENVNFE: TStringField;
    FatDevSEQNFE: TStringField;
    FatDevPRONFE: TStringField;
    FatDevDTCNFE: TDateTimeField;
    FatDevHRCNFE: TStringField;
    FatDevPRCNFE: TStringField;
    FatDevATUEST: TStringField;
    FatDevINTFIN: TStringField;
    FatDevSITDEV: TStringField;
    FatDevSEQNFE_1: TStringField;
    FatDevRETNFE: TStringField;
    FatDevARQNFECANC: TBlobField;
    FatDevNFETHCANC: TSmallintField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_erroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    {Private declarations}
    procedure EnviaCanNFeEmerion;
    procedure EnviaCanServico;
  public
    VNumNota: Integer;
    Vchave: string;
    Tab: string;
    idFat: integer;
    {Public declarations}
  end;

var
  fmManCno: TfmManCno;

implementation

uses dxDemoUtils, FileCtrl, Bbfuncao, Bbgeral, ManGDB, ManLn3, Bbmensag, ConCno,
  ManGer_NFE, ManPri;

{$R *.DFM}

function Executa(Arquivo: string; Estado: Integer): Integer;
var
  Programa: array[0..512] of char;
  CurDir: array[0..255] of char;
  WorkDir: string;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
  StrPCopy(Programa, Arquivo);
  GetDir(0, WorkDir);
  StrPCopy(CurDir, WorkDir);
  FillChar(StartupInfo, Sizeof(StartupInfo), #0);
  StartupInfo.cb := sizeof(StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Estado;
  if not CreateProcess(nil, Programa, nil, nil, false, CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo) then
    Result := -1
  else
  begin
    WaitForSingleObject(ProcessInfo.hProcess, Infinite);
    //GetExitCodeProcess (ProcessInfo.hProcess, Result);
  end;
end; //Estado � o tipo de janela que aparecer�, que pode ser:

procedure TfmManCno.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bCancelar.OnClick(Sender);

  if key = 123 then
    bConfirmar.OnClick(Sender);

end;

procedure TfmManCno.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCno.FormShow(Sender: TObject);
begin

  if fatped.Active then
    FatPed.Edit;

  EdOb1Can.SetFocus;

end;

procedure TfmManCno.bCancelarClick(Sender: TObject);
begin

  if fatped.Active then
    FatPed.CancelUpdates;

  Close;

end;

procedure TfmManCno.bConfirmarClick(Sender: TObject);
begin
  if fmManGDB.BuscaSimples('FATPAR', 'ENVIO_SERVICO', ' 1=1 ') <> 'S' then
  begin
    //Envio pelo NFEEmerion
    EnviaCanNFeEmerion;
  end
  else
  begin
    EnviaCanServico;
  end;
end;

procedure TfmManCno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fatped.Active then
    if FatPed.State <> dsBrowse then
      FatPed.CancelUpdates;

  if fatger.Active then
    if Fatger.State <> dsBrowse then
      FatGer.CancelUpdates;
end;

procedure TfmManCno.bt_erroClick(Sender: TObject);
begin
  inherited;
  memo_erro.Font.Color := clWhite;
  pn_erro.visible := False;
  fmManCno.Enabled := True;
  pnMensag.Visible := False;
end;

procedure TfmManCno.Button1Click(Sender: TObject);
var
  SQLTEMP: TQuery;
  CaminhoXml, CaminhoLeitura, CaminhoRetorno: string;
  inifile: string;
  ini: Tinifile;

  strEnvNFE, sContinuar, strIdUFE, strIdCie, strSigUfe: string;
begin
  inherited;

  VerificaArquivoNfeEmerionIni;

  inifile := ExtractFilePath(application.exename) + 'NFeEmerion2.ini';
  ini := Tinifile.create(Inifile);
  try
    CaminhoXml := ini.ReadString('Geral', 'PathXML', '');
    CaminhoLeitura := ini.ReadString('Geral', 'PathLeitura', '');
    CaminhoRetorno := ini.ReadString('Geral', 'PathRetorno', '');
  finally
    ini.free;
  end;

  SQLTEMP := TQuery.Create(Self);

  try

    SQLTEMP.DatabaseName := 'Isade';

    SQLTEMP.SQL.Text := 'Select '; //icompleto

    if FatPedENVNFE.AsString = 'Sim' then
    begin
      if ((fmManLn3.FatPedSITFAT.Value <> 'Complemento') and (fmManLn3.FatPedSITFAT.Value <> 'Devolucao')) then
      begin
        //Processo de confirma��o digitando Sim ou Nao
        if fmsgConf('Tem certeza que esta realmente cancelando a nota fiscal correta ?', 'E') = 'SIM' then
        begin
          sContinuar := 'N';
          //Processo de confirma��o digitando o numero da NF
          try
            fmConCno := TfmConCno.Create(Self);
            fmConCno.ShowModal;
            sContinuar := fmConCno.sContinuar;
          finally
            FreeAndNil(fmConCno);
          end;

          if sContinuar = 'S' then
          begin

            strSigUfe := fmmangdb.BuscaSimples('GerEmp', 'SigUfe', fmManLn3.FatPedCODEMP.AsString);
            strIdUFE := fmmangdb.BuscaSimples('GerEmp', 'Id_FinUfe', fmManLn3.FatPedCODEMP.AsString);
            strIdCie := fmmangdb.BuscaSimples('GerEmp', 'Id_FinCie', fmManLn3.FatPedCODEMP.AsString);

            //Por motivo de For�a maior irie interromper o novo cancelamento  e inutiliza��o de NFe

          end;

        end;
      end;
    end;

  finally
    FreeAndNil(SQLTEMP);
  end;

end;

procedure TfmManCno.EnviaCanNFeEmerion;
var
  SeqEnc: integer;
  SeqLin: integer;
  ObcFat: string;
  FlgRej: string;
  FlgArq: string;
  ArqRe1: string;
  ArqRe2: string;
  ArqRs1: string;
  ArqRs2: string;
  MSGNFE: string;
  ProNFE: string;
  PRCNFE: string;
  DTCNFE: string;
  HRCNFE: string;
  LinArq: string;
  ArqEnv: TextFile;
  ArqRet: TStringList;
  SeqRet: Boolean;
  Handle: LongInt;
  UfeEmp: string;
  Id_FinUfe: integer;
  Id_FinCie: integer;
  sText, sReceber, sEstoque, sContinuar: string;
  IniFile, CaminhoXML, CaminhoLeitura, CaminhoRetorno, TLinha, vaux: string;
  Ini: Tinifile;
  i: integer;
  TArquivo: TextFile;

  procedure VerificaLogErro;
  begin
    if FileExists(CaminhoRetorno + '\LogErro-CN' + inttostr(VNumNota) + '.txt') then
    begin

      Application.ProcessMessages;

      ArqRet := TStringList.Create;
      ArqRet.LoadFromFile(CaminhoRetorno + '\LogErro-CN' + inttostr(VNumNota) + '.txt');
      i := 1;
      repeat
        i := i + 1;
      until not FileExists(CaminhoRetorno + '\LogErro-CN' + inttostr(VNumNota) + '.EP' + inttostr(i));

      FreeAndNil(ArqRet);
      pn_erro.visible := true;
      pn_erro.bringtofront;
      memo_erro.Font.Color := clBlack;
      memo_erro.Lines.Clear;
      memo_erro.Lines.LoadFromFile(CaminhoRetorno + '\LogErro-CN' + inttostr(VNumNota) + '.txt');
      MoveFile(pchar(CaminhoRetorno + '\LogErro-CN' + inttostr(VNumNota) + '.txt'), pchar(CaminhoRetorno + '\LogErro-CN' + inttostr(VNumNota) + '.EP' +
        inttostr(i)));
      fmManCno.Enabled := True;
    end;
  end;

  procedure EnviandoCancelamento(SQLCorrente: TwwQuery);
  begin
    //chamar o Nfemerion aqui

    try
      pnMensag.Visible := True;

      pnMensag.Caption := 'Aguarde. Verificando status do servi�o.';
      application.ProcessMessages;

      //Gera arquivo para Cancelamento
      ArqRe1 := CaminhoLeitura + '\CNNOTA' + INTTOSTR(VNumNota) + '.TXT';
      //montar o arquivo aqui
      AssignFile(ArqEnv, ArqRe1);
      Rewrite(ArqEnv);
      vaux := CaminhoRetorno + '\' + inttostr(VNumNota) + ' - NF-e- ' + Vchave + '.xml';
      vaux := vaux + fReplicate(' ', 401 - length(vaux));
      // OK showmessage(inttostr(length( CaminhoXML)));
      Writeln(ArqEnv, 'EMC' +
        (vaux) +
        obcfat);
      CloseFile(ArqEnv);
      //-------------------

      if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
        Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe CANCELA ' + inttostr(vnumnota), SW_NORMAL);
      //else
        //AbreNfe(PChar('CANCELA'), pChar(vnumnota));

      pnMensag.Caption := 'Aguarde. Transmitindo arquivo de cancelamento.';
      application.ProcessMessages;

      if FileExists(CaminhoRetorno + '\' + inttostr(VNumNota) + ' Cancelamento - NF-e- ' + Vchave + '.xml') then
      begin

        if SQLCorrente.State = dsBrowse then
          SQLCorrente.Edit;
        //
        AssignFile(TArquivo, (CaminhoRetorno + '\' + inttostr(VNumNota) + ' Cancelamento - NF-e- ' + Vchave + '.xml'));
        Reset(TArquivo);
        ReadLn(TArquivo, TLinha);

        repeat
          Application.ProcessMessages;
          if pos('<nProt>', TLinha) > 0 then
            SQLCorrente.FieldByName('PrcNFE').Value := (copy(TLinha, pos('<nProt>', TLinha) + Length('<nProt>'), 15));

          if pos('<dhRecbto>', TLinha) > 0 then
            SQLCorrente.FieldByName('DtcNFE').Value := strtodate(copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>') + 8, 2) + '/' + copy(TLinha,
              pos('<dhRecbto>', TLinha) + Length('<dhRecbto>') + 5, 2) + '/' + copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>'), 4));

          if pos('<dhRecbto>', TLinha) > 0 then
            SQLCorrente.FieldByName('HrcNFE').Value := (copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>') + 11, 8));
          ReadLn(TArquivo, TLinha);
        until EOF(Tarquivo);

        CloseFile(TArquivo);

        pnMensag.Caption := 'Aguarde. Atualizando dados da NF.';
        application.ProcessMessages; //

        SQLCorrente.FieldByName('DteCan').AsDateTime := Date;
        SQLCorrente.FieldByName('UsuCan').AsInteger := GUsu_Id;

        if TAB = 'FP' then
          SQLCorrente.FieldByName('SitFat').AsString := 'Cancelado'
        else if TAB = 'FG' then
          SQLCorrente.FieldByName('SitFat').AsString := 'Cancelado'
        else if TAB = 'FD' then
          SQLCorrente.FieldByName('SitDev').AsString := 'Cancelado';

        SQLCorrente.FieldByName('NFETHCANC').AsInteger := 1;
        SQLCorrente.FieldByName('HreCan').AsString := TimeToStr(Time);
        TBlobField(SQLCorrente.FieldByName('ARQNFECANC')).LoadFromFile(CaminhoRetorno + '\' + inttostr(VNumNota) + ' Cancelamento - NF-e- ' + Vchave + '.xml');

        SQLCorrente.post;
        SQLCorrente.ApplyUpdates; {Tenta aplicar as altera��es}
        ;
        SQLCorrente.CommitUpdates;

        with fmManLn3.FatPed, SQL do
        begin
          Close;
          Text := fmManLn3.sBaseFP + fmManLn3.sBaseFiltroFP + fmManLn3.sFiltroFP + fmManLn3.sBaseFG + fmManLn3.sBaseFiltroFG + fmManLn3.sFiltroFG;
          Open;
        end;

        Close;
        fmManCno.Enabled := True;
        fmManCno.close;

      end
      else
      begin
        VerificaLogErro;
      end;
    finally
      pnMensag.visible := False;
    end;
  end;

  procedure EnviandoInutilizacao(SQLCorrente: TwwQuery);
  begin

    try
      pnMensag.visible := True;

      pnMensag.Caption := 'Aguarde. Verificando status do servi�o.';
      application.ProcessMessages;

      // aqui a inutilizacao FP
      AssignFile(ArqEnv, CaminhoLeitura + '\INUTILIZAR' + inttostr(vnumnota) + '.txt');
      Rewrite(ArqEnv);
      quSql.active := false;
      qusql.sql.text := 'Select cgcemp from GEREMP where codemp = ' + SQLCorrente.FieldByName('CODEMP').asstring;
      qusql.Active := true;
      Writeln(ArqEnv, qusql.fieldbyname('cgcemp').asstring); //CGC
      Writeln(ArqEnv, 'NOTA CANCELADA ANTES DE ENVIAR AO SEFAZ'); //  Justificativa
      Writeln(ArqEnv, FORMATDATETIME('yyyy', now)); //  ANO
      Writeln(ArqEnv, '55'); //  MODELO
      Writeln(ArqEnv, '1'); //  SERIE
      Writeln(ArqEnv, SQLCorrente.FieldByName('nronfs').asstring); //  NUMERO
      CloseFile(ArqEnv);

      pnMensag.Caption := 'Aguarde. Preparando arquivo de envio';
      application.ProcessMessages;

      sleep(500);

      pnMensag.Caption := 'Aguarde. Enviando ao SeFaz Inutiliza��o.';
      application.ProcessMessages;

      if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
        Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe INUTIL ' + inttostr(vnumnota), SW_NORMAL);
      //else
      //  AbreNfe(PChar('INUTIL'), pChar(vnumnota));

      pnMensag.Caption := 'Aguarde. Transmiss�o concluida.';
      application.ProcessMessages;

      if FileExists(CaminhoRetorno + '\' + inttostr(VNumNota) + ' INUTILIZADA - NF-e.xml') then
      begin
        if SQLCorrente.State = dsBrowse then
          SQLCorrente.Edit;
        SQLCorrente.FieldByName('DteCan').AsDateTime := Date;
        SQLCorrente.FieldByName('UsuCan').AsInteger := GUsu_Id;

        if TAB = 'FP' then
          SQLCorrente.FieldByName('SitFat').AsString := 'Cancelado'
        else if TAB = 'FG' then
          SQLCorrente.FieldByName('SitFat').AsString := 'Cancelado'
        else if TAB = 'FD' then
          SQLCorrente.FieldByName('SitDev').AsString := 'Cancelado';

        SQLCorrente.FieldByName('RETNFE').AsString := 'Inutilizado o numero da NF-e';
        SQLCorrente.FieldByName('NFETHCANC').Asinteger := 1;
        SQLCorrente.FieldByName('HreCan').AsString := TimeToStr(Time);
        // SQLCorrente.FieldByName('ARQNFECANC').LoadFromFile(CaminhoRetorno+'\'+inttostr(VNumNota)+' Cancelamento - NF-e- '+Vchave+'.xml');

        pnMensag.Caption := 'Aguarde. Atualizando dados da NF.';
        application.ProcessMessages;

        SQLCorrente.post;
        SQLCorrente.ApplyUpdates; {Tenta aplicar as altera��es}
        ;
        SQLCorrente.CommitUpdates;

        with fmManLn3.FatPed, SQL do
        begin
          Close;
          Text := fmManLn3.sBaseFP + fmManLn3.sBaseFiltroFP + fmManLn3.sFiltroFP + fmManLn3.sBaseFG + fmManLn3.sBaseFiltroFG + fmManLn3.sFiltroFG;
          Open;
        end;

        Close;
        fmManCno.Enabled := True;
        fmManCno.close;
      end
      else
        VerificaLogErro;
    finally
      pnMensag.visible := False;
    end;
  end;

begin

  VerificaArquivoNfeEmerionIni;

  inifile := ExtractFilePath(application.exename) + 'NFeEmerion2.ini';
  ini := Tinifile.create(Inifile);
  try
    CaminhoXml := ini.ReadString('Geral', 'PathXML', '');
    CaminhoLeitura := ini.ReadString('Geral', 'PathLeitura', '');
    CaminhoRetorno := ini.ReadString('Geral', 'PathRetorno', '');
  finally
    ini.free;
  end;

  ActiveControl := nil;
  ObcFat := Trim(EdOb1Can.Text) + ' ' +
    Trim(EdOb2Can.Text) + ' ' +
    Trim(EdOb3Can.Text) + ' ' +
    Trim(EdOb4Can.Text) + ' ' +
    Trim(EdOb5Can.Text);

  if Trim(ObcFat) <> '' then
  begin
    if Length(Trim(ObcFat)) >= 15 then
    begin
      sText := 'Deseja realmente cancelar a nota fiscal ?';
      if FatPedAtuEst.AsString = 'Sim' then
        sEstoque := ' . Entrada em estoque dos itens;';
      if FatPedIntFin.AsString = 'Sim' then
        sReceber := ' . Cancelamento do titulos a receber.';
      if (Trim(sEstoque) <> '') or (Trim(sReceber) <> '') then
        sText := sText + #10 + ' ' + #10 + ' Ao confirmar ocorrer�o os seguintes lan�amentos:';
      sText := sText + #10 + ' ' + #10 + sEstoque + #10 + ' ' + #10 + sReceber;

      if fmsgConf(sText, 'E') = 'SIM' then
      begin
        if fmsgConf('Tem certeza que esta realmente cancelando a nota fiscal correta ?', 'E') = 'SIM' then
        begin
          sContinuar := 'N';
          try
            fmConCno := TfmConCno.Create(Self);
            fmConCno.intNroNfs := VNumNota;
            fmConCno.ShowModal;
            sContinuar := fmConCno.sContinuar;
          finally
            FreeAndNil(fmConCno);
          end;

          if sContinuar = 'S' then
          begin

            if TAB = 'FP' then
            begin
              if FatPedENVNFE.AsString = 'Sim' then
              begin
                EnviandoCancelamento(FATPED);
              end
              else
              begin
                EnviandoInutilizacao(FATPED);
              end;
            end;

            if TAB = 'FG' then
            begin
              if FatGerENVNFE.AsString = 'Sim' then
              begin
                EnviandoCancelamento(FATGER);
              end
              else
              begin
                EnviandoInutilizacao(FATGER);
              end;
            end;

            if TAB = 'FD' then
            begin
              if FatDevENVNFE.AsString = 'Sim' then
              begin
                EnviandoCancelamento(FATDEV);
              end
              else
              begin
                EnviandoInutilizacao(FATDEV);
              end;
            end;
          end;
        end; //Confirma Certeza
      end; //Confirma se vai cancelar
    end
    else //Valida Tamanho da Justificativa
    begin
      messagebox(handle, 'Necess�rio observa��o com no m�nimo 15 caracteres. Verifique e tente novamente.', 'Valida��o da observa��o', MB_OK +
        MB_ICONINFORMATION);
    end;
  end
  else //Valida Tamanho da Justificativa
  begin
    messagebox(handle, 'Obrigat�rio informar motivo do cancelamento. Informe e tente novamente.', 'Valida��o da observa��o', MB_OK + MB_ICONINFORMATION);
  end;
end;

procedure TfmManCno.EnviaCanServico;
var
  SeqEnc: integer;
  SeqLin: integer;
  ObcFat: string;
  FlgRej: string;
  FlgArq: string;
  ArqRe1: string;
  ArqRe2: string;
  ArqRs1: string;
  ArqRs2: string;
  MSGNFE: string;
  ProNFE: string;
  PRCNFE: string;
  DTCNFE: string;
  HRCNFE: string;
  LinArq: string;
  ArqEnv: TextFile;
  ArqRet: TStringList;
  SeqRet: Boolean;
  Handle: LongInt;
  UfeEmp: string;
  Id_FinUfe: integer;
  Id_FinCie: integer;
  sText, sReceber, sEstoque, sContinuar: string;
  IniFile, CaminhoXML, CaminhoLeitura, CaminhoRetorno, TLinha, vaux: string;
  Ini: Tinifile;
  i: integer;
  TArquivo: TextFile;
  //DadosNFE: TSNFE;
  SQLTEMP: TQuery;
  SQLTSCR: TQuery;
  NFeXML: string;
begin

  SQLTEMP := TQuery.Create(nil);

  try
    SQLTEMP.DataBaseName := 'Isade';

    SQLTEMP.SQL.Text := //
    ' select seqnfe,ENVNFE,FlgNfe,nronfs  from fatped where ''FP'' = ' + QuotedStr(TAB) + ' and id_fatped = ' + IntToStr(idFat)
      + ' union ' + //
    ' select seqnfe,ENVNFE,FlgNfe,nronfs  from fatger where ''FG'' = ' + QuotedStr(TAB) + ' and numger = ' + IntToStr(idFat)
      + ' union ' + //
    ' select seqnfe,ENVNFE,FlgNfe,nronfs  from fatdev where ''FD'' = ' + QuotedStr(TAB) + ' and id_fatdev = ' + IntToStr(idFat); //

    SQLTEMP.Active := True;

    SQLTEMP.First;
    SQLTEMP.Last;
    SQLTEMP.First;

    if SQLTEMP.RecordCount = 0 then
    begin
      messagebox(handle, 'N�o foram encontradas NFe para cancelar.', 'Cancelamento de NFe', mb_ok + MB_ICONEXCLAMATION);
    end;

    VerificaArquivoNfeEmerionIni;

    inifile := ExtractFilePath(application.exename) + 'NFeEmerion2.ini';
    ini := Tinifile.create(Inifile);
    try
      CaminhoXml := ini.ReadString('Geral', 'PathXML', '');
      CaminhoLeitura := ini.ReadString('Geral', 'PathLeitura', '');
      CaminhoRetorno := ini.ReadString('Geral', 'PathRetorno', '');
    finally
      ini.free;
    end;

    NFeXML := CaminhoRetorno + '\' + SQLTEMP.FieldByName('nronfs').AsString + ' - NF-e- ' + SQLTEMP.FieldByName('seqnfe').AsString + '.xml';
    if not fileExists(NFeXML) then
    begin
      messagebox(handle, pchar('Arquivo ' + NFeXML + ' da NFe n�o encontrado. Verifique e tente novamente.'), 'Cancelamento NFe', mb_ok + MB_ICONEXCLAMATION);
      abort;
    end;

    if SQLTEMP.FieldByName('ENVNFE').AsString = 'Sim' then
    begin

      ActiveControl := nil;
      ObcFat := Trim(EdOb1Can.Text) + ' ' +
        Trim(EdOb2Can.Text) + ' ' +
        Trim(EdOb3Can.Text) + ' ' +
        Trim(EdOb4Can.Text) + ' ' +
        Trim(EdOb5Can.Text);

      if Trim(ObcFat) <> '' then
      begin
        if Length(Trim(ObcFat)) >= 15 then
        begin
          sText := 'Deseja realmente cancelar a nota fiscal ?';
          if FatPedAtuEst.Value = 'Sim' then
            sEstoque := ' . Entrada em estoque dos itens;';
          if FatPedIntFin.Value = 'Sim' then
            sReceber := ' . Cancelamento do titulos a receber.';
          if (Trim(sEstoque) <> '') or (Trim(sReceber) <> '') then
            sText := sText + #10 + ' ' + #10 + ' Ao confirmar ocorrer�o os seguintes lan�amentos:';
          sText := sText + #10 + ' ' + #10 + sEstoque + #10 + ' ' + #10 + sReceber;

          if fmsgConf(sText, 'E') = 'SIM' then
          begin

            if fmsgConf('Tem certeza que esta realmente cancelando a nota fiscal correta ?', 'E') = 'SIM' then
            begin
              sContinuar := 'N';

              try
                fmConCno := TfmConCno.Create(Self);
                fmConCno.ShowModal;
                sContinuar := fmConCno.sContinuar;
              finally
                FreeAndNil(fmConCno);
              end;

              if sContinuar = 'S' then
              begin

                if SQLTEMP.FieldByName('FlgNfe').AsString = 'Sim' then
                begin

                  SQLTSCR := TQuery.Create(Self);

                  try
                    SQLTSCR.DatabaseName := 'Isade';

                    fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
                    ;

                    try

                      if TAB = 'FP' then
                      begin
                        SQLTSCR.sql.text :=
                          ' update fatped set DteCan = ' + quotedstr(formatdatetime('yyyy-mm-dd', date)) + ',' +
                          ' UsuCan = ' + inttostr(GUsu_Id) + ',' +
                          ' SITFAT = ''Cancelado'', ' +
                          ' NFETHCANC = 1, ' +
                          ' HreCan = ' + quotedstr(TimeToStr(Time)) + ',' +
                          ' OB1CAN = ' + QuotedStr(Trim(EdOb1Can.Text)) + ',' +
                          ' OB2CAN = ' + QuotedStr(Trim(EdOb2Can.Text)) + ',' +
                          ' OB3CAN = ' + QuotedStr(Trim(EdOb3Can.Text)) + ',' +
                          ' OB4CAN = ' + QuotedStr(Trim(EdOb4Can.Text)) + ',' +
                          ' OB5CAN = ' + QuotedStr(Trim(EdOb5Can.Text)) +
                          ' where id_fatped = ' + IntToStr(idFat);
                      end
                      else if TAB = 'FG' then
                      begin
                        SQLTSCR.sql.text :=
                          ' update fatger set DteCan = ' + quotedstr(formatdatetime('yyyy-mm-dd', date)) + ',' +
                          ' UsuCan = ' + inttostr(GUsu_Id) + ',' +
                          ' SITGER = ''Cancelado'', ' +
                          ' NFETHCANC = 1, ' +
                          ' HreCan = ' + quotedstr(TimeToStr(Time)) + ',' +
                          ' OB1CAN = ' + QuotedStr(Trim(EdOb1Can.Text)) + ',' +
                          ' OB2CAN = ' + QuotedStr(Trim(EdOb2Can.Text)) + ',' +
                          ' OB3CAN = ' + QuotedStr(Trim(EdOb3Can.Text)) + ',' +
                          ' OB4CAN = ' + QuotedStr(Trim(EdOb4Can.Text)) + ',' +
                          ' OB5CAN = ' + QuotedStr(Trim(EdOb5Can.Text)) +
                          ' where numger = ' + IntToStr(idFat);
                      end
                      else if TAB = 'FD' then
                      begin
                        SQLTSCR.sql.text :=
                          ' update fatdev set DteCan = ' + quotedstr(formatdatetime('yyyy-mm-dd', date)) + ',' +
                          ' UsuCan = ' + inttostr(GUsu_Id) + ',' +
                          ' SITDEV = ''Cancelado'', ' +
                          ' NFETHCANC = 1, ' +
                          ' HreCan = ' + quotedstr(TimeToStr(Time)) + ',' +
                          ' OB1CAN = ' + QuotedStr(Trim(EdOb1Can.Text)) + ',' +
                          ' OB2CAN = ' + QuotedStr(Trim(EdOb2Can.Text)) + ',' +
                          ' OB3CAN = ' + QuotedStr(Trim(EdOb3Can.Text)) + ',' +
                          ' OB4CAN = ' + QuotedStr(Trim(EdOb4Can.Text)) + ',' +
                          ' OB5CAN = ' + QuotedStr(Trim(EdOb5Can.Text)) +
                          ' where id_fatdev = ' + IntToStr(idFat);
                      end;

                      SQLTSCR.ExecSQL;

                      fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
                      ;
                    except
                      fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
                      ;
                      raise;
                    end;
                  
                    if SQLTEMP.fieldbyname('ENVNFE').AsString = 'Sim' then
                    begin
                      if TAB = 'FP' then
                      begin
                        fmmangdb.CliSocket.Socket.SendText(GCodEmpCodUsuServ + 'FATURA||FATPED_CANCELA||' + inttostr(idFat) + '||' + inttostr(3) + '||');
                      end
                      else if TAB = 'FG' then
                      begin
                        fmmangdb.CliSocket.Socket.SendText(GCodEmpCodUsuServ + 'FATURA||FATGER_CANCELA||' + inttostr(idFat) + '||' + inttostr(3) + '||');
                      end
                      else if TAB = 'FG' then
                      begin
                        fmmangdb.CliSocket.Socket.SendText(GCodEmpCodUsuServ + 'FATURA||FATDEV_CANCELA||' + inttostr(idFat) + '||' + inttostr(3) + '||');
                      end;
                    end
                    else
                    begin
                      if TAB = 'FP' then
                      begin
                        fmmangdb.CliSocket.Socket.SendText(GCodEmpCodUsuServ + 'FATURA||FATPED_INUTILIZA||' + inttostr(idFat) + '||' + inttostr(3) + '||');
                      end
                      else if TAB = 'FG' then
                      begin
                        fmmangdb.CliSocket.Socket.SendText(GCodEmpCodUsuServ + 'FATURA||FATGER_INUTILIZA||' + inttostr(idFat) + '||' + inttostr(3) + '||');
                      end
                      else if TAB = 'FG' then
                      begin
                        fmmangdb.CliSocket.Socket.SendText(GCodEmpCodUsuServ + 'FATURA||FATDEV_INUTILIZA||' + inttostr(idFat) + '||' + inttostr(3) + '||');
                      end;
                    end;

                    fmManCno.Close;

                  finally
                    FreeAndNil(SQLTSCR);
                  end;
                  ///////////////////////////////////////////////////////////////////

                end; // if FatPedFlgNfe.Value = 'Sim' then
              end //  if sContinuar = 'S' then
              else
                EdOb1Can.SetFocus;
            end //           if fmsgConf('Tem certeza que esta realmente cancelando a nota fiscal correta ?','E') = 'SIM' then
            else
              EdOb1Can.SetFocus;
          end //        if fmsgConf(sText,'E') = 'SIM' then
          else
            EdOb1Can.SetFocus;
        end //     if Length(Trim(ObcFat)) >= 15 then
        else
          fmsgErro('Observa��es informadas tem que ter o minimo de 15 caracteres.', EdOb1Can);
      end //  if Trim(ObcFat) <> '' then
      else
        fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.', EdOb1Can);
    end; //complemento

  finally
    FreeAndNil(SQLTEMP);
  end;

end;

end.
