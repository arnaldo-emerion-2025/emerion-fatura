unit ManApl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FileCtrl, StdCtrls, ExtCtrls, Db, DBTables, Wwquery, AdvImage;

type
  TfmManApl = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sAlias: string;
  end;

var
  fmManApl: TfmManApl;

implementation

uses Bbfuncao, Bbmensag, ManGDB, ManBDE;

{$R *.DFM}

procedure TfmManApl.FormCreate(Sender: TObject);
begin

  sAlias := 'N';

  Brush.Style := BsClear;

  if not Session.IsAlias('ISade') then
  begin

    if fMsg('Caminho para os Arquivos n�o Configurados. Configurar?', 'O') then
    begin

      try

        fmManBDE := TfmManBDE.Create(Self);

        fmManBDE.ShowModal;

        sAlias := fmManBDE.sAlias;

      finally

        FreeAndNil(fmManBDE);

      end;

      if not Session.IsAlias('ISade') then
      begin

        Application.MessageBox('Caminho de Acesso aos Arquivos n�o Configurados,' + #13 + 'Acesso as Op��es do Sistema n�o podem ser realizados.', 'Aten��o',
          MB_OK + MB_ICONINFORMATION);

        Application.Terminate;

      end;

    end
    else
    begin

      Application.MessageBox('Caminho de Acesso aos Arquivos n�o Configurados,' + #13 + 'Acesso as Op��es do Sistema n�o podem ser realizados.', 'Aten��o',
        MB_OK + MB_ICONINFORMATION);

      Application.Terminate;

    end;

  end
  else
    sAlias := 'S';

  if sAlias = 'S' then
  begin

    if not DirectoryExists('C:\Emerion') then
      CreateDir('C:\Emerion');

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
