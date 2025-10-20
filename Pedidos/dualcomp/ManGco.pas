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
    EdPsqNumGer: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteGr2: TdxColorDateEdit;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    bPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
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
    RDprint1: TRDprint;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
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
    Label24: TLabel;
    PsqEmp: TSpeedButton;
    EdPsqNomEmp: TdxColorEdit;
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
    PedGerCODCLI: TIntegerField;
    PedGerCODVEN: TIntegerField;
    PedGerCODPFA: TStringField;
    PedGerPEDCLI: TStringField;
    PedGerTOTIPI: TFloatField;
    PedGerTOTITE: TFloatField;
    PedGerTOTGER: TFloatField;
    pnNomCli: TPanel;
    pnDesGr2: TPanel;
    PedGr2CODEMP: TIntegerField;
    PedGr2DTEGER: TDateTimeField;
    PedGr2NUMGER: TIntegerField;
    PedGr2CODGRU: TStringField;
    PedGr2CODSUB: TStringField;
    PedGr2CODPRO: TStringField;
    PedGr2CODITE: TStringField;
    PedGr2DESGR2: TStringField;
    Label1: TLabel;
    Label8: TLabel;
    EdPsqSitGer: TdxColorPickEdit;
    pnApeVen: TPanel;
    PedGerID_PEDGER: TIntegerField;
    PedGerCODEMP: TIntegerField;
    PedGerDTEGER: TDateTimeField;
    PedGerHREGER: TStringField;
    PedGerTIPPFA: TStringField;
    PedGerUFEGER: TStringField;
    PedGerQTIGER: TIntegerField;
    PedGerBASIPI: TFloatField;
    PedGerBASICM: TFloatField;
    PedGerTOTICM: TFloatField;
    PedGerBASSUB: TFloatField;
    PedGerTOTSUB: TFloatField;
    PedGerTOTCST: TFloatField;
    PedGerTOTVEN: TFloatField;
    PedGerTOTREN: TFloatField;
    PedGerDSCREG: TFloatField;
    PedGerMEDDSC: TFloatField;
    PedGerMEDACR: TFloatField;
    PedGerTOTDSC: TFloatField;
    PedGerTOTDSR: TFloatField;
    PedGerTOTACR: TFloatField;
    PedGerCODUSU: TIntegerField;
    PedGerCODFIL: TIntegerField;
    PedGerCODTCL: TIntegerField;
    PedGerLANEST: TStringField;
    PedGerFLGTAB: TStringField;
    PedGerFLGCTB: TStringField;
    PedGerCONSUM: TStringField;
    PedGerCODIPI: TStringField;
    PedGerTIPIPI: TStringField;
    PedGerTRBIPI: TStringField;
    PedGerREDIPI: TFloatField;
    PedGerBSCIPI: TFloatField;
    PedGerCODICM: TStringField;
    PedGerTIPICM: TStringField;
    PedGerTRBICM: TStringField;
    PedGerREDICM: TFloatField;
    PedGerBSCICM: TFloatField;
    PedGerINCREV: TFloatField;
    PedGerINCFIN: TFloatField;
    PedGerDTEDEL: TDateTimeField;
    PedGerHREDEL: TStringField;
    PedGerOBSDEL: TMemoField;
    PedGerUSUDEL: TIntegerField;
    PedGerCODCFO: TStringField;
    PedGerSEQGER: TStringField;
    PedGerSITGER: TStringField;
    PedGerNOMCLI: TStringField;
    PedGerAPEVEN: TStringField;
    procedure fChkForm(PTras: string);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqNumGerExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure DsGerDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumGerKeyPress(Sender: TObject; var Key: Char);
    procedure bEditarClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure EdPsqPedCliExit(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PsqEmpClick(Sender: TObject);
    procedure DsGr2DataChange(Sender: TObject; Field: TField);
    procedure EdPsqCodAtdExit(Sender: TObject);
    procedure EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bPsqAtdClick(Sender: TObject);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure PedGr2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    {Private declarations}
  public
    {Public declarations}
    DteGer : TDateTime;
    CodEmp,NumGer : integer;
    sBase,sFiltro,sOrdem : string;
  end;

var
  Linha     : Integer;
  NomAtd    : string;
  fmManGco  : TfmManGco;
  Permissao : string;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, Bbacesso, ManGDB, PsqEmp,
     ManPri, AuxPsq, ManGc1, ManCpg, AuxIni, ManCge;

{$R *.DFM}

procedure TfmManGco.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedGer.*,'+
           '        FinCli.NomCli,'+
           '        FinVen.ApeVen'+
           ' From PedGer LEFT JOIN FinCli ON (PedGer.CodCli = FinCli.CodCli)'+
           '             LEFT JOIN FinVen ON (PedGer.CodVen = FinVen.CodVen)';

  if GCodVen_Id > 0 then begin

     sOrdem := ' Order by PedGer.NumGer';

     sFiltro := ' Where PedGer.CodVen = '''+ IntToStr( GCodVen_Id ) +''' and PedGer.DteGer = '''+ fDateToSQL(Date) +'''';

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

  sOrdem := ' Order by PedGer.NumGer';

  sFiltro := '';

  if Trim( EdPsqSitGer.Text ) <> 'Todos' then sFiltro := ' Where PedGer.SitGer = '+ QuotedStr(EdPsqSitGer.Text);

  if Trim( EdPsqNumGer.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedGer.NumGer = '+ QuotedStr(EdPsqNumGer.Text)
     else
        sFiltro := ' Where PedGer.NumGer = '+ QuotedStr(EdPsqNumGer.Text);

  end;

  if Trim( EdPsqPedCli.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedGer.PedCli LIKE '+ QuotedStr('%'+EdPsqPedCli.Text+'%')
     else
        sFiltro := ' Where PedGer.PedCli LIKE '+ QuotedStr('%'+EdPsqPedCli.Text+'%');

  end;

  if Trim( EdPsqCodCli.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedGer.CodCli = '+ QuotedStr(EdPsqCodCli.Text)
     else
        sFiltro := ' Where PedGer.CodCli = '+ QuotedStr(EdPsqCodCli.Text);

  end;

  if Trim( EdPsqCodVen.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedGer.CodVen = '+ QuotedStr(EdPsqCodVen.Text)
     else
        sFiltro := ' Where PedGer.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  end;

  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedGer.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text)
     else
        sFiltro := ' Where PedGer.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

  end;

  if Trim( EdPsqCodAtd.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedGer.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text)
     else
        sFiltro := ' Where PedGer.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text);

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

  if EdPsqTotGr1.Value > 0 then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedGer.TotGer >= '+ QuotedStr(fConvertValor(EdPsqTotGr1.Text))
     else
        sFiltro := ' Where PedGer.TotGer >= '+ QuotedStr(fConvertValor(EdPsqTotGr1.Text));

  end;

  if EdPsqTotGr2.Value > 0 then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedGer.TotGer <= '+ QuotedStr(fConvertValor(EdPsqTotGr2.Text))
     else
        sFiltro := ' Where PedGer.TotGer <= '+ QuotedStr(fConvertValor(EdPsqTotGr2.Text));

  end;

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
          Text := 'Select NomCli From FinCli Where CodCli = '''+EdPsqCodCli.Text+'''';
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
          Text := 'Select ApeVen From FinVen Where CodVen = '''+EdPsqCodVen.Text+'''';
          Open;

          EdPsqNomVen.Text := quSql.FieldByName('ApeVen').AsString;
     end;

     end
  else
     EdPsqNomVen.Text := '';
end;

procedure TfmManGco.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqNomVen.Text := fmAuxIni.NomVen;
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

           EdPsqNomVen.Text := fmAuxPsq.NomVen;
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

        EdPsqNomVen.Text := fmAuxIni.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqCodVen.SetFocus;

end;

procedure TfmManGco.EdPsqNumGerExit(Sender: TObject);
begin
  if Trim( EdPsqNumGer.Text ) <> '' then begin

     EdPsqPedCli.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqNomVen.Clear;
     EdPsqCodAtd.Clear;
     EdPsqNomAtd.Clear;

     EdPsqDteGr1.Clear;
     EdPsqDteGr2.Clear;

     EdPsqTotGr1.Value := 0;
     EdPsqTotGr2.Value := 0;

  end;
end;

procedure TfmManGco.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

  if key = 117 then bExcluir.OnClick(Sender);

  if key = 112 then begin

     if PedGerCodEmp.Value > 0 then begin

        try

           fmManCge := TfmManCge.Create(Self);

           fmManCge.PedCli := fmManGco.PedGerPedCli.Value;

           fmManCge.ShowModal;

        finally

           FreeAndNil(fmManCge);

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

     EdPsqNomVen.Text := GNomVen_Id;
     EdPsqCodVen.Text := IntToStr( GCodVen_Id );

     if GGus_Id <> 1 then begin

        bPsqVen.Enabled := False;

        EdPsqCodVen.Enabled := False;

        EdPsqCodVen.Font.Style := [fsBold];

     end;
  end;

  EdPsqDteGr1.Date := Date;
  EdPsqDteGr2.Date := Date;

  EdPsqNumGer.SetFocus;

end;

procedure TfmManGco.DsGerDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnSitGer.Caption := PedGerSitGer.Value;

  pnHreGer.Caption := PedGerHreGer.Value;

  pnNomCli.Caption := ' Cliente : ' + PedGerNomCli.Value;

  pnApeVen.Caption := ' Vendedor : ' + PedGerApeVen.Value;

  if PedGerCodEmp.Value > 0 then
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

procedure TfmManGco.EdPsqNumGerKeyPress(Sender: TObject; var Key: Char);
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
  
        if copy(Permissao,2,1) = 'S' then begin

           if PedGerNumGer.Value > 0 then begin

              fChkForm('ManGc1');

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select SitGer From PedGer'+
                           ' Where CodEmp = :CodEmp'+
                           '   and DteGer = :DteGer'+
                           '   and NumGer = :NumGer';

                   with Params do begin

                        Params[0].AsInteger  := PedGerCodEmp.Value;
                        Params[1].AsDateTime := PedGerDteGer.Value;
                        Params[2].AsInteger  := PedGerNumGer.Value;

                   end;

                   Open;

              end;

              if (quSQL.FieldbyName('SitGer').AsString = 'Concluido') or (quSQL.FieldbyName('SitGer').AsString = 'Parcialmente Atendido') then begin

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

                         EdPsqNumGer.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;
              end;

              CodEmp := PedGerCodEmp.Value;
              DteGer := PedGerDteGer.Value;
              NumGer := PedGerNumGer.Value;

              fmManGc1 := TfmManGc1.Create(Self);
              fmManGc1.Show;

           end;

           end
        else
           fMsgErro('Usuario Não Possui Acesso a Opcão.',nil);

     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManGco.bIncluirClick(Sender: TObject);
var
i     : Integer;
Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

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

        if copy(Permissao,1,1) = 'S' then begin

           CodEmp := 0;
           NumGer := 0;

           fChkForm('ManGc1');

           fmManGc1 := TfmManGc1.Create(Self);
           fmManGc1.Show;

           end
        else
           fMsgErro('Usuario Não Possui Acesso a Opcão.',nil);

     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManGco.fChkForm(PTras: string);
var
cForm: TComponent;
begin

  cForm := FindComponent('fm' + PTras);

  if (cForm <> nil) then begin
     TForm(cForm).WindowState := wsNormal;
     TForm(cForm).BringToFront;
     Abort;
  end;
end;

procedure TfmManGco.bExcluirClick(Sender: TObject);
var
i     : Integer;
Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

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
  
        if copy(Permissao,3,1) = 'S' then begin

           if PedGerNumGer.Value > 0 then begin

              if Trim( PedGerSitGer.Value ) = 'Nao Concluido' then begin

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

                 if (Trim( PedGerSitGer.Value ) = 'Concluido')             or
                    (Trim( PedGerSitGer.Value ) = 'Processo de Alteracao') then begin

                    if fMsg('Confirma o Cancelamento do Pedido Gerenciado ?','S') then begin

                       try

                          fmManCpg := TfmManCpg.Create(Self);

                          fmManCpg.PedGer.Close;
                          fmManCpg.PedGer.Params[0].AsInteger  := PedGerCodEmp.Value;
                          fmManCpg.PedGer.Params[1].AsDateTime := PedGerDteGer.Value;
                          fmManCpg.PedGer.Params[2].AsInteger  := PedGerNumGer.Value;
                          fmManCpg.PedGer.Open;

                          fmManCpg.ShowModal;

                       finally

                          FreeAndNil(fmManCpg);

                       end;

                       CodEmp := PedGerCodEmp.Value;
                       DteGer := PedGerDteGer.Value;
                       NumGer := PedGerNumGer.Value;

                       PedGer.Close;
                       PedGer.Open;

                       PedGer.Locate('CodEmp;DteGer;NumGer',VarArrayOf([CodEmp,DteGer,NumGer]),[LoPartialKey]);

                    end;

                    end
                 else
                    begin

                    if (PedGerSitGer.Value = 'Atendido') or (PedGerSitGer.Value = 'Parcialmente Atendido') then fMsg('Operação não Pode ser Realizada. Pedido Gerenciado Atendido.','E')

                    else if PedGerSitGer.Value = 'Cancelado' then fMsg('Operação não Pode ser Realizada. Pedido Gerenciado Cancelado.','E');

                 end;
              end;
           end;

           end
        else
           fMsgErro('Usuario Não Possui Acesso a Opcão.',nil);
        
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManGco.bImprimirClick(Sender: TObject);
var
i      : Integer;
Found  : Integer;
DesGr2 : string;
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
  
     if PedGerNumGer.Value > 0 then begin

        if fMsg('Confirma Impressão do Pedido Gerenciado ?','O') then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select ApeVen From FinVen Where CodVen = :CodVen';

                with Params do begin

                     Params[0].AsInteger := PedGerCodAtd.Value;

                end;

                Open;

                NomAtd := fNumZeros(IntToStr(PedGerCodAtd.Value),7)+ ' - ' +FieldByName('ApeVen').AsString;

           end;

           rdprint1.OpcoesPreview.Preview     := False;
           rdprint1.OpcoesPreview.PreviewZoom := 100;
           rdprint1.TamanhoQteLPP             := seis;
           rdprint1.UsaGerenciadorImpr        := True;

           rdprint1.TamanhoQteColunas  := 136;
           rdprint1.FonteTamanhoPadrao := s17cpp;

           {Inicio...}
           with rdprint1 do begin

                abrir; {inicializa o arquivo de impressao...}

                if setup then begin {abre tela para escolha da impressora e modelo...}

                   with quSQL,SQL do begin

                        Close;
                        Text := ' Select PedGr2.*,RefPro'+
                                ' From PedGr2 LEFT JOIN EstPro ON (PedGr2.CodClp = EstPro.CodClp)'+
                                '                             AND (PedGr2.CodGru = EstPro.CodGru)'+
                                '                             AND (PedGr2.CodSub = EstPro.CodSub)'+
                                '                             AND (PedGr2.CodPro = EstPro.CodPro)'+
                                ' Where PedGr2.CodEmp = '''+ IntToStr(PedGerCodEmp.Value) +''''+
                                '   and PedGr2.DteGer = '''+ fDateToSQL(PedGerDteGer.Value) +''''+
                                '   and PedGr2.NumGer = '''+ IntToStr(PedGerNumGer.Value) +''''+
                                ' Order by PedGr2.CodEmp,PedGr2.DteGer,PedGr2.NumGer,PedGr2.NroGr2';
                        Open;

                   end;

                   quSql.First;

                   while not quSQL.Eof do begin

                         imp(Linha,001,quSql.FieldbyName('CodGru').AsString+'.'+quSql.FieldbyName('CodSub').AsString+'.'+quSql.FieldbyName('CodPro').AsString);

                         DesGr2 := copy(Trim(quSql.FieldbyName('DesGr2').AsString),1,55);

                         imp(Linha,016,DesGr2);
                         imp(Linha,072,PreString(FormatFloat('###,##0.0000',quSql.FieldbyName('QtpGr2').AsFloat),12));
                         imp(Linha,085,PreString(FormatFloat('###,##0.0000',quSql.FieldbyName('VluGr2').AsFloat),12));
                         imp(Linha,099,PreString(FormatFloat('##0.00',fRound(quSql.FieldbyName('DscGr2').AsFloat + quSql.FieldbyName('DspGr2').AsFloat,2)),06));
                         imp(Linha,106,PreString(FormatFloat('##0.00',quSql.FieldbyName('PacGr2').AsFloat),06));
                         imp(Linha,113,PreString(FormatFloat('###,##0.0000',quSql.FieldbyName('VlqGr2').AsFloat),12));
                         imp(Linha,126,PreString(FormatFloat('#,###,##0.00',quSql.FieldbyName('TotGr2').AsFloat),12));

                         if Trim( quSQL.FieldbyName('ObsGr2').AsString ) <> '' then begin

                            Inc(Linha);

                            imp(Linha,016,Trim( quSql.FieldbyName('ObsGr2').AsString ));

                         end;

                         Linha := Linha + 1;

                         if Linha > 61 then rdprint1.novapagina;

                         quSQL.Next;

                   end;

                   imp(Linha,126,fReplicate('-',12));
                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   imp(Linha,126,PreString(FormatFloat('#,###,##0.00',PedGerTotIte.Value),12));
                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   Linha := Linha + 2;

                   if Linha > 61 then rdprint1.novapagina;

                   if GGUs_Id = 1 then begin

                      imp(Linha,111,'Custo Total :');
                      imp(Linha,126,PreString(FormatFloat('#,###,##0.00',PedGerTotCst.Value),12));

                      Linha := Linha + 3;

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Acrescimos            :  '+PreString(FormatFloat('##0.00',PedGerMedAcr.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',PedGerTotAcr.Value),12),[NORMAL, NEGRITO]);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Descontos             :  '+PreString(FormatFloat('##0.00',PedGerDscCom.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',PedGerTotDsc.Value),12),[NORMAL, NEGRITO]);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Desc. ICMS Regiao     :  '+PreString(FormatFloat('##0.00',PedGerDscReg.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',PedGerTotDsr.Value),12),[NORMAL, NEGRITO]);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Desc. Promocional     :  '+PreString(FormatFloat('##0.00',PedGerMedPrm.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',PedGerTotDsp.Value),12),[NORMAL, NEGRITO]);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Margem                :  '+PreString(FormatFloat('##0.00',PedGerTotRen.Value),6)+'(%) ',[NORMAL, NEGRITO]);
                      Inc(Linha);

                   end;

                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,fReplicate('-',80),[NORMAL]);

                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Total de Itens        : '+PreString(IntToStr(PedGerQtiGer.Value),08),[NORMAL, NEGRITO]);

                   Linha := Linha + 1;

                   impf(Linha,001,fReplicate('-',80),[NORMAL]);

                   fechar;  {Finaliza e inicia impressao ou preview}

                end;
           end;
        end;
     end;
  end;
end;

procedure TfmManGco.EdPsqPedCliExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqPedCli.Text ) <> '' then begin

     EdPsqNumGer.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqNomVen.Clear;
     EdPsqCodAtd.Clear;
     EdPsqNomAtd.Clear;

     EdPsqDteGr1.Clear;
     EdPsqDteGr2.Clear;

     EdPsqTotGr1.Value := 0;
     EdPsqTotGr2.Value := 0;

  end;
end;

procedure TfmManGco.EdPsqCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomEmp From GerEmp Where CodEmp = '''+ EdPsqCodEmp.Text +'''';
          Open;

          EdPsqNomEmp.Text := FieldByName('NomEmp').AsString;

     end;

     end
  else
     EdPsqNomEmp.Text := '';
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

           EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
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
             Text := ' Select NomEmp,CodEmp From GerEmp'+
                     ' Where CodFil > 0'+
                     ' Order by NomEmp';
             Open;

        end;
     end;

     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
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

procedure TfmManGco.EdPsqCodAtdExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodAtd.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select ApeVen From FinVen Where CodVen = '''+ EdPsqCodAtd.Text +'''';
          Open;

          EdPsqNomAtd.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqNomAtd.Text := '';
end;

procedure TfmManGco.EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

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

     EdPsqCodAtd.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

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

     EdPsqCodAtd.SetFocus;

  end;
end;

procedure TfmManGco.bPsqAtdClick(Sender: TObject);
begin
  inherited;

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

  EdPsqCodAtd.SetFocus;

end;

procedure TfmManGco.RDprint1NewPage(Sender: TObject; Pagina: Integer);
begin
  inherited;

  rdprint1.impf(01,001,'GERENCIAMENTO DE PEDIDO',[EXPANDIDO, NORMAL]);

  rdprint1.impf(02,001,fReplicate('-',80),[NORMAL]);
  rdprint1.impf(03,001,'Controle     : '+preString(IntToStr(PedGerNumGer.Value),7),[NORMAL, NEGRITO]);
  rdprint1.impf(03,075,'Data : '+DateToStr(PedGerDteGer.Value),[NORMAL]);
  rdprint1.impf(03,111,'Hora : '+PedGerHreGer.Value,[NORMAL]);
  rdprint1.impf(04,001,'Vendedor     : '+IntToStr(PedGerCodVen.Value)+ ' - ' +PedGerApeVen.Value,[NORMAL]);
  rdprint1.impf(05,001,'Atendente    : '+IntToStr(PedGerCodAtd.Value)+ ' - ' +NomAtd,[NORMAL]);
  rdprint1.impf(06,001,'Cliente      : '+IntToStr(PedGerCodCli.Value)+ ' - ' +PedGerNomCli.Value,[NORMAL, NEGRITO]);
  rdprint1.impf(07,120,PedGerUfeGer.Value,[EXPANDIDO, NORMAL]);
  rdprint1.impf(08,001,'Pedido       : '+PedGerPedCli.Value,[NORMAL,NEGRITO]);

  rdprint1.impf(08,114,'Pagina No. '+fNumZeros(IntToStr(Pagina),3),[NORMAL]);

  rdprint1.impf(09,001,fReplicate('-',80),[NORMAL]);
  rdprint1.impf(10,001,'Nosso Codigo',[comp17]);
  rdprint1.imp(10,016,'Descricao');
  rdprint1.imp(10,078,'Quant');
  rdprint1.imp(10,086,'Preco Bruto');
  rdprint1.imp(10,099,'% Desc');
  rdprint1.imp(10,106,'% Acrs');
  rdprint1.imp(10,116,'Preco Liq');
  rdprint1.imp(10,128,'Total Item');
  rdprint1.imp(11,001,fReplicate('-',14));
  rdprint1.imp(11,016,fReplicate('-',55));
  rdprint1.imp(11,072,fReplicate('-',12));
  rdprint1.imp(11,085,fReplicate('-',12));
  rdprint1.imp(11,099,fReplicate('-',06));
  rdprint1.imp(11,106,fReplicate('-',06));
  rdprint1.imp(11,113,fReplicate('-',12));
  rdprint1.imp(11,126,fReplicate('-',12));

  Linha := 12;

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
  if PedGr2CodEmp.Value > 0 then
     Text := PedGr2CodGru.Value+'.'+PedGr2CodSub.Value+'.'+PedGr2CodPro.Value
  else
     Text := ' ';
end;

end.

