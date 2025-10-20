unit ManPfo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, ppStrtch, ppMemo, ppBands, ppClass, ppCtrls,
  ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppRptExp, Psock, NMsmtp, SakEmail, dxfProgressBar, OleServer,
  Outlook8, dxDBGrid, dxTL, dxDBCtrl, dxDBTLCl, dxGrClms,
  dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit;

type
  TfmManPfo = class(TfmPadrao)
    CmpPed: TwwQuery;
    CmpPe2: TwwQuery;
    DsPe2: TwwDataSource;
    DsPed: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDtePed1: TdxColorDateEdit;
    EdPsqId_CmpPed: TdxColorEdit;
    Label18: TLabel;
    EdPsqDtePed2: TdxColorDateEdit;
    Label28: TLabel;
    EdPsqDtrPed1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDtrPed2: TdxColorDateEdit;
    Label25: TLabel;
    EdPsqTotPed1: TdxColorCurrencyEdit;
    Label19: TLabel;
    EdPsqTotPed2: TdxColorCurrencyEdit;
    Label26: TLabel;
    Label20: TLabel;
    EdPsqCodFor: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqFor: TSpeedButton;
    EdPsqApeFor: TdxColorEdit;
    EdPsqNomEmp: TdxColorEdit;
    bPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    grPed: ThGrid;
    Label3: TLabel;
    grPe2: ThGrid;
    rgStatus: TRadioGroup;
    pnCodFor: TPanel;
    Label7: TLabel;
    EdPsqDpePed1: TdxColorDateEdit;
    Label14: TLabel;
    EdPsqDpePed2: TdxColorDateEdit;
    pnHrePed: TPanel;
    pnSitPed: TPanel;
    CmpPedDTEPED: TDateTimeField;
    CmpPedHREPED: TStringField;
    CmpPedDPEPED: TDateTimeField;
    CmpPedTOTPED: TFloatField;
    CmpPedTOTGER: TFloatField;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    bExcluir: TSpeedButton;
    CmpPe2QTPPE2: TFloatField;
    CmpPe2VLQPE2: TFloatField;
    CmpPe2ICMPE2: TFloatField;
    CmpPe2TOTPE2: TFloatField;
    UpPed: TUpdateSQL;
    CmpPe2QTRPE2: TFloatField;
    bFinalizar: TSpeedButton;
    CmpPe2QTNPE2: TFloatField;
    pnTotRen: TPanel;
    pnTotMka: TPanel;
    CmpPe2CODCLP: TStringField;
    CmpPe2CODGRU: TStringField;
    CmpPe2CODSUB: TStringField;
    CmpPe2CODPRO: TStringField;
    CmpPe2DESPE2: TStringField;
    quSQL: TwwQuery;
    CmpPedAPEFOR: TStringField;
    CmpPedID_CMPPED: TIntegerField;
    CmpPe2ID_CMPPE2: TIntegerField;
    CmpPedQTIPED: TIntegerField;
    CmpPedTOTREN: TFloatField;
    CmpPedSITPED: TStringField;
    CmpPedCODFOR: TIntegerField;
    CmpPe2CODITE: TStringField;
    CmpPe2TOTREN: TFloatField;
    CmpPe2REFPRO: TStringField;
    CmpPe2IDEPRO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqForClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqId_CmpPedExit(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodForExit(Sender: TObject);
    procedure DsPedDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqId_CmpPedKeyPress(Sender: TObject; var Key: Char);
    procedure bEditarClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bFinalizarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DsPe2DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CmpPe2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    {Private declarations}
  public
    {Public declarations}
    Id_CmpPed : integer;
    SeqArq,sBase,sFiltro,sOrdem : string;
  end;

var
  fmManPfo : TfmManPfo;

implementation

uses ShellApi, dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp,
     AuxIni, PsqPfa, ManPri, AuxPsq, ManPed, ManFpe, PsqMfp, ManE02, ManPra,
  ManE01, ManE03, ManE04;

{$R *.DFM}

procedure TfmManPfo.FormCreate(Sender: TObject);
begin
  inherited;

  CmpPed.Close;
  CmpPed.Params[0].AsDateTime := Date;
  CmpPed.Open;

  sBase := ' Select CmpPed.Id_CmpPed,'+
           '        CmpPed.DtePed,'+
           '        CmpPed.HrePed,'+
           '        CmpPed.DpePed,'+
           '        CmpPed.CodFor,'+
           '        CmpPed.QtiPed,'+
           '        CmpPed.TotPed,'+
           '        CmpPed.TotGer,'+
           '        CmpPed.TotRen,'+
           '        CmpPed.SitPed,'+
           '        FinFor.ApeFor '+
           ' From CmpPed,FinFor'+
           ' Where CmpPed.CodFor = FinFor.CodFor';

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
            copy(TimeToStr(Time),1,2)+
            copy(TimeToStr(Time),4,2)+
            copy(TimeToStr(Time),7,2)+
            FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
            FNumZeros(Trim( IntToStr(Random(50000)) ),5);

end;

procedure TfmManPfo.bPesquisaClick(Sender: TObject);
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
  
  sFiltro := '';

  sOrdem := ' Order by CmpPed.Id_CmpPed';

  case rgStatus.Itemindex of
       0: sFiltro := sFiltro + ' and CmpPed.SitPed = '+ QuotedStr('Nao Concluido');
       1: sFiltro := sFiltro + ' and CmpPed.SitPed = '+ QuotedStr('Concluido');
       2: sFiltro := sFiltro + ' and CmpPed.SitPed = '+ QuotedStr('Processo de Alteracao');
       3: sFiltro := sFiltro + ' and CmpPed.SitPed = '+ QuotedStr('Recebido Parcialmente');
       4: sFiltro := sFiltro + ' and CmpPed.SitPed = '+ QuotedStr('Recebido');
       5: sFiltro := sFiltro + ' and CmpPed.SitPed = '+ QuotedStr('Saldo Nao Atendido');
  end;

  if Trim( EdPsqId_CmpPed.Text ) <> '' then sFiltro := sFiltro + ' and CmpPed.Id_CmpPed = '+ QuotedStr(EdPsqId_CmpPed.Text);
  
  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and CmpPed.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodFor.Text ) <> '' then sFiltro := sFiltro + ' and CmpPed.CodFor = '+ QuotedStr(EdPsqCodFor.Text);

  if Trim(fLimpaStr(EdPsqDtePed1.Text)) <> '' then sFiltro := sFiltro + ' and CmpPed.DtePed >= '+ QuotedStr(fDateToSQL(EdPsqDtePed1.Date));
  if Trim(fLimpaStr(EdPsqDtePed2.Text)) <> '' then sFiltro := sFiltro + ' and CmpPed.DtePed <= '+ QuotedStr(fDateToSQL(EdPsqDtePed2.Date));
  if Trim(fLimpaStr(EdPsqDpePed1.Text)) <> '' then sFiltro := sFiltro + ' and CmpPed.DpePed >= '+ QuotedStr(fDateToSQL(EdPsqDpePed1.Date));
  if Trim(fLimpaStr(EdPsqDpePed2.Text)) <> '' then sFiltro := sFiltro + ' and CmpPed.DpePed <= '+ QuotedStr(fDateToSQL(EdPsqDpePed2.Date));

  if EdPsqTotPed1.Value > 0 then sFiltro := sFiltro + ' and CmpPed.TotGer >= '+ QuotedStr(fConvertValor(EdPsqTotPed1.Text));
  if EdPsqTotPed2.Value > 0 then sFiltro := sFiltro + ' and CmpPed.TotGer <= '+ QuotedStr(fConvertValor(EdPsqTotPed2.Text));

  if GFlgAce = 'Sim' then begin

     if GEmpLog > 0 then
        sFiltro := sFiltro + ' and CmpPed.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
     else
        sFiltro := sFiltro + ' and GerEmp.CodFil > 0';
  
  end;

  with CmpPed,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grPed.SetFocus;

