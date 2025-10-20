unit ManAt1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, AlignEdit, ComCtrls, hNavigator, Buttons,
  Mask, hEdits, FlEdit, Db, DBTables, Wwquery, Wwdatsrc, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, wwdbdatetimepicker, wwdblook, DBCtrls, DBFlEdit, wwriched,
  jpeg, wwdbedit, Wwdotdot, Wwdbcomb, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, dxfCheckBox, Menus, dxDBEdtr, dxDBColorPickEdit,
  dxDBColorDateEdit, dxDBColorEdit, dxDBColorCurrencyEdit,
  dxDBColorMaskEdit;

type
  TfmManAt1 = class(TfmPadrao)
    DsAte: TwwDataSource;
    DsAt2: TwwDataSource;
    UpAte: TUpdateSQL;
    UpAt2: TUpdateSQL;
    quSql: TwwQuery;
    PaintBox: TPaintBox;
    LbText: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    Label29: TLabel;
    EdId_PedAte: TdxDBColorEdit;
    pnId_PedAte: TPanel;
    Label37: TLabel;
    EdCodEmp: TdxDBColorEdit;
    EdCodCli: TdxDBColorEdit;
    Label38: TLabel;
    bpsqCli: TSpeedButton;
    bpsqEmp: TSpeedButton;
    pnNomCli: TPanel;
    pnApeEmp: TPanel;
    EdApeEmp: TdxDBColorEdit;
    EdNomCli: TdxDBColorEdit;
    Label54: TLabel;
    pnUfeAte: TPanel;
    EdUfeAte: TdxDBColorEdit;
    Panel3: TPanel;
    grLabel2: TPanel;
    Label32: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Label14: TLabel;
    grLabel1: TdxDBGraphicEdit;
    PedAte: TwwQuery;
    PedAt2: TwwQuery;
    Panel2: TPanel;
    grAt21: TdxDBGraphicEdit;
    grAt2: ThGrid;
    Label53: TLabel;
    Panel15: TPanel;
    PedPar: TwwQuery;
    PedParTIPATD: TStringField;
    Label1: TLabel;
    PedAteID_PEDATE: TIntegerField;
    PedAteCODEMP: TIntegerField;
    PedAteCODCLI: TIntegerField;
    PedAteNOMCLI: TStringField;
    PedAteEMACLI: TStringField;
    PedAtePFOCLI: TStringField;
    PedAteFONCLI: TStringField;
    PedAteQTIAT2: TIntegerField;
    PedAteDTEULT: TDateTimeField;
    PedAteHREULT: TStringField;
    PedAteSITATE: TStringField;
    Label13: TLabel;
    EdPfoCli: TdxDBColorEdit;
    EdFonCli: TdxDBColorEdit;
    Label19: TLabel;
    EdDteUlt: TdxDBColorDateEdit;
    EdEmaCli: TdxDBColorEdit;
    Label2: TLabel;
    EdHreUlt: TdxDBColorEdit;
    PedAt2ID_PEDAT2: TIntegerField;
    PedAt2ID_PEDATE: TIntegerField;
    PedAt2DTEATE: TDateTimeField;
    PedAt2HREATE: TStringField;
    PedAt2DTERET: TDateTimeField;
    PedAt2HRERET: TStringField;
    PedAt2CODVEN: TIntegerField;
    PedAt2CODATD: TIntegerField;
    PedAt2OB1ATE: TStringField;
    PedAt2OB2ATE: TStringField;
    PedAt2OB3ATE: TStringField;
    PedAt2OB4ATE: TStringField;
    PedAt2OB5ATE: TStringField;
    PedAt2OB6ATE: TStringField;
    PedAt2OB7ATE: TStringField;
    PedAt2OB8ATE: TStringField;
    PedAt2OB9ATE: TStringField;
    PedAt2CODUSU: TIntegerField;
    PedAt2NROAT2: TIntegerField;
    Label39: TLabel;
    EdCodVen: TdxDBColorEdit;
    bpsqVen: TSpeedButton;
    EdNomVen: TdxDBColorEdit;
    pnApeVen: TPanel;
    Label4: TLabel;
    EdCodAtd: TdxDBColorEdit;
    EdApeAtd: TdxDBColorEdit;
    bPsqAtd: TSpeedButton;
    pnApeAtd: TPanel;
    EdDteAte: TdxDBColorDateEdit;
    Label5: TLabel;
    Label6: TLabel;
    EdDteRet: TdxDBColorDateEdit;
    Label7: TLabel;
    EdHreRet: TdxDBColorMaskEdit;
    Label8: TLabel;
    EdOb1Ate: TdxDBColorEdit;
    EdOb2Ate: TdxDBColorEdit;
    EdOb3Ate: TdxDBColorEdit;
    EdOb4Ate: TdxDBColorEdit;
    EdOb5Ate: TdxDBColorEdit;
    PedAteDTEFIN: TDateTimeField;
    PedAteHREFIN: TStringField;
    PedAteUSUFIN: TIntegerField;
    PedAteOB1FIN: TStringField;
    PedAteOB2FIN: TStringField;
    PedAteOB3FIN: TStringField;
    PedAteOB4FIN: TStringField;
    PedAteOB5FIN: TStringField;
    PedAteUFEATE: TStringField;
    PedAt2CONTATO: TStringField;
    PedAt2RETORNO: TStringField;
    PedAt2APEVEN: TStringField;
    PedAt2APEATD: TStringField;
    Label12: TLabel;
    EdNomCon: TdxDBColorEdit;
    PedAt2NOMCON: TStringField;
    PedAteSEQATE: TStringField;
    PedAteFLGATU: TStringField;
    PedAt2FLGATU: TStringField;
    PedAteCLITAB: TStringField;
    PedAt2DTEATU: TDateTimeField;
    PedAt2HREATU: TStringField;
    PedAt2USUATU: TIntegerField;
    Label10: TLabel;
    EdId_PedCta: TdxDBColorEdit;
    pnId_PedCta: TPanel;
    PedAteID_PEDCTA: TIntegerField;
    pnDiaSemana: TLabel;
    PopupMenu1: TPopupMenu;
    IncluirNovo1: TMenuItem;
    ExcluirAmbiente1: TMenuItem;
    PedParFLGCOT: TStringField;
    procedure saicliente;
    procedure PaintBoxPaint(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PedAteNewRecord(DataSet: TDataSet);
    procedure PedAt2NewRecord(DataSet: TDataSet);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodEmpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodEmpEnter(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure bpsqEmpClick(Sender: TObject);
    procedure EdCodCliEnter(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure bpsqVenClick(Sender: TObject);
    procedure EdCodVenExit(Sender: TObject);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqAtdClick(Sender: TObject);
    procedure EdCodAtdExit(Sender: TObject);
    procedure EdCodAtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdDteAteEnter(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure DsAt2DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PedAt2CONTATOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure PedAt2RETORNOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure grAt2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grAt2Enter(Sender: TObject);
    procedure EdDteAteExit(Sender: TObject);
    procedure EdUfeAteEnter(Sender: TObject);
    procedure EdUfeAteExit(Sender: TObject);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bpsqCliClick(Sender: TObject);
    procedure EdUfeAteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdEmaCliEnter(Sender: TObject);
    procedure IncluirNovo1Click(Sender: TObject);
    procedure ExcluirAmbiente1Click(Sender: TObject);
    procedure EdEmaCliDblClick(Sender: TObject);
  private
    sEnc,pSaida,Finalizar : string;
    CodVen_Ant,CodAtd_Ant : integer;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManAt1 : TfmManAt1;

implementation

uses ShellAPI, dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManGDB, ManAte,
     PsqEmp, AuxIni, AuxPsq, PsqEst, ManAt2, ManE02, ManE03, ImpF03;

{$R *.DFM}

procedure TfmManAt1.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManAt1.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManAt1.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManAt1 := nil;
end;

procedure TfmManAt1.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';
  
  pSaida := 'Sim';
  
  Finalizar := 'N';

end;

procedure TfmManAt1.FormShow(Sender: TObject);
begin
  inherited;
  
  if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

     bPsqAtd.Visible := False;

     with PedAt2,SQL do begin

          Close;
          Text := ' Select PedAt2.*,'+
                  '        FinVen.ApeVen,'+
                  '        (Select FinVen.ApeVen From FinVen Where FinVen.CodVen = PedAt2.CodAtd) as ApeAtd'+
                  ' From PedAt2 LEFT JOIN FinVen ON (PedAt2.CodVen = FinVen.CodVen)'+
                  ' Where PedAt2.Id_PedAte = :Id_PedAte'+
                  ' Order by PedAt2.NroAt2';
          Open;

     end;
     
     end
  else
     begin

     with PedAt2,SQL do begin

          Close;
          Text := ' Select PedAt2.*,'+
                  '        FinVen.ApeVen,'+
                  '        FinAtd.ApeAtd '+
                  ' From PedAt2 LEFT JOIN FinVen ON (PedAt2.CodVen = FinVen.CodVen)'+
                  '             LEFT JOIN FinAtd ON (PedAt2.CodAtd = FinAtd.CodAtd)'+
                  ' Where PedAt2.Id_PedAte = :Id_PedAte'+
                  ' Order by PedAt2.NroAt2';
          Open;

     end;
  end;
     
  if fmManAte.Id_PedAte > 0 then begin

     PedAte.Close;
     PedAte.Params[0].AsInteger := fmManAte.Id_PedAte;
     PedAte.Open;

     with quSQL,SQL do begin

          Close;
          Text := ' Select GerEmp.ApeEmp'+
                  ' From GerEmp'+
                  ' Where GerEmp.CodEmp = :CodEmp';

          if GFlgAce = 'Sim' then Text := Text + ' and GerEmp.CodFil > '+ QuotedStr('0');

          with Params do begin

               Params[0].AsInteger := PedAteCodEmp.Value;

          end;

          Open;

          pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

     end;

     pnNomCli.Caption := PedAteNomCli.Value;
     pnUfeAte.Caption := PedAteUfeAte.Value;

     if Trim(PedAteSitAte.Value) = 'Finalizado' then
        sEnc := 'S'
     else
        begin
        
        PedAte.Edit;

        bPsqEmp.Enabled := False;

        if PedAteCodCli.Value > 0 then begin

           bPsqCli.Enabled := False;

           with quSQL,SQL do begin

                Close;
                Text := ' Select FinCli.NomCli From FinCli Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedAteCodCli.Value));
                Open;

                PedAteNomCli.Value := Trim(FieldbyName('NomCli').AsString);

           end;

           end
        else
           begin

           pnNomCli.Visible := False;
           pnUfeAte.Visible := False;

           EdCodCli.Enabled := True;
           EdNomCli.Enabled := True;
           EdUfeAte.Enabled := True;

           EdCodCli.Font.Style := [];
           EdNomCli.Font.Style := [];
           EdUfeAte.Font.Style := [];

        end;

        if EdCodCli.Enabled then
           EdCodCli.SetFocus
        else
           EdEmaCli.SetFocus;

     end;

     end
  else
     begin

     PedAte.Insert;

     if PedAteCodEmp.Value > 0 then
        EdCodCli.SetFocus
     else
        EdCodEmp.SetFocus;
        
  end;
end;

procedure TfmManAt1.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then begin

     if Trim(PedAteSitAte.Value) = 'Finalizado' then fMsg('Operação não pode ser realizada. Contato finalizado.','E');

     Finalizar := 'S';

     Close;

  end;
end;

procedure TfmManAt1.PedAteNewRecord(DataSet: TDataSet);
begin
  inherited;

  PedAte.DisableControls;

  PedAteId_PedAte.Value := 0;
  
  PedAteQtiAt2.Value := 0;
  PedAteUfeAte.Value := '';
  PedAteNomCli.Value := '';
  PedAteEmaCli.Value := '';
  PedAtePfoCli.Value := '';
  PedAteFonCli.Value := '';
  PedAteFlgAtu.Value := ' ';
  PedAteSitAte.Value := 'Nao Concluido';

  if GEmp_Id > 0 then PedAteCodEmp.Value := GEmp_Id;

  PedAte.EnableControls;

  if PedAteCodEmp.Value > 0 then begin
  
     with quSQL,SQL do begin

          Close;
          Text := ' Select GerEmp.ApeEmp'+
                  ' From GerEmp'+
                  ' Where GerEmp.CodEmp = :CodEmp';

          if GFlgAce = 'Sim' then Text := Text + ' and GerEmp.CodFil > '+ QuotedStr('0');

          with Params do begin

               Params[0].AsInteger := PedAteCodEmp.Value;

          end;

          Open;

          pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

     end;
  end;

  bPsqEmp.Enabled := True;
  bPsqCli.Enabled := True;

  EdCodEmp.Enabled := True;
  EdCodCli.Enabled := True;
     
  EdCodEmp.Font.Style := [];
  EdCodCli.Font.Style := [];
  
  if PedAteCodEmp.Value > 0 then
     EdCodCli.SetFocus
  else
     EdCodEmp.SetFocus;

end;

procedure TfmManAt1.PedAt2NewRecord(DataSet: TDataSet);
begin
  inherited;

  PedAt2.DisableControls;

  PedAt2Id_PedAt2.Value := 0;
  PedAt2Id_PedAte.Value := PedAteId_PedAte.Value;

  PedAt2DteAte.Value := Date;
  PedAt2HreAte.Value := TimeToStr(Time);
  
  if GCodVen_Id > 0 then begin

     pnApeVen.Caption := GNomVen_Id;

     EdCodVen.Text := IntToStr(GCodVen_Id);

     PedAt2CodVen.Value := GCodVen_Id;

  end;

  if PedAteCodCli.Value > 0 then begin
  
     with quSQL,SQL do begin

          Close;
          Text := ' Select FinCli.CodVen,FinCli.CofCli From FinCli Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedAteCodCli.Value));
          Open;

          if FieldbyName('CodVen').AsInteger > 0 then PedAt2CodVen.Value := FieldbyName('CodVen').AsInteger;

          if Trim(FieldbyName('CofCli').AsString) <> '' then PedAt2NomCon.Value := FieldbyName('CofCli').AsString;

     end;
  end;

  if Trim(PedParTipAtd.Value) = 'Atendente' then begin

     if GCodAtd_Id > 0 then PedAt2CodAtd.Value := GCodAtd_Id;

  end;

  PedAt2.EnableControls;

  if Trim(PedParTipAtd.Value) = 'Atendente' then begin

     if GCodAtd_Id > 0 then begin

        EdCodAtd.Text := IntToStr(GCodAtd_Id);

        PedAt2CodAtd.Value := GCodAtd_Id;

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedAt2CodAtd.Value));
             Open;

             pnApeAtd.Caption := Trim(FieldbyName('ApeAtd').AsString);

        end;
     end;
  end;

  bPsqVen.Enabled := True;

  EdCodVen.Enabled := True;

  EdCodVen.Font.Style := [];

  if GGUs_Id <> 1 then begin

     if GCodVen_Id > 0 then begin

        EdCodVen.Enabled := False;

        EdCodVen.Font.Style := [fsBold];

        bPsqVen.Enabled := False;

     end;
  end;

  if Trim(PedParTipAtd.Value) = 'Atendente' then begin

     EdCodAtd.Enabled := True;

     EdCodAtd.Font.Style := [];

     if GGUs_Id <> 1 then begin

        if GCodAtd_Id > 0 then begin

           EdCodAtd.Enabled := False;

           EdCodAtd.Font.Style := [fsBold];

           bPsqAtd.Enabled := False;

        end;
     end;
  end;   

  CodVen_Ant := PedAt2CodVen.Value;
  CodAtd_Ant := PedAt2CodAtd.Value;

  if EdCodVen.Enabled then
     EdCodVen.SetFocus
  else
     begin

     if EdCodAtd.Enabled then
        EdCodAtd.SetFocus
     else
        EdDteRet.SetFocus;

  end;
end;

procedure TfmManAt1.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if PedAte.State <> dsBrowse then begin

        if PedAteCodEmp.Value > 0 then begin

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
                Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = :CodEmp and GerEmp.CodFil > '+ QuotedStr('0');

                if GFlgAce = 'Sim' then begin

                   if GEmpLog > 0 then
                      Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
                   else
                      Text := Text + ' and GerEmp.CodFil > 0';

                end;

                with Params do begin

                     Params[0].AsInteger := PedAteCodEmp.Value;

                end;

                Open;

           end;

           if Trim( quSql.FieldbyName('ApeEmp').AsString ) <> '' then
              pnApeEmp.Caption := quSql.FieldbyName('ApeEmp').AsString
           else
              begin

              pnApeEmp.Caption := '';

              fmsgErro('Empresa Informada não Encontrada.',EdCodEmp);

           end;

           end
        else
           begin

           pnApeEmp.Caption := '';

           fmsgErro('Campo de Preenchimento Obrigátorio não Informado.',EdCodEmp);

        end;
     end;

     end
  else
     begin

     if Tecla = 'UP' then EdCodEmp.SetFocus

  end;
end;

procedure TfmManAt1.EdCodEmpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           PedAteCodEmp.Value := fmPsqEmp.CodEmp;

           EdCodEmp.Text := IntToStr(PedAteCodEmp.Value);

           pnApeEmp.Caption := fmPsqEmp.NomEmp;

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     if PedAteCodEmp.Value > 0 then EdCodCli.SetFocus;

  end;
end;

procedure TfmManAt1.EdCodEmpEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F1-Iniciais F4-Estoque';
end;

procedure TfmManAt1.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManAt1.bpsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;
     
     if fmPsqEmp.CodEmp > 0 then begin

        PedAteCodEmp.Value := fmPsqEmp.CodEmp;

        EdCodEmp.Text := IntToStr(PedAteCodEmp.Value);

        pnApeEmp.Caption := fmPsqEmp.NomEmp;

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
  
  EdCodEmp.SetFocus;

end;

procedure TfmManAt1.EdCodCliEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque';
end;

procedure TfmManAt1.EdCodCliExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not EdCodEmp.Focused then
        saida := True
     else
        saida := False;

     if saida then SaiCliente

  end;
end;

procedure TfmManAt1.bpsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';
     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        PedAt2CodVen.Value := fmAuxIni.CodVen;

        pnApeVen.Caption := fmAuxIni.NomVen;

        EdCodVen.Text := IntToStr(PedAt2CodVen.Value);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdCodVen.SetFocus;

end;

procedure TfmManAt1.EdCodVenExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdEmaCli.Focused) and
        (not EdFonCli.Focused) and
        (not EdPfoCli.Focused) and (not grAt2.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedAte.State <> dsBrowse then begin

           if PedAt2CodVen.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select FinVen.ApeVen'+
                           ' From FinVen'+
                           ' Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedAt2CodVen.Value));
                   Open;

              end;

              if Trim( quSql.FieldbyName('ApeVen').AsString ) <> '' then
                 pnApeVen.Caption := quSql.FieldbyName('ApeVen').AsString
              else
                 begin

                 pnApeVen.Caption := '';

                 fmsgErro('Vendedor informado não localizado.',EdCodVen);

              end;

              end
           else
              begin

              pnApeVen.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodVen);

           end;
        end;
     end;

     end
  else
     begin

     if Tecla = 'UP' then begin

        if PedAteQtiAt2.Value > 0 then begin

           if PedAt2.State <> dsBrowse then
              PedAt2.CancelUpdates
           else
              begin

              if not PedAt2.BOF then PedAt2.Prior;

           end;

           grAt2.SetFocus;

           end
        else
           begin

           if EdCodVen.Enabled then
              EdCodVen.SetFocus
           else
              begin

              if EdCodAtd.Enabled then
                 EdCodAtd.SetFocus
              else
                 EdDteAte.SetFocus;

           end;
        end;
     end;
  end;
end;

procedure TfmManAt1.EdCodVenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';
        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           PedAt2CodVen.Value := fmAuxIni.CodVen;

           pnApeVen.Caption := fmAuxIni.NomVen;

           EdCodVen.Text := IntToStr(PedAt2CodVen.Value);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if PedAt2CodVen.Value > 0 then begin

        if EdCodAtd.Enabled then
           EdCodAtd.SetFocus
        else
           EdDteAte.SetFocus;
           
        end
     else
        EdCodVen.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';
        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           PedAt2CodVen.Value := fmAuxPsq.CodVen;

           pnApeVen.Caption := fmAuxPsq.NomVen;

           EdCodVen.Text := IntToStr(PedAt2CodVen.Value);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if PedAt2CodVen.Value > 0 then begin

        if EdCodAtd.Enabled then
           EdCodAtd.SetFocus
        else
           EdDteAte.SetFocus;
           
        end
     else
        EdCodVen.SetFocus;

  end;
end;

procedure TfmManAt1.bPsqAtdClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Atendentes';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodAtd > 0 then begin

        PedAt2CodAtd.Value := fmAuxIni.CodAtd;

        pnApeAtd.Caption := fmAuxIni.NomAtd;

        EdCodAtd.Text := IntToStr(PedAt2CodAtd.Value);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdCodAtd.SetFocus;

end;

procedure TfmManAt1.EdCodAtdExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdEmaCli.Focused) and
        (not EdFonCli.Focused) and
        (not EdPfoCli.Focused) and (not grAt2.Focused) and (not EdCodVen.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedAt2CodAtd.Value > 0 then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select FinAtd.ApeAtd'+
                        ' From FinAtd'+
                        ' Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedAt2CodAtd.Value));
                Open;

           end;

           if Trim( quSql.FieldbyName('ApeAtd').AsString ) <> '' then
              pnApeAtd.Caption := Trim(quSql.FieldbyName('ApeAtd').AsString)
           else
              begin

              pnApeAtd.Caption := '';

              fmsgErro('Atendente informado não localizado.',EdCodAtd);

           end;

           end
        else
           pnApeAtd.Caption := '';

     end;

     end
  else
     begin

     if (Tecla = 'UP') and (not EdCodVen.Enabled) then begin
     
        if PedAteQtiAt2.Value > 0 then begin

           if PedAt2.State <> dsBrowse then
              PedAt2.CancelUpdates
           else
              begin

              if not PedAt2.BOF then PedAt2.Prior;

           end;

           grAt2.SetFocus;

           end
        else
           begin

           if EdCodVen.Enabled then
              EdCodVen.SetFocus
           else
              begin

              if EdCodAtd.Enabled then
                 EdCodAtd.SetFocus
              else
                 EdDteAte.SetFocus;

           end;
        end;
     end;
  end;
end;

procedure TfmManAt1.EdCodAtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Atendentes';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodAtd > 0 then begin

           PedAt2CodAtd.Value := fmAuxIni.CodAtd;

           pnApeAtd.Caption := fmAuxIni.NomAtd;

           EdCodAtd.Text := IntToStr(PedAt2CodAtd.Value);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if PedAt2CodAtd.Value > 0 then EdDteAte.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Atendentes';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodAtd > 0 then begin

           PedAt2CodAtd.Value := fmAuxPsq.CodAtd;

           pnApeAtd.Caption := fmAuxPsq.NomAtd;

           EdCodAtd.Text := IntToStr(PedAt2CodAtd.Value);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if PedAt2CodAtd.Value > 0 then EdDteAte.SetFocus;

  end;
end;

procedure TfmManAt1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i         : Integer;
  Found     : integer;
  Id_PedAt2 : integer;
begin
  inherited;
  if key = 115 then begin // F4 - Estoque //

     try

        fmPsqEst := TfmPsqEst.Create(Self);

        fmPsqEst.CliTab := Trim(PedAteCliTab.Value);

        fmPsqEst.sCodClp := '1';

        fmPsqEst.ShowModal;

     finally   

        FreeAndNil(fmPsqEst);

     end;
  end;

  if key = 116 then begin // F5 - Cotação //

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManAt2 then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Já existe uma cotação em andamento.','E');

        fmManAt2.WindowState := wsNormal;
        fmManAt2.BringToFront;

        end
     else
        begin

        if PedAteId_PedCta.Value > 0 then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select PedCta.SitCta From PedCta Where PedCta.Id_PedCta = '+ QuotedStr(IntToStr(PedAteId_PedCta.Value));
                Open;
                
           end;

           if Trim(quSQL.FieldbyName('SitCta').AsString) = 'Concluida' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Update PedCta Set SitCta = '+ QuotedStr('Processo de Alteracao') +' Where PedCta.Id_PedCta = '+ QuotedStr(IntToStr(PedAteId_PedCta.Value));
                   ExecSQL;

              end;
           end;
        end;

        fmManAt2 := TfmManAt2.Create(Self);
        fmManAt2.Show;

     end;
  end;

  if key = 117 then begin  // F6 - Imprimir cotação //

     if PedAteId_PedAte.Value > 0 then begin

        if fMsg('Confirma impressão da via interna da cotação ?','O') then begin

           try

              fmManE02 := TfmManE02.Create(Self);

              fmManE02.PedCta.Close;
              fmManE02.PedCta.Params[0].AsInteger := PedAteId_PedCta.Value;
              fmManE02.PedCta.Open;

              fmManE02.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE02);

           end;
        end;

        if fMsg('Confirma impressão da via do cliente da cotação ?','O') then begin

           try

              fmManE03 := TfmManE03.Create(Self);

              fmManE03.PedCta.Close;
              fmManE03.PedCta.Params[0].AsInteger := PedAteId_PedCta.Value;
              fmManE03.PedCta.Open;

              fmManE03.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE03);

           end;
        end;

        if PedParFlgCot.Value = 'Sim' then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select PedCta.QtiCt4'+
                        ' From PedCta'+
                        ' Where PedCta.Id_PedCta = '+ QuotedStr(IntToStr(PedAteId_PedCta.Value));
                Open;        

           end;

           if quSQL.FieldbyName('QtiCt4').AsInteger > 0 then begin

              if fMsg('Confirma impressão da via de cotação para os fornecedores ?','O') then begin

                 try

                    fmImpF03 := TfmImpF03.Create(Self);

                    fmImpF03.Id_PedCta := PedAteId_PedCta.Value;

                    fmImpF03.PedCt4.Close;
                    fmImpF03.PedCt4.Params[0].AsInteger := PedAteId_PedCta.Value;
                    fmImpF03.PedCt4.Open;

                    fmImpF03.ShowModal;

                 finally

                    FreeAndNil(fmImpF03);

                 end;
              end;
           end;
        end;
     end;   
  end;

  if key = 27 then begin

     if PedAte.State <> dsBrowse then
        Close
     else
        begin

        if PedAt2.State <> dsBrowse then begin

           PedAt2.CancelUpdates;

           grAt2.SetFocus;

           end
        else
           Close;

     end;
  end;

  if key = 123 then begin // F12-Finalizar Pedido //

     if PedAteQtiAt2.Value > 0 then begin

        if grAt2.Focused then begin

           if fMsg('Confirma informações ?','O') then begin

              Id_PedAt2 := PedAt2Id_PedAt2.Value;

              PedAte.Edit;

              PedAteSitAte.Value := 'Em Andamento';

              with PedAte do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      Finalizar := 'N';

                      if PedAte.State <> dsBrowse then PedAte.CancelUpdates;

                      grAt2.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              PedAte.Close;
              PedAte.Open;

              PedAt2.Close;
              PedAt2.Open;

              PedAt2.Locate('Id_PedAt2',Id_PedAt2,[LoPartialKey]);

              Finalizar := 'S';

              if fMsg('Confirma impressão do controle do contato registrado com o cliente ?','O') then begin



              end;

              if Finalizar = 'S' then begin

                 Finalizar := 'N';

                 EdCodEmp.Clear;
                 EdCodCli.Clear;
                 EdNomCli.Clear;
                 EdUfeAte.Clear;

                 pnId_PedAte.Caption := '0';

                 pnApeEmp.Caption := '';
                 pnNomCli.Caption := '';
                 pnUfeAte.Caption := '';

                 PedAte.Close;
                 PedAte.Params[0].AsInteger := 0;
                 PedAte.Open;

                 PedAte.Insert;

                 if PedAteCodEmp.Value > 0 then
                    EdCodCli.SetFocus
                 else
                    EdCodEmp.SetFocus;

              end;

              end
           else
              grAt2.SetFocus;
              
        end;
     end;
  end;
