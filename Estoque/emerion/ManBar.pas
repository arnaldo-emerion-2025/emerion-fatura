unit ManBar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr,
  dxEdLib, dxDBELib, Db, Wwdatsrc, DBTables, Wwquery, dxEditor, StdCtrls,
  dxDBColorCurrencyEdit, dxDBColorEdit, dxDBEdtr, dxDBColorLookupEdit;

type
  TfmManBar = class(TForm)
    PaintBox: TPaintBox;
    grPro: TdxDBGraphicEdit;
    grBar: ThGrid;
    EstBar: TwwQuery;
    DsBar: TwwDataSource;
    UpBar: TUpdateSQL;
    quSQL: TwwQuery;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    EstBarCODCLP: TStringField;
    EstBarCODGRU: TStringField;
    EstBarCODSUB: TStringField;
    EstBarCODPRO: TStringField;
    EstBarSEQBAR: TIntegerField;
    EstBarCODBAR: TStringField;
    EstBarNROBAR: TIntegerField;
    Panel1: TPanel;
    EdCodBar: TdxDBColorEdit;
    EstBarFLGINT: TStringField;
    EstBarQTDEMB: TFloatField;
    Label2: TLabel;
    EdQtdEmb: TdxDBColorCurrencyEdit;
    Label3: TLabel;
    EdFlgInt: TdxDBCheckEdit;
    StoredProcedure: TStoredProc;
    EstBarTIPEMB: TStringField;
    EstBarCODEMB: TStringField;
    EstBarCUBEMB: TFloatField;
    pnLinha: TLabel;
    EdCubEmb: TdxDBColorCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    EstBarPESEMB: TFloatField;
    EstBarNOMEMB: TStringField;
    EstEmb: TwwQuery;
    EstEmbCODEMB: TStringField;
    EstEmbNOMEMB: TStringField;
    DsEmb: TwwDataSource;
    CbNomEmb: TdxDBColorLookupEdit;
    EdPesEmb: TdxDBColorCurrencyEdit;
    Label4: TLabel;
    EstBarDESEMB: TStringField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure grBarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EstBarNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodBarExit(Sender: TObject);
    procedure grBarDrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure EdCodBarEnter(Sender: TObject);
    procedure grBarEnter(Sender: TObject);
    procedure EdCodEmbEnter(Sender: TObject);
    procedure EdCodEmbKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EstBarDESEMBGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    {Private declarations}
  public
    {Public declarations}
    CodClp,CodGru,CodSub,CodPro: string;
  end;

var
  fmManBar: TfmManBar;

implementation

uses dxDemoUtils, Bbfuncao, Bbgeral, Bbmensag, ManGDB, ManPro, PsqEmb;

{$R *.DFM}

procedure TfmManBar.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManBar.grBarKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
SeqBar : integer;
begin
  if key = 13 then begin {Tecla - ENTER}

     if Trim(EstBarCodBar.Value) <> '' then begin
     
        if EstBarFlgInt.Value = 'Nao' then begin

           EdCodBar.Enabled := True;
           CbNomEmb.Enabled := True;        
           EdQtdEmb.Enabled := True;
           EdCubEmb.Enabled := True;
           EdPesEmb.Enabled := True;

           EdCodBar.SetFocus;

           end
        else
           begin

           CbNomEmb.Enabled := True;
           EdQtdEmb.Enabled := True;
           EdCubEmb.Enabled := True;
           EdPesEmb.Enabled := True;

           CbNomEmb.SetFocus;

        end;
     end;   
  end;

  if key = 40 then begin {Tecla - Seta para Baixo}

     if EstBarNroBar.Value = fmManPro.EstProQtdBar.Value then EstBar.Append;

  end;

  if key = 46 then begin {Tecla - DEL}

     if EstBarSeqBar.Value > 0 then begin

        if EstBarFlgInt.Value = 'Nao' then begin
        
           SeqBar := EstBarSeqBar.Value;

           EstBar.Delete;

           with EstBar do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if EstBar.State <> dsBrowse then EstBar.CancelUpdates;

                   grBar.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           EstBar.Close;
           EstBar.Open;

           fmManPro.EstPro.Close;
           fmManPro.EstPro.Open;

           fmManPro.EstPro.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([CodClp,CodGru,CodSub,CodPro]),[LoPartialKey]);

           if SeqBar < fmManPro.EstProQtdBar.Value then
              EstBar.Locate('SeqBar',VarArrayOf([SeqBar]),[LoPartialKey])
           else
              begin

              if fmManPro.EstProQtdBar.Value = 0 then
                 EstBar.Append
              else
                 EstBar.Last;

           end;

           end
        else
           fmsgErro('Código não Pode ser Excluido.',Nil);
     end;
  end;
