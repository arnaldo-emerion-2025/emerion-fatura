unit ManAte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, RDprint, dxDBELib, dxColorPickEdit, dxColorCurrencyEdit,
  dxColorEdit, dxColorDateEdit, dxDBColorEdit;

type
  TfmManAte = class(TfmPadrao)
    PedAte: TwwQuery;
    DsAte: TwwDataSource;
    quSql: TwwQuery;
    bExcluir: TSpeedButton;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    PedAt2: TwwQuery;
    UpAte: TUpdateSQL;
    DsAt2: TwwDataSource;
    quSQL1: TwwQuery;
    PedAteID_PEDATE: TIntegerField;
    PedAteCODCLI: TIntegerField;
    PedAteNOMCLI: TStringField;
    PedAtePFOCLI: TStringField;
    PedAteFONCLI: TStringField;
    PedAteSITATE: TStringField;
    PedAteTELEFONE: TStringField;
    PanelConsulta: TPanel;
    PaintBox: TPaintBox;
    Label16: TLabel;
    EdPsqId_PedAte: TdxColorEdit;
    Label15: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    EdPsqApeEmp: TdxColorEdit;
    Label20: TLabel;
    EdPsqCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    EdPsqNomCli: TdxColorEdit;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    bPsqVen: TSpeedButton;
    EdPsqApeVen: TdxColorEdit;
    Label5: TLabel;
    EdPsqCodAtd: TdxColorEdit;
    bPsqAtd: TSpeedButton;
    EdPsqApeAtd: TdxColorEdit;
    Label17: TLabel;
    EdPsqDteAte1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteAte2: TdxColorDateEdit;
    Label28: TLabel;
    EdPsqDteRet1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteRet2: TdxColorDateEdit;
    Label1: TLabel;
    EdPsqSitAte: TdxColorPickEdit;
    bSelecionar: TBitBtn;
    Panel4: TPanel;
    panelListagem: TPanel;
    Panel3: TPanel;
    grAte1: TdxDBGraphicEdit;
    grAte: ThGrid;
    ImageDown: TImage;
    ImageUp: TImage;
    pnSitAte: TPanel;
    pnContato: TPanel;
    grAt21: TdxDBGraphicEdit;
    grAt2: ThGrid;
    PedPar: TwwQuery;
    PedParTIPATD: TStringField;
    PedAt2DTEATE: TDateTimeField;
    PedAt2HREATE: TStringField;
    PedAt2CODATD: TIntegerField;
    PedAt2DTERET: TDateTimeField;
    PedAt2HRERET: TStringField;
    PedAt2OB1ATE: TStringField;
    PedAt2OB2ATE: TStringField;
    PedAt2OB3ATE: TStringField;
    PedAt2OB4ATE: TStringField;
    PedAt2OB5ATE: TStringField;
    PedAt2OB6ATE: TStringField;
    PedAt2OB7ATE: TStringField;
    PedAt2OB8ATE: TStringField;
    PedAt2OB9ATE: TStringField;
    PedAt2APEATD: TStringField;
    EdOb1Ate: TdxDBColorEdit;
    EdOb2Ate: TdxDBColorEdit;
    EdOb3Ate: TdxDBColorEdit;
    EdOb4Ate: TdxDBColorEdit;
    EdOb5Ate: TdxDBColorEdit;
    PaintBox1: TPaintBox;
    Label2: TLabel;
    PedAt2CODVEN: TIntegerField;
    PedAt2APEVEN: TStringField;
    PedAt2RETORNO: TStringField;
    PedAt2CONTATO: TStringField;
    PedAt2ID_PEDAT2: TIntegerField;
    PedAt2NOMCON: TStringField;
    PedAteID_PEDCTA: TIntegerField;
    PedAteDTEULT: TDateTimeField;
    PedAteHREULT: TStringField;
    PedAteEMACLI: TStringField;
    PedParFLGCOT: TStringField;
    pnQtdReg: TPanel;
    procedure CountRegistros;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqId_PedAteKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel3Click(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PedAt2CONTATOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure PedAt2RETORNOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqId_PedAteExit(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqEmpClick(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqCliClick(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqCodAtdExit(Sender: TObject);
    procedure EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqAtdClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure PedAteTELEFONEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DsAteDataChange(Sender: TObject; Field: TField);
  private
    Permissao : string;
    {Private declarations}
  public
    {Public declarations}
    Id_PedAte : integer;
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManAte: TfmManAte;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, Bbacesso, ManGDB, PsqEmp,
     ManPri, AuxPsq, AuxIni, PsqEst, ManAt1, ManCat, ManE02, ManE03, ImpF03,
  PsqFin;

{$R *.DFM}

procedure TfmManAte.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select PedAte.Id_PedAte,'+
           '        PedAte.CodCli,'+
           '        PedAte.NomCli,'+
           '        PedAte.PfoCli,'+
           '        PedAte.FonCli,'+
           '        PedAte.Id_PedCta,'+
           '        PedAte.DteUlt,'+
           '        PedAte.HreUlt,'+
           '        PedAte.EmaCli,'+
           '        PedAte.SitAte '+
           ' From PedAte';
end;

procedure TfmManAte.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

  if key = 117 then bExcluir.OnClick(Sender);

  if key = 121 then begin
  
     if Trim(PedAteSitAte.Value) = 'Finalizado' then begin

        try

           fmPsqFin := TfmPsqFin.Create(Self);

           fmPsqFin.PedAte.Close;
           fmPsqFin.PedAte.Params[0].AsInteger := PedAteId_PedAte.Value;
           fmPsqFin.PedAte.Open;

           fmPsqFin.ShowModal;

        finally

           FreeAndNil(fmPsqFin);

        end;
     end;   
  end;
end;

procedure TfmManAte.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManAte.EdPsqId_PedAteKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManAte.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #5 then begin {Estoque}

     try

        fmPsqEst := TfmPsqEst.Create(Self);

        fmPsqEst.sEntr := 'N';

        fmPsqEst.sCodClp := '1';

        fmPsqEst.ShowModal;

     finally

        FreeAndNil(fmPsqEst);

     end;
  end;
end;

procedure TfmManAte.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManAte.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManAte := nil;
end;

procedure TfmManAte.Panel3Click(Sender: TObject);
begin
  inherited;
  if PanelConsulta.Visible = False then begin
     PanelConsulta.Visible:= True;
     ImageUp.Visible:= True;
     ImageDown.Visible:= False;
     grAt21.Height := grAt2.Height - 49;
     grAt2.Height := grAt2.Height - 55;
     panelListagem.Height := panelListagem.Height - 190;
     end
  else
     begin
     PanelConsulta.Visible:= False;
     ImageUp.Visible:= False;
     ImageDown.Visible:= True;
     grAt21.Height := grAt2.Height + 59;
     grAt2.Height := grAt2.Height + 53;
     panelListagem.Height := panelListagem.Height + 190;
  end;
end;

procedure TfmManAte.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManAte.FormShow(Sender: TObject);
begin
  inherited;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then
     Permissao := fAcesso('PED0201')
  else
     Permissao := 'SSSSS';

  if copy(Permissao,1,1) = 'N' then bIncluir.Enabled := False;
  if copy(Permissao,2,1) = 'N' then bEditar.Enabled := False;
  if copy(Permissao,3,1) = 'N' then bExcluir.Enabled := False;

  if GCodVen_Id > 0 then begin

     sOrdem := ' Order by PedAte.Id_PedAte';

     if Trim(PedParTipAtd.Value) = 'Vendedor' then
        sFiltro := ' Where Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.DteAte = '+ QuotedStr(fDateToSQL(date)) + ' and (PedAt2.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id)) +' or PedAt2.CodAtd = '+ QuotedStr(IntToStr(GCodVen_Id)) +') )'
     else
        begin

        if GCodAtd_Id > 0 then
           sFiltro := ' Where Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.DteAte = '+ QuotedStr(fDateToSQL(Date)) +' and (PedAt2.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id)) +' or PedAt2.CodAtd = '+ QuotedStr(IntToStr(GCodAtd_Id)) +') )'
        else
           sFiltro := ' Where Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.DteAte = '+ QuotedStr(fDateToSQL(Date)) +' and PedAt2.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id)) +')';

     end;

     with PedAte,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;

     CountRegistros;
     
     end
  else
     begin

     if GCodAtd_Id > 0 then begin

        sFiltro := ' Where Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.DteAte = '+ QuotedStr(fDateToSQL(Date)) +' and PedAt2.CodAtd = '+ QuotedStr(IntToStr(GCodAtd_Id)) + ')';

        with PedAte,SQL do begin

             Close;
             Text := sBase + sFiltro + sOrdem;
             Open;

        end;

        CountRegistros;

        end
     else
        begin

        sFiltro := ' Where Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.DteAte >= '+ QuotedStr(fDateToSQL(Date)) + ')';

        with PedAte,SQL do begin

             Close;
             Text := sBase + sFiltro + sOrdem;
             Open;

        end;

        CountRegistros;

     end;
  end;
  
  if GCodVen_Id > 0 then begin

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        EdPsqApeAtd.Text := GNomVen_Id;
        EdPsqCodAtd.Text := IntToStr( GCodVen_Id );

        if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then begin

           bPsqAtd.Enabled := False;

           EdPsqCodAtd.Enabled := False;

           EdPsqCodAtd.Font.Style := [fsBold];

        end;
     end;

     EdPsqApeVen.Text := GNomVen_Id;
     EdPsqCodVen.Text := IntToStr( GCodVen_Id );

     if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then begin

        bPsqVen.Enabled := False;

        EdPsqCodVen.Enabled := False;

        EdPsqCodVen.Font.Style := [fsBold];

     end;
  end;

  if GCodAtd_Id > 0 then begin

     if Trim(PedParTipAtd.Value) = 'Atendente' then begin

        EdPsqApeAtd.Text := GNomAtd_Id;
        EdPsqCodAtd.Text := IntToStr( GCodAtd_Id );

        if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then begin

           bPsqAtd.Enabled := False;

           EdPsqCodAtd.Enabled := False;

           EdPsqCodAtd.Font.Style := [fsBold];

        end;
     end;   
  end;

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
     
  EdPsqDteAte1.Date := Date;
  EdPsqDteAte2.Date := Date;

  EdPsqId_PedAte.SetFocus;