end;

procedure TfmManAt1.EdDteAteEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F4-Estoque';
end;

procedure TfmManAt1.Panel2Exit(Sender: TObject);
var
  NroAt2 : integer;
begin
  inherited;
  if PedAt2.State <> dsBrowse then begin

     PedAt2Ob1Ate.Value := Trim(PedAt2Ob1Ate.Value);
     PedAt2Ob2Ate.Value := Trim(PedAt2Ob2Ate.Value);
     PedAt2Ob3Ate.Value := Trim(PedAt2Ob3Ate.Value);
     PedAt2Ob4Ate.Value := Trim(PedAt2Ob4Ate.Value);
     PedAt2Ob5Ate.Value := Trim(PedAt2Ob5Ate.Value);
     PedAt2Ob6Ate.Value := Trim(PedAt2Ob6Ate.Value);
     PedAt2Ob7Ate.Value := Trim(PedAt2Ob7Ate.Value);
     PedAt2Ob8Ate.Value := Trim(PedAt2Ob8Ate.Value);
     PedAt2Ob9Ate.Value := Trim(PedAt2Ob9Ate.Value);

     if PedAt2DteAte.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdDteAte);

     if PedAt2DteRet.Value > 0 then begin

        if PedAt2DteRet.Value < PedAt2DteAte.Value then fmsgErro('Data informada para o retorno inferior a data do contato.',EdDteRet);

     end;
     
     if PedAt2.State = dsInsert then begin

        if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

           if PedAteCodCli.Value > 0 then begin

              if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then begin

                 if GCodVen_Id > 0 then begin

                    if PedAteCodCli.Value > 0 then begin

                       with quSQL,SQL do begin

                            Close;
                            Text := ' Select FinCli.CodVen From FinCli Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedAteCodCli.Value));
                            Open;

                       end;                                             
                                                        
                       if quSQL.FieldbyName('CodVen').AsInteger <> GCodVen_Id then begin

                          PedAt2CodAtd.Value := GCodVen_Id;

                          if PedAt2CodAtd.Value = 0 then begin

                             if EdCodAtd.Enabled then
                                fmsgErro('Atendente não Encontrado para a Cotação.',EdCodAtd)
                             else
                                begin

                                if EdCodVen.Enabled then
                                   fmsgErro('Atendente não Encontrado para a Cotação.',EdCodVen)
                                else
                                   fmsgErro('Atendente não Encontrado para a Cotação.',EdDteAte);

                             end;
                          end;
                       end;
                    end;   
                 end;
              end;
           end;
        end;
     
        with PedAt2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedAt2.State = dsBrowse then PedAt2.Edit;

                if EdCodVen.Enabled then
                   EdCodVen.SetFocus
                else
                   begin

                   if EdCodAtd.Enabled then
                      EdCodAtd.SetFocus
                   else
                      EdDteRet.SetFocus;

                end;
                      
                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedAt2.Close;
        PedAt2.Open;

        PedAte.Close;
        PedAte.Open;

        PedAt2.Append;

        if EdCodVen.Enabled then
           EdCodVen.SetFocus
        else
           begin

           if EdCodAtd.Enabled then
              EdCodAtd.SetFocus
           else
              EdDteRet.SetFocus;

        end;

        end
     else
        begin

        NroAt2 := PedAt2NroAt2.Value;

        with PedAt2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedAt2.State = dsBrowse then PedAt2.Edit;

                if EdCodVen.Enabled then
                   EdCodVen.SetFocus
                else
                   begin

                   if EdCodAtd.Enabled then
                      EdCodAtd.SetFocus
                   else
                      EdDteRet.SetFocus;

                end;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedAt2.Close;
        PedAt2.Open;

        PedAte.Close;
        PedAte.Open;

        PedAt2.Locate('Id_PedAte;NroAt2',VarArrayOf([PedAteId_PedAte.Value,NroAt2]),[LoPartialKey]);

        if PedAt2NroAt2.Value = PedAteQtiAt2.Value then
           PedAt2.Append
        else
           begin

           PedAt2.Next;

           bPsqVen.Enabled := False;
           bPsqAtd.Enabled := False;

           EdCodVen.Enabled := False;
           EdCodAtd.Enabled := False;

           EdCodVen.Font.Style := [fsBold];
           EdCodAtd.Font.Style := [fsBold];

           grAt2.SetFocus;

        end;
     end;

     end
  else
     begin

     bPsqVen.Enabled := False;
     bPsqAtd.Enabled := False;

     EdCodVen.Enabled := False;
     EdCodAtd.Enabled := False;

     EdCodVen.Font.Style := [fsBold];
     EdCodAtd.Font.Style := [fsBold];
     
     grAt2.SetFocus;

  end;
