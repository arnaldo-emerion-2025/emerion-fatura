unit ManGco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxColorPickEdit, dxColorCurrencyEdit, dxColorEdit,
  dxColorDateEdit, RDprint;

type
  TfmManGco = class(TfmPadrao)
    PedGer: TwwQuery;
    DsGer: TwwDataSource;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteGr1: TdxColorDateEdit;
    EdPsqId_PedGer: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteGr2: TdxColorDateEdit;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    bPsqVen: TSpeedButton;
    EdPsqApeVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    grGer: ThGrid;
    quSql: TwwQuery;
    bExcluir: TSpeedButton;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    pnSitGer: TPanel;
    pnHreGer: TPanel;
    PedGr2: TwwQuery;
    UpGer: TUpdateSQL;
    Label13: TLabel;
    Label14: TLabel;
    EdPsqPedCli: TdxColorEdit;
    pnDteGer: TPanel;
    Label23: TLabel;
    Label15: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    PsqEmp: TSpeedButton;
    EdPsqApeEmp: TdxColorEdit;
    PaintBox: TPaintBox;
    dbGer: TdxDBGraphicEdit;
    dbGr2: TdxDBGraphicEdit;
    grGr2: ThGrid;
    DsGr2: TwwDataSource;
    PedGr2QTPGR2: TFloatField;
    PedGr2QTSGR2: TFloatField;
    PedGr2QTLGR2: TFloatField;
    PedGr2SLDGR2: TFloatField;
    PedGr2VLQGR2: TFloatField;
    PedGr2IPIGR2: TFloatField;
    PedGr2ICMGR2: TFloatField;
    PedGr2TOTGR2: TFloatField;
    PedGerCODVEN: TIntegerField;
    PedGerPEDCLI: TStringField;
    PedGerTOTIPI: TFloatField;
    PedGerTOTITE: TFloatField;
    PedGerTOTGER: TFloatField;
    pnNomCli: TPanel;
    pnDesGr2: TPanel;
    PedGr2CODGRU: TStringField;
    PedGr2CODSUB: TStringField;
    PedGr2CODPRO: TStringField;
    PedGr2CODITE: TStringField;
    PedGr2DESGR2: TStringField;
    Label1: TLabel;
    EdPsqSitGer: TdxColorPickEdit;
    pnApeVen: TPanel;
    PedGerNOMCLI: TStringField;
    PedGr2ID_PEDGR2: TIntegerField;
    PedGerID_PEDGER: TIntegerField;
    PedGerTOTSUB: TFloatField;
    PedGerSITGER: TStringField;
    PedGerAPEVEN: TStringField;
    PedGerDTEGER: TDateTimeField;
    PedGerHREGER: TStringField;
    PedGr2CODCLP: TStringField;
    Label5: TLabel;
    EdPsqCodAtd: TdxColorEdit;
    bPsqAtd: TSpeedButton;
    EdPsqNomAtd: TdxColorEdit;
    PedPar: TwwQuery;
    PedParFLGIMP: TStringField;
    PedParTIPATD: TStringField;
    PedParEXIREN: TStringField;
    Label3: TLabel;
    EdPsqCl1Gr2: TdxColorEdit;
    Label12: TLabel;
    EdPsqCl2Gr2: TdxColorEdit;
    Label19: TLabel;
    EdPsqCl3Gr2: TdxColorEdit;
    PedGerQTIGR4: TIntegerField;
    PedGerDTEDEL: TDateTimeField;
    PedGerHREDEL: TStringField;
    PedGerUSUDEL: TIntegerField;
    PedGerOB1DEL: TStringField;
    PedGerOB2DEL: TStringField;
    PedGerOB3DEL: TStringField;
    PedParFLGCOT: TStringField;
    Label2: TLabel;
    EdPsqCodICl: TdxColorEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqId_PedGerExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure DsGerDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqId_PedGerKeyPress(Sender: TObject; var Key: Char);
    procedure bEditarClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure EdPsqPedCliExit(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PsqEmpClick(Sender: TObject);
    procedure DsGr2DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure PedGr2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure bPsqAtdClick(Sender: TObject);
    procedure EdPsqCodAtdExit(Sender: TObject);
    procedure EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    {Private declarations}
  public
    {Public declarations}
    Id_PedGer : integer;
    sBase,sFiltro,sOrdem : string;
  end;

var
  Permissao : string;
  fmManGco  : TfmManGco;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, Bbacesso, ManGDB, PsqEmp,
     ManPri, AuxPsq, ManGc1, ManCpg, AuxIni, ManCge, ManE01, ImpF01, PsqCge;

{$R *.DFM}

procedure TfmManGco.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedGer.Id_PedGer,'+
           '        PedGer.DteGer,'+
           '        PedGer.HreGer,'+
           '        PedGer.PedCli,'+
           '        PedGer.CodVen,'+
           '        PedGer.TotIte,'+
           '        PedGer.TotIpi,'+
           '        PedGer.TotSub,'+
           '        PedGer.TotGer,'+
           '        PedGer.QtiGr4,'+
           '        PedGer.DteDel,'+
           '        PedGer.HreDel,'+
           '        PedGer.UsuDel,'+
           '        PedGer.Ob1Del,'+
           '        PedGer.Ob2Del,'+
           '        PedGer.Ob3Del,'+
           '        PedGer.SitGer,'+
           '        FinCli.NomCli,'+
           '        FinVen.ApeVen '+
           ' From PedGer LEFT JOIN FinCli ON (PedGer.CodCli = FinCli.CodCli)'+
           '             LEFT JOIN FinVen ON (PedGer.CodVen = FinVen.CodVen)';

  if GCodVen_Id > 0 then begin

     sOrdem := ' Order by PedGer.Id_PedGer';

     sFiltro := ' Where PedGer.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id)) +' and PedGer.DteGer = '+ QuotedStr(fDateToSQL(Date));

     with PedGer,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;

     end
  else
     begin

     PedGer.Close;
     PedGer.Params[0].AsDateTime := Date;
     PedGer.Open;

  end;
end;

procedure TfmManGco.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

  sOrdem := ' Order by PedGer.Id_PedGer';

  sFiltro := '';

  if Trim( EdPsqSitGer.Text ) <> 'Todos' then sFiltro := ' Where PedGer.SitGer = '+ QuotedStr(EdPsqSitGer.Text);

  if Trim( EdPsqId_PedGer.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedGer.Id_PedGer = '+ QuotedStr(EdPsqId_PedGer.Text)
     else
        sFiltro := ' Where PedGer.Id_PedGer = '+ QuotedStr(EdPsqId_PedGer.Text);

  end;

  if Trim( EdPsqPedCli.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedGer.PedCli LIKE '+ QuotedStr('%'+ EdPsqPedCli.Text +'%')
     else
        sFiltro := ' Where PedGer.PedCli LIKE '+ QuotedStr('%'+ EdPsqPedCli.Text +'%');

  end;

  if Trim( EdPsqCodCli.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedGer.CodCli = '+ QuotedStr(EdPsqCodCli.Text)
     else
        sFiltro := ' Where PedGer.CodCli = '+ QuotedStr(EdPsqCodCli.Text);

  end;

  if GCodVen_Id > 0 then begin

     if Trim( EdPsqCodVen.Text ) <> '' then begin

        if Trim( EdPsqCodAtd.Text ) <> '' then begin

           if pos('Where', sFiltro) > 0 then
              sFiltro := sFiltro + ' and ( PedGer.CodVen = '+ QuotedStr(EdPsqCodVen.Text) +' or PedGer.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text) +' )'
           else
              sFiltro := ' Where ( PedGer.CodVen = '+ QuotedStr(EdPsqCodVen.Text) +' or PedGer.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text) +' )';

           end
        else
           begin

           if pos('Where', sFiltro) > 0 then
              sFiltro := sFiltro + ' and PedGer.CodVen = '+ QuotedStr(EdPsqCodVen.Text)
           else
              sFiltro := ' Where PedGer.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

        end;

        end
     else
        begin

        if Trim( EdPsqCodAtd.Text ) <> '' then begin

           if pos('Where', sFiltro) > 0 then
              sFiltro := sFiltro + ' and PedGer.CodAtd = '+ QuotedStr(EdPsqCodVen.Text)
           else
              sFiltro := ' Where PedGer.CodAtd = '+ QuotedStr(EdPsqCodVen.Text);

        end;
     end;

     end
  else
     begin

     if Trim( EdPsqCodVen.Text ) <> '' then begin

        if pos('Where', sFiltro) > 0 then
           sFiltro := sFiltro + ' and PedGer.CodVen = '+ QuotedStr(EdPsqCodVen.Text)
        else
           sFiltro := ' Where PedGer.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

     end;

     if Trim( EdPsqCodAtd.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and PedGer.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text)
        else
           sFiltro := ' Where PedGer.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text);

     end;
  end;

  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedGer.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text)
     else
        sFiltro := ' Where PedGer.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

  end;

  if Trim(fLimpaStr(EdPsqDteGr1.Text)) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + '  and PedGer.DteGer >= '+ QuotedStr(fDateToSQL(EdPsqDteGr1.Date))
     else
        sFiltro := ' Where PedGer.DteGer >= '+ QuotedStr(fDateToSQL(EdPsqDteGr1.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteGr2.Text)) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + '  and PedGer.DteGer <= '+ QuotedStr(fDateToSQL(EdPsqDteGr2.Date))
     else
        sFiltro := ' Where PedGer.DteGer <= '+ QuotedStr(fDateToSQL(EdPsqDteGr2.Date));

  end;

  if Trim( EdPsqCodICl.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + '  and Exists(Select * From PedGr2 Where PedGr2.Id_PedGer = PedGer.Id_PedGer and PedGr2.CodICl LIKE '+ QuotedStr('%'+ EdPsqCodICl.Text +'%')
     else
        sFiltro := sFiltro + '  Where Exists(Select * From PedGr2 Where PedGr2.Id_PedGer = PedGer.Id_PedGer and PedGr2.CodICl LIKE '+ QuotedStr('%'+ EdPsqCodICl.Text +'%');

  end;

  if Trim( EdPsqCl1Gr2.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + '  and Exists(Select * From PedGr2 Where PedGr2.Id_PedGer = PedGer.Id_PedGer and PedGr2.Cl1Gr2 LIKE '+ QuotedStr('%'+ EdPsqCl1Gr2.Text +'%')
     else
        sFiltro := sFiltro + '  Where Exists(Select * From PedGr2 Where PedGr2.Id_PedGer = PedGer.Id_PedGer and PedGr2.Cl1Gr2 LIKE '+ QuotedStr('%'+ EdPsqCl1Gr2.Text +'%');

  end;

  if Trim( EdPsqCl2Gr2.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then begin

        if pos('PedGr2', sFiltro) > 0 then
           sFiltro := sFiltro + '  and PedGr2.Cl2Gr2 LIKE '+ QuotedStr('%'+ EdPsqCl2Gr2.Text +'%')
        else
           sFiltro := sFiltro + '  and Exists(Select * From PedGr2 Where PedGr2.Id_PedGer = PedGer.Id_PedGer and PedGr2.Cl2Gr2 LIKE '+ QuotedStr('%'+ EdPsqCl2Gr2.Text +'%');

        end
     else
        begin

        if pos('PedGr2', sFiltro) > 0 then
           sFiltro := sFiltro + '  and PedGr2.Cl2Gr2 LIKE '+ QuotedStr('%'+ EdPsqCl2Gr2.Text +'%')
        else
           sFiltro := sFiltro + '  Where Exists(Select * From PedGr2 Where PedGr2.Id_PedGer = PedGer.Id_PedGer and PedGr2.Cl2Gr2 LIKE '+ QuotedStr('%'+ EdPsqCl2Gr2.Text +'%');

     end;
  end;

  if Trim( EdPsqCl3Gr2.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then begin

        if pos('PedGr2', sFiltro) > 0 then
           sFiltro := sFiltro + '  and PedGr2.Cl3Gr2 LIKE '+ QuotedStr('%'+ EdPsqCl3Gr2.Text +'%')
        else
           sFiltro := sFiltro + '  and Exists(Select * From PedGr2 Where PedGr2.Id_PedGer = PedGer.Id_PedGer and PedGr2.Cl3Gr2 LIKE '+ QuotedStr('%'+ EdPsqCl3Gr2.Text +'%');

        end
     else
        begin

        if pos('PedGr2', sFiltro) > 0 then
           sFiltro := sFiltro + '  and PedGr2.Cl3Gr2 LIKE '+ QuotedStr('%'+ EdPsqCl3Gr2.Text +'%')
        else
           sFiltro := sFiltro + '  Where Exists(Select * From PedGr2 Where PedGr2.Id_PedGer = PedGer.Id_PedGer and PedGr2.Cl3Gr2 LIKE '+ QuotedStr('%'+ EdPsqCl3Gr2.Text +'%');

     end;
  end;

  if pos('PedGr2', sFiltro) > 0 then sFiltro := sFiltro + ')';
  
  with PedGer,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grGer.SetFocus;

end;

procedure TfmManGco.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomCli From FinCli Where CodCli = '+ QuotedStr(EdPsqCodCli.Text);
          Open;

          EdPsqNomCli.Text := FieldByName('NomCli').AsString;

     end;

     end
  else
     EdPsqNomCli.Text := '';
end;

procedure TfmManGco.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxIni.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqCodCli.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxPsq.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxPsq.CodCli);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqCodCli.SetFocus;

  end;
end;

procedure TfmManGco.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
          Open;

          EdPsqApeVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqApeVen.Text := '';
end;

procedure TfmManGco.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqApeVen.Text := fmAuxIni.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqCodVen.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           EdPsqApeVen.Text := fmAuxPsq.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqCodVen.SetFocus;

  end;
end;

procedure TfmManGco.bPsqCliClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'C';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCli > 0 then begin

        EdPsqNomCli.Text := fmAuxIni.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;   

  EdPsqCodCli.SetFocus;

end;

procedure TfmManGco.bPsqVenClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdPsqApeVen.Text := fmAuxIni.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqCodVen.SetFocus;

end;

procedure TfmManGco.EdPsqId_PedGerExit(Sender: TObject);
begin
  if Trim( EdPsqId_PedGer.Text ) <> '' then begin

     EdPsqPedCli.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqApeVen.Clear;

     EdPsqDteGr1.Clear;
     EdPsqDteGr2.Clear;

  end;
end;

procedure TfmManGco.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 112 then begin

     if PedGerId_PedGer.Value > 0 then begin

        try

           fmManCge := TfmManCge.Create(Self);
           
           fmManCge.Id_PedGer := PedGerId_PedGer.Value;

           fmManCge.ShowModal;

        finally

           FreeAndNil(fmManCge);

        end;
     end;
  end;

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

  if key = 117 then bExcluir.OnClick(Sender);

  if key = 121 then begin {F10 - Observações Quanto a Rejeicao do Pedido}

     if Trim(PedGerSitGer.Value) = 'Cancelado' then begin

        try

           fmPsqCge := TfmPsqCge.Create(Self);

           fmPsqCge.PedGer.Close;
           fmPsqCge.PedGer.Params[0].AsInteger := PedGerId_PedGer.Value;
           fmPsqCge.PedGer.Open;

           fmPsqCge.ShowModal;

        finally

           FreeAndNil(fmPsqCge);

        end;
     end;
  end;
end;

procedure TfmManGco.FormShow(Sender: TObject);
begin
  inherited;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then
     Permissao := fAcesso('PED0202')
  else
     Permissao := 'SSSSS';

  if copy(Permissao,1,1) = 'N' then bIncluir.Enabled := False;
  if copy(Permissao,2,1) = 'N' then bEditar.Enabled := False;
  if copy(Permissao,3,1) = 'N' then bExcluir.Enabled := False;

  if GCodVen_Id > 0 then begin

     sOrdem := ' Order by PedGer.Id_PedGer';

     if Trim(PedParTipAtd.Value) = 'Vendedor' then
        sFiltro := ' Where PedGer.DteGer = '+ QuotedStr(fDateToSQL(Date)) +' and (PedGer.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id)) +' or PedGer.CodAtd = '+ QuotedStr(IntToStr(GCodVen_Id)) +')'
     else
        begin

        if GCodAtd_Id > 0 then
           sFiltro := ' Where PedGer.DteGer = '+ QuotedStr(fDateToSQL(Date)) +' and (PedGer.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id)) +' or PedGer.CodAtd = '+ QuotedStr(IntToStr(GCodAtd_Id)) +')'
        else
           sFiltro := ' Where PedGer.DteGer = '+ QuotedStr(fDateToSQL(Date)) +' and PedGer.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

     end;

     with PedGer,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;

     end
  else
     begin

     if GCodAtd_Id > 0 then begin

        sFiltro := ' Where PedGer.DteGer = '+ QuotedStr(fDateToSQL(Date)) +' and PedGer.CodAtd = '+ QuotedStr(IntToStr(GCodAtd_Id));

        with PedGer,SQL do begin

             Close;
             Text := sBase + sFiltro + sOrdem;
             Open;

        end;

        end
     else
        begin

        PedGer.Close;
        PedGer.Params[0].AsDateTime := Date;
        PedGer.Open;

     end;
  end;

  if GCodVen_Id > 0 then begin

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        EdPsqNomAtd.Text := GNomVen_Id;
        EdPsqCodAtd.Text := IntToStr( GCodVen_Id );

        if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then begin

           bPsqAtd.Enabled := False;

           EdPsqCodAtd.Enabled := False;

           EdPsqCodAtd.Font.Style := [fsBold];

        end;
     end;

     EdPsqApeVen.Text := GNomVen_Id;
     EdPsqCodVen.Text := IntToStr( GCodVen_Id );

     if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then begin

        bPsqVen.Enabled := False;

        EdPsqCodVen.Enabled := False;

        EdPsqCodVen.Font.Style := [fsBold];

     end;
  end;

  if GCodAtd_Id > 0 then begin

     if Trim(PedParTipAtd.Value) = 'Atendente' then begin

        EdPsqNomAtd.Text := GNomAtd_Id;
        EdPsqCodAtd.Text := IntToStr( GCodAtd_Id );

        if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then begin

           bPsqAtd.Enabled := False;

           EdPsqCodAtd.Enabled := False;

           EdPsqCodAtd.Font.Style := [fsBold];

        end;
     end;   
  end;

  EdPsqDteGr1.Date := Date;
  EdPsqDteGr2.Date := Date;

  EdPsqId_PedGer.SetFocus;

end;

procedure TfmManGco.DsGerDataChange(Sender: TObject; Field: TField);
var
  sText : string;
begin
  inherited;

  if Trim(PedGerSitGer.Value) = 'Cancelado' then sText := 'F10 -';

  if Trim( sText ) <> '' then
     pnSitGer.Caption := sText + ' ' + Trim(PedGerSitGer.Value)
  else
     pnSitGer.Caption := Trim(PedGerSitGer.Value);

  pnHreGer.Caption := PedGerHreGer.Value;

  pnNomCli.Caption := ' Cliente : ' + PedGerNomCli.Value;

  pnApeVen.Caption := ' Vendedor : ' + PedGerApeVen.Value;

  if PedGerId_PedGer.Value > 0 then
     pnDteGer.Caption := DateToStr(PedGerDteGer.Value)
  else
     pnDteGer.Caption := ' ';

end;

procedure TfmManGco.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManGco.EdPsqId_PedGerKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManGco.bEditarClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,2,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManGc1 then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe Gerenciamentos em Andamento.','E');

           fmManGc1.WindowState := wsNormal;
           fmManGc1.BringToFront;

           end
        else
           begin
  
           if PedGerId_PedGer.Value > 0 then begin

              Id_PedGer := PedGerId_PedGer.Value;
              
              sFiltro := ' Where PedGer.Id_PedGer = '+ QuotedStr(IntToStr(PedGerId_PedGer.Value));

              with PedGer,SQL do begin

                   Close;
                   Text := sBase + sFiltro;
                   Open;

              end;

              if (Trim(PedGerSitGer.Value) = 'Concluido') or
                 (Trim(PedGerSitGer.Value) = 'Parcialmente Atendido') then begin

                 PedGer.Edit;

                 PedGerSitGer.Value := 'Processo de Alteracao';

                 with PedGer do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         if PedGer.State <> dsBrowse then PedGer.CancelUpdates;

                         EdPsqId_PedGer.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;
              end;

              fmManGc1 := TfmManGc1.Create(Self);
              fmManGc1.Show;

           end;
        end;

        end
     else
        fMsgErro(GMensagem_0002,nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManGco.bIncluirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,1,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManGc1 then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe Gerenciamentos em Andamento.','E');

           fmManGc1.WindowState := wsNormal;
           fmManGc1.BringToFront;

           end
        else
           begin

           Id_PedGer := 0;

           fmManGc1 := TfmManGc1.Create(Self);
           fmManGc1.Show;

        end;

        end
     else
        fMsgErro(GMensagem_0002,nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManGco.bExcluirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,3,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManGc1 then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe Gerenciamentos em Andamento.','E');

           fmManGc1.WindowState := wsNormal;
           fmManGc1.BringToFront;

           end
        else
           begin

           if PedGerId_PedGer.Value > 0 then begin
           
              Id_PedGer := PedGerId_PedGer.Value;

              sFiltro := ' Where PedGer.Id_PedGer = '+ QuotedStr(IntToStr(PedGerId_PedGer.Value));

              with PedGer,SQL do begin

                   Close;
                   Text := sBase + sFiltro;
                   Open;

              end;

              if PedGerId_PedGer.Value > 0 then begin

                 if Trim(PedGerSitGer.Value) = 'Nao Concluido' then begin

                    if fMsg('Confirma a Exclusão do Pedido Gerenciado ?','S') then begin

                       PedGer.Delete;

                       with PedGer do begin

                            fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                            try

                               ApplyUpdates; {Tenta aplicar as alterações};

                               fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                            except

                               fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                               if PedGer.State <> dsBrowse then PedGer.CancelUpdates;

                               grGer.SetFocus;

                               raise;

                            end;

                            CommitUpdates; {sucesso!, limpa o cache...}

                       end;

                       PedGer.Close;
                       PedGer.Open;

                       grGer.SetFocus;

                    end;

                    end
                 else
                    begin

                    if (Trim(PedGerSitGer.Value) = 'Concluido')             or
                       (Trim(PedGerSitGer.Value) = 'Processo de Alteracao') then begin

                       if fMsg('Confirma o cancelamento do gerenciamento do contrato ?','S') then begin

                          try

                             fmManCpg := TfmManCpg.Create(Self);
                             fmManCpg.ShowModal;

                          finally

                             FreeAndNil(fmManCpg);

                          end;

                          PedGer.Close;
                          PedGer.Open;

                       end;

                       end
                    else
                       begin

                       if (Trim(PedGerSitGer.Value) = 'Atendido') or
                          (Trim(PedGerSitGer.Value) = 'Parcialmente Atendido') then fMsg('Operação não Pode ser Realizada. Pedido Gerenciado Atendido.','E')

                       else if Trim(PedGerSitGer.Value) = 'Cancelado' then fMsg('Operação não Pode ser Realizada. Pedido Gerenciado Cancelado.','E');

                    end;
                 end;
              end;
           end;
        end;   

        end
     else
        fMsgErro(GMensagem_0002,nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManGco.bImprimirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManGc1 then Found := i;

  end;

  if Found >= 0 then begin

     fmsg('Existe Gerenciamentos em Andamento.','E');

     fmManGc1.WindowState := wsNormal;
     fmManGc1.BringToFront;

     end
  else
     begin

     if PedGerId_PedGer.Value > 0 then begin
     
        sFiltro := ' Where PedGer.Id_PedGer = '+ QuotedStr(IntToStr(PedGerId_PedGer.Value));

        with PedGer,SQL do begin

             Close;
             Text := sBase + sFiltro;
             Open;

        end;
     
        if Trim(PedGerSitGer.Value) <> 'Nao Concluido' then begin

           if fMsg('Confirma impressão da via de controle ?','O') then begin

              try

                 fmManE01 := TfmManE01.Create(Self);

                 fmManE01.PedGer.Close;
                 fmManE01.PedGer.Params[0].AsInteger := PedGerId_PedGer.Value;
                 fmManE01.PedGer.Open;

                 fmManE01.RLReport1.PreviewModal;

              finally

                 FreeAndNil(fmManE01);

              end;
           end;

           if PedParFlgCot.Value = 'Sim' then begin

              if PedGerQtiGr4.Value > 0 then begin

                 if fMsg('Confirma impressão da via de cotação para os fornecedores ?','O') then begin

                    try

                       fmImpF01 := TfmImpF01.Create(Self);

                       fmImpF01.Id_PedGer := PedGerId_PedGer.Value;

                       fmImpF01.PedGr4.Close;
                       fmImpF01.PedGr4.Params[0].AsInteger := PedGerId_PedGer.Value;
                       fmImpF01.PedGr4.Open;

                       fmImpF01.ShowModal;

                    finally

                       FreeAndNil(fmImpF01);

                    end;
                 end;
              end;     
           end;

           end
        else
           fmsgErro('Não é permitido impressão de processos não concluidos.',Nil);

     end;
  end;
end;

procedure TfmManGco.EdPsqPedCliExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqPedCli.Text ) <> '' then begin

     EdPsqId_PedGer.Clear;
     
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqApeVen.Clear;

     EdPsqDteGr1.Clear;
     EdPsqDteGr2.Clear;

  end;
end;

procedure TfmManGco.EdPsqCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
          Open;

          EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString;

     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmManGco.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);

        if GFlgAce = 'Sim' then begin

           with fmPsqEmp.GerEmp,SQL do begin

                Close;
                Text := ' Select NomEmp,CodEmp From GerEmp'+
                        ' Where CodFil > 0'+
                        ' Order by NomEmp';
                Open;

           end;
        end;

        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqApeEmp.Text := fmPsqEmp.NomEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmManGco.PsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);

     if GFlgAce = 'Sim' then begin

        with fmPsqEmp.GerEmp,SQL do begin

             Close;
             Text := ' Select GerEmp.CodEmp,'+
                     '        GerEmp.NomEmp '+
                     ' From GerEmp'+
                     ' Where GerEmp.CodFil > 0'+
                     ' Order by GerEmp.NomEmp';
             Open;

        end;
     end;

     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqApeEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManGco.DsGr2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnDesGr2.Caption := ' '+PedGr2DesGr2.Value;
end;

procedure TfmManGco.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManGc1 then Found := i;

  end;

  if Found >= 0 then
     fmsgErro('Existem Gerenciamentos em Andamento. Por Favor Feche o Formulario.',Nil)
  else
     Action := CaFree;

end;

procedure TfmManGco.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManGco := Nil;
end;

procedure TfmManGco.PedGr2CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if PedGr2Id_PedGr2.Value > 0 then
     Text := PedGr2CodClp.Value+ '-' +PedGr2CodGru.Value+ '.' +PedGr2CodSub.Value+ '.' +PedGr2CodPro.Value
  else
     Text := ' ';
end;

procedure TfmManGco.bPsqAtdClick(Sender: TObject);
begin
  inherited;
  if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqNomAtd.Text := fmAuxIni.NomVen;
           EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     end
  else
     begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Atendentes';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodAtd > 0 then begin

           EdPsqNomAtd.Text := fmAuxIni.NomAtd;
           EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodAtd);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  EdPsqCodAtd.SetFocus;

end;

procedure TfmManGco.EdPsqCodAtdExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodAtd.Text ) <> '' then begin

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdPsqCodAtd.Text);
             Open;

             EdPsqNomAtd.Text := FieldByName('ApeVen').AsString;

        end;

        end
     else
        begin

        with quSql,SQL do begin

             Close;
             Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text);
             Open;

             EdPsqNomAtd.Text := FieldByName('ApeAtd').AsString;

        end;
     end;
        
     end
  else
     EdPsqNomAtd.Text := '';
end;

procedure TfmManGco.EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'V';

           fmAuxIni.ShowModal;

           if fmAuxIni.CodVen > 0 then begin

              EdPsqNomAtd.Text := fmAuxIni.NomVen;
              EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodVen);

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        end
     else
        begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Atendentes';

           fmAuxIni.ShowModal;

           if fmAuxIni.CodAtd > 0 then begin

              EdPsqNomAtd.Text := fmAuxIni.NomAtd;
              EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodAtd);

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;
     end;

     EdPsqCodAtd.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'V';

           fmAuxPsq.ShowModal;

           if fmAuxPsq.CodVen > 0 then begin

              EdPsqNomAtd.Text := fmAuxPsq.NomVen;
              EdPsqCodAtd.Text := IntToStr(fmAuxPsq.CodVen);

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        end
     else
        begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Atendentes';

           fmAuxPsq.ShowModal;

           if fmAuxPsq.CodAtd > 0 then begin

              EdPsqNomAtd.Text := fmAuxPsq.NomAtd;
              EdPsqCodAtd.Text := IntToStr(fmAuxPsq.CodAtd);

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;
     end;

     EdPsqCodAtd.SetFocus;

  end;
end;

end.

