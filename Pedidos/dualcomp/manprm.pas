unit ManPrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  wwdbdatetimepicker, dxDBColorDateEdit, dxDBColorLookupEdit,
  dxDBColorEdit, dxDBColorCurrencyEdit, dxColorDateEdit, dxColorEdit;

type
  TfmManPrm = class(TfmPadrao)
    UpPrm: TUpdateSQL;
    PedPrm: TwwQuery;
    DsPrm: TwwDataSource;
    pcPrm: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label10: TLabel;
    EdPsqCodPrm: TdxColorEdit;
    rgOrdem: TRadioGroup;
    bSelecionar: TBitBtn;
    Panel3: TPanel;
    grPrm: ThGrid;
    Label3: TLabel;
    Panel4: TPanel;
    Shape9: TShape;
    Label5: TLabel;
    Shape10: TShape;
    Label7: TLabel;
    Shape11: TShape;
    Label9: TLabel;
    EdNomPrm: TdxDBColorEdit;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomPrm: TdxColorEdit;
    EdCodPrm: TdxDBColorEdit;
    Label12: TLabel;
    Label21: TLabel;
    nvPrm: ThDBNavigator;
    Panel5: TPanel;
    grPr2: ThGrid;
    Label6: TLabel;
    Shape5: TShape;
    PedPr2: TwwQuery;
    DsPr2: TwwDataSource;
    UpPr2: TUpdateSQL;
    quSql: TwwQuery;
    PedPrmCODPRM: TIntegerField;
    PedPrmNOMPRM: TStringField;
    PedPrmDTIPRM: TDateTimeField;
    PedPrmDTFPRM: TDateTimeField;
    EdDtiPrm: TdxDBColorDateEdit;
    Label11: TLabel;
    EdDtfPrm: TdxDBColorDateEdit;
    Panel6: TPanel;
    nvPr2: ThDBNavigator;
    EstGru: TwwQuery;
    EstGruCODGRU: TStringField;
    EstGruNOMGRU: TStringField;
    EstSub: TwwQuery;
    EstSubCODGRU: TStringField;
    EstSubCODSUB: TStringField;
    EstSubNOMSUB: TStringField;
    DsSub: TwwDataSource;
    DsGru: TwwDataSource;
    PedPr2CODPRM: TIntegerField;
    PedPr2SEQPR2: TIntegerField;
    PedPr2CODGRU: TStringField;
    PedPr2DS1PR2: TFloatField;
    PedPr2DS2PR2: TFloatField;
    PedPr2DS3PR2: TFloatField;
    PedPr2DS4PR2: TFloatField;
    PedPr2DS5PR2: TFloatField;
    Shape1: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape2: TShape;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqDtiPrm: TdxColorDateEdit;
    EdPsqDtfPrm: TdxColorDateEdit;
    PedPr2CODSUB: TStringField;
    PedPr2FLGTRG: TStringField;
    EstPro: TwwQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    DsPro: TwwDataSource;
    EstProCODPRO: TStringField;
    EstProDSCPRO: TStringField;
    PedPr2CODPRO: TStringField;
    PedPr2CODCLP: TStringField;
    PedPr2DSCPRO: TStringField;
    Panel1: TPanel;
    Label8: TLabel;
    Label13: TLabel;
    Label23: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    EdDs5Pr2: TdxDBColorCurrencyEdit;
    EdDs4Pr2: TdxDBColorCurrencyEdit;
    EdDs3Pr2: TdxDBColorCurrencyEdit;
    EdDs2Pr2: TdxDBColorCurrencyEdit;
    EdDs1Pr2: TdxDBColorCurrencyEdit;
    EdCodPro: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodGru: TdxDBColorEdit;
    bPsqGru: TSpeedButton;
    bPsqSub: TSpeedButton;
    bPsqPro: TSpeedButton;
    CbNomGru: TdxDBColorLookupEdit;
    CbNomSub: TdxDBColorLookupEdit;
    CbNomPro: TdxDBColorLookupEdit;
    PedPrmSEQPRM: TIntegerField;
    PedPrmQTIPRM: TIntegerField;
    PedPrmFLGTRG: TStringField;
    PedPr2QT1PR2: TFloatField;
    PedPr2QT2PR2: TFloatField;
    PedPr2QT3PR2: TFloatField;
    PedPr2QT4PR2: TFloatField;
    PedPr2QT5PR2: TFloatField;
    PedPr2NROPR2: TIntegerField;
    Label19: TLabel;
    EdQt1Pr2: TdxDBColorCurrencyEdit;
    Label24: TLabel;
    EdQt2Pr2: TdxDBColorCurrencyEdit;
    Label25: TLabel;
    EdQt3Pr2: TdxDBColorCurrencyEdit;
    Label26: TLabel;
    EdQt4Pr2: TdxDBColorCurrencyEdit;
    Label27: TLabel;
    EdQt5Pr2: TdxDBColorCurrencyEdit;
    PedPrmSITPRM: TStringField;
    Label28: TLabel;
    EdSitPrm: TdxDBColorEdit;
    rgStatus: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grPrmDblClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure PedPrmNewRecord(DataSet: TDataSet);
    procedure pcPag2Show(Sender: TObject);
    procedure PedPr2BeforeEdit(DataSet: TDataSet);
    procedure PedPr2AfterCancel(DataSet: TDataSet);
    procedure PedPr2AfterPost(DataSet: TDataSet);
    procedure PedPr2NewRecord(DataSet: TDataSet);
    procedure PedPrmBeforeEdit(DataSet: TDataSet);
    procedure PedPrmAfterCancel(DataSet: TDataSet);
    procedure PedPrmAfterPost(DataSet: TDataSet);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure nvPr2BeforeSalva(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdPsqCodPrmKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqGruClick(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure CbNomGruExit(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure nvPr2Salva(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DsPr2DataChange(Sender: TObject; Field: TField);
    procedure DsPrmDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sOrdem, sFiltro : string;
  end;

var
  fmManPrm: TfmManPrm;

implementation

uses Bbgeral, Bbmensag, Bbfuncao, ManPri, PsqGru, PsqSub, AuxIni;

{$R *.DFM}

{*************************************************************************
* Rotina: Evitar Movimentação de Janelas
*************************************************************************}
procedure TfmManPrm.FormCreate(Sender: TObject);
begin
  inherited;
  sBase  := ' Select * From PedPrm ';
end;

procedure TfmManPrm.bSelecionarClick(Sender: TObject);
begin
  inherited;

  if EdPsqDtfPrm.Date < EdPsqDtiPrm.Date then fmsgErro('Periodo Final Informado e Inferior ao Periodo Inicial',EdPsqDtfPrm);

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by CodPrm';
       1: sOrdem := ' Order by NomPrm';
  end;

  case rgStatus.Itemindex of
       0: sFiltro := ' Where SitPrm = '''+ 'Em Transito' +'''';
       1: sFiltro := ' Where SitPrm = '''+ 'Concluida'   +'''';
  end;

  if Trim( EdpsqCodPrm.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where CodPrm = '''+ EdPsqCodPrm.Text +''''
     else
        sFiltro := sFiltro + ' and CodPrm = '''+ EdPsqCodPrm.Text +'''';

  end;
  
  if Trim( EdpsqNomPrm.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where NomPrm = '''+ EdPsqNomPrm.Text +''''
     else
        sFiltro := sFiltro + ' Where NomPrm = '''+ EdPsqNomPrm.Text +'''';

  end;
        
  if EdPsqDtiPrm.Date > 0 then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where Exists(Select * From PedPr3 Where PedPr3.CodPrm = PedPrm.CodPrm'+
                   '                                     and DatPrm >= '''+fDateToSQL(EdPsqDtiPrm.Date)+''''+
                   '                                     and DatPrm <= '''+fDateToSQL(EdPsqDtfPrm.Date)+''')'
     else
        sFiltro := '   and Exists(Select * From PedPr3 Where PedPr3.CodPrm = PedPrm.CodPrm'+
                   '                                     and DatPrm >= '''+fDateToSQL(EdPsqDtiPrm.Date)+''''+
                   '                                     and DatPrm <= '''+fDateToSQL(EdPsqDtfPrm.Date)+''')';

  end;

  with PedPrm,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManPrm.PedPrmNewRecord(DataSet: TDataSet);
begin
  inherited;

  PedPrm.DisableControls;

  PedPrmSeqPrm.Value := 0;
  PedPrmQtiPrm.Value := 0;
  PedPrmSitPrm.Value := 'Em Transito';

  PedPrm.EnableControls;

  PcPrm.ActivePage := pcPag2;

  EdDs1Pr2.Enabled := False;
  EdDs2Pr2.Enabled := False;
  EdDs3Pr2.Enabled := False;
  EdDs4Pr2.Enabled := False;
  EdDs5Pr2.Enabled := False;
  EdQt1Pr2.Enabled := False;
  EdQt2Pr2.Enabled := False;
  EdQt3Pr2.Enabled := False;
  EdQt4Pr2.Enabled := False;
  EdQt5Pr2.Enabled := False;

  EdDs1Pr2.Font.Style := [fsBold];
  EdDs2Pr2.Font.Style := [fsBold];
  EdDs3Pr2.Font.Style := [fsBold];
  EdDs4Pr2.Font.Style := [fsBold];
  EdDs5Pr2.Font.Style := [fsBold];
  EdQt1Pr2.Font.Style := [fsBold];
  EdQt2Pr2.Font.Style := [fsBold];
  EdQt3Pr2.Font.Style := [fsBold];
  EdQt4Pr2.Font.Style := [fsBold];
  EdQt5Pr2.Font.Style := [fsBold];

  nvPr2.Enabled := False;
  grPr2.Enabled := False;

  PedPr2.Close;
  PedPr2.Params[0].AsInteger := PedPrmCodPrm.Value;
  PedPr2.Open;

  EdNomPrm.SetFocus;

end;

procedure TfmManPrm.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodPrm.SetFocus;
end;

procedure TfmManPrm.grPrmDblClick(Sender: TObject);
begin
  inherited;
  pcPrm.ActivePage := pcPag2;
end;

procedure TfmManPrm.FormShow(Sender: TObject);
begin
  inherited;

  PcPrm.ActivePage := PcPag1;

  EdPsqCodPrm.SetFocus;

end;

procedure TfmManPrm.pcPag2Show(Sender: TObject);
begin
  inherited;
  if EdNomPrm.Enabled then
     EdNomPrm.SetFocus
  else
     begin

     if EdDs1Pr2.Enabled then EdDs1Pr2.SetFocus;

  end;
end;

procedure TfmManPrm.PedPr2BeforeEdit(DataSet: TDataSet);
begin
  inherited;

  EdNomPrm.Enabled := False;
  EdDtiPrm.Enabled := False;
  EdDtfPrm.Enabled := False;

  EdNomPrm.Font.Style := [fsBold];
  EdDtiPrm.Font.Style := [fsBold];
  EdDtfPrm.Font.Style := [fsBold];

  nvPrm.Enabled := False;

end;

procedure TfmManPrm.PedPr2AfterCancel(DataSet: TDataSet);
begin
  inherited;

  EdNomPrm.Enabled := True;
  EdDtiPrm.Enabled := True;
  EdDtfPrm.Enabled := True;

  EdNomPrm.Font.Style := [];
  EdDtiPrm.Font.Style := [];
  EdDtfPrm.Font.Style := [];

  nvPrm.Enabled := True;

end;

procedure TfmManPrm.PedPr2AfterPost(DataSet: TDataSet);
begin
  inherited;

  EdNomPrm.Enabled := True;
  EdDtiPrm.Enabled := True;
  EdDtfPrm.Enabled := True;

  EdNomPrm.Font.Style := [];
  EdDtiPrm.Font.Style := [];
  EdDtfPrm.Font.Style := [];

  nvPrm.Enabled := True;

end;

procedure TfmManPrm.PedPr2NewRecord(DataSet: TDataSet);
begin
  inherited;

  PedPr2.DisableControls;

  PedPr2Ds1Pr2.Value := 0;
  PedPr2Ds2Pr2.Value := 0;
  PedPr2Ds3Pr2.Value := 0;
  PedPr2Ds4Pr2.Value := 0;
  PedPr2Ds5Pr2.Value := 0;
  PedPr2Qt1Pr2.Value := 0;
  PedPr2Qt2Pr2.Value := 0;
  PedPr2Qt3Pr2.Value := 0;
  PedPr2Qt4Pr2.Value := 0;
  PedPr2Qt5Pr2.Value := 0;
  PedPr2CodClp.Value := '1';
  PedPr2CodPrm.Value := PedPrmCodPrm.Value;
  PedPr2SeqPr2.Value := PedPrmSeqPrm.Value + 1;
  PedPr2NroPr2.Value := PedPrmQtiPrm.Value + 1;

  PedPr2.EnableControls;

  EstSub.Close;
  EstSub.Params[0].AsString := PedPr2CodGru.Value;
  EstSub.Open;

  EstPro.Close;
  EstPro.Params[0].AsString := PedPr2CodGru.Value;
  EstPro.Params[1].AsString := PedPr2CodSub.Value;
  EstPro.Open;

  EdNomPrm.Enabled := False;
  EdDtiPrm.Enabled := False;
  EdDtfPrm.Enabled := False;

  EdNomPrm.Font.Style := [fsBold];
  EdDtiPrm.Font.Style := [fsBold];
  EdDtfPrm.Font.Style := [fsBold];

  nvPrm.Enabled := False;

  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;
  EdDs1Pr2.Enabled := True;
  EdDs2Pr2.Enabled := True;
  EdDs3Pr2.Enabled := True;
  EdDs4Pr2.Enabled := True;
  EdDs5Pr2.Enabled := True;
  EdQt1Pr2.Enabled := True;
  EdQt2Pr2.Enabled := True;
  EdQt3Pr2.Enabled := True;
  EdQt4Pr2.Enabled := True;
  EdQt5Pr2.Enabled := True;

  EdCodGru.Font.Style := [];
  EdCodSub.Font.Style := [];
  EdCodPro.Font.Style := [];
  EdDs1Pr2.Font.Style := [];
  EdDs2Pr2.Font.Style := [];
  EdDs3Pr2.Font.Style := [];
  EdDs4Pr2.Font.Style := [];
  EdDs5Pr2.Font.Style := [];
  EdQt1Pr2.Font.Style := [];
  EdQt2Pr2.Font.Style := [];
  EdQt3Pr2.Font.Style := [];
  EdQt4Pr2.Font.Style := [];
  EdQt5Pr2.Font.Style := [];

  EdCodGru.SetFocus;

end;

procedure TfmManPrm.PedPrmBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  EdDs1Pr2.Enabled := False;
  EdDs2Pr2.Enabled := False;
  EdDs3Pr2.Enabled := False;
  EdDs4Pr2.Enabled := False;
  EdDs5Pr2.Enabled := False;
  EdQt1Pr2.Enabled := False;
  EdQt2Pr2.Enabled := False;
  EdQt3Pr2.Enabled := False;
  EdQt4Pr2.Enabled := False;
  EdQt5Pr2.Enabled := False;

  EdDs1Pr2.Font.Style := [fsBold];
  EdDs2Pr2.Font.Style := [fsBold];
  EdDs3Pr2.Font.Style := [fsBold];
  EdDs4Pr2.Font.Style := [fsBold];
  EdDs5Pr2.Font.Style := [fsBold];
  EdQt1Pr2.Font.Style := [fsBold];
  EdQt2Pr2.Font.Style := [fsBold];
  EdQt3Pr2.Font.Style := [fsBold];
  EdQt4Pr2.Font.Style := [fsBold];
  EdQt5Pr2.Font.Style := [fsBold];

  nvPr2.Enabled := False;
  grPr2.Enabled := False;

end;

procedure TfmManPrm.PedPrmAfterCancel(DataSet: TDataSet);
begin
  inherited;

  EdDs1Pr2.Enabled := True;
  EdDs2Pr2.Enabled := True;
  EdDs3Pr2.Enabled := True;
  EdDs4Pr2.Enabled := True;
  EdDs5Pr2.Enabled := True;
  EdQt1Pr2.Enabled := True;
  EdQt2Pr2.Enabled := True;
  EdQt3Pr2.Enabled := True;
  EdQt4Pr2.Enabled := True;
  EdQt5Pr2.Enabled := True;

  EdDs1Pr2.Font.Style := [];
  EdDs2Pr2.Font.Style := [];
  EdDs3Pr2.Font.Style := [];
  EdDs4Pr2.Font.Style := [];
  EdDs5Pr2.Font.Style := [];
  EdQt1Pr2.Font.Style := [];
  EdQt2Pr2.Font.Style := [];
  EdQt3Pr2.Font.Style := [];
  EdQt4Pr2.Font.Style := [];
  EdQt5Pr2.Font.Style := [];

  nvPr2.Enabled := True;
  grPr2.Enabled := True;

end;

procedure TfmManPrm.PedPrmAfterPost(DataSet: TDataSet);
begin
  inherited;

  EdDs1Pr2.Enabled := True;
  EdDs2Pr2.Enabled := True;
  EdDs3Pr2.Enabled := True;
  EdDs4Pr2.Enabled := True;
  EdDs5Pr2.Enabled := True;
  EdQt1Pr2.Enabled := True;
  EdQt2Pr2.Enabled := True;
  EdQt3Pr2.Enabled := True;
  EdQt4Pr2.Enabled := True;
  EdQt5Pr2.Enabled := True;

  EdDs1Pr2.Font.Style := [];
  EdDs2Pr2.Font.Style := [];
  EdDs3Pr2.Font.Style := [];
  EdDs4Pr2.Font.Style := [];
  EdDs5Pr2.Font.Style := [];
  EdQt1Pr2.Font.Style := [];
  EdQt2Pr2.Font.Style := [];
  EdQt3Pr2.Font.Style := [];
  EdQt4Pr2.Font.Style := [];
  EdQt5Pr2.Font.Style := [];

  nvPr2.Enabled := True;
  grPr2.Enabled := True;

end;

procedure TfmManPrm.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if nvPr2.Salvar then begin

     if Trim( PedPr2CodGru.Value ) <> '' then PedPr2CodGru.Value := FNumZeros(PedPr2CodGru.Value,3);

     EstSub.Close;
     EstSub.Params[0].AsString := PedPr2CodGru.Value;
     EstSub.Open;

  end;
end;

procedure TfmManPrm.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if nvPr2.Salvar then begin

     if Trim( PedPr2CodSub.Value ) <> '' then PedPr2CodSub.Value := FNumZeros(PedPr2CodSub.Value,4);

     EstPro.Close;
     EstPro.Params[0].AsString := PedPr2CodGru.Value;
     EstPro.Params[1].AsString := PedPr2CodSub.Value;
     EstPro.Open;

  end;
end;

procedure TfmManPrm.nvPr2BeforeSalva(Sender: TObject);
begin
  inherited;

  if Trim( PedPr2CodGru.Value ) <> '' then
     PedPr2CodGru.Value := FNumZeros(PedPr2CodGru.Value,3)
  else
     fmsgErro('Campo de Preenchimento Obrigatorio não informado.',EdCodGru);

  if Trim( PedPr2CodSub.Value ) <> '' then
     PedPr2CodSub.Value := FNumZeros(PedPr2CodSub.Value,4)
  else
     fmsgErro('Campo de Preenchimento Obrigatorio não informado.',EdCodSub);

  if Trim( PedPr2CodPro.Value ) <> '' then
     PedPr2CodPro.Value := FNumStrZero(PedPr2CodPro.Value)
  else
     fmsgErro('Campo de Preenchimento Obrigatorio não informado.',EdCodPro);

end;

procedure TfmManPrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManPrm.EdPsqCodPrmKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPrm.bPsqGruClick(Sender: TObject);
begin
  inherited;
  if EdCodGru.Enabled then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := '1';

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if PedPr2.State = dsBrowse then begin

              if Trim( PedPr2CodClp.Value ) <> '' then
                 PedPr2.Edit
              else
                 PedPr2.Append;

           end;

           PedPr2CodGru.Value := fmAuxIni.CodGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdCodGru.SetFocus;

  end;
end;

procedure TfmManPrm.bPsqSubClick(Sender: TObject);
begin
  inherited;
  if EdCodSub.Enabled then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( PedPr2CodGru.Value ) <> '' then fmAuxIni.CodGru := PedPr2CodGru.Value;

        fmAuxIni.CodClp := '1';

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if PedPr2.State = dsBrowse then begin

              if Trim( PedPr2CodClp.Value ) <> '' then
                 PedPr2.Edit
              else
                 PedPr2.Append;

           end;

           PedPr2CodGru.Value := fmAuxIni.CodGru;
           PedPr2CodSub.Value := fmAuxIni.CodSub;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdCodSub.SetFocus;

  end;
end;

procedure TfmManPrm.CbNomGruExit(Sender: TObject);
begin
  inherited;
  if nvPr2.Salvar then begin

     if Trim( PedPr2CodGru.Value ) <> '' then PedPr2CodGru.Value := FNumZeros(PedPr2CodGru.Value,3);

     EstSub.Close;
     EstSub.Params[0].AsString := PedPr2CodGru.Value;
     EstSub.Open;

     EdCodGru.SetFocus;

  end;
end;

procedure TfmManPrm.bPsqProClick(Sender: TObject);
begin
  inherited;
  if EdCodPro.Enabled then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := PedPr2CodClp.Value;
        fmAuxIni.CodGru := PedPr2CodGru.Value;
        fmAuxIni.CodSub := PedPr2CodSub.Value;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if EdCodGru.Enabled then begin

              PedPr2CodClp.Value := fmAuxIni.CodClp;
              PedPr2CodGru.Value := fmAuxIni.CodGru;
              PedPr2CodSub.Value := fmAuxIni.CodSub;
              PedPr2CodPro.Value := fmAuxIni.CodPro;

           end;
        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdCodPro.SetFocus;

  end;
end;

procedure TfmManPrm.EdCodProExit(Sender: TObject);
begin
  inherited;
  if nvPr2.Salvar then begin

     if Trim( PedPr2CodPro.Value ) <> '' then PedPr2CodPro.Value := FNumStrZero(PedPr2CodPro.Value);

  end;
end;

procedure TfmManPrm.Panel1Exit(Sender: TObject);
var
operac : string;
begin
  inherited;
  if nvPr2.Salvar then begin

     if PedPr2.State = dsInsert then Operac := 'I';

     if Trim( PedPr2CodGru.Value ) <> '' then begin

        nvPr2.SBSalvaClick(Sender);

        if (Operac = 'I') and (not nvPr2.Salvar) then begin

           nvPr2.SBIncluiClick(Sender);

           EdCodGru.SetFocus;

        end;
     end;
  end;
end;

procedure TfmManPrm.nvPr2Salva(Sender: TObject);
var
CodPrm : integer;
begin
  inherited;

  CodPrm := PedPrmCodPrm.Value;

  PedPrm.Close;
  PedPrm.Open;

  PedPrm.Locate('CodPrm',CodPrm,[LoPartialKey]);
  
end;

procedure TfmManPrm.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPrm := nil;
end;

procedure TfmManPrm.DsPr2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvPr2.Salvar then begin

     if EdCodGru.Enabled then begin

        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;

        EdCodGru.Font.Style := [fsBold];
        EdCodSub.Font.Style := [fsBold];
        EdCodPro.Font.Style := [fsBold];

        EdNomPrm.Enabled := True;
        EdDtiPrm.Enabled := True;
        EdDtfPrm.Enabled := True;

        EdNomPrm.Font.Style := [];
        EdDtiPrm.Font.Style := [];
        EdDtfPrm.Font.Style := [];

        nvPrm.Enabled := True;

     end;

     if EstSub.Params[0].AsString <> PedPr2CodGru.Value then begin

        EstSub.Close;
        EstSub.Params[0].AsString := PedPr2CodGru.Value;
        EstSub.Open;

     end;

     if (EstPro.Params[0].AsString <> PedPr2CodGru.Value) or (EstPro.Params[1].AsString <> PedPr2CodSub.Value) then begin

        EstPro.Close;
        EstPro.Params[0].AsString := PedPr2CodGru.Value;
        EstPro.Params[1].AsString := PedPr2CodSub.Value;
        EstPro.Open;

     end;
  end;
end;

procedure TfmManPrm.DsPrmDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvPrm.Salvar then begin

     if not EdDs1Pr2.Enabled then begin

        if PedPrmCodPrm.Value > 0 then begin

           EdDs1Pr2.Enabled := True;
           EdDs2Pr2.Enabled := True;
           EdDs2Pr2.Enabled := True;
           EdDs3Pr2.Enabled := True;
           EdDs4Pr2.Enabled := True;
           EdDs5Pr2.Enabled := True;
           EdQt1Pr2.Enabled := True;
           EdQt2Pr2.Enabled := True;
           EdQt2Pr2.Enabled := True;
           EdQt3Pr2.Enabled := True;
           EdQt4Pr2.Enabled := True;
           EdQt5Pr2.Enabled := True;

           EdDs1Pr2.Font.Style := [];
           EdDs2Pr2.Font.Style := [];
           EdDs2Pr2.Font.Style := [];
           EdDs3Pr2.Font.Style := [];
           EdDs4Pr2.Font.Style := [];
           EdDs5Pr2.Font.Style := [];
           EdQt1Pr2.Font.Style := [];
           EdQt2Pr2.Font.Style := [];
           EdQt2Pr2.Font.Style := [];
           EdQt3Pr2.Font.Style := [];
           EdQt4Pr2.Font.Style := [];
           EdQt5Pr2.Font.Style := [];

        end;

        nvPr2.Enabled := True;
        grPr2.Enabled := True;

     end;

     if PedPrmCodPrm.Value <> PedPr2CodPrm.Value then begin

        PedPr2.Close;
        PedPr2.Params[0].AsInteger := PedPrmCodPrm.Value;
        PedPr2.Open;

     end;
  end;
end;

end.