end;

procedure TfmManAt1.Panel1Exit(Sender: TObject);
var
  SeqAte,Status : string;
begin
  inherited;
  if pSaida = 'Sim' then begin

     if PedAte.State <> dsBrowse then begin

        if PedAteCodEmp.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodEmp);

        if PedAteCodCli.Value = 0 then begin

           if Trim(PedAteNomCli.Value) = '' then
              fmsgErro('Campo de preenchimento obrigatório não informado. Nome do Cliente.',EdCodCli);

        end;
        
        if Trim(PedAteNomCli.Value) = '' then begin

           if EdUfeAte.Enabled then
              fmsgErro('Campo de preenchimento obrigatório não informado. UF do Cliente.',EdUfeAte)
           else
              fmsgErro('Campo de preenchimento obrigatório não informado. UF do Cliente.',EdCodCli);

        end;
              
        Status := 'dsEdit';

        if PedAte.State = dsInsert then begin

           Status := 'dsInsert';

           Randomize;
           SeqAte := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                     copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                     copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                     copy(TimeToStr(Time),1,2)+
                     copy(TimeToStr(Time),4,2)+
                     copy(TimeToStr(Time),7,2)+
                     FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
                     FNumZeros(Trim( IntToStr(Random(50000)) ),5);

           PedAteSeqAte.Value := SeqAte;

           end
        else
           SeqAte := PedAteSeqAte.Value;

        if Trim(SeqAte) = '' then begin

           Randomize;
           SeqAte := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                     copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                     copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                     copy(TimeToStr(Time),1,2)+
                     copy(TimeToStr(Time),4,2)+
                     copy(TimeToStr(Time),7,2)+
                     FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
                     FNumZeros(Trim( IntToStr(Random(50000)) ),5);

           PedAteSeqAte.Value := SeqAte;

        end;

        with PedAte do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedAte.State = dsBrowse then PedAte.Edit;

                if EdCodEmp.Enabled then
                   EdCodEmp.SetFocus
                else
                   EdCodCli.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select PedAte.Id_PedAte From PedAte Where PedAte.SeqAte = '+ QuotedStr(SeqAte);
             Open;

        end;

        PedAte.Close;
        PedAte.Params[0].AsInteger := quSQL.FieldbyName('Id_PedAte').AsInteger;
        PedAte.Open;

        PedAt2.Close;
        PedAt2.Open;

        if Status = 'dsInsert' then begin

           with fmManAte.PedAte,SQL do begin

                Close;
                Text := fmManAte.sBase +
                        ' Where PedAte.Id_PedAte = :Id_PedAte';

                with Params do begin

                     Params[0].AsInteger := PedAteId_PedAte.Value;

                end;

                Open;

           end;
        end;

        bPsqEmp.Enabled := False;

        EdCodEmp.Enabled := False;

        EdCodEmp.Font.Style := [fsBold];

        if PedAteCodCli.Value > 0 then begin

           bPsqCli.Enabled := False;

           EdCodCli.Enabled := False;
           
           EdCodCli.Font.Style := [fsBold];

           if EdUfeAte.Enabled then begin

              pnUfeAte.Visible := True;

              EdUfeAte.Enabled := False;
              
              EdUfeAte.Font.Style := [fsBold];

           end;           
        end;

        GEmail := Trim(PedAteEmaCli.Value);

        if PedAteQtiAt2.Value = 0 then
           PedAt2.Append
        else
           grAt2.SetFocus;

     end;
  end;   
