program ECodBar;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  uCodBar in 'uCodBar.pas' {frmPrincipal},
  ManGDB in '..\..\..\..\..\..\_WGLIB\padrao\ManGDB.pas' {fmManGDB: TDataModule};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfmManGDB, fmManGDB);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
