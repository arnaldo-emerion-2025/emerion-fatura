unit ManEpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit, dxDBELib,
  ImgList, ppDB, ppDBPipe, ppBands, ppClass, ppStrtch, ppMemo, ppCtrls,
  ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxDBColorCurrencyEdit;

type
  TfmManEpe = class(TfmPadrao)
    CmpEn2: TwwQuery;
    DsEn2: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label25: TLabel;
    Label19: TLabel;
    Label26: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    EdPsqCodPfa: TdxColorEdit;
    EdPsqCodFor: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqFor: TSpeedButton;
    BbPsqPfa: TSpeedButton;
    EdPsqNomPfa: TdxColorEdit;
    EdPsqNomFor: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    Bevel3: TBevel;
    rgStatus: TRadioGroup;
    quSql: TwwQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    pnNomFor: TPanel;
    Label7: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    CmpEntHREENT: TStringField;
    CmpEntNUMDOC: TIntegerField;
    CmpEntTOTENC: TFloatField;
    CmpEntTOTIPC: TFloatField;
    CmpEntTOTGEC: TFloatField;
    CmpEn2DESEN2: TStringField;
    CmpEn2QTPEN2: TFloatField;
    CmpEn2VLQEN2: TFloatField;
    CmpEn2IPIEN2: TFloatField;
    CmpEn2ICMEN2: TFloatField;
    CmpEn2TOTIPI: TFloatField;
    CmpEn2TOTEN2: TFloatField;
    Label1: TLabel;
    EdPsqId_CmpPed: TdxColorEdit;
    CmpEnt: TwwQuery;
    EdPsqTotEnt2: TdxColorCurrencyEdit;
    EdPsqTotEnt1: TdxColorCurrencyEdit;
    EdPsqDteEnt2: TdxColorDateEdit;
    EdPsqDteEnt1: TdxColorDateEdit;
    EdPsqDteDoc1: TdxColorDateEdit;
    EdPsqDteDoc2: TdxColorDateEdit;
    grEnt: ThGrid;
    grEn2: ThGrid;
    EdPsqId_CmpEnt: TdxColorEdit;
    pnSitEnt: TPanel;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    bExcluir: TSpeedButton;
    UpEnt: TUpdateSQL;
    Label11: TLabel;
    CmpEntDTEOPE: TDateTimeField;
    Label23: TLabel;
    Label15: TLabel;
    EdPsqNumDoc: TdxColorEdit;
    CmpEn2CODITE: TStringField;
    CmpEntCODPFA: TStringField;
    CmpEntID_CMPENT: TIntegerField;
    CmpEntID_CMPPED: TIntegerField;
    CmpEntCODFOR: TIntegerField;
    CmpEntSITENT: TStringField;
    CmpEn2ID_CMPEN2: TIntegerField;
    CmpEn2CODCLP: TStringField;
    CmpEn2CODGRU: TStringField;
    CmpEn2CODSUB: TStringField;
    CmpEn2CODPRO: TStringField;
    CmpEntTOTSUC: TFloatField;
    CmpEntBASSUC: TFloatField;
    CmpEntBASICC: TFloatField;
    CmpEntTOTICC: TFloatField;
    CmpEntTOTDES: TFloatField;
    CmpEntMODPFA: TStringField;
    CmpEntSERNOT: TStringField;
    CmpEntUFEENT: TStringField;
    CmpEntCODCFO: TStringField;
    CmpEntCODTIP: TIntegerField;
    CmpEntDTECRE: TDateTimeField;
    CmpEntDTEDOC: TDateTimeField;
    CmpEntTOTFRT: TFloatField;
    CmpEntTOTSEG: TFloatField;
    CmpEntTOTENT: TFloatField;
    CmpEntBASICM: TFloatField;
    CmpEntTOTICM: TFloatField;
    CmpEntTOTIPI: TFloatField;
    CmpEntBASSUB: TFloatField;
    CmpEntTOTSUB: TFloatField;
    CmpEntTOTGER: TFloatField;
    CmpEntFLGATU: TStringField;
    CmpEntCONPLC: TIntegerField;
    CmpEntSUBPLC: TIntegerField;
    CmpEntFLGENT: TStringField;
    CmpEntTIPPFA: TStringField;
    CmpEntFLGOCO: TStringField;
    CmpEntATUEST: TStringField;
    CmpEntNOMFOR: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqForClick(Sender: TObject);
    procedure BbPsqPfaClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqId_CmpEntExit(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodForExit(Sender: TObject);
    procedure DsEntDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure EdPsqId_CmpEntKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqNumDocExit(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CmpEn2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    {Private declarations}
  public
    {Public declarations}
    Id_CmpEnt : integer;
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManEpe : TfmManEpe;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqPfa, ManPri,
     AuxPsq, AuxIni, ManEnt, PsqOce, Fpreview, ManSin, ManPrc, PsqCen,
     ManE05;

{$R *.DFM}

procedure TfmManEpe.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select CmpEnt.Id_CmpEnt,'+
           '        CmpEnt.Id_CmpPed,'+
           '        CmpEnt.UfeEnt,'+
           '        CmpEnt.CodCfo,'+
           '        CmpEnt.CodTip,'+
           '        CmpEnt.CodFor,'+
           '        CmpEnt.ConPlc,'+
           '        CmpEnt.SubPlc,'+
           '        CmpEnt.CodPfa,'+
           '        CmpEnt.TipPfa,'+
           '        CmpEnt.AtuEst,'+
           '        CmpEnt.DteOpe,'+
           '        CmpEnt.DteCre,'+
           '        CmpEnt.DteDoc,'+
           '        CmpEnt.NumDoc,'+
           '        CmpEnt.SerNot,'+
           '        CmpEnt.HreEnt,'+
           '        CmpEnt.ModPfa,'+
           '        CmpEnt.TotEnt,'+
           '        CmpEnt.TotEnc,'+
           '        CmpEnt.BasIcm,'+
           '        CmpEnt.BasIcc,'+
           '        CmpEnt.TotIcm,'+
           '        CmpEnt.TotIcc,'+
           '        CmpEnt.TotIpi,'+
           '        CmpEnt.TotIpc,'+
           '        CmpEnt.BasSub,'+
           '        CmpEnt.BasSuc,'+
           '        CmpEnt.TotSub,'+
           '        CmpEnt.TotSuc,'+
           '        CmpEnt.TotFrt,'+
           '        CmpEnt.TotSeg,'+
           '        CmpEnt.TotDes,'+
           '        CmpEnt.TotGer,'+
           '        CmpEnt.TotGec,'+
           '        CmpEnt.FlgOco,'+
           '        CmpEnt.FlgEnt,'+
           '        CmpEnt.FlgAtu,'+
           '        CmpEnt.SitEnt,'+
           '        FinFor.NomFor '+
           ' From CmpEnt LEFT JOIN FinFor ON (CmpEnt.CodFor = FinFor.CodFor)';

end;

procedure TfmManEpe.bPesquisaClick(Sender: TObject);
begin

  ActiveControl := nil;

  if GFlgAce <> 'Sim' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select FLGDEL,SEQIMP from GerPar';
          Open;

          if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

             GFlgAce := 'Sim';

             if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

             end
          else
             begin

             GEmpLog := 0;
             GFlgAce := 'Nao';

          end;
     end;
  end;
  
  sFiltro := '';

  case rgOrdem.Itemindex of
       0: sOrdem := ' Order by CmpEnt.Id_CmpPed';
       1: sOrdem := ' Order by CmpEnt.Id_CmpEnt';
       2: sOrdem := ' Order by CmpEnt.CodFor,CmpEnt.Id_CmpEnt';
       3: sOrdem := ' Order by CmpEnt.DteOpe,CmpEnt.Id_CmpEnt';
       4: sOrdem := ' Order by CmpEnt.DteDoc,CmpEnt.Id_CmpEnt';
  end;

  case rgStatus.Itemindex of
       0: sFiltro := ' Where CmpEnt.SitEnt = '+ QuotedStr('Nao Concluida');
       1: sFiltro := ' Where CmpEnt.SitEnt = '+ QuotedStr('Concluida');
       2: sFiltro := ' Where CmpEnt.SitEnt = '+ QuotedStr('Cancelada');
  end;

  if Trim( EdPsqId_CmpEnt.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.Id_CmpEnt = '+ QuotedStr(EdPsqId_CmpEnt.Text)
     else
        sFiltro := ' Where CmpEnt.Id_CmpEnt = '+ QuotedStr(EdPsqId_CmpEnt.Text);

  end;

  if Trim( EdPsqId_CmpPed.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and Exists(Select * From CmpPe3 Where CmpPe3.Id_CmpEnt = CmpEnt.Id_CmpEnt and CmpPe3.Id_CmpPed = '+ QuotedStr(EdPsqId_CmpPed.Text) +')'
     else
        sFiltro := ' Where Exists(Select * From CmpPe3 Where CmpPe3.Id_CmpEnt = CmpEnt.Id_CmpEnt and CmpPe3.Id_CmpPed = '+ QuotedStr(EdPsqId_CmpPed.Text) +')';

  end;

  if Trim( EdPsqNumDoc.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.NumDoc = '+ QuotedStr(EdPsqNumDoc.Text)
     else
        sFiltro := ' Where CmpEnt.NumDoc = '+ QuotedStr(EdPsqNumDoc.Text);

  end;

  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text)
     else
        sFiltro := ' Where CmpEnt.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text)

  end;

  if Trim( EdPsqCodFor.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.CodFor = '+ QuotedStr(EdPsqCodFor.Text)
     else
        sFiltro := ' Where CmpEnt.CodFor = '+ QuotedStr(EdPsqCodFor.Text);

  end;

  if Trim( EdPsqCodPfa.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text)
     else
        sFiltro := ' Where CmpEnt.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text);

  end;

  if Trim(fLimpaStr(EdPsqDteEnt1.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.DteOpe >= '+ QuotedStr(fDateToSQL(EdPsqDteEnt1.Date))
     else
        sFiltro := ' Where CmpEnt.DteOpe >= '+ QuotedStr(fDateToSQL(EdPsqDteEnt1.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteEnt2.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.DteOpe <= '+ QuotedStr(fDateToSQL(EdPsqDteEnt2.Date))
     else
        sFiltro := ' Where CmpEnt.DteOpe <= '+ QuotedStr(fDateToSQL(EdPsqDteEnt2.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteDoc1.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.DteDoc >= '+ QuotedStr(fDateToSQL(EdPsqDteDoc1.Date))
     else
        sFiltro := ' Where CmpEnt.DteDoc >= '+ QuotedStr(fDateToSQL(EdPsqDteDoc1.Date))

  end;

  if Trim(fLimpaStr(EdPsqDteDoc2.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.DteDoc <= '+ QuotedStr(fDateToSQL(EdPsqDteDoc2.Date))
     else
        sFiltro := ' Where CmpEnt.DteDoc <= '+ QuotedStr(fDateToSQL(EdPsqDteDoc2.Date))

  end;

  if EdPsqTotEnt1.Value > 0 then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.TotGec >= '+ QuotedStr(fConvertValor(FloatToStr(EdPsqTotEnt1.Value)))
     else
        sFiltro := ' Where CmpEnt.TotGec >= '+ QuotedStr(fConvertValor(FloatToStr(EdPsqTotEnt1.Value)));

  end;

  if EdPsqTotEnt2.Value > 0 then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.TotGec <= '+ QuotedStr(fConvertValor(FloatToStr(EdPsqTotEnt2.Value)))
     else
        sFiltro := ' Where CmpEnt.TotGec <= '+ QuotedStr(fConvertValor(FloatToStr(EdPsqTotEnt2.Value)))

  end;

  if GFlgAce = 'Sim' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and not CmpEnt.CodTip = '+ QuotedStr('3')
     else
        sFiltro := ' Where not CmpEnt.CodTip = '+ QuotedStr('3');

  end;

  with CmpEnt,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grEnt.SetFocus;

end;

procedure TfmManEpe.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if GFlgAce <> 'Sim' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FLGDEL,SEQIMP from GerPar';
             Open;

             if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

                GFlgAce := 'Sim';

                if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

                end
             else
                begin

                GEmpLog := 0;
                GFlgAce := 'Nao';

             end;
        end;
     end;
     
     with quSql,SQL do begin

          Close;
          Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('ApeEmp').AsString ) <> '' then
             EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
          else
             begin

             EdPsqApeEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmManEpe.EdPsqCodForExit(Sender: TObject);
begin
  if Trim( EdPsqCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinFor.NomFor From FinFor Where FinFor.CodFor = '+ QuotedStr(EdPsqCodFor.Text);
          Open;

          EdPsqNomFor.Text := FieldByName('NomFor').AsString;

     end;

     end
  else
     EdPsqNomFor.Text := '';
end;

procedure TfmManEpe.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManEpe.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;
  end;
end;

procedure TfmManEpe.EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           EdPsqNomFor.Text := fmAuxIni.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           EdPsqNomFor.Text := fmAuxPsq.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxPsq.CodFor);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManEpe.BbPsqForClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        EdPsqNomFor.Text := fmAuxIni.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManEpe.EdPsqId_CmpEntExit(Sender: TObject);
begin
  if Trim( EdPsqId_CmpEnt.Text ) <> '' then begin

     EdPsqId_CmpPed.Clear;
     
     EdPsqNumDoc.Clear;
     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodFor.Clear;
     EdPsqNomFor.Clear;
     EdPsqCodPfa.Clear;
     EdPsqNomPfa.Clear;

     EdPsqDteEnt1.Clear;
     EdPsqDteEnt2.Clear;
     EdPsqDteDoc1.Clear;
     EdPsqDteDoc2.Clear;

     EdPsqTotEnt1.Value := 0;
     EdPsqTotEnt2.Value := 0;

  end;
end;

procedure TfmManEpe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bEditar.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 117 then bExcluir.OnClick(Sender);

  if key = 121 then begin {F10 - Observações Quanto a Rejeicao do Pedido}

     if Trim(CmpEntSitEnt.Value) = 'Cancelada' then begin

        try

           fmPsqCen := TfmPsqCen.Create(Self);

           fmPsqCen.CmpEnt.Close;
           fmPsqCen.CmpEnt.Params[0].AsInteger := CmpEntId_CmpEnt.Value;
           fmPsqCen.CmpEnt.Open;

           fmPsqCen.ShowModal;

        finally

           FreeAndNil(fmPsqCen);

        end;
     end;   
  end;

  if key = 122 then begin // F11-Ocorrencias do Pedido //

     if CmpEntFlgOco.Value = 'Sim' then begin

        try

           fmPsqOce := TfmPsqOce.Create(Self);

           fmPsqOce.CmpVal.Close;
           fmPsqOce.CmpVal.Params[0].AsInteger := CmpEntId_CmpEnt.Value;
           fmPsqOce.CmpVal.Open;

           fmPsqOce.CmpQtd.Close;
           fmPsqOce.CmpQtd.Params[0].AsInteger := CmpEntId_CmpEnt.Value;
           fmPsqOce.CmpQtd.Open;

           fmPsqOce.ShowModal;

        finally

           FreeAndNil(fmPsqOce);

        end;
     end;
  end;
end;

procedure TfmManEpe.FormShow(Sender: TObject);
begin
  inherited;

  EdPsqDteEnt1.Date := Date;
  EdPsqDteEnt2.Date := Date;

  if GFlgAce = 'Nao' then begin

     CmpEnt.Close;
     CmpEnt.Params[0].AsDateTime := Date;
     CmpEnt.Open;

     end
  else
     begin

     sOrdem := ' Order by CmpEnt.Id_CmpEnt';

     sFiltro := ' Where CmpEnt.DteEnt = '+ QuotedStr(fDateToSQL(date)) +' and not CmpEnt.CodTip = '+ QuotedStr('3');

     with CmpEnt,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;
  end;

  EdPsqId_CmpEnt.SetFocus;
  
end;

procedure TfmManEpe.BbPsqPfaClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqPfa := TfmPsqPfa.Create(Self);

     with fmPsqPfa.EstPfa,SQL do begin

          Close;
          Text := ' Select EstPfa.CodPfa,'+
                  '        EstPfa.TipPfa,'+
                  '        EstPfa.DscPfa,'+
                  '        EstPfa.DsrPfa,'+
                  '        EstPfa.CodCf1,'+
                  '        EstPfa.CodCf2,'+
                  '        EstPfa.IntFin,'+
                  '        EstPfa.AtuEst,'+
                  '        EstPfa.ConSum,'+
                  '        EstPfa.ModPfa '+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString := 'Entrada';

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

        EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
        EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

     end;

  finally   

     FreeAndNil(fmPsqPfa);

  end;
end;

procedure TfmManEpe.DsEntDataChange(Sender: TObject; Field: TField);
var
  sText : string;
begin
  inherited;

  Label23.Caption := ' ';
  
  if CmpEntId_CmpEnt.Value > 0 then begin

     if Trim(CmpEntSitEnt.Value) = 'Concluida' then begin

        if CmpEntAtuEst.Value = 'Sim' then Label23.Caption := 'CTRL+C-Custos';

     end;
  end;

  if CmpEntCodFor.Value > 0 then
     pnNomFor.Caption := ' Fornecedor : ' + FNumZeros(IntToStr(CmpEntCodFor.Value),7) + ' - ' + CmpEntNomFor.Value
  else
     pnNomFor.Caption := ' Fornecedor : ';

  if Trim(CmpEntSitEnt.Value) = 'Cancelada' then sText := 'F10 -';

  if Trim( sText ) <> '' then
     pnSitEnt.Caption := sText + ' ' + Trim(CmpEntSitEnt.Value)
  else
     pnSitEnt.Caption := Trim(CmpEntSitEnt.Value);

end;

procedure TfmManEpe.EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqPfa := TfmPsqPfa.Create(Self);

        with fmPsqPfa.EstPfa,SQL do begin

             Close;
             Text := ' Select EstPfa.CodPfa,'+
                     '        EstPfa.TipPfa,'+
                     '        EstPfa.DscPfa,'+
                     '        EstPfa.DsrPfa,'+
                     '        EstPfa.CodCf1,'+
                     '        EstPfa.CodCf2,'+
                     '        EstPfa.IntFin,'+
                     '        EstPfa.AtuEst,'+
                     '        EstPfa.ConSum,'+
                     '        EstPfa.ModPfa '+
                     ' From EstPfa'+
                     ' Where TipPfa = :TipPfa'+
                     ' Order by DscPfa';

             with Params do begin

                  Params[0].AsString := 'Entrada';

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
           EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

        end;

     finally   

        FreeAndNil(fmPsqPfa);

     end;
  end;
end;

procedure TfmManEpe.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEpe.EdPsqCodPfaExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPfa.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstPfa.DscPfa'+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = '+ QuotedStr('Entrada')+
                  '   and EstPfa.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text);
          Open;

          EdPsqNomPfa.Text := FieldByName('DscPfa').AsString;

     end;

     end
  else
     EdPsqNomPfa.Text := '';
end;

procedure TfmManEpe.bEditarClick(Sender: TObject);
var
  i     : integer;
  Found : integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpEntId_CmpEnt.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManEnt then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe uma Entrada em Andamento.','E');

           fmManEnt.WindowState := wsNormal;
           fmManEnt.BringToFront;

           end
        else
           begin

           Id_CmpEnt := CmpEntId_CmpEnt.Value;

           sFiltro := ' Where CmpEnt.Id_CmpEnt = '+ QuotedStr(IntToStr(CmpEntId_CmpEnt.Value));

           with CmpEnt,SQL do begin

                Close;
                Text := sBase + sFiltro;
                Open;

           end;

           fmManEnt := TfmManEnt.Create(Self);
           fmManEnt.Show;

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManEpe.bIncluirClick(Sender: TObject);
var
  i     : integer;
  Found : integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManEnt then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe uma Entrada em Andamento.','E');

        fmManEnt.WindowState := wsNormal;
        fmManEnt.BringToFront;

        end
     else
        begin

        Id_CmpEnt := 0;

        sFiltro := ' Where CmpEnt.Id_CmpEnt = :Id_CmpEnt';

        with CmpEnt,SQL do begin

             Close;
             Text := sBase + sFiltro;

             with Params do begin

                  Params[0].AsInteger := Id_CmpEnt;

             end;

             Open;

        end;

        fmManEnt := TfmManEnt.Create(Self);
        fmManEnt.Show;

     end;

     end
  else
     fmsgErro(GMensagem,Nil);     
end;

procedure TfmManEpe.bExcluirClick(Sender: TObject);
var
  i     : integer;
  Found : integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpEntId_CmpEnt.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManEnt then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe uma Entrada em Andamento.','E');

           fmManEnt.WindowState := wsNormal;
           fmManEnt.BringToFront;

           end
        else
           begin

           if Trim(CmpEntSitEnt.Value) = 'Nao Concluida' then begin

              if fMsg('Confirma a Exclusão da Entrada ?','S') then begin

                 CmpEnt.Delete;

                 with CmpEnt do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         if CmpEnt.State <> dsBrowse then CmpEnt.CancelUpdates;

                         grEnt.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;

                 CmpEnt.Close;
                 CmpEnt.Open;

              end;

              end
           else
              begin

              if Trim(CmpEntSitEnt.Value) = 'Concluida' then fMsg('Operação não Pode ser Realizada. Entrada com Lançamento já Realizado.','E')

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManEpe.EdPsqId_CmpEntKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManEpe.EdPsqNumDocExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNumDoc.Text ) <> '' then begin

     EdPsqId_CmpEnt.Clear;
     EdPsqId_CmpPed.Clear;
     
     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodFor.Clear;
     EdPsqNomFor.Clear;
     EdPsqCodPfa.Clear;
     EdPsqNomPfa.Clear;

     EdPsqDteEnt1.Clear;
     EdPsqDteEnt2.Clear;
     EdPsqDteDoc1.Clear;
     EdPsqDteDoc2.Clear;

     EdPsqTotEnt1.Value := 0;
     EdPsqTotEnt2.Value := 0;

  end;
end;

procedure TfmManEpe.bImprimirClick(Sender: TObject);
var
  i     : integer;
  Found : integer;
begin
  inherited;
  if CmpEntId_CmpEnt.Value > 0 then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManEnt then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe uma Entrada em Andamento.','E');

        fmManEnt.WindowState := wsNormal;
        fmManEnt.BringToFront;

        end
     else
        begin
  
        if fMsg('Confirma impressão da via de controle ?','S') then begin

           try

              fmManE05 := TfmManE05.Create(Self);

              fmManE05.CmpEnt.Close;
              fmManE05.CmpEnt.Params[0].AsInteger := CmpEntId_CmpEnt.Value;
              fmManE05.CmpEnt.Open;

              fmManE05.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE05);

           end;
        end;
     end;
  end;
end;

procedure TfmManEpe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #3 then begin {Vencimentos Ctrl+C}

     if CmpEntId_CmpEnt.Value > 0 then begin

        if Trim(CmpEntSitEnt.Value) = 'Concluida' then begin

           if CmpEntAtuEst.Value = 'Sim' then begin

              try

                 fmManPrc := TfmManPrc.Create(Self);

                 fmManPrc.CmpAen.Close;
                 fmManPrc.CmpAen.Params[0].AsInteger := CmpEntId_CmpEnt.Value;
                 fmManPrc.CmpAen.Open;

                 fmManPrc.ShowModal;

              finally

                 FreeAndNil(fmManPrc);

              end;
           end;   
        end;
     end;
  end;

  if key = #6 then begin {Vencimentos Ctrl+F}

     if CmpEntId_CmpEnt.Value > 0 then begin

        if Trim(CmpEntSitEnt.Value) = 'Concluida' then begin

           try

              fmManSin := TfmManSin.Create(Self);
              fmManSin.ShowModal;

           finally

              FreeAndNil(fmManSin);

           end;
        end;
     end;
  end;
end;

procedure TfmManEpe.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i     : integer;
  Found : integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManEnt then Found := i;

  end;

  if Found >= 0 then
     fmsgErro('Existem Entradas em Andamento. Por Favor Feche o Formulario.',Nil)
  else
     Action := CaFree;

end;

procedure TfmManEpe.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManEpe := nil;
end;

procedure TfmManEpe.CmpEn2CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if CmpEn2Id_CmpEn2.Value > 0 then
     Text := CmpEn2CodClp.Value+'-'+CmpEn2CodGru.Value+'.'+CmpEn2CodSub.Value+'.'+CmpEn2CodPro.Value
  else
     Text := '';
end;

end.