end;

procedure TfmManAt1.DsAt2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnId_PedAte.Caption := IntToStr(PedAteId_PedAte.Value);

  if PedAteId_PedCta.Value > 0 then begin

     pnId_PedCta.Caption := IntToStr(PedAteId_PedCta.Value);

     GAssunto := 'Cotação no. '+IntToStr(PedAteId_PedCta.Value);

     end
  else
     pnId_PedCta.Caption := '0';
     
  if PedAt2DteRet.Value > 0 then
     pnDiaSemana.Caption := fDSemana(PedAt2DteRet.Value)
  else
     pnDiaSemana.Caption := '';

  if CodVen_Ant <> PedAt2CodVen.Value then begin

     CodVen_Ant := PedAt2CodVen.Value;
     
     with quSQL,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen'+
                  ' From FinVen'+
                  ' Where FinVen.CodVen = '+ QuotedStr(IntToStr(CodVen_Ant));
          Open;

          pnApeVen.Caption := FieldbyName('ApeVen').AsString;

     end;
  end;
  
  if CodAtd_Ant <> PedAt2CodAtd.Value then begin

     CodAtd_Ant := PedAt2CodAtd.Value;

     if Trim(PedParTipAtd.Value) = 'Atendente' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(CodAtd_Ant));
             Open;

             pnApeAtd.Caption := Trim(FieldbyName('ApeAtd').AsString);

        end;

        end
     else
        begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(CodAtd_Ant));
             Open;

             pnApeAtd.Caption := FieldbyName('ApeVen').AsString;

        end;
     end;
  end;