end;

procedure TfmManAte.PedAt2CONTATOGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if PedAt2DteAte.Value > 0 then
     Text := FormatDateTime('dd/mm/yyyy',PedAt2DteAte.Value)+ ' ' +PedAt2HreAte.Value
  else
     Text := '';
end;

procedure TfmManAte.PedAt2RETORNOGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if PedAt2DteRet.Value > 0 then
     Text := FormatDateTime('dd/mm/yyyy',PedAt2DteRet.Value)+ ' ' +PedAt2HreRet.Value
  else
     Text := '';
end;

procedure TfmManAte.bSelecionarClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;
  
  sFiltro := '';

  sOrdem := ' Order by PedAte.Id_PedAte';

  if Trim( EdPsqSitAte.Text ) <> 'Todos' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedAte.SitAte = '+ QuotedStr(EdPsqSitAte.Text)
     else
        sFiltro := ' Where PedAte.SitAte = '+ QuotedStr(EdPsqSitAte.Text);

  end;

  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedAte.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text)
     else
        sFiltro := ' Where PedAte.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

  end;

  if Trim( EdPsqId_PedAte.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedAte.Id_PedAte = '+ QuotedStr(EdPsqId_PedAte.Text)
     else
        sFiltro := ' Where PedAte.Id_PedAte = '+ QuotedStr(EdPsqId_PedAte.Text);

  end;

  if Trim( EdPsqCodCli.Text ) <> '' then begin

     if pos('Where', sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedAte.CodCli = '+ QuotedStr(EdPsqCodCli.Text)
     else
        sFiltro := ' Where PedAte.CodCli = '+ QuotedStr(EdPsqCodCli.Text);

     end
  else
     begin

     if Trim( EdPsqNomCli.Text ) <> '' then begin

        if pos('Where', sFiltro) > 0 then
           sFiltro := sFiltro + ' and PedAte.NomCli LIKE '+ QuotedStr('%'+ EdPsqNomCli.Text +'%')
        else
           sFiltro := ' Where PedAte.NomCli LIKE '+ QuotedStr('%'+ EdPsqNomCli.Text +'%');

     end;
  end;

  if GCodVen_Id > 0 then begin

     if Trim( EdPsqCodVen.Text ) <> '' then begin

        if Trim( EdPsqCodAtd.Text ) <> '' then begin

           if pos('Where', sFiltro) > 0 then
              sFiltro := sFiltro + ' and Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and (PedAt2.CodVen = '+ QuotedStr(EdPsqCodVen.Text) +' or PedAt2.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text) +')'
           else
              sFiltro := ' Where Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and (PedAt2.CodVen = '+ QuotedStr(EdPsqCodVen.Text) +' or PedAt2.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text) +')';

           end
        else
           begin

           if pos('Where', sFiltro) > 0 then
              sFiltro := sFiltro + ' and Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.CodVen = '+ QuotedStr(EdPsqCodVen.Text)
           else
              sFiltro := ' Where Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

        end;

        end
     else
        begin

        if Trim( EdPsqCodAtd.Text ) <> '' then begin

           if pos('Where', sFiltro) > 0 then
              sFiltro := sFiltro + ' and Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.CodAtd = '+ QuotedStr(EdPsqCodVen.Text)
           else
              sFiltro := ' Where Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.CodAtd = '+ QuotedStr(EdPsqCodVen.Text);

        end;
     end;

     end
  else
     begin

     if Trim( EdPsqCodVen.Text ) <> '' then begin

        if pos('Where', sFiltro) > 0 then
           sFiltro := sFiltro + ' and Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.CodVen = '+ QuotedStr(EdPsqCodVen.Text)
        else
           sFiltro := ' Where Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

     end;

     if Trim( EdPsqCodAtd.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then begin

           if pos('PedAt2',sFiltro) = 0 then
              sFiltro := sFiltro + ' and Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text)
           else
              sFiltro := sFiltro + ' and PedAt2.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text);

           end
        else
           sFiltro := ' Where Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text);
           
     end;
  end;

  if Trim(fLimpaStr(EdPsqDteAte1.Text)) <> '' then begin

     if pos('Where', sFiltro) > 0 then begin

        if pos('PedAt2',sFiltro) = 0 then
           sFiltro := sFiltro + ' and Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.DteAte >= '+ QuotedStr(fDateToSQL(EdPsqDteAte1.Date))
        else
           sFiltro := sFiltro + ' and PedAt2.DteAte >= '+ QuotedStr(fDateToSQL(EdPsqDteAte1.Date));

        end
     else
        sFiltro := ' Where Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.DteAte >= '+ QuotedStr(fDateToSQL(EdPsqDteAte1.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteAte2.Text)) <> '' then begin

     if pos('Where', sFiltro) > 0 then begin

        if pos('PedAt2',sFiltro) = 0 then
           sFiltro := sFiltro + ' and Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.DteAte <= '+ QuotedStr(fDateToSQL(EdPsqDteAte2.Date))
        else
           sFiltro := sFiltro + ' and PedAt2.DteAte <= '+ QuotedStr(fDateToSQL(EdPsqDteAte2.Date));

        end
     else
        sFiltro := ' Where Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.DteAte <= '+ QuotedStr(fDateToSQL(EdPsqDteAte2.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteRet1.Text)) <> '' then begin

     if pos('Where', sFiltro) > 0 then begin

        if pos('PedAt2',sFiltro) = 0 then
           sFiltro := sFiltro + ' and Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.DteRet >= '+ QuotedStr(fDateToSQL(EdPsqDteRet1.Date))
        else
           sFiltro := sFiltro + ' and PedAt2.DteRet >= '+ QuotedStr(fDateToSQL(EdPsqDteRet1.Date));

        end
     else
        sFiltro := ' Where Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.DteRet >= '+ QuotedStr(fDateToSQL(EdPsqDteRet1.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteRet2.Text)) <> '' then begin

     if pos('Where', sFiltro) > 0 then begin

        if pos('PedAt2',sFiltro) = 0 then
           sFiltro := sFiltro + ' and Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.DteRet <= '+ QuotedStr(fDateToSQL(EdPsqDteRet2.Date))
        else
           sFiltro := sFiltro + ' and PedAt2.DteRet <= '+ QuotedStr(fDateToSQL(EdPsqDteRet2.Date));
           
        end
     else
        sFiltro := ' Where Exists(Select * From PedAt2 Where PedAt2.Id_PedAte = PedAte.Id_PedAte and PedAt2.DteRet <= '+ QuotedStr(fDateToSQL(EdPsqDteRet2.Date));

  end;

  if pos('PedAt2',sFiltro) > 0 then sFiltro := sFiltro + ')';
  
  with PedAte,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  CountRegistros;
  
  PedAt2.Close;
  PedAt2.Open;

  grAte.SetFocus;

end;

procedure TfmManAte.EdPsqId_PedAteExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqId_PedAte.Text ) <> '' then begin

     if (GCodVen_Id = 0) or (GGus_Id = 1) then begin

        EdPsqCodVen.Clear;
        EdPsqApeVen.Clear;

     end;

     if (GCodAtd_Id = 0) or (GGus_Id = 1) then begin

        EdPsqCodAtd.Clear;
        EdPsqApeAtd.Clear;

     end;

     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;

     EdPsqDteAte1.Clear;
     EdPsqDteAte2.Clear;
     EdPsqDteRet1.Clear;
     EdPsqDteRet2.Clear;

     EdPsqSitAte.Text := 'Todos';

  end;