end;

procedure TfmManPfo.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmManPfo.EdPsqCodForExit(Sender: TObject);
begin
  if Trim( EdPsqCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select FinFor.ApeFor From FinFor Where FinFor.CodFor = '+ QuotedStr(EdPsqCodFor.Text);
          Open;

          EdPsqApeFor.Text := FieldByName('ApeFor').AsString;

     end;

     end
  else
     EdPsqApeFor.Text := '';
end;

procedure TfmManPfo.BbPsqEmpClick(Sender: TObject);
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
end;

procedure TfmManPfo.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
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
  end;
end;

procedure TfmManPfo.EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           EdPsqApeFor.Text := fmAuxIni.NomFor;
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

           EdPsqApeFor.Text := fmAuxPsq.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxPsq.CodFor);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManPfo.BbPsqForClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        EdPsqApeFor.Text := fmAuxIni.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManPfo.EdPsqId_CmpPedExit(Sender: TObject);
begin
  if Trim( EdPsqId_CmpPed.Text ) <> '' then begin

     EdPsqCodEmp.Clear;
     EdPsqNomEmp.Clear;
     EdPsqCodFor.Clear;
     EdPsqApeFor.Clear;

     EdPsqDtePed1.Clear;
     EdPsqDtePed2.Clear;
     EdPsqDtrPed1.Clear;
     EdPsqDtrPed2.Clear;
     EdPsqDpePed1.Clear;
     EdPsqDpePed2.Clear;

     EdPsqTotPed1.Value := 0;
     EdPsqTotPed2.Value := 0;

  end;