end;

procedure TfmManAt1.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Finalizar = 'N' then begin

     if fMsg('Deseja realmente abandonar a operação ?','O') then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManAt2 then Found := i;

        end;

        if Found >= 0 then
           fmsgErro('Existem Cotações em Andamento. Por Favor Feche o Formulario.',Nil)
        else
           begin

           if PedAte.State <> dsBrowse then PedAte.CancelUpdates;
           if PedAt2.State <> dsBrowse then PedAt2.CancelUpdates;

           fmManAte.PedAte.Close;
           fmManAte.PedAte.Open;

           fmManAte.PedAt2.Close;
           fmManAte.PedAt2.Open;

           Action := CaFree;

        end;
        
        end
     else
        begin

        if PedAteId_PedAte.Value = 0 then begin

           if PedAte.State = dsBrowse then PedAte.Insert;

           end
        else
           begin

           if PedAteQtiAt2.Value = 0 then
              PedAt2.Append
           else
              grAt2.SetFocus;

        end;

        Abort;
        
     end;

     end
  else
     begin

     fmManAte.PedAte.Close;
     fmManAte.PedAte.Open;

     fmManAte.PedAt2.Close;
     fmManAte.PedAt2.Open;

     Action := CaFree;

  end;
end;

procedure TfmManAt1.PedAt2CONTATOGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if PedAt2DteAte.Value > 0 then
     Text := FormatDateTime('dd/mm/yyyy',PedAt2DteAte.Value)+ ' ' +PedAt2HreAte.Value
  else
     Text := '';
