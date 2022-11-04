unit ManDn3_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, FShowpadrao, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit;

type
  TfmManDn3_NFE = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label10: TLabel;
    Label8: TLabel;
    EdOb8Dev: TdxDBColorEdit;
    EdOb7Dev: TdxDBColorEdit;
    EdOb6Dev: TdxDBColorEdit;
    EdOb5Dev: TdxDBColorEdit;
    EdOb4Dev: TdxDBColorEdit;
    EdOb3Dev: TdxDBColorEdit;
    EdOb2Dev: TdxDBColorEdit;
    EdOb1Dev: TdxDBColorEdit;
    quSql1: TwwQuery;
    quSql2: TwwQuery;
    bcontinuar: TBitBtn;
    bretornar: TBitBtn;
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
  fmManDn3_NFE: TfmManDn3_NFE;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManIdn_NFE, ManDn1_NFE;

{$R *.DFM}

procedure TfmManDn3_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bRetornar.OnClick(Sender);

  if key = 123 then
    bContinuar.OnClick(Sender);

end;

procedure TfmManDn3_NFE.FormShow(Sender: TObject);
var
  DscTxf: string;
  SeqLin, SeqEnc: Integer;
  ObsDev, Ob1Dev, Ob2Dev, Ob3Dev, Ob4Dev, Ob5Dev, Ob6Dev, Ob7Dev, Ob8Dev, sCaractere: string;
