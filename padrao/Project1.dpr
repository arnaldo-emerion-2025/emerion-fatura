program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Fpadrao in 'Fpadrao.pas' {fmPadrao};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfmPadrao, fmPadrao);
  Application.Run;
end.