end;

procedure TfmManBar.EstBarNewRecord(DataSet: TDataSet);
begin

  EstBar.DisableControls;

  EstBarQtdEmb.Value := 1;
  EstBarPesEmb.Value := 0;
  EstBarCubEmb.Value := 0;    
  EstBarFlgInt.Value := 'Nao';
  EstBarCodClp.Value := fmManPro.EstProCodClp.Value;
  EstBarCodGru.Value := fmManPro.EstProCodGru.Value;
  EstBarCodSub.Value := fmManPro.EstProCodSub.Value;
  EstBarCodPro.Value := fmManPro.EstProCodPro.Value;
  EstBarSeqBar.Value := fmManPro.EstProSeqBar.Value + 1;
  EstBarNroBar.Value := fmManPro.EstProQtdBar.Value + 1;

  EstBar.EnableControls;

  EdCodBar.Enabled := True;
  CbNomEmb.Enabled := True;
  EdQtdEmb.Enabled := True;
  EdCubEmb.Enabled := True;
  EdPesEmb.Enabled := True;
  EdFlgInt.Enabled := True;

  EdCodBar.SetFocus;

end;

procedure TfmManBar.FormShow(Sender: TObject);
begin
  grBar.SetFocus;
end;

procedure TfmManBar.Panel1Exit(Sender: TObject);
var
SeqBar,sCodBar : integer;
begin
  if EstBar.State <> dsBrowse then begin

     EstBarCodBar.Value := Trim(EstBarCodBar.Value);
     EstBarCodEmb.Value := Trim(EstBarCodEmb.Value);

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstEmb Where EstEmb.CodEmb = '+ QuotedStr( EstBarCodEmb.Value );
          Open;

     end;

     if quSQL.FieldbyName('QtdReg').AsInteger > 0 then begin

        if fmManPro.EstParLanCba.Value = 'Sim' then begin

           if fmManPro.EstParTipEan.Value = 'Itens' then begin

              if Trim( fmManPro.EstParIniEan.Value ) <> '' then begin

                 if EstBarFlgInt.Value = 'Sim' then begin

                    if Trim( EstBarCodBar.Value ) = '' then begin

                       if fmManGDB.dbMain.InTransaction then fmManGDB.dbMain.Rollback;

                       fmManGDB.dbMain.StartTransaction;

                       with StoredProcedure do begin

                            ParamByName('SEQOPE').AsInteger := 1;
                            Close;
                            Prepare;
                            ExecProc;
                            Unprepare;

                            if ParamByName('RETORNO').Value <> null then begin

                               sCodBar := ParamByName('RETORNO').Value;

                               fmManGDB.dbMain.Commit;

                               end
                            else
                               fmManGDB.dbMain.Rollback;

                       end;

                       if sCodBar > 0 then begin

                          if Length(Trim(fmManPro.EstParIniEan.Value)) = 9 then
                             EstBarCodBar.Value := fGeraCB2(fmManPro.EstParIniEan.Value+fNumZeros(IntToStr(sCodBar),3))
                          else
                             EstBarCodBar.Value := fGeraCB2(fmManPro.EstParIniEan.Value+fNumZeros(IntToStr(sCodBar),5));

                       end;      
                    end;
                 end;
              end;
           end;      
        end;

        if Trim( EstBarCodBar.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodBar);

        if EstBar.State = dsInsert then begin

           with EstBar do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if EstBar.State = dsBrowse then EstBar.Edit;

                   if EdCodBar.Enabled then
                      EdCodBar.SetFocus
                   else
                      EdQtdEmb.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           EstBar.Close;
           EstBar.Open;

           fmManPro.EstPro.Close;
           fmManPro.EstPro.Open;

           fmManPro.EstPro.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([CodClp,CodGru,CodSub,CodPro]),[LoPartialKey]);
        
           EstBar.Append;

           EdCodBar.SetFocus;

           end
        else
           begin

           SeqBar := EstBarSeqBar.Value;

           with EstBar do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if EstBar.State = dsBrowse then EstBar.Edit;

                   if EdCodBar.Enabled then
                      EdCodBar.SetFocus
                   else
                      EdQtdEmb.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           EstBar.Close;
           EstBar.Open;

           fmManPro.EstPro.Close;
           fmManPro.EstPro.Open;

           if SeqBar > 0 then EstBar.Locate('SeqBar',SeqBar,[LoPartialKey]);

           fmManPro.EstPro.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([CodClp,CodGru,CodSub,CodPro]),[LoPartialKey]);

           if EstBarSeqBar.Value = fmManPro.EstProQtdBar.Value then
              EstBar.Append
           else
              begin

              EstBar.Next;

              EdCodBar.Enabled := False;
              CbNomEmb.Enabled := False;
              EdQtdEmb.Enabled := False;
              EdCubEmb.Enabled := False;
              EdPesEmb.Enabled := False;
              EdFlgInt.Enabled := False;

              grBar.SetFocus;

           end;
        end;

        end
     else
        fmsgErro('Tipo de Embalagem Informado não Encontrado.',CbNomEmb);
        
     end
  else
     begin

     EdCodBar.Enabled := False;
     CbNomEmb.Enabled := False;
     EdQtdEmb.Enabled := False;
     EdCubEmb.Enabled := False;
     EdPesEmb.Enabled := False;
     EdFlgInt.Enabled := False;

     grBar.SetFocus;

  end;        
