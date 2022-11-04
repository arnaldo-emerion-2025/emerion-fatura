unit PsqCf4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, FShowPadrao, dxDBColorEdit, dxDBColorCurrencyEdit,
  dxDBColorDateEdit, Menus, dxDBEdtr, dxDBColorLookupEdit, Buttons;

type
  TfmPsqCf4 = class(TfmShowPadrao)
    PedCt4: TwwQuery;
    DsPedCt4: TwwDataSource;
    PedCt4APEFOR: TStringField;
    Panel2: TPanel;
    Label17: TLabel;
    Label21: TLabel;
    EdJurCt4: TdxDBColorCurrencyEdit;
    EdDs1Ct4: TdxDBColorCurrencyEdit;
    Label32: TLabel;
    EdDs2Ct4: TdxDBColorCurrencyEdit;
    Label33: TLabel;
    EdDs3Ct4: TdxDBColorCurrencyEdit;
    Label35: TLabel;
    EdDs4Ct4: TdxDBColorCurrencyEdit;
    Label36: TLabel;
    EdVluCt4: TdxDBColorCurrencyEdit;
    Label14: TLabel;
    EdPerIcm: TdxDBColorCurrencyEdit;
    EdPerIpi: TdxDBColorCurrencyEdit;
    Label10: TLabel;
    Label42: TLabel;
    EdPerMva: TdxDBColorCurrencyEdit;
    Label26: TLabel;
    Label37: TLabel;
    EdAcrCt4: TdxDBColorCurrencyEdit;
    Label19: TLabel;
    EdObsCt4: TdxDBColorEdit;
    Label27: TLabel;
    Label18: TLabel;
    EdValFin: TdxDBColorCurrencyEdit;
    EdQtpCt4: TdxDBColorCurrencyEdit;
    Label3: TLabel;
    EdQtdMin: TdxDBColorCurrencyEdit;
    Label4: TLabel;
    EdNomCon: TdxDBColorEdit;
    UpPedCt4: TUpdateSQL;
    PaintBox: TPaintBox;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label8: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    dxDBEdit28: TdxDBColorEdit;
    grCt4: ThGrid;
    PaintBox1: TPaintBox;
    EdPraEnt: TdxDBColorCurrencyEdit;
    Label22: TLabel;
    EdDteEnt: TdxDBColorDateEdit;
    EdDs5Ct4: TdxDBColorCurrencyEdit;
    Label23: TLabel;
    EdFlgCst: TdxDBCheckEdit;
    Label29: TLabel;
    PedCt4FLGCOT: TStringField;
    pnTexto: TLabel;
    Label28: TLabel;
    PedCt4ID_PEDCT4: TIntegerField;
    PedCt4ID_PEDCT2: TIntegerField;
    PedCt4ID_CMPPFO: TIntegerField;
    PedCt4QTPCT4: TFloatField;
    PedCt4PRAENT: TIntegerField;
    PedCt4DTEENT: TDateTimeField;
    PedCt4QTDMIN: TFloatField;
    PedCt4VLUCT4: TFloatField;
    PedCt4DS1CT4: TFloatField;
    PedCt4DS2CT4: TFloatField;
    PedCt4DS3CT4: TFloatField;
    PedCt4DS4CT4: TFloatField;
    PedCt4DS5CT4: TFloatField;
    PedCt4JURCT4: TFloatField;
    PedCt4ACRCT4: TFloatField;
    PedCt4PERIPI: TFloatField;
    PedCt4PERICM: TFloatField;
    PedCt4PERMVA: TFloatField;
    PedCt4TOTICM: TFloatField;
    PedCt4TOTSUB: TFloatField;
    PedCt4MARKUP: TFloatField;
    PedCt4VALFIN: TFloatField;
    PedCt4OBSCT4: TStringField;
    PedCt4NOMCON: TStringField;
    PedCt4FLGCST: TStringField;
    PedCt4DTEATU: TDateTimeField;
    PedCt4HREATU: TStringField;
    PedCt4CODUSU: TIntegerField;
    PedCt4FLGATU: TStringField;
    PedCt4CODFOR: TIntegerField;
    PedCt4NROCT4: TIntegerField;
    FinFor: TQuery;
    FinForAPEFOR: TStringField;
    FinForCODFOR: TIntegerField;
    DsFinFor: TwwDataSource;
    PopupMenu1: TPopupMenu;
    IncluirNovo1: TMenuItem;
    ExcluirAmbiente1: TMenuItem;
    Label24: TLabel;
    EdCodFor: TdxDBColorEdit;
    bPsqFor: TSpeedButton;
    CbApeFor: TdxDBColorLookupEdit;
    quSql: TwwQuery;
    PedCt4FLGINT: TStringField;
    PedCt4CODPFO: TStringField;
    PedCt4ULTCMP: TFloatField;
    PedCt4ULTQTD: TFloatField;
    PedCt4DULCMP: TDateTimeField;
    pnQtdCot: TLabel;
    procedure incluir;
    procedure excluir;    
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdVluCt4Exit(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure EdNomConEnter(Sender: TObject);
    procedure EdPraEntExit(Sender: TObject);
    procedure grCt4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grCt4Enter(Sender: TObject);
    procedure DsPedCt4DataChange(Sender: TObject; Field: TField);
    procedure EdCodForEnter(Sender: TObject);
    procedure EdCodForExit(Sender: TObject);
    procedure PedCt4NewRecord(DataSet: TDataSet);
    procedure IncluirNovo1Click(Sender: TObject);
    procedure ExcluirAmbiente1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqForClick(Sender: TObject);
    procedure EdCodForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodForKeyPress(Sender: TObject; var Key: Char);
  private
    pSaida : string;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqCf4: TfmPsqCf4;

implementation

uses Bbfuncao, ManGDB, dxDemoUtils, Bbgeral, Bbmensag, ManCt2, AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmPsqCf4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if PedCt4.State <> dsBrowse then begin

        if EdCodFor.Enabled then begin

           pSaida := 'Nao';

           bPsqFor.Enabled := False;

           EdCodFor.Enabled := False;

           pSaida := 'Sim';

        end;

        PedCt4.CancelUpdates;

        grCt4.SetFocus;

        end
     else
        close;

  end;      
end;

procedure TfmPsqCf4.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCf4.FormShow(Sender: TObject);
begin
  inherited;
  grCt4.SetFocus;
end;

procedure TfmPsqCf4.EdVluCt4Exit(Sender: TObject);
begin
  inherited;
  if PedCt4.State <> dsBrowse then begin
  
     PedCt4ValFin.Value := PedCt4VluCt4.Value;

     if PedCt4VluCt4.Value > 0 then begin

        PedCt4TotIcm.Value := 0;
        PedCt4TotSub.Value := 0;

        if PedCt4Ds1Ct4.Value > 0 then PedCt4ValFin.Value := fRound(PedCt4ValFin.Value - ((PedCt4ValFin.Value * PedCt4Ds1Ct4.Value)/100),4);
        if PedCt4Ds2Ct4.Value > 0 then PedCt4ValFin.Value := fRound(PedCt4ValFin.Value - ((PedCt4ValFin.Value * PedCt4Ds2Ct4.Value)/100),4);
        if PedCt4Ds3Ct4.Value > 0 then PedCt4ValFin.Value := fRound(PedCt4ValFin.Value - ((PedCt4ValFin.Value * PedCt4Ds3Ct4.Value)/100),4);
        if PedCt4Ds4Ct4.Value > 0 then PedCt4ValFin.Value := fRound(PedCt4ValFin.Value - ((PedCt4ValFin.Value * PedCt4Ds4Ct4.Value)/100),4);

        if PedCt4JurCt4.Value > 0 then PedCt4ValFin.Value := fRound(PedCt4ValFin.Value + ((PedCt4ValFin.Value * PedCt4JurCt4.Value)/100),4);
        if PedCt4AcrCt4.Value > 0 then PedCt4ValFin.Value := fRound(PedCt4ValFin.Value + ((PedCt4ValFin.Value * PedCt4AcrCt4.Value)/100),4);

        if PedCt4PerIcm.Value > 0 then PedCt4TotIcm.Value := fRound((PedCt4ValFin.Value * PedCt4PerIcm.Value)/100,4);

        if PedCt4PerIpi.Value > 0 then PedCt4ValFin.Value := fRound(PedCt4ValFin.Value + ((PedCt4ValFin.Value * PedCt4PerIpi.Value)/100),4);

        if PedCt4PerMva.Value > 0 then begin

           PedCt4TotSub.Value := fRound(PedCt4ValFin.Value + ((PedCt4ValFin.Value * PedCt4PerMva.Value)/100),4);

           PedCt4TotSub.Value := fRound(((PedCt4TotSub.Value * PedCt4PerIcm.Value)/100) - PedCt4TotIcm.Value,4);

           PedCt4ValFin.Value := fRound(PedCt4ValFin.Value + PedCt4TotSub.Value,4);

        end
     end;
  end;   
end;

procedure TfmPsqCf4.Panel2Exit(Sender: TObject);
var
  Id_PedCt2,Id_PedCt4 : integer;
begin
  inherited;
  if pSaida = 'Sim' then begin
  
     if PedCt4.State <> dsBrowse then begin

        if PedCt4CodFor.Value = 0 then fmsgErro('Campo de preenchimento obrigatorio não informado.',EdCodFor);
        if PedCt4QtpCt4.Value = 0 then fmsgErro('Campo de preenchimento obrigatorio não informado.',EdQtpCt4);
        if PedCt4VluCt4.Value = 0 then fmsgErro('Campo de preenchimento obrigatorio não informado.',EdVluCt4);

        Id_PedCt2 := fmManCt2.PedCt2Id_PedCt2.Value;

        if PedCt4.State = dsInsert then begin

           if Trim(PedCt4CodPfo.Value) = '' then
              PedCt4CodPfo.Value := fmManCt2.PedCt2CodClp.Value+'-'+
                                    fmManCt2.PedCt2CodGru.Value+'.'+
                                    fmManCt2.PedCt2CodSub.Value+'.'+
                                    fmManCt2.PedCt2CodPro.Value;

           with PedCt4 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedCt4.State = dsBrowse then PedCt4.Edit;

                   EdCodFor.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedCt4.Close;
           PedCt4.Open;

           fmManCt2.PedCta.Close;
           fmManCt2.PedCta.Open;

           fmManCt2.PedCt2.Close;
           fmManCt2.PedCt2.Open;

           fmManCt2.PedCt2.Locate('Id_PedCt2',Id_PedCt2,[LoPartialKey]);

           PedCt4.Append;

           EdCodFor.SetFocus;

           end
        else
           begin
     
           Id_PedCt4 := PedCt4Id_PedCt4.Value;

           with PedCt4 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedCt4.State <> dsBrowse then PedCt4.CancelUpdates;

                   if EdCodFor.Enabled then
                      EdCodFor.SetFocus
                   else
                      EdNomCon.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedCt4.Close;
           PedCt4.Open;

           fmManCt2.PedCta.Close;
           fmManCt2.PedCta.Open;

           fmManCt2.PedCt2.Close;
           fmManCt2.PedCt2.Open;

           fmManCt2.PedCt2.Locate('Id_PedCt2',Id_PedCt2,[LoPartialKey]);

           PedCt4.Locate('Id_PedCt4',Id_PedCt4,[LoPartialKey]);
        
           if PedCt4NroCt4.Value = fmManCt2.PedCt2QtiCt4.Value then
              PedCt4.Append
           else
              begin

              PedCt4.Next;

              EdCodFor.Enabled := False;

              grCt4.SetFocus;

           end;
        end;
     end;
  end;   
end;

procedure TfmPsqCf4.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmPsqCf4.EdNomConEnter(Sender: TObject);
begin
  inherited;

  pnTexto.Caption := '';
  
  if PedCt4.State = dsBrowse then PedCt4.Edit;

end;

procedure TfmPsqCf4.EdPraEntExit(Sender: TObject);
begin
  inherited;
  PedCt4DteEnt.Value := fmManCt2.PedCtaDteCta.Value + PedCt4PraEnt.Value;
end;

procedure TfmPsqCf4.grCt4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Id_PedCt2,Id_PedCt4 : integer;
begin
  inherited;
  if key = 32 then begin

     if PedCt4Id_PedCt4.Value > 0 then begin

        Id_PedCt2 := fmManCt2.PedCt2Id_PedCt2.Value;

        Id_PedCt4 := PedCt4Id_PedCt4.Value;
     
        PedCt4.Edit;

        if PedCt4FlgCot.Value = 'Nao' then
           PedCt4FlgCot.Value := 'Sim'
        else
           PedCt4FlgCot.Value := 'Nao';

        with PedCt4 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedCt4.State <> dsBrowse then PedCt4.CancelUpdates;

                grCt4.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedCt4.Close;
        PedCt4.Open;

        fmManCt2.PedCta.Close;
        fmManCt2.PedCta.Open;

        fmManCt2.PedCt2.Close;
        fmManCt2.PedCt2.Open;

        fmManCt2.PedCt2.Locate('Id_PedCt2',Id_PedCt2,[LoPartialKey]);

        PedCt4.Locate('Id_PedCt4',Id_PedCt4,[LoPartialKey]);

     end;
  end;

  if key = 40 then begin // Tecla - Seta para Baixo //

     if PedCt4NroCt4.Value = fmManCt2.PedCt2QtiCt4.Value then incluir;

  end;

  if key = 46 then excluir // Tecla - DEL //

end;

procedure TfmPsqCf4.grCt4Enter(Sender: TObject);
begin
  inherited;
  pnTexto.Caption := 'Barra de espaço-Confirmar envio de cotação ENTER-Alterar informações  Seta para Baixo- Avançar/Inserir novo fornecedor';
end;

procedure TfmPsqCf4.DsPedCt4DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if FinFor.Params[0].AsInteger <> PedCt4CodFor.Value then begin

     FinFor.Close;
     FinFor.Params[0].AsInteger := PedCt4CodFor.Value;
     FinFor.Open;

  end;

  if PedCt4FlgCot.Value = 'Sim' then begin

     if not EdNomCon.Enabled then begin

        EdNomCon.Enabled := True;
        EdQtpCt4.Enabled := True;
        EdQtdMin.Enabled := True;
        EdPraEnt.Enabled := True;
        EdVluCt4.Enabled := True;
        EdDs1Ct4.Enabled := True;
        EdDs2Ct4.Enabled := True;
        EdDs3Ct4.Enabled := True;
        EdDs4Ct4.Enabled := True;
        EdDs5Ct4.Enabled := True;
        EdJurCt4.Enabled := True;
        EdAcrCt4.Enabled := True;
        EdPerIcm.Enabled := True;
        EdPerIpi.Enabled := True;
        EdPerMva.Enabled := True;
        EdObsCt4.Enabled := True;
        EdFlgCst.Enabled := True;

     end;
     
     end
  else
     begin

     if EdNomCon.Enabled then begin

        EdNomCon.Enabled := False;
        EdQtpCt4.Enabled := False;
        EdQtdMin.Enabled := False;
        EdPraEnt.Enabled := False;
        EdVluCt4.Enabled := False;
        EdDs1Ct4.Enabled := False;
        EdDs2Ct4.Enabled := False;
        EdDs3Ct4.Enabled := False;
        EdDs4Ct4.Enabled := False;
        EdDs5Ct4.Enabled := False;
        EdJurCt4.Enabled := False;
        EdAcrCt4.Enabled := False;
        EdPerIcm.Enabled := False;
        EdPerIpi.Enabled := False;
        EdPerMva.Enabled := False;
        EdObsCt4.Enabled := False;
        EdFlgCst.Enabled := False;

     end;
  end;
end;

procedure TfmPsqCf4.EdCodForEnter(Sender: TObject);
begin
  inherited;
  pnTexto.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmPsqCf4.EdCodForExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not grCt4.Focused then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedCt4.State <> dsBrowse then begin

           if PedCt4CodFor.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select FinFor.CodFor,'+
                           '        FinFor.ApeFor '+
                           ' From FinFor'+
                           ' Where FinFor.CodFor = '+ QuotedStr(IntToStr(PedCt4CodFor.Value));
                   Open;

              end;

              if quSql.FieldbyName('CodFor').AsInteger <> PedCt4CodFor.Value then
                 fmsgErro('Fornecedor Informado não localizado.',EdCodFor);

              end
           else
              fmsgErro('Campo de preenchimento obrigátorio não informado.',EdCodFor);

        end;
     end;

     end
  else
     begin

     if Tecla = 'UP' then begin

        if fmManCt2.PedCt2QtiCt4.Value > 0 then begin

           bPsqFor.Enabled := False;
           
           EdCodFor.Enabled := False;

           if PedCt4.State <> dsBrowse then
              PedCt4.CancelUpdates
           else
              begin

              if not PedCt4.BOF then PedCt4.Prior;

           end;

           grCt4.SetFocus;

           end
        else
           EdCodFor.SetFocus;
           
     end;
  end;
end;

procedure TfmPsqCf4.PedCt4NewRecord(DataSet: TDataSet);
begin
  inherited;

  PedCt4.Disablecontrols;

  PedCt4Id_PedCt4.Value := 1;

  PedCt4Id_PedCt2.Value := fmManCt2.PedCt2Id_PedCt2.Value;

  PedCt4QtpCt4.Value := 0;
  PedCt4PraEnt.Value := 0;
  PedCt4QtdMin.Value := 0;
  PedCt4VluCt4.Value := 0;
  PedCt4Ds1Ct4.Value := 0;
  PedCt4Ds2Ct4.Value := 0;
  PedCt4Ds3Ct4.Value := 0;
  PedCt4Ds4Ct4.Value := 0;
  PedCt4Ds5Ct4.Value := 0;
  PedCt4JurCt4.Value := 0;
  PedCt4AcrCt4.Value := 0;
  PedCt4PerIpi.Value := 0;
  PedCt4PerIcm.Value := 0;
  PedCt4PerMva.Value := 0;
  PedCt4TotIcm.Value := 0;
  PedCt4TotSub.Value := 0;
  PedCt4Markup.Value := 0;
  PedCt4ValFin.Value := 0;
  PedCt4FlgAtu.Value := ' ';
  PedCt4FlgInt.Value := 'Nao';
  PedCt4FlgCst.Value := 'Nao';
  PedCt4FlgCot.Value := 'Sim';
  PedCt4CodUsu.Value := GUsu_Id;
  PedCt4DteEnt.Value := fmManCt2.PedCtaDteCta.Value;
  PedCt4NroCt4.Value := fmManCt2.PedCt2QtiCt4.Value + 1;
  
  PedCt4.Enablecontrols;

  bPsqFor.Enabled := True;

  EdCodFor.Enabled := True;
  EdNomCon.Enabled := True;
  EdQtpCt4.Enabled := True;
  EdQtdMin.Enabled := True;
  EdPraEnt.Enabled := True;
  EdVluCt4.Enabled := True;
  EdDs1Ct4.Enabled := True;
  EdDs2Ct4.Enabled := True;
  EdDs3Ct4.Enabled := True;
  EdDs4Ct4.Enabled := True;
  EdDs5Ct4.Enabled := True;
  EdJurCt4.Enabled := True;
  EdAcrCt4.Enabled := True;
  EdPerIcm.Enabled := True;
  EdPerIpi.Enabled := True;
  EdPerMva.Enabled := True;
  EdObsCt4.Enabled := True;
  EdFlgCst.Enabled := True;

  EdCodFor.SetFocus;

end;

procedure TfmPsqCf4.incluir;
begin
  PedCt4.Append;
end;

procedure TfmPsqCf4.excluir;
var
  NroCt4,Id_PedCt2 : integer;
begin
  if PedCt4Id_PedCt4.Value > 0 then begin

     if PedCt4FlgInt.Value = 'Nao' then begin

        NroCt4 := PedCt4NroCt4.Value;

        Id_PedCt2 := fmManCt2.PedCt2Id_PedCt2.Value;

        PedCt4.Delete;

        with PedCt4 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedCt4.State <> dsBrowse then PedCt4.CancelUpdates;

                PedCt4.Close;
                PedCt4.Open;

                fmManCt2.PedCta.Close;
                fmManCt2.PedCta.Open;

                fmManCt2.PedCt2.Close;
                fmManCt2.PedCt2.Open;

                fmManCt2.PedCt2.Locate('Id_PedCt2',Id_PedCt2,[LoPartialKey]);

                PedCt4.Locate('Id_PedCt2;NroCt4',VarArrayOf([fmManCt2.PedCt2Id_PedCt2.Value,NroCt4]),[LoPartialKey]);

                grCt4.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedCt4.Close;
        PedCt4.Open;

        fmManCt2.PedCta.Close;
        fmManCt2.PedCta.Open;

        fmManCt2.PedCt2.Close;
        fmManCt2.PedCt2.Open;

        fmManCt2.PedCt2.Locate('Id_PedCt2',Id_PedCt2,[LoPartialKey]);

        if NroCt4 < fmManCt2.PedCt2QtiCt4.Value then
           PedCt4.Locate('Id_PedCt2;NroCt4',VarArrayOf([fmManCt2.PedCt2Id_PedCt2.Value,NroCt4]),[LoPartialKey])
        else
           begin

           if fmManCt2.PedCt2QtiCt4.Value = 0 then
              PedCt4.Append
           else
              PedCt4.Last;

        end;

        end
     else
        fmsgErro('Operação não pode ser realizada. Lançamento realizado pelo sistema.',Nil);

  end;
end;

procedure TfmPsqCf4.IncluirNovo1Click(Sender: TObject);
begin
  inherited;
  incluir;
end;

procedure TfmPsqCf4.ExcluirAmbiente1Click(Sender: TObject);
begin
  inherited;
  excluir;
end;

procedure TfmPsqCf4.FormCreate(Sender: TObject);
begin
  inherited;
  pSaida := 'Sim';
end;

procedure TfmPsqCf4.bPsqForClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        PedCt4CodFor.Value := fmAuxIni.CodFor;

        EdCodFor.Text := IntToStr(PedCt4CodFor.Value);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if PedCt4CodFor.Value > 0 then EdNomCon.SetFocus;

end;

procedure TfmPsqCf4.EdCodForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           PedCt4CodFor.Value := fmAuxIni.CodFor;

           EdCodFor.Text := IntToStr(PedCt4CodFor.Value);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if PedCt4CodFor.Value > 0 then EdNomCon.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           PedCt4CodFor.Value := fmAuxPsq.CodFor;

           EdCodFor.Text := IntToStr(PedCt4CodFor.Value);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if PedCt4CodFor.Value > 0 then EdNomCon.SetFocus;

  end;
end;

procedure TfmPsqCf4.EdCodForKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

end.