end;

procedure TfmManAt1.PedAt2RETORNOGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if PedAt2DteRet.Value > 0 then
     Text := FormatDateTime('dd/mm/yyyy',PedAt2DteRet.Value)+ ' ' +PedAt2HreRet.Value
  else
     Text := '';
end;

procedure TfmManAt1.grAt2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NroAt2 : integer;  
begin
  inherited;  
  if key = 13 then begin // Tecla - ENTER //

     if PedAt2Id_PedAt2.Value > 0 then begin

        PedAt2.Edit;

        EdDteRet.SetFocus;
        
     end;
  end;

  if key = 40 then begin // Tecla - Seta para Baixo //

     if PedAt2NroAt2.Value = PedAteQtiAt2.Value then PedAt2.Append;

  end;

  if key = 46 then begin // Tecla - DEL //

     if PedAt2Id_PedAt2.Value > 0 then begin

        NroAt2 := PedAt2NroAt2.Value;

        PedAt2.Delete;

        with PedAt2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedAt2.State <> dsBrowse then PedAt2.CancelUpdates;

                grAt2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedAt2.Close;
        PedAt2.Open;

        PedAte.Close;
        PedAte.Open;

        if NroAt2 < PedAteQtiAt2.Value then
           PedAt2.Locate('Id_PedAte;NroAt2',VarArrayOf([PedAteId_PedAte.Value,NroAt2]),[LoPartialKey])
        else
           begin

           if PedAteQtiAt2.Value = 0 then
              PedAt2.Append
           else
              PedAt2.Last;

        end;
     end;
  end;
