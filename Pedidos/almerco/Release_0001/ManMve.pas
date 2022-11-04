unit ManMve;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  wwdbdatetimepicker, AlignEdit, dxDBColorPickEdit, dxDBColorCurrencyEdit,
  dxDBColorLookupEdit, dxDBColorEdit, dxColorEdit, dxColorPickEdit;

type
  TfmManMve = class(TfmPadrao)
    UpMve: TUpdateSQL;
    PedMve: TwwQuery;
    DsMve: TwwDataSource;
    pcMve: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    grMve: ThGrid;
    Label3: TLabel;
    Panel4: TPanel;
    Shape9: TShape;
    Label5: TLabel;
    Shape10: TShape;
    Shape11: TShape;
    Label1: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Shape5: TShape;
    PedMv2: TwwQuery;
    DsMv2: TwwDataSource;
    UpMv2: TUpdateSQL;
    quSql: TwwQuery;
    Panel6: TPanel;
    nvMv2: ThDBNavigator;
    Shape1: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape2: TShape;
    Panel1: TPanel;
    nvMve: ThDBNavigator;
    Panel8: TPanel;
    Panel10: TPanel;
    grMv2: ThGrid;
    Label16: TLabel;
    EdCodVen: TdxDBColorEdit;
    CbNomVen: TdxDBColorLookupEdit;
    Label17: TLabel;
    EdTotMv2: TdxDBColorCurrencyEdit;
    PedMveFLGTRG: TStringField;
    PedMv2CODVEN: TIntegerField;
    FinVen: TwwQuery;
    DsVen: TwwDataSource;
    FinVenCODVEN: TIntegerField;
    Label7: TLabel;
    EdMesMve: TdxDBColorPickEdit;
    Label10: TLabel;
    EdPsqMesMve: TdxColorPickEdit;
    bselecionar: TBitBtn;
    EdPsqAnoMve: TdxColorEdit;
    EdAnoMve: TdxDBColorEdit;
    PedMveANOMVE: TIntegerField;
    PedMveMESMVE: TStringField;
    PedMveDTIMVE: TDateTimeField;
    PedMveDTFMVE: TDateTimeField;
    PedMveTOTMVE: TFloatField;
    PedMv2TOTMV2: TFloatField;
    PedMv2FLGTRG: TStringField;
    PedMv2NROMV2: TIntegerField;
    pnTotMve: TPanel;
    FinVenAPEVEN: TStringField;
    PedMv2APEVEN: TStringField;
    PedMveID_PEDMVE: TIntegerField;
    PedMveQTDMV2: TIntegerField;
    PedMveNROMES: TIntegerField;
    PedMv2ID_PEDMV2: TIntegerField;
    PedMv2ID_PEDMVE: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grMveDblClick(Sender: TObject);
    procedure bselecionarClick(Sender: TObject);
    procedure PedMveNewRecord(DataSet: TDataSet);
    procedure pcPag2Show(Sender: TObject);
    procedure DsMveDataChange(Sender: TObject; Field: TField);
    procedure DsMv2DataChange(Sender: TObject; Field: TField);
    procedure PedMv2BeforeEdit(DataSet: TDataSet);
    procedure PedMv2AfterPost(DataSet: TDataSet);
    procedure PedMv2NewRecord(DataSet: TDataSet);
    procedure PedMveBeforeEdit(DataSet: TDataSet);
    procedure PedMveAfterCancel(DataSet: TDataSet);
    procedure nvMv2Exclui(Sender: TObject);
    procedure Panel8Exit(Sender: TObject);
    procedure EdPsqAnoMveKeyPress(Sender: TObject; var Key: Char);
    procedure nvMveBeforeSalva(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure nvMv2BeforeSalva(Sender: TObject);
    procedure EdCodVenExit(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sOrdem, sFiltro : string;
  end;

var
  fmManMve: TfmManMve;

implementation

uses Bbgeral, Bbmensag, Bbfuncao, ManPri, PsqClp, AuxIni, AuxPsq;

{$R *.DFM}

{*************************************************************************
* Rotina: Evitar Movimentação de Janelas
*************************************************************************}
procedure TfmManMve.FormCreate(Sender: TObject);
begin
  inherited;
  sBase  := ' Select * From PedMve ';
end;

procedure TfmManMve.bselecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  sOrdem := ' Order by PedMve.AnoMve,PedMve.DtiMve ';

  if Trim( EdpsqAnoMve.Text ) <> '' then sFiltro := ' Where PedMve.AnoMve = '+ QuotedStr(EdPsqAnoMve.Text);

  if Trim( EdPsqMesMve.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where PedMve.MesMve = '+ QuotedStr(EdPsqMesMve.Text)
     else
        sFiltro := sFiltro + ' and PedMve.MesMve = '+ QuotedStr(EdPsqMesMve.Text)

  end;

  with PedMve,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManMve.PedMveNewRecord(DataSet: TDataSet);
var
  MesMve : string;
begin
  inherited;

  MesMve := fDMes(Date);

  with quSQL,SQL do begin

       Close;
       Text := ' Select Count(*) as QtdReg'+
               ' From PedMve '+
               ' Where PedMve.MesMve = '+ QuotedStr(MesMve);
       Open;

       if FieldbyName('QtdReg').AsInteger = 0 then PedMveMesMve.Value := MesMve;

  end;

  PedMve.DisableControls;

  PedMveId_PedMve.Value := 1;

  PedMveQtdMv2.Value := 0;
  PedMveTotMve.Value := 0;
  PedMveFlgTrg.Value := ' ';
  PedMveAnoMve.Value := StrToInt(copy(DateToStr(Date),7,4));

  PedMve.EnableControls;

  PedMv2.Close;
  PedMv2.Open;

  PcMve.ActivePage := pcPag2;

  EdTotMv2.Enabled := False;

  EdTotMv2.Font.Style := [fsBold];

  nvMv2.Enabled := False;
  grMv2.Enabled := False;

  EdMesMve.Enabled := True;
  EdAnoMve.Enabled := True;

  EdMesMve.Font.Style := [];
  EdAnoMve.Font.Style := [];

  EdMesMve.SetFocus;

end;

procedure TfmManMve.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqMesMve.SetFocus;
end;

procedure TfmManMve.grMveDblClick(Sender: TObject);
begin
  inherited;
  pcMve.ActivePage := pcPag2;
end;

procedure TfmManMve.FormShow(Sender: TObject);
begin
  inherited;

  PcMve.ActivePage := PcPag1;

  EdPsqMesMve.SetFocus;

end;

procedure TfmManMve.pcPag2Show(Sender: TObject);
begin
  inherited;
  if EdAnoMve.Enabled then
     EdAnoMve.SetFocus
  else
     begin

     if EdTotMv2.Enabled then
        EdTotMv2.SetFocus
     else
        begin

        if grMv2.Enabled then grMv2.SetFocus;

     end;
  end;
end;

procedure TfmManMve.DsMveDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvMve.Salvar then begin

     if EdMesMve.Enabled then begin

        EdMesMve.Enabled := False;
        EdAnoMve.Enabled := False;

        EdMesMve.Font.Style := [fsBold];
        EdAnoMve.Font.Style := [fsBold];

     end;

     if not EdTotMv2.Enabled then begin

        if PedMveAnoMve.Value > 0 then begin

           EdTotMv2.Enabled := True;

           EdTotMv2.Font.Style := [];

           nvMv2.Enabled := True;
           grMv2.Enabled := True;

        end;
     end;
  end;
end;

procedure TfmManMve.DsMv2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if PedMveTotMve.Value > 0 then
     pnTotMve.Caption := ' Total Lançado : '+PreString(FormatFloat('###,###,##0.00',PedMveTotMve.Value),15)+' ( '+ IntToStr(PedMveQtdMv2.Value) +' )'
  else
     pnTotMve.Caption := ' ';

  if not nvMv2.Salvar then begin

     if EdCodVen.Enabled then begin

        EdCodVen.Enabled := False;

        EdCodVen.Font.Style := [fsBold];

        nvMve.Enabled := True;
        grMve.Enabled := True;

     end;
  end;

  if FinVen.Params[0].AsInteger <> PedMv2CodVen.Value then begin

     FinVen.Close;
     FinVen.Params[0].AsInteger := PedMv2CodVen.Value;
     FinVen.Open;

  end; 
end;

procedure TfmManMve.PedMv2BeforeEdit(DataSet: TDataSet);
begin
  inherited;

  nvMve.Enabled := False;
  grMve.Enabled := False;

end;

procedure TfmManMve.PedMv2AfterPost(DataSet: TDataSet);
begin
  inherited;

  nvMve.Enabled := True;
  grMve.Enabled := True;

end;

procedure TfmManMve.PedMv2NewRecord(DataSet: TDataSet);
begin
  inherited;

  PedMv2.DisableControls;

  PedMv2Id_PedMv2.Value := 1;

  PedMv2Id_PedMve.Value := PedMveId_PedMve.Value;

  PedMv2TotMv2.Value := 0;
  PedMv2FlgTrg.Value := ' ';
  PedMv2NroMv2.Value := PedMveQtdMv2.Value + 1;

  PedMv2.EnableControls;

  nvMve.Enabled := False;
  grMve.Enabled := False;

  EdCodVen.Enabled := True;
  EdTotMv2.Enabled := True;

  EdCodVen.Font.Style := [];
  EdTotMv2.Font.Style := [];

  EdCodVen.SetFocus;

end;

procedure TfmManMve.PedMveBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  EdTotMv2.Enabled := False;

  EdTotMv2.Font.Style := [fsBold];

  nvMv2.Enabled := False;
  grMv2.Enabled := False;

end;

procedure TfmManMve.PedMveAfterCancel(DataSet: TDataSet);
begin
  inherited;

  EdTotMv2.Enabled := True;

  EdTotMv2.Font.Style := [];

  nvMv2.Enabled := True;
  grMv2.Enabled := True;

end;

procedure TfmManMve.nvMv2Exclui(Sender: TObject);
var
  Id_PedMve,NroMv2 : integer;
begin
  inherited;

  Id_PedMve := PedMv2Id_PedMve.Value;
  
  NroMv2 := PedMv2NroMv2.Value;

  PedMve.Close;
  PedMve.Open;

  PedMv2.Close;
  PedMv2.Open;

  PedMve.Locate('Id_PedMve',Id_PedMve,[LoPartialKey]);

  PedMv2.Locate('Id_PedMve;NroMv2',VarArrayOf([Id_PedMve,NroMv2]),[LoPartialKey]);

end;

procedure TfmManMve.Panel8Exit(Sender: TObject);
var
  Id_PedMve,NroMv2 : integer;
  operac : string;
begin
  inherited;
  if nvMv2.Salvar then begin

     Id_PedMve := PedMv2Id_PedMve.Value;
     
     NroMv2 := PedMv2NroMv2.Value;

     if PedMv2CodVen.Value = 0 then fmsgErro('Campo de Digitação Obrigatoria não informado',EdCodVen);

     if PedMv2TotMv2.Value = 0 then fmsgErro('Campo de Digitação Obrigatoria não informado',EdTotMv2);

     if PedMv2.State = dsEdit   then Operac := 'E';

     if PedMv2.State = dsInsert then Operac := 'I';

     if PedMv2CodVen.Value > 0 then begin

        nvMv2.SBSalvaClick(Sender);

        if (Operac = 'I') and (not nvMv2.Salvar) then begin

           PedMve.Close;
           PedMve.Open;

           PedMve.Locate('Id_PedMve',Id_PedMve,[LoPartialKey]);

           nvMv2.SBIncluiClick(Sender);

           EdCodVen.SetFocus;

           end
        else
           begin

           if Operac = 'E' then begin

              PedMve.Close;
              PedMve.Open;

              PedMve.Locate('Id_PedMve',Id_PedMve,[LoPartialKey]);
              
              PedMv2.Locate('Id_PedMve;NroMv2',VarArrayOf([PedMveId_PedMve.Value,NroMv2]),[LoPartialKey]);

              if not PedMv2.EOF then PedMv2.Next;

              EdTotMv2.SetFocus;
              
           end;
        end;      
     end;
  end;
end;

procedure TfmManMve.EdPsqAnoMveKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManMve.nvMveBeforeSalva(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  if PedMveAnoMve.Value > 0 then begin

     if Trim( PedMveMesMve.Value ) <> '' then begin

        PedMveDtiMve.Value := fDataMes('I',PedMveMesMve.Value,PedMveAnoMve.Value);
        PedMveDtfMve.Value := fDataMes('F',PedMveMesMve.Value,PedMveAnoMve.Value);

        end
     else
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdMesMve);

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdAnoMve);     
end;

procedure TfmManMve.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfmManMve.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManMve := nil;
end;

procedure TfmManMve.EdCodVenKeyDown(Sender: TObject; var Key: Word;
 Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.sCodCve := 3;

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           PedMv2CodVen.Value := fmAuxIni.CodVen;

           EdCodVen.Text := IntToStr(PedMv2CodVen.Value);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdCodVen.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.sCodCve := 3;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           PedMv2CodVen.Value := fmAuxPsq.CodVen;

           EdCodVen.Text := IntToStr(PedMv2CodVen.Value);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdCodVen.SetFocus;

  end;
end;

procedure TfmManMve.nvMv2BeforeSalva(Sender: TObject);
begin
  inherited;
  ActiveControl := nil;
end;

procedure TfmManMve.EdCodVenExit(Sender: TObject);
begin
  inherited;
  if PedMv2CodVen.Value > 0 then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg'+
                  ' From FinVen'+
                  ' Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedMv2CodVen.Value));
          Open;

          if FieldbyName('QtdReg').AsInteger = 0 then
             fmsgErro('Vendedor informado não localizado.',EdCodVen);
             
     end;
     
     end
  else
     begin

     if EdCodVen.Enabled then
        fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodVen);

  end;      
end;

end.
