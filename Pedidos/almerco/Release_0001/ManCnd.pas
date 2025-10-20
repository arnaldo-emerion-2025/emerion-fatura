unit ManCnd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, hNavigator, ExtCtrls, DBTables, Db, Wwdatsrc, Wwquery, StdCtrls,
  Mask, DBCtrls, hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, ComCtrls,
  wwdblook, Buttons, AlignEdit, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass,
  ppProd, ppReport, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, dxDBColorCurrencyEdit,
  dxDBColorEdit, dxColorCurrencyEdit, dxColorEdit;

type
  TfmManCnd = class(TfmPadrao)
    pcCnd: TPageControl;
    pcPag1: TTabSheet;
    Panel1: TPanel;
    pcPag2: TTabSheet;
    PedCnd: TwwQuery;
    DsCnd: TwwDataSource;
    upCnd: TUpdateSQL;
    nvCnd: ThDBNavigator;
    DsReport: TppDBPipeline;
    ppReport: TppReport;
    hbReport: TppHeaderBand;
    dbReport: TppDetailBand;
    ppLabel20: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    Label8: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label1: TLabel;
    Label26: TLabel;
    EdPsqNomCnd: TdxColorEdit;
    EdPsqId_PedCnd: TdxColorEdit;
    bbPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Label24: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    grCnd: ThGrid;
    Label25: TLabel;
    Shape11: TShape;
    Label4: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    EdId_PedCnd: TdxDBColorEdit;
    Label28: TLabel;
    Label30: TLabel;
    EdNomCnd: TdxDBColorEdit;
    EdQtdCnd: TdxDBColorCurrencyEdit;
    Label6: TLabel;
    EdPraCnd: TdxDBColorCurrencyEdit;
    Label20: TLabel;
    Label21: TLabel;
    EdFinCnd: TdxDBColorCurrencyEdit;
    Label22: TLabel;
    EdTaxCnd: TdxDBColorCurrencyEdit;
    Label2: TLabel;
    Shape7: TShape;
    Shape8: TShape;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label23: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    PedPar: TwwQuery;
    DsPar: TwwDataSource;
    PedParTAXFIN: TFloatField;
    Label38: TLabel;
    EdTaxFin: TdxDBColorCurrencyEdit;
    Label39: TLabel;
    EdValIni: TdxDBColorCurrencyEdit;
    Label40: TLabel;
    Label41: TLabel;
    EdPsqValIni: TdxColorCurrencyEdit;
    Label42: TLabel;
    EdPsqValFin: TdxColorCurrencyEdit;
    EdP01Cnd: TdxDBColorCurrencyEdit;
    EdP02Cnd: TdxDBColorCurrencyEdit;
    EdP03Cnd: TdxDBColorCurrencyEdit;
    EdP04Cnd: TdxDBColorCurrencyEdit;
    EdP05Cnd: TdxDBColorCurrencyEdit;
    EdP06Cnd: TdxDBColorCurrencyEdit;
    EdP12Cnd: TdxDBColorCurrencyEdit;
    EdP11Cnd: TdxDBColorCurrencyEdit;
    EdP10Cnd: TdxDBColorCurrencyEdit;
    EdP09Cnd: TdxDBColorCurrencyEdit;
    EdP08Cnd: TdxDBColorCurrencyEdit;
    EdP07Cnd: TdxDBColorCurrencyEdit;
    EdValFin: TdxDBColorCurrencyEdit;
    ppCodCnd: TppDBText;
    ppNomCnd: TppDBText;
    ppQtdCnd: TppDBText;
    ppAcrCnd: TppDBText;
    ppValIni: TppDBText;
    ppValFin: TppDBText;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    Label43: TLabel;
    EdDscCnd: TdxDBColorCurrencyEdit;
    ppDscCnd: TppDBText;
    ppLabel12: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel8: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    Label45: TLabel;
    EdFlgAti: TdxDBCheckEdit;
    PedCndID_PEDCND: TIntegerField;
    PedCndNOMCND: TStringField;
    PedCndQTDCND: TIntegerField;
    PedCndP01CND: TIntegerField;
    PedCndP02CND: TIntegerField;
    PedCndP03CND: TIntegerField;
    PedCndP04CND: TIntegerField;
    PedCndP05CND: TIntegerField;
    PedCndP06CND: TIntegerField;
    PedCndP07CND: TIntegerField;
    PedCndP08CND: TIntegerField;
    PedCndP09CND: TIntegerField;
    PedCndP10CND: TIntegerField;
    PedCndP11CND: TIntegerField;
    PedCndP12CND: TIntegerField;
    PedCndPRACND: TIntegerField;
    PedCndVALINI: TFloatField;
    PedCndVALFIN: TFloatField;
    PedCndTAXCND: TFloatField;
    PedCndDSCCND: TFloatField;
    PedCndFLGATI: TStringField;
    rgStatus: TRadioGroup;
    PedCndACRCND: TFloatField;
    procedure PedCndNewRecord(DataSet: TDataSet);
    procedure bbPesquisaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure nvCndImprime(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure grCndDblClick(Sender: TObject);
    procedure nvCndBeforeSalva(Sender: TObject);
    procedure DsCndDataChange(Sender: TObject; Field: TField);
    procedure EdQtdCndExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqId_PedCndKeyPress(Sender: TObject; var Key: Char);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase, sFiltro, sOrdem : string;
  end;

var
  fmManCnd: TfmManCnd;

implementation

uses Bbfuncao, Bbgeral, BbMensag, ManPri, Fpreview, ManGDB;

{$R *.DFM}

procedure TfmManCnd.PedCndNewRecord(DataSet: TDataSet);
begin
  inherited;

  if copy(GFprm,1,1) <> 'S' then Abort;

  PedCnd.DisableControls;

  PedCndId_PedCnd.Value := 0;

  PedCndP01Cnd.Value := 0;
  PedCndP02Cnd.Value := 0;
  PedCndP03Cnd.Value := 0;
  PedCndP04Cnd.Value := 0;
  PedCndP05Cnd.Value := 0;
  PedCndP06Cnd.Value := 0;
  PedCndP07Cnd.Value := 0;
  PedCndP08Cnd.Value := 0;
  PedCndP09Cnd.Value := 0;
  PedCndP10Cnd.Value := 0;
  PedCndP11Cnd.Value := 0;
  PedCndP12Cnd.Value := 0;
  PedCndPraCnd.Value := 0;
  PedCndTaxCnd.Value := 0;
  PedCndDscCnd.Value := 0;
  PedCndValIni.Value := 0;
  PedCndValFin.Value := 0;
  PedCndQtdCnd.Value := 1;
  PedCndFlgAti.Value := 'Sim';
  PedCndAcrCnd.Value := PedParTaxFin.Value;

  PedCnd.EnableControls;

  PcCnd.ActivePage := pcPag2;

  EdNomCnd.Setfocus;

end;

procedure TfmManCnd.bbPesquisaClick(Sender: TObject);
begin
  inherited;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by PedCnd.Id_PedCnd';
       1: sOrdem := ' Order by PedCnd.NomCnd';
  end;

  case rgStatus.ItemIndex of
       0: sFiltro := ' Where PedCnd.FlgAti = '+ QuotedStr('Sim');
       1: sFiltro := ' Where PedCnd.FlgAti = '+ QuotedStr('Nao');
  end;

  if Trim(EdPsqId_PedCnd.Text) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where PedCnd.Id_PedCnd = '+ QuotedStr(EdPsqId_PedCnd.Text)
     else
        sFiltro := sFiltro + ' and PedCnd.Id_PedCnd = '+ QuotedStr(EdPsqId_PedCnd.Text);

  end;
        
  if rgbusca.ItemIndex = 0 then begin

     if Trim(EdPsqNomCnd.Text) <> '' then begin

        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where PedCnd.NomCnd LIKE '+ QuotedStr(EdPsqNomCnd.Text +'%')
        else
           sFiltro := sFiltro + ' and PedCnd.NomCnd LIKE '+ QuotedStr(EdPsqNomCnd.Text +'%');
           
     end;   

     end
  else
     begin

     if Trim(EdPsqNomCnd.Text) <> '' then begin

        if pos('Where',sFiltro) = 0 then
           sFiltro := ' Where PedCnd.NomCnd LIKE '+ QuotedStr('%'+ EdPsqNomCnd.Text +'%')
        else
           sFiltro := sFiltro + ' and PedCnd.NomCnd LIKE '+ QuotedStr('%'+ EdPsqNomCnd.Text +'%');
           
     end;
  end;

  if EdPsqValIni.Value > 0 then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where PedCnd.ValIni >= '+ QuotedStr(fConvertValor(EdPsqValIni.Text))
     else
        sFiltro := sFiltro + ' and PedCnd.ValIni >= '+ QuotedStr(fConvertValor(EdPsqValIni.Text));

  end;

  if EdPsqValFin.Value > 0 then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where PedCnd.ValFin <= '+ QuotedStr(fConvertValor(EdPsqValFin.Text))
     else
        sFiltro := sFiltro + ' and PedCnd.ValFin <= '+ QuotedStr(fConvertValor(EdPsqValFin.Text));

  end;

  with PedCnd,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManCnd.FormShow(Sender: TObject);
begin
  inherited;

  sBase := ' Select * From PedCnd ';

  pcCnd.ActivePage := pcPag1;

  EdPsqId_PedCnd.SetFocus;

end;

procedure TfmManCnd.nvCndImprime(Sender: TObject);
begin
  inherited;

  PedCnd.First;

  if not PedCnd.Eof then begin

     ppReport.DeviceType := 'Screen';
     fmPreview := TfmPreview.Create(fmManCnd);
     fmPreview.ppViewer.Report := ppReport;
     ppReport.PrintToDevices;
     fmPreview.ShowModal;

     if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

  end;
end;

procedure TfmManCnd.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqId_PedCnd.SetFocus;
end;

procedure TfmManCnd.pcPag2Show(Sender: TObject);
var
  i,j : integer;
  NameComp : string;
begin
  inherited;

  EdQtdCnd.DisplayFormat := '';

  for i := 1 to 12 do begin

      NameComp := 'EdP'+fNumZeros(IntToStr(i),2)+'Cnd';

      for j := 0 to fmManCnd.ComponentCount - 1 do begin

          if (Components[j] is TdxDBCurrencyEdit) then begin

             if Components[j].Name = NameComp then begin

                with TdxDBCurrencyEdit(Components[j]) do begin

                     DisplayFormat := '';

                     Enabled := False;

                end;
             end;
          end;
      end;
  end;

  for i := 0 to PedCndQtdCnd.Value do begin

      NameComp := 'EdP'+fNumZeros(IntToStr(i),2)+'Cnd';

      for j := 0 to fmManCnd.ComponentCount - 1 do begin

          if (Components[j] is TdxDBCurrencyEdit) then begin

             if Components[j].Name = NameComp then begin

                with TdxDBCurrencyEdit(Components[j]) do begin

                     Enabled := True;

                end;
             end;
          end;
      end;
  end;

  EdNomCnd.SetFocus;

end;

procedure TfmManCnd.grCndDblClick(Sender: TObject);
begin
  inherited;
  pcCnd.ActivePage := pcPag2;
end;

procedure TfmManCnd.nvCndBeforeSalva(Sender: TObject);
var
i,j : integer;
AntPra : real;
ErroPra : boolean;
NameComp : string;
begin
  inherited;

  if PedCndQtdCnd.Value <= 0 then fmsgErro('Quantidade de parcelas informado esta incorreto.',EdQtdCnd);

  AntPra := 0;

  ErroPra := False;

  for i := 0 to 12 do begin

      NameComp := 'EdP'+fNumZeros(IntToStr(i),2)+'Cnd';

      for j := 0 to fmManCnd.ComponentCount - 1 do begin

          if (Components[j] is TdxDBCurrencyEdit) then begin

             if Components[j].Name = NameComp then begin

                with TdxDBCurrencyEdit(Components[j]) do begin

                     if Enabled then begin

                        if Value > 0 then begin

                           if AntPra = 0 then AntPra := Value;

                           end
                        else
                           begin

                           if Value < AntPra then ErroPra := True;

                        end;
                     end;
                end;
             end;
          end;
      end;
  end;

  if ErroPra then fmsgErro('Vencimentos Incorretos',EdP01Cnd);

end;

procedure TfmManCnd.DsCndDataChange(Sender: TObject; Field: TField);
var
i,j : integer;
NameComp : string;
begin
  inherited;
  if (not nvCnd.Salvar) and (Trim( sBase ) <> '') then begin

     for i := 1 to 12 do begin

         NameComp := 'EdP'+fNumZeros(IntToStr(i),2)+'Cnd';

         for j := 0 to fmManCnd.ComponentCount - 1 do begin

             if (Components[j] is TdxDBCurrencyEdit) then begin

                if Components[j].Name = NameComp then begin

                   with TdxDBCurrencyEdit(Components[j]) do begin

                        DisplayFormat := '';

                        Enabled := False;

                   end;
                end;
             end;
         end;
     end;

     for i := 0 to PedCndQtdCnd.Value do begin

         NameComp := 'EdP'+fNumZeros(IntToStr(i),2)+'Cnd';

         for j := 0 to fmManCnd.ComponentCount - 1 do begin

             if (Components[j] is TdxDBCurrencyEdit) then begin

                if Components[j].Name = NameComp then begin

                   with TdxDBCurrencyEdit(Components[j]) do begin

                        Enabled := True;

                   end;
                end;
             end;
         end;
     end;
  end;
end;

procedure TfmManCnd.EdQtdCndExit(Sender: TObject);
var
i,j : integer;
NameComp : string;
begin
  inherited;
  if nvCnd.Salvar then begin

     for i := 0 to 12 do begin

         NameComp := 'EdP'+fNumZeros(IntToStr(i),2)+'Cnd';

         for j := 0 to fmManCnd.ComponentCount - 1 do begin

             if (Components[j] is TdxDBCurrencyEdit) then begin

                if Components[j].Name = NameComp then begin

                   with TdxDBCurrencyEdit(Components[j]) do begin

                        Enabled := False;

                   end;
                end;
             end;
         end;
     end;

     for i := 0 to PedCndQtdCnd.Value do begin

         NameComp := 'EdP'+fNumZeros(IntToStr(i),2)+'Cnd';

         for j := 0 to fmManCnd.ComponentCount - 1 do begin

             if (Components[j] is TdxDBCurrencyEdit) then begin

                if Components[j].Name = NameComp then begin

                   with TdxDBCurrencyEdit(Components[j]) do begin

                        Enabled := True;

                   end;
                end;
             end;
         end;
     end;
  end;
end;

procedure TfmManCnd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfmManCnd.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCnd := nil;
end;

procedure TfmManCnd.EdPsqId_PedCndKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

end.