end;

procedure TfmManAt1.grAt2Enter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Seta p/cima-Anterior Seta p/Baixo-Próximo/Novo DEL-Excluir F4-Estoque F5-Cotação F6-Imprimir cotação';
end;

procedure TfmManAt1.EdDteAteExit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then begin

     if PedAteQtiAt2.Value > 0 then begin

        if PedAt2.State <> dsBrowse then
           PedAt2.CancelUpdates
        else
           begin

           if not PedAt2.BOF then PedAt2.Prior;

        end;

        grAt2.SetFocus;

        end
     else
        begin

        if EdCodVen.Enabled then
           EdCodVen.SetFocus
        else
           begin

           if EdCodAtd.Enabled then
              EdCodAtd.SetFocus
           else
              EdDteAte.SetFocus;

        end;
     end;
  end;
end;

procedure TfmManAt1.EdUfeAteEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F1-Iniciais F4-Estoque';
end;

procedure TfmManAt1.EdUfeAteExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodCli.Focused) and
        (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedAte.State <> dsBrowse then begin

           if Trim(PedAteUfeAte.Value) <> '' then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select GerUfe.SigUfe,'+
                           '        GerUfe.NomUfe '+
                           ' From GerUfe'+
                           ' Where GerUfe.SigUfe = '+ QuotedStr(PedAteUfeAte.Value);
                   Open;

              end;

              if quSql.FieldbyName('SigUfe').AsString <> PedAteUfeAte.Value then
                 fmsgErro('Destino informado não localizado.',EdUfeAte);

              end
           else
              fmsgErro('Campo de preenchimento obrigátorio não informado.',EdUfeAte);

        end;
     end;
  end;
end;

procedure TfmManAt1.EdCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.sCodVen_Id := GCodVen_Id;

        fmAuxIni.sGUs_Id := GGUs_Id;

        fmAuxIni.sCodAtd_Id := GCodAtd_Id;

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           PedAteCodCli.Value := fmAuxIni.CodCli;

           EdCodCli.Text := IntToStr(PedAteCodCli.Value);

           pnNomCli.Caption := fmAuxIni.NomCli;
           pnUfeAte.Caption := fmAuxIni.UffCli;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if PedAteCodCli.Value > 0 then
        SaiCliente
     else
        EdCodCli.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.sCodVen_Id := GCodVen_Id;

        fmAuxPsq.sGUs_Id := GGUs_Id;

        fmAuxPsq.sCodAtd_Id := GCodAtd_Id;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           PedAteCodCli.Value := fmAuxPsq.CodCli;
           PedAteUfeAte.Value := Trim(fmAuxPsq.UffCli);

           EdCodCli.Text := IntToStr(PedAteCodCli.Value);

           pnNomCli.Caption := fmAuxPsq.NomCli;
           pnUfeAte.Caption := fmAuxPsq.UffCli;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if PedAteCodCli.Value > 0 then
        SaiCliente
     else
        EdCodCli.SetFocus;

  end;
end;

procedure TfmManAt1.saicliente;
begin
  if PedAte.State <> dsBrowse then begin

     if PedAteCodCli.Value > 0 then begin

        pnNomCli.Visible := True;

        EdNomCli.Enabled := False;

        with quSql,SQL do begin

             Close;
             Text := ' Select FinCli.CodCli,'+
                     '        FinCli.NomCli,'+
                     '        FinCli.Pt1Cli,'+
                     '        FinCli.Fo1Cli,'+
                     '        FinCli.UffCli,'+
                     '        FinCli.Em1Cli '+
                     ' From FinCli'+
                     ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedAteCodCli.Value));
             Open;

        end;

        if quSql.FieldbyName('CodCli').AsInteger = PedAteCodCli.Value then begin

           if PedAte.State <> dsBrowse then begin

              PedAteNomCli.Value := Trim(quSQL.FieldbyName('NomCli').AsString);
              PedAtePfoCli.Value := Trim(quSQL.FieldbyName('Pt1Cli').AsString);
              PedAteFonCli.Value := Trim(quSQL.FieldbyName('Fo1Cli').AsString);
              PedAteEmaCli.Value := Trim(quSQL.FieldbyName('Em1Cli').AsString);
              PedAteUfeAte.Value := Trim(quSQL.FieldbyName('UffCli').AsString);

           end;

           pnNomCli.Caption := PedAteNomCli.Value;

           with quSQL,SQL do begin

                Close;
                Text := ' Select First 1 PedAte.Id_PedAte'+
                        ' From PedAte'+
                        ' Where PedAte.CodCli =  '+ QuotedStr(IntToStr(PedAteCodCli.Value)) +
                        '   and PedAte.SitAte <> '+ QuotedStr('Finalizado');
                Open;        

           end;

           if quSQL.FieldbyName('Id_PedAte').AsInteger > 0 then begin

              if fMsg('Cliente informado com registro de contato(s) em andamento. Contato em andamento de no. '+ IntToStr(quSQL.FieldbyName('Id_PedAte').AsInteger) + '. Confirma novo contato ?','O') then
              else
                 EdCodCli.SetFocus;

           end;

           end
        else
           begin

           pnNomCli.Caption := '';

           fmsgErro('Cliente informado não localizado.',EdCodCli);

        end;

        end
     else
        begin

        pnNomCli.Caption := PedAteNomCli.Value;

        EdNomCli.Text := PedAteNomCli.Value;
        EdUfeAte.Text := PedAteUfeAte.Value;

        pnNomCli.Visible := False;
        pnUfeAte.Visible := False;

        EdNomCli.Enabled := True;
        EdUfeAte.Enabled := True;

        EdNomCli.SetFocus;

     end;
  end;
