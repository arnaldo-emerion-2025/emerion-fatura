unit ManCge_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCge_NFE = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    EdObcGer: TdxDBColorMemo;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    FatGer: TwwQuery;
    DsFatGer: TwwDataSource;
    UpFatGer: TUpdateSQL;
    pnMensag: TPanel;
    FatGerCODEMP: TIntegerField;
    FatGerDTEGER: TDateTimeField;
    FatGerNUMGER: TIntegerField;
    FatGerOBCGER: TMemoField;
    FatGerDTCGER: TDateTimeField;
    FatGerHRCGER: TStringField;
    FatGerATUEST: TStringField;
    FatGerINTFIN: TStringField;
    FatGerSITGER: TStringField;
    FatGerFLGNFE: TStringField;
    FatGerENVNFE: TStringField;
    FatGerSEQNFE: TStringField;
    FatGerPRONFE: TStringField;
    FatGerHRCNFE: TStringField;
    FatGerDTCNFE: TDateTimeField;
    FatGerPRCNFE: TStringField;
    FatGerNRONFS: TIntegerField;
    quSql: TwwQuery;
    FatGerUSCGER: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManCge_NFE: TfmManCge_NFE;

implementation

uses dxDemoUtils, FileCtrl, Bbmensag, Bbgeral, Bbfuncao, ManGDB, ConCn1_NFE;

{$R *.DFM}

procedure TfmManCge_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bCancelar.OnClick(Sender);

  if key = 123 then
    bConfirmar.OnClick(Sender);

end;

procedure TfmManCge_NFE.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCge_NFE.FormShow(Sender: TObject);
begin
  inherited;

  FatGer.Edit;

  EdObcGer.SetFocus;

end;

procedure TfmManCge_NFE.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManCge_NFE.bConfirmarClick(Sender: TObject);
var
  SeqEnc: integer;
  SeqLin: integer;
  FlgRej: string;
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
  ObsCan: string;
  ArqEnv: TextFile;
  ArqRet: TStringList;
  SeqRet: Boolean;
  Handle: LongInt;
  UfeEmp: string;
  Id_FinUfe: integer;
  Id_FinCie: integer;
  sText, sReceber, sEstoque, sContinuar: string;
