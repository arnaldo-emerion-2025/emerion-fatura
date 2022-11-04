unit ManGDB;

interface

uses
   Windows, Dialogs, SysUtils, Classes, Controls, Forms, DBTables, Db, wwstorep,
   Bbacesso, FileCtrl;

type
   TfmManGDB = class(TDataModule)
      dbMain: TDatabase;
      procedure DataModuleCreate(Sender: TObject);
      procedure dbMainBeforeConnect(Sender: TObject);
   private
      {Private declarations}
   public
      {Public declarations}
   end;

var
   fmManGDB: TfmManGDB;
   gPsqNumPed: string;
   GFlgImp: string;
   GEmail: string;
   GAssunto: string;
   GDirAce: string; {Caminho para Acesso ao Banco de Dados}
   GDirUsu: string; {Caminho para Acesso ao Banco de Dados}
   GApeAce: string; {Apelido do Acesso Realizado}
   GFlgCod: string;
   GArquivo: string;
   GLibAce: string;
   GDataLimite: TDateTime; {Data Limite para Utilização do Software}
   GParLib: string;
   GFprm: string; {Permissão do usuário ativo na transação selecionada}
   GExiFor: string;
   GExiCli: string;
   GExiCom: string;
   GDlog: TDateTime; {Data / hora de login}
   GModu: TModulos; {Módulos habilitados para uso}
   GUsu_Id: integer; {Usuário ativo}
   GsCodCli: integer;
   GUsu_Sn: string; {Senha do Usuario ativo}
   GGus_Id: integer; {Grupo de Usuario ativo}
   GCodCli: integer;
   GSup_Id: integer;
   GCodUsu: string; {Usuário ativo}
   GFonUsu: string;
   GFaxUsu: string;
   GFlgGer: string;
   GuIdHal: String;
   GEmp_Id: integer; {Empresa ativa}
   GUsu_Nm: string; {login do Usuário Ativo}
   GUsu_Ema: string; {Email do Usuario}
   GTemp: string[40]; {Diretório para gravação de arquivos temporários}
   GCtr_bai, Tecla: string; {Controle da baixa}
   GCgcEmp, GInsEmp, GApeEmp, GRazEmp, GEndEmp, GCidEmp, GUfeEmp, GRefEmp, GFonEmp, GFaxEmp, GCepEmp, GWebEmp, GEmaEmp: string;
   GId_FinUfe: integer;
   GId_FinCie: string;
   GnNavig: Integer; {Quantidade navigator}
   GTmpLog: Integer; {Tempo limite para inatividade do Sistema}
   GTmpVer: Integer; {Tempo limite para inatividade do Sistema}
   GExiNot: string; {Se o Usuario esta ou nao habilitado a Receber Mensagens de Notificações em Projeto}
   GDSNavig: string; {Primeiro navigator - Data source correspondente}
   GVerUsuario: integer; {Verificar se o formulario de Autenticação de Usuario ja esta aberto}
   GCodVen_Id: integer; {Se Usuário Logado Possui Código de Vendedor Ativo}
   GCodRep_Id: integer; {Se Usuário Logado Possui Código de Preposto Ativo}
   GCodAtd_Id: integer; {Se Usuário Logado Possui Código de Atendente Ativo}
   GNomVen_Id: string; {Nome do Vendedor Ativo}
   GNomRep_Id: string; {Nome do Preposto Ativo}
   GCodClp_Id: string; {Tipo de Linha de Produto que poder trabalhar o Vendedor}
   GNomAtd_Id: string; {Nome do Atendente Ativo}
   GQtdReg: integer; {Quantidade de Registros que o Software pode Inserir por Tabela}
   GModAce: string; {Modulo que esta Sendo Acessado}
   GFlgAce: string; {Flag se o Usuario tem Acesso Restrito as Empresas Filiais}
   GEmpLog: integer;
   GBaseName: string;
   RetornoImpressora: string;
   Nome_ArqReq1, Nome_ArqReq2, Nome_ArqRes1, Nome_ArqRes2: string;

   Gcx_Emp, Gcx_Cai, Gcx_Ope, Gcx_Sup: integer; {Informações de Usuários Operadores de Caixas}

   GError: string;
   sConectar: string;

   GId_FinPai: integer;

   Gcx_Id_LojCai: integer;
   Gcx_Id_LojOpe: integer;
   Gcx_Id_LojAbe: integer;

   Gcx_SeqAbe: integer; {Sequencia de Abertura do Caixa}
   Gcx_DteAbe: TDateTime; {Data de Abertura do Caixa}

const

   GEntrar = 'c:\Emerion\splash.bmp';
   GAnimar = 'c:\Emerion\animar.gif';
   GLogar = 'c:\Emerion\login.bmp';
   GImprimir = 'c:\Emerion\print.bmp';
   GDatabaseName = 'ISade'; {Database de conexão}
   GMensagem = 'Atenção. Ocorreu um problema em relação ao licenciamento do sistema. Por favor entre em contato com o suporte tecnico.';
   GMensagem_0001 = 'Atenção. Ocorreu um problema em relação ao licenciamento do sistema. Por favor entre em contato com o suporte tecnico.';
   GMensagem_0002 = 'Usuario não possui acesso a opcão.';

