unit ManPar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, StdCtrls, ExtCtrls, hNavigator, Db, DBTables, Wwquery, Mask,
  DBCtrls, hEdits, wwdblook, Buttons, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, dxDBEdtr, Wwdatsrc, dxDBColorPickEdit, dxDBColorCurrencyEdit,
  dxDBColorDateEdit, dxDBColorLookupEdit, dxDBColorEdit;

type
  TfmManPar = class(TfmPadrao)
    FatPar: TwwQuery;
    DsPar: TDataSource;
    UpPar: TUpdateSQL;
    Label10: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdFlgCot: TdxDBCheckEdit;
    FatParFLGCOT: TStringField;
    FatParCODTMO: TIntegerField;
    FatParDULCOT: TDateTimeField;
    FatParCODUSU: TIntegerField;
    FinTmo: TwwQuery;
    FinTmoNOMTMO: TStringField;
    FinTmoCODTMO: TIntegerField;
    DsTmo: TwwDataSource;
    EdCodTmo: TdxDBColorEdit;
    CbNomTmo: TdxDBColorLookupEdit;
    EdDUlCot: TdxDBColorDateEdit;
    EdValCot: TdxDBColorCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdCodUsu: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    GerUsu: TwwQuery;
    DsUsu: TwwDataSource;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    FatParTIPTMO: TStringField;
    EdTipTmo: TdxDBColorPickEdit;
    Label4: TLabel;
    FatParVALCOT: TFloatField;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel2: TBevel;
    Label11: TLabel;
    Label12: TLabel;
    EdPerPis: TdxDBColorCurrencyEdit;
    EdPerCof: TdxDBColorCurrencyEdit;
    EdQtdLin: TdxDBColorCurrencyEdit;
    EdQtdNot: TdxDBColorCurrencyEdit;
    FatParPERPIS: TFloatField;
    FatParPERCOF: TFloatField;
    FatParQTDLIN: TIntegerField;
    FatParQTDNOT: TIntegerField;
    Label14: TLabel;
    EdLerObs: TdxDBColorPickEdit;
    FatParCONPLC: TIntegerField;
    FatParSUBPLC: TIntegerField;
    FatParLANFAT: TStringField;
    FatParIMPCLF: TStringField;
    FatParLEROBS: TStringField;
    FatParIMPREF: TStringField;
    Label31: TLabel;
    EdImpRef: TdxDBColorPickEdit;
    DBCheckBox1: TDBCheckBox;
    FatParQTDROM: TIntegerField;
    FatParNFE2: TSmallintField;
    FatParPATHDANFE: TStringField;
    FatParPATHCANCELAMENTO: TStringField;
    FatParPATHNFE: TStringField;
    FatParPATHXML: TStringField;
    FatParPATHSCHEMAS: TStringField;
    FatParPATHLOGO: TStringField;
    FatParAMBIENTE: TSmallintField;
    FatParCERTNSERIE: TStringField;
    FatParCERTSENHA: TStringField;
    FatParCONSPEDXNOTA: TSmallintField;
    FatParALTERA_FATURADO: TSmallintField;
    FatParN_ALT_FAT: TStringField;
    FatParCFOP_CONS_SUB: TStringField;
    FatParENVIO_SERVICO: TStringField;
    dxDBColorPickEdit1: TdxDBColorPickEdit;
    Label15: TLabel;
    dxDBColorPickEdit2: TdxDBColorPickEdit;
    Label16: TLabel;
    FatParCALC_PIS_ZF: TStringField;
    FatParCALC_COF_ZF: TStringField;
    FatParVAL_DESCONTO: TFloatField;
    FatParFLG_PLAN_IMPORT: TStringField;
    DBCheckBox2: TDBCheckBox;
    Label13: TLabel;
    DBCheckBox3: TDBCheckBox;
    FatParORIG_DIFAL: TFloatField;
    FatParFLGDIFAL: TStringField;
    FatParFLG_DEL_TITULOS: TStringField;
    DBCheckBox4: TDBCheckBox;
    FatParEMAIL_CONTABILIDADE: TStringField;
    Label17: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit;
    Label18: TLabel;
    FatParFLG_MINUTA_RESUMIDA: TStringField;
    FatParALIQ_CRED_SN: TFloatField;
    DBCheckBox22: TDBCheckBox;
    FatParSUPRIMIR_ZEROS: TSmallintField;
    procedure FormShow(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DsParDataChange(Sender: TObject; Field: TField);
    procedure EdFlgCotClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPar: TfmManPar;

implementation

uses dxDemoUtils, BbMensag, ManGDB;

{$R *.DFM}

procedure TfmManPar.FormShow(Sender: TObject);
begin
  inherited;

  FatPar.Edit;

  EdFlgCot.SetFocus;

end;

procedure TfmManPar.bConfirmarClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if fMsg('Confirma Alterações', 'S') then
    begin

      with FatPar do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alterações}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
          ;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      if FatPar.State = dsBrowse then
        FatPar.Edit;

      EdFlgCot.SetFocus;

    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManPar.bCancelarClick(Sender: TObject);
begin
  inherited;

  FatPar.CancelUpdates;

  Close;

end;

procedure TfmManPar.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPar := nil;
end;

procedure TfmManPar.DsParDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if FatParFlgCot.Value = 'Sim' then
  begin

    EdCodTmo.Enabled := True;
    CbNomTmo.Enabled := True;
    EdValCot.Enabled := True;
    EdTipTmo.Enabled := True;

    EdCodTmo.Font.Style := [];
    CbNomTmo.Font.Style := [];
    EdValCot.Font.Style := [];
    EdTipTmo.Font.Style := [];

  end
  else
  begin

    EdCodTmo.Enabled := False;
    CbNomTmo.Enabled := False;
    EdValCot.Enabled := False;
    EdTipTmo.Enabled := False;

    EdCodTmo.Font.Style := [fsBold];
    CbNomTmo.Font.Style := [fsBold];
    EdValCot.Font.Style := [fsBold];
    EdTipTmo.Font.Style := [fsBold];

  end;
end;

procedure TfmManPar.EdFlgCotClick(Sender: TObject);
begin
  inherited;
  if EdFlgCot.Checked then
  begin

    EdCodTmo.Enabled := True;
    CbNomTmo.Enabled := True;
    EdValCot.Enabled := True;

    EdCodTmo.Font.Style := [];
    CbNomTmo.Font.Style := [];
    EdValCot.Font.Style := [];

  end
  else
  begin

    EdCodTmo.Enabled := False;
    CbNomTmo.Enabled := False;
    EdValCot.Enabled := False;

    EdCodTmo.Font.Style := [fsBold];
    CbNomTmo.Font.Style := [fsBold];
    EdValCot.Font.Style := [fsBold];

  end;
end;

procedure TfmManPar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

end.