begin
  inherited;

  fmmandn1_nfe.FatDev.Edit;

  SeqLin := 1;

  if Trim(fmmandn1_nfe.FatDevOb1Dev.Value) = '' then
  begin

    Ob1Dev := '';
    Ob2Dev := '';
    Ob3Dev := '';
    Ob4Dev := '';
    Ob5Dev := '';
    Ob6Dev := '';
    Ob7Dev := '';
    Ob8Dev := '';

    with quSQL1, SQL do
    begin

      Close;
      Text := ' Select Distinct FatDv2.CodTxf' +
        ' From FatDv2' +
        ' Where FatDv2.CodEmp = :CodEmp' +
        '   and FatDv2.DteRes = :DteRes' +
        '   and FatDv2.NumRes = :NumRes' +
        '   and FatDv2.SeqLib = :SeqLib' +
        '   and FatDv2.SeqFat = :SeqFat' +
        '   and FatDv2.SeqDev = :SeqDev';

      with Params do
      begin

        Params[0].AsInteger := fmmandn1_nfe.FatDevCodEmp.Value;
        Params[1].AsDateTime := fmmandn1_nfe.FatDevDteRes.Value;
        Params[2].AsInteger := fmmandn1_nfe.FatDevNumRes.Value;
        Params[3].AsInteger := fmmandn1_nfe.FatDevSeqLib.Value;
        Params[4].AsInteger := fmmandn1_nfe.FatDevSeqFat.Value;
        Params[5].AsInteger := fmmandn1_nfe.FatDevSeqDev.Value;

      end;

      Open;

    end;

    if Trim(quSQL1.FieldbyName('CodTxf').AsString) <> '' then
    begin

      while not quSQL1.EOF do
      begin

        with quSQL2, SQL do
        begin

          Text := ' Select Distinct FatDv2.ClsIpi' +
            ' From FatDv2' +
            ' Where FatDv2.CodEmp = :CodEmp' +
            '   and FatDv2.DteRes = :DteRes' +
            '   and FatDv2.NumRes = :NumRes' +
            '   and FatDv2.SeqLib = :SeqLib' +
            '   and FatDv2.SeqFat = :SeqFat' +
            '   and FatDv2.SeqDev = :SeqDev' +
            '   and FatDv2.CodTxf = :CodTxf';

          with Params do
          begin

            Params[0].AsInteger := fmmandn1_nfe.FatDevCodEmp.Value;
            Params[1].AsDateTime := fmmandn1_nfe.FatDevDteRes.Value;
            Params[2].AsInteger := fmmandn1_nfe.FatDevNumRes.Value;
            Params[3].AsInteger := fmmandn1_nfe.FatDevSeqLib.Value;
            Params[4].AsInteger := fmmandn1_nfe.FatDevSeqFat.Value;
            Params[5].AsInteger := fmmandn1_nfe.FatDevSeqDev.Value;
            Params[6].AsString := quSQL1.FieldbyName('CodTxf').AsString;

          end;

          Open;

        end;

        if Trim(quSQL2.FieldbyName('ClsIpi').AsString) <> '' then
        begin

          sCaractere := ' ';

          while not quSQL2.EOF do
          begin

            if SeqLin = 1 then
            begin

              if (80 - Length(Ob1Dev)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob1Dev) = '' then
                  Ob1Dev := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                else
                  Ob1Dev := Ob1Dev + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

              end;
            end;

            if SeqLin = 2 then
            begin

              if (80 - Length(Ob2Dev)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob2Dev) = '' then
                  Ob2Dev := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                else
                  Ob2Dev := Ob2Dev + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

              end;
            end;

            if SeqLin = 3 then
            begin

              if (80 - Length(Ob3Dev)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob3Dev) = '' then
                  Ob3Dev := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                else
                  Ob3Dev := Ob3Dev + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

              end;
            end;

            if SeqLin = 4 then
            begin

              if (80 - Length(Ob4Dev)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob4Dev) = '' then
                  Ob4Dev := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                else
                  Ob4Dev := Ob4Dev + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

              end;
            end;

            if SeqLin = 5 then
            begin

              if (80 - Length(Ob5Dev)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob5Dev) = '' then
                  Ob5Dev := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                else
                  Ob5Dev := Ob5Dev + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

              end;
            end;

            if SeqLin = 6 then
            begin

              if (80 - Length(Ob6Dev)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob6Dev) = '' then
                  Ob6Dev := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                else
                  Ob6Dev := Ob6Dev + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

              end;
            end;

            if SeqLin = 7 then
            begin

              if (80 - Length(Ob7Dev)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob7Dev) = '' then
                  Ob7Dev := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                else
                  Ob7Dev := Ob7Dev + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

              end;
            end;

            if SeqLin = 8 then
            begin

              if (80 - Length(Ob8Dev)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob8Dev) = '' then
                  Ob8Dev := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                else
                  Ob8Dev := Ob8Dev + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

              end;
            end;

            quSQL2.Next;

            sCaractere := '/';

          end;

          if SeqLin = 1 then
            Ob1Dev := Ob1Dev + ' ';
          if SeqLin = 2 then
            Ob2Dev := Ob2Dev + ' ';
          if SeqLin = 3 then
            Ob3Dev := Ob3Dev + ' ';
          if SeqLin = 4 then
            Ob4Dev := Ob4Dev + ' ';
          if SeqLin = 5 then
            Ob5Dev := Ob5Dev + ' ';
          if SeqLin = 6 then
            Ob6Dev := Ob6Dev + ' ';
          if SeqLin = 7 then
            Ob7Dev := Ob7Dev + ' ';
          if SeqLin = 8 then
            Ob8Dev := Ob8Dev + ' ';

          with quSQL2, SQL do
          begin

            Text := ' Select EstTxf.DscTxf From EstTxf Where EstTxf.CodTxf = ' + QuotedStr(quSQL1.FieldbyName('CodTxf').AsString);
            Open;

            DscTxf := Trim(FieldbyName('DscTxf').AsString);

          end;

          SeqEnc := 1;

          while SeqEnc = 1 do
          begin

            if pos(' ', DscTxf) > 0 then
              ObsDev := copy(DscTxf, 1, (pos(' ', DscTxf) - 1))
            else
              ObsDev := DscTxf;

            if SeqLin = 1 then
            begin

              if (80 - Length(Ob1Dev)) < (Length(ObsDev) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob1Dev) = '' then
                  Ob1Dev := ObsDev
                else
                  Ob1Dev := Ob1Dev + ' ' + ObsDev;

              end;
            end;

            if SeqLin = 2 then
            begin

              if (80 - Length(Ob2Dev)) < (Length(ObsDev) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob2Dev) = '' then
                  Ob2Dev := ObsDev
                else
                  Ob2Dev := Ob2Dev + ' ' + ObsDev;

              end;
            end;

            if SeqLin = 3 then
            begin

              if (80 - Length(Ob3Dev)) < (Length(ObsDev) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob3Dev) = '' then
                  Ob3Dev := ObsDev
                else
                  Ob3Dev := Ob3Dev + ' ' + ObsDev;

              end;
            end;

            if SeqLin = 4 then
            begin

              if (80 - Length(Ob4Dev)) < (Length(ObsDev) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob4Dev) = '' then
                  Ob4Dev := ObsDev
                else
                  Ob4Dev := Ob4Dev + ' ' + ObsDev;

              end;
            end;

            if SeqLin = 5 then
            begin

              if (80 - Length(Ob5Dev)) < (Length(ObsDev) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob5Dev) = '' then
                  Ob5Dev := ObsDev
                else
                  Ob5Dev := Ob5Dev + ' ' + ObsDev;

              end;
            end;

            if SeqLin = 6 then
            begin

              if (80 - Length(Ob6Dev)) < (Length(ObsDev) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob6Dev) = '' then
                  Ob6Dev := ObsDev
                else
                  Ob6Dev := Ob6Dev + ' ' + ObsDev;

              end;
            end;

            if SeqLin = 7 then
            begin

              if (80 - Length(Ob7Dev)) < (Length(ObsDev) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob7Dev) = '' then
                  Ob7Dev := ObsDev
                else
                  Ob7Dev := Ob7Dev + ' ' + ObsDev;

              end;
            end;

            if SeqLin = 8 then
            begin

              if (80 - Length(Ob8Dev)) < (Length(ObsDev) + 1) then
                Inc(SeqLin)
              else
              begin

                if Trim(Ob8Dev) = '' then
                  Ob8Dev := ObsDev
                else
                  Ob8Dev := Ob8Dev + ' ' + ObsDev;

              end;
            end;

            if pos(' ', DscTxf) > 0 then
              DscTxf := copy(DscTxf, (pos(' ', DscTxf) + 1), (Length(DscTxf) - pos(' ', DscTxf)))
            else
              SeqEnc := 0;

          end;
        end;

        quSQL1.Next;

      end;
    end;

    if Trim(fmmandn1_nfe.FatDevObsDev.Value) <> '' then
    begin

      DscTxf := fmmandn1_nfe.FatDevObsDev.Value;

      SeqEnc := 1;

      while SeqEnc = 1 do
      begin

        if pos(' ', DscTxf) > 0 then
          ObsDev := copy(DscTxf, 1, (pos(' ', DscTxf) - 1))
        else
          ObsDev := DscTxf;

        if SeqLin = 1 then
        begin

          if (80 - Length(Ob1Dev)) < (Length(ObsDev) + 1) then
            Inc(SeqLin)
          else
          begin

            if Trim(Ob1Dev) = '' then
              Ob1Dev := ObsDev
            else
              Ob1Dev := Ob1Dev + ' ' + ObsDev;

          end;
        end;

        if SeqLin = 2 then
        begin

          if (80 - Length(Ob2Dev)) < (Length(ObsDev) + 1) then
            Inc(SeqLin)
          else
          begin

            if Trim(Ob2Dev) = '' then
              Ob2Dev := ObsDev
            else
              Ob2Dev := Ob2Dev + ' ' + ObsDev;

          end;
        end;

        if SeqLin = 3 then
        begin

          if (80 - Length(Ob3Dev)) < (Length(ObsDev) + 1) then
            Inc(SeqLin)
          else
          begin

            if Trim(Ob3Dev) = '' then
              Ob3Dev := ObsDev
            else
              Ob3Dev := Ob3Dev + ' ' + ObsDev;

          end;
        end;

        if SeqLin = 4 then
        begin

          if (80 - Length(Ob4Dev)) < (Length(ObsDev) + 1) then
            Inc(SeqLin)
          else
          begin

            if Trim(Ob4Dev) = '' then
              Ob4Dev := ObsDev
            else
              Ob4Dev := Ob4Dev + ' ' + ObsDev;

          end;
        end;

        if SeqLin = 5 then
        begin

          if (80 - Length(Ob5Dev)) < (Length(ObsDev) + 1) then
            Inc(SeqLin)
          else
          begin

            if Trim(Ob5Dev) = '' then
              Ob5Dev := ObsDev
            else
              Ob5Dev := Ob5Dev + ' ' + ObsDev;

          end;
        end;

        if SeqLin = 6 then
        begin

          if (80 - Length(Ob6Dev)) < (Length(ObsDev) + 1) then
            Inc(SeqLin)
          else
          begin

            if Trim(Ob6Dev) = '' then
              Ob6Dev := ObsDev
            else
              Ob6Dev := Ob6Dev + ' ' + ObsDev;

          end;
        end;

        if SeqLin = 7 then
        begin

          if (80 - Length(Ob7Dev)) < (Length(ObsDev) + 1) then
            Inc(SeqLin)
          else
          begin

            if Trim(Ob7Dev) = '' then
              Ob7Dev := ObsDev
            else
              Ob7Dev := Ob7Dev + ' ' + ObsDev;

          end;
        end;

        if SeqLin = 8 then
        begin

          if (80 - Length(Ob8Dev)) < (Length(ObsDev) + 1) then
            Inc(SeqLin)
          else
          begin

            if Trim(Ob8Dev) = '' then
              Ob8Dev := ObsDev
            else
              Ob8Dev := Ob8Dev + ' ' + ObsDev;

          end;
        end;

        if pos(' ', DscTxf) > 0 then
          DscTxf := copy(DscTxf, (pos(' ', DscTxf) + 1), (Length(DscTxf) - pos(' ', DscTxf)))
        else
          SeqEnc := 0;

      end;
    end;

    fmmandn1_nfe.FatDevOb1Dev.Value := Ob1Dev;
    fmmandn1_nfe.FatDevOb2Dev.Value := Ob2Dev;
    fmmandn1_nfe.FatDevOb3Dev.Value := Ob3Dev;
    fmmandn1_nfe.FatDevOb4Dev.Value := Ob4Dev;
    fmmandn1_nfe.FatDevOb5Dev.Value := Ob5Dev;
    fmmandn1_nfe.FatDevOb6Dev.Value := Ob6Dev;
    fmmandn1_nfe.FatDevOb7Dev.Value := Ob7Dev;
    fmmandn1_nfe.FatDevOb8Dev.Value := Ob8Dev;

    EdOb1Dev.Text := fmmandn1_nfe.FatDevOb1Dev.Value;
    EdOb2Dev.Text := fmmandn1_nfe.FatDevOb2Dev.Value;
    EdOb3Dev.Text := fmmandn1_nfe.FatDevOb3Dev.Value;
    EdOb4Dev.Text := fmmandn1_nfe.FatDevOb4Dev.Value;
    EdOb5Dev.Text := fmmandn1_nfe.FatDevOb5Dev.Value;
    EdOb6Dev.Text := fmmandn1_nfe.FatDevOb6Dev.Value;
    EdOb7Dev.Text := fmmandn1_nfe.FatDevOb7Dev.Value;
    EdOb8Dev.Text := fmmandn1_nfe.FatDevOb8Dev.Value;

  end;

  EdOb1Dev.SetFocus;

