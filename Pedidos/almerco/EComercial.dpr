program EComercial;

uses
  Forms,
  Windows,
  Dialogs,
  SysUtils,
  Fpadrao in '..\..\..\..\_WGLIB\padrao\Fpadrao.pas' {fmPadrao},
  FMensag in '..\..\..\..\_WGLIB\padrao\FMensag.pas' {fmMensag},
  FShowpadrao in '..\..\..\..\_WGLIB\padrao\FShowpadrao.pas' {fmShowPadrao},
  ManPri in 'ManPri.pas' {fmManPri},
  PsqBar in '..\..\..\..\_WGLIB\PadraoPsq\PsqBar.pas' {fmPsqBar},
  ManCli in '..\..\Financeiro\Emerion\ManCli.pas' {fmManCli},
  ManAbc in '..\..\Financeiro\Emerion\ManAbc.pas' {fmManAbc},
  ManVen in '..\..\Financeiro\Emerion\ManVen.pas' {fmManVen},
  ManTra in '..\..\Financeiro\Emerion\ManTra.pas' {fmManTra},
  GCli01 in '..\..\Financeiro\Emerion\GCli01.pas' {fmGCli01},
  GCli01d in '..\..\Financeiro\Emerion\GCli01d.pas' {fmGCli01d},
  CCli02 in '..\..\Financeiro\Emerion\CCli02.pas' {fmCCli02},
  CRec08 in '..\..\Financeiro\Emerion\CRec08.pas' {fmCRec08},
  GVen02 in '..\..\Financeiro\Emerion\GVen02.pas' {fmGVen02},
  GVen02d in '..\..\Financeiro\Emerion\GVen02d.pas' {fmGVen02d},
  GVen03 in '..\..\Financeiro\Emerion\GVen03.pas' {fmGVen03},
  GVen03d in '..\..\Financeiro\Emerion\gven03d.pas' {fmGVen03d},
  GCli02 in '..\..\Financeiro\Emerion\GCli02.pas' {fmGCli02},
  GCli02d in '..\..\Financeiro\Emerion\gcli02d.pas' {fmGCli02d},
  RCli02 in '..\..\Financeiro\Emerion\RCli02.pas' {fmRCli02},
  ManCon in 'ManCon.pas' {fmManCon},
  ManAt3 in 'ManAt3.pas' {fmManAt3},
  ManCta in 'ManCta.pas' {fmManCta},
  ManFin in 'ManFin.pas' {fmManFin},
  ManLib in 'ManLib.pas' {fmManLib},
  ManLpe in 'ManLpe.pas' {fmManLpe},
  ManLre in 'ManLre.pas' {fmManLre},
  ManObp in 'ManObp.pas' {fmManObp},
  ManFrt in 'ManFrt.pas' {fmManFrt},
  ManPar in 'ManPar.pas' {fmManPar},
  ManE15 in 'ManE15.pas' {fmManE15},
  ManPe1 in 'ManPe1.pas' {fmManPe1},
  ManPec in '..\DualComp\ManPec.pas' {fmManPec},
  ManAt1 in 'ManAt1.pas' {fmManAt1},
  ManCc2 in 'ManCc2.pas' {fmManCc2},
  ManPrg in 'ManPrg.pas' {fmManPrg},
  ManAte in 'ManAte.pas' {fmManAte},
  ManSep in 'ManSep.pas' {fmManSep},
  ManSer in '..\DualComp\ManSer.pas' {fmManSer},
  ManUfe in '..\DualComp\manufe.pas' {fmManUfe},
  PedC22 in '..\DualComp\PedC22.pas' {fmPedC22},
  PedR01 in 'PedR01.pas' {fmPedR01},
  PedR02 in '..\DualComp\pedr02.pas' {fmPedR02},
  PedR03 in '..\DualComp\pedr03.pas' {fmPedR03},
  PedR04 in '..\DualComp\pedr04.pas' {fmPedR04},
  PedR29 in 'PedR29.pas' {fmPedR29},
  PedR06 in 'PedR06.pas' {fmPedR06},
  PedR07 in 'PedR07.pas' {fmPedR07},
  PedR08 in '..\DualComp\PedR08.pas' {fmPedR08},
  PedR09 in 'PedR09.pas' {fmPedR09},
  PedR26 in 'PedR26.pas' {fmPedR26},
  PedR15 in 'PedR15.pas' {fmPedR15},
  PedR16 in 'PedR16.pas' {fmPedR16},
  PedR40 in 'PedR40.pas' {fmPedR40},
  PedR18 in 'PedR18.pas' {fmPedR18},
  PedR19 in 'PedR19.pas' {fmPedR19},
  PedR23 in 'PedR23.pas' {fmPedR23},
  PedR21 in 'PedR21.pas' {fmPedR21},
  PedR22 in '..\DualComp\PedR22.pas' {fmPedR22},
  PsqCmp in 'PsqCmp.pas' {fmPsqCmp},
  PsqHre in 'PsqHre.pas' {fmPsqHre},
  PsqCre in 'PsqCre.pas' {fmPsqCre},
  PsqCrp in '..\DualComp\PsqCrp.pas' {fmPsqCrp},
  PsqEnp in '..\DualComp\PsqEnp.pas' {fmPsqEnp},
  PsqEnt in 'PsqEnt.pas' {fmPsqEnt},
  psqfat in 'psqfat.pas' {fmPsqFat},
  PsqIcm in '..\DualComp\PsqIcm.pas' {fmPsqIcm},
  PsqOc3 in 'PsqOc3.pas' {fmPsqOc3},
  PsqOc4 in '..\DualComp\PsqOc4.pas' {fmPsqOc4},
  psqocc in 'psqocc.pas' {fmPsqOcc},
  psqoco in 'psqoco.pas' {fmPsqOco},
  psqorc in 'psqorc.pas' {fmPsqOrc},
  PsqPco in '..\DualComp\PsqPco.pas' {fmPsqPco},
  PsqPed in '..\DualComp\PsqPed.pas' {fmPsqPed},
  PsqMfp in 'PsqMfp.pas' {fmPsqMfp},
  PsqUve in 'PsqUve.pas' {fmPsqUve},
  PsqTab in '..\DualComp\PsqTab.pas' {fmPsqTab},
  PedR20 in 'PedR20.pas' {fmPedR20},
  PsqCod in '..\..\..\..\_WGLIB\PadraoPsq\PsqCod.pas' {fmPsqCod},
  PsqCde in '..\..\..\..\_WGLIB\PadraoPsq\PsqCde.pas' {fmPsqCde},
  ManPsq in '..\..\Financeiro\Emerion\ManPsq.pas' {fmManPsq},
  PedR24 in 'PedR24.pas' {fmPedR24},
  CmpR14 in 'CmpR14.pas' {fmCmpR14},
  PsqCpd in 'PsqCpd.pas' {fmPsqCpd},
  PedR25 in 'PedR25.pas' {fmPedR25},
  ManMkp in '..\DualComp\ManMkp.pas' {fmManMkp},
  ManCco in '..\DualComp\ManCco.pas' {fmManCco},
  ManPre in 'ManPre.pas' {fmManPre},
  VerUsu in '..\..\..\..\_WGLIB\padrao\VerUsu.pas' {fmVerUsu},
  ManTSe in '..\..\..\..\_WGLIB\padrao\ManTse.pas' {fmManTSe},
  ManTUs in '..\..\..\..\_WGLIB\padrao\ManTUs.pas' {fmManTUs},
  ManCom in 'ManCom.pas' {fmManCom},
  ManLog in '..\..\..\..\_WGLIB\padrao\ManLog.pas' {fmManLog},
  ManGDB in '..\..\..\..\_WGLIB\padrao\ManGDB.pas' {fmManGDB: TDataModule},
  ManApl in '..\DualComp\ManApl.pas' {fmManApl},
  ManCol in '..\..\Estoque\Emerion\ManCol.pas' {fmManCol},
  PsqCf2 in 'PsqCf2.pas' {fmPsqCf2},
  PedR05 in 'PedR05.pas' {fmPedR05},
  ManGr1 in '..\..\Financeiro\Emerion\ManGr1.pas' {fmManGr1},
  ManGr2 in '..\..\Financeiro\Emerion\ManGr2.pas' {fmManGr2},
  PedR28 in 'PedR28.pas' {fmPedR28},
  PedR34 in 'PedR34.pas' {fmPedR34},
  ManPs2 in '..\..\Financeiro\Emerion\ManPs2.pas' {fmManPs2},
  ManGco in 'ManGco.pas' {fmManGco},
  ManGc1 in 'ManGc1.pas' {fmManGc1},
  ManCge in 'ManCge.pas' {fmManCge},
  ManLge in 'ManLge.pas' {fmManLge},
  PedR33 in 'PedR33.pas' {fmPedR33},
  PsqEs2 in '..\..\..\..\_WGLIB\PadraoPsq\PsqEs2.pas' {fmPsqEs2},
  ManICl in 'ManICl.pas' {fmManICl},
  PsqRes in 'PsqRes.pas' {fmPsqRes},
  ManGc2 in 'ManGc2.pas' {fmManGc2},
  ManCnd in 'ManCnd.pas' {fmManCnd},
  ManPe3 in 'ManPe3.pas' {fmManPe3},
  PsqCnd in 'PsqCnd.pas' {fmPsqCnd},
  ManAt4 in 'ManAt4.pas' {fmManAt4},
  ManE11 in 'ManE11.pas' {fmManE11},
  ManEve in 'ManEve.pas' {fmManEve},
  ManCpg in 'ManCpg.pas' {fmManCpg},
  ManLcc in 'ManLcc.pas' {fmManLcc},
  ManE07 in 'ManE07.pas' {fmManE07},
  ManAt5 in 'ManAt5.pas' {fmManAt5},
  ManE06 in 'ManE06.pas' {fmManE06},
  ManE02 in 'ManE02.pas' {fmManE02},
  ManPe4 in 'ManPe4.pas' {fmManPe4},
  PsqHr4 in 'PsqHr4.pas' {fmPsqHr4},
  PsqCge in 'PsqCge.pas' {fmPsqCge},
  ManFpe in 'ManFpe.pas' {fmManFpe},
  ManSld in 'ManSld.pas' {fmManSld},
  ManE08 in 'ManE08.pas' {fmManE08},
  ManE05 in 'ManE05.pas' {fmManE05},
  ManE16 in 'ManE16.pas' {fmManE16},
  ImpF03 in 'ImpF03.pas' {fmImpF03},
  ManDef in '..\..\..\..\_WGLIB\padrao\ManDef.pas' {fmManDef},
  PsqCot in 'PsqCot.pas' {fmPsqCot},
  ManE18 in 'ManE18.pas' {fmManE18},
  ManCat in 'ManCat.pas' {fmManCat},
  PsqFin in 'PsqFin.pas' {fmPsqFin},
  ImpF01 in 'ImpF01.pas' {fmImpF01},
  ManE09 in 'ManE09.pas' {fmManE09},
  PsqRe4 in 'PsqRe4.pas' {fmPsqRe4},
  ImpF02 in 'ImpF02.pas' {fmImpF02},
  ManE10 in 'ManE10.pas' {fmManE10},
  ManRej in 'ManRej.pas' {fmManRej},
  ManLfr in 'ManLfr.pas' {fmManLfr},
  EnvCon in 'EnvCon.pas' {fmEnvCon},
  ManRes in 'ManRes.pas' {fmManRes},
  ManPed in 'ManPed.pas' {fmManPed},
  ManCpe in 'ManCpe.pas' {fmManCpe},
  ManCt3 in 'ManCt3.pas' {fmManCt3},
  ManCt4 in 'ManCt4.pas' {fmManCt4},
  ManCt5 in 'ManCt5.pas' {fmManCt5},
  SendMailOptions in '..\..\..\..\_WGLIB\padrao\SendMailOptions.pas' {FormSendMailOptions},
  PsqCpe in 'PsqCpe.pas' {fmPsqCpe},
  ManE04 in 'ManE04.pas' {fmManE04},
  ManAt2 in 'ManAt2.pas' {fmManAt2},
  ManMve in 'ManMve.pas' {fmManMve},
  GCom01 in 'GCom01.pas' {fmGCom01},
  PedR32 in 'PedR32.pas' {fmPedR32},
  ManLb1 in 'ManLb1.pas' {fmManLb1},
  PsqLib in 'PsqLib.pas' {fmPsqLib},
  PedR31 in 'PedR31.pas' {fmPedR31},
  PedR10 in 'PedR10.pas' {fmPedR10},
  PedR30 in 'PedR30.pas' {fmPedR30},
  ManE13 in 'ManE13.pas' {fmManE13},
  PedR14 in 'PedR14.pas' {fmPedR14},
  PedR12 in 'PedR12.pas' {fmPedR12},
  PedR35 in 'PedR35.pas' {fmPedR35},
  PedR36 in 'PedR36.pas' {fmPedR36},
  PedR37 in 'PedR37.pas' {fmPedR37},
  PsqCf4 in 'PsqCf4.pas' {fmPsqCf4},
  ManCt2 in 'ManCt2.pas' {fmManCt2},
  ManE03 in 'ManE03.pas' {fmManE03},
  ManE12 in 'ManE12.pas' {fmManE12},
  ManCbl in '..\..\Financeiro\Emerion\ManCbl.pas' {fmManCbl},
  ManCal in '..\..\Financeiro\Emerion\ManCal.pas' {fmManCal},
  PsqCbl in '..\..\Financeiro\Emerion\PsqCbl.pas' {fmPsqCbl},
  PsqCal in '..\..\Financeiro\Emerion\PsqCal.pas' {fmPsqCal},
  ManPag in 'ManPag.pas' {fmManPag},
  ManLpg in 'ManLpg.pas' {fmManLpg},
  ManLco in 'ManLco.pas' {fmManLco},
  ManLpr in 'ManLpr.pas' {fmManLpr},
  PsqRej in 'PsqRej.pas' {fmPsqRej},
  PsqHr1 in 'PsqHr1.pas' {fmPsqHr1},
  PsqHr2 in 'PsqHr2.pas' {fmPsqHr2},
  PsqHr5 in 'PsqHr5.pas' {fmPsqHr5},
  PsqHr3 in 'PsqHr3.pas' {fmPsqHr3},
  ManE17 in 'ManE17.pas' {fmManE17},
  ManE14 in 'ManE14.pas' {fmManE14},
  ManFor in '..\..\Financeiro\Emerion\ManFor.pas' {fmManFor},
  ManPrm in 'ManPrm.pas' {fmManPrm},
  ManPe2 in 'ManPe2.pas' {fmManPe2},
  PedR38 in 'PedR38.pas' {fmPedR38},
  PedR39 in 'PedR39.pas' {fmPedR39},
  ManE01 in 'ManE01.pas' {fmManE01},
  PedR17 in 'PedR17.pas' {fmPedR17};

{$R *.RES}
  var
  sAlias    : string;
  HprevHist : HWND;

begin

  Application.Initialize;

  if not FileExists('C:\Windows\Emerion.prg') then
     HprevHist := FindWindow(Nil,'Emerion Comercial')
  else
     HprevHist := 0;

  if HprevHist = 0 then begin

     Application.Title := 'Emerion Comercial';

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
     MessageDlg('Existe uma cópia do aplicativo em execução no momento.', mtInformation, [mbOK], 0);

end.