end;

procedure TfmManBar.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then begin

     if EdCodBar.Enabled then begin

        EstBar.CancelUpdates;

        EdCodBar.Enabled := False;
        CbNomEmb.Enabled := False;
        EdQtdEmb.Enabled := False;
        EdCubEmb.Enabled := False;
        EdPesEmb.Enabled := False;        
        EdFlgInt.Enabled := False;
        
        grBar.SetFocus;

        end
     else
        Close;

  end;

  if (key = 40) or (key = 38) then begin

     if not ( ActiveControl is TdxDBLookupEdit ) then begin

        if key = 40 then
           Perform(Wm_NextDlgCtl,0,0)
        else
           Perform(Wm_NextDlgCtl,1,0);

     end;
           
     end
  else
     begin

     if key = 13 then Perform(Wm_NextDlgCtl,0,0);

  end;
end;

procedure TfmManBar.EdCodBarExit(Sender: TObject);
begin

  EdCodBar.Color := $00FCF4ED;

  if Tecla = 'UP' then begin

     if fmManPro.EstProQtdBar.Value > 0 then begin

        EdCodBar.Enabled := False;
        CbNomEmb.Enabled := False;
        EdQtdEmb.Enabled := False;
        EdCubEmb.Enabled := False;
        EdPesEmb.Enabled := False;        
        EdFlgInt.Enabled := False;

        if EstBar.State <> dsBrowse then
           EstBar.CancelUpdates
        else
           begin

           if not EstBar.BOF then EstBar.Prior;

        end;

        grBar.SetFocus;

        end
     else
        EdCodBar.SetFocus;
        
  end;
end;

procedure TfmManBar.grBarDrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if gdSelected in State then begin

     with (Sender as ThGrid).Canvas do begin

          Font.Color := clWhite;

          FillRect(Rect);

     end;

     end
  else
     begin

     if EstBar.FieldbyName('FlgInt').AsString = 'Sim' then begin

        with (Sender as ThGrid).Canvas do begin

             Font.Color := clRed;

             FillRect(Rect);

        end;
     end;
  end;

  (Sender as ThGrid).DefaultDrawDataCell(Rect, Field, State);

end;

procedure TfmManBar.EdCodBarEnter(Sender: TObject);
begin
  EdCodBar.Color  := clInfobk;
  pnLinha.Caption := ' ';
end;

procedure TfmManBar.grBarEnter(Sender: TObject);
begin
  pnLinha.Caption := 'Seta para Baixo - Inserir Novo Código  DEL - Excluir Código Cadastrado';
end;

procedure TfmManBar.EdCodEmbEnter(Sender: TObject);
begin
  pnLinha.Caption := 'F1 - Buscar Tipo de Embalagem Cadastrado';
end;

procedure TfmManBar.EdCodEmbKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 112 then begin

     try

        fmPsqEmb := TfmPsqEmb.Create(Self);
        fmPsqEmb.ShowModal;

        if Trim( fmPsqEmb.CodEmb ) <> '' then EstBarCodEmb.Value := fmPsqEmb.CodEmb;

     finally

        FreeAndNil(fmPsqEmb);

     end;  
  end;
end;

procedure TfmManBar.EstBarDESEMBGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if Trim(EstBarCodClp.Value) <> '' then
     Text := EstBarCodEmb.Value+ ' - ' +EstBarNomEmb.Value
  else
     Text := '';
end;

end.