end;

procedure TfmManAte.EdPsqCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if GFlgAce <> 'Sim' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FLGDEL,SEQIMP From GerPar';
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
          Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('ApeEmp').AsString ) <> '' then
             EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
          else
             begin

             EdPsqApeEmp.Text := '';

             fmsgErro('Empresa informada não localizada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmManAte.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqApeEmp.Text := fmPsqEmp.NomEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmManAte.bPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqApeEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;

  EdPsqCodEmp.SetFocus;
  
end;

procedure TfmManAte.EdPsqCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinCli.NomCli,'+
                  '        FinCli.CodVen,'+
                  '        FinCli.CodAtd '+
                  ' From FinCli'+
                  ' Where FinCli.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
          Open;

          EdPsqNomCli.Text := FieldByName('NomCli').AsString;

          if GCodAtd_Id > 0 then begin

             if FieldbyName('CodAtd').AsInteger <> GCodAtd_Id then begin

                EdPsqNomCli.Text := '';

                fmsgErro('Cliente informado não pertence ao atendente.',EdPsqCodCli);

             end;
          end;

          if GCodVen_Id > 0 then begin

             if FieldbyName('CodVen').AsInteger <> GCodVen_Id then begin

                EdPsqNomCli.Text := '';

                fmsgErro('Cliente informado não pertence ao vendedor.',EdPsqCodCli);

             end;
          end;          
     end;

     end
  else
     EdPsqNomCli.Text := '';
end;

procedure TfmManAte.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word;
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

           EdPsqNomCli.Text := fmAuxIni.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqCodCli.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.sCodVen_Id := GCodVen_Id;

        fmAuxPsq.sGUs_Id := GGUs_Id;

        fmAuxPsq.sCodAtd_Id := GCodAtd_Id;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxPsq.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxPsq.CodCli);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqCodCli.SetFocus;

  end;
