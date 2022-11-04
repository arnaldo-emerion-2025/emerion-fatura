unit ManCro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCro = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdObcNf1: TdxDBColorEdit;
    EdObcNf2: TdxDBColorEdit;
    EdObcNf3: TdxDBColorEdit;
    pnMensag: TPanel;
    CmpNfs: TwwQuery;
    DsCmpNfs: TwwDataSource;
    UpCmpNfs: TUpdateSQL;
    quSql: TwwQuery;
    CmpNfsID_CMPNFS: TIntegerField;
    CmpNfsCODEMP: TIntegerField;
    CmpNfsNRONFS: TIntegerField;
    CmpNfsDTCNFS: TDateTimeField;
    CmpNfsHRCNFS: TStringField;
    CmpNfsUSCNFS: TIntegerField;
    CmpNfsOBCNF1: TStringField;
    CmpNfsOBCNF2: TStringField;
    CmpNfsOBCNF3: TStringField;
    CmpNfsFLGNFE: TStringField;
    CmpNfsENVNFE: TStringField;
    CmpNfsSEQNFE: TStringField;
    CmpNfsPRONFE: TStringField;
    CmpNfsDTCNFE: TDateTimeField;
    CmpNfsHRCNFE: TStringField;
    CmpNfsPRCNFE: TStringField;
    CmpNfsATUEST: TStringField;
    CmpNfsINTFIN: TStringField;
    CmpNfsSITNFS: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManCro: TfmManCro;

implementation

uses dxDemoUtils, FileCtrl, Bbfuncao, Bbgeral, ManGDB, Bbmensag, ManLr3, ConCro;

{$R *.DFM}

procedure TfmManCro.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManCro.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCro.FormShow(Sender: TObject);
begin

  CmpNfs.Edit;

  EdObcNf1.SetFocus;

end;

procedure TfmManCro.bCancelarClick(Sender: TObject);
begin

  CmpNfs.CancelUpdates;

  Close;

end;

procedure TfmManCro.bConfirmarClick(Sender: TObject);
var
  SeqEnc    : integer;
  SeqLin    : integer;
  ObcNfs    : string;
  FlgRej    : string;
  FlgArq    : string;
  ArqRe1    : string;
  ArqRe2    : string;
  ArqRs1    : string;
  ArqRs2    : string;
  MSGNFE    : string;
  ProNFE    : string;
  PRCNFE    : string;
  DTCNFE    : string;
  HRCNFE    : string;
  LinArq    : string;
  ArqEnv    : TextFile;
  ArqRet    : TStringList;
  SeqRet    : Boolean;
  Handle    : LongInt;
  UfeEmp    : string;
  Id_FinUfe : integer;
  Id_FinCie : integer;
  sText,sEstoque,sContinuar : string;
