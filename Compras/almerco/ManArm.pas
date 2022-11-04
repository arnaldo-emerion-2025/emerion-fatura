unit ManArm;

interface

uses
  SysUtils, Classes, Controls, Forms, Graphics, 
  Fpadrao, hNavigator, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery, StdCtrls,
  Mask, DBCtrls, hEdits, Wwdbigrd, Wwdbgrid, hGrid, wwdblook, Buttons,
  AlignEdit, ppBands, ppClass, ppDB, ppCtrls, ppVar, ppPrnabl, ppProd,
  ppReport, ppComm, ppRelatv, ppCache, ppDBPipe, dxCntner, dxEditor, dxEdLib,
  dxDBELib, dxExEdtr, dxDBEdtr, dxDBColorLookupEdit, dxDBColorEdit, dxColorEdit,
  ComCtrls, Grids, dxDBColorCurrencyEdit;

type
  TfmManArm = class(TfmPadrao)
    UpCmpArm: TUpdateSQL;
    CmpArm: TwwQuery;
    dsCmpArm: TwwDataSource;
    quSql: TwwQuery;
    pcArm: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel1: TPanel;
    nvCmpArm: ThDBNavigator;
    Shape2: TShape;
    Shape6: TShape;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomArm: TdxColorEdit;
    EdPsqId_CmpArm: TdxColorEdit;
    Bbselecionar: TBitBtn;
    Shape4: TShape;
    Label3: TLabel;
    Shape5: TShape;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Panel3: TPanel;
    grCmpArm: ThGrid;
    Label34: TLabel;
    Shape11: TShape;
    Label5: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    EdId_CmpArm: TdxDBColorEdit;
    Label9: TLabel;
    Label7: TLabel;
    EdNomArm: TdxDBColorEdit;
    Label63: TLabel;
    EdFlgAti: TdxDBCheckEdit;
    rgStatus: TRadioGroup;
    CmpArmID_CMPARM: TIntegerField;
    CmpArmNOMARM: TStringField;
    CmpArmQTDAR2: TIntegerField;
    CmpArmQTDARM: TIntegerField;
    CmpArmDEMARM: TFloatField;
    CmpArmVBLARM: TFloatField;
    CmpArmFLGATI: TStringField;
    CmpArmFLGINT: TStringField;
    Label12: TLabel;
    EdQtdArm: TdxDBColorCurrencyEdit;
    Label13: TLabel;
    Label14: TLabel;
    EdDemArm: TdxDBColorCurrencyEdit;
    Label15: TLabel;
    EdVblArm: TdxDBColorCurrencyEdit;
    Label16: TLabel;
    Label17: TLabel;
    EdDesArm: TdxDBColorCurrencyEdit;
    CmpArmDESARM: TFloatField;
    CmpAr2: TwwQuery;
    UpCmpAr2: TUpdateSQL;
    DsCmpAr2: TwwDataSource;
    CmpAr2ID_CMPAR2: TIntegerField;
    CmpAr2ID_CMPARM: TIntegerField;
    CmpAr2ID_CMPPOR: TIntegerField;
    CmpAr2MSCAR2: TFloatField;
    CmpAr2THCAR2: TFloatField;
    CmpAr2FLGINT: TStringField;
    Panel6: TPanel;
    nvCmpAr2: ThDBNavigator;
    Shape7: TShape;
    Label18: TLabel;
    CmpAr2APEPOR: TStringField;
    Panel2: TPanel;
    grCmpAr2: ThGrid;
    Panel4: TPanel;
    Label19: TLabel;
    EdId_CmpPor: TdxDBColorEdit;
    CbApePor: TdxDBColorLookupEdit;
    Label20: TLabel;
    EdMscAr2: TdxDBColorCurrencyEdit;
    Label21: TLabel;
    EdThcAr2: TdxDBColorCurrencyEdit;
    CmpPor: TwwQuery;
    CmpPorID_CMPPOR: TIntegerField;
    CmpPorAPEPOR: TStringField;
    dsCmpPor: TwwDataSource;
    Label22: TLabel;
    Label23: TLabel;
    CmpAr2PESMAX: TFloatField;
    CmpAr2CUBMAX: TFloatField;
    Label6: TLabel;
    Label8: TLabel;
    EdPesMax: TdxDBColorCurrencyEdit;
    EdCubMax: TdxDBColorCurrencyEdit;
    Label10: TLabel;
    Label11: TLabel;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grCmpArmDblClick(Sender: TObject);
    procedure nvCmpArmBeforeSalva(Sender: TObject);
    procedure BbselecionarClick(Sender: TObject);
    procedure CmpArmNewRecord(DataSet: TDataSet);
    procedure EdPsqId_CmpArmKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CmpAr2NewRecord(DataSet: TDataSet);
    procedure DsCmpAr2DataChange(Sender: TObject; Field: TField);
    procedure dsCmpArmDataChange(Sender: TObject; Field: TField);
    procedure CmpArmAfterCancel(DataSet: TDataSet);
    procedure CmpArmBeforeEdit(DataSet: TDataSet);
    procedure CmpAr2AfterCancel(DataSet: TDataSet);
    procedure CmpAr2BeforeEdit(DataSet: TDataSet);
    procedure EdCubMaxKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    {Private declarations}
  public
    {Public declarations}
    CodEmp, NumPed : integer;
    CepAnt, sBase, sOrdem, sFiltro : string;
  end;

