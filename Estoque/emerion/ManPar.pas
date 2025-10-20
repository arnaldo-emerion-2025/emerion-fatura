unit ManPar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, StdCtrls, ExtCtrls, hNavigator, Db, DBTables, Wwquery, Mask,
  DBCtrls, hEdits, wwdblook, Buttons, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, dxDBEdtr, dxDBColorEdit, dxDBColorPickEdit, dxColorEdit;

type
  TfmManPar = class(TfmPadrao)
    EstPar: TwwQuery;
    DsPar: TDataSource;
    UpPar: TUpdateSQL;
    EstParTAMCOR: TStringField;
    EstParFLGIPI: TStringField;
    EstParFLGTAM: TStringField;
    EstParFLGNEG: TStringField;
    PaintBox: TPaintBox;
    Label10: TLabel;
    Bevel1: TBevel;
    Label6: TLabel;
    Label1: TLabel;
    Label23: TLabel;
    EdFlgTam: TdxDBColorPickEdit;
    EdTamCor: TdxDBColorPickEdit;
    EdFlgNeg: TdxDBColorPickEdit;
    Label25: TLabel;
    Label24: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    EdFlgIpi: TdxDBColorPickEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BbConf: TBitBtn;
    BbCanc: TBitBtn;
    Label02: TLabel;
    Bevel03: TBevel;
    Label08: TLabel;
    EdFlgAnt: TdxDBColorPickEdit;
    Label09: TLabel;
    Label11: TLabel;
    EstParFLGANT: TStringField;
    Label8: TLabel;
    Bevel3: TBevel;
    Label9: TLabel;
    EdFlgTab: TdxDBColorPickEdit;
    EstParFLGTAB: TStringField;
    Label12: TLabel;
    Bevel4: TBevel;
    EdOpeEnt: TdxDBColorEdit;
    Label13: TLabel;
    EdOpeSda: TdxDBColorEdit;
    Label14: TLabel;
    EstParOPEENT: TStringField;
    EstParOPESDA: TStringField;
    bPsqCat: TSpeedButton;
    bPsqTip: TSpeedButton;
    EstParLANTAB: TStringField;
    EstParATUVCR: TStringField;
    EstParLANMIN: TStringField;
    EstParATUPRC: TStringField;
    Label2: TLabel;
    Bevel5: TBevel;
    Label15: TLabel;
    EdLanCba: TdxDBColorPickEdit;
    EstParLANCBA: TStringField;
    EstParATUREF: TStringField;
    EstParATUMSU: TStringField;
    EstParFLGOBS: TStringField;
    EstParGERNEG: TStringField;
    EstParCBAINT: TStringField;
    EstParATUFAT: TStringField;
    EstParTIPEAN: TStringField;
    Label16: TLabel;
    EdIniEan: TdxDBColorEdit;
    Label17: TLabel;
    EdTipEan: TdxDBColorPickEdit;
    EdDesEnt: TdxColorEdit;
    EdDesSda: TdxColorEdit;
    quSql: TwwQuery;
    Label18: TLabel;
    EdSeqBar: TdxColorEdit;
    StoredProcedure: TStoredProc;
    EstParEXICBA: TStringField;
    EstParRESNEG: TStringField;
    EstParLIBEAN: TStringField;
    EstParLANPON: TStringField;
    EstParINIEAN: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BbConfClick(Sender: TObject);
    procedure BbCancClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdOpeEntExit(Sender: TObject);
    procedure EdOpeSdaExit(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPar: TfmManPar;

implementation

uses dxDemoUtils, BbMensag, ManGDB, ManPri, PsqOpe;

{$R *.DFM}

procedure TfmManPar.FormShow(Sender: TObject);
begin
  inherited;

  fmManGDB.dbMain.StartTransaction;

  with StoredProcedure do begin

       ParamByName('SEQOPE').AsInteger := 0;
       Close;
       Prepare;
       ExecProc;
       Unprepare;

       if ParamByName('RETORNO').Value <> null then begin

          EdSeqBar.Text := IntToStr(ParamByName('RETORNO').Value);

          fmManGDB.dbMain.Commit;

          end
       else
          fmManGDB.dbMain.Rollback;

  end;

  EstPar.Edit;

  if Trim( EstParOpeEnt.Value ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select * From EstOpe '+
                  ' Where CodOpe = :CodOpe'+
                  '   and TipOpe = :TipOpe';

          with Params do begin

               Params[0].AsString := EstParOpeEnt.Value;
               Params[1].AsString := 'E';

          end;

          Open;
         
          EdDesEnt.Text := quSql.FieldByName('NomOpe').AsString

     end;
  end;

  if Trim( EstParOpeSda.Value ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select * From EstOpe '+
                  ' Where CodOpe = :CodOpe'+
                  '   and TipOpe = :TipOpe';

          with Params do begin

               Params[0].AsString := EstParOpeSda.Value;
               Params[1].AsString := 'S';

          end;

          Open;

          EdDesSda.Text := quSql.FieldByName('NomOpe').AsString

     end;
  end;

  EdFlgTam.SetFocus;

end;

procedure TfmManPar.BbConfClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if fMsg('Confirma Alterações','S') then begin

        if Trim(EstParLanCba.Value) = 'Sim' then begin

           if Length(Trim(EstParIniEan.Value)) < 7 then
              fmsgErro('Quantidade de Números para Sequência EAN 13 esta Menor do que 7 Caracteres.',EdIniEan);

        end;

        EstPar.ApplyUpdates;
        EstPar.CommitUpdates;

        EstPar.Edit;

        EdFlgTam.SetFocus;

     end;

     end
  else
     fmsgErro(GMensagem,Nil);
     
end;

procedure TfmManPar.BbCancClick(Sender: TObject);
begin
  inherited;

  EstPar.CancelUpdates;

  Close;

end;

procedure TfmManPar.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPar.FormCreate(Sender: TObject);
begin
  inherited;
  if GUsu_Id <> 999 then begin

     Label02.Visible := False;
     Label08.Visible := False;
     Label09.Visible := False;
     Label11.Visible := False;
     Bevel03.Visible := False;

     EdFlgAnt.Visible := False;

  end;
end;

procedure TfmManPar.bPsqTipClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqOpe := TfmPsqOpe.Create(Self);

     fmPsqOpe.EstOpe.Close;
     fmPsqOpe.EstOpe.Params[0].AsString := 'S';
     fmPsqOpe.EstOpe.Open;

     fmPsqOpe.ShowModal;

     if Trim( fmPsqOpe.CodOpe ) <> '' then begin

        EstParOpeSda.Value := fmPsqOpe.CodOpe;

        EdDesEnt.Text := fmPsqOpe.NomOpe;

     end;

  finally   

     FreeAndNil(fmPsqOpe);

  end;
  
  EdOpeSda.SetFocus;

end;

procedure TfmManPar.bPsqCatClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqOpe := TfmPsqOpe.Create(Self);

     fmPsqOpe.EstOpe.Close;
     fmPsqOpe.EstOpe.Params[0].AsString := 'E';
     fmPsqOpe.EstOpe.Open;

     fmPsqOpe.ShowModal;

     if Trim( fmPsqOpe.CodOpe ) <> '' then begin

        EstParOpeEnt.Value := fmPsqOpe.CodOpe;

        EdDesEnt.Text := fmPsqOpe.NomOpe;

     end;
     
  finally   

     FreeAndNil(fmPsqOpe);

  end;
  
  EdOpeEnt.SetFocus;

end;

procedure TfmManPar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManPar.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPar := Nil;
end;

procedure TfmManPar.EdOpeEntExit(Sender: TObject);
begin
  inherited;
  if Trim( EdOpeEnt.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select * From EstOpe '+
                  ' Where CodOpe = :CodOpe'+
                  '   and TipOpe = :TipOpe';

          with Params do begin

               Params[0].AsString := EdOpeEnt.Text;
               Params[1].AsString := 'E';

          end;

          Open;
         
     end;

     if Trim( quSql.FieldByName('CodOpe').AsString ) <> '' then
        EdDesEnt.Text := quSql.FieldByName('NomOpe').AsString
     else
        fmsgErro('Operação Informada não Encontrada.',EdOpeEnt);

     end
  else
     EdDesEnt.Text := '';
end;

procedure TfmManPar.EdOpeSdaExit(Sender: TObject);
begin
  inherited;
  if Trim( EdOpeSda.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select * From EstOpe '+
                  ' Where CodOpe = :CodOpe'+
                  '   and TipOpe = :TipOpe';

          with Params do begin

               Params[0].AsString := EdOpeSda.Text;
               Params[1].AsString := 'S';

          end;

          Open;
         
     end;

     if Trim( quSql.FieldByName('CodOpe').AsString ) <> '' then
        EdDesSda.Text := quSql.FieldByName('NomOpe').AsString
     else
        fmsgErro('Operação Informada não Encontrada.',EdOpeSda);

     end
  else
     EdDesSda.Text := '';
end;

end.
