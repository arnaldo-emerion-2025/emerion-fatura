program EFatura;

uses
  Forms,
  Windows,
  Dialogs,
  SysUtils,
  Fpadrao in '..\..\..\..\..\_wglib\padrao\Fpadrao.pas' {fmPadrao},
  ManPri in 'ManPri.pas' {fmManPri},
  FShowpadrao in 'padrao\FShowpadrao.pas' {fmShowPadrao},
  ManApl in 'padrao\ManApl.pas' {fmManApl},
  UnitItau in 'UnitItau.pas',
  UntBradesco in 'UntBradesco.pas',
  FatR01 in 'FatR01.pas' {fmFatR01},
  FatR02 in 'FatR02.pas' {fmFatR02},
  FatR03 in 'FatR03.pas' {fmFatR03},
  FatR04 in 'FatR04.pas' {fmFatR04},
  FatR05 in 'FatR05.pas' {fmFatR05},
  FatR06 in 'FatR06.pas' {fmFatR06},
  FatR09 in 'FatR09.pas' {fmFatR09},
  FatR10 in 'FatR10.pas' {fmFatR10},
  FatR11 in 'FatR11.pas' {fmFatR11},
  FatR12 in 'FatR12.pas' {fmFatR12},
  FatR16 in 'FatR16.pas' {fmFatR16},
  FatR14 in 'FatR14.pas' {fmFatR14},
  FatR17 in 'FatR17.pas' {fmFatR17},
  ManCdp in 'ManCdp.pas' {fmManCdp},
  ManCDc in 'ManCDc.pas' {fmManCDc},
  ManCno in 'ManCno.pas' {fmManCno},
  ManCr1 in 'ManCr1.pas' {fmManCr1},
  ManCre in 'ManCre.pas' {fmManCre},
  ManDes in 'ManDes.pas' {fmManDes},
  ManDn1 in 'ManDn1.pas' {fmManDn1},
  ManDn2 in 'ManDn2.pas' {fmManDn2},
  ManDno in 'ManDno.pas' {fmManDno},
  ManEn1 in 'ManEn1.pas' {fmManEn1},
  ManEn2 in 'ManEn2.pas' {fmManEn2},
  ManEne in 'ManEne.pas' {fmManEne},
  ManEno in 'ManEno.pas' {fmManEno},
  ManEnt in 'ManEnt.pas' {fmManEnt},
  ManDCl in 'ManDCl.pas' {fmManDCl},
  ManIdn in 'ManIdn.pas' {fmManIdn},
  ManImp in 'ManImp.pas' {fmManImp},
  ManIng in 'ManIng.pas' {fmManIng},
  ManLn2 in 'ManLn2.pas' {fmManLn2},
  ManLn3 in 'ManLn3.pas' {fmManLn3},
  ManLn5 in 'ManLn5.pas' {fmManLn5},
  ManLn6 in 'ManLn6.pas' {fmManLn6},
  ManLno in 'ManLno.pas' {fmManLno},
  ManNg1 in 'ManNg1.pas' {fmManNg1},
  ManNg3 in 'ManNg3.pas' {fmManNg3},
  ManDC2 in 'ManDC2.pas' {fmManDc2},
  ManNot in 'ManNot.pas' {fmManNot},
  ManNt1 in 'ManNt1.pas' {fmManNt1},
  ManOb1 in 'ManOb1.pas' {fmManOb1},
  ManObs in 'ManObs.pas' {fmManObs},
  ManPar in 'ManPar.pas' {fmManPar},
  ManSdn in 'ManSdn.pas' {fmManSdn},
  ManSin in 'ManSin.pas' {fmManSin},
  ObsCli in 'ObsCli.pas' {fmObsCli},
  PsqLib in 'PsqLib.pas' {fmPsqLib},
  PsqCmp in 'Pedidos\DualComp\PsqCmp.pas' {fmPsqCmp},
  PsqIcm in 'Pedidos\DualComp\PsqIcm.pas' {fmPsqIcm},
  ManDep in 'Romaneios\ManDep.pas' {fmManDep},
  ManDe2 in 'Romaneios\ManDe2.pas' {fmManDe2},
  ManRom in 'Compras\DualComp\ManRom.pas' {fmManRom},
  ManRo1 in 'Compras\DualComp\ManRo1.pas' {fmManRo1},
  ManRo2 in 'Compras\DualComp\ManRo2.pas' {fmManRo2},
  ManIro in 'ManIro.pas' {fmManIro},
  ManCnf in 'Compras\DualComp\ManCnf.pas' {fmManCnf},
  PsqRes in 'Pedidos\DualComp\PsqRes.pas' {fmPsqRes},
  ColR02 in 'ColR02.pas' {fmColR02},
  ManCdv in 'ManCdv.pas' {fmManCdv},
  ManSda in 'ManSda.pas' {fmManSda},
  ManCge in 'ManCge.pas' {fmManCge},
  FatR13 in 'FatR13.pas' {fmFatR13},
  ManLog in 'padrao\ManLog.pas' {fmManLog},
  ManNg2 in 'ManNg2.pas' {fmManNg2},
  ManSeg in 'ManSeg.pas' {fmManSeg},
  ManSro in 'Compras\DualComp\ManSro.pas' {fmManSro},
  ManRo4 in 'Compras\DualComp\ManRo4.pas' {fmManRo4},
  ManSge in 'ManSge.pas' {fmManSge},
  ManDn3 in 'ManDn3.pas' {fmManDn3},
  ManObp in 'ManObp.pas' {fmManObp},
  ManFro in 'Compras\DualComp\ManFro.pas' {fmManFro},
  PsqCro in 'Compras\DualComp\PsqCro.pas' {fmPsqCro},
  PsqFro in 'Compras\DualComp\PsqFro.pas' {fmPsqFro},
  FatR15 in 'FatR15.pas' {fmFatR15},
  ManUfc in 'ManUfc.pas' {fmManUfc},
  PsqUfe in 'PadraoPsq\PsqUfe.pas' {fmPsqUfe},
  ManEma in 'ManEma.pas' {fmManEma},
  ManDs1 in 'ManDs1.pas' {fmManDs1},
  ManDe1 in 'Romaneios\ManDe1.pas' {fmManDe1},
  CmpR15 in 'Compras\DualComp\CmpR15.pas' {fmCmpR15},
  CmpR16 in 'Compras\DualComp\CmpR16.pas' {fmCmpR16},
  CmpR12 in 'Compras\DualComp\CmpR12.pas' {fmCmpR12},
  CmpR18 in 'Compras\DualComp\CmpR18.pas' {fmCmpR18},
  ManLro in 'Compras\DualComp\ManLro.pas' {fmManLro},
  ManLr2 in 'Compras\DualComp\ManLr2.pas' {fmManLr2},
  ManLr3 in 'Compras\DualComp\ManLr3.pas' {fmManLr3},
  ManRo3 in 'Compras\DualComp\ManRo3.pas' {fmManRo3},
  ManCol in 'Estoque\Emerion\ManCol.pas' {fmManCol},
  ManNfp in 'ManNfp.pas' {fmManNfp},
  ManCdv_NFE in 'Calma_NFE\ManCdv_NFE.pas' {fmManCdv_NFE},
  ManCn1_NFE in 'Calma_NFE\ManCn1_NFE.pas' {fmManCn1_NFE},
  ManCn2_NFE in 'Calma_NFE\ManCn2_NFE.pas' {fmManCn2_NFE},
  ManDn1_NFE in 'Calma_NFE\ManDn1_NFE.pas' {fmManDn1_NFE},
  ManDn2_NFE in 'Calma_NFE\ManDn2_NFE.pas' {fmManDn2_NFE},
  ManDn3_NFE in 'Calma_NFE\ManDn3_NFE.pas' {fmManDn3_NFE},
  ManDno_NFE in 'Calma_NFE\ManDno_NFE.pas' {fmManDno_NFE},
  ManE01_NFE in 'Calma_NFE\ManE01_NFE.pas' {fmManE01_NFE},
  ManE02_NFE in 'Calma_NFE\ManE02_NFE.pas' {fmManE02_NFE},
  ManE03_NFE in 'Calma_NFE\ManE03_NFE.pas' {fmManE03_NFE},
  ManEn1_NFE in 'Calma_NFE\ManEn1_NFE.pas' {fmManEn1_NFE},
  ManEn2_NFE in 'Calma_NFE\ManEn2_NFE.pas' {fmManEn2_NFE},
  ManEn3_NFE in 'Calma_NFE\ManEn3_NFE.pas' {fmManEn3_NFE},
  ManEn4_NFE in 'Calma_NFE\ManEn4_NFE.pas' {fmManEn4_NFE},
  ManEno_NFE in 'Calma_NFE\ManEno_NFE.pas' {fmManEno_NFE},
  ManGer_NFE in 'Calma_NFE\ManGer_NFE.pas' {fmManGer_NFE},
  ManGr1_NFE in 'Calma_NFE\ManGr1_NFE.pas' {fmManGr1_NFE},
  ManGr2_NFE in 'Calma_NFE\ManGr2_NFE.pas' {fmManGr2_NFE},
  ManIdn_NFE in 'Calma_NFE\ManIdn_NFE.pas' {fmManIdn_NFE},
  ManImp_NFE in 'Calma_NFE\ManImp_NFE.pas' {fmManImp_NFE},
  ManIng_NFE in 'Calma_NFE\ManIng_NFE.pas' {fmManIng_NFE},
  ManLn7_NFE in 'Calma_NFE\ManLn7_NFE.pas' {fmManLn7_NFE},
  ManLn8_NFE in 'Calma_NFE\ManLn8_NFE.pas' {fmManLn8_NFE},
  ManLno_NFE in 'Calma_NFE\ManLno_NFE.pas' {fmManLno_NFE},
  ManNF1_NFE in 'Calma_NFE\ManNF1_NFE.pas' {fmManNF1_NFE},
  ManNg1_NFE in 'Calma_NFE\ManNg1_NFE.pas' {fmManNg1_NFE},
  ManNg2_NFE in 'Calma_NFE\ManNg2_NFE.pas' {fmManNg2_NFE},
  ManNg3_NFE in 'Calma_NFE\ManNg3_NFE.pas' {fmManNg3_NFE},
  ManNot_NFE in 'Calma_NFE\ManNot_NFE.pas' {fmManNot_NFE},
  ManNt1_NFE in 'Calma_NFE\ManNt1_NFE.pas' {fmManNt1_NFE},
  ManNt2_NFE in 'Calma_NFE\ManNt2_NFE.pas' {fmManNt2_NFE},
  ManNt3_NFE in 'Calma_NFE\ManNt3_NFE.pas' {fmManNt3_NFE},
  ManNt4_NFE in 'Calma_NFE\ManNt4_NFE.pas' {fmManNt4_NFE},
  ManObp_NFE in 'Calma_NFE\ManObp_NFE.pas' {fmManObp_NFE},
  ManSge_NFE in 'Calma_NFE\ManSge_NFE.pas' {fmManSge_NFE},
  ManPfa_GERAL in 'Calma_Geral\ManPfa_GERAL.pas' {fmManPfa_GERAL},
  Controle_NFE in 'Calma_NFE\Controle_NFE.pas' {fmControle_NFE},
  ManC01 in 'ManC01.pas' {fmManC01},
  ManNF1R_NFE in 'Calma_NFE\ManNF1R_NFE.pas' {fmManNF1R_NFE},
  ManE12_NFE in 'ManE12_NFE.pas' {fmManE12_NFE},
  ManLnRMA_NFE in 'Calma_NFE\ManLnRMA_NFE.pas' {fmManLnRMA_NFE},
  ManLn7 in 'ManLn7.pas' {fmManLn7},
  ManE02 in 'ManE02.pas' {fmManE02},
  ManGDB in '..\..\..\..\..\_wglib\padrao\ManGDB.pas' {fmManGDB: TDataModule},
  UNTObsRMN in 'UNTObsRMN.pas' {FrmObsRMN},
  ManNt2 in 'ManNt2.pas' {fmManNt2},
  Bbfuncao in '..\..\..\..\..\_wglib\lib\Bbfuncao.pas',
  ManEditNfe in 'ManEditNfe.pas' {FrmEditNfe},
  manNFEAltPort in '..\..\..\compras\dualcompSN\manNFEAltPort.pas' {fmNFEAltPort},
  ManNge_NFE2 in 'ManNge_NFE2.pas' {fmManNge_NFE2},
  ManParEditNfe in 'ManParEditNfe.pas' {frmParEditNFe},
  MsgUser in '..\..\..\..\..\_wglib\lib\MsgUser.pas',
  mandi2 in 'mandi2.pas' {FMMANDI2},
  Bbgeral in '..\..\..\..\..\_wglib\lib\Bbgeral.pas',
  ManIpi in '..\..\..\estoque\dualcompSN\ManIpi.pas' {fmManIpi},
  ConCn1_NFE in 'Calma_NFE\ConCn1_NFE.pas' {fmConCn1_NFE},
  ManCge_NFE in 'Calma_NFE\ManCge_NFE.pas' {fmManCge_NFE},
  ManStr2 in '..\..\..\estoque\dualcompSN\ManStr2.pas' {fmManStr2},
  ManIcm in '..\..\..\pedidos\dualcompSN\ManIcm.pas' {fmManIcm},
  ManMsgSuframa in '..\..\..\..\..\_wglib\padrao\ManMsgSuframa.pas' {fmMsgSuframa},
  ManChaveNfe in 'ManChaveNfe.pas' {fmManChaveNfe},
  ManListaNFeRef in 'ManListaNFeRef.pas' {fmManListaNFeRef},
  ManTxf in '..\..\..\estoque\dualcompSN\ManTxf.pas' {fmManTxf},
  uSantander in 'uSantander.pas',
  uLogEststr in '..\..\..\estoque\dualcompSN\uLogEststr.pas' {fmLogST},
  ManE03 in 'ManE03.pas' {fmManE03},
  ManEm2 in 'ManEm2.pas' {fmManEm2},
  udf_glob in 'C:\Componentes\_wglib\Udf\udf_glob.pas',
  manLote in 'manLote.pas' {fmLote},
  uSicredi in 'uSicredi.pas',
  uPerfilDevolucao in 'uPerfilDevolucao.pas' {frmPerfilDevolucao},
  uBancoBrasil in 'uBancoBrasil.pas',
  ManLoteMed in 'ManLoteMed.pas' {fmLotesMed},
  UntItau in '..\..\..\..\..\_wglib\padrao\UntItau.pas';

{$R *.RES}

var
  sAlias: string;
  HprevHist: HWND;
begin

  Application.Initialize;

  if not FileExists('C:\Windows\Emerion.prg') then
    HprevHist := FindWindow(nil, 'Emerion Faturamento')
  else
    HprevHist := 0;

  if HprevHist = 0 then
  begin

    Application.Title := 'Emerion Faturamento';

    try

      fmManApl := TFmManApl.Create(Application);

      fmManApl.Show;
      fmManApl.Refresh;

      sAlias := fmManApl.sAlias;

    finally

      FreeAndNil(fmManApl);

    end;

    if sAlias = 'S' then 
    begin

      Application.CreateForm(TfmManGDB, fmManGDB);
  Application.CreateForm(TfmManPri, fmManPri);
  end;

     Application.Run;

  end
  else
    MessageDlg('Existe uma Cópia do Aplicativo em Execução no Momento.', mtInformation, [mbOK], 0);
end.

