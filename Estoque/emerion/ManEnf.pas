unit ManEnf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, dxPageControl, ExtCtrls, Buttons, dxCntner, dxEditor, dxEdLib,
  StdCtrls, ComCtrls, dxExEdtr, DBTables, Db, Wwdatsrc, Wwquery, ImgList,
  Menus, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, dxDBCtrl,
  dxDBGrid, dxTL, dxDBTLCl, dxGrClms, dxDBEdtr, dxDBELib, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, hNavigator, dxDBColorCurrencyEdit, dxDBColorDateEdit,
  dxDBColorLookupEdit, dxDBColorEdit, dxColorDateEdit, dxColorEdit;

type
  TfmManEnf = class(TfmPadrao)
    pcEnf: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    EdPsqCodPro: TdxColorEdit;
    EdPsqCodSub: TdxColorEdit;
    EdPsqCodGru: TdxColorEdit;
    EdPsqCodClp: TdxColorEdit;
    BbPsqClp1: TSpeedButton;
    BbPsqGru1: TSpeedButton;
    BbPsqSub1: TSpeedButton;
    EdPsqNomSub: TdxColorEdit;
    EdPsqNomGru: TdxColorEdit;
    EdPsqNomClp: TdxColorEdit;
    Label44: TLabel;
    Shape54: TShape;
    Shape55: TShape;
    Label1: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp1: TSpeedButton;
    EdPsqNomEmp: TdxColorEdit;
    BbPsqPro1: TSpeedButton;
    EdPsqNomPro: TdxColorEdit;
    BbPesquisa: TBitBtn;
    Shape56: TShape;
    Label45: TLabel;
    Shape57: TShape;
    EdPsqDteEn2: TdxColorDateEdit;
    Label31: TLabel;
    EdPsqDteEn1: TdxColorDateEdit;
    Label30: TLabel;
    EstEnf: TwwQuery;
    DsEnf: TwwDataSource;
    UpEnf: TUpdateSQL;
    quSql: TwwQuery;
    rgOrdem: TRadioGroup;
    Label2: TLabel;
    EdPsqSeqEnf: TdxColorEdit;
    EdPsqAnoEnf: TdxColorEdit;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    EdPsqCodOpe: TdxColorEdit;
    BbPsqOpe1: TSpeedButton;
    EdPsqNomOpe: TdxColorEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    EdCodPro: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodGru: TdxDBColorEdit;
    EdCodClp: TdxDBColorEdit;
    CbNomClp: TdxDBColorLookupEdit;
    CbNomGru: TdxDBColorLookupEdit;
    CbNomSub: TdxDBColorLookupEdit;
    CbNomPro: TdxDBColorLookupEdit;
    Label14: TLabel;
    EdCodTam: TdxDBColorEdit;
    Label15: TLabel;
    EdCodCor: TdxDBColorEdit;
    CbNomCor: TdxDBColorLookupEdit;
    EdCodEmp: TdxDBColorEdit;
    CbNomEmp: TdxDBColorLookupEdit;
    EdSeqEnf: TdxDBColorEdit;
    EdAnoEnf: TdxDBColorEdit;
    EdCodOpe: TdxDBColorEdit;
    CbNomOpe: TdxDBColorLookupEdit;
    EdDteEnf: TdxDBColorDateEdit;
    EdValEnf: TdxDBColorCurrencyEdit;
    GerEmp: TwwQuery;
    DsEmp: TwwDataSource;
    BbPsqEmp2: TSpeedButton;
    BbPsqClp2: TSpeedButton;
    BbPsqGru2: TSpeedButton;
    BbPsqSub2: TSpeedButton;
    BbPsqPro2: TSpeedButton;
    BbPsqOpe2: TSpeedButton;
    BbPsqCor: TSpeedButton;
    EstClp: TwwQuery;
    DsClp: TwwDataSource;
    EstClpCODCLP: TStringField;
    EstClpNOMCLP: TStringField;
    GerEmpCODEMP: TIntegerField;
    GerEmpNOMEMP: TStringField;
    EstGru: TwwQuery;
    DsGru: TwwDataSource;
    EstGruCODGRU: TStringField;
    EstGruNOMGRU: TStringField;
    DsSub: TwwDataSource;
    EstSub: TwwQuery;
    EstSubCODGRU: TStringField;
    EstSubCODSUB: TStringField;
    EstSubNOMSUB: TStringField;
    DsPro: TwwDataSource;
    EstPro: TwwQuery;
    EstProDSCPRO: TStringField;
    EstProCODPRO: TStringField;
    EstProCODCLP: TStringField;
    EstProCODGRU: TStringField;
    EstProCODSUB: TStringField;
    EstCor: TwwQuery;
    DsCor: TwwDataSource;
    EstCorNOMCOR: TStringField;
    EstOpe: TwwQuery;
    DsOpe: TwwDataSource;
    EstOpeCODOPE: TStringField;
    EstOpeNOMOPE: TStringField;
    EstOpeTIPOPE: TStringField;
    Label16: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Label17: TLabel;
    EdDteOpe: TdxDBColorDateEdit;
    Label18: TLabel;
    EdHreOpe: TdxDBColorEdit;
    Label19: TLabel;
    EdCodUsu: TdxDBColorEdit;
    CbNomUSu: TdxDBColorLookupEdit;
    GerUsu: TwwQuery;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    Panel3: TPanel;
    grEnf: ThGrid;
    EstEnfANOENF: TIntegerField;
    EstEnfSEQENF: TIntegerField;
    EstEnfCODEMP: TIntegerField;
    EstEnfCODCLP: TStringField;
    EstEnfCODGRU: TStringField;
    EstEnfCODSUB: TStringField;
    EstEnfCODPRO: TStringField;
    EstEnfDTEENF: TDateTimeField;
    EstEnfDTEOPE: TDateTimeField;
    EstEnfHREOPE: TStringField;
    EstEnfCODOPE: TStringField;
    EstEnfVALENF: TFloatField;
    EstEnfQTDENF: TFloatField;
    EstEnfPERICM: TFloatField;
    EstEnfVALICM: TFloatField;
    EstEnfPERIPI: TFloatField;
    EstEnfVALIPI: TFloatField;
    EstEnfVALCST: TFloatField;
    EstEnfCODUSU: TIntegerField;
    EstEnfFLGENF: TStringField;
    EstEnfDSCPRO: TStringField;
    EstEnfNUMENF: TStringField;
    EstEnfNOMOPE: TStringField;
    EstEnfCODITE: TStringField;
    DsUsu: TwwDataSource;
    Label20: TLabel;
    EdQtdEnf: TdxDBColorCurrencyEdit;
    Label21: TLabel;
    EdPerIcm: TdxDBColorCurrencyEdit;
    Label22: TLabel;
    EdPerIpi: TdxDBColorCurrencyEdit;
    Label23: TLabel;
    Label24: TLabel;
    EdValIpi: TdxDBColorCurrencyEdit;
    EdValIcm: TdxDBColorCurrencyEdit;
    Label25: TLabel;
    EdClsIpi: TdxDBColorEdit;
    Label26: TLabel;
    Shape11: TShape;
    EstEnfFLGTRG: TStringField;
    EstEnfFLGSEQ: TStringField;
    nvEnf: ThDBNavigator;
    Label27: TLabel;
    EdValRef: TdxDBColorCurrencyEdit;
    EstEnfVALREF: TFloatField;
    EstEnfCODTAM: TStringField;
    EstEnfCODCOR: TStringField;
    EstCorCODCOR: TStringField;
    EstEnfFLGOPE: TStringField;
    EstEnfCLSIPI: TStringField;
    EstEnfVALFIN: TFloatField;
    EstEnfQTANTE: TFloatField;
    EstEnfQTATUA: TFloatField;
    dxDBCurrencyEdit1: TdxDBColorCurrencyEdit;
    dxDBCurrencyEdit2: TdxDBColorCurrencyEdit;
    Label28: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    EdObsEnf: TdxDBColorEdit;
    EstEnfOBSENF: TStringField;
    EstPar: TwwQuery;
    EstParFLGTAM: TStringField;
    EstParTAMCOR: TStringField;
    EstParOPEENT: TStringField;
    EstParFLGTAB: TStringField;
    EstParBLOCST: TStringField;
    pnEstoque: TPanel;
    Panel10: TPanel;
    Panel4: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label51: TLabel;
    Panel13: TPanel;
    Panel12: TPanel;
    Panel11: TPanel;
    Panel9: TPanel;
    Panel8: TPanel;
    EdQtaIte: TPanel;
    Panel7: TPanel;
    EdQtdIte: TPanel;
    Panel6: TPanel;
    EdQtrIte: TPanel;
    Panel5: TPanel;
    EdSldIte: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    EdQtdRma: TPanel;
    Panel14: TPanel;
    procedure EdPsqSeqEnfKeyPress(Sender: TObject; var Key: Char);
    procedure BbPsqEmp1Click(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure BbPsqClp1Click(Sender: TObject);
    procedure EdPsqCodClpExit(Sender: TObject);
    procedure BbPsqGru1Click(Sender: TObject);
    procedure EdPsqCodGruExit(Sender: TObject);
    procedure BbPsqSub1Click(Sender: TObject);
    procedure EdPsqCodSubExit(Sender: TObject);
    procedure BbPsqPro1Click(Sender: TObject);
    procedure EdPsqCodProExit(Sender: TObject);
    procedure BbPsqOpe1Click(Sender: TObject);
    procedure EdPsqCodOpeExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure BbPsqEmp2Click(Sender: TObject);
    procedure BbPsqClp2Click(Sender: TObject);
    procedure BbPsqGru2Click(Sender: TObject);
    procedure BbPsqSub2Click(Sender: TObject);
    procedure BbPsqPro2Click(Sender: TObject);
    procedure BbPsqCorClick(Sender: TObject);
    procedure BbPsqOpe2Click(Sender: TObject);
    procedure DsEnfDataChange(Sender: TObject; Field: TField);
    procedure EstEnfNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EstEnfBeforePost(DataSet: TDataSet);
    procedure nvEnfSalva(Sender: TObject);
    procedure BbPesquisaClick(Sender: TObject);
    procedure EdValEnfExit(Sender: TObject);
    procedure EdQtdEnfExit(Sender: TObject);
    procedure EdPerIcmExit(Sender: TObject);
    procedure EdPerIpiExit(Sender: TObject);
    procedure nvEnfBeforeSalva(Sender: TObject);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodClpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodOpeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdQtdEnfEnter(Sender: TObject);
    procedure EstEnfAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManEnf: TfmManEnf;

implementation

uses Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqClp, PsqOpe, PsqCor, ManPri,
     AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmManEnf.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select EstEnf.*,DscPro,'+
           '        EstEnf.SeqEnf || _UNICODE_FSS '''+'/'+''' || EstEnf.AnoEnf as NumEnf,'+
           '        EstEnf.CodOpe || _UNICODE_FSS '''+' - '+''' || NomOpe as NomOpe,'+
           '        CodClp || _UNICODE_FSS '''+'.'+''' || CodGru || _UNICODE_FSS '''+'.'+''' || CodSub || _UNICODE_FSS '''+'.'+''' || CodPro as CodIte'+
           ' From EstEnf INNER JOIN EstQte ON (EstEnf.CodEmp = EstQte.CodEmp)'+
           '                              AND (EstEnf.CodClp = EstQte.CodClp)'+
           '                              AND (EstEnf.CodGru = EstQte.CodGru)'+
           '                              AND (EstEnf.CodSub = EstQte.CodSub)'+
           '                              AND (EstEnf.CodPro = EstQte.CodPro)'+
           '                              AND (EstEnf.CodTam = EstQte.CodTam)'+
           '                              AND (EstEnf.CodCor = EstQte.CodCor)'+
           '              LEFT JOIN EstTam ON (EstQte.CodEmp = EstTam.CodEmp)'+
           '                              AND (EstQte.CodClp = EstTam.CodClp)'+
           '                              AND (EstQte.CodGru = EstTam.CodGru)'+
           '                              AND (EstQte.CodSub = EstTam.CodSub)'+
           '                              AND (EstQte.CodPro = EstTam.CodPro)'+
           '                              AND (EstQte.CodTam = EstTam.CodTam)'+
           '              LEFT JOIN EstIte ON (EstTam.CodEmp = EstIte.CodEmp)'+
           '                              AND (EstTam.CodClp = EstIte.CodClp)'+
           '                              AND (EstTam.CodGru = EstIte.CodGru)'+
           '                              AND (EstTam.CodSub = EstIte.CodSub)'+
           '                              AND (EstTam.CodPro = EstIte.CodPro)'+
           '              LEFT JOIN EstPro ON (EstIte.CodClp = EstPro.CodClp)'+
           '                              AND (EstIte.CodGru = EstPro.CodGru)'+
           '                              AND (EstIte.CodSub = EstPro.CodSub)'+
           '                              AND (EstIte.CodPro = EstPro.CodPro)'+
           '              LEFT JOIN EstOpe ON (EstEnf.CodOpe = EstOpe.CodOpe)';

end;

procedure TfmManEnf.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqSeqEnf.SetFocus;
end;

procedure TfmManEnf.pcPag2Show(Sender: TObject);
begin
  inherited;
  EdCodOpe.SetFocus;
end;

procedure TfmManEnf.EdPsqSeqEnfKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManEnf.BbPsqEmp1Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;

  if Trim( EdPsqCodEmp.Text ) <> '' then EdPsqCodClp.SetFocus;

end;

procedure TfmManEnf.EdPsqCodEmpExit(Sender: TObject);
begin
  inherited;
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
          Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('NomEmp').AsString ) <> '' then
             EdPsqNomEmp.Text := FieldByName('NomEmp').AsString
          else
             begin

             EdPsqNomEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqNomEmp.Text := '';
end;

procedure TfmManEnf.BbPsqClp1Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqClp := TfmPsqClp.Create(Self);

     if Trim(EdPsqCodEmp.Text) <> '' then begin
     
        with fmPsqClp.EstClp,SQL do begin

             Close;
             Text := ' Select * From EstClp '+
                     ' Where Exists(Select * From EstQte Where EstQte.CodEmp = '''+ EdPsqCodEmp.Text +''''+
                     '                                     and EstQte.CodClp = EstClp.CodClp)'+
                     ' Order by NomClp';
             Open;

        end;

        end
     else
        begin

        with fmPsqClp.EstClp,SQL do begin

             Close;
             Text := ' Select * From EstClp '+
                     ' Where Exists(Select * From EstQte Where EstQte.CodEmp = EstClp.CodClp)'+
                     ' Order by NomClp';
             Open;

        end;
     end;
     
     fmPsqClp.ShowModal;

     if Trim( fmPsqClp.CodClp ) <> '' then begin

        EdPsqCodClp.Text := fmPsqClp.CodClp;
        EdPsqNomClp.Text := fmPsqClp.NomClp;

     end;

  finally   

     FreeAndNil(fmPsqClp);

  end;
  
  if Trim( EdPsqCodClp.Text ) <> '' then EdPsqCodGru.SetFocus;

end;

procedure TfmManEnf.EdPsqCodClpExit(Sender: TObject);
begin
  inherited;
  if (Trim( EdPsqCodClp.Text ) <> '') then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp '+
                  ' Where CodClp = '''+EdPsqCodClp.Text+'''';
          Open;

          EdPsqNomClp.Text := quSql.FieldByName('NomClp').AsString;

     end;

     end
  else
     EdPsqNomClp.Text := '';
end;

procedure TfmManEnf.BbPsqGru1Click(Sender: TObject);
begin
  inherited;

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

procedure TfmManEnf.EdPsqCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGru.Text ) <> '' then begin

     EdPsqCodGru.Text := FNumZeros(EdPsqCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru '+
                  ' Where CodGru = '''+EdPsqCodGru.Text+'''';
          Open;

          EdPsqNomGru.Text := quSql.FieldByName('NomGru').AsString;

     end;

     end
  else
     EdPsqNomGru.Text := '';
end;

procedure TfmManEnf.BbPsqSub1Click(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdPsqCodClp.Text;
     fmAuxIni.CodGru := EdPsqCodGru.Text;

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

procedure TfmManEnf.EdPsqCodSubExit(Sender: TObject);
begin
  inherited;
  if (Trim( EdPsqCodSub.Text ) <> '') and (Trim( EdPsqCodGru.Text ) <> '') then begin

     EdPsqCodSub.Text := FNumZeros(EdPsqCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub '+
                  ' Where CodGru = '''+EdPsqCodGru.Text+''''+
                  '   and CodSub = '''+EdPsqCodSub.Text+'''';
          Open;

          EdPsqNomSub.Text := quSql.FieldByName('NomSub').AsString;

     end;

     end
  else
     EdPsqNomSub.Text := '';
end;

procedure TfmManEnf.BbPsqPro1Click(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdPsqCodClp.Text;
     fmAuxIni.CodGru := EdPsqCodGru.Text;
     fmAuxIni.CodSub := EdPsqCodSub.Text;

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
  
  if Trim( EdPsqCodPro.Text ) <> '' then EdPsqCodOpe.SetFocus;

end;

procedure TfmManEnf.EdPsqCodProExit(Sender: TObject);
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

          EdPsqNomPro.Text := quSql.FieldByName('DscPro').AsString;

     end;

     end
  else
     EdPsqNomPro.Text := '';
end;

procedure TfmManEnf.BbPsqOpe1Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqOpe := TfmPsqOpe.Create(Self);

     fmPsqOpe.EstOpe.Close;
     fmPsqOpe.EstOpe.Params[0].AsString := 'E';
     fmPsqOpe.EstOpe.Open;

     fmPsqOpe.ShowModal;

     if Trim( fmPsqOpe.CodOpe ) <> '' then begin

        EdPsqCodOpe.Text := fmPsqOpe.CodOpe;
        EdPsqNomOpe.Text := fmPsqOpe.NomOpe;

     end;

  finally   

     FreeAndNil(fmPsqOpe);

  end;
  
  if Trim( EdPsqCodOpe.Text ) <> '' then EdPsqDteEn1.SetFocus;

end;

procedure TfmManEnf.EdPsqCodOpeExit(Sender: TObject);
begin
  inherited;
  if (Trim( EdPsqCodOpe.Text ) <> '') then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select * From EstOpe '+
                  ' Where CodOpe = '''+EdPsqCodOpe.Text+''''+
                  '   and TipOpe = '''+'E'+'''';
          Open;

          EdPsqNomOpe.Text := quSql.FieldByName('NomOpe').AsString;

     end;

     end
  else
     EdPsqNomOpe.Text := '';
end;

procedure TfmManEnf.BbPsqEmp2Click(Sender: TObject);
begin
  inherited;
  if EdCodEmp.Enabled then begin

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then EstEnfCodEmp.Value := fmPsqEmp.CodEmp;

     finally   

        FreeAndNil(fmPsqEmp);

     end;

     if EstEnfCodEmp.Value > 0 then EdCodClp.SetFocus;

  end;
end;

procedure TfmManEnf.BbPsqClp2Click(Sender: TObject);
begin
  inherited;
  if EdCodClp.Enabled then begin

     try

        fmPsqClp := TfmPsqClp.Create(Self);

        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then EstEnfCodClp.Value := fmPsqClp.CodClp;

     finally   

        FreeAndNil(fmPsqClp);

     end;
     
     if Trim( EstEnfCodClp.Value ) <> '' then EdCodGru.SetFocus;

  end;
end;

procedure TfmManEnf.BbPsqGru2Click(Sender: TObject);
begin
  inherited;
  if EdCodGru.Enabled then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EstEnfCodClp.Value;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then EstEnfCodGru.Value := fmAuxIni.CodGru;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EstEnfCodGru.Value ) <> '' then EdCodSub.SetFocus;

  end;
end;

procedure TfmManEnf.BbPsqSub2Click(Sender: TObject);
begin
  inherited;
  if EdCodSub.Enabled then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EstEnfCodClp.Value;
        fmAuxIni.CodGru := EstEnfCodGru.Value;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodSub ) <> '' then begin

           EstEnfCodGru.Value := fmAuxIni.CodGru;
           EstEnfCodSub.Value := fmAuxIni.CodSub;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;
     
     if Trim( EstEnfCodSub.Value ) <> '' then EdCodPro.SetFocus;

  end;
end;

procedure TfmManEnf.BbPsqPro2Click(Sender: TObject);
begin
  inherited;
  if EdCodPro.Enabled then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EstEnfCodClp.Value;
        fmAuxIni.CodGru := EstEnfCodGru.Value;
        fmAuxIni.CodSub := EstEnfCodSub.Value;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodPro ) <> '' then begin

           EstEnfCodClp.Value := fmAuxIni.CodClp;
           EstEnfCodGru.Value := fmAuxIni.CodGru;
           EstEnfCodSub.Value := fmAuxIni.CodSub;
           EstEnfCodPro.Value := fmAuxIni.CodPro;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;
     
     EdCodPro.SetFocus;
     
   end;
end;

procedure TfmManEnf.BbPsqCorClick(Sender: TObject);
begin
  inherited;
  if EdCodClp.Enabled then begin

     try

        fmPsqCor := TfmPsqCor.Create(Self);

        with fmPsqCor.EstCor,SQL do begin

             Close;
             Text := ' Select * From EstCor '+
                     ' Where Exists (Select * From EstQte Where CodEmp = :CodEmp'+
                     '                                      and CodClp = :CodClp'+
                     '                                      and CodGru = :CodGru'+
                     '                                      and CodSub = :CodSub'+
                     '                                      and CodPro = :CodPro'+
                     '                                      and CodTam = :CodTam'+
                     '                                      and CodCor = EstCor.CodCor)';

             with Params do begin

                  Params[0].AsInteger := EstEnfCodEmp.Value;
                  Params[1].AsString  := EstEnfCodClp.Value;
                  Params[2].AsString  := EstEnfCodGru.Value;
                  Params[3].AsString  := EstEnfCodSub.Value;
                  Params[4].AsString  := EstEnfCodPro.Value;
                  Params[5].AsString  := EstEnfCodTam.Value;

             end;

             Open;

        end;

        fmPsqCor.ShowModal;

        if Trim( fmPsqCor.CodCor ) <> '' then begin

           if not nvEnf.Salvar then begin

              if EstEnfCodEmp.Value > 0 then
                 EstEnf.Edit
              else
                 EstEnf.Insert;

           end;

           EstEnfCodCor.Value := fmPsqCor.CodCor;

        end;

     finally

        FreeAndNil(fmPsqCor);

     end;
     
     if EstEnf.State = dsInsert then begin

        if Trim( EstEnfCodCor.Value ) <> '' then EdDteEnf.SetFocus;

     end;
  end;
end;

procedure TfmManEnf.BbPsqOpe2Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqOpe := TfmPsqOpe.Create(Self);

     fmPsqOpe.EstOpe.Close;
     fmPsqOpe.EstOpe.Params[0].AsString := 'E';
     fmPsqOpe.EstOpe.Open;

     fmPsqOpe.ShowModal;

     if Trim( fmPsqOpe.CodOpe ) <> '' then begin

        if not nvEnf.Salvar then begin

           if EstEnfCodEmp.Value > 0 then
              EstEnf.Edit
           else
              EstEnf.Insert;

        end;

        EstEnfCodOpe.Value := fmPsqOpe.CodOpe;

     end;

  finally   

     FreeAndNil(fmPsqOpe);

  end;
  
  if EstEnf.State = dsInsert then begin

     if Trim( EstEnfCodOpe.Value ) <> '' then EdQtdEnf.SetFocus;

  end;
end;

procedure TfmManEnf.DsEnfDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvEnf.Salvar then begin

     if EdCodEmp.Enabled then begin

        EdCodEmp.Enabled := False;
        CbNomEmp.Enabled := False;
        EdCodClp.Enabled := False;
        CbNomClp.Enabled := False;
        EdCodGru.Enabled := False;
        CbNomGru.Enabled := False;
        EdCodSub.Enabled := False;
        CbNomSub.Enabled := False;
        EdCodPro.Enabled := False;
        CbNomPro.Enabled := False;
        EdCodTam.Enabled := False;
        EdCodCor.Enabled := False;
        CbNomCor.Enabled := False;

        EdCodEmp.Font.Style := [fsBold];
        CbNomEmp.Font.Style := [fsBold];
        EdCodClp.Font.Style := [fsBold];
        CbNomClp.Font.Style := [fsBold];
        EdCodGru.Font.Style := [fsBold];
        CbNomGru.Font.Style := [fsBold];
        EdCodSub.Font.Style := [fsBold];
        CbNomSub.Font.Style := [fsBold];
        EdCodPro.Font.Style := [fsBold];
        CbNomPro.Font.Style := [fsBold];
        EdCodTam.Font.Style := [fsBold];
        EdCodCor.Font.Style := [fsBold];
        CbNomCor.Font.Style := [fsBold];

     end;
  end;

  if EstClp.Params[0].AsInteger <> EstEnfCodEmp.Value then begin

     EstClp.Close;
     EstClp.Params[0].AsInteger := EstEnfCodEmp.Value;
     EstClp.Open;

  end;

  if (EstGru.Params[0].AsInteger <> EstEnfCodEmp.Value) or (EstGru.Params[1].AsString <> EstEnfCodClp.Value) then begin

     EstGru.Close;
     EstGru.Params[0].AsInteger := EstEnfCodEmp.Value;
     EstGru.Params[1].AsString  := EstEnfCodClp.Value;
     EstGru.Open;

  end;

  if (EstSub.Params[0].AsString <> EstEnfCodGru.Value) or (EstSub.Params[1].AsInteger <> EstEnfCodEmp.Value) or
     (EstSub.Params[2].AsString <> EstEnfCodClp.Value) then begin

     EstSub.Close;
     EstSub.Params[0].AsString  := EstEnfCodGru.Value;
     EstSub.Params[1].AsInteger := EstEnfCodEmp.Value;
     EstSub.Params[2].AsString  := EstEnfCodClp.Value;
     EstSub.Open;

  end;

  if (EstPro.Params[1].AsString <> EstEnfCodClp.Value) or (EstPro.Params[2].AsString  <> EstEnfCodGru.Value) or
     (EstPro.Params[3].AsString <> EstEnfCodSub.Value) or (EstPro.Params[0].AsInteger <> EstEnfCodEmp.Value) then begin

     EstPro.Close;
     EstPro.Params[0].AsString  := EstEnfCodClp.Value;
     EstPro.Params[1].AsString  := EstEnfCodGru.Value;
     EstPro.Params[2].AsString  := EstEnfCodSub.Value;
     EstPro.Params[3].AsInteger := EstEnfCodEmp.Value;
     EstPro.Open;

  end;

  if (EstCor.Params[0].AsInteger <> EstEnfCodEmp.Value) or (EstCor.Params[1].AsString <> EstEnfCodClp.Value) or
     (EstCor.Params[2].AsString  <> EstEnfCodGru.Value) or (EstCor.Params[3].AsString <> EstEnfCodSub.Value) or
     (EstCor.Params[4].AsString  <> EstEnfCodPro.Value) or (EstCor.Params[5].AsString <> EstEnfCodTam.Value) then begin

     EstCor.Close;
     EstCor.Params[0].AsInteger := EstEnfCodEmp.Value;
     EstCor.Params[1].AsString  := EstEnfCodClp.Value;
     EstCor.Params[2].AsString  := EstEnfCodGru.Value;
     EstCor.Params[3].AsString  := EstEnfCodSub.Value;
     EstCor.Params[4].AsString  := EstEnfCodPro.Value;
     EstCor.Params[5].AsString  := EstEnfCodTam.Value;
     EstCor.Open;

  end;

end;

procedure TfmManEnf.EstEnfNewRecord(DataSet: TDataSet);
var
FlgEnf : string;
begin
  inherited;

  Randomize;
  FlgEnf := FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

  EstEnf.DisableControls;

  EstEnfFlgTrg.Value := ' ';
  EstEnfFlgSeq.Value := ' ';
  EstEnfFlgOpe.Value := '*';
  EstEnfDteEnf.Value := Date;
  EstEnfFlgEnf.Value := FlgEnf;
  EstEnfCodEmp.Value := GEmp_Id;

  if EstParFlgTam.Value = 'Nao' then EstEnfCodTam.Value := 'UN';
  if EstParTamCor.Value = 'Nao' then EstEnfCodCor.Value := 'UN';

  if Trim( EstParOpeEnt.Value ) <> '' then EstEnfCodOpe.Value := EstParOpeEnt.Value;

  EstEnf.EnableControls;

  EdCodEmp.Enabled := True;
  CbNomEmp.Enabled := True;
  EdCodClp.Enabled := True;
  CbNomClp.Enabled := True;
  EdCodGru.Enabled := True;
  CbNomGru.Enabled := True;
  EdCodSub.Enabled := True;
  CbNomSub.Enabled := True;
  EdCodPro.Enabled := True;
  CbNomPro.Enabled := True;

  EdCodEmp.Font.Style := [];
  CbNomEmp.Font.Style := [];
  EdCodClp.Font.Style := [];
  CbNomClp.Font.Style := [];
  EdCodGru.Font.Style := [];
  CbNomGru.Font.Style := [];
  EdCodSub.Font.Style := [];
  CbNomSub.Font.Style := [];
  EdCodPro.Font.Style := [];
  CbNomPro.Font.Style := [];

  if EstParFlgTam.Value = 'Sim' then begin

     EdCodTam.Enabled := True;

     EdCodTam.Font.Style := [];

  end;

  if EstParTamCor.Value = 'Sim' then begin

     EdCodCor.Enabled := True;
     CbNomCor.Enabled := True;

     EdCodCor.Font.Style := [];
     CbNomCor.Font.Style := [];

  end;

  pcEnf.ActivePage := pcPag2;

  EdCodEmp.SetFocus;

end;

procedure TfmManEnf.FormShow(Sender: TObject);
begin
  inherited;

  if GFlgAce = 'Sim' then begin

     with GerEmp,SQL do begin

          Close;
          Text := ' Select NomEmp,CodEmp From GerEmp';

          if GEmpLog > 0 then
             Text := Text + ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
          else
             Text := Text + ' Where GerEmp.CodFil > 0';

          Text := Text + ' Order by GerEmp.NomEmp';

          Open;

     end;
  end;

  if EstParBloCst.Value = 'Sim' then begin

     if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then begin

        EdValEnf.Enabled := False;
        EdValRef.Enabled := False;

        EdValEnf.Font.Style := [fsBold];
        EdValRef.Font.Style := [fsBold];

     end;
  end;
  
  pcEnf.ActivePage := pcPag1;

  EdPsqSeqEnf.SetFocus;

end;

procedure TfmManEnf.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if EdCodGru.Enabled then begin

     if Trim( EstEnfCodGru.Value ) <> '' then EstEnfCodGru.Value := FNumZeros(EstEnfCodGru.Value,3);

  end;
end;

procedure TfmManEnf.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if EdCodSub.Enabled then begin

     if Trim( EstEnfCodSub.Value ) <> '' then EstEnfCodSub.Value := FNumZeros(EstEnfCodSub.Value,4);

  end;
end;

procedure TfmManEnf.EdCodProExit(Sender: TObject);
begin
  inherited;
  if EdCodPro.Enabled then begin

     if Trim( EstEnfCodPro.Value ) <> '' then EstEnfCodPro.Value := FNumStrZero(EstEnfCodPro.Value);

     with quSQL,SQL do begin

          Close;
          Text := ' Select QtdQte From EstQte'+
                  ' Where EstQte.CodEmp = :CodEmp'+
                  '   and EstQte.CodClp = :CodClp'+
                  '   and EstQte.CodGru = :CodGru'+
                  '   and EstQte.CodSub = :CodSub'+
                  '   and EstQte.CodPro = :CodPro'+
                  '   and EstQte.CodTam = :CodTam'+
                  '   and EstQte.CodCor = :CodCor';

          with Params do begin

               Params[0].AsInteger := EstEnfCodEmp.Value;
               Params[1].AsString  := EstEnfCodClp.Value;
               Params[2].AsString  := EstEnfCodGru.Value;
               Params[3].AsString  := EstEnfCodSub.Value;
               Params[4].AsString  := EstEnfCodPro.Value;
               Params[5].AsString  := EstEnfCodTam.Value;
               Params[6].AsString  := EstEnfCodCor.Value;

          end;

          Open;

          EstEnfQtAnte.Value := FieldbyName('QtdQte').AsFloat;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select * From EstIte'+
                  ' Where CodEmp = :CodEmp'+
                  '   and CodClp = :CodClp'+
                  '   and CodGru = :CodGru'+
                  '   and CodSub = :CodSub'+
                  '   and CodPro = :CodPro';

          with Params do begin

               Params[0].AsInteger := EstEnfCodEmp.Value;
               Params[1].AsString  := EstEnfCodClp.Value;
               Params[2].AsString  := EstEnfCodGru.Value;
               Params[3].AsString  := EstEnfCodSub.Value;
               Params[4].AsString  := EstEnfCodPro.Value;

          end;

          Open;

          if EstParFlgTab.Value = 'Ultimo Preco'           then EstEnfValEnf.Value := FieldbyName('CstIte').AsFloat;
          if EstParFlgTab.Value = 'Custo Historico'        then EstEnfValEnf.Value := FieldbyName('VchIte').AsFloat;
          if EstParFlgTab.Value = 'Custo Ponderado'        then EstEnfValEnf.Value := FieldbyName('VcpIte').AsFloat;
          if EstParFlgTab.Value = 'Custo Referencial'      then EstEnfValEnf.Value := FieldbyName('VcrIte').AsFloat;
          if EstParFlgTab.Value = 'Custo Historico (G)'    then EstEnfValEnf.Value := FieldbyName('VreIte').AsFloat;
          if EstParFlgTab.Value = 'Custo Ponderado (G)'    then EstEnfValEnf.Value := FieldbyName('VprIte').AsFloat;
          if EstParFlgTab.Value = 'Media Ponderada (E)'    then EstEnfValEnf.Value := FieldbyName('VmeIte').AsFloat;
          if EstParFlgTab.Value = 'Custo da Ultima Compra' then EstEnfValEnf.Value := FieldbyName('VpfIte').AsFloat;

     end;
  end;
end;

procedure TfmManEnf.EstEnfBeforePost(DataSet: TDataSet);
begin
  inherited;
  sFiltro := ' Where EstEnf.FlgEnf = '''+ EstEnfFlgEnf.Value +''''+
             '   and EstEnf.DteEnf = '''+ fDateToSQL(EstEnfDteEnf.Value) +'''';
end;

procedure TfmManEnf.nvEnfSalva(Sender: TObject);
begin
  inherited;
  with EstEnf,SQL do begin

       Close;
       Text := sBase + sFiltro;
       Open;

  end;
end;

procedure TfmManEnf.BbPesquisaClick(Sender: TObject);
begin
  inherited;

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
  
  if GFlgAce = 'Sim' then begin

     if Trim( EdPsqCodEmp.Text ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Empresa.',EdPsqCodEmp);

  end;
     
  case rgOrdem.Itemindex of
       0: sOrdem := ' Order by EstEnf.AnoEnf,EstEnf.SeqEnf';
       1: sOrdem := ' Order by EstEnf.DteEnf';
       2: sOrdem := ' Order by EstEnf.CodClp,EstEnf.CodGru,EstEnf.CodSub,EstEnf.CodPro';
       3: sOrdem := ' Order by DscPro';
       4: sOrdem := ' Order by EstEnf.CodOpe';
  end;

  sFiltro := '';

  if Trim( EdPsqSeqEnf.Text ) <> '' then sFiltro := ' Where EstEnf.SeqEnf = '''+ EdPsqSeqEnf.Text +'''';

  if Trim(fLimpaStr(EdPsqDteEn1.Text)) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstEnf.DteEnf >= '''+ fDateToSQL(EdPsqDteEn1.Date) +''''
     else
        sFiltro := sFiltro + ' and EstEnf.DteEnf >= '''+ fDateToSQL(EdPsqDteEn1.Date) +'''';

  end;

  if Trim(fLimpaStr(EdPsqDteEn2.Text)) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstEnf.DteEnf <= '''+ fDateToSQL(EdPsqDteEn2.Date) +''''
     else
        sFiltro := sFiltro + ' and EstEnf.DteEnf <= '''+ fDateToSQL(EdPsqDteEn2.Date) +'''';

  end;

  if Trim( EdpsqAnoEnf.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstEnf.AnoEnf = '''+EdPsqAnoEnf.Text+''''
     else
        sFiltro := sFiltro + ' and EstEnf.AnoEnf = '''+EdPsqAnoEnf.Text+'''';

  end;

  if Trim( EdpsqCodEmp.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstEnf.CodEmp = '''+EdPsqCodEmp.Text+''''
     else
        sFiltro := sFiltro + ' and EstEnf.CodEmp = '''+EdPsqCodEmp.Text+'''';

  end;

  if Trim( EdpsqCodClp.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstEnf.CodClp = '''+EdPsqCodClp.Text+''''
     else
        sFiltro := sFiltro + ' and EstEnf.CodClp = '''+EdPsqCodClp.Text+'''';

  end;

  if Trim( EdpsqCodGru.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstEnf.CodGru = '''+EdPsqCodGru.Text+''''
     else
        sFiltro := sFiltro + ' and EstEnf.CodGru = '''+EdPsqCodGru.Text+'''';

  end;

  if Trim( EdpsqCodSub.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstEnf.CodSub = '''+EdPsqCodSub.Text+''''
     else
        sFiltro := sFiltro + ' and EstEnf.CodSub = '''+EdPsqCodSub.Text+'''';

  end;

  if Trim( EdpsqCodPro.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstEnf.CodPro = '''+EdPsqCodPro.Text+''''
     else
        sFiltro := sFiltro + ' and EstEnf.CodPro = '''+EdPsqCodPro.Text+'''';

  end;

  if Trim( EdpsqCodOpe.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstEnf.CodOpe = '''+EdPsqCodOpe.Text+''''
     else
        sFiltro := sFiltro + ' and EstEnf.CodOpe = '''+EdPsqCodOpe.Text+'''';

  end;

  if GFlgAce = 'Sim' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := sFiltro + ' Where exists(Select * From GerEmp Where CodEmp = EstEnf.CodEmp'+
                             '                                     and CodFil > '''+ '0' +''')'
     else
        sFiltro := sFiltro + '   and exists(Select * From GerEmp Where CodEmp = EstEnf.CodEmp'+
                             '                                     and CodFil > '''+ '0' +''')';

  end;

  with EstEnf,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManEnf.EdValEnfExit(Sender: TObject);
begin
  inherited;

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if nvEnf.Salvar then begin

     EstEnfValIcm.Value := fRound(((EstEnfQtdEnf.Value * EstEnfValEnf.Value) * EstEnfPerIcm.Value)/100,2);
     EstEnfValIpi.Value := fRound(((EstEnfQtdEnf.Value * EstEnfValEnf.Value) * EstEnfPerIpi.Value)/100,2);

  end;
end;

procedure TfmManEnf.EdQtdEnfExit(Sender: TObject);
begin
  inherited;

  if pnEstoque.Visible then pnEstoque.Visible := False;
  
  if nvEnf.Salvar then begin

     EstEnfValIcm.Value := fRound(((EstEnfQtdEnf.Value * EstEnfValEnf.Value) * EstEnfPerIcm.Value)/100,2);
     EstEnfValIpi.Value := fRound(((EstEnfQtdEnf.Value * EstEnfValEnf.Value) * EstEnfPerIpi.Value)/100,2);

     EstEnfQtAtua.Value := fRound(EstEnfQtAnte.Value + EstEnfQtdEnf.Value,4);

  end;
end;

procedure TfmManEnf.EdPerIcmExit(Sender: TObject);
begin
  inherited;
  if nvEnf.Salvar then EstEnfValIcm.Value := fRound(((EstEnfQtdEnf.Value * EstEnfValEnf.Value) * EstEnfPerIcm.Value)/100,2);
end;

procedure TfmManEnf.EdPerIpiExit(Sender: TObject);
begin
  inherited;
  if nvEnf.Salvar then EstEnfValIpi.Value := fRound(((EstEnfQtdEnf.Value * EstEnfValEnf.Value) * EstEnfPerIpi.Value)/100,2);
end;

procedure TfmManEnf.nvEnfBeforeSalva(Sender: TObject);
var
vbaite : real;
begin
  inherited;

  if EstEnfQtdEnf.Value = 0 then fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdQtdEnf);
  if EstEnfValEnf.Value = 0 then fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdValEnf);

  if Trim(EstEnfObsEnf.Value) = '' then fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdObsEnf);

  with quSQL,SQL do begin

       Close;
       Text := ' Select * From EstIte'+
               ' Where CodEmp = :CodEmp'+
               '   and CodClp = :CodClp'+
               '   and CodGru = :CodGru'+
               '   and CodSub = :CodSub'+
               '   and CodPro = :CodPro';

       with Params do begin

            Params[0].AsInteger := EstEnfCodEmp.Value;
            Params[1].AsString  := EstEnfCodClp.Value;
            Params[2].AsString  := EstEnfCodGru.Value;
            Params[3].AsString  := EstEnfCodSub.Value;
            Params[4].AsString  := EstEnfCodPro.Value;

       end;

       Open;

       if EstParFlgTab.Value = 'Ultimo Preco'           then vbaIte := FieldbyName('CstIte').AsFloat;
       if EstParFlgTab.Value = 'Custo Historico'        then vbaIte := FieldbyName('VchIte').AsFloat;
       if EstParFlgTab.Value = 'Custo Ponderado'        then vbaIte := FieldbyName('VcpIte').AsFloat;
       if EstParFlgTab.Value = 'Custo Referencial'      then vbaIte := FieldbyName('VcrIte').AsFloat;
       if EstParFlgTab.Value = 'Custo Historico (G)'    then vbaIte := FieldbyName('VreIte').AsFloat;
       if EstParFlgTab.Value = 'Custo Ponderado (G)'    then vbaIte := FieldbyName('VprIte').AsFloat;
       if EstParFlgTab.Value = 'Media Ponderada (E)'    then vbaIte := FieldbyName('VmeIte').AsFloat;
       if EstParFlgTab.Value = 'Custo da Ultima Compra' then vbaIte := FieldbyName('VpfIte').AsFloat;

       if EstEnfValEnf.Value <> vbaite then begin

          if fmsgConf('Valor Informado para Entrada Diferente do Valor de Custo Informado para o Item de '+ FormatFloat('###,###,##0.00',vbaite)+ '.' + #10 + 'Confirma Alteração ? ','E') <> 'SIM' then begin

             fmsgErro('Lançamento não Pode ser Realizado.',EdValEnf);

          end;
       end;
  end;
end;

procedure TfmManEnf.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if nvEnf.Salvar then begin

     if key = 112 then begin {F1 - Iniciais}

        try

           fmPsqClp := TfmPsqClp.Create(Self);

           fmPsqClp.ShowModal;

           if Trim( fmPsqClp.CodClp ) <> '' then EstEnfCodClp.Value := fmPsqClp.CodClp;

        finally   

           FreeAndNil(fmPsqClp);

        end;
        
        if Trim( EstEnfCodClp.Value ) <> '' then EdCodGru.SetFocus;

     end;
  end;   
end;

procedure TfmManEnf.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if nvEnf.Salvar then begin

     if key = 112 then begin {F1 - Iniciais}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := EstEnfCodClp.Value;

           fmAuxIni.TipoPesq := 'G';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then EstEnfCodGru.Value := fmAuxIni.CodGru;

        finally   

           FreeAndNil(fmAuxIni);

        end;
        
        if Trim( EstEnfCodGru.Value ) <> '' then EdCodSub.SetFocus;

     end;

     if key = 113 then begin {F2 - Busca Inteligente}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := EstEnfCodClp.Value;

           fmAuxPsq.TipoPesq := 'G';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then EstEnfCodGru.Value := fmAuxPsq.CodGru;

        finally   

           FreeAndNil(fmAuxPsq);

        end;
        
        if Trim( EstEnfCodGru.Value ) <> '' then EdCodSub.SetFocus;

     end;
  end;   
end;

procedure TfmManEnf.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if nvEnf.Salvar then begin

     if key = 112 then begin {F1 - Iniciais}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := EstEnfCodClp.Value;
           fmAuxIni.CodGru := EstEnfCodGru.Value;

           fmAuxIni.TipoPesq := 'S';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              EstEnfCodGru.Value := fmAuxIni.CodGru;
              EstEnfCodSub.Value := fmAuxIni.CodSub;

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if Trim( EstEnfCodSub.Value ) <> '' then EdCodPro.SetFocus;

     end;

     if key = 113 then begin {F2 - Busca Inteligente}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := EstEnfCodClp.Value;
           fmAuxPsq.CodGru := EstEnfCodGru.Value;

           fmAuxPsq.TipoPesq := 'S';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              EstEnfCodGru.Value := fmAuxPsq.CodGru;
              EstEnfCodSub.Value := fmAuxPsq.CodSub;

           end;

        finally   

           FreeAndNil(fmAuxPsq);

        end;

        if Trim( EstEnfCodSub.Value ) <> '' then EdCodPro.SetFocus;

     end;
  end;   
end;

procedure TfmManEnf.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if nvEnf.Salvar then begin

     if key = 112 then begin {F1 - Iniciais}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := EstEnfCodClp.Value;
           fmAuxIni.CodGru := EstEnfCodGru.Value;
           fmAuxIni.CodSub := EstEnfCodSub.Value;

           fmAuxIni.TipoPesq := 'I';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodPro ) <> '' then begin

              EstEnfCodGru.Value := fmAuxIni.CodGru;
              EstEnfCodSub.Value := fmAuxIni.CodSub;
              EstEnfCodPro.Value := fmAuxIni.CodPro;

           end;

        finally   

           FreeAndNil(fmAuxIni);

        end;

        EdCodPro.SetFocus;
        
     end;

     if key = 113 then begin {F2 - Busca Inteligente}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := EstEnfCodClp.Value;
           fmAuxPsq.CodGru := EstEnfCodGru.Value;
           fmAuxPsq.CodSub := EstEnfCodSub.Value;

           fmAuxPsq.TipoPesq := 'I';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodPro ) <> '' then begin

              EstEnfCodGru.Value := fmAuxPsq.CodGru;
              EstEnfCodSub.Value := fmAuxPsq.CodSub;
              EstEnfCodPro.Value := fmAuxPsq.CodPro;

           end;

        finally   

           FreeAndNil(fmAuxPsq);

        end;

        EdCodPro.SetFocus;
        
     end;
  end;
end;

procedure TfmManEnf.EdPsqCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqClp := TfmPsqClp.Create(Self);

        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then begin

           EdPsqCodClp.Text := fmPsqClp.CodClp;
           EdPsqNomClp.Text := fmPsqClp.NomClp;

        end;

     finally   

        FreeAndNil(fmPsqClp);

     end;

     if Trim( EdPsqCodClp.Text ) <> '' then EdPsqCodGru.SetFocus;

  end;
end;

procedure TfmManEnf.EdPsqCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManEnf.EdPsqCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManEnf.EdPsqCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

        if Trim( fmAuxIni.CodPro ) <> '' then begin

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

     if Trim( EdPsqCodPro.Text ) <> '' then EdPsqCodOpe.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdPsqCodClp.Text;
        fmAuxPsq.CodGru := EdPsqCodGru.Text;
        fmAuxPsq.CodSub := EdPsqCodSub.Text;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodPro ) <> '' then begin

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

     if Trim( EdPsqCodPro.Text ) <> '' then EdPsqCodOpe.SetFocus;

  end;
end;

procedure TfmManEnf.EdPsqCodOpeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqOpe := TfmPsqOpe.Create(Self);

        fmPsqOpe.EstOpe.Close;
        fmPsqOpe.EstOpe.Params[0].AsString := 'E';
        fmPsqOpe.EstOpe.Open;

        fmPsqOpe.ShowModal;

        if Trim( fmPsqOpe.CodOpe ) <> '' then begin

           EdPsqCodOpe.Text := fmPsqOpe.CodOpe;
           EdPsqNomOpe.Text := fmPsqOpe.NomOpe;

        end;

     finally   

        FreeAndNil(fmPsqOpe);

     end;

     if Trim( EdPsqCodOpe.Text ) <> '' then EdPsqDteEn1.SetFocus;

  end;   
end;

procedure TfmManEnf.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     if Trim( EdPsqCodEmp.Text ) <> '' then EdPsqCodClp.SetFocus;

  end;
end;

procedure TfmManEnf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManEnf.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManEnf := Nil;
end;

procedure TfmManEnf.EdQtdEnfEnter(Sender: TObject);
begin
  inherited;
  if (EstEnfCodEmp.Value > 0) and
     (Trim(EstEnfCodClp.Value) <> '') and
     (Trim(EstEnfCodGru.Value) <> '') and
     (Trim(EstEnfCodSub.Value) <> '') and
     (Trim(EstEnfCodPro.Value) <> '') then begin

     if not pnEstoque.Visible then pnEstoque.Visible := True;

     with quSql,SQL do begin

          Close;
          Text := ' Select EstIte.CodEmp,'+
                  '        EstIte.QtdIte,'+
                  '        EstIte.QtrIte,'+
                  '        EstIte.QtdRma,'+
                  '        EstIte.QtaIte '+
                  ' From EstIte'+
                  ' Where EstIte.CodEmp = '+ QuotedStr(IntToStr(EstEnfCodEmp.Value)) +
                  '   and EstIte.CodClp = '+ QuotedStr(EstEnfCodClp.Value) +
                  '   and EstIte.CodGru = '+ QuotedStr(EstEnfCodGru.Value) +
                  '   and EstIte.CodSub = '+ QuotedStr(EstEnfCodSub.Value) +
                  '   and EstIte.CodPro = '+ QuotedStr(EstEnfCodPro.Value) ;
          Open;

     end;

     EdQtdIte.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtdIte').AsFloat)+' ';
     EdQtrIte.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtrIte').AsFloat)+' ';
     EdQtdRma.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtdRma').AsFloat)+' ';
     EdQtaIte.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtaIte').AsFloat)+' ';

     if fRound(quSQL.FieldbyName('QtdIte').AsFloat - quSQL.FieldbyName('QtrIte').AsFloat,4) < 0 then
        EdSldIte.Font.Color := clRed
     else
        EdSldIte.Font.Color := clGray;

     EdSldIte.Caption := FormatFloat('###,###,##0.0000',fRound(quSQL.FieldbyName('QtdIte').AsFloat - (quSQL.FieldbyName('QtrIte').AsFloat + quSQL.FieldbyName('QtdRma').AsFloat),4))+' ';

     end
  else
     begin

     if pnEstoque.Visible then pnEstoque.Visible := False;

  end;
end;

procedure TfmManEnf.EstEnfAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if pnEstoque.Visible then pnEstoque.Visible := False;
end;

end.
