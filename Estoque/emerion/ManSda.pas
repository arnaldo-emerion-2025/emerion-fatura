unit ManSda;

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
  TfmManSda = class(TfmPadrao)
    pcSdf: TPageControl;
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
    EdPsqDteSd2: TdxColorDateEdit;
    Label31: TLabel;
    EdPsqDteSd1: TdxColorDateEdit;
    Label30: TLabel;
    EstSdf: TwwQuery;
    DsSdf: TwwDataSource;
    UpSdf: TUpdateSQL;
    SaveDialog: TSaveDialog;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    quSql: TwwQuery;
    ImageList1: TImageList;
    rgOrdem: TRadioGroup;
    Label2: TLabel;
    EdPsqSeqSdf: TdxColorEdit;
    EdPsqAnoSdf: TdxColorEdit;
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
    EdSeqSdf: TdxDBColorEdit;
    EdAnoSdf: TdxDBColorEdit;
    EdCodOpe: TdxDBColorEdit;
    CbNomOpe: TdxDBColorLookupEdit;
    EdDteSdf: TdxDBColorDateEdit;
    EdQtdSdf: TdxDBColorCurrencyEdit;
    GerEmp: TwwQuery;
    DsEmp: TwwDataSource;
    BbPsqEmp2: TSpeedButton;
    BbPsqClp2: TSpeedButton;
    BbPsqGru2: TSpeedButton;
    BbPsqSub2: TSpeedButton;
    BbPsqPro2: TSpeedButton;
    BbPsqOpe2: TSpeedButton;
    EstSdfANOSDF: TIntegerField;
    EstSdfSEQSDF: TIntegerField;
    EstSdfCODEMP: TIntegerField;
    EstSdfCODCLP: TStringField;
    EstSdfCODGRU: TStringField;
    EstSdfCODSUB: TStringField;
    EstSdfCODPRO: TStringField;
    EstSdfDTESDF: TDateTimeField;
    EstSdfDTEOPE: TDateTimeField;
    EstSdfHREOPE: TStringField;
    EstSdfCODOPE: TStringField;
    EstSdfQTDSDF: TFloatField;
    EstSdfCODUSU: TIntegerField;
    EstSdfDSCPRO: TStringField;
    EstSdfNOMOPE: TStringField;
    EstSdfCODITE: TStringField;
    EstSdfNUMSDA: TStringField;
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
    DsUsu: TwwDataSource;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    EstSdfFLGSDF: TStringField;
    Panel3: TPanel;
    grSda: ThGrid;
    Label26: TLabel;
    Shape11: TShape;
    EstSdfFLGTRG: TStringField;
    EstSdfFLGSEQ: TStringField;
    nvSdf: ThDBNavigator;
    wwQuery1: TwwQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    EstPar: TwwQuery;
    EstParFLGTAM: TStringField;
    EstParTAMCOR: TStringField;
    EstSdfCODTAM: TStringField;
    EstSdfCODCOR: TStringField;
    EstCorCODCOR: TStringField;
    EstParOPESDA: TStringField;
    EstSdfQTANTE: TFloatField;
    EstSdfQTATUA: TFloatField;
    Label20: TLabel;
    EdQtAnte: TdxDBColorCurrencyEdit;
    Label21: TLabel;
    EdQtAtua: TdxDBColorCurrencyEdit;
    Label22: TLabel;
    EdObsSdf: TdxDBColorEdit;
    EstSdfOBSSDF: TStringField;
    pnEstoque: TPanel;
    Panel10: TPanel;
    Panel4: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
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
    procedure EdPsqSeqSdfKeyPress(Sender: TObject; var Key: Char);
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
    procedure DsSdfDataChange(Sender: TObject; Field: TField);
    procedure EstSdfNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EstSdfBeforePost(DataSet: TDataSet);
    procedure nvSdfSalva(Sender: TObject);
    procedure BbPesquisaClick(Sender: TObject);
    procedure nvSdfBeforeSalva(Sender: TObject);
    procedure EdQtdSdfExit(Sender: TObject);
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
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodOpeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdQtdSdfEnter(Sender: TObject);
    procedure EstSdfAfterCancel(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManSda: TfmManSda;

implementation

uses Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqClp, PsqOpe, PsqCor, ManPri,
  AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmManSda.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select EstSdf.*,DscPro,'+
           '        EstSdf.SeqSdf || _UNICODE_FSS '''+'/'+''' || EstSdf.AnoSdf as NumSda,'+
           '        EstSdf.CodOpe || _UNICODE_FSS '''+' - '+''' || NomOpe as NomOpe,'+
           '        CodClp || _UNICODE_FSS '''+'.'+''' || CodGru || _UNICODE_FSS '''+'.'+''' || CodSub || _UNICODE_FSS '''+'.'+''' || CodPro as CodIte'+
           ' From EstSdf INNER JOIN EstQte ON (EstSdf.CodEmp = EstQte.CodEmp)'+
           '                              AND (EstSdf.CodClp = EstQte.CodClp)'+
           '                              AND (EstSdf.CodGru = EstQte.CodGru)'+
           '                              AND (EstSdf.CodSub = EstQte.CodSub)'+
           '                              AND (EstSdf.CodPro = EstQte.CodPro)'+
           '                              AND (EstSdf.CodTam = EstQte.CodTam)'+
           '                              AND (EstSdf.CodCor = EstQte.CodCor)'+
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
           '              LEFT JOIN EstOpe ON (EstSdf.CodOpe = EstOpe.CodOpe)';

end;

procedure TfmManSda.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqSeqSdf.SetFocus;
end;

procedure TfmManSda.pcPag2Show(Sender: TObject);
begin
  inherited;
  EdCodOpe.SetFocus;
end;

procedure TfmManSda.EdPsqSeqSdfKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManSda.BbPsqEmp1Click(Sender: TObject);
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

procedure TfmManSda.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmManSda.BbPsqClp1Click(Sender: TObject);
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

procedure TfmManSda.EdPsqCodClpExit(Sender: TObject);
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

procedure TfmManSda.BbPsqGru1Click(Sender: TObject);
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

procedure TfmManSda.EdPsqCodGruExit(Sender: TObject);
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

procedure TfmManSda.BbPsqSub1Click(Sender: TObject);
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

procedure TfmManSda.EdPsqCodSubExit(Sender: TObject);
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

procedure TfmManSda.BbPsqPro1Click(Sender: TObject);
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

procedure TfmManSda.EdPsqCodProExit(Sender: TObject);
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

procedure TfmManSda.BbPsqOpe1Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqOpe := TfmPsqOpe.Create(Self);

     fmPsqOpe.EstOpe.Close;
     fmPsqOpe.EstOpe.Params[0].AsString := 'S';
     fmPsqOpe.EstOpe.Open;

     fmPsqOpe.ShowModal;

     if Trim( fmPsqOpe.CodOpe ) <> '' then begin

        EdPsqCodOpe.Text := fmPsqOpe.CodOpe;
        EdPsqNomOpe.Text := fmPsqOpe.NomOpe;

     end;

  finally   

     FreeAndNil(fmPsqOpe);

  end;

  if Trim( EdPsqCodOpe.Text ) <> '' then EdPsqCodOpe.SetFocus;

end;

procedure TfmManSda.EdPsqCodOpeExit(Sender: TObject);
begin
  inherited;
  if (Trim( EdPsqCodOpe.Text ) <> '') then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select * From EstOpe '+
                  ' Where CodOpe = '''+EdPsqCodOpe.Text+''''+
                  '   and TipOpe = '''+'S'+'''';
          Open;

          EdPsqNomOpe.Text := quSql.FieldByName('NomOpe').AsString;

     end;

     end
  else
     EdPsqNomOpe.Text := '';
end;

procedure TfmManSda.BbPsqEmp2Click(Sender: TObject);
begin
  inherited;
  if EdCodEmp.Enabled then begin

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then EstSdfCodEmp.Value := fmPsqEmp.CodEmp;

     finally   

        FreeAndNil(fmPsqEmp);

     end;

     if EstSdfCodEmp.Value > 0 then EdCodClp.SetFocus;

  end;
end;

procedure TfmManSda.BbPsqClp2Click(Sender: TObject);
begin
  inherited;
  if EdCodClp.Enabled then begin

     try

        fmPsqClp := TfmPsqClp.Create(Self);

        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then EstSdfCodClp.Value := fmPsqClp.CodClp;

     finally   

        FreeAndNil(fmPsqClp);

     end;

     if Trim( EstSdfCodClp.Value ) <> '' then EdCodGru.SetFocus;

  end;
end;

procedure TfmManSda.BbPsqGru2Click(Sender: TObject);
begin
  inherited;
  if EdCodGru.Enabled then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EstSdfCodClp.Value;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then EstSdfCodGru.Value := fmAuxIni.CodGru;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EstSdfCodGru.Value ) <> '' then EdCodSub.SetFocus;

  end;
end;

procedure TfmManSda.BbPsqSub2Click(Sender: TObject);
begin
  inherited;
  if EdCodSub.Enabled then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EstSdfCodClp.Value;
        fmAuxIni.CodGru := EstSdfCodGru.Value;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodSub ) <> '' then begin

           EstSdfCodGru.Value := fmAuxIni.CodGru;
           EstSdfCodSub.Value := fmAuxIni.CodSub;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EstSdfCodSub.Value ) <> '' then EdCodPro.SetFocus;

  end;
end;

procedure TfmManSda.BbPsqPro2Click(Sender: TObject);
begin
  inherited;
  if EdCodPro.Enabled then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EstSdfCodClp.Value;
        fmAuxIni.CodGru := EstSdfCodGru.Value;
        fmAuxIni.CodSub := EstSdfCodSub.Value;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodPro ) <> '' then begin

           EstSdfCodClp.Value := fmAuxIni.CodClp;
           EstSdfCodGru.Value := fmAuxIni.CodGru;
           EstSdfCodSub.Value := fmAuxIni.CodSub;
           EstSdfCodPro.Value := fmAuxIni.CodPro;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;
     
     EdCodPro.SetFocus;
     
   end;
end;

procedure TfmManSda.BbPsqCorClick(Sender: TObject);
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

                  Params[0].AsInteger := EstSdfCodEmp.Value;
                  Params[1].AsString  := EstSdfCodClp.Value;
                  Params[2].AsString  := EstSdfCodGru.Value;
                  Params[3].AsString  := EstSdfCodSub.Value;
                  Params[4].AsString  := EstSdfCodPro.Value;
                  Params[5].AsString  := EstSdfCodTam.Value;

             end;

             Open;

        end;

        fmPsqCor.ShowModal;

        if Trim( fmPsqCor.CodCor ) <> '' then begin

           if not nvSdf.Salvar then begin

              if EstSdfCodEmp.Value > 0 then
                 EstSdf.Edit
              else
                 EstSdf.Insert;

           end;

           EstSdfCodCor.Value := fmPsqCor.CodCor;

        end;

     finally

        FreeAndNil(fmPsqCor);

     end;

     if EstSdf.State = dsInsert then begin

        if Trim( EstSdfCodCor.Value ) <> '' then EdDteSdf.SetFocus;

     end;
  end;
end;

procedure TfmManSda.BbPsqOpe2Click(Sender: TObject);
begin
  inherited;

  try

     fmPsqOpe := TfmPsqOpe.Create(Self);

     fmPsqOpe.EstOpe.Close;
     fmPsqOpe.EstOpe.Params[0].AsString := 'S';
     fmPsqOpe.EstOpe.Open;

     fmPsqOpe.ShowModal;

     if Trim( fmPsqOpe.CodOpe ) <> '' then begin

        if not nvSdf.Salvar then begin

           if EstSdfCodEmp.Value > 0 then
              EstSdf.Edit
           else
              EstSdf.Insert;

        end;

        EstSdfCodOpe.Value := fmPsqOpe.CodOpe;

     end;

  finally   

     FreeAndNil(fmPsqOpe);

  end;

  if EstSdf.State = dsInsert then begin

     if Trim( EstSdfCodOpe.Value ) <> '' then EdQtdSdf.SetFocus;

  end;
end;

procedure TfmManSda.DsSdfDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvSdf.Salvar then begin

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

  if EstClp.Params[0].AsInteger <> EstSdfCodEmp.Value then begin

     EstClp.Close;
     EstClp.Params[0].AsInteger := EstSdfCodEmp.Value;
     EstClp.Open;

  end;

  if (EstGru.Params[0].AsInteger <> EstSdfCodEmp.Value) or (EstGru.Params[1].AsString <> EstSdfCodClp.Value) then begin

     EstGru.Close;
     EstGru.Params[0].AsInteger := EstSdfCodEmp.Value;
     EstGru.Params[1].AsString  := EstSdfCodClp.Value;
     EstGru.Open;

  end;

  if (EstSub.Params[0].AsString <> EstSdfCodGru.Value) or (EstSub.Params[1].AsInteger <> EstSdfCodEmp.Value) or
     (EstSub.Params[2].AsString <> EstSdfCodClp.Value) then begin

     EstSub.Close;
     EstSub.Params[0].AsString  := EstSdfCodGru.Value;
     EstSub.Params[1].AsInteger := EstSdfCodEmp.Value;
     EstSub.Params[2].AsString  := EstSdfCodClp.Value;
     EstSub.Open;

  end;

  if (EstPro.Params[1].AsString <> EstSdfCodClp.Value) or (EstPro.Params[2].AsString  <> EstSdfCodGru.Value) or
     (EstPro.Params[3].AsString <> EstSdfCodSub.Value) or (EstPro.Params[0].AsInteger <> EstSdfCodEmp.Value) then begin

     EstPro.Close;
     EstPro.Params[0].AsString  := EstSdfCodClp.Value;
     EstPro.Params[1].AsString  := EstSdfCodGru.Value;
     EstPro.Params[2].AsString  := EstSdfCodSub.Value;
     EstPro.Params[3].AsInteger := EstSdfCodEmp.Value;
     EstPro.Open;

  end;

  if (EstCor.Params[0].AsInteger <> EstSdfCodEmp.Value) or (EstCor.Params[1].AsString <> EstSdfCodClp.Value) or
     (EstCor.Params[2].AsString  <> EstSdfCodGru.Value) or (EstCor.Params[3].AsString <> EstSdfCodSub.Value) or
     (EstCor.Params[4].AsString  <> EstSdfCodPro.Value) or (EstCor.Params[5].AsString <> EstSdfCodTam.Value) then begin

     EstCor.Close;
     EstCor.Params[0].AsInteger := EstSdfCodEmp.Value;
     EstCor.Params[1].AsString  := EstSdfCodClp.Value;
     EstCor.Params[2].AsString  := EstSdfCodGru.Value;
     EstCor.Params[3].AsString  := EstSdfCodSub.Value;
     EstCor.Params[4].AsString  := EstSdfCodPro.Value;
     EstCor.Params[5].AsString  := EstSdfCodTam.Value;
     EstCor.Open;

  end;              

end;

procedure TfmManSda.EstSdfNewRecord(DataSet: TDataSet);
var
FlgSdf : string;
begin
  inherited;

  Randomize;
  FlgSdf := FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

  EstSdf.DisableControls;

  EstSdfFlgTrg.Value := '';
  EstSdfFlgSeq.Value := '';
  EstSdfDteSdf.Value := Date;
  EstSdfFlgSdf.Value := FlgSdf;
  EstSdfCodEmp.Value := GEmp_Id;

  if EstParFlgTam.Value = 'Nao' then EstSdfCodTam.Value := 'UN';
  if EstParTamCor.Value = 'Nao' then EstSdfCodCor.Value := 'UN';

  if Trim( EstParOpeSda.Value ) <> '' then EstSdfCodOpe.Value := EstParOpeSda.Value;

  EstSdf.EnableControls;

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

  pcSdf.ActivePage := pcPag2;

  EdCodEmp.SetFocus;

end;

procedure TfmManSda.FormShow(Sender: TObject);
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

  pcSdf.ActivePage := pcPag1;

  EdPsqSeqSdf.SetFocus;

end;

procedure TfmManSda.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if EdCodGru.Enabled then begin

     if Trim( EstSdfCodGru.Value ) <> '' then EstSdfCodGru.Value := FNumZeros(EstSdfCodGru.Value,3);

  end;
end;

procedure TfmManSda.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if EdCodSub.Enabled then begin

     if Trim( EstSdfCodSub.Value ) <> '' then EstSdfCodSub.Value := FNumZeros(EstSdfCodSub.Value,4);

  end;
end;

procedure TfmManSda.EdCodProExit(Sender: TObject);
begin
  inherited;
  if EdCodPro.Enabled then begin

     if Trim( EstSdfCodPro.Value ) <> '' then EstSdfCodPro.Value := FNumStrZero(EstSdfCodPro.Value);

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

               Params[0].AsInteger := EstSdfCodEmp.Value;
               Params[1].AsString  := EstSdfCodClp.Value;
               Params[2].AsString  := EstSdfCodGru.Value;
               Params[3].AsString  := EstSdfCodSub.Value;
               Params[4].AsString  := EstSdfCodPro.Value;
               Params[5].AsString  := EstSdfCodTam.Value;
               Params[6].AsString  := EstSdfCodCor.Value;

          end;

          Open;

          EstSdfQtAnte.Value := FieldbyName('QtdQte').AsFloat;

     end;
  end;
end;

procedure TfmManSda.EstSdfBeforePost(DataSet: TDataSet);
begin
  inherited;
  sFiltro := ' Where EstSdf.FlgSdf = '''+ EstSdfFlgSdf.Value +''''+
             '   and EstSdf.DteSdf = '''+ fDateToSQL(EstSdfDteSdf.Value) +'''';
end;

procedure TfmManSda.nvSdfSalva(Sender: TObject);
begin
  inherited;
  with EstSdf,SQL do begin

       Close;
       Text := sBase + sFiltro;
       Open;

  end;
end;

procedure TfmManSda.BbPesquisaClick(Sender: TObject);
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
       0: sOrdem := ' Order by EstSdf.AnoSdf,EstSdf.SeqSdf';
       1: sOrdem := ' Order by EstSdf.DteSdf';
       2: sOrdem := ' Order by EstSdf.CodClp,EstSdf.CodGru,EstSdf.CodSub,EstSdf.CodPro';
       3: sOrdem := ' Order by DscPro';
       4: sOrdem := ' Order by EstSdf.CodOpe';
  end;

  sFiltro := '';

  if Trim( EdpsqSeqSdf.Text ) <> '' then sFiltro := ' Where EstSdf.SeqSdf = '''+ EdPsqSeqSdf.Text +'''';

  if Trim(fLimpaStr(EdPsqDteSd1.Text)) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstSdf.DteSdf >= '''+ fDateToSQL(EdPsqDteSd1.Date) +''''
     else
        sFiltro := sFiltro + ' and EstSdf.DteSdf >= '''+ fDateToSQL(EdPsqDteSd1.Date) +'''';

  end;

  if Trim(fLimpaStr(EdPsqDteSd2.Text)) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstSdf.DteSdf <= '''+ fDateToSQL(EdPsqDteSd2.Date) +''''
     else
        sFiltro := sFiltro + ' and EstSdf.DteSdf <= '''+ fDateToSQL(EdPsqDteSd2.Date) +'''';

  end;

  if Trim( EdpsqAnoSdf.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstSdf.AnoSdf = '''+EdPsqAnoSdf.Text+''''
     else
        sFiltro := sFiltro + ' and EstSdf.AnoSdf = '''+EdPsqAnoSdf.Text+'''';

  end;

  if Trim( EdpsqCodEmp.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstSdf.CodEmp = '''+EdPsqCodEmp.Text+''''
     else
        sFiltro := sFiltro + ' and EstSdf.CodEmp = '''+EdPsqCodEmp.Text+'''';

  end;

  if Trim( EdpsqCodClp.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstSdf.CodClp = '''+EdPsqCodClp.Text+''''
     else
        sFiltro := sFiltro + ' and EstSdf.CodClp = '''+EdPsqCodClp.Text+'''';

  end;

  if Trim( EdpsqCodGru.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstSdf.CodGru = '''+EdPsqCodGru.Text+''''
     else
        sFiltro := sFiltro + ' and EstSdf.CodGru = '''+EdPsqCodGru.Text+'''';

  end;

  if Trim( EdpsqCodSub.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstSdf.CodSub = '''+EdPsqCodSub.Text+''''
     else
        sFiltro := sFiltro + ' and EstSdf.CodSub = '''+EdPsqCodSub.Text+'''';

  end;

  if Trim( EdpsqCodPro.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstSdf.CodPro = '''+EdPsqCodPro.Text+''''
     else
        sFiltro := sFiltro + ' and EstSdf.CodPro = '''+EdPsqCodPro.Text+'''';

  end;

  if Trim( EdpsqCodOpe.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where EstSdf.CodOpe = '''+EdPsqCodOpe.Text+''''
     else
        sFiltro := sFiltro + ' and EstSdf.CodOpe = '''+EdPsqCodOpe.Text+'''';

  end;

  if GFlgAce = 'Sim' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := sFiltro + ' Where exists(Select * From GerEmp Where CodEmp = EstSdf.CodEmp'+
                             '                                     and CodFil > '''+ '0' +''')'
     else
        sFiltro := sFiltro + '   and exists(Select * From GerEmp Where CodEmp = EstSdf.CodEmp'+
                             '                                     and CodFil > '''+ '0' +''')';

  end;

  with EstSdf,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManSda.nvSdfBeforeSalva(Sender: TObject);
begin
  inherited;

  if EstSdfQtdSdf.Value = 0 then fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdQtdSdf);

  if Trim(EstSdfObsSdf.Value) = '' then fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdObsSdf);

end;

procedure TfmManSda.EdQtdSdfExit(Sender: TObject);
begin
  inherited;

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if nvSdf.Salvar then
     EstSdfQtAtua.Value := fRound(EstSdfQtante.Value - EstSdfQtdSdf.Value,4);
end;

procedure TfmManSda.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if nvSdf.Salvar then begin

     if key = 112 then begin {F1 - Iniciais}

        try

           fmPsqClp := TfmPsqClp.Create(Self);

           fmPsqClp.ShowModal;

           if Trim( fmPsqClp.CodClp ) <> '' then EstSdfCodClp.Value := fmPsqClp.CodClp;

        finally   

           FreeAndNil(fmPsqClp);

        end;

        if Trim( EstSdfCodClp.Value ) <> '' then EdCodGru.SetFocus;

     end;
  end;
end;

procedure TfmManSda.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if nvSdf.Salvar then begin

     if key = 112 then begin {F1 - Iniciais}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := EstSdfCodClp.Value;

           fmAuxIni.TipoPesq := 'G';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then EstSdfCodGru.Value := fmAuxIni.CodGru;

        finally   

           FreeAndNil(fmAuxIni);

        end;

        if Trim( EstSdfCodGru.Value ) <> '' then EdCodSub.SetFocus;

     end;

     if key = 113 then begin {F2 - Busca Inteligente}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := EstSdfCodClp.Value;

           fmAuxPsq.TipoPesq := 'G';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then EstSdfCodGru.Value := fmAuxPsq.CodGru;

        finally   

           FreeAndNil(fmAuxPsq);

        end;

        if Trim( EstSdfCodGru.Value ) <> '' then EdCodSub.SetFocus;

     end;
  end;
end;

procedure TfmManSda.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if nvSdf.Salvar then begin

     if key = 112 then begin {F1 - Iniciais}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := EstSdfCodClp.Value;
           fmAuxIni.CodGru := EstSdfCodGru.Value;

           fmAuxIni.TipoPesq := 'S';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              EstSdfCodGru.Value := fmAuxIni.CodGru;
              EstSdfCodSub.Value := fmAuxIni.CodSub;

           end;

        finally   

           FreeAndNil(fmAuxIni);

        end;

        if Trim( EstSdfCodSub.Value ) <> '' then EdCodPro.SetFocus;

     end;

     if key = 113 then begin {F2 - Busca Inteligente}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := EstSdfCodClp.Value;
           fmAuxPsq.CodGru := EstSdfCodGru.Value;

           fmAuxPsq.TipoPesq := 'S';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              EstSdfCodGru.Value := fmAuxPsq.CodGru;
              EstSdfCodSub.Value := fmAuxPsq.CodSub;

           end;

        finally   

           FreeAndNil(fmAuxPsq);

        end;

        if Trim( EstSdfCodSub.Value ) <> '' then EdCodPro.SetFocus;

     end;
  end;
end;

procedure TfmManSda.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if nvSdf.Salvar then begin

     if key = 112 then begin {F1 - Iniciais}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := EstSdfCodClp.Value;
           fmAuxIni.CodGru := EstSdfCodGru.Value;
           fmAuxIni.CodSub := EstSdfCodSub.Value;

           fmAuxIni.TipoPesq := 'I';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodPro ) <> '' then begin

              EstSdfCodGru.Value := fmAuxIni.CodGru;
              EstSdfCodSub.Value := fmAuxIni.CodSub;
              EstSdfCodPro.Value := fmAuxIni.CodPro;

           end;

        finally   

           FreeAndNil(fmAuxIni);

        end;
        
        EdCodPro.SetFocus;
        
     end;

     if key = 113 then begin {F2 - Busca Inteligente}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := EstSdfCodClp.Value;
           fmAuxPsq.CodGru := EstSdfCodGru.Value;
           fmAuxPsq.CodSub := EstSdfCodSub.Value;

           fmAuxPsq.TipoPesq := 'I';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodPro ) <> '' then begin

              EstSdfCodGru.Value := fmAuxPsq.CodGru;
              EstSdfCodSub.Value := fmAuxPsq.CodSub;
              EstSdfCodPro.Value := fmAuxPsq.CodPro;

           end;

        finally   

           FreeAndNil(fmAuxPsq);

        end;

        EdCodPro.SetFocus;
        
     end;
  end;
end;

procedure TfmManSda.EdPsqCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManSda.EdPsqCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManSda.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManSda.EdPsqCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManSda.EdPsqCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManSda.EdPsqCodOpeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqOpe := TfmPsqOpe.Create(Self);

        fmPsqOpe.EstOpe.Close;
        fmPsqOpe.EstOpe.Params[0].AsString := 'S';
        fmPsqOpe.EstOpe.Open;

        fmPsqOpe.ShowModal;

        if Trim( fmPsqOpe.CodOpe ) <> '' then begin

           EdPsqCodOpe.Text := fmPsqOpe.CodOpe;
           EdPsqNomOpe.Text := fmPsqOpe.NomOpe;

        end;

     finally   

        FreeAndNil(fmPsqOpe);

     end;

     if Trim( EdPsqCodOpe.Text ) <> '' then EdPsqCodOpe.SetFocus;

  end;
end;

procedure TfmManSda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManSda.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManSda := Nil;
end;

procedure TfmManSda.EdQtdSdfEnter(Sender: TObject);
begin
  inherited;
  if (EstSdfCodEmp.Value > 0) and
     (Trim(EstSdfCodClp.Value) <> '') and
     (Trim(EstSdfCodGru.Value) <> '') and
     (Trim(EstSdfCodSub.Value) <> '') and
     (Trim(EstSdfCodPro.Value) <> '') then begin

     if not pnEstoque.Visible then pnEstoque.Visible := True;

     with quSql,SQL do begin

          Close;
          Text := ' Select EstIte.CodEmp,'+
                  '        EstIte.QtdIte,'+
                  '        EstIte.QtrIte,'+
                  '        EstIte.QtdRma,'+
                  '        EstIte.QtaIte '+
                  ' From EstIte'+
                  ' Where EstIte.CodEmp = '+ QuotedStr(IntToStr(EstSdfCodEmp.Value)) +
                  '   and EstIte.CodClp = '+ QuotedStr(EstSdfCodClp.Value) +
                  '   and EstIte.CodGru = '+ QuotedStr(EstSdfCodGru.Value) +
                  '   and EstIte.CodSub = '+ QuotedStr(EstSdfCodSub.Value) +
                  '   and EstIte.CodPro = '+ QuotedStr(EstSdfCodPro.Value) ;
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

procedure TfmManSda.EstSdfAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if pnEstoque.Visible then pnEstoque.Visible := False;
end;

end.