end;

procedure TfmManPfo.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

  if key = 117 then bExcluir.OnClick(Sender);

  if key = 118 then bFinalizar.OnClick(Sender);

  if key = 121 then begin

     if Trim(CmpPedSitPed.Value) = 'Saldo Nao Atendido' then begin

        try

           fmPsqMfp := TfmPsqMfp.Create(Self);

           fmPsqMfp.CmpPed.Close;
           fmPsqMfp.CmpPed.Params[0].AsInteger := CmpPedId_CmpPed.Value;
           fmPsqMfp.CmpPed.Open;

           fmPsqMfp.ShowModal;

        finally

           FreeAndNil(fmPsqMfp);

        end;
     end;
  end;
end;

procedure TfmManPfo.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqId_CmpPed.SetFocus;
end;

procedure TfmManPfo.DsPedDataChange(Sender: TObject; Field: TField);
var
  sText : string;
begin
  inherited;

  pnTotRen.Caption := FormatFloat('##0.00',CmpPedTotRen.Value)+' %';

  if CmpPedCodFor.Value > 0 then
     pnCodFor.Caption := ' Código do Fornecedor : ' + FNumZeros(IntToStr(CmpPedCodFor.Value),7)
  else
     pnCodFor.Caption := ' Código do Fornecedor : ';

  pnHrePed.Caption := ' '+CmpPedHrePed.Value;

  pnSitPed.Caption := Trim(CmpPedSitPed.Value);

  if Trim(CmpPedSitPed.Value) = 'Saldo Nao Atendido' then sText := 'F10 -';

  if Trim(CmpPedSitPed.Value) = 'Rejeitado' then sText := 'F10 -';

  if Trim( sText ) <> '' then
     pnSitPed.Caption := sText + ' ' + Trim(CmpPedSitPed.Value)
  else
     pnSitPed.Caption := Trim(CmpPedSitPed.Value);

end;