var
  fmManArm: TfmManArm;

implementation

uses ShellAPI, BbMensag, Bbacesso, Bbgeral, PsqCep, ManPri, ManGDB, Fpreview;

{$R *.DFM}

procedure TfmManArm.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select * From CmpArm';
end;

procedure TfmManArm.BbselecionarClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order By CmpArm.Id_CmpArm';
       1: sOrdem := ' Order By CmpArm.NomArm';
  end;

  if Trim(EdPsqId_CmpArm.Text) <> '' then sFiltro := ' Where CmpArm.Id_CmpArm = '+ QuotedStr(EdPsqId_CmpArm.Text);

  if Rgbusca.ItemIndex = 0 then begin

     if Trim(EdPsqNomArm.Text) <> '' then sFiltro := ' Where CmpArm.NomArm LIKE '+ QuotedStr(EdPsqNomArm.Text +'%');

     end
  else
     begin

     if Trim(EdPsqNomArm.Text) <> '' then sFiltro := ' Where CmpArm.NomArm LIKE '+ QuotedStr('%'+ EdPsqNomArm.Text +'%');

  end;

  if pos('Where',sFiltro) > 0 then begin

     case rgStatus.ItemIndex of
          0: sFiltro := sFiltro + ' and CmpArm.FlgAti = '+ QuotedStr('Sim');
          1: sFiltro := sFiltro + ' and CmpArm.FlgAti = '+ QuotedStr('Nao');
     end;

     end
  else
     begin

     case rgStatus.ItemIndex of
          0: sFiltro := ' Where CmpArm.FlgAti = '+ QuotedStr('Sim');
          1: sFiltro := ' Where CmpArm.FlgAti = '+ QuotedStr('Nao');
     end;
  end;

  with CmpArm,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManArm.CmpArmNewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpArm.DisableControls;

  CmpArmQtdAr2.Value := 0;
  CmpArmQtdArm.Value := 0;
  CmpArmDemArm.Value := 0;
  CmpArmVblArm.Value := 0;
  CmpArmDesArm.Value := 0;
  CmpArmFlgAti.Value := 'Sim';
  CmpArmFlgInt.Value := 'Nao';

  CmpArm.EnableControls;

  PcArm.ActivePage := pcPag2;

  EdNomArm.SetFocus;

end;

