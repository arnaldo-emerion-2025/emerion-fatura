unit ManICl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, dxDBColorCurrencyEdit,
  dxDBColorLookupEdit, dxDBColorEdit, dxColorEdit, dxDBColorDateEdit;

type
  TfmManICl = class(TfmPadrao)
    FinCli: TwwQuery;
    dsCli: TwwDataSource;
    quSql: TwwQuery;
    pcCli: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel1: TPanel;
    nvCli: ThDBNavigator;
    Label5: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    EdCodCli: TdxDBColorEdit;
    Label9: TLabel;
    Label7: TLabel;
    EdNomCli: TdxDBColorEdit;
    Label6: TLabel;
    EdApeCli: TdxDBColorEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label2: TLabel;
    Shape6: TShape;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomCli: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    Label11: TLabel;
    EdPsqApeCli: TdxColorEdit;
    Shape2: TShape;
    bselecionar: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Shape4: TShape;
    Label3: TLabel;
    Shape5: TShape;
    Panel3: TPanel;
    grCli: ThGrid;
    Label34: TLabel;
    Shape11: TShape;
    Label39: TLabel;
    EdPt3Cli: TdxDBColorEdit;
    EdFo3Cli: TdxDBColorEdit;
    Label40: TLabel;
    EdPf3Cli: TdxDBColorEdit;
    EdFa3Cli: TdxDBColorEdit;
    Label41: TLabel;
    EdComCli: TdxDBColorEdit;
    Panel2: TPanel;
    nvICl: ThDBNavigator;
    Shape1: TShape;
    Label13: TLabel;
    PedICl: TwwQuery;
    DsICl: TwwDataSource;
    UpICl: TUpdateSQL;
    EstClp: TwwQuery;
    EstClpCODCLP: TStringField;
    EstClpNOMCLP: TStringField;
    DsClp: TwwDataSource;
    DsGru: TwwDataSource;
    EstGru: TwwQuery;
    EstGruCODGRU: TStringField;
    EstGruNOMGRU: TStringField;
    EstSub: TwwQuery;
    EstSubCODGRU: TStringField;
    EstSubCODSUB: TStringField;
    EstSubNOMSUB: TStringField;
    DsSub: TwwDataSource;
    DsPro: TwwDataSource;
    EstPro: TwwQuery;
    EstProCODCLP: TStringField;
    EstProCODGRU: TStringField;
    EstProCODSUB: TStringField;
    EstProCODPRO: TStringField;
    EstProDSCPRO: TStringField;
    EstProDSRPRO: TStringField;
    Panel4: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    EdCodPro: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodGru: TdxDBColorEdit;
    CbNomPro: TdxDBColorLookupEdit;
    CbNomSub: TdxDBColorLookupEdit;
    CbNomGru: TdxDBColorLookupEdit;
    Label8: TLabel;
    EdCodClp: TdxDBColorEdit;
    CbNomClp: TdxDBColorLookupEdit;
    EdCodICl: TdxDBColorEdit;
    Label12: TLabel;
    Label19: TLabel;
    EdObsICl: TdxDBColorEdit;
    Panel5: TPanel;
    grICl: ThGrid;
    pnEmaCli: TPanel;
    pnWebCli: TPanel;
    FinTmo: TwwQuery;
    FinTmoNOMTMO: TStringField;
    FinTmoCODTMO: TIntegerField;
    DsTmo: TwwDataSource;
    UpCli: TUpdateSQL;
    Label22: TLabel;
    EdDulCmp: TdxDBColorDateEdit;
    Label28: TLabel;
    EdUltCmp: TdxDBColorCurrencyEdit;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label29: TLabel;
    EdPsqCodClp: TdxColorEdit;
    EdPsqCodGru: TdxColorEdit;
    EdPsqCodSub: TdxColorEdit;
    EdPsqCodPro: TdxColorEdit;
    bPsqPro: TSpeedButton;
    bPsqSub: TSpeedButton;
    bPsqGru: TSpeedButton;
    bPsqClp: TSpeedButton;
    EdPsqNomClp: TdxColorEdit;
    EdPsqNomGru: TdxColorEdit;
    EdPsqNomSub: TdxColorEdit;
    EdPsqNomPro: TdxColorEdit;
    Label30: TLabel;
    EdValICl: TdxDBColorCurrencyEdit;
    FinCliCODCLI: TIntegerField;
    FinCliAPECLI: TStringField;
    FinCliNOMCLI: TStringField;
    FinCliPT3CLI: TStringField;
    FinCliFO3CLI: TStringField;
    FinCliPF3CLI: TStringField;
    FinCliFA3CLI: TStringField;
    FinCliCOMCLI: TStringField;
    FinCliEM1CLI: TStringField;
    FinCliWEBCLI: TStringField;
    PedIClID_PEDICL: TIntegerField;
    PedIClCODCLI: TIntegerField;
    PedIClCODCLP: TStringField;
    PedIClCODGRU: TStringField;
    PedIClCODSUB: TStringField;
    PedIClCODPRO: TStringField;
    PedIClCODICL: TStringField;
    PedIClVALICL: TFloatField;
    PedIClQTDMIN: TFloatField;
    PedIClOBSICL: TStringField;
    PedIClULTPED: TStringField;
    PedIClULTVAL: TFloatField;
    PedIClVARICL: TFloatField;
    PedIClULTCMP: TFloatField;
    PedIClDULCMP: TDateTimeField;
    PedIClFLGATU: TStringField;
    PedIClNROICL: TIntegerField;
    PedIClDSCPRO: TStringField;
    PedIClCODITE: TStringField;
    pnText: TPanel;
    FinCliQTDICL: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grCliDblClick(Sender: TObject);
    procedure bselecionarClick(Sender: TObject);
    procedure EdPsqCodCliKeyPress(Sender: TObject; var Key: Char);
    procedure dsCliDataChange(Sender: TObject; Field: TField);
    procedure PedIClNewRecord(DataSet: TDataSet);
    procedure Panel4Exit(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnEmaCliDblClick(Sender: TObject);
    procedure pnWebCliDblClick(Sender: TObject);
    procedure nvIClSalva(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqCodClpExit(Sender: TObject);
    procedure EdPsqCodGruExit(Sender: TObject);
    procedure EdPsqCodSubExit(Sender: TObject);
    procedure EdPsqCodProExit(Sender: TObject);
    procedure bPsqClpClick(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure EdPsqCodClpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PedIClCODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure EdCodClpEnter(Sender: TObject);
    procedure EdCodGruEnter(Sender: TObject);
    procedure EdCodIClEnter(Sender: TObject);
    procedure EdCodIClExit(Sender: TObject);
  private
    pSaida : string;
    {Private declarations}
  public
    sBase, sOrdem, sFiltro : string;
    {Public declarations}
  end;

var
  fmManICl: TfmManICl;

implementation

uses Fpreview, ShellAPI, BbMensag, Bbacesso, Bbgeral, Bbfuncao, PsqCep, ManGDB,
     ManPri, PsqClp, AuxIni, AuxPsq, PsqTmo;

{$R *.DFM}

procedure TfmManICl.FormCreate(Sender: TObject);
begin
  inherited;

  pSaida := 'Sim';

  sBase  := ' Select * From FinCli';
  
end;

procedure TfmManICl.bselecionarClick(Sender: TObject);
var
  sFiltro1: string;
begin
  inherited;

  ActiveControl := nil;

  sFiltro := ' Where FinCli.FlbCli = '+ QuotedStr(' ');

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by FinCli.CodCli';
       1: sOrdem := ' Order by FinCli.ApeCli';
       2: sOrdem := ' Order by FinCli.NomCli';
  end;

  if Trim( EdPsqCodCli.Text ) <> '' then sFiltro := sFiltro + ' and FinCli.CodCli = '+ QuotedStr(EdPsqCodCli.Text);

  if rgbusca.ItemIndex = 0 then begin

     if Trim( EdPsqApeCli.Text ) <> '' then sFiltro := sFiltro + ' and FinCli.ApeCli LIKE '+ QuotedStr(EdPsqApeCli.Text +'%');
     if Trim( EdPsqNomCli.Text ) <> '' then sFiltro := sFiltro + ' and FinCli.NomCli LIKE '+ QuotedStr(EdPsqNomCli.Text +'%');

     end
  else
     begin

     if Trim( EdPsqApeCli.Text ) <> '' then sFiltro := sFiltro + ' and FinCli.ApeCli LIKE '+ QuotedStr('%'+ EdPsqApeCli.Text +'%');
     if Trim( EdPsqNomCli.Text ) <> '' then sFiltro := sFiltro + ' and FinCli.NomCli LIKE '+ QuotedStr('%'+ EdPsqNomCli.Text +'%');

  end;

  sFiltro1 := '';

  if Trim( EdPsqCodClp.Text ) <> '' then sFiltro1 := sFiltro1 + ' and PedICl.CodClp = '+ QuotedStr(EdPsqCodClp.Text);
  if Trim( EdPsqCodGru.Text ) <> '' then sFiltro1 := sFiltro1 + ' and PedICl.CodGru = '+ QuotedStr(EdPsqCodGru.Text);
  if Trim( EdPsqCodSub.Text ) <> '' then sFiltro1 := sFiltro1 + ' and PedICl.CodSub = '+ QuotedStr(EdPsqCodSub.Text);
  if Trim( EdPsqCodPro.Text ) <> '' then sFiltro1 := sFiltro1 + ' and PedICl.CodPro = '+ QuotedStr(EdPsqCodPro.Text);

  if Trim( sFiltro1 ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and Exists(Select * From PedICl Where PedICl.CodCli = FinCli.CodCli'+ sFiltro1 +' )'
     else
        sFiltro := ' Where Exists(Select * From PedICl Where PedICl.CodCli = FinCli.CodCli'+ sFiltro1 +' )';

  end;
  
  with PedICl,SQL do begin

       Close;
       Text := ' Select PedICl.*,'+
               '        EstPro.DscPro'+
               ' From PedICl LEFT JOIN EstPro ON (PedICl.CodClp = EstPro.CodClp '+
               '                             AND  PedICl.CodGru = EstPro.CodGru '+
               '                             AND  PedICl.CodSub = EstPro.CodSub '+
               '                             AND  PedICl.CodPro = EstPro.CodPro)'+
               ' Where PedICl.CodCli = :CodCli'+ sFiltro1 +
               ' Order by PedICl.CodCli,PedICl.CodICl';
       Open;

  end;

  with FinCli,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManICl.pcPag2Show(Sender: TObject);
begin
  inherited;

  pnText.Caption := '';

  if EdCodClp.Enabled then
     EdCodClp.SetFocus
  else
     EdCodICl.SetFocus;
  
end;

procedure TfmManICl.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodCli.SetFocus;
end;

procedure TfmManICl.grCliDblClick(Sender: TObject);
begin
  inherited;
  pcCli.ActivePage := pcPag2;
end;

procedure TfmManICl.FormShow(Sender: TObject);
begin
  inherited;

  PcCli.ActivePage := PcPag1;

  EdPsqCodCli.SetFocus;

end;

procedure TfmManICl.EdPsqCodCliKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManICl.dsCliDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnEmaCli.Caption := FinCliEm1Cli.Value;
  pnWebCli.Caption := FinCliWebCli.Value;

  if PedICl.Params[0].AsInteger <> FinCliCodCli.Value then begin

     PedICl.Close;
     PedICl.Params[0].AsInteger := FinCliCodCli.Value;
     PedICl.Open;

  end;

  if EstGru.Params[0].AsString <> PedIClCodClp.Value then begin

     EstGru.Close;
     EstGru.Params[0].AsString := PedIClCodClp.Value;
     EstGru.Open;

  end;

  if (EstSub.Params[0].AsString <> PedIClCodGru.Value) or
     (EstSub.Params[1].AsString <> PedIClCodClp.Value) then begin

     EstSub.Close;
     EstSub.Params[0].AsString := PedIClCodGru.Value;
     EstSub.Params[1].AsString := PedIClCodClp.Value;
     EstSub.Open;

  end;

  if (EstPro.Params[0].AsString <> PedIClCodClp.Value) or
     (EstPro.Params[1].AsString <> PedIClCodGru.Value) or
     (EstPro.Params[2].AsString <> PedIClCodSub.Value) then begin

     EstPro.Close;
     EstPro.Params[0].AsString := PedIClCodClp.Value;
     EstPro.Params[1].AsString := PedIClCodGru.Value;
     EstPro.Params[2].AsString := PedIClCodSub.Value;
     EstPro.Open;

  end;

  if not nvICl.Salvar then begin

     if EdCodClp.Enabled then begin

        pSaida := 'Nao';

        EdCodClp.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;

        EdCodClp.Font.Style := [fsBold];
        EdCodGru.Font.Style := [fsBold];
        EdCodSub.Font.Style := [fsBold];
        EdCodPro.Font.Style := [fsBold];

        pSaida := 'Sim';

     end;
  end;
end;

procedure TfmManICl.PedIClNewRecord(DataSet: TDataSet);
begin
  inherited;

  PedICl.DisableControls;

  PedIClValICl.Value := 0;
  PedIClQtdMin.Value := 0;
  PedIClUltVal.Value := 0;
  PedIClVarICl.Value := 0;
  PedIClUltCmp.Value := 0;
  PedIClFlgAtu.Value := ' ';
  PedIClCodClp.Value := '1';
  PedIClCodCli.Value := FinCliCodCli.Value;
  PedIClNroICl.Value := FinCliQtdICl.Value + 1;

  PedICl.EnableControls;

  EdCodClp.Enabled := True;
  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;

  EdCodClp.Font.Style := [];
  EdCodGru.Font.Style := [];
  EdCodSub.Font.Style := [];
  EdCodPro.Font.Style := [];

  EdCodGru.SetFocus;

end;

procedure TfmManICl.Panel4Exit(Sender: TObject);
var
  Operac : string;
begin
  inherited;
  if pSaida = 'Sim' then begin

     if nvICl.Salvar then begin

        if Trim( PedIClCodICl.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodICl);

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg'+
                     ' From EstPro'+
                     ' Where EstPro.CodClp = :CodClp'+
                     '   and EstPro.CodGru = :CodGru'+
                     '   and EstPro.CodSub = :CodSub'+
                     '   and EstPro.CodPro = :CodPro';

             with Params do begin

                  Params[0].AsString := PedIClCodClp.Value;
                  Params[1].AsString := PedIClCodGru.Value;
                  Params[2].AsString := PedIClCodSub.Value;
                  Params[3].AsString := PedIClCodPro.Value;

             end;

             Open;

        end;

        if quSQL.FieldbyName('QtdReg').AsInteger > 0 then begin

           if PedICl.State = dsInsert then Operac := 'dsInsert';

           nvICl.SBSalvaClick(Sender);

           if (Operac = 'dsInsert') and (not nvICl.Salvar) then begin

              nvICl.SBIncluiClick(Sender);

              EdCodGru.SetFocus;

           end;

           end
        else
           fmsgErro('Item Informado não Encontrado.',EdCodClp);

     end;
  end;   
end;

procedure TfmManICl.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if nvICl.Salvar then begin

     if EdCodGru.Enabled then begin

        if Trim( PedIClCodGru.Value ) <> '' then PedIClCodGru.Value := FNumZeros(PedIClCodGru.Value,3);

     end;
  end;
end;

procedure TfmManICl.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if nvICl.Salvar then begin

     if EdCodSub.Enabled then begin

        if Trim( PedIClCodSub.Value ) <> '' then PedIClCodSub.Value := FNumZeros(PedIClCodSub.Value,4);

     end;
  end;
end;

procedure TfmManICl.EdCodProExit(Sender: TObject);
begin
  inherited;
  if nvICl.Salvar then begin

     if EdCodPro.Enabled then begin

        if Trim( PedIClCodPro.Value ) <> '' then PedIClCodPro.Value := FNumStrZero(PedIClCodPro.Value);

     end;
  end;
end;

procedure TfmManICl.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqClp := TfmPsqClp.Create(Self);

        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then begin

           if PedICl.State = dsBrowse then begin

              if PedIClCodCli.Value > 0 then
                 PedICl.Edit
              else
                 PedICl.Append;

           end;

           PedIClCodClp.Value := fmPsqClp.CodClp;

        end;

     finally   

        FreeAndNil(fmPsqClp);

     end;

     if Trim( PedIClCodClp.Value ) <> '' then EdCodGru.SetFocus;

  end;
end;

procedure TfmManICl.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := PedIClCodClp.Value;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if PedICl.State = dsBrowse then begin

              if PedIClCodCli.Value > 0 then
                 PedICl.Edit
              else
                 PedICl.Append;

           end;

           PedIClCodGru.Value := fmAuxIni.CodGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( PedIClCodGru.Value ) <> '' then EdCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := PedIClCodClp.Value;

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if PedICl.State = dsBrowse then begin

              if PedIClCodCli.Value > 0 then
                 PedICl.Edit
              else
                 PedICl.Append;

           end;

           PedIClCodGru.Value := fmAuxPsq.CodGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedIClCodGru.Value ) <> '' then EdCodSub.SetFocus;

  end;
end;

procedure TfmManICl.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( PedIClCodClp.Value ) <> '' then fmAuxIni.CodClp := PedIClCodClp.Value;
        if Trim( PedIClCodGru.Value ) <> '' then fmAuxIni.CodGru := PedIClCodGru.Value;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if PedICl.State = dsBrowse then begin

              if PedIClCodCli.Value > 0 then
                 PedICl.Edit
              else
                 PedICl.Append;

           end;

           PedIClCodGru.Value := fmAuxIni.CodGru;
           PedIClCodSub.Value := fmAuxIni.CodSub;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( PedIClCodSub.Value ) <> '' then EdCodPro.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( PedIClCodClp.Value ) <> '' then fmAuxPsq.CodClp := PedIClCodClp.Value;
        if Trim( PedIClCodGru.Value ) <> '' then fmAuxPsq.CodGru := PedIClCodGru.Value;

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if PedICl.State = dsBrowse then begin

              if PedIClCodCli.Value > 0 then
                 PedICl.Edit
              else
                 PedICl.Append;

           end;

           PedIClCodGru.Value := fmAuxPsq.CodGru;
           PedIClCodSub.Value := fmAuxPsq.CodSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedIClCodSub.Value ) <> '' then EdCodPro.SetFocus;

  end;
end;

procedure TfmManICl.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( PedIClCodClp.Value ) <> '' then fmAuxIni.CodClp := PedIClCodClp.Value;
        if Trim( PedIClCodGru.Value ) <> '' then fmAuxIni.CodGru := PedIClCodGru.Value;
        if Trim( PedIClCodSub.Value ) <> '' then fmAuxIni.CodSub := PedIClCodSub.Value;

        fmAuxIni.TipoPesq := 'IC';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if PedICl.State = dsBrowse then begin

              if PedIClCodCli.Value > 0 then
                 PedICl.Edit
              else
                 PedICl.Append;

           end;

           PedIClCodClp.Value := fmAuxIni.CodClp;
           PedIClCodGru.Value := fmAuxIni.CodGru;
           PedIClCodSub.Value := fmAuxIni.CodSub;
           PedIClCodPro.Value := fmAuxIni.CodPro;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( PedIClCodPro.Value ) <> '' then EdCodICl.SetFocus;

  end;

  if key = 113 then begin {F5 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( PedIClCodClp.Value ) <> '' then fmAuxPsq.CodClp := PedIClCodClp.Value;
        if Trim( PedIClCodGru.Value ) <> '' then fmAuxPsq.CodGru := PedIClCodGru.Value;
        if Trim( PedIClCodSub.Value ) <> '' then fmAuxPsq.CodSub := PedIClCodSub.Value;

        fmAuxPsq.TipoPesq := 'IC';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if PedICl.State = dsBrowse then begin

              if PedIClCodCli.Value > 0 then
                 PedICl.Edit
              else
                 PedICl.Append;

           end;

           PedIClCodClp.Value := fmAuxPsq.CodClp;
           PedIClCodGru.Value := fmAuxPsq.CodGru;
           PedIClCodSub.Value := fmAuxPsq.CodSub;
           PedIClCodPro.Value := fmAuxPsq.CodPro;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedIClCodPro.Value ) <> '' then EdCodICl.SetFocus;

  end;
end;

procedure TfmManICl.pnEmaCliDblClick(Sender: TObject);
var
  cemail : string;
begin
  inherited;
  if Trim( pnEmaCli.Caption ) <> '' then begin

     if Pos('@', pnEmaCli.Caption) = 0 then
        fMsgErro('E-Mail Incorreto',Nil)
     else
        begin

        cEMail := 'mailto:' + Trim( pnEmaCli.Caption ) + ' <' + Trim( pnEmaCli.Caption ) + '>';

        ShellExecute(Handle, 'Open', PChar(cEMail), Nil, '', sw_ShowNormal);

     end;
  end;
end;

procedure TfmManICl.pnWebCliDblClick(Sender: TObject);
var
  pagina : string;
begin
  inherited;
  if Trim( pnWebCli.Caption ) <> '' then begin

     pagina := 'http://'+pnWebCli.Caption;

     ShellExecute(0, Nil, PChar(pagina), Nil, Nil, sw_Normal);

  end;
end;

procedure TfmManICl.nvIClSalva(Sender: TObject);
var
 sCodCli,sId_PedICl : integer;
begin
  inherited;

  sCodCli := FinCliCodCli.Value;

  sId_PedICl := PedIClId_PedICl.Value;

  FinCli.Close;
  FinCli.Open;

  if sCodCli > 0 then begin

     FinCli.Locate('CodCli',sCodCli,[LoPartialKey]);

     if sId_PedICl > 0 then PedICl.Locate('Id_PedICl',sId_PedICl, [loPartialKey]);

  end;
end;

procedure TfmManICl.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManICl.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManICl := nil;
end;

procedure TfmManICl.EdPsqCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp '+
                  ' Where CodClp = '''+EdPsqCodClp.Text+'''';
          Open;


     end;

     if Trim( quSQL.FieldbyName('NomClp').AsString ) <> '' then
        EdPsqNomClp.Text := quSql.FieldByName('NomClp').AsString
     else
        fmsgErro('Classificação Informada não Encontrada.',EdPsqCodClp);

     end
  else
     EdPsqNomClp.Text := '';
end;

procedure TfmManICl.EdPsqCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGru.Text ) <> '' then begin

     EdPsqCodGru.Text := FNumZeros(EdPsqCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru '+
                  ' Where CodGru = '''+EdPsqCodGru.Text+'''';
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomGru').AsString ) <> '' then
        EdPsqNomGru.Text := quSql.FieldByName('NomGru').AsString
     else
        fmsgErro('Grupo Informado não Encontrado.',EdPsqCodGru);

     end
  else
     EdPsqNomGru.Text := '';
end;

procedure TfmManICl.EdPsqCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodSub.Text ) <> '' then begin

     EdPsqCodSub.Text := FNumZeros(EdPsqCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub '+
                  ' Where CodGru = '''+EdPsqCodGru.Text+''''+
                  '   and CodSub = '''+EdPsqCodSub.Text+'''';
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomSub').AsString ) <> '' then
        EdPsqNomSub.Text := quSql.FieldByName('NomSub').AsString
     else
        fmsgErro('SubGrupo Informado não Encontrado.',EdPsqCodSub);

     end
  else
     EdPsqNomSub.Text := '';
end;

procedure TfmManICl.EdPsqCodProExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPro.Text ) <> '' then begin

     EdPsqCodPro.Text := FNumStrZero(EdPsqCodPro.Text);

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPro From EstPro '+
                  ' Where CodClp = :CodClp'+
                  '   and CodGru = :CodGru'+
                  '   and CodSub = :CodSub'+
                  '   and CodPro = :CodPro';

          with Params do begin

               Params[0].AsString := EdPsqCodClp.Text;
               Params[1].AsString := EdPsqCodGru.Text;
               Params[2].AsString := EdPsqCodSub.Text;
               Params[3].AsString := EdPsqCodPro.Text;

          end;

          Open;

          EdPsqNomPro.Text := FieldByName('DscPro').AsString;

     end;

     end
  else
     EdPsqNomPro.Text := '';
end;

procedure TfmManICl.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Cls';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodClp ) <> '' then begin

        EdPsqCodClp.Text := fmAuxIni.CodClp;
        EdPsqNomClp.Text := fmAuxIni.NomClp;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodClp.Text ) <> '' then EdPsqCodGru.SetFocus;

end;

procedure TfmManICl.bPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;

     fmAuxIni.TipoPesq := 'G';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodGru.Text ) <> '' then EdPsqCodSub.SetFocus;

end;

procedure TfmManICl.bPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;
     if Trim( EdPsqCodGru.Text ) <> '' then fmAuxIni.CodGru := EdPsqCodGru.Text;

     fmAuxIni.TipoPesq := 'S';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodSub ) <> '' then begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;
        EdPsqCodSub.Text := fmAuxIni.CodSub;
        EdPsqNomSub.Text := fmAuxIni.NomSub;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodSub.Text ) <> '' then EdPsqCodPro.SetFocus;

end;

procedure TfmManICl.bPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;
     if Trim( EdPsqCodGru.Text ) <> '' then fmAuxIni.CodGru := EdPsqCodGru.Text;
     if Trim( EdPsqCodSub.Text ) <> '' then fmAuxIni.CodSub := EdPsqCodSub.Text;

     fmAuxIni.TipoPesq := 'I';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodPro ) <> '' then begin

        EdPsqCodClp.Text := fmAuxIni.CodClp;
        EdPsqNomClp.Text := fmAuxIni.NomClp;
        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;
        EdPsqCodSub.Text := fmAuxIni.CodSub;
        EdPsqNomSub.Text := fmAuxIni.NomSub;
        EdPsqCodPro.Text := fmAuxIni.CodPro;
        EdPsqNomPro.Text := fmAuxIni.DscPro;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodPro.Text ) <> '' then bSelecionar.SetFocus;

end;

procedure TfmManICl.EdPsqCodClpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Cls';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodClp ) <> '' then begin

           EdPsqCodClp.Text := fmAuxIni.CodClp;
           EdPsqNomClp.Text := fmAuxIni.NomClp;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdPsqCodClp.Text ) <> '' then EdPsqCodGru.SetFocus;

  end;   
end;

procedure TfmManICl.EdPsqCodGruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdPsqCodClp.Text;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxIni.CodGru;
           EdPsqNomGru.Text := fmAuxIni.NomGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdPsqCodGru.Text ) <> '' then EdPsqCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdPsqCodClp.Text;

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

            EdPsqCodGru.Text := fmAuxPsq.CodGru;
            EdPsqNomGru.Text := fmAuxPsq.NomGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdPsqCodGru.Text ) <> '' then EdPsqCodSub.SetFocus;

  end;
end;

procedure TfmManICl.EdPsqCodSubKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdPsqCodClp.Text;
        fmAuxIni.CodGru := EdPsqCodGru.Text;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxIni.CodGru;
           EdPsqNomGru.Text := fmAuxIni.NomGru;
           EdPsqCodSub.Text := fmAuxIni.CodSub;
           EdPsqNomSub.Text := fmAuxIni.NomSub;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdPsqCodSub.Text ) <> '' then EdPsqCodPro.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdPsqCodClp.Text;
        fmAuxPsq.CodGru := EdPsqCodGru.Text;

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxPsq.CodGru;
           EdPsqNomGru.Text := fmAuxPsq.NomGru;
           EdPsqCodSub.Text := fmAuxPsq.CodSub;
           EdPsqNomSub.Text := fmAuxPsq.NomSub;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdPsqCodSub.Text ) <> '' then EdPsqCodPro.SetFocus;

  end;
end;

procedure TfmManICl.EdPsqCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdPsqCodClp.Text;
        fmAuxIni.CodGru := EdPsqCodGru.Text;
        fmAuxIni.CodSub := EdPsqCodSub.Text;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxIni.CodGru;
           EdPsqNomGru.Text := fmAuxIni.NomGru;
           EdPsqCodSub.Text := fmAuxIni.CodSub;
           EdPsqNomSub.Text := fmAuxIni.NomSub;
           EdPsqCodPro.Text := fmAuxIni.CodPro;
           EdPsqNomPro.Text := fmAuxIni.DscPro;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdPsqCodPro.Text ) <> '' then bSelecionar.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdPsqCodClp.Text;
        fmAuxPsq.CodGru := EdPsqCodGru.Text;
        fmAuxPsq.CodSub := EdPsqCodSub.Text;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdPsqCodClp.Text := fmAuxPsq.CodClp;
           EdPsqNomClp.Text := fmAuxPsq.NomClp;
           EdPsqCodGru.Text := fmAuxPsq.CodGru;
           EdPsqNomGru.Text := fmAuxPsq.NomGru;
           EdPsqCodSub.Text := fmAuxPsq.CodSub;
           EdPsqNomSub.Text := fmAuxPsq.NomSub;
           EdPsqCodPro.Text := fmAuxPsq.CodPro;
           EdPsqNomPro.Text := fmAuxPsq.DscPro;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdPsqCodPro.Text ) <> '' then bSelecionar.SetFocus;

  end;
end;

procedure TfmManICl.PedIClCODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if Trim( PedIClCodClp.Value ) <> '' then
     Text := PedIClCodClp.Value+ '-' +PedIClCodGru.Value+ '.' +PedIClCodSub.Value+ '.' +PedIClCodPro.Value
  else
     Text := '';
end;

procedure TfmManICl.EdCodClpEnter(Sender: TObject);
begin
  inherited;
  pnText.Caption := 'F1-Iniciais';
end;

procedure TfmManICl.EdCodGruEnter(Sender: TObject);
begin
  inherited;
  pnText.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmManICl.EdCodIClEnter(Sender: TObject);
begin
  inherited;
  pnText.Caption := '';
end;

procedure TfmManICl.EdCodIClExit(Sender: TObject);
begin
  inherited;
  if Trim(PedIClCodICl.Value) = '' then begin

     if Trim(PedIClCodPro.Value) <> '' then
        PedIClCodICl.Value := PedIClCodClp.Value+'-'+
                              PedIClCodGru.Value+'.'+
                              PedIClCodSub.Value+'.'+
                              PedIClCodPro.Value;
  end;
end;

end.
