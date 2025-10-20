unit ManLr2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, ppDB, ppDBPipe, ppBands, ppClass, ppStrtch,
  ppMemo, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit, dxDBColorCurrencyEdit,
  dxDBColorEdit, dxDBColorPickEdit;

type
  TfmManLr2 = class(TfmPadrao)
    DsCmpNfs: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteFat1: TdxColorDateEdit;
    EdPsqId_CmpNfs: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteFat2: TdxColorDateEdit;
    Label25: TLabel;
    EdPsqTotGer1: TdxColorCurrencyEdit;
    Label19: TLabel;
    EdPsqTotGer2: TdxColorCurrencyEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    EdPsqCodPfa: TdxColorEdit;
    EdPsqCodFor: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqFor: TSpeedButton;
    bPsqPfa: TSpeedButton;
    EdPsqNomPfa: TdxColorEdit;
    EdPsqNomFor: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    grCmpNfs: ThGrid;
    quSql: TwwQuery;
    CmpNf2: TwwQuery;
    pnSitNfs: TPanel;
    DsNf2: TwwDataSource;
    grCmpNfs1: TdxDBGraphicEdit;
    grCmpNf21: TdxDBGraphicEdit;
    Label11: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    CmpNfsDTEFAT: TDateTimeField;
    CmpNfsCODPFA: TStringField;
    CmpNfsNRONFS: TIntegerField;
    CmpNfsTOTGE1: TFloatField;
    CmpNfs: TwwQuery;
    pnSitImp: TPanel;
    rgOrdem: TRadioGroup;
    rgImpresso: TRadioGroup;
    bImprimir: TBitBtn;
    CmpNfsFORNECEDOR: TStringField;
    UpCmpNfs: TUpdateSQL;
    CmpNfsID_CMPNFS: TIntegerField;
    pnDadosNota: TPanel;
    Label1: TLabel;
    EdFlgImp: TdxDBColorPickEdit;
    CmpNfsFLGIMP: TStringField;
    CmpNfsFLGATU: TStringField;
    CmpNfsSITNFS: TStringField;
    CmpNfsNOMFOR: TStringField;
    pnDesNf2: TPanel;
    CmpNf2DESNF2: TStringField;
    CmpNf2OBSNF2: TStringField;
    CmpNf2QTPNF2: TFloatField;
    CmpNf2VLUNF2: TFloatField;
    CmpNf2IPINF2: TFloatField;
    CmpNf2ICMNF2: TFloatField;
    CmpNf2TOTITE: TFloatField;
    CmpNf2TOTIPI: TFloatField;
    CmpNf2CODCFO: TStringField;
    CmpNf2CLSIPI: TStringField;
    CmpNf2CODUND: TStringField;
    CmpNf2CODSIT: TStringField;
    CmpNf2CODITE: TStringField;
    grCmpNf2: ThGrid;
    CmpNfsCODFOR: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqForClick(Sender: TObject);
    procedure bPsqPfaClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure EdPsqId_CmpNfsExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqId_CmpNfsKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdPsqCodForExit(Sender: TObject);
    procedure DsCmpNfsDataChange(Sender: TObject; Field: TField);
    procedure bImprimirClick(Sender: TObject);
    procedure CmpNfsFORNECEDORGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure grCmpNfsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnDadosNotaExit(Sender: TObject);
    procedure DsNf2DataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
    sBase,sFiltro,sOrdem,psaida : string;
    Id_CmpNfs : integer;
  public
    {Public declarations}
  end;

var
  fmManLr2: TfmManLr2;

implementation

uses dxDemoUtils, Bbgeral, Bbacesso, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqPfa,
     ManPri, AuxPsq, ManSro, AuxIni;

{$R *.DFM}

procedure TfmManLr2.FormCreate(Sender: TObject);
begin
  inherited;

  psaida := 'Nao';

  sBase := ' Select CmpNfs.Id_CmpNfs,'+
           '        CmpNfs.DteFat,'+
           '        CmpNfs.NroNfs,'+
           '        CmpNfs.CodFor,'+           
           '        CmpNfs.CodPfa,'+
           '        CmpNfs.TotGe1,'+
           '        CmpNfs.FlgImp,'+
           '        CmpNfs.FlgAtu,'+
           '        CmpNfs.SitNfs,'+
           '        FinFor.NomFor '+
           ' From CmpNfs LEFT JOIN FinFor ON (CmpNfs.CodFor = FinFor.CodFor)';

end;

