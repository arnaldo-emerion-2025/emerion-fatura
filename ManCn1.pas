unit ManCn1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit, inifiles;

type
  TfmManCn1 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    EdObcNfs: TdxDBColorMemo;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    pn_erro: TPanel;
    memo_erro: TMemo;
    bt_erro: TButton;
    quSql: TwwQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_erroClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManCn1: TfmManCn1;

implementation

uses dxDemoUtils, Bbmensag, ManGDB, ManLr3, ConCn1_NFE,
  ManCn1_NFE, FileCtrl, Bbfuncao, Bbgeral;

{$R *.DFM}

procedure TfmManCn1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManCn1.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCn1.FormShow(Sender: TObject);
begin
  inherited;

  fmManLr3.CmpNfs.Edit;

  EdObcNfs.SetFocus;

end;

procedure TfmManCn1.bCancelarClick(Sender: TObject);
begin
  Close;
end;

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



procedure TfmManCn1.bConfirmarClick(Sender: TObject);
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
  vnumnota, vchave: string;
begin
  vnumnota := fmManLr3.CmpNfsNRONFS.AsString;
  vchave := fmManLr3.CmpNfsSEQNFE.asstring;

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
  ObcFat := EdObcNfs.Lines.Text;
  if Trim(ObcFat) <> '' then
  begin
    if Length(Trim(ObcFat)) >= 15 then
    begin
      sText := 'Deseja realmente cancelar a nota fiscal ?';
      if (Trim(sEstoque) <> '') or (Trim(sReceber) <> '') then sText := sText + #10 + ' ' + #10 + ' Ao confirmar ocorrer�o os seguintes lan�amentos:';
      sText := sText + #10 + ' ' + #10 + sEstoque + #10 + ' ' + #10 + sReceber;
      if fmsgConf(sText, 'E') = 'SIM' then
      begin
        if fmsgConf('Tem certeza que esta realmente cancelando a nota fiscal correta ?', 'E') = 'SIM' then
        begin
          sContinuar := 'N';
          try
            fmConCn1_NFE := TfmConCn1_NFE.Create(Self);
            fmConCn1_NFE.LR3 := True;
            fmConCn1_NFE.ShowModal;
            sContinuar := fmConCn1_NFE.sContinuar;
          finally
            FreeAndNil(fmConCn1_NFE);
          end;

          if sContinuar = 'S' then
          begin
            with fmManLr3.quSQL, SQL do
            begin
              Close;
              Text := ' Select GerEmp.SigUfe,' +
                '        GerEmp.Id_FinUfe,' +
                '        GerEmp.Id_FinCie ' +
                ' From GerEmp' +
                ' Where GerEmp.CodEmp = ' + QuotedStr(IntToStr(fmManLr3.CmpNfsCodEmp.Value));
              Open;
              UfeEmp := fLimpaAcentos(FieldbyName('SigUfe').AsString);
              Id_FinUfe := FieldbyName('Id_FinUfe').AsInteger;
              Id_FinCie := FieldbyName('Id_FinCie').AsInteger;
              UfeEmp := copy(Trim(UfeEmp), 1, 02) + fReplicate(' ', 02 - Length(copy(Trim(UfeEmp), 1, 02)));
            end; //with
            if Id_FinUfe > 0 then
            begin
              if Id_FinCie > 0 then
              begin
                Application.ProcessMessages;
                fmManCnF.Enabled := False;
                ArqRe1 := CaminhoLeitura + '\CNNOTA' + (VNumNota) + '.TXT';
                             //montar o arquivo aqui
                AssignFile(ArqEnv, ArqRe1);
                Rewrite(ArqEnv);
                vaux := CaminhoRetorno + '\' + (VNumNota) + ' - NF-e- ' + Vchave + '.xml';
                vaux := vaux + fReplicate(' ', 401 - length(vaux));
                             
                Writeln(ArqEnv, 'EMC' +
                  (vaux) +
                  obcfat);
                CloseFile(ArqEnv);

                             //ok Arquivo Criado
                FlgRej := 'N';
                FlgArq := 'N';
                Application.ProcessMessages;
              end;
              ProNFE := copy(Trim(fmManLr3.CmpNfsPRONFE.Value), 1, 015) + fReplicate(' ', 015 - Length(copy(Trim(fmmanlr3.CmpNfsPRONFE.Value), 1, 015)));
              ObcFat := AllTrim(fLimpaAcentos(ObcFat));
              ObcFat := copy(Trim(ObcFat), 1, 255) + fReplicate(' ', 255 - Length(copy(Trim(ObcFat), 1, 255)));
              FlgRej := 'N';
              FlgArq := 'N';
              with fmmanlr3.quSQL, SQL do
              begin
                Close;
                Text := ' Update CMPNFS Set FlgAtu = ' + QuotedStr('F') +
                  ' Where id_CMPNFS = ' + fmManLr3.cmpnfsid_cmpnfs.asstring;
                ExecSQL;
              end; // with qusql
              if fmManLr3.CmpNfsENVNFE.asstring = 'Sim' then
              begin
                                //chamar o Nfemerion aqui
                Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe CANCELA ' + (vnumnota), SW_HIDE);

                if FileExists(CaminhoRetorno + '\LogErro-CN' + (VNumNota) + '.txt') then
                begin

                  Application.ProcessMessages;

                  ArqRet := TStringList.Create;
                  ArqRet.LoadFromFile(CaminhoRetorno + '\LogErro-CN' + (VNumNota) + '.txt');
                  i := 1;
                  repeat
                    i := i + 1;
                  until not FileExists(CaminhoRetorno + '\LogErro-CN' + (VNumNota) + '.EP' + inttostr(i));

                  FreeAndNil(ArqRet);
                  pn_erro.visible := true;
                  pn_erro.bringtofront;
                  memo_erro.Font.Color := clBlack;
                  memo_erro.Lines.Clear;
                  memo_erro.Lines.LoadFromFile(CaminhoRetorno + '\LogErro-CN' + (VNumNota) + '.txt');
                  MoveFile(pchar(CaminhoRetorno + '\LogErro-CN' + (VNumNota) + '.txt'), pchar(CaminhoRetorno + '\LogErro-CN' + (VNumNota) + '.EP' + inttostr(i)));
                  fmManCnF.Enabled := True;

                end else

                  if FileExists(CaminhoRetorno + '\' + (VNumNota) + ' Cancelamento - NF-e- ' + Vchave + '.xml') then
                  begin

                    if fmmanlr3.CmpNfs.State = dsBrowse then fmmanlr3.CmpNfs.Edit;
                                     //
                    AssignFile(TArquivo, (CaminhoRetorno + '\' + (VNumNota) + ' Cancelamento - NF-e- ' + Vchave + '.xml'));
                    Reset(TArquivo);
                    ReadLn(TArquivo, TLinha);
                    repeat
                      Application.ProcessMessages;
                      if pos('<nProt>', TLinha) > 0 then
                        fmmanlr3.CmpNfsPrcNFE.Value := (copy(TLinha, pos('<nProt>', TLinha) + Length('<nProt>'), 15));

                      if pos('<dhRecbto>', TLinha) > 0 then
                        fmmanlr3.CmpNfsDtcNFE.Value := strtodate(copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>') + 8, 2) + '/' + copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>') + 5, 2) + '/' + copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>'), 4));

                      if pos('<dhRecbto>', TLinha) > 0 then
                        fmmanlr3.CmpNfsHrcNFE.Value := (copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>') + 11, 8));
                      ReadLn(TArquivo, TLinha);
                    until EOF(Tarquivo);
                    CloseFile(TArquivo);
                                     //

                    fmManLr3.cmpnfsdtecan.Value := Date;
                    fmManLr3.cmpnfsUsuCan.Value := GUsu_Id;
                    fmManLr3.CmpNfsSITNFS.Value := 'Cancelado';
                    fmManLr3.cmpnfsNFETHCANC.Value := 1;
                    fmManLr3.cmpnfsHreCan.Value := TimeToStr(Time);
                    fmManLr3.cmpnfsARQNFECANC.LoadFromFile(CaminhoRetorno + '\' + (VNumNota) + ' Cancelamento - NF-e- ' + Vchave + '.xml');


                    fmManLr3.cmpnfs.post;
                    fmManLr3.cmpnfs.ApplyUpdates; {Tenta aplicar as altera��es};
                    fmManLr3.cmpnfs.CommitUpdates;
                    fmManCnF.Enabled := True;
                    fmManCnF.close;

                  end;

              end
              else
              begin
//------------------------------------------------------
//                    aqui a inutilizacao
                AssignFile(ArqEnv, CaminhoLeitura + '\INUTILIZAR' + vnumnota + '.txt');
                Rewrite(ArqEnv);
                quSql.active := false;
                qusql.sql.text := 'Select cgcemp from GEREMP where codemp = ' + fmManLr3.CmpNfsCODEMP.asstring;
                qusql.Active := true;
                Writeln(ArqEnv, qusql.fieldbyname('cgcemp').asstring); //CGC
                Writeln(ArqEnv, 'NOTA CANCELADA ANTES DE ENVIAR AO SEFAZ'); //  Justificativa
                Writeln(ArqEnv, FORMATDATETIME('yyyy', now)); //  ANO
                Writeln(ArqEnv, '55'); //  MODELO
                Writeln(ArqEnv, '1'); //  SERIE
                Writeln(ArqEnv, fmManLr3.CmpNfsnronfs.asstring); //  NUMERO
                CloseFile(ArqEnv);
                Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe INUTIL ' + vnumnota, SW_HIDE);
                if FileExists(CaminhoRetorno + '\' + VNumNota + ' INUTILIZADA - NF-e.txt') then
                begin
//-----------------------------------------------------
                  if fmmanlr3.CmpNfs.State = dsBrowse then fmmanlr3.CmpNfs.Edit;
                  fmManLr3.cmpnfsdtecan.Value := Date;
                  fmManLr3.cmpnfsUsuCan.Value := GUsu_Id;
                  fmManLr3.CmpNfsSITNFS.Value := 'Cancelado';
                  fmManLr3.cmpnfsNFETHCANC.Value := 1;
                  fmManLr3.cmpnfsHreCan.Value := TimeToStr(Time);
                  fmManLr3.cmpnfs.post;
                  fmManLr3.cmpnfs.ApplyUpdates; {Tenta aplicar as altera��es};
                  fmManLr3.cmpnfs.CommitUpdates;
                  fmManCnF.Enabled := True;
                  fmManCnF.close;
//---------------------------------------------
                end
                else
                  if FileExists(CaminhoRetorno + '\LogErro-IN' + VNumNota + '.txt') then
                  begin

                    Application.ProcessMessages;

                    ArqRet := TStringList.Create;
                    ArqRet.LoadFromFile(CaminhoRetorno + '\LogErro-IN' + VNumNota + '.txt');
                    i := 1;
                    repeat
                      i := i + 1;
                    until not FileExists(CaminhoRetorno + '\LogErro-IN' + VNumNota + '.EP' + inttostr(i));

                    FreeAndNil(ArqRet);
                    pn_erro.visible := true;
                    pn_erro.bringtofront;
                    memo_erro.Font.Color := clBlack;
                    memo_erro.Lines.Clear;
                    memo_erro.Lines.LoadFromFile(CaminhoRetorno + '\LogErro-IN' + VNumNota + '.txt');
                    MoveFile(pchar(CaminhoRetorno + '\LogErro-IN' + VNumNota + '.txt'), pchar(CaminhoRetorno + '\LogErro-IN' + VNumNota + '.EP' + inttostr(i)));
                    fmManCnf.Enabled := True;
                  end;
//---------------------------------------------------

              end; // Apagar no Sefaz
       //                    end;
            end;
          end //  if sContinuar = 'S' then
          else
            EdObcNfs.SetFocus;
        end //           if fmsgConf('Tem certeza que esta realmente cancelando a nota fiscal correta ?','E') = 'SIM' then
        else
          EdObcNfs.SetFocus;
      end //        if fmsgConf(sText,'E') = 'SIM' then
      else
        EdObcNfs.SetFocus;
    end //     if Length(Trim(ObcFat)) >= 15 then
    else
      fmsgErro('Observa��es informadas tem que ter o minimo de 15 caracteres.', EdObcNfs);
  end //  if Trim(ObcFat) <> '' then
  else
    fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.', EdObcNfs);
end //complemento

procedure TfmManCn1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManLr3.CmpNfs.State <> dsBrowse then fmManLr3.CmpNfs.CancelUpdates;
end;

procedure TfmManCn1.bt_erroClick(Sender: TObject);
begin
  inherited;
  pn_erro.Visible := false;
  fmManCnf.Enabled := true;

end;

end.

