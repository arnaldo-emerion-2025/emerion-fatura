program ECompras;

uses
  Forms,
  Windows,
  Dialogs,
  SysUtils,
  ManGDB in 'ManGDB.pas' {fmManGDB: TDataModule},
  Fpadrao in '..\..\..\..\_WGLIB\padrao\Fpadrao.pas' {fmPadrao},
  FMensag in '..\..\..\..\_WGLIB\padrao\FMensag.pas' {fmMensag},
  ManPco in 'ManPco.pas' {fmManPco},
  ManPar in 'ManPar.pas' {fmManPar},
  Fpreview in '..\..\..\..\_WGLIB\padrao\Fpreview.pas' {fmPreview},
  FShowpadrao in '..\..\..\..\_WGLIB\padrao\FShowpadrao.pas' {fmShowPadrao},
  ManPfo in 'ManPfo.pas' {fmManPfo},
  ManIro in 'ManIro.pas' {fmManIro},
  ManLge in 'ManLge.pas' {fmManLge},
  ManPra in 'ManPra.pas' {fmManPra},
  ManPfa in 'ManPfa.pas' {fmManPfa},
  ManPed in 'ManPed.pas' {fmManPed},
  CmpC07 in 'CmpC07.pas' {fmCmpC07},
  CmpR01 in 'CmpR01.pas' {fmCmpR01},
  CmpR02 in 'CmpR02.pas' {fmCmpR02},
  CmpR03 in 'CmpR03.pas' {fmCmpR03},
  CmpR04 in 'CmpR04.pas' {fmCmpR04},
  CmpR05 in 'CmpR05.pas' {fmCmpR05},
  CmpR17 in 'CmpR17.pas' {fmCmpR17},
  CmpR10 in 'CmpR10.pas' {fmCmpR10},
  CmpR11 in 'CmpR11.pas' {fmCmpR11},
  CmpR12 in 'CmpR12.pas' {fmCmpR12},
  CmpR13 in 'CmpR13.pas' {fmCmpR13},
  CmpR14 in 'CmpR14.pas' {fmCmpR14},
  CmpR18 in 'CmpR18.pas' {fmCmpR18},
  CmpR16 in 'CmpR16.pas' {fmCmpR16},
  ManAco in 'ManAco.pas' {fmManAco},
  ManCge in 'ManCge.pas' {fmManCge},
  ManCmp in 'ManCmp.pas' {fmManCmp},
  ManCnf in 'ManCnf.pas' {fmManCnf},
  ManDsc in 'ManDsc.pas' {fmManDsc},
  ManEn1 in 'ManEn1.pas' {fmManEn1},
  ManSin in 'ManSin.pas' {fmManSin},
  ManEn3 in 'ManEn3.pas' {fmManEn3},
  ManEn4 in 'ManEn4.pas' {fmManEn4},
  ManEn5 in 'ManEn5.pas' {fmManEn5},
  ManEn6 in 'ManEn6.pas' {fmManEn6},
  ManEnt in 'ManEnt.pas' {fmManEnt},
  ManEpe in 'ManEpe.pas' {fmManEpe},
  ManFor in 'ManFor.pas' {fmManFor},
  ManFpe in 'ManFpe.pas' {fmManFpe},
  ManPe1 in 'ManPe1.pas' {fmManPe1},
  ManPe2 in 'ManPe2.pas' {fmManPe2},
  ManPe3 in 'ManPe3.pas' {fmManPe3},
  ManPe4 in 'ManPe4.pas' {fmManPe4},
  ManPe5 in 'ManPe5.pas' {fmManPe5},
  ManPe6 in 'ManPe6.pas' {fmManPe6},
  ManRma in 'ManRma.pas' {fmManRma},
  ManRo1 in 'ManRo1.pas' {fmManRo1},
  ManRo2 in 'ManRo2.pas' {fmManRo2},
  ManRom in 'ManRom.pas' {fmManRom},
  ManSen in 'ManSen.pas' {fmManSen},
  ManSro in 'ManSro.pas' {fmManSro},
  PsqIcm in 'PsqIcm.pas' {fmPsqIcm},
  PsqMfp in 'PsqMfp.pas' {fmPsqMfp},
  PsqOce in 'PsqOce.pas' {fmPsqOce},
  PsqOcp in 'PsqOcp.pas' {fmPsqOcp},
  PsqPco in 'PsqPco.pas' {fmPsqPco},
  RelPfo in 'RelPfo.pas' {fmRelPfo},
  PsqCmp in '..\..\Pedidos\DualComp\PsqCmp.pas' {fmPsqCmp},
  PsqRes in '..\..\Pedidos\DualComp\PsqRes.pas' {fmPsqRes},
  EstR06 in '..\..\Estoque\DualComp\EstR06.pas' {fmEstR06},
  AuxPro in '..\..\Estoque\DualComp\AuxPro.pas' {fmAuxPro},
  AuxCod in '..\..\Estoque\DualComp\AuxCod.pas' {fmAuxCod},
  CmpR08 in 'CmpR08.pas' {fmCmpR08},
  ConClf in '..\..\Estoque\DualComp\ConClf.pas' {fmConClf},
  PsqEs2 in 'PsqEs2.pas' {fmPsqEs2},
  ManBar in '..\..\Estoque\DualComp\ManBar.pas' {fmManBar},
  EstR03 in '..\..\Estoque\Emerion\EstR03.pas' {fmEstR03},
  PsqEs3 in 'PsqEs3.pas' {fmPsqEs3},
  ManEn8 in 'ManEn8.pas' {fmManEn8},
  ManApl in '..\..\..\..\_WGLIB\padrao\ManApl.pas' {fmManApl},
  EstR04 in '..\..\Estoque\Emerion\EstR04.pas' {fmEstR04},
  ManEn2 in 'ManEn2.pas' {fmManEn2},
  ManEn7 in 'ManEn7.pas' {fmManEn7},
  CmpR07 in 'CmpR07.pas' {fmCmpR07},
  ManPrc in 'ManPrc.pas' {fmManPrc},
  CmpR15 in 'CmpR15.pas' {fmCmpR15},
  ManRo4 in 'ManRo4.pas' {fmManRo4},
  ManFro in 'ManFro.pas' {fmManFro},
  PsqCro in 'PsqCro.pas' {fmPsqCro},
  PsqFro in 'PsqFro.pas' {fmPsqFro},
  PsqHre in '..\..\Pedidos\DualComp\PsqHre.pas' {fmPsqHre},
  ManGFo in '..\..\Financeiro\Emerion\ManGFo.pas' {fmManGFo},
  ManApr in 'ManApr.pas' {fmManApr},
  ManCol in '..\..\Estoque\Emerion\ManCol.pas' {fmManCol},
  ManCen in 'ManCen.pas' {fmManCen},
  ManObc in 'ManObc.pas' {fmManObc},
  PsqCen in 'PsqCen.pas' {fmPsqCen},
  ManPri in 'ManPri.pas' {fmManPri},
  CmpR20 in '..\Comwatts\CmpR20.pas' {fmCmpR20},
  ManLro in 'ManLro.pas' {fmManLro},
  ManLr2 in 'ManLr2.pas' {fmManLr2},
  ManLr3 in 'ManLr3.pas' {fmManLr3},
  ManRo3 in 'ManRo3.pas' {fmManRo3},
  ManPro in '..\..\Estoque\DualComp\ManPro.pas' {fmManPro};

{$R *.RES}
  var
  sAlias    : string;
  HprevHist : HWND;

begin

  Application.Initialize;

  if not FileExists('C:\Windows\Emerion.prg') then
     HprevHist := FindWindow(Nil,'Emerion Compras')
  else
     HprevHist := 0;

  if HprevHist = 0 then begin

     Application.Title := 'Emerion Compras';

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

