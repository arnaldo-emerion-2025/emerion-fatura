unit ManGDB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, wwstorep, Bbacesso, Psock;

type
  TfmManGDB = class(TDataModule)
    dbMain: TDatabase;
    dbEmerion2: TDatabase;
    dbEmerion1: TDatabase;
    procedure DataModuleCreate(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManGDB: TfmManGDB;
  GFlgImp : string;
  GDirAce: string;         {Caminho para Acesso ao Banco de Dados}
  GApeAce: string;         {Apelido do Acesso Realizado}
  GFprm: string;           {Permissão do usuário ativo na transação selecionada}
  GDlog: TDateTime;        {Data / hora de login}
  GModu: TModulos;         {Módulos habilitados para uso}
  GEmail: string;
  GAssunto: string;
  GLibAce: string;
  GDataLimite: TDateTime;  {Data Limite para Utilização do Software}
  GArquivo: string;
  GUsu_Id: integer;        {Usuário ativo}
  GUsu_Sn: string;         {Senha do Usuario ativo}
  GGus_Id: integer;        {Grupo de Usuario ativo}
  GCodCli : integer;
  GSup_Id : integer;
  GParLib: string;
  GFlgCod: string;
  GExiNot: string;
  GExiFor: string;
  GExiCli: string;    
  GCodUsu: string;         {Usuário ativo}
  GFonUsu: string;
  GFaxUsu: string;
  GFlgGer: string;
  GParamStr: string;  
  GEmp_Id: integer;        {Empresa ativa}
  GsCodCli: integer;       {Cliente}
  GUsu_Nm : string;        {login do Usuário Ativo}
  GUsu_Ema : string;       {Email do Usuario}
  GTemp: string[40];       {Diretório para gravação de arquivos temporários}
  GCtr_bai,Tecla : string; {Controle da baixa}
  GCgcEmp,GInsEmp,GApeEmp,GRazEmp,GEndEmp,GCidEmp,GUfeEmp,GCepEmp,GRefEmp,GFonEmp,GFaxEmp,GWebEmp,GEmaEmp : string;
  GnNavig : Integer;       {Quantidade navigator}
  GTmpLog : Integer;       {Tempo limite para inatividade do Sistema}
  GDSNavig : string;       {Primeiro navigator - Data source correspondente}
  GVerUsuario : integer;   {Verificar se o formulario de Autenticação de Usuario ja esta aberto}
  GCodVen_Id : integer;    {Se Usuário Logado Possui Código de Vendedor Ativo}
  GCodRep_Id : integer;    {Se Usuário Logado Possui Código de Preposto Ativo}
  GCodAtd_Id : integer;    {Se Usuário Logado Possui Código de Atendente Ativo}
  GNomVen_Id : string;     {Nome do Vendedor Ativo}
  GNomRep_Id : string;     {Nome do Preposto Ativo}
  GCodClp_Id : string;     {Tipo de Linha de Produto que poder trabalhar o Vendedor}  
  GNomAtd_Id : string;     {Nome do Atendente Ativo}    
  GQtdReg : integer;       {Quantidade de Registros que o Software pode Inserir por Tabela}
  GModAce : string;        {Modulo que esta Sendo Acessado}
  GFlgAce : string;        {Flag se o Usuario tem Acesso Restrito as Empresas Filiais}
  GEmpLog : integer;
  GId_FinPai: integer;
  GBaseName : string;
  RetornoImpressora : string;
  Nome_ArqReq1,Nome_ArqReq2,Nome_ArqRes1,Nome_ArqRes2 : string;
  
  Gcx_Emp,Gcx_Cai,Gcx_Ope,Gcx_Sup : integer; {Informações de Usuários Operadores de Caixas}

  Gcx_SeqAbe : integer;    {Sequencia de Abertura do Caixa}
  Gcx_DteAbe : TDateTime;  {Data de Abertura do Caixa}

const

  GEntrar   = 'c:\Emerion\splash.bmp';
  GAnimar   = 'c:\Emerion\animar.gif';
  GLogar    = 'c:\Emerion\login.bmp';
  GImprimir = 'c:\Emerion\print.bmp';
  GDatabaseName = 'ISade'; {Database de conexão}

  { Mensagens Padrão }
  GMensagem_0001 = 'Atenção. Ocorreu um problema em relação ao licenciamento do sistema. Por favor entre em contato com o suporte tecnico.';
  GMensagem_0002 = 'Usuario não possui acesso a opcão.';

  GMensagem = 'Atenção. Ocorreu um problema em relação ao licenciamento do sistema. Por favor entre em contato com o suporte tecnico.';

implementation

uses Bbmensag;

{$R *.DFM}

procedure TfmManGDB.DataModuleCreate(Sender: TObject);
var
ApeLin : string;
ApeAce : string;
DirAce : string;
LinAce : string;
SeqLin : integer;
ArqTxt : TStringList;
begin

  GParamStr := ParamStr(1);

  ApeLin := UpperCase(GParamStr);

  if fileExists('C:\Emerion\Login.txt') then begin

     ArqTxt := TStringList.Create;
     ArqTxt.LoadFromFile('C:\Emerion\Login.txt');

     SeqLin := 0;

     while SeqLin <= (ArqTxt.Count - 1) do begin

           LinAce := UpperCase(ArqTxt[SeqLin]);

           if pos(ApeLin,LinAce) > 0  then begin

              DirAce := copy(LinAce,pos('##',LinAce)+2,100);

              DirAce := copy(DirAce,1,pos('@@',DirAce)-1);

              ApeAce := copy(LinAce,pos('@@',LinAce)+2,100);

              if pos('@@',ApeAce) > 0 then
                 ApeAce := copy(ApeAce,1,pos('@@',ApeAce)-1);
              
           end;

           Inc(SeqLin);

     end;

     FreeAndNil(ArqTxt);
     
     GDirAce := LowerCase( DirAce );

     if Trim( ApeAce ) <> '' then
        GApeAce := ' [ '+ ApeAce +' ] '
     else
        GApeAce := '';   

     with dbMain do

          try

             Connected := False;
             Params.Clear;

             Params.Add('BLOBS TO CACHE=-1');

             if Trim( GDirAce ) <> '' then Params.Add('SERVER NAME='+GDirAce);

             Params.Add('USER NAME=SYSDBA');
             Params.Add('PASSWORD=ibsade2002');
             Connected := True;

          except
             on E: Exception do begin
             fMsg(E.Message,'E');
             Application.Terminate;
          end;
     end;

     end
  else
     dbMain.Connected := True;

end;

end.