end;

procedure TfmManAt1.bpsqCliClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'C';

     fmAuxIni.sCodVen_Id := GCodVen_Id;

     fmAuxIni.sGUs_Id := GGUs_Id;

     fmAuxIni.sCodAtd_Id := GCodAtd_Id;

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCli > 0 then begin

        PedAteCodCli.Value := fmAuxIni.CodCli;
        PedAteUfeAte.Value := Trim(fmAuxIni.UffCli);

        EdCodCli.Text := IntToStr(PedAteCodCli.Value);

        EdUfeAte.Text := PedAteUfeAte.Value;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if PedAteCodCli.Value > 0 then
     SaiCliente
  else
     EdCodCli.SetFocus;

end;

procedure TfmManAt1.EdUfeAteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'UF';

        fmAuxIni.ShowModal;

        if Trim(fmAuxIni.SigUfe) <> '' then begin

           PedAteUfeAte.Value := fmAuxIni.SigUfe;

           EdUfeAte.Text := PedAteUfeAte.Value;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim(PedAteUfeAte.Value) <> '' then
        EdEmaCli.SetFocus
     else
        EdUfeAte.SetFocus;

  end;
end;

procedure TfmManAt1.EdEmaCliEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F4-Estoque';
end;

procedure TfmManAt1.IncluirNovo1Click(Sender: TObject);
begin
  inherited;
  if PedAteId_PedAte.Value > 0 then PedAt2.Append;
end;

procedure TfmManAt1.ExcluirAmbiente1Click(Sender: TObject);
var
  NroAt2 : integer;
begin
  inherited;
  if PedAt2Id_PedAt2.Value > 0 then begin

     NroAt2 := PedAt2NroAt2.Value;

     PedAt2.Delete;

     with PedAt2 do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if PedAt2.State <> dsBrowse then PedAt2.CancelUpdates;

             grAt2.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     PedAt2.Close;
     PedAt2.Open;

     PedAte.Close;
     PedAte.Open;

     if NroAt2 < PedAteQtiAt2.Value then
        PedAt2.Locate('Id_PedAte;NroAt2',VarArrayOf([PedAteId_PedAte.Value,NroAt2]),[LoPartialKey])
     else
        begin

        if PedAteQtiAt2.Value = 0 then
           PedAt2.Append
        else
           PedAt2.Last;

     end;
  end;
end;

procedure TfmManAt1.EdEmaCliDblClick(Sender: TObject);
var
  cemail : string;
begin
  inherited;
  if Trim(PedAteEmaCli.Value) <> '' then begin
  
     if Pos('@', EdEmaCli.Text)= 0 then
        fMsgErro('E-mail incorreto',EdEmaCli)
     else
        begin

        cEMail := 'mailto:' + Trim(EdEmaCli.Text) + ' <' + Trim( EdEmaCli.Text ) + '>';
        ShellExecute(Handle, 'Open', PChar(cEMail), Nil, '', sw_ShowNormal);

     end;
  end;   
end;

end.