procedure TfmManPfo.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPfo.EdPsqId_CmpPedKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPfo.bEditarClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpPedId_CmpPed.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManPed then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe um Pedido em Andamento.','E');

           fmManPed.WindowState := wsNormal;
           fmManPed.BringToFront;

           end
        else
           begin

           Id_CmpPed := CmpPedId_CmpPed.Value;

           sFiltro := ' and CmpPed.Id_CmpPed = '+ QuotedStr(IntToStr(CmpPedId_CmpPed.Value));

           with CmpPed,SQL do begin

                Close;
                Text := sBase + sFiltro;
                Open;

           end;

           if Trim(CmpPedSitPed.Value) = 'Concluido' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg'+
                           ' From CmpPe3'+
                           ' Where CmpPe3.Id_CmpPed = :Id_CmpPed'+
                           '   and Exists(Select * From CmpEnt Where CmpEnt.Id_CmpEnt = CmpPe3.Id_CmpEnt '+
                           '                                     and CmpEnt.SitEnt = '+ QuotedStr('Nao Concluida') +' )';

                   with Params do begin

                        Params[0].AsInteger := CmpPedId_CmpPed.Value;

                   end;

                   Open;

              end;

              if quSQL.FieldbyName('QtdReg').AsInteger = 0 then begin
        
                 CmpPed.Edit;

                 CmpPedSitPed.Value := 'Processo de Alteracao';

                 with CmpPed do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         if CmpPed.State <> dsBrowse then CmpPed.CancelUpdates;

                         EdPsqId_CmpPed.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;

                 end
              else
                 fMsgErro('Operação não Pode ser Realizada. Pedido com Processo de Entrada em Andamento.',Nil);

           end;

           fmManPed := TfmManPed.Create(Self);
           fmManPed.Show;

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManPfo.bIncluirClick(Sender: TObject);
var
  i     : Integer;
  Found : integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManPed then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe um Pedido em Andamento.','E');

        fmManPed.WindowState := wsNormal;
        fmManPed.BringToFront;

        end
     else
        begin

        Id_CmpPed := 0;

        sFiltro := ' and CmpPed.Id_CmpPed = :Id_CmpPed';

        with CmpPed,SQL do begin

             Close;
             Text := sBase + sFiltro;

             with Params do begin

                  Params[0].AsInteger := Id_CmpPed;

             end;

             Open;

        end;

        fmManPed := TfmManPed.Create(Self);
        fmManPed.Show;

     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManPfo.bExcluirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpPedId_CmpPed.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManPed then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe um Pedido em Andamento.','E');

           fmManPed.WindowState := wsNormal;
           fmManPed.BringToFront;

           end
        else
           begin

           if Trim(CmpPedSitPed.Value) <> 'Processo de Alteracao' then begin

              if (Trim(CmpPedSitPed.Value) = 'Nao Concluido') or (Trim(CmpPedSitPed.Value) = 'Concluido') then begin

                 if fMsg('Confirma a Exclusão do Pedido ?','S') then begin

                    CmpPed.Delete;

                    with CmpPed do begin

                         fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                         try

                            ApplyUpdates; {Tenta aplicar as alterações};

                            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                         except

                            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                            if CmpPed.State <> dsBrowse then CmpPed.CancelUpdates;

                            grPed.SetFocus;

                            raise;

                         end;

                         CommitUpdates; {sucesso!, limpa o cache...}

                    end;

                    CmpPed.Close;
                    CmpPed.Open;

                    grPed.SetFocus;

                 end;

                 end
              else
                 begin

                 if (Trim(CmpPedSitPed.Value) = 'Recebido') or (Trim(CmpPedSitPed.Value) = 'Recebido Parcialmente') then fMsg('Operação não Pode ser Realizada. Pedido com Recebimentos Realizados.','E');

              end;

              end
           else
              begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg'+
                           ' From CmpPe2'+
                           ' Where CmpPe2.Id_CmpPed = :Id_CmpPed'+
                           '   and CmpPe2.QtrPe2 > '+ QuotedStr('0');

                   with Params do begin

                        Params[0].AsInteger := CmpPedId_CmpPed.Value;

                   end;

                   Open;

              end;

              if quSQL.FieldbyName('QtdReg').AsInteger = 0 then begin

                 if fMsg('Confirma a Exclusão do Pedido ?','S') then begin

                    CmpPed.Delete;

                    with CmpPed do begin

                         fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                         try

                            ApplyUpdates; {Tenta aplicar as alterações};

                            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                         except

                            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                            if CmpPed.State <> dsBrowse then CmpPed.CancelUpdates;

                            grPed.SetFocus;

                            raise;

                         end;

                         CommitUpdates; {sucesso!, limpa o cache...}

                    end;

                    CmpPed.Close;
                    CmpPed.Open;

                    grPed.SetFocus;

                 end;

                 end
              else
                 fmsgErro('já Existem Recebimentos Realizados para o Pedido de Compra.',Nil);
                 
           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManPfo.bImprimirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if CmpPedId_CmpPed.Value > 0 then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManPed then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe um Pedido em Andamento.','E');

        fmManPed.WindowState := wsNormal;
        fmManPed.BringToFront;

        end
     else
        begin

        Id_CmpPed := CmpPedId_CmpPed.Value;

        sFiltro := ' and CmpPed.Id_CmpPed = '+ QuotedStr(IntToStr(CmpPedId_CmpPed.Value));

        with CmpPed,SQL do begin

             Close;
             Text := sBase + sFiltro;
             Open;

        end;

        if CmpPedId_CmpPed.Value > 0 then begin

           if Trim(CmpPedSitPed.Value) <> 'Nao Concluido' then begin

              if fMsg('Confirma a impressão da via interna do pedido de compra ?','O') then begin

                 if Trim(CmpPedSitPed.Value) = 'Recebido Parcialmente' then begin

                    if fMsg('Imprimir somente o saldo do pedido ?','O') then begin

                       try

                          fmManE03 := TfmManE03.Create(Self);

                          fmManE03.CmpPed.Close;
                          fmManE03.CmpPed.Params[0].AsInteger := CmpPedId_CmpPed.Value;
                          fmManE03.CmpPed.Open;

                          fmManE03.RLReport1.PreviewModal;

                       finally

                          FreeAndNil(fmManE03);

                       end;
                                           
                       end
                    else
                       begin

                       try

                          fmManE01 := TfmManE01.Create(Self);

                          fmManE01.CmpPed.Close;
                          fmManE01.CmpPed.Params[0].AsInteger := CmpPedId_CmpPed.Value;
                          fmManE01.CmpPed.Open;

                          fmManE01.RLReport1.PreviewModal;

                       finally

                          FreeAndNil(fmManE01);

                       end;
                    end;

                    end
                 else
                    begin

                    try

                       fmManE01 := TfmManE01.Create(Self);

                       fmManE01.CmpPed.Close;
                       fmManE01.CmpPed.Params[0].AsInteger := CmpPedId_CmpPed.Value;
                       fmManE01.CmpPed.Open;

                       fmManE01.RLReport1.PreviewModal;

                    finally

                       FreeAndNil(fmManE01);

                    end;
                 end;
              end;

              if fMsg('Confirma a impressão da via fornecedor do pedido de compra ?','O') then begin

                 if Trim(CmpPedSitPed.Value) = 'Recebido Parcialmente' then begin

                    if fMsg('Imprimir somente o saldo do pedido ?','O') then begin

                       try

                          fmManE04 := TfmManE04.Create(Self);

                          fmManE04.CmpPed.Close;
                          fmManE04.CmpPed.Params[0].AsInteger := CmpPedId_CmpPed.Value;
                          fmManE04.CmpPed.Open;

                          fmManE04.RLReport1.PreviewModal;

                       finally

                          FreeAndNil(fmManE04);

                       end;

                       end
                    else
                       begin
                       
                       try

                          fmManE02 := TfmManE02.Create(Self);

                          fmManE02.CmpPed.Close;
                          fmManE02.CmpPed.Params[0].AsInteger := CmpPedId_CmpPed.Value;
                          fmManE02.CmpPed.Open;

                          fmManE02.RLReport1.PreviewModal;

                       finally

                          FreeAndNil(fmManE02);

                       end;
                    end;

                    end
                 else
                    begin

                    try

                       fmManE02 := TfmManE02.Create(Self);

                       fmManE02.CmpPed.Close;
                       fmManE02.CmpPed.Params[0].AsInteger := CmpPedId_CmpPed.Value;
                       fmManE02.CmpPed.Open;

                       fmManE02.RLReport1.PreviewModal;

                    finally

                       FreeAndNil(fmManE02);

                    end;
                 end;
              end;
                 
              end
           else
              fmsgErro('Operação não pode ser realizada. Pedido não concluido.',Nil);
              
        end;
     end;
  end;