end;

procedure TfmManDn3_NFE.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManDn3_NFE.bContinuarClick(Sender: TObject);
begin

  ActiveControl := nil;

  fmmandn1_nfe.FatDevOb1Dev.Value := Trim(fmmandn1_nfe.FatDevOb1Dev.Value);
  fmmandn1_nfe.FatDevOb2Dev.Value := Trim(fmmandn1_nfe.FatDevOb2Dev.Value);
  fmmandn1_nfe.FatDevOb3Dev.Value := Trim(fmmandn1_nfe.FatDevOb3Dev.Value);
  fmmandn1_nfe.FatDevOb4Dev.Value := Trim(fmmandn1_nfe.FatDevOb4Dev.Value);
  fmmandn1_nfe.FatDevOb5Dev.Value := Trim(fmmandn1_nfe.FatDevOb5Dev.Value);
  fmmandn1_nfe.FatDevOb6Dev.Value := Trim(fmmandn1_nfe.FatDevOb6Dev.Value);
  fmmandn1_nfe.FatDevOb7Dev.Value := Trim(fmmandn1_nfe.FatDevOb7Dev.Value);
  fmmandn1_nfe.FatDevOb8Dev.Value := Trim(fmmandn1_nfe.FatDevOb8Dev.Value);

  with fmmandn1_nfe.FatDev do
  begin

    fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
    ;

    try

      ApplyUpdates; {Tenta aplicar as alterações}
      ;

      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
      ;

    except

      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
      ;

      if fmmandn1_nfe.FatDev.State = dsBrowse then
        fmmandn1_nfe.FatDev.Edit;

      EdOb1Dev.SetFocus;

      raise;

    end;

    CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmmandn1_nfe.FatDev.Close;
  fmmandn1_nfe.FatDev.Open;

  if fMsg('Deseja emitir nota fiscal de entrada ?', 'O') then
  begin

    try

      fmmanidn_nfe := Tfmmanidn_nfe.Create(Self);
      fmmanidn_nfe.ShowModal;

    finally

      FreeAndNil(fmmanidn_nfe);

    end;

    if fmmandn1_nfe.Finalizar = 'S' then
      Close
    else
    begin

      fmmandn1_nfe.FatDev.Close;
      fmmandn1_nfe.FatDev.Open;

      fmmandn1_nfe.FatDev.Edit;

      EdOb1Dev.SetFocus;

    end;
  end;
end;

procedure TfmManDn3_NFE.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManDn3_NFE.EdPraPe3KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManDn3_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmmandn1_nfe.FatDev.State <> dsBrowse then
    fmmandn1_nfe.FatDev.CancelUpdates;
end;

end.
