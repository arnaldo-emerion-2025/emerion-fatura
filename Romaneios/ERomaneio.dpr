program ERomaneio;

uses
  Forms,
  Windows,
  Dialogs,
  SysUtils,
  ManPri in 'ManPri.pas' {fmManPri},
  FMensag in '..\..\..\..\..\_WGLIB\padrao\FMensag.pas' {fmMensag},
  Fpadrao in '..\..\..\..\..\_WGLIB\padrao\Fpadrao.pas' {fmPadrao},
  FShowpadrao in '..\..\..\..\..\_WGLIB\padrao\FShowpadrao.pas' {fmShowPadrao},
  ManAce in '..\..\..\..\..\_WGLIB\padrao\ManAce.pas' {fmManAce},
  ManApl in '..\..\..\..\..\_WGLIB\padrao\ManApl.pas' {fmManApl},
  ManBDE in '..\..\..\..\..\_WGLIB\padrao\ManBDE.pas' {fmManBDE},
  ManDef in '..\..\..\..\..\_WGLIB\padrao\ManDef.pas' {fmManDef},
  ManGDB in '..\..\..\..\..\_WGLIB\padrao\ManGDB.pas' {fmManGDB: TDataModule},
  ManInf in '..\..\..\..\..\_WGLIB\padrao\ManInf.pas' {fmManInf},
  ManLog in '..\..\..\..\..\_WGLIB\padrao\ManLog.pas' {fmManLog},
  ManSen in '..\..\..\..\..\_WGLIB\padrao\ManSen.pas' {fmManSen},
  ManTSe in '..\..\..\..\..\_WGLIB\padrao\ManTse.pas' {fmManTSe},
  ManTUs in '..\..\..\..\..\_WGLIB\padrao\ManTUs.pas' {fmManTUs},
  SadReg in '..\..\..\..\..\_WGLIB\padrao\SadReg.pas' {fmSadReg},
  VerUsu in '..\..\..\..\..\_WGLIB\padrao\VerUsu.pas' {fmVerUsu},
  ManLp2 in 'ManLp2.pas' {fmManLp2},
  ManLp3 in 'ManLp3.pas' {fmManLp3},
  ManLp4 in 'ManLp4.pas' {fmManLp4},
  ManLpe in 'ManLpe.pas' {fmManLpe},
  ManEpe in 'ManEpe.pas' {fmManEpe},
  ManEp1 in 'ManEp1.pas' {fmManEp1},
  ManEp2 in 'ManEp2.pas' {fmManEp2},
  ManCpe in 'ManCpe.pas' {fmManCpe},
  ManDep in 'ManDep.pas' {fmManDep},
  ManDe1 in 'ManDe1.pas' {fmManDe1},
  ManDe2 in 'ManDe2.pas' {fmManDe2},
  PsqLib in '..\..\Vmp\Nota Fiscal\PsqLib.pas' {fmPsqLib},
  RomR02 in 'RomR02.pas' {fmRomR02},
  RomR01 in 'RomR01.pas' {fmRomR01},
  PsqCmp in '..\..\..\Pedidos\DualComp\PsqCmp.pas' {fmPsqCmp},
  PsqRes in '..\..\..\Pedidos\DualComp\PsqRes.pas' {fmPsqRes},
  ManCdp in '..\Nota Fiscal\ManCdp.pas' {fmManCdp};

{$R *.RES}
  var
  sAlias    : string;
  HprevHist : HWND;

begin

  Application.Initialize;

  if not FileExists('C:\Windows\Emerion.prg') then
     HprevHist := FindWindow(Nil,'Emerion Romaneios')
  else
     HprevHist := 0;

  if HprevHist = 0 then begin

     Application.Title := 'Emerion Romaneios';

     try

        fmManApl := TFmManApl.Create(Application);

        fmManApl.Show;
        fmManApl.Refresh;

        sAlias := fmManApl.sAlias;

     finally

        FreeAndNil(fmManApl);

     end;

     if sAlias = 'S' then begin

        Application.CreateForm(TfmManGDB, fmManGDB);
  Application.CreateForm(TfmManPri, fmManPri);
  end;

     Application.Run;

     end
  else
     MessageDlg('Existe uma Cópia do Aplicativo em Execução no Momento.', mtInformation, [mbOK], 0);
end.
