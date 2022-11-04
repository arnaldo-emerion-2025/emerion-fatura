unit ManCen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxDBELib, ppDB, ppDBPipe, ppBands, ppClass,
  ppStrtch, ppMemo, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit;

type
  TfmManCen = class(TfmPadrao)
    CmpEn2: TwwQuery;
    DsEn2: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
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
    CmpEntCODPFA: TStringField;
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
    UpEnt: TUpdateSQL;
    CmpEntDTEOPE: TDateTimeField;
    Label15: TLabel;
    EdPsqNumDoc: TdxColorEdit;
    bCancelar: TBitBtn;
    CmpEntID_CMPENT: TIntegerField;
    CmpEntID_CMPPED: TIntegerField;
    CmpEntNOMFOR: TStringField;
    CmpEntDTCENT: TDateTimeField;
    CmpEntHRCENT: TStringField;
    CmpEntUSCENT: TIntegerField;
    CmpEntOBCEN1: TStringField;
    CmpEntOBCEN2: TStringField;
    CmpEntOBCEN3: TStringField;
    CmpEntSITENT: TStringField;
    CmpEn2ID_CMPEN2: TIntegerField;
    CmpEn2CODCLP: TStringField;
    CmpEn2CODGRU: TStringField;
    CmpEn2CODSUB: TStringField;
    CmpEn2CODPRO: TStringField;
    CmpEn2CODITE: TStringField;
    CmpEntATUEST: TStringField;
    CmpEntINTFIN: TStringField;
    CmpEntCODFOR: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqForClick(Sender: TObject);
    procedure BbPsqPfaClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqId_CmpEntExit(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodForExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure EdPsqId_CmpEntKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqNumDocExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsEntDataChange(Sender: TObject; Field: TField);
    procedure bCancelarClick(Sender: TObject);
    procedure CmpEn2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManCen : TfmManCen;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqPfa, ManPri,
     AuxPsq, AuxIni, ManEnt, ManObc;

{$R *.DFM}

procedure TfmManCen.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select CmpEnt.Id_CmpEnt,'+
           '        CmpEnt.Id_CmpPed,'+
           '        CmpEnt.DteOpe,'+
           '        CmpEnt.NumDoc,'+
           '        CmpEnt.HreEnt,'+
           '        CmpEnt.CodFor,'+
           '        CmpEnt.CodPfa,'+
           '        CmpEnt.AtuEst,'+
           '        CmpEnt.IntFin,'+
           '        CmpEnt.TotEnc,'+
           '        CmpEnt.TotIpc,'+
           '        CmpEnt.TotGec,'+
           '        CmpEnt.DtcEnt,'+
           '        CmpEnt.HrcEnt,'+
           '        CmpEnt.UscEnt,'+
           '        CmpEnt.ObcEn1,'+
           '        CmpEnt.ObcEn2,'+
           '        CmpEnt.ObcEn3,'+
           '        CmpEnt.SitEnt,'+
           '        FinFor.NomFor '+
           ' From CmpEnt LEFT JOIN FinFor ON (CmpEnt.CodFor = FinFor.CodFor)';

end;

procedure TfmManCen.bPesquisaClick(Sender: TObject);
begin

  ActiveControl := nil;

  case rgOrdem.Itemindex of
       0: sOrdem := ' Order by CmpEnt.Id_CmpPed';
       1: sOrdem := ' Order by CmpEnt.Id_CmpEnt';
       2: sOrdem := ' Order by CmpEnt.CodFor,CmpEnt.Id_CmpEnt';
       3: sOrdem := ' Order by CmpEnt.DteOpe,CmpEnt.Id_CmpEnt';
       4: sOrdem := ' Order by CmpEnt.DteDoc,CmpEnt.Id_CmpEnt';
  end;

  sFiltro := ' Where CmpEnt.SitEnt = '+ QuotedStr('Concluida');

  if Trim( EdPsqId_CmpEnt.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.Id_CmpEnt = '+ QuotedStr(EdPsqId_CmpEnt.Text);
    
  if Trim( EdPsqId_CmpPed.Text ) <> '' then sFiltro := sFiltro + ' and Exists(Select * From CmpPe3 Where CmpPe3.Id_CmpEnt = CmpEnt.Id_CmpEnt and CmpPe3.Id_CmpPed = '+ QuotedStr(EdPsqId_CmpPed.Text) +')';

  if Trim( EdPsqNumDoc.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.NumDoc = '+ QuotedStr(EdPsqNumDoc.Text);
  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodFor.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodFor = '+ QuotedStr(EdPsqCodFor.Text);
  if Trim( EdPsqCodPfa.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text);

  if Trim(fLimpaStr(EdPsqDteEnt1.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteOpe >= '+ QuotedStr(fDateToSQL(EdPsqDteEnt1.Date));
  if Trim(fLimpaStr(EdPsqDteEnt2.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteOpe <= '+ QuotedStr(fDateToSQL(EdPsqDteEnt2.Date));
  if Trim(fLimpaStr(EdPsqDteDoc1.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteDoc >= '+ QuotedStr(fDateToSQL(EdPsqDteDoc1.Date));
  if Trim(fLimpaStr(EdPsqDteDoc2.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteDoc <= '+ QuotedStr(fDateToSQL(EdPsqDteDoc2.Date));

  with CmpEnt,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grEnt.SetFocus;

end;

procedure TfmManCen.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select ApeEmp From GerEmp Where CodEmp = '''+EdPsqCodEmp.Text+'''';
          Open;

          EdPsqApeEmp.Text := quSql.FieldByName('ApeEmp').AsString;
     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmManCen.EdPsqCodForExit(Sender: TObject);
begin
  if Trim( EdPsqCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomFor From FinFor Where CodFor = '''+EdPsqCodFor.Text+'''';
          Open;

          EdPsqNomFor.Text := quSql.FieldByName('NomFor').AsString;

     end;

     end
  else
     EdPsqNomFor.Text := '';
end;

procedure TfmManCen.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManCen.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManCen.EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManCen.BbPsqForClick(Sender: TObject);
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

procedure TfmManCen.EdPsqId_CmpEntExit(Sender: TObject);
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

  end;
end;

procedure TfmManCen.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmManCen.FormShow(Sender: TObject);
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

     sFiltro := ' Where CmpEnt.SitEnt = '+ QuotedStr('Concluida') +
                '   and CmpEnt.DteEnt = '+ QuotedStr(fDateToSQL(date)) +
                '   and not CmpEnt.CodTip = '+ QuotedStr('3');

     with CmpEnt,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;
  end;

  EdPsqId_CmpEnt.SetFocus;
  
end;

procedure TfmManCen.BbPsqPfaClick(Sender: TObject);
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
                  '        EstPfa.ModPfa'+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  '   and EstPfa.ModPfa = :ModPfa'+
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString := 'Entrada';
               Params[1].AsString := 'Compras';

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

procedure TfmManCen.EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
                     '        EstPfa.ModPfa'+
                     ' From EstPfa'+
                     ' Where EstPfa.TipPfa = :TipPfa'+
                     '   and EstPfa.ModPfa = :ModPfa'+
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString := 'Entrada';
                  Params[1].AsString := 'Compras';

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

procedure TfmManCen.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCen.EdPsqCodPfaExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPfa.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPfa From EstPfa'+
                  ' Where TipPfa = '''+ 'Entrada' +''''+
                  '   and ModPfa = '''+ 'Compras' +''''+
                  '   and CodPfa = '''+ EdPsqCodPfa.Text +'''';
          Open;

          EdPsqNomPfa.Text := FieldByName('Dscfa').AsString;

     end;

     end
  else
     EdPsqNomPfa.Text := '';
end;

procedure TfmManCen.EdPsqId_CmpEntKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManCen.EdPsqNumDocExit(Sender: TObject);
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

  end;
end;

procedure TfmManCen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;     
end;

procedure TfmManCen.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCen := nil;
end;

procedure TfmManCen.DsEntDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if CmpEntCodFor.Value > 0 then
     pnNomFor.Caption := ' Fornecedor : ' + FNumZeros(IntToStr(CmpEntCodFor.Value),7) + ' - ' + CmpEntNomFor.Value
  else
     pnNomFor.Caption := ' Fornecedor : ';

  pnSitEnt.Caption := CmpEntSitEnt.Value;

end;

procedure TfmManCen.bCancelarClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpEntId_CmpEnt.Value > 0 then begin

        try

           fmManObc := TfmManObc.Create(Self);
           fmManObc.ShowModal;

        finally

           FreeAndNil(fmManObc);

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManCen.CmpEn2CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if CmpEn2Id_CmpEn2.Value > 0 then
     Text := CmpEn2CodClp.Value+'-'+CmpEn2CodGru.Value+'.'+CmpEn2CodSub.Value+'.'+CmpEn2CodPro.Value
  else
     Text := '';
end;

end.