procedure TfmManLr2.bSelecionarClick(Sender: TObject);
begin

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

  sFiltro := ' Where CmpNfs.NroNfs > '+ QuotedStr('0') +' and CmpNfs.FlgNfe = '+ QuotedStr('Nao');

  case rgOrdem.Itemindex of
       0: sOrdem := ' Order by CmpNfs.CodFor,CmpNfs.NroNfs';
       1: sOrdem := ' Order by CmpNfs.DteFat,CmpNfs.NroNfs';
       2: sOrdem := ' Order by CmpNfs.NroNfs';
  end;

  case rgImpresso.Itemindex of
       0: sFiltro := sFiltro + ' and CmpNfs.FlgImp = '+ QuotedStr('Sim');
       1: sFiltro := sFiltro + ' and CmpNfs.FlgImp = '+ QuotedStr('Nao');
  end;

  if Trim( EdPsqId_CmpNfs.Text ) <> '' then sFiltro := sFiltro + ' and CmpNfs.Id_CmpNfs = '+ QuotedStr(EdPsqId_CmpNfs.Text);
  
  if Trim( EdPsqNroNfs.Text ) <> '' then sFiltro := sFiltro + ' and CmpNfs.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text);
  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and CmpNfs.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodFor.Text ) <> '' then sFiltro := sFiltro + ' and CmpNfs.CodFor = '+ QuotedStr(EdPsqCodFor.Text);
  if Trim( EdPsqCodPfa.Text ) <> '' then sFiltro := sFiltro + ' and CmpNfs.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text);

  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then sFiltro := sFiltro + ' and CmpNfs.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDteFat1.Date));
  if Trim(fLimpaStr(EdPsqDteFat2.Text)) <> '' then sFiltro := sFiltro + ' and CmpNfs.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDteFat2.Date));

  if EdPsqTotGer1.Value > 0 then sFiltro := sFiltro + ' and CmpNfs.TotGer >= '+ QuotedStr(fConvertValor(EdPsqTotGer1.Text));
  if EdPsqTotGer2.Value > 0 then sFiltro := sFiltro + ' and CmpNfs.TotGer <= '+ QuotedStr(fConvertValor(EdPsqTotGer2.Text));

  with CmpNfs,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grCmpNfs.SetFocus;

end;

procedure TfmManLr2.EdPsqCodEmpExit(Sender: TObject);
begin
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
          Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

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

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmManLr2.bPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManLr2.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;
  end;
end;

procedure TfmManLr2.EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           EdPsqNomFor.Text := fmAuxIni.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           EdPsqNomFor.Text := fmAuxPsq.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxPsq.CodFor);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManLr2.bPsqForClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        EdPsqNomFor.Text := fmAuxIni.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManLr2.EdPsqId_CmpNfsExit(Sender: TObject);
begin
  if Trim( EdPsqId_CmpNfs.Text ) <> '' then begin

     EdPsqNroNfs.Clear;
     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodFor.Clear;
     EdPsqNomFor.Clear;
     EdPsqCodPfa.Clear;
     EdPsqNomPfa.Clear;

     EdPsqDteFat1.Clear;
     EdPsqDteFat2.Clear;

     EdPsqTotGer1.Value := 0;
     EdPsqTotGer2.Value := 0;

  end;
end;

procedure TfmManLr2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if pnDadosNota.Visible then begin

        psaida := 'Sim';

        if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

        pnDadosNota.Visible := False;

        psaida := 'Nao';

        bSelecionar.Default := True;
        
        grCmpNfs.SetFocus;

        end
     else
        close;

  end;
end;

procedure TfmManLr2.FormShow(Sender: TObject);
begin
  inherited;

  EdPsqDteFat1.Date := Date;
  EdPsqDteFat2.Date := Date;

  CmpNfs.Close;
  CmpNfs.Params[0].AsDateTime := Date;
  CmpNfs.Open;

  EdPsqNroNfs.SetFocus;
  
end;

procedure TfmManLr2.bPsqPfaClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqPfa := TfmPsqPfa.Create(Self);

     with fmPsqPfa.EstPfa,SQL do begin

          Close;
          Text := ' Select EstPfa.CodPfa,'+
                  '        EstPfa.TipPfa,'+
                  '        EstPfa.DscPfa,'+
                  '        EstPfa.DsrPfa,'+
                  '        EstPfa.CodCf1,'+
                  '        EstPfa.CodCf2,'+
                  '        EstPfa.IntFin,'+
                  '        EstPfa.AtuEst,'+
                  '        EstPfa.ConSum,'+
                  '        EstPfa.ModPfa '+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString := 'Saida';

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

        EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
        EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

     end;

  finally   

     FreeAndNil(fmPsqPfa);

  end;
end;

procedure TfmManLr2.EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqPfa := TfmPsqPfa.Create(Self);

        with fmPsqPfa.EstPfa,SQL do begin

             Close;
             Text := ' Select EstPfa.CodPfa,'+
                     '        EstPfa.TipPfa,'+
                     '        EstPfa.DscPfa,'+
                     '        EstPfa.DsrPfa,'+
                     '        EstPfa.CodCf1,'+
                     '        EstPfa.CodCf2,'+
                     '        EstPfa.IntFin,'+
                     '        EstPfa.AtuEst,'+
                     '        EstPfa.ConSum,'+
                     '        EstPfa.ModPfa'+
                     ' From EstPfa'+
                     ' Where EstPfa.TipPfa = :TipPfa'+
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString := 'Saida';

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
           EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

        end;

     finally

        FreeAndNil(fmPsqPfa);

     end;
  end;
