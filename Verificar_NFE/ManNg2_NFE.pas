unit ManNg2_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, FShowpadrao, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit;

type
  TfmManNg2_NFE = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label10: TLabel;
    Label8: TLabel;
    bRetornar: TSpeedButton;
    bContinuar: TSpeedButton;
    EdOb8Ger: TdxDBColorEdit;
    EdOb7Ger: TdxDBColorEdit;
    EdOb6Ger: TdxDBColorEdit;
    EdOb5Ger: TdxDBColorEdit;
    EdOb4Ger: TdxDBColorEdit;
    EdOb3Ger: TdxDBColorEdit;
    EdOb2Ger: TdxDBColorEdit;
    EdOb1Ger: TdxDBColorEdit;
    quSql1: TwwQuery;
    quSql2: TwwQuery;
    procedure FormShow(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPraPe3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManNg2_NFE: TfmManNg2_NFE;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManNge_NFE, ManNg3_NFE, ManIng_NFE;

{$R *.DFM}

procedure TfmManNg2_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManNg2_NFE.FormShow(Sender: TObject);
var
DscTxf : string;
SeqLin,SeqEnc : Integer;
ObsGer,Ob1Ger,Ob2Ger,Ob3Ger,Ob4Ger,Ob5Ger,Ob6Ger,Ob7Ger,Ob8Ger,sCaractere : string;
begin
  inherited;

  fmManNge_NFE.FatGer.Edit;

  SeqLin := 1;

  if Trim( fmManNge_NFE.FatGerOb1Ger.Value) = '' then begin

     Ob1Ger := '';
     Ob2Ger := '';
     Ob3Ger := '';
     Ob4Ger := '';
     Ob5Ger := '';
     Ob6Ger := '';
     Ob7Ger := '';
     Ob8Ger := '';

     with quSQL1,SQL do begin

          Close;
          Text := ' Select Distinct FatGe2.CodTxf'+
                  ' From FatGe2'+
                  ' Where FatGe2.CodEmp = :CodEmp'+
                  '   and FatGe2.DteGer = :DteGer'+
                  '   and FatGe2.NumGer = :NumGer';

          with Params do begin

               Params[0].AsInteger  := fmManNge_NFE.FatGerCodEmp.Value;
               Params[1].AsDateTime := fmManNge_NFE.FatGerDteGer.Value;
               Params[2].AsInteger  := fmManNge_NFE.FatGerNumGer.Value;

          end;

          Open;

     end;

     if Trim( quSQL1.FieldbyName('CodTxf').AsString ) <> '' then begin

        while not quSQL1.EOF do begin

              with quSQL2,SQL do begin

                   Text := ' Select Distinct FatGe2.ClsIpi'+
                           ' From FatGe2'+
                           ' Where FatGe2.CodEmp = :CodEmp'+
                           '   and FatGe2.DteGer = :DteGer'+
                           '   and FatGe2.NumGer = :NumGer'+
                           '   and FatGe2.CodTxf = :CodTxf';

                   with Params do begin

                        Params[0].AsInteger  := fmManNge_NFE.FatGerCodEmp.Value;
                        Params[1].AsDateTime := fmManNge_NFE.FatGerDteGer.Value;
                        Params[2].AsInteger  := fmManNge_NFE.FatGerNumGer.Value;
                        Params[3].AsString   := quSQL1.FieldbyName('CodTxf').AsString;

                   end;

                   Open;

              end;

              if Trim( quSQL2.FieldbyName('ClsIpi').AsString ) <> '' then begin

                 sCaractere := ' ';

                 while not quSQL2.EOF do begin

                       if SeqLin = 1 then begin

                          if (80 - Length(Ob1Ger)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob1Ger) = '' then
                                Ob1Ger := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                             else
                                Ob1Ger := Ob1Ger+ sCaractere +Trim(quSQL2.FieldbyName('ClsIpi').AsString);

                          end;
                       end;

                       if SeqLin = 2 then begin

                          if (80 - Length(Ob2Ger)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob2Ger) = '' then
                                Ob2Ger := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                             else
                                Ob2Ger := Ob2Ger+ sCaractere +Trim(quSQL2.FieldbyName('ClsIpi').AsString);
                                
                          end;
                       end;
                       
                       if SeqLin = 3 then begin

                          if (80 - Length(Ob3Ger)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob3Ger) = '' then
                                Ob3Ger := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                             else
                                Ob3Ger := Ob3Ger+ sCaractere +Trim(quSQL2.FieldbyName('ClsIpi').AsString);
                                
                          end;
                       end;

                       if SeqLin = 4 then begin
                       
                          if (80 - Length(Ob4Ger)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob4Ger) = '' then
                                Ob4Ger := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                             else
                                Ob4Ger := Ob4Ger+ sCaractere +Trim(quSQL2.FieldbyName('ClsIpi').AsString);

                          end;
                       end;

                       if SeqLin = 5 then begin

                          if (80 - Length(Ob5Ger)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob5Ger) = '' then
                                Ob5Ger := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                             else
                                Ob5Ger := Ob5Ger+ sCaractere +Trim(quSQL2.FieldbyName('ClsIpi').AsString);
                                
                          end;
                       end;

                       if SeqLin = 6 then begin

                          if (80 - Length(Ob6Ger)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob6Ger) = '' then
                                Ob6Ger := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                             else
                                Ob6Ger := Ob6Ger+ sCaractere +Trim(quSQL2.FieldbyName('ClsIpi').AsString);
                                
                          end;
                       end;

                       if SeqLin = 7 then begin

                          if (80 - Length(Ob7Ger)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob7Ger) = '' then
                                Ob7Ger := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                             else
                                Ob7Ger := Ob7Ger+ sCaractere +Trim(quSQL2.FieldbyName('ClsIpi').AsString);
                                
                          end;
                       end;

                       if SeqLin = 8 then begin

                          if (80 - Length(Ob8Ger)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob8Ger) = '' then
                                Ob8Ger := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                             else
                                Ob8Ger := Ob8Ger+ sCaractere +Trim(quSQL2.FieldbyName('ClsIpi').AsString);

                          end;
                       end;

                       quSQL2.Next;

                       sCaractere := '/';

                 end;

                 if SeqLin = 1 then Ob1Ger := Ob1Ger+' ';
                 if SeqLin = 2 then Ob2Ger := Ob2Ger+' ';
                 if SeqLin = 3 then Ob3Ger := Ob3Ger+' ';
                 if SeqLin = 4 then Ob4Ger := Ob4Ger+' ';
                 if SeqLin = 5 then Ob5Ger := Ob5Ger+' ';
                 if SeqLin = 6 then Ob6Ger := Ob6Ger+' ';
                 if SeqLin = 7 then Ob7Ger := Ob7Ger+' ';
                 if SeqLin = 8 then Ob8Ger := Ob8Ger+' ';

                 with quSQL2,SQL do begin

                      Text := ' Select EstTxf.DscTxf'+
                              ' From EstTxf'+
                              ' Where EstTxf.CodTxf = :CodTxf';

                      with Params do begin

                           Params[0].AsString := quSQL1.FieldbyName('CodTxf').AsString;

                      end;

                      Open;

                      DscTxf := Trim( FieldbyName('DscTxf').AsString );

                 end;

                 SeqEnc := 1;
                 
                 while SeqEnc = 1 do begin

                       if pos(' ',DscTxf) > 0 then
                          ObsGer := copy(DscTxf,1,(pos(' ',DscTxf)-1))
                       else
                          ObsGer := DscTxf;

                       if SeqLin = 1 then begin

                          if (80 - Length(Ob1Ger)) < (Length(ObsGer) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob1Ger) = '' then
                                Ob1Ger := ObsGer
                             else
                                Ob1Ger := Ob1Ger+ ' ' +ObsGer;
                                
                          end;
                       end;

                       if SeqLin = 2 then begin

                          if (80 - Length(Ob2Ger)) < (Length(ObsGer) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob2Ger) = '' then
                                Ob2Ger := ObsGer
                             else
                                Ob2Ger := Ob2Ger+ ' ' +ObsGer;

                          end;
                       end;

                       if SeqLin = 3 then begin

                          if (80 - Length(Ob3Ger)) < (Length(ObsGer) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob3Ger) = '' then
                                Ob3Ger := ObsGer
                             else
                                Ob3Ger := Ob3Ger+ ' ' +ObsGer;

                          end;
                       end;

                       if SeqLin = 4 then begin

                          if (80 - Length(Ob4Ger)) < (Length(ObsGer) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob4Ger) = '' then
                                Ob4Ger := ObsGer
                             else
                                Ob4Ger := Ob4Ger+ ' ' +ObsGer;
                                
                          end;
                       end;

                       if SeqLin = 5 then begin

                          if (80 - Length(Ob5Ger)) < (Length(ObsGer) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob5Ger) = '' then
                                Ob5Ger := ObsGer
                             else
                                Ob5Ger := Ob5Ger+ ' ' +ObsGer;
                                
                          end;
                       end;

                       if SeqLin = 6 then begin

                          if (80 - Length(Ob6Ger)) < (Length(ObsGer) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob6Ger) = '' then
                                Ob6Ger := ObsGer
                             else
                                Ob6Ger := Ob6Ger+ ' ' +ObsGer;

                          end;
                       end;

                       if SeqLin = 7 then begin

                          if (80 - Length(Ob7Ger)) < (Length(ObsGer) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob7Ger) = '' then
                                Ob7Ger := ObsGer
                             else
                                Ob7Ger := Ob7Ger+ ' ' +ObsGer;
                                
                          end;
                       end;

                       if SeqLin = 8 then begin

                          if (80 - Length(Ob8Ger)) < (Length(ObsGer) + 1) then
                             Inc(SeqLin)
                          else
                             begin

                             if Trim(Ob8Ger) = '' then
                                Ob8Ger := ObsGer
                             else
                                Ob8Ger := Ob8Ger+ ' ' +ObsGer;
                                
                          end;
                       end;
                          
                       if pos(' ',DscTxf) > 0 then
                          DscTxf := copy(DscTxf,(pos(' ',DscTxf)+ 1),(Length(DscTxf) - pos(' ',DscTxf)))
                       else
                          SeqEnc := 0;

                 end;
              end;

              quSQL1.Next;

        end;
     end;

     if Trim( fmManNge_NFE.FatGerObsGer.Value ) <> '' then begin

        DscTxf := fmManNge_NFE.FatGerObsGer.Value;

        SeqEnc := 1;
        
        while SeqEnc = 1 do begin

              if pos(' ',DscTxf) > 0 then
                 ObsGer := copy(DscTxf,1,(pos(' ',DscTxf)-1))
              else
                 ObsGer := DscTxf;

              if SeqLin = 1 then begin

                 if (80 - Length(Ob1Ger)) < (Length(ObsGer) + 1) then
                    Inc(SeqLin)
                 else
                    begin

                    if Trim(Ob1Ger) = '' then
                       Ob1Ger := ObsGer
                    else
                       Ob1Ger := Ob1Ger+ ' ' +ObsGer;
                                
                 end;
              end;

              if SeqLin = 2 then begin

                 if (80 - Length(Ob2Ger)) < (Length(ObsGer) + 1) then
                    Inc(SeqLin)
                 else
                    begin

                    if Trim(Ob2Ger) = '' then
                       Ob2Ger := ObsGer
                    else
                       Ob2Ger := Ob2Ger+ ' ' +ObsGer;

                 end;
              end;

              if SeqLin = 3 then begin

                 if (80 - Length(Ob3Ger)) < (Length(ObsGer) + 1) then
                    Inc(SeqLin)
                 else
                    begin

                    if Trim(Ob3Ger) = '' then
                       Ob3Ger := ObsGer
                    else
                       Ob3Ger := Ob3Ger+ ' ' +ObsGer;

                 end;
              end;

              if SeqLin = 4 then begin

                 if (80 - Length(Ob4Ger)) < (Length(ObsGer) + 1) then
                    Inc(SeqLin)
                 else
                    begin

                    if Trim(Ob4Ger) = '' then
                       Ob4Ger := ObsGer
                    else
                       Ob4Ger := Ob4Ger+ ' ' +ObsGer;
                                
                 end;
              end;

              if SeqLin = 5 then begin

                 if (80 - Length(Ob5Ger)) < (Length(ObsGer) + 1) then
                    Inc(SeqLin)
                 else
                    begin

                    if Trim(Ob5Ger) = '' then
                       Ob5Ger := ObsGer
                    else
                       Ob5Ger := Ob5Ger+ ' ' +ObsGer;
                                
                 end;
              end;

              if SeqLin = 6 then begin

                 if (80 - Length(Ob6Ger)) < (Length(ObsGer) + 1) then
                    Inc(SeqLin)
                 else
                    begin

                    if Trim(Ob6Ger) = '' then
                       Ob6Ger := ObsGer
                    else
                       Ob6Ger := Ob6Ger+ ' ' +ObsGer;

                 end;
              end;

              if SeqLin = 7 then begin

                 if (80 - Length(Ob7Ger)) < (Length(ObsGer) + 1) then
                    Inc(SeqLin)
                 else
                    begin

                    if Trim(Ob7Ger) = '' then
                       Ob7Ger := ObsGer
                    else
                       Ob7Ger := Ob7Ger+ ' ' +ObsGer;
                                
                 end;
              end;

              if SeqLin = 8 then begin

                 if (80 - Length(Ob8Ger)) < (Length(ObsGer) + 1) then
                    Inc(SeqLin)
                 else
                    begin

                    if Trim(Ob8Ger) = '' then
                       Ob8Ger := ObsGer
                    else
                       Ob8Ger := Ob8Ger+ ' ' +ObsGer;
                                
                 end;
              end;

              if pos(' ',DscTxf) > 0 then
                 DscTxf := copy(DscTxf,(pos(' ',DscTxf)+ 1),(Length(DscTxf) - pos(' ',DscTxf)))
              else
                 SeqEnc := 0;

        end;
     end;

     fmManNge_NFE.FatGerOb1Ger.Value := Ob1Ger;
     fmManNge_NFE.FatGerOb2Ger.Value := Ob2Ger;
     fmManNge_NFE.FatGerOb3Ger.Value := Ob3Ger;
     fmManNge_NFE.FatGerOb4Ger.Value := Ob4Ger;
     fmManNge_NFE.FatGerOb5Ger.Value := Ob5Ger;
     fmManNge_NFE.FatGerOb6Ger.Value := Ob6Ger;
     fmManNge_NFE.FatGerOb7Ger.Value := Ob7Ger;
     fmManNge_NFE.FatGerOb8Ger.Value := Ob8Ger;

     EdOb1Ger.Text := fmManNge_NFE.FatGerOb1Ger.Value;
     EdOb2Ger.Text := fmManNge_NFE.FatGerOb2Ger.Value;
     EdOb3Ger.Text := fmManNge_NFE.FatGerOb3Ger.Value;
     EdOb4Ger.Text := fmManNge_NFE.FatGerOb4Ger.Value;
     EdOb5Ger.Text := fmManNge_NFE.FatGerOb5Ger.Value;
     EdOb6Ger.Text := fmManNge_NFE.FatGerOb6Ger.Value;
     EdOb7Ger.Text := fmManNge_NFE.FatGerOb7Ger.Value;
     EdOb8Ger.Text := fmManNge_NFE.FatGerOb8Ger.Value;

  end;

  EdOb1Ger.SetFocus;

end;

procedure TfmManNg2_NFE.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManNg2_NFE.bContinuarClick(Sender: TObject);
begin

  ActiveControl := nil;
  
  fmManNge_NFE.FatGerOb1Ger.Value := EdOb1Ger.Text;
  fmManNge_NFE.FatGerOb2Ger.Value := EdOb2Ger.Text;
  fmManNge_NFE.FatGerOb3Ger.Value := EdOb3Ger.Text;
  fmManNge_NFE.FatGerOb4Ger.Value := EdOb4Ger.Text;
  fmManNge_NFE.FatGerOb5Ger.Value := EdOb5Ger.Text;
  fmManNge_NFE.FatGerOb6Ger.Value := EdOb6Ger.Text;
  fmManNge_NFE.FatGerOb7Ger.Value := EdOb7Ger.Text;
  fmManNge_NFE.FatGerOb8Ger.Value := EdOb8Ger.Text;

  with fmManNge_NFE.FatGer do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManNge_NFE.FatGer.State = dsBrowse then fmManNge_NFE.FatGer.Edit;

          EdOb1Ger.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManNge_NFE.FatGer.Close;
  fmManNge_NFE.FatGer.Open;

  if fmManNge_NFE.FatGerIntFin.Value = 'Sim' then begin

     try

        fmManNg3_NFE := TfmManNg3_NFE.Create(Self);
        fmManNg3_NFE.ShowModal;

     finally

        FreeAndNil(fmManNg3_NFE);

     end;

     end
  else
     begin

     if fMsg('Imprime documento fiscal ?','S') then begin

        try

           fmManIng_NFE := TfmManIng_NFE.Create(Self);
           fmManIng_NFE.ShowModal;

        finally

           FreeAndNil(fmManIng_NFE);

        end;
     end;
  end;

  if fmManNge_NFE.Finalizar = 'S' then
     Close
  else
     begin

     fmManNge_NFE.FatGer.Edit;

     EdOb1Ger.SetFocus;

  end;
end;

procedure TfmManNg2_NFE.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManNg2_NFE.EdPraPe3KeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManNg2_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManNge_NFE.FatGer.State <> dsBrowse then fmManNge_NFE.FatGer.CancelUpdates;
end;

end.
