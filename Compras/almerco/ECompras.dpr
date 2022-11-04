program ECompras;

uses
  Forms,
  Windows,
  Dialogs,
  SysUtils,
  ManGDB in '..\..\..\..\_WGLIB\padrao\ManGDB.pas' {fmManGDB: TDataModule},
  Fpadrao in '..\..\..\..\_WGLIB\padrao\Fpadrao.pas' {fmPadrao},
  FMensag in '..\..\..\..\_WGLIB\padrao\FMensag.pas' {fmMensag},
  ManPco in 'ManPco.pas' {fmManPco},
  ManPar in '..\Comwatts\ManPar.pas' {fmManPar},
  Fpreview in '..\..\..\..\_WGLIB\padrao\Fpreview.pas' {fmPreview},
  FShowpadrao in '..\..\..\..\_WGLIB\padrao\FShowpadrao.pas' {fmShowPadrao},
  ManSco in 'ManSco.pas' {fmManSco},
  ManLge in 'ManLge.pas' {fmManLge},
  ManPra in 'ManPra.pas' {fmManPra},
  ManPed in 'ManPed.pas' {fmManPed},
  CmpC07 in '..\Comwatts\CmpC07.pas' {fmCmpC07},
  CmpR01 in 'CmpR01.pas' {fmCmpR01},
  CmpR03 in 'CmpR03.pas' {fmCmpR03},
  CmpR03c in '..\Comwatts\CmpR03c.pas' {fmCmpR03c},
  CmpR04 in 'CmpR04.pas' {fmCmpR04},
  CmpR05 in 'CmpR05.pas' {fmCmpR05},
  CmpR17 in 'CmpR17.pas' {fmCmpR17},
  CmpR10 in 'CmpR10.pas' {fmCmpR10},
  CmpR11 in 'CmpR11.pas' {fmCmpR11},
  CmpR12 in 'CmpR12.pas' {fmCmpR12},
  CmpR13 in 'CmpR13.pas' {fmCmpR13},
  CmpR14 in '..\Comwatts\CmpR14.pas' {fmCmpR14},
  CmpR18 in '..\Comwatts\CmpR18.pas' {fmCmpR18},
  CmpR16 in '..\Comwatts\CmpR16.pas' {fmCmpR16},
  ColR04 in '..\Comwatts\ColR04.pas' {fmColR04},
  ColR06 in '..\Comwatts\ColR06.pas' {fmColR06},
  ManAco in '..\Comwatts\ManAco.pas' {fmManAco},
  ManCmp in '..\Comwatts\ManCmp.pas' {fmManCmp},
  ManDsc in '..\Comwatts\ManDsc.pas' {fmManDsc},
  ManRo8 in 'ManRo8.pas' {fmManRo8},
  ManSin in 'ManSin.pas' {fmManSin},
  ManEn3 in 'ManEn3.pas' {fmManEn3},
  ManEn4 in 'ManEn4.pas' {fmManEn4},
  ManEn9 in 'ManEn9.pas' {fmManEn9},
  ManIn2 in 'ManIn2.pas' {fmManIn2},
  ManEnt in 'ManEnt.pas' {fmManEnt},
  ManEpe in 'ManEpe.pas' {fmManEpe},
  ManFpe in 'ManFpe.pas' {fmManFpe},
  ManPe1 in 'ManPe1.pas' {fmManPe1},
  ManPe2 in 'ManPe2.pas' {fmManPe2},
  ManPe3 in 'ManPe3.pas' {fmManPe3},
  ManPe5 in 'ManPe5.pas' {fmManPe5},
  ManPe6 in 'ManPe6.pas' {fmManPe6},
  ManRma in 'ManRma.pas' {fmManRma},
  ManRo1 in 'ManRo1.pas' {fmManRo1},
  ManRom in 'ManRom.pas' {fmManRom},
  ManSen in '..\Comwatts\ManSen.pas' {fmManSen},
  ManSro in 'ManSro.pas' {fmManSro},
  PsqIcm in '..\Comwatts\PsqIcm.pas' {fmPsqIcm},
  PsqMfp in 'PsqMfp.pas' {fmPsqMfp},
  PsqOce in 'PsqOce.pas' {fmPsqOce},
  PsqOcp in 'PsqOcp.pas' {fmPsqOcp},
  PsqPco in '..\Comwatts\PsqPco.pas' {fmPsqPco},
  ManE07 in 'ManE07.pas' {fmManE07},
  EstR06 in '..\..\Estoque\Emerion\EstR06.pas' {fmEstR06},
  AuxPro in '..\..\Estoque\Emerion\AuxPro.pas' {fmAuxPro},
  AuxCod in '..\..\Estoque\Emerion\AuxCod.pas' {fmAuxCod},
  CmpR08 in 'CmpR08.pas' {fmCmpR08},
  ConClf in '..\..\Estoque\Emerion\ConClf.pas' {fmConClf},
  PsqEs2 in '..\..\..\..\_WGLIB\padraoPsq\PsqEs2.pas' {fmPsqEs2},
  EstR03 in '..\..\Estoque\Emerion\EstR03.pas' {fmEstR03},
  ManEn8 in 'ManEn8.pas' {fmManEn8},
  ManApl in '..\..\..\..\_WGLIB\padrao\ManApl.pas' {fmManApl},
  EstR04 in '..\..\Estoque\Emerion\EstR04.pas' {fmEstR04},
  ManEn2 in 'ManEn2.pas' {fmManEn2},
  ManEn7 in 'ManEn7.pas' {fmManEn7},
  CmpR07 in 'CmpR07.pas' {fmCmpR07},
  ManPrc in 'ManPrc.pas' {fmManPrc},
  CmpR15 in '..\Comwatts\CmpR15.pas' {fmCmpR15},
  PsqFro in 'PsqFro.pas' {fmPsqFro},
  ManGFo in '..\..\Financeiro\Emerion\ManGFo.pas' {fmManGFo},
  ManApr in '..\Comwatts\ManApr.pas' {fmManApr},
  ManPro in '..\..\Estoque\Almerco\ManPro.pas' {fmManPro},
  ConPar in '..\..\Estoque\Emerion\ConPar.pas' {fmConPar},
  ManBar in '..\..\Estoque\Emerion\ManBar.pas' {fmManBar},
  ManCen in 'ManCen.pas' {fmManCen},
  ManFro in 'ManFro.pas' {fmManFro},
  PsqCen in 'PsqCen.pas' {fmPsqCen},
  CmpR19 in '..\Comwatts\CmpR19.pas' {fmCmpR19},
  ManPri in 'ManPri.pas' {fmManPri},
  CmpR20 in '..\Comwatts\CmpR20.pas' {fmCmpR20},
  ManCol in '..\..\Estoque\Emerion\ManCol.pas' {fmManCol},
  ManFor in '..\..\Financeiro\Emerion\ManFor.pas' {fmManFor},
  ManLr3 in 'ManLr3.pas' {fmManLr3},
  ManLro in 'ManLro.pas' {fmManLro},
  ManRo4 in 'ManRo4.pas' {fmManRo4},
  ManRo3 in 'ManRo3.pas' {fmManRo3},
  ManRo2 in 'ManRo2.pas' {fmManRo2},
  ManLr2 in 'ManLr2.pas' {fmManLr2},
  ManE03 in 'ManE03.pas' {fmManE03},
  PsqRes in '..\..\Pedidos\Almerco\PsqRes.pas' {fmPsqRes},
  PsqCmp in '..\..\Pedidos\Almerco\PsqCmp.pas' {fmPsqCmp},
  ManE01 in 'ManE01.pas' {fmManE01},
  ManE02 in 'ManE02.pas' {fmManE02},
  PsqCro in 'PsqCro.pas' {fmPsqCro},
  ManObc in 'ManObc.pas' {fmManObc},
  ManE04 in 'ManE04.pas' {fmManE04},
  ManPe4 in 'ManPe4.pas' {fmManPe4},
  ManReq in 'ManReq.pas' {fmManReq},
  ManIro in 'ManIro.pas' {fmManIro},
  CmpR02 in 'CmpR02.pas' {fmCmpR02},
  ManArm in 'ManArm.pas' {fmManArm},
  ManPor in 'ManPor.pas' {fmManPor},
  ManAge in 'ManAge.pas' {fmManAge},
  ManDes in 'ManDes.pas' {fmManDes},
  ManImp in 'ManImp.pas' {fmManImp},
  ManSc1 in 'ManSc1.pas' {fmManSc1},
  ManPfo in 'ManPfo.pas' {fmManPfo},
  ManSc4 in 'ManSc4.pas' {fmManSc4},
  ManSc2 in 'ManSc2.pas' {fmManSc2},
  ManSc3 in 'ManSc3.pas' {fmManSc3},
  ManE05 in 'ManE05.pas' {fmManE05},
  ConCro in '..\..\Fatura\Almerco\ConCro.pas' {fmConCro},
  ManCge in '..\..\Fatura\Almerco\ManCge.pas' {fmManCge},
  ConCge in '..\..\Fatura\Almerco\ConCge.pas' {fmConCge},
  ManRo6 in 'ManRo6.pas' {fmManRo6},
  ManRo7 in '..\..\Fatura\Almerco\ManRo7.pas' {fmManRo7},
  ManE09 in '..\..\Fatura\Almerco\ManE09.pas' {fmManE09},
  ManEn6 in 'ManEn6.pas' {fmManEn6},
  ManIn1 in 'ManIn1.pas' {fmManIn1},
  ManRo5 in 'ManRo5.pas' {fmManRo5},
  ManPfa in '..\..\Estoque\Emerion\ManPfa.pas' {fmManPfa},
  ManEn5 in 'ManEn5.pas' {fmManEn5},
  ManNF4 in 'ManNF4.pas' {fmManNF4},
  ManEn1 in 'ManEn1.pas' {fmManEn1};

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