implementation

uses Bbmensag;

{$R *.DFM}

procedure TfmManGDB.DataModuleCreate(Sender: TObject);
var
   i: Integer;
   NomDir: string;
   NomArq: string;
begin
   GuIdHal := 'ibsade2002';
   if 1 = 2 then begin

         for i := 0 to 15 do begin

               if i = 0 then
                  NomDir := 'PRIV\'
               else
                  NomDir := 'PRIV' + IntToStr(i) + '\';

               if DirectoryExists(ExtractFilePath(ParamStr(0)) + NomDir) then begin

                     NomArq := 'Command.com /c Del ' + ExtractFilePath(Application.ExeName) + NomDir + '*.tmp';

                     WinExec(PChar(NomArq), 0);

                     NomArq := 'Command.com /c Del ' + ExtractFilePath(Application.ExeName) + NomDir + '*.DB';

                     WinExec(PChar(NomArq), 0);

                     NomArq := 'Command.com /c Del ' + ExtractFilePath(Application.ExeName) + NomDir + '*.MB';

                     WinExec(PChar(NomArq), 0);

                  end;
            end;

         if DirectoryExists(ExtractFilePath(ParamStr(0)) + 'PRIV') or CreateDir(ExtractFilePath(ParamStr(0)) + 'PRIV') then begin

               for i := 0 to 15 do begin

                     try

                        if i = 0 then begin

                              Session.PrivateDir := ExtractFilePath(ParamStr(0)) + 'PRIV';

                              Exit;

                           end
                        else
                           begin

                              if DirectoryExists(ExtractFilePath(ParamStr(0)) + 'PRIV' + IntToStr(i)) or CreateDir(ExtractFilePath(ParamStr(0)) + 'PRIV' + IntToStr(i)) then
                                 Session.PrivateDir := ExtractFilePath(ParamStr(0)) + 'PRIV' + IntToStr(i);

                              Exit;

                           end;

                     except


                     end;
                  end;

            end
         else
            ShowMessage('Diretorio Privado não Pode ser Criado ' + ExtractFilePath(ParamStr(0)) + 'PRIV');

      end;
end;

procedure TfmManGDB.dbMainBeforeConnect(Sender: TObject);
var
   ApeLin: string;
   ApeAce: string;
   DirAce: string;
   DirUsu: string;
   LinAce: string;
   SeqLin: integer;
   ArqTxt: TStringList;
begin

   if Trim(sConectar) = '' then begin

         sConectar := 'S';

         ApeLin := UpperCase(ParamStr(1));

         if fileExists(ExtractFilePath(Application.ExeName) + 'login.txt') then begin

               ArqTxt := TStringList.Create;

               ArqTxt.LoadFromFile(ExtractFilePath(Application.ExeName) + 'login.txt');

               SeqLin := 0;

               while SeqLin <= (ArqTxt.Count - 1) do begin

                     LinAce := UpperCase(ArqTxt[SeqLin]);

                     if pos(ApeLin, LinAce) > 0 then begin

                           DirAce := copy(LinAce, pos('##', LinAce) + 2, 100);

                           DirAce := copy(DirAce, 1, pos('@@', DirAce) - 1);

                           ApeAce := copy(LinAce, pos('@@', LinAce) + 2, 100);

                           if pos('@@', ApeAce) > 0 then
                              ApeAce := copy(ApeAce, 1, pos('@@', ApeAce) - 1);

                        end;

                     Inc(SeqLin);

                  end;

               GDirAce := LowerCase(Trim(DirAce));

               SeqLin := 0;

               while SeqLin <= (ArqTxt.Count - 1) do begin

                     LinAce := UpperCase(ArqTxt[SeqLin]);

                     if pos(ApeLin, LinAce) > 0 then begin

                           DirUsu := copy(LinAce, pos('***', LinAce) + 3, 100);

                           DirUsu := copy(DirUsu, 1, pos('***', DirUsu) - 1);

                        end;

                     Inc(SeqLin);

                  end;

               GDirUsu := LowerCase(DirUsu);

               if Trim(ApeAce) <> '' then
                  GApeAce := ' [ ' + ApeAce + ' ] '
               else
                  GApeAce := '';

               dbMain.Params.Clear;

               dbMain.Params.Add('BLOBS TO CACHE=-1');

               if Trim(GDirAce) <> '' then dbMain.Params.Add('SERVER NAME=' + GDirAce);

               dbMain.Params.Add('USER NAME=SYSDBA');
               dbMain.Params.Add('PASSWORD=' + GuIdHal);

               FreeAndNil(ArqTxt);

            end;
      end;
end;

end.