end;

procedure TfmManAte.bPsqCliClick(Sender: TObject);
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

        EdPsqNomCli.Text := fmAuxIni.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqCodCli.SetFocus;

end;

procedure TfmManAte.EdPsqCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen'+
                  ' From FinVen'+
                  ' Where FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
          Open;

          EdPsqApeVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqApeVen.Text := '';
end;

procedure TfmManAte.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqApeVen.Text := fmAuxIni.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqCodVen.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           EdPsqApeVen.Text := fmAuxPsq.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqCodVen.SetFocus;

  end;
end;

procedure TfmManAte.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdPsqApeVen.Text := fmAuxIni.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdPsqCodVen.SetFocus;

end;

procedure TfmManAte.EdPsqCodAtdExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodAtd.Text ) <> '' then begin

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdPsqCodAtd.Text);
             Open;

             EdPsqApeAtd.Text := FieldByName('ApeVen').AsString;

        end;

        end
     else
        begin

        with quSql,SQL do begin

             Close;
             Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text);
             Open;

             EdPsqApeAtd.Text := FieldByName('ApeAtd').AsString;

        end;
     end;

     end
  else
     EdPsqApeAtd.Text := '';
end;

procedure TfmManAte.EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'V';

           fmAuxIni.ShowModal;

           if fmAuxIni.CodVen > 0 then begin

              EdPsqApeAtd.Text := fmAuxIni.NomVen;
              EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodVen);

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        end
     else
        begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Atendentes';

           fmAuxIni.ShowModal;

           if fmAuxIni.CodAtd > 0 then begin

              EdPsqApeAtd.Text := fmAuxIni.NomAtd;
              EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodAtd);

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;
     end;

     EdPsqCodAtd.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'V';

           fmAuxPsq.ShowModal;

           if fmAuxPsq.CodVen > 0 then begin

              EdPsqApeAtd.Text := fmAuxPsq.NomVen;
              EdPsqCodAtd.Text := IntToStr(fmAuxPsq.CodVen);

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        end
     else
        begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Atendentes';

           fmAuxPsq.ShowModal;

           if fmAuxPsq.CodAtd > 0 then begin

              EdPsqApeAtd.Text := fmAuxPsq.NomAtd;
              EdPsqCodAtd.Text := IntToStr(fmAuxPsq.CodAtd);

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;
     end;

     EdPsqCodAtd.SetFocus;

  end;