end;

procedure TfmManLr2.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLr2.EdPsqId_CmpNfsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManLr2.EdPsqCodPfaExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPfa.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstPfa.DscPfa'+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = '+ QuotedStr('Saida')+
                  '   and EstPfa.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text);
          Open;

          EdPsqNomPfa.Text := FieldByName('DscPfa').AsString;

     end;

     end
  else
     EdPsqNomPfa.Text := '';
end;

procedure TfmManLr2.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLr2 := nil;
end;

procedure TfmManLr2.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     EdPsqId_CmpNfs.Clear;
       
     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodFor.Clear;
     EdPsqNomFor.Clear;
     EdPsqCodPfa.Clear;
     EdPsqNomPfa.Clear;

     EdPsqDteFat1.Clear;
     EdPsqDteFat2.Clear;

     EdPsqTotGer1.Value := 0;
     EdPsqTotGer2.Value := 0;

  end;
end;

procedure TfmManLr2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManLr2.EdPsqCodForExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinFor.NomFor From FinFor Where FinFor.CodFor = '+ QuotedStr(EdPsqCodFor.Text);
          Open;

          EdPsqNomFor.Text := FieldByName('NomFor').AsString;

     end;

     end
  else
     EdPsqNomFor.Text := '';
end;

procedure TfmManLr2.DsCmpNfsDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnSitNfs.Caption := CmpNfsSitNfs.Value;

  if CmpNfsFlgImp.Value = 'Sim' then begin

     pnSitImp.Color := clRed;
     
     pnSitImp.Caption := 'Impressão confirmada';

     end
  else
     begin

     pnSitImp.Color := clLime;
     
     pnSitImp.Caption := 'Impressão não confirmada';

  end;
end;

procedure TfmManLr2.bImprimirClick(Sender: TObject);
begin
  inherited;
  if CmpNfsId_CmpNfs.Value > 0 then begin

     Id_CmpNfs := CmpNfsId_CmpNfs.Value;

     with CmpNfs,SQL do begin

          Close;
          Text := sBase +
                  ' Where CmpNfs.Id_CmpNfs = '+ QuotedStr(IntToStr(Id_CmpNfs));
          Open;

     end;
     
     if CmpNfsNroNfs.Value > 0 then begin

        if fMsg('Confirma emissão da segunda via de nota fiscal ?','O') then begin

           try

              fmManSro := TfmManSro.Create(Self);

              fmManSro.CmpNfs.Close;
              fmManSro.CmpNfs.Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
              fmManSro.CmpNfs.Open;

              fmManSro.ShowModal;

           finally

              FreeAndNil(fmManSro);

           end;
        end;
     end;
  end;
end;

procedure TfmManLr2.CmpNfsFORNECEDORGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if CmpNfsCodFor.Value > 0 then
     Text := fNumZeros(IntToStr(CmpNfsCodFor.Value),5)+ ' - ' +Trim(CmpNfsNomFor.Value)
  else
     Text := '';
end;

procedure TfmManLr2.grCmpNfsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then begin

     if CmpNfsId_CmpNfs.Value > 0 then begin

        if not pnDadosNota.Visible then begin

           sFiltro := ' Where CmpNfs.Id_CmpNfs = '+ QuotedStr(IntToStr(CmpNfsId_CmpNfs.Value));

           with CmpNfs,SQL do begin

                Close;
                Text := sBase + sFiltro;
                Open;

           end;

           if CmpNfsId_CmpNfs.Value > 0 then begin

              if CmpNfsFlgImp.Value = 'Nao' then begin

                 pnDadosNota.Visible := True;

                 bSelecionar.Default := False;

                 CmpNfs.Edit;

                 EdFlgImp.SetFocus;
                 
              end;
           end;
        end;
     end;
  end;
end;

procedure TfmManLr2.pnDadosNotaExit(Sender: TObject);
begin
  inherited;
  if psaida = 'Nao' then begin

     if fMsg('Confirma informação ?','O') then begin

        with CmpNfs do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpNfs.State = dsBrowse then CmpNfs.Edit;

                EdFlgImp.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        CmpNfs.Close;
        CmpNfs.Open;

        pnDadosNota.Visible := False;

        bSelecionar.Default := True;
        
        grCmpNfs.SetFocus;

        end
     else
        EdFlgImp.SetFocus;

  end;
end;

procedure TfmManLr2.DsNf2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnDesNf2.Caption := ' '+CmpNf2DesNf2.Value+' '+CmpNf2ObsNf2.Value;
end;

end.

