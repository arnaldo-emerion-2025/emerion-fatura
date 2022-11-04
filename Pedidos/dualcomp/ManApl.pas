unit ManApl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FileCtrl, StdCtrls, ExtCtrls, jpeg, Db, DBTables, Wwquery, AdvImage;

type
  TfmManApl = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Session1: TSession;
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sAlias : string;
  end;

var
  fmManApl: TfmManApl;

implementation

uses Bbfuncao, Bbmensag, ManGDB, ManBDE;

{$R *.DFM}

procedure TfmManApl.FormCreate(Sender: TObject);
var
AliasInfo : TStringList;
begin

  sAlias := 'N';

  Brush.Style := BsClear;

  {try

     AliasInfo := TStringList.Create;
    
     if not Session.IsAlias('Emerion_01') then begin

        AliasInfo.Clear;
        AliasInfo.Add('BLOBS TO CACHE=-1');
        AliasInfo.Add('SERVER NAME =192.168.10.10/3052:/rede/_wgdad/interbase/aurora.fdb');
        AliasInfo.Add('USER NAME =SYSDBA');
        Session.AddAlias('Emerion_01','INTRBASE',AliasInfo);

        Session.SaveConfigFile;

     end;

     if not Session.IsAlias('Emerion_02') then begin

        AliasInfo.Clear;
        AliasInfo.Add('BLOBS TO CACHE=-1');
        AliasInfo.Add('SERVER NAME =192.168.10.10/3053:/rede/_wgdad/interbase/gusmoes.fdb');
        AliasInfo.Add('USER NAME =SYSDBA');
        Session.AddAlias('Emerion_02','INTRBASE',AliasInfo);

        Session.SaveConfigFile;

     end;

  except

     FreeAndNil(AliasInfo);
     
  end;  }

  if not Session.IsAlias('ISade') then begin

     if fMsg('Caminho para os Arquivos não Configurados. Configurar?','S') then begin

        try

           fmManBDE := TfmManBDE.Create(Self);

           fmManBDE.ShowModal;

           sAlias := fmManBDE.sAlias;

        finally

           FreeAndNil(fmManBDE);

        end;

        if not Session.IsAlias('ISade') then begin

           Application.MessageBox('Caminho de Acesso aos Arquivos não Configurados,'+ #13 +'Acesso as Opções do Sistema não podem ser realizados.','Atenção', MB_OK + MB_ICONINFORMATION);

           Application.Terminate;

        end;

        end
     else
        begin

        Application.MessageBox('Caminho de Acesso aos Arquivos não Configurados,'+ #13 +'Acesso as Opções do Sistema não podem ser realizados.','Atenção', MB_OK + MB_ICONINFORMATION);

        Application.Terminate;

     end;

     end
  else
     sAlias := 'S';

  if sAlias = 'S' then begin

     if not DirectoryExists('C:\Emerion') then CreateDir('C:\Emerion');

     if not DirectoryExists('C:\Emerion\Cnab') then CreateDir('C:\Emerion\Cnab');

     if not DirectoryExists('C:\Emerion\Cnab\Itau') then CreateDir('C:\Emerion\Cnab\Itau');
     if not DirectoryExists('C:\Emerion\Cnab\Itau\Enviar') then CreateDir('C:\Emerion\Cnab\Itau\Enviar');
     if not DirectoryExists('C:\Emerion\Cnab\Itau\Receber') then CreateDir('C:\Emerion\Cnab\Itau\Receber');

     if not DirectoryExists('C:\Emerion\Cnab\Safra') then CreateDir('C:\Emerion\Cnab\Safra');
     if not DirectoryExists('C:\Emerion\Cnab\Safra\Enviar') then CreateDir('C:\Emerion\Cnab\Safra\Enviar');
     if not DirectoryExists('C:\Emerion\Cnab\Safra\Receber') then CreateDir('C:\Emerion\Cnab\Safra\Receber');

     if not DirectoryExists('C:\Emerion\Cnab\Sofisa') then CreateDir('C:\Emerion\Cnab\Sofisa');
     if not DirectoryExists('C:\Emerion\Cnab\Sofisa\Enviar') then CreateDir('C:\Emerion\Cnab\Sofisa\Enviar');
     if not DirectoryExists('C:\Emerion\Cnab\Sofisa\Receber') then CreateDir('C:\Emerion\Cnab\Sofisa\Receber');

     if not DirectoryExists('C:\Emerion\Cnab\Boston') then CreateDir('C:\Emerion\Cnab\Boston');
     if not DirectoryExists('C:\Emerion\Cnab\Boston\Enviar') then CreateDir('C:\Emerion\Cnab\Boston\Enviar');
     if not DirectoryExists('C:\Emerion\Cnab\Boston\Receber') then CreateDir('C:\Emerion\Cnab\Boston\Receber');

     if not DirectoryExists('C:\Emerion\Cnab\Bradesco') then CreateDir('C:\Emerion\Cnab\Bradesco');
     if not DirectoryExists('C:\Emerion\Cnab\Bradesco\Enviar') then CreateDir('C:\Emerion\Cnab\Bradesco\Enviar');
     if not DirectoryExists('C:\Emerion\Cnab\Bradesco\Receber') then CreateDir('C:\Emerion\Cnab\Bradesco\Receber');

     if not DirectoryExists('C:\Emerion\Cnab\Sudameris') then CreateDir('C:\Emerion\Cnab\Sudameris');
     if not DirectoryExists('C:\Emerion\Cnab\Sudameris\Enviar') then CreateDir('C:\Emerion\Cnab\Sudameris\Enviar');
     if not DirectoryExists('C:\Emerion\Cnab\Sudameris\Receber') then CreateDir('C:\Emerion\Cnab\Sudameris\Receber');

     if not DirectoryExists('C:\Emerion\Cnab\Rural') then CreateDir('C:\Emerion\Cnab\Rural');
     if not DirectoryExists('C:\Emerion\Cnab\Rural\Enviar') then CreateDir('C:\Emerion\Cnab\Rural\Enviar');
     if not DirectoryExists('C:\Emerion\Cnab\Rural\Receber') then CreateDir('C:\Emerion\Cnab\Rural\Receber');

     if not DirectoryExists('C:\Emerion\Cnab\BB') then CreateDir('C:\Emerion\Cnab\BB');
     if not DirectoryExists('C:\Emerion\Cnab\BB\Enviar') then CreateDir('C:\Emerion\Cnab\BB\Enviar');
     if not DirectoryExists('C:\Emerion\Cnab\BB\Receber') then CreateDir('C:\Emerion\Cnab\BB\Receber');

     if not DirectoryExists('C:\Emerion\Cnab\Mercantil') then CreateDir('C:\Emerion\Cnab\Mercantil');
     if not DirectoryExists('C:\Emerion\Cnab\Mercantil\Enviar') then CreateDir('C:\Emerion\Cnab\Mercantil\Enviar');
     if not DirectoryExists('C:\Emerion\Cnab\Mercantil\Receber') then CreateDir('C:\Emerion\Cnab\Mercantil\Receber');

     if not DirectoryExists('C:\Emerion\Cnab\BicBanco') then CreateDir('C:\Emerion\Cnab\BicBanco');
     if not DirectoryExists('C:\Emerion\Cnab\BicBanco\Enviar') then CreateDir('C:\Emerion\Cnab\BicBanco\Enviar');
     if not DirectoryExists('C:\Emerion\Cnab\BicBanco\Receber') then CreateDir('C:\Emerion\Cnab\BicBanco\Receber');

     if not DirectoryExists('C:\Emerion\Cnab\Fibra') then CreateDir('C:\Emerion\Cnab\Fibra');
     if not DirectoryExists('C:\Emerion\Cnab\Fibra\Enviar') then CreateDir('C:\Emerion\Cnab\Fibra\Enviar');
     if not DirectoryExists('C:\Emerion\Cnab\Fibra\Receber') then CreateDir('C:\Emerion\Cnab\Fibra\Receber');

     if not DirectoryExists('C:\Emerion\Cnab\NossaCaixa') then CreateDir('C:\Emerion\Cnab\NossaCaixa');
     if not DirectoryExists('C:\Emerion\Cnab\NossaCaixa\Enviar') then CreateDir('C:\Emerion\Cnab\NossaCaixa\Enviar');
     if not DirectoryExists('C:\Emerion\Cnab\NossaCaixa\Receber') then CreateDir('C:\Emerion\Cnab\NossaCaixa\Receber');

     if not DirectoryExists('C:\Emerion\Cnab\Real') then CreateDir('C:\Emerion\Cnab\Real');
     if not DirectoryExists('C:\Emerion\Cnab\Real\Enviar') then CreateDir('C:\Emerion\Cnab\Real\Enviar');
     if not DirectoryExists('C:\Emerion\Cnab\Real\Receber') then CreateDir('C:\Emerion\Cnab\Real\Receber');

     try

       Image1.Picture.LoadFromFile(GEntrar);

     except

       FreeAndNil(Image1);

     end;

     end
  else
     Label1.Caption := '';
end;

end.