procedure TfmManArm.nvCmpArmBeforeSalva(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  if Trim( CmpArmNomArm.Value ) = '' then fmsgErro('Campo de preenchimento obrigátorio não informado', EdNomArm);

end;

procedure TfmManArm.pcPag2Show(Sender: TObject);
begin
  inherited;
  EdNomArm.SetFocus;
end;

procedure TfmManArm.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqId_CmpArm.SetFocus;
end;

procedure TfmManArm.grCmpArmDblClick(Sender: TObject);
begin
  inherited;
  pcArm.ActivePage := pcPag2;
end;

procedure TfmManArm.FormShow(Sender: TObject);
begin
  inherited;

  PcArm.ActivePage := PcPag1;

  EdPsqId_CmpArm.SetFocus;

end;

procedure TfmManArm.EdPsqId_CmpArmKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManArm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManArm.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManArm := Nil;
end;

procedure TfmManArm.CmpAr2NewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpAr2.DisableControls;

  CmpAr2Id_CmpAr2.Value := 1;
  CmpAr2Id_CmpArm.Value := CmpArmId_CmpArm.Value;

  CmpAr2MscAr2.Value := 0;
  CmpAr2ThcAr2.Value := 0;
  CmpAr2PesMax.Value := 0;
  CmpAr2CubMax.Value := 0;
  CmpAr2FlgInt.Value := 'Nao';

  CmpAr2.EnableControls;

  PcArm.ActivePage := pcPag2;

  if grCmpArm.Enabled then begin

     grCmpArm.Enabled := False;

     nvCmpArm.Enabled := False;

     EdFlgAti.Enabled := False;
     EdNomArm.Enabled := False;
     EdQtdArm.Enabled := False;
     EdDemArm.Enabled := False;
     EdVblArm.Enabled := False;
     EdDesArm.Enabled := False;

     EdNomArm.Font.Style := [fsBold];
     EdQtdArm.Font.Style := [fsBold];
     EdDemArm.Font.Style := [fsBold];
     EdVblArm.Font.Style := [fsBold];
     EdDesArm.Font.Style := [fsBold];

  end;

  EdId_CmpPor.Enabled := True;

  CbApePor.Enabled := True;

  EdId_CmpPor.Font.Style := [];

  CbApePor.Font.Style := [];
  
  EdId_CmpPor.SetFocus;

end;

procedure TfmManArm.DsCmpAr2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvCmpAr2.Salvar then begin

     if not EdFlgAti.Enabled then begin

        EdId_CmpPor.Enabled := False;

        CbApePor.Enabled := False;

        EdId_CmpPor.Font.Style := [fsBold];

        CbApePor.Font.Style := [fsBold];
        
        nvCmpArm.Enabled := True;

        grCmpArm.Enabled := True;

        EdFlgAti.Enabled := True;
        EdNomArm.Enabled := True;
        EdQtdArm.Enabled := True;
        EdDemArm.Enabled := True;
        EdVblArm.Enabled := True;
        EdDesArm.Enabled := True;

        EdNomArm.Font.Style := [];
        EdQtdArm.Font.Style := [];
        EdDemArm.Font.Style := [];
        EdVblArm.Font.Style := [];
        EdDesArm.Font.Style := [];

     end;
  end;
end;

procedure TfmManArm.dsCmpArmDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvCmpArm.Salvar then begin

     if not EdMscAr2.Enabled then begin

        grCmpAr2.Enabled := True;
        nvCmpAr2.Enabled := True;

        EdMscAr2.Enabled := True;
        EdThcAr2.Enabled := True;
        EdCubMax.Enabled := True;
        EdPesMax.Enabled := True;

        EdMscAr2.Font.Style := [];
        EdThcAr2.Font.Style := [];
        EdCubMax.Font.Style := [];
        EdPesMax.Font.Style := [];

     end;
  end;
end;

procedure TfmManArm.CmpArmAfterCancel(DataSet: TDataSet);
begin
  inherited;

  grCmpAr2.Enabled := True;
  nvCmpAr2.Enabled := True;

  EdMscAr2.Enabled := True;
  EdThcAr2.Enabled := True;
  EdCubMax.Enabled := True;
  EdPesMax.Enabled := True;

  EdMscAr2.Font.Style := [];
  EdThcAr2.Font.Style := [];
  EdCubMax.Font.Style := [];
  EdPesMax.Font.Style := [];

end;

procedure TfmManArm.CmpArmBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if grCmpAr2.Enabled then begin

     grCmpAr2.Enabled := False;
     nvCmpAr2.Enabled := False;

     EdMscAr2.Enabled := False;
     EdThcAr2.Enabled := False;
     EdCubMax.Enabled := False;
     EdPesMax.Enabled := False;

     EdMscAr2.Font.Style := [fsBold];
     EdThcAr2.Font.Style := [fsBold];
     EdCubMax.Font.Style := [fsBold];
     EdPesMax.Font.Style := [fsBold];

  end;
end;

procedure TfmManArm.CmpAr2AfterCancel(DataSet: TDataSet);
begin
  inherited;

  grCmpArm.Enabled := True;

  nvCmpArm.Enabled := True;

  EdFlgAti.Enabled := True;
  EdNomArm.Enabled := True;
  EdQtdArm.Enabled := True;
  EdDemArm.Enabled := True;
  EdVblArm.Enabled := True;
  EdDesArm.Enabled := True;

  EdNomArm.Font.Style := [];
  EdQtdArm.Font.Style := [];
  EdDemArm.Font.Style := [];
  EdVblArm.Font.Style := [];
  EdDesArm.Font.Style := [];

end;

procedure TfmManArm.CmpAr2BeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if grCmpArm.Enabled then begin
  
     grCmpArm.Enabled := False;

     nvCmpArm.Enabled := False;

     EdFlgAti.Enabled := False;
     EdNomArm.Enabled := False;
     EdQtdArm.Enabled := False;
     EdDemArm.Enabled := False;
     EdVblArm.Enabled := False;
     EdDesArm.Enabled := False;

     EdNomArm.Font.Style := [fsBold];
     EdQtdArm.Font.Style := [fsBold];
     EdDemArm.Font.Style := [fsBold];
     EdVblArm.Font.Style := [fsBold];
     EdDesArm.Font.Style := [fsBold];
     
  end;
end;

procedure TfmManArm.EdCubMaxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Operac: string;
begin
  inherited;
  if (key = 13) or (key = 40) then begin

     if nvCmpAr2.Salvar then begin

        if CmpAr2.State = dsInsert then Operac := 'dsInsert';

        if CmpAr2Id_CmpPor.Value > 0 then begin

           if Operac = 'dsInsert' then begin
           
              with quSQL,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg'+
                           ' From CmpAr2'+
                           ' Where CmpAr2.Id_CmpArm = '+ QuotedStr(IntToStr(CmpAr2Id_CmpArm.Value)) +
                           '   and CmpAr2.Id_CmpPor = '+ QuotedStr(IntToStr(CmpAr2Id_CmpPor.Value)) ;
                   Open;

                   if FieldbyName('QtdReg').AsInteger > 0 then
                      fmsgErro('Porto já informado para o armador.',EdId_CmpPor);

              end; 
           end;

           nvCmpAr2.SBSalvaClick(Sender);

           if (Operac = 'dsInsert') and (not nvCmpAr2.Salvar) then begin

              nvCmpAr2.SBIncluiClick(Sender);

              if EdId_CmpPor.Enabled then
                 EdId_CmpPor.SetFocus
              else
                 EdMscAr2.SetFocus;
                 
           end;

           end
        else
           fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_CmpPor);
           
     end;
  end;
end;

end.