end;

procedure TfmManPfo.bFinalizarClick(Sender: TObject);
var
  i      : Integer;
  Found  : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpPedId_CmpPed.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManPed then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe um Pedido em Andamento.','E');

           fmManPed.WindowState := wsNormal;
           fmManPed.BringToFront;

           end
        else
           begin

           Id_CmpPed := CmpPedId_CmpPed.Value;

           sFiltro := ' and CmpPed.Id_CmpPed = '+ QuotedStr(IntToStr(CmpPedId_CmpPed.Value));

           with CmpPed,SQL do begin

                Close;
                Text := sBase + sFiltro;
                Open;

           end;

           if CmpPedId_CmpPed.Value > 0 then begin

              if Trim(CmpPedSitPed.Value) <> 'Saldo Nao Atendido' then begin

                 try

                    fmManFpe := TfmManFpe.Create(Self);

                    fmManFpe.CmpPed.Close;
                    fmManFpe.CmpPed.Params[0].AsInteger := CmpPedId_CmpPed.Value;
                    fmManFpe.CmpPed.Open;

                    fmManFpe.ShowModal;

                 finally

                    FreeAndNil(fmManFpe);

                 end;

                 CmpPed.Close;
                 CmpPed.Open;

              end;
           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManPfo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #6 then begin {Vencimentos Ctrl+F}

     Id_CmpPed := CmpPedId_CmpPed.Value;

     sFiltro := ' and CmpPed.Id_CmpPed = '+ QuotedStr(IntToStr(CmpPedId_CmpPed.Value));

     with CmpPed,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;

     if CmpPedId_CmpPed.Value > 0 then begin

        try

           fmManPra := TfmManPra.Create(Self);

           fmManPra.CmpPed.Close;
           fmManPra.CmpPed.Params[0].AsInteger := CmpPedId_CmpPed.Value;
           fmManPra.CmpPed.Open;

           fmManPra.CmpPe5.Close;
           fmManPra.CmpPe5.Params[0].AsInteger := CmpPedId_CmpPed.Value;
           fmManPra.CmpPe5.Open;

           fmManPra.ShowModal;

        finally

           FreeAndNil(fmManPra);

        end;

        CmpPed.Close;
        CmpPed.Open;

     end;
  end;
end;

procedure TfmManPfo.DsPe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnTotMka.Caption := 'Markup do Item '+FormatFloat('##0.00',CmpPe2TotRen.Value)+' %';
end;

procedure TfmManPfo.FormClose(Sender: TObject; var Action: TCloseAction);
var
i     : Integer;
Found : integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManPed then Found := i;

  end;

  if Found >= 0 then
     fmsgErro('Existem Pedidos em Andamento. Por Favor Feche o Formulario.',Nil)
  else
     Action := CaFree;

end;

procedure TfmManPfo.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPfo := nil;
end;

procedure TfmManPfo.CmpPe2CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if Trim( CmpPe2CodClp.Value ) <> '' then
     Text := CmpPe2CodClp.Value+ '-' +CmpPe2CodGru.Value+ '.' +CmpPe2CodSub.Value+ '.' +CmpPe2CodPro.Value
  else
     Text := '';
end;

end.