begin

  ActiveControl := nil;

  CmpNfsObcNf1.Value := Trim(CmpNfsObcNf1.Value);
  CmpNfsObcNf2.Value := Trim(CmpNfsObcNf2.Value);
  CmpNfsObcNf3.Value := Trim(CmpNfsObcNf3.Value);

  CmpNfsDtcNfs.Value := date;
  CmpNfsUscNfs.Value := GUsu_Id;
  CmpNfsHrcNfs.Value := TimeToStr(Time);

  CmpNfsSitNfs.Value := 'Cancelado';

  ObcNfs := Trim(CmpNfsObcNf1.Value)+ ' ' +
            Trim(CmpNfsObcNf2.Value)+ ' ' +
            Trim(CmpNfsObcNf3.Value);

  if Trim(ObcNfs) <> '' then begin

     if Length(Trim(ObcNfs)) >= 15 then begin

        sText := 'Deseja realmente cancelar a nota fiscal ?';

        if CmpNfsAtuEst.Value = 'Sim' then sEstoque := ' . Entrada em estoque dos itens;';

        if Trim(sEstoque) <> '' then
           sText := sText + #10 + ' ' + #10 + ' Ao confirmar ocorrerão os seguintes lançamentos:';

        sText := sText + #10 + ' ' + #10 + sEstoque;

        if fmsgConf(sText,'E') = 'SIM' then begin

           if fmsgConf('Tem certeza que esta realmente cancelando a nota fiscal correta ?','E') = 'SIM' then begin

              sContinuar := 'N';

              try

                 fmConCro := TfmConCro.Create(Self);

                 fmConCro.ShowModal;

                 sContinuar := fmConCro.sContinuar;

              finally

                 FreeAndNil(fmConCro);

              end;

              if sContinuar = 'S' then begin

                 if CmpNfsFlgNfe.Value = 'Sim' then begin

                    if CmpNfsEnvNfe.Value = 'Sim' then begin

                       with quSQL,SQL do begin

                            Close;
                            Text := ' Select GerEmp.SigUfe,'+
                                    '        GerEmp.Id_FinUfe,'+
                                    '        GerEmp.Id_FinCie '+
                                    ' From GerEmp'+
                                    ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(CmpNfsCodEmp.Value));
                            Open;

                            UfeEmp := fLimpaAcentos(FieldbyName('SigUfe').AsString);

                            Id_FinUfe := FieldbyName('Id_FinUfe').AsInteger;
                            Id_FinCie := FieldbyName('Id_FinCie').AsInteger;

                            UfeEmp := copy(Trim(UfeEmp),1,02) + fReplicate(' ',02 - Length(copy(Trim(UfeEmp),1,02)));

                       end;

                       if Id_FinUfe > 0 then begin

                          if Id_FinCie > 0 then begin

                             if not directoryExists('C:\EMERION\NFE') then CreateDir('C:\EMERION\NFE');

                             if not directoryExists('C:\EMERION\REQ') then CreateDir('C:\EMERION\REQ');

                             if not directoryExists('C:\EMERION\RESP') then CreateDir('C:\EMERION\RESP');

                             Application.ProcessMessages;

                             fmManCro.Enabled := False;

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

                             AssignFile(ArqEnv,ArqRe1);

                             Rewrite(ArqEnv);

                             Writeln(ArqEnv,'EM01' +
                                            UfeEmp +
                                            CmpNfsSeqNFe.Value);

                             CloseFile(ArqEnv);

                             movefile(PChar(ArqRe1),PChar(ArqRe2));

                             SeqEnc := 0;

                             while SeqEnc = 0 do begin

                                   while not FileExists(ArqRs2) do Application.ProcessMessages;

                                   if FileExists(ArqRs2) then begin

                                      sleep(1000);

                                      ArqRet := TStringList.Create;

                                      ArqRet.LoadFromFile(ArqRs2);

                                      if pos('EMRESP',ArqRet[0]) = 0 then
                                         SeqEnc := 3
                                      else
                                         begin

                                         if pos(CmpNfsSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

                                      end;
                          
                                      FreeAndNil(ArqRet);

                                      if SeqEnc = 3 then DeleteFile(ArqRs2);

                                   end;
                             end;

                             if FileExists(ArqRs2) then begin

                                Application.ProcessMessages;

                                CopyFile(Pchar(ArqRs2),Pchar(ArqRs2), SeqRet);

                                // Cria-se um Handle //

                                Handle := CreateFile(PChar(ArqRs2),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                // Descarrega o arquivo com essa função //

                                FlushFileBuffers(Handle);

                                // Fecha o Handle //

                                CloseHandle(Handle);

                                // Informações para Salva de Backup do INTPOS.001//

                                CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTPOS.001'), SeqRet);

                                { Cria-se um Handle }

                                Handle := CreateFile('INTPOS.001',GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                { Descarrega o arquivo com essa função }

                                FlushFileBuffers(Handle);

                                { Fecha o Handle }

                                CloseHandle(Handle);

                                // Informações para Salva de Backup do INTTMP.001//

                                CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTTMP.001'), SeqRet);

                                // Cria-se um Handle //

                                Handle := CreateFile(PChar('INTTMP.001'),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                // Descarrega o arquivo com essa função //

                                FlushFileBuffers(Handle);

                                // Fecha o Handle //

                                CloseHandle(Handle);

                                FlgRej := 'N';
                                FlgArq := 'N';

                                ArqRet := TStringList.Create;

                                ArqRet.LoadFromFile(ArqRs2);

                                for SeqLin := 0 to ArqRet.Count - 1 do begin

                                    Application.ProcessMessages;

                                    LinArq := ArqRet[SeqLin];

                                    if pos('EMRESP',LinArq) > 0 then FlgArq := 'S';

                                    if FlgArq = 'S' then begin

                                       if pos('System.Reflection',LinArq) > 0 then begin

                                          FlgRej := 'S';

                                          MSGNFE := 'Serviço inativo ou inoperante. Tente novamente.';

                                          break;

                                          end
                                       else
                                          begin

                                          if pos('Erros:',LinArq) > 0 then FlgRej := 'S';

                                          if pos('Rejeição',LinArq) > 0 then FlgRej := 'S';

                                          if pos('<xMotivo>',LinArq) > 0 then
                                             MSGNFE := copy(LinArq,pos('<xMotivo>',LinArq)+9,pos('</xMotivo>',LinArq) - (pos('<xMotivo>',LinArq)+9));

                                       end;
                                    end;
                                end;

                                FreeAndNil(ArqRet);

                                if FlgRej = 'N' then begin

                                   if Trim( MSGNFE ) <> '' then begin

                                      pnMensag.Caption := MSGNFE;

                                      Application.ProcessMessages;

                                      sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o cliente na tela //

                                   end;

                                   ProNFE := copy(Trim(CmpNfsProNFe.Value),1,015) + fReplicate(' ',015 - Length(copy(Trim(CmpNfsProNFe.Value),1,015)));

                                   ObcNfs := AllTrim(fLimpaAcentos(ObcNfs));

                                   ObcNfs := copy(Trim(ObcNfs),1,255) + fReplicate(' ',255 - Length(copy(Trim(ObcNfs),1,255)));

                                   pnMensag.Caption := 'Aguarde. Enviando informações.';

                                   DeleteFile(ArqRe1);
                                   DeleteFile(ArqRe2);
                                   DeleteFile(ArqRs1);
                                   DeleteFile(ArqRs2);

                                   AssignFile(ArqEnv,ArqRe1);

                                   Rewrite(ArqEnv);

                                   Writeln(ArqEnv,'EM04' +
                                                  UfeEmp +
                                                  CmpNfsSeqNFe.Value +
                                                  ProNFE +
                                                  ObcNfs);

                                   CloseFile(ArqEnv);

                                   movefile(PChar(ArqRe1),PChar(ArqRe2));

                                   SeqEnc := 0;

                                   while SeqEnc = 0 do begin

                                         while not FileExists(ArqRs2) do Application.ProcessMessages;

                                         if FileExists(ArqRs2) then begin

                                            sleep(1000);

                                            ArqRet := TStringList.Create;

                                            ArqRet.LoadFromFile(ArqRs2);

                                            if pos('EMRESP',ArqRet[0]) = 0 then
                                               SeqEnc := 3
                                            else
                                               begin

                                               if pos(CmpNfsSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

                                            end;

                                            FreeAndNil(ArqRet);

                                            if SeqEnc = 3 then DeleteFile(ArqRs2);

                                         end;
                                   end;

                                   if FileExists(ArqRs2) then begin

                                      Application.ProcessMessages;

                                      CopyFile(Pchar(ArqRs2),Pchar(ArqRs2), SeqRet);

                                      // Cria-se um Handle //

                                      Handle := CreateFile(PChar(ArqRs2),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                      // Descarrega o arquivo com essa função //

                                      FlushFileBuffers(Handle);

                                      // Fecha o Handle //

                                      CloseHandle(Handle);

                                      // Informações para Salva de Backup do INTPOS.001//

                                      CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTPOS.001'), SeqRet);

                                      { Cria-se um Handle }

                                      Handle := CreateFile('INTPOS.001',GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                      { Descarrega o arquivo com essa função }

                                      FlushFileBuffers(Handle);

                                      { Fecha o Handle }

                                      CloseHandle(Handle);

                                      // Informações para Salva de Backup do INTTMP.001//

                                      CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTTMP.001'), SeqRet);

                                      // Cria-se um Handle //

                                      Handle := CreateFile(PChar('INTTMP.001'),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                      // Descarrega o arquivo com essa função //

                                      FlushFileBuffers(Handle);

                                      // Fecha o Handle //

                                      CloseHandle(Handle);

                                      FlgRej := 'N';
                                      FlgArq := 'N';

                                      ArqRet := TStringList.Create;

                                      ArqRet.LoadFromFile(ArqRs2);

                                      for SeqLin := 0 to ArqRet.Count - 1 do begin

                                          Application.ProcessMessages;

                                          LinArq := ArqRet[SeqLin];

                                          if pos('EMRESP',LinArq) > 0 then FlgArq := 'S';

                                          if FlgArq = 'S' then begin
                                          
                                             if pos('Erros:',LinArq) > 0 then FlgRej := 'S';

                                             if pos('Rejeição',LinArq) > 0 then FlgRej := 'S';

                                             if pos('<xMotivo>',LinArq) > 0 then
                                                MSGNFE := copy(LinArq,pos('<xMotivo>',LinArq)+9,pos('</xMotivo>',LinArq) - (pos('<xMotivo>',LinArq)+9));

                                             if pos('<nRec>',LinArq) > 0 then
                                                PRCNFE := copy(LinArq,pos('<nRec>',LinArq)+6,pos('</nRec>',LinArq) - (pos('<nRec>',LinArq)+6));

                                             if pos('<dhRecbto>',LinArq) > 0 then begin

                                                DTCNFE := copy(LinArq,pos('<dhRecbto>',LinArq)+10,pos('</dhRecbto>',LinArq) - (pos('<dhRecbto>',LinArq)+10));

                                                HRCNFE := copy(LinArq,pos('<dhRecbto>',LinArq)+21,pos('</dhRecbto>',LinArq) - (pos('<dhRecbto>',LinArq)+21));

                                                if Trim(DTCNFE) <> '' then DTCNFE := copy(DTCNFE,9,2)+ '/' +copy(DTCNFE,6,2)+ '/' +copy(DTCNFE,1,4);
                                                
                                             end;
                                          end;
                                      end;

                                      FreeAndNil(ArqRet);

                                      if Trim( MSGNFE ) <> '' then begin

                                         with quSQL,SQL do begin

                                              Close;
                                              Text := ' Update CmpNfs Set FlgAtu = :FlgAtu,'+
                                                      '                   RetNfe = :RefNfe '+
                                                      ' Where CmpNfs.Id_CmpNfs = :Id_CmpNfs';

                                              with Params do begin

                                                   Params[0].AsString  := 'F';
                                                   Params[1].AsString  := Trim( MSGNFE );
                                                   Params[2].AsInteger := CmpNfsId_CmpNfs.Value;

                                              end;

                                              ExecSQL;

                                         end;
                                      end;
                                
                                      if FlgRej = 'N' then begin

                                         if Trim( MSGNFE ) <> '' then begin

                                            pnMensag.Caption := MSGNFE;

                                            Application.ProcessMessages;

                                            sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o cliente na tela //

                                         end;

                                         if CmpNfs.State = dsBrowse then CmpNfs.Edit;

                                         CmpNfsDtcNfs.Value := Date;
                                         CmpNfsHrcNFE.Value := HrcNFE;
                                         CmpNfsPrcNFE.Value := PrcNFE;
                                         CmpNfsUscNfs.Value := GUsu_Id;
                                         CmpNfsSitNfs.Value := 'Cancelado';
                                         CmpNfsHrcNfs.Value := TimeToStr(Time);
                                         CmpNfsDtcNFE.Value := StrToDate(DtcNFE);

                                         with CmpNfs do begin

                                              fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                              try

                                                 ApplyUpdates; {Tenta aplicar as alterações};

                                                 fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                              except

                                                 fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                 if CmpNfs.State = dsBrowse then CmpNfs.Edit;

                                                 EdObcNf1.SetFocus;

                                                 raise;

                                              end;

                                              CommitUpdates; {sucesso!, limpa o cache...}

                                         end;

                                         with fmManLr3.CmpNfs,SQL do begin

                                              Close;
                                              Text := fmManLr3.sBase + fmManLr3.sBaseFiltro + fmManLr3.sFiltro + fmManLr3.sOrdem;
                                              Open;

                                         end;
                                         
                                         Close;

                                         end
                                      else
                                         begin

                                         fmManCro.Enabled := True;

                                         pnMensag.Visible := False;

                                         fmsgErro(MSGNFE,Nil);

                                      end;
                                   end;

                                   end
                                else
                                   begin

                                   fmManCro.Enabled := True;

                                   pnMensag.Visible := False;

                                   fmsgErro(MSGNFE,Nil);

                                end;
                             end;

                             end
                          else
                             begin

                             fmManCro.Enabled := True;

                             pnMensag.Visible := False;

                             fmsgErro('Código de municipio para emissão de NFe não informado no cadastro da empresa.',Nil);

                          end;

                          end
                       else
                          begin

                          fmManCro.Enabled := True;

                          pnMensag.Visible := False;

                          fmsgErro('Código da UF para emissão de NFe não informado no cadastro da empresa.',Nil);

                       end;

                       end
                    else
                       begin

                       if fmsgConf('A nota fiscal ainda foi enviada para a SEFAZ. Deseja cancelar assim mesmo ?','E') = 'SIM' then begin

                          if CmpNfs.State = dsBrowse then CmpNfs.Edit;

                          CmpNfsDtcNfs.Value := Date;
                          CmpNfsUscNfs.Value := GUsu_Id;
                          CmpNfsSitNfs.Value := 'Cancelado';
                          CmpNfsHrcNfs.Value := TimeToStr(Time);

                          with CmpNfs do begin

                               fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                               try

                                  ApplyUpdates; {Tenta aplicar as alterações};

                                  fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                               except

                                  fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                  if CmpNfs.State = dsBrowse then CmpNfs.Edit;

                                  EdObcNf1.SetFocus;

                                  raise;

                               end;

                               CommitUpdates; {sucesso!, limpa o cache...}

                          end;

                          with fmManLr3.CmpNfs,SQL do begin

                               Close;
                               Text := fmManLr3.sBase + fmManLr3.sBaseFiltro + fmManLr3.sFiltro + fmManLr3.sOrdem;
                               Open;

                          end;

                          Close;

                       end;
                    end;

                    end
                 else
                    begin

                    if CmpNfs.State = dsBrowse then CmpNfs.Edit;

                    CmpNfsDtcNfs.Value := Date;
                    CmpNfsUscNfs.Value := GUsu_Id;
                    CmpNfsSitNfs.Value := 'Cancelado';
                    CmpNfsHrcNfs.Value := TimeToStr(Time);

                    with CmpNfs do begin

                         fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                         try

                            ApplyUpdates; {Tenta aplicar as alterações};

                            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                         except

                            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                            if CmpNfs.State = dsBrowse then CmpNfs.Edit;

                            EdObcNf1.SetFocus;

                            raise;

                         end;

                         CommitUpdates; {sucesso!, limpa o cache...}

                    end;

                    with fmManLr3.CmpNfs,SQL do begin

                         Close;
                         Text := fmManLr3.sBase + fmManLr3.sBaseFiltro + fmManLr3.sFiltro + fmManLr3.sOrdem;
                         Open;

                    end;

                    Close;

                 end;

                 end
              else
                 EdObcNf1.SetFocus;

              end
           else
              EdObcNf1.SetFocus;

           end
        else
           EdObcNf1.SetFocus;

        end
     else
        fmsgErro('Observações informadas tem que ter o minimo de 15 caracteres.',EdObcNf1);

     end
  else
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdObcNf1);
end;

procedure TfmManCro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;
end;

end.
