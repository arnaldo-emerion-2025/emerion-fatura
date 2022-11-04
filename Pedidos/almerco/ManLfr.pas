unit ManLfr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit, dxDBEdtr, dxDBColorLookupEdit,
  dxDBColorCurrencyEdit;

type
  TfmManLfr = class(TfmShowPadrao)
    PedTra: TwwQuery;
    DsPedTra: TwwDataSource;
    PaintBox: TPaintBox;
    grPanel2: TdxDBColorEdit;
    Panel2: TPanel;
    Label11: TLabel;
    UpTra: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdOb1Tra: TdxDBColorEdit;
    EdOb2Tra: TdxDBColorEdit;
    EdOb3Tra: TdxDBColorEdit;
    EdOb4Tra: TdxDBColorEdit;
    EdOb5Tra: TdxDBColorEdit;
    PedTraID_PEDTRA: TIntegerField;
    PedTraID_PEDRES: TIntegerField;
    PedTraDTETRA: TDateTimeField;
    PedTraHRETRA: TStringField;
    PedTraID_PEDLIB: TIntegerField;
    PedTraTRAANT: TIntegerField;
    PedTraCODTRA: TIntegerField;
    PedTraOB1TRA: TStringField;
    PedTraOB2TRA: TStringField;
    PedTraOB3TRA: TStringField;
    PedTraOB4TRA: TStringField;
    PedTraOB5TRA: TStringField;
    PedTraCODUSU: TIntegerField;
    PedTraTOTFRT: TFloatField;
    grPanel1: TdxDBColorEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label24: TLabel;
    EdCodTra: TdxDBColorEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    EdRefTra: TdxDBColorEdit;
    Label3: TLabel;
    EdBaiTra: TdxDBColorEdit;
    Label19: TLabel;
    EdCidTra: TdxDBColorEdit;
    Label16: TLabel;
    EdUfeTra: TdxDBColorLookupEdit;
    EdNumTra: TdxDBColorEdit;
    Label17: TLabel;
    EdTenTra: TdxDBColorEdit;
    EdNomTra: TdxDBColorEdit;
    EdCepTra: TdxDBColorEdit;
    EdEndTra: TdxDBColorEdit;
    Label5: TLabel;
    EdApeTra: TdxDBColorEdit;
    grPanel3: TdxDBColorEdit;
    Panel3: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    EdTotFrt: TdxDBColorCurrencyEdit;
    DsFinTra: TwwDataSource;
    FinTra: TwwQuery;
    LbText: TLabel;
    FinTraAPETRA: TStringField;
    FinTraNOMTRA: TStringField;
    FinTraCEPTRA: TStringField;
    FinTraTENTRA: TStringField;
    FinTraENDTRA: TStringField;
    FinTraNUMTRA: TStringField;
    FinTraREFTRA: TStringField;
    FinTraBAITRA: TStringField;
    FinTraCIDTRA: TStringField;
    FinTraSIGUFE: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodTraEnter(Sender: TObject);
    procedure EdOb1TraEnter(Sender: TObject);
    procedure EdCodTraExit(Sender: TObject);
    procedure EdCodTraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PedTraNewRecord(DataSet: TDataSet);
  private
    {Private declarations}
  public
    Liberar   : string;
    CodTra    : integer;
    Id_PedLib : integer;
    Id_PedRes : integer;
    {Public declarations}
  end;

var
  fmManLfr: TfmManLfr;

implementation

uses dxDemoUtils, ManGDB, AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmManLfr.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManLfr.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLfr.FormShow(Sender: TObject);
begin
  PedTra.Insert;
end;

procedure TfmManLfr.bCancelarClick(Sender: TObject);
begin

  PedTra.CancelUpdates;

  Close;

end;

procedure TfmManLfr.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  PedTraOb1Tra.Value := Trim(PedTraOb1Tra.Value);
  PedTraOb2Tra.Value := Trim(PedTraOb2Tra.Value);
  PedTraOb3Tra.Value := Trim(PedTraOb3Tra.Value);
  PedTraOb4Tra.Value := Trim(PedTraOb4Tra.Value);
  PedTraOb5Tra.Value := Trim(PedTraOb5Tra.Value);

  with PedTra do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if PedTra.State = dsBrowse then PedTra.Edit;

          EdCodTra.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Liberar := 'Sim';

  Close;

end;

procedure TfmManLfr.FormCreate(Sender: TObject);
begin
  inherited;
  Liberar := 'Nao';
end;

procedure TfmManLfr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedTra.State <> dsBrowse then PedTra.CancelUpdates;
end;

procedure TfmManLfr.EdCodTraEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmManLfr.EdOb1TraEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := '';
end;

procedure TfmManLfr.EdCodTraExit(Sender: TObject);
begin
  inherited;

  FinTra.Close;
  FinTra.Params[0].AsInteger := PedTraCodTra.Value;
  FinTra.Open;

end;

procedure TfmManLfr.EdCodTraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'T';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodTra > 0 then begin

           PedTraCodTra.Value := fmAuxIni.CodTra;

           EdCodTra.Text := IntToStr(fmAuxIni.CodTra);

           FinTra.Close;
           FinTra.Params[0].AsInteger := PedTraCodTra.Value;
           FinTra.Open;
           
        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'T';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodTra > 0 then begin

           PedTraCodTra.Value := fmAuxPsq.CodTra;

           EdCodTra.Text := IntToStr(fmAuxPsq.CodTra);

           FinTra.Close;
           FinTra.Params[0].AsInteger := PedTraCodTra.Value;
           FinTra.Open;
           
        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManLfr.PedTraNewRecord(DataSet: TDataSet);
begin
  inherited;

  PedTra.DisableControls;

  PedTraId_PedTra.Value := 0;
  PedTraId_PedLib.Value := Id_PedLib;
  PedTraId_PedRes.Value := Id_PedRes;

  PedTraTotFrt.Value := 0;
  PedTraDteTra.Value := date;
  PedTraTraAnt.Value := CodTra;
  PedTraCodUsu.Value := GUsu_Id;
  PedTraHreTra.Value := TimeToStr(Time);

  if CodTra > 0 then PedTraCodTra.Value := CodTra;

  PedTra.EnableControls;

  if PedTraCodTra.Value > 0 then EdCodTra.Text := IntToStr(PedTraCodTra.Value);

  FinTra.Close;
  FinTra.Params[0].AsInteger := PedTraCodTra.Value;
  FinTra.Open;

  EdCodTra.SetFocus;

end;

end.