end;

procedure TfmManAte.bPsqAtdClick(Sender: TObject);
begin
  inherited;

  if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqApeAtd.Text := fmAuxIni.NomVen;
           EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     end
  else
     begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Atendentes';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodAtd > 0 then begin

           EdPsqApeAtd.Text := fmAuxIni.NomAtd;
           EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodAtd);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  EdPsqCodAtd.SetFocus;

end;

procedure TfmManAte.bEditarClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,2,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManAt1 then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe um contato com cliente sendo registrado no momento.','E');

           fmManAt1.WindowState := wsNormal;
           fmManAt1.BringToFront;

           end
        else
           begin

           if PedAteId_PedAte.Value > 0 then begin

              sFiltro := ' Where PedAte.Id_PedAte = '+ QuotedStr(IntToStr(PedAteId_PedAte.Value));

              with PedAte,SQL do begin

                   Close;
                   Text := sBase + sFiltro;
                   Open;

              end;

              CountRegistros;
              
              if Trim(PedAteSitAte.Value) <> 'Concluido' then begin

                 Id_PedAte := PedAteId_PedAte.Value;

                 fmManAt1 := TfmManAt1.Create(Self);
                 fmManAt1.Show;

                 end
              else
                 fmsgErro('Operação não pode ser realizada. Contato com atendimento concluido.',Nil);

           end;
        end;

        end
     else
        fMsgErro(GMensagem_0002,nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManAte.bIncluirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,1,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManAt1 then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe um contato com cliente sendo registrado no momento.','E');

           fmManAt1.WindowState := wsNormal;
           fmManAt1.BringToFront;

           end
        else
           begin

           Id_PedAte := 0;

           sFiltro := ' Where PedAte.Id_PedAte = 0';

           with PedAte,SQL do begin

                Close;
                Text := sBase + sFiltro;
                Open;

           end;

           CountRegistros;
           
           fmManAt1 := TfmManAt1.Create(Self);
           fmManAt1.Show;

        end;

        end
     else
        fMsgErro(GMensagem_0002,nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManAte.bImprimirClick(Sender: TObject);
var
  i     : integer;
  Found : integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManAt1 then Found := i;

  end;

  if Found >= 0 then begin

     fmsg('Existe um contato com cliente sendo registrado no momento.','E');

     fmManAt1.WindowState := wsNormal;
     fmManAt1.BringToFront;

     end
  else
     begin

     if PedAteId_PedAte.Value > 0 then begin

        sFiltro := ' Where PedAte.Id_PedAte = '+ QuotedStr(IntToStr(PedAteId_PedAte.Value));

        with PedAte,SQL do begin

             Close;
             Text := sBase + sFiltro;
             Open;

        end;

        CountRegistros;
        
        if Trim(PedAteSitAte.Value) <> 'Nao Concluido' then begin

           if fMsg('Confirma impressão do controle do contato registrado com o cliente ?','O') then begin


           
           end;

           if PedAteId_PedCta.Value > 0 then begin

              GEmail := Trim(PedAteEmaCli.Value);

              GAssunto := 'Cotação no. '+IntToStr(PedAteId_PedCta.Value);

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
           
           end
        else
           fmsgErro('Não é permitido impressão de processos não concluidos.',Nil);

     end;
  end;   
end;

procedure TfmManAte.bExcluirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,3,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManAt1 then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe um contato com cliente sendo registrado no momento.','E');

           fmManAt1.WindowState := wsNormal;
           fmManAt1.BringToFront;

           end
        else
           begin

           if PedAteId_PedAte.Value > 0 then begin

              sFiltro := ' Where PedAte.Id_PedAte = '+ QuotedStr(IntToStr(PedAteId_PedAte.Value));

              with PedAte,SQL do begin

                   Close;
                   Text := sBase + sFiltro;
                   Open;

              end;

              CountRegistros;
              
              if (Trim(PedAteSitAte.Value) = 'Finalizado') or
                 (Trim(PedAteSitAte.Value) = 'Nao Concluido') then begin

                 if fMsg('Confirma a exclusão do contato registrado com o cliente ?','S') then begin

                    PedAte.Delete;

                    with PedAte do begin

                         fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                         try

                            ApplyUpdates; {Tenta aplicar as alterações};

                            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                         except

                            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                            if PedAte.State <> dsBrowse then PedAte.CancelUpdates;

                            grAte.SetFocus;

                            raise;

                         end;

                         CommitUpdates; {sucesso!, limpa o cache...}

                    end;

                    PedAte.Close;
                    PedAte.Open;

                    CountRegistros;
                    
                    grAte.SetFocus;

                 end;

                 end
              else
                 begin

                 if Trim(PedAteSitAte.Value) = 'Em Andamento' then begin

                    if fMsg('Confirma a finalização do contato registrado com o cliente ?','S') then begin

                       try

                          fmManCat := TfmManCat.Create(Self);

                          fmManCat.PedAte.Close;
                          fmManCat.PedAte.Params[0].AsInteger := PedAteId_PedAte.Value;
                          fmManCat.PedAte.Open;

                          fmManCat.ShowModal;

                       finally

                          FreeAndNil(fmManCat);

                       end;

                       PedAte.Close;
                       PedAte.Open;

                    end;

                    end
                 else
                    begin

                    if Trim(PedAteSitAte.Value) = 'Finalizado' then fMsg('Operação não pode ser realizada. Contato finalizado.','E');
                    
                 end;
              end;
           end;
        end;

        end
     else
        fMsgErro(GMensagem_0002,nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManAte.PedAteTELEFONEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if (PedAtePfoCli.Value) <> '' then
     Text := '('+ PedAtePfoCli.Value +') '+ PedAteFonCli.Value
  else
     Text := PedAteFonCli.Value;
end;
     
procedure TfmManAte.DsAteDataChange(Sender: TObject; Field: TField);
var
  sText : string;
begin
  inherited;

  if Trim(PedAteSitAte.Value) = 'Finalizado' then sText := 'F10 -';

  if Trim( sText ) <> '' then
     pnSitAte.Caption := sText + ' ' + Trim(PedAteSitAte.Value)
  else
     pnSitAte.Caption := Trim(PedAteSitAte.Value);

  if PedAteDteUlt.Value > 0 then
     pnContato.Caption := ' Último contato realizado em '+ FormatDateTime('dd/mm/yyyy',PedAteDteUlt.Value)+' '+PedAteHreUlt.Value+' '
  else
     pnContato.Caption := '';
     
end;

procedure TfmManAte.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Count(*) as QtdReg'+
               ' From PedAte'+ sFiltro;
       Open;

       if FieldbyName('QtdReg').AsInteger > 0 then
          pnQtdReg.Caption := IntToStr(FieldbyName('QtdReg').AsInteger)+' contato(s)'
       else
          pnQtdReg.Caption := '0 contato(s)';

  end;
end;

end.