begin

  ActiveControl := nil;

  FatGerObcGer.Value := EdObcGer.Text;

  if Trim(FatGerObcGer.Value) <> '' then
  begin

    if Length(Trim(FatGerObcGer.Value)) >= 15 then
    begin

      sText := 'Deseja realmente cancelar a nota fiscal ?';

      if FatGerAtuEst.Value = 'Sim' then
        sEstoque := ' . Entrada em estoque dos itens;';

      if FatGerIntFin.Value = 'Sim' then
        sReceber := ' . Cancelamento do(s) titulo(s) a receber.';

      if (Trim(sEstoque) <> '') or (Trim(sReceber) <> '') then
        sText := sText + #10 + ' ' + #10 + ' Ao confirmar ocorrerão os seguintes lançamentos:';

      sText := sText + #10 + ' ' + #10 + sEstoque + #10 + ' ' + #10 + sReceber;

      if fmsgConf(sText, 'E') = 'SIM' then
      begin

        if fmsgConf('Tem certeza que esta realmente cancelando a nota fiscal correta ?', 'E') = 'SIM' then
        begin

          sContinuar := 'N';

          try

            fmConCn1_NFE := TfmConCn1_NFE.Create(Self);
            fmConCn1_NFE.ShowModal;

            sContinuar := fmConCn1_NFE.sContinuar;

          finally

            FreeAndNil(fmConCn1_NFE);

          end;

          if sContinuar = 'S' then
          begin

            if FatGerFlgNfe.Value = 'Sim' then
            begin

              if FatGerEnvNfe.Value = 'Sim' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select GerEmp.SigUfe,' +
                    '        GerEmp.Id_FinUfe,' +
                    '        GerEmp.Id_FinCie ' +
                    ' From GerEmp' +
                    ' Where GerEmp.CodEmp = ' + QuotedStr(IntToStr(FatGerCodEmp.Value));
                  Open;

                  UfeEmp := fLimpaAcentos(FieldbyName('SigUfe').AsString);

                  Id_FinUfe := FieldbyName('Id_FinUfe').AsInteger;
                  Id_FinCie := FieldbyName('Id_FinCie').AsInteger;

                  UfeEmp := copy(Trim(UfeEmp), 1, 02) + fReplicate(' ', 02 - Length(copy(Trim(UfeEmp), 1, 02)));

                end;

                if Id_FinUfe > 0 then
                begin

                  if Id_FinCie > 0 then
                  begin

                    if not directoryExists('C:\EMERION\NFE') then
                      CreateDir('C:\EMERION\NFE');

                    if not directoryExists('C:\EMERION\REQ') then
                      CreateDir('C:\EMERION\REQ');

                    if not directoryExists('C:\EMERION\RESP') then
                      CreateDir('C:\EMERION\RESP');

                    Application.ProcessMessages;

                    fmManCge_NFE.Enabled := False;

                    pnMensag.Visible := True;

                    pnMensag.Caption := 'Aguarde. Verificando status do serviço.';

                    ArqRe1 := 'C:\Emerion\REQ\INTPOS.TMP';
                    ArqRe2 := 'C:\Emerion\REQ\INTPOS.001';

                    ArqRs1 := 'C:\Emerion\RESP\INTPOS.STS';
                    ArqRs2 := 'C:\Emerion\RESP\INTPOS.001';

                    DeleteFile(ArqRe1);
                    DeleteFile(ArqRe2);
                    DeleteFile(ArqRs1);
                    DeleteFile(ArqRs2);

                    AssignFile(ArqEnv, ArqRe1);

                    Rewrite(ArqEnv);

                    Writeln(ArqEnv, 'EM01' +
                      UfeEmp +
                      FatGerSeqNFe.Value);

                    CloseFile(ArqEnv);

                    movefile(PChar(ArqRe1), PChar(ArqRe2));

                    SeqEnc := 0;

                    while SeqEnc = 0 do
                    begin

                      while not FileExists(ArqRs2) do
                        Application.ProcessMessages;

                      if FileExists(ArqRs2) then
                      begin

                        sleep(1000);

                        ArqRet := TStringList.Create;

                        ArqRet.LoadFromFile(ArqRs2);

                        if pos('EMRESP', ArqRet[0]) = 0 then
                          SeqEnc := 3
                        else
                        begin

                          if pos(FatGerSeqNFe.Value, ArqRet[0]) > 0 then
                            SeqEnc := 1;

                        end;

                        FreeAndNil(ArqRet);

                        if SeqEnc = 3 then
                          DeleteFile(ArqRs2);

                      end;
                    end;

                    if FileExists(ArqRs2) then
                    begin

                      Application.ProcessMessages;

                      CopyFile(Pchar(ArqRs2), Pchar(ArqRs2), SeqRet);

                      // Cria-se um Handle //

                      Handle := CreateFile(PChar(ArqRs2), GENERIC_WRITE, 0, 0, OPEN_ALWAYS, FILE_FLAG_NO_BUFFERING, 0);

                      // Descarrega o arquivo com essa função //

                      FlushFileBuffers(Handle);

                      // Fecha o Handle //

                      CloseHandle(Handle);

                      // Informações para Salva de Backup do INTPOS.001//

                      CopyFile(Pchar(ArqRs2), Pchar(ExtractFilePath(Application.ExeName) + 'INTPOS.001'), SeqRet);

                      { Cria-se um Handle }

                      Handle := CreateFile('INTPOS.001', GENERIC_WRITE, 0, 0, OPEN_ALWAYS, FILE_FLAG_NO_BUFFERING, 0);

                      { Descarrega o arquivo com essa função }

                      FlushFileBuffers(Handle);

                      { Fecha o Handle }

                      CloseHandle(Handle);

                      // Informações para Salva de Backup do INTTMP.001//

                      CopyFile(Pchar(ArqRs2), Pchar(ExtractFilePath(Application.ExeName) + 'INTTMP.001'), SeqRet);

                      // Cria-se um Handle //

                      Handle := CreateFile(PChar('INTTMP.001'), GENERIC_WRITE, 0, 0, OPEN_ALWAYS, FILE_FLAG_NO_BUFFERING, 0);

                      // Descarrega o arquivo com essa função //

                      FlushFileBuffers(Handle);

                      // Fecha o Handle //

                      CloseHandle(Handle);

                      FlgRej := 'N';

                      ArqRet := TStringList.Create;

                      ArqRet.LoadFromFile(ArqRs2);

                      for SeqLin := 0 to ArqRet.Count - 1 do
                      begin

                        Application.ProcessMessages;

                        LinArq := ArqRet[SeqLin];

                        if pos('EMRESP', LinArq) > 0 then
                        begin

                          if pos('System.Reflection', LinArq) > 0 then
                          begin

                            FlgRej := 'S';

                            MSGNFE := 'Serviço inativo ou inoperante. Tente novamente.';

                            break;

                          end
                          else
                          begin

                            if pos('Erros:', LinArq) > 0 then
                              FlgRej := 'S';

                            if pos('Rejeição', LinArq) > 0 then
                              FlgRej := 'S';

                            MSGNFE := copy(LinArq, pos('<xMotivo>', LinArq) + 9, pos('</xMotivo>', LinArq) - (pos('<xMotivo>', LinArq) + 9));

                          end;
                        end;
                      end;

                      FreeAndNil(ArqRet);

                      if FlgRej = 'N' then
                      begin

                        if Trim(MSGNFE) <> '' then
                        begin

                          pnMensag.Caption := MSGNFE;

                          Application.ProcessMessages;

                          sleep(3000); // aguardando 3 Segundos ... Exibindo mensagens para o cliente na tela //

                        end;

                        ProNFE := copy(Trim(FatGerProNFe.Value), 1, 015) + fReplicate(' ', 015 - Length(copy(Trim(FatGerProNFe.Value), 1, 015)));

                        ObsCan := AllTrim(fLimpaAcentos(FatGerObcGer.Value));

                        ObsCan := copy(Trim(ObsCan), 1, 255) + fReplicate(' ', 255 - Length(copy(Trim(ObsCan), 1, 255)));

                        pnMensag.Caption := 'Aguarde. Enviando informações.';

                        DeleteFile(ArqRe1);
                        DeleteFile(ArqRe2);
                        DeleteFile(ArqRs1);
                        DeleteFile(ArqRs2);

                        AssignFile(ArqEnv, ArqRe1);

                        Rewrite(ArqEnv);

                        Writeln(ArqEnv, 'EM04' +
                          UfeEmp +
                          FatGerSeqNFe.Value +
                          ProNFE +
                          ObsCan);

                        CloseFile(ArqEnv);

                        movefile(PChar(ArqRe1), PChar(ArqRe2));

                        SeqEnc := 0;

                        while SeqEnc = 0 do
                        begin

                          while not FileExists(ArqRs2) do
                            Application.ProcessMessages;

                          if FileExists(ArqRs2) then
                          begin

                            sleep(1000);

                            ArqRet := TStringList.Create;

                            ArqRet.LoadFromFile(ArqRs2);

                            if pos('EMRESP', ArqRet[0]) = 0 then
                              SeqEnc := 3
                            else
                            begin

                              if pos(FatGerSeqNFe.Value, ArqRet[0]) > 0 then
                                SeqEnc := 1;

                            end;

                            FreeAndNil(ArqRet);

                            if SeqEnc = 3 then
                              DeleteFile(ArqRs2);

                          end;
                        end;

                        if FileExists(ArqRs2) then
                        begin

                          Application.ProcessMessages;

                          CopyFile(Pchar(ArqRs2), Pchar(ArqRs2), SeqRet);

                          // Cria-se um Handle //

                          Handle := CreateFile(PChar(ArqRs2), GENERIC_WRITE, 0, 0, OPEN_ALWAYS, FILE_FLAG_NO_BUFFERING, 0);

                          // Descarrega o arquivo com essa função //

                          FlushFileBuffers(Handle);

                          // Fecha o Handle //

                          CloseHandle(Handle);

                          // Informações para Salva de Backup do INTPOS.001//

                          CopyFile(Pchar(ArqRs2), Pchar(ExtractFilePath(Application.ExeName) + 'INTPOS.001'), SeqRet);

                          { Cria-se um Handle }

                          Handle := CreateFile('INTPOS.001', GENERIC_WRITE, 0, 0, OPEN_ALWAYS, FILE_FLAG_NO_BUFFERING, 0);

                          { Descarrega o arquivo com essa função }

                          FlushFileBuffers(Handle);

                          { Fecha o Handle }

                          CloseHandle(Handle);

                          // Informações para Salva de Backup do INTTMP.001//

                          CopyFile(Pchar(ArqRs2), Pchar(ExtractFilePath(Application.ExeName) + 'INTTMP.001'), SeqRet);

                          // Cria-se um Handle //

                          Handle := CreateFile(PChar('INTTMP.001'), GENERIC_WRITE, 0, 0, OPEN_ALWAYS, FILE_FLAG_NO_BUFFERING, 0);

                          // Descarrega o arquivo com essa função //

                          FlushFileBuffers(Handle);

                          // Fecha o Handle //

                          CloseHandle(Handle);

                          FlgRej := 'N';

                          ArqRet := TStringList.Create;

                          ArqRet.LoadFromFile(ArqRs2);

                          for SeqLin := 0 to ArqRet.Count - 1 do
                          begin

                            Application.ProcessMessages;

                            LinArq := ArqRet[SeqLin];

                            if pos('EMRESP', LinArq) > 0 then
                            begin

                              if pos('Erros:', LinArq) > 0 then
                                FlgRej := 'S';

                              if pos('Rejeição', LinArq) > 0 then
                                FlgRej := 'S';

                              MSGNFE := copy(LinArq, pos('<xMotivo>', LinArq) + 9, pos('</xMotivo>', LinArq) - (pos('<xMotivo>', LinArq) + 9));

                              PRCNFE := copy(LinArq, pos('<nRec>', LinArq) + 6, pos('</nRec>', LinArq) - (pos('<nRec>', LinArq) + 6));

                              DTCNFE := copy(LinArq, pos('<dhRecbto>', LinArq) + 10, pos('</dhRecbto>', LinArq) - (pos('<dhRecbto>', LinArq) + 10));

                              HRCNFE := copy(LinArq, pos('<dhRecbto>', LinArq) + 21, pos('</dhRecbto>', LinArq) - (pos('<dhRecbto>', LinArq) + 21));

                              if Trim(DTCNFE) <> '' then
                                DTCNFE := copy(DTCNFE, 9, 2) + '/' + copy(DTCNFE, 6, 2) + '/' + copy(DTCNFE, 1, 4);

                            end;
                          end;

                          FreeAndNil(ArqRet);

                          if Trim(MSGNFE) <> '' then
                          begin

                            with quSQL, SQL do
                            begin

                              Close;
                              Text := ' Update FatGer Set FlgAtu = :FlgAtu,' +
                                '                   RetNfe = :RefNfe ' +
                                ' Where FatGer.CodEmp = :CodEmp' +
                                '   and FatGer.DteGer = :DteGer' +
                                '   and FatGer.NumGer = :NumGer';

                              with Params do
                              begin

                                Params[0].AsString := 'F';
                                Params[1].AsString := Trim(MSGNFE);
                                Params[2].AsInteger := FatGerCodEmp.Value;
                                Params[3].AsDateTime := FatGerDteGer.Value;
                                Params[4].AsInteger := FatGerNumGer.Value;

                              end;

                              ExecSQL;

                            end;
                          end;

                          if FlgRej = 'N' then
                          begin

                            if Trim(MSGNFE) <> '' then
                            begin

                              pnMensag.Caption := MSGNFE;

                              Application.ProcessMessages;

                              sleep(3000); // aguardando 3 Segundos ... Exibindo mensagens para o cliente na tela //

                            end;

                            if FatGer.State = dsBrowse then
                              FatGer.Edit;

                            FatGerDtcGer.Value := Date;
                            FatGerHrcNFE.Value := HrcNFE;
                            FatGerPrcNFE.Value := PrcNFE;
                            FatGerUscGer.Value := GUsu_Id;
                            FatGerSitGer.Value := 'Cancelado';
                            FatGerHrcGer.Value := TimeToStr(Time);
                            FatGerDtcNFE.Value := StrToDate(DtcNFE);

                            with FatGer do
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

                                if FatGer.State = dsBrowse then
                                  FatGer.Edit;

                                EdObcGer.SetFocus;

                                raise;

                              end;

                              CommitUpdates; {sucesso!, limpa o cache...}

                            end;

                            Close;

                          end
                          else
                          begin

                            fmManCge_NFE.Enabled := True;

                            pnMensag.Visible := False;

                            fmsgErro(MSGNFE, nil);

                          end;
                        end;

                      end
                      else
                      begin

                        fmManCge_NFE.Enabled := True;

                        pnMensag.Visible := False;

                        fmsgErro(MSGNFE, nil);

                      end;
                    end;

                  end
                  else
                  begin

                    fmManCge_NFE.Enabled := True;

                    pnMensag.Visible := False;

                    fmsgErro('Código de municipio para emissão de NFe não informado no cadastro da empresa.', nil);

                  end;

                end
                else
                begin

                  fmManCge_NFE.Enabled := True;

                  pnMensag.Visible := False;

                  fmsgErro('Código da UF para emissão de NFe não informado no cadastro da empresa.', nil);

                end;

              end
              else
              begin

                if fmsgConf('A nota fiscal ainda foi enviada para a SEFAZ. Deseja cancelar assim mesmo ?', 'E') = 'SIM' then
                begin

                  if FatGer.State = dsBrowse then
                    FatGer.Edit;

                  FatGerDtcGer.Value := Date;
                  FatGerUscGer.Value := GUsu_Id;
                  FatGerSitGer.Value := 'Cancelado';
                  FatGerHrcGer.Value := TimeToStr(Time);

                  with FatGer do
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

                      if FatGer.State = dsBrowse then
                        FatGer.Edit;

                      EdObcGer.SetFocus;

                      raise;

                    end;

                    CommitUpdates; {sucesso!, limpa o cache...}

                  end;

                  Close;

                end;
              end;

            end
            else
            begin

              if FatGer.State = dsBrowse then
                FatGer.Edit;

              FatGerDtcGer.Value := Date;
              FatGerUscGer.Value := GUsu_Id;
              FatGerSitGer.Value := 'Cancelado';
              FatGerHrcGer.Value := TimeToStr(Time);

              with FatGer do
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

                  if FatGer.State = dsBrowse then
                    FatGer.Edit;

                  EdObcGer.SetFocus;

                  raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

              end;

              Close;

            end;

          end
          else
            EdObcGer.SetFocus;

        end
        else
          EdObcGer.SetFocus;

      end
      else
        EdObcGer.SetFocus;

    end
    else
      fmsgErro('Observações informadas tem que ter o minimo de 15 caracteres.', EdObcGer);

  end
  else
    fmsgErro('Campo de preenchimento obrigatório não informado.', EdObcGer);
end;

procedure TfmManCge_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if FatGer.State <> dsBrowse then
    FatGer.CancelUpdates;
end;

procedure TfmManCge_NFE.FormCreate(Sender: TObject);
begin
  inherited;
  Top := 0;
  Left := 0;
  FatGer.Active := True;
end;

end.
