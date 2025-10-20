unit ManNt2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, FShowpadrao, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit, dxDBColorMemo;

type
  TfmManNt2 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Bevel1: TBevel;
    Label10: TLabel;
    Label8: TLabel;
    quSql1: TwwQuery;
    quSql2: TwwQuery;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    EdOB1FAT: TdxDBColorMemo;
    EdOB2Fat: TdxDBColorMemo;
    EdOB3Fat: TdxDBColorMemo;
    EdOB4Fat: TdxDBColorMemo;
    EdOB5Fat: TdxDBColorMemo;
    EdOB6Fat: TdxDBColorMemo;
    EdOB7Fat: TdxDBColorMemo;
    EdOB8Fat: TdxDBColorMemo;
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
  fmManNt2: TfmManNt2;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManNot, PsqBan,
  AuxPsq, ManNt3, ManImp;

{$R *.DFM}

procedure TfmManNt2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bRetornar.OnClick(Sender);

  if key = 123 then
    bContinuar.OnClick(Sender);

end;

procedure TfmManNt2.FormShow(Sender: TObject);
var
  DscTxf: string;
  BasIcm: real;
  TotIcm: real;
  SeqLin, SeqEnc: Integer;
  ObsFat, Ob1Fat, Ob2Fat, Ob3Fat, Ob4Fat, Ob5Fat, Ob6Fat, Ob7Fat, Ob8Fat, sCaractere: string;
begin
  inherited;

  fmManNot.FatPed.Edit;

  if fmManNot.SeqImpText = 'N' then
  begin

    fmManNot.SeqImpText := 'S';

    SeqLin := 1;

    if Trim(fmManNot.FatPedOb1Fat.Value) = '' then
    begin

      Ob1Fat := '';
      Ob2Fat := '';
      Ob3Fat := '';
      Ob4Fat := '';
      Ob5Fat := '';
      Ob6Fat := '';
      Ob7Fat := '';
      Ob8Fat := '';

      with quSQL1, SQL do
      begin

        quSQL1.Close;
        quSQL1.SQL.Text := ' Select Distinct FatPe2.CodTxf' +
                ' From FatPe2' +
                ' Where FatPe2.CodEmp = :CodEmp' +
                '   and FatPe2.DteRes = :DteRes' +
                '   and FatPe2.NumRes = :NumRes' +
                '   and FatPe2.SeqLib = :SeqLib' +
                '   and FatPe2.SeqFat = :SeqFat';

        with Params do
        begin

          Params[0].AsInteger := fmManNot.FatPedCodEmp.Value;
          Params[1].AsDateTime := fmManNot.FatPedDteRes.Value;
          Params[2].AsInteger := fmManNot.FatPedNumRes.Value;
          Params[3].AsInteger := fmManNot.FatPedSeqLib.Value;
          Params[4].AsInteger := fmManNot.FatPedSeqFat.Value;

        end;

        Open;

      end;

      while not quSQL1.EOF do
      begin

        if Trim(quSQL1.FieldbyName('CodTxf').AsString) <> '' then
        begin

          with quSQL2, SQL do
          begin

            Text := ' Select Distinct FatPe2.ClsIpi' +
                    ' From FatPe2' +
                    ' Where FatPe2.CodEmp = :CodEmp' +
                    '   and FatPe2.DteRes = :DteRes' +
                    '   and FatPe2.NumRes = :NumRes' +
                    '   and FatPe2.SeqLib = :SeqLib' +
                    '   and FatPe2.SeqFat = :SeqFat' +
                    '   and FatPe2.CodTxf = :CodTxf';

            with Params do
            begin

              Params[0].AsInteger := fmManNot.FatPedCodEmp.Value;
              Params[1].AsDateTime := fmManNot.FatPedDteRes.Value;
              Params[2].AsInteger := fmManNot.FatPedNumRes.Value;
              Params[3].AsInteger := fmManNot.FatPedSeqLib.Value;
              Params[4].AsInteger := fmManNot.FatPedSeqFat.Value;
              Params[5].AsString := quSQL1.FieldbyName('CodTxf').AsString;

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

                if (80 - Length(Ob1Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob1Fat) = '' then
                    Ob1Fat := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                  else
                    Ob1Fat := Ob1Fat + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

                end;
              end;

              if SeqLin = 2 then
              begin

                if (80 - Length(Ob2Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob2Fat) = '' then
                    Ob2Fat := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                  else
                    Ob2Fat := Ob2Fat + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

                end;
              end;

              if SeqLin = 3 then
              begin

                if (80 - Length(Ob3Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob3Fat) = '' then
                    Ob3Fat := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                  else
                    Ob3Fat := Ob3Fat + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

                end;
              end;

              if SeqLin = 4 then
              begin

                if (80 - Length(Ob4Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob4Fat) = '' then
                    Ob4Fat := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                  else
                    Ob4Fat := Ob4Fat + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

                end;
              end;

              if SeqLin = 5 then
              begin

                if (80 - Length(Ob5Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob5Fat) = '' then
                    Ob5Fat := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                  else
                    Ob5Fat := Ob5Fat + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

                end;
              end;

              if SeqLin = 6 then
              begin

                if (80 - Length(Ob6Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob6Fat) = '' then
                    Ob6Fat := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                  else
                    Ob6Fat := Ob6Fat + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

                end;
              end;

              if SeqLin = 7 then
              begin

                if (80 - Length(Ob7Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob7Fat) = '' then
                    Ob7Fat := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                  else
                    Ob7Fat := Ob7Fat + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

                end;
              end;

              if SeqLin = 8 then
              begin

                if (80 - Length(Ob8Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob8Fat) = '' then
                    Ob8Fat := Trim(quSQL2.FieldbyName('ClsIpi').AsString)
                  else
                    Ob8Fat := Ob8Fat + sCaractere + Trim(quSQL2.FieldbyName('ClsIpi').AsString);

                end;
              end;

              quSQL2.Next;

              sCaractere := '/';

            end;

            if SeqLin = 1 then
              Ob1Fat := Ob1Fat + ' ';
            if SeqLin = 2 then
              Ob2Fat := Ob2Fat + ' ';
            if SeqLin = 3 then
              Ob3Fat := Ob3Fat + ' ';
            if SeqLin = 4 then
              Ob4Fat := Ob4Fat + ' ';
            if SeqLin = 5 then
              Ob5Fat := Ob5Fat + ' ';
            if SeqLin = 6 then
              Ob6Fat := Ob6Fat + ' ';
            if SeqLin = 7 then
              Ob7Fat := Ob7Fat + ' ';
            if SeqLin = 8 then
              Ob8Fat := Ob8Fat + ' ';

            with quSQL2, SQL do
            begin

              Text := ' Select EstTxf.DscTxf' +
                ' From EstTxf' +
                ' Where EstTxf.CodTxf = :CodTxf';

              with Params do
              begin

                Params[0].AsString := quSQL1.FieldbyName('CodTxf').AsString;

              end;

              Open;

              DscTxf := Trim(FieldbyName('DscTxf').AsString);

            end;

            SeqEnc := 1;

            while SeqEnc = 1 do
            begin

              if pos(' ', DscTxf) > 0 then
                ObsFat := copy(DscTxf, 1, (pos(' ', DscTxf) - 1))
              else
                ObsFat := DscTxf;

              if SeqLin = 1 then
              begin

                if (80 - Length(Ob1Fat)) < (Length(ObsFat) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob1Fat) = '' then
                    Ob1Fat := ObsFat
                  else
                    Ob1Fat := Ob1Fat + ' ' + ObsFat;

                end;
              end;

              if SeqLin = 2 then
              begin

                if (80 - Length(Ob2Fat)) < (Length(ObsFat) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob2Fat) = '' then
                    Ob2Fat := ObsFat
                  else
                    Ob2Fat := Ob2Fat + ' ' + ObsFat;

                end;
              end;

              if SeqLin = 3 then
              begin

                if (80 - Length(Ob3Fat)) < (Length(ObsFat) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob3Fat) = '' then
                    Ob3Fat := ObsFat
                  else
                    Ob3Fat := Ob3Fat + ' ' + ObsFat;

                end;
              end;

              if SeqLin = 4 then
              begin

                if (80 - Length(Ob4Fat)) < (Length(ObsFat) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob4Fat) = '' then
                    Ob4Fat := ObsFat
                  else
                    Ob4Fat := Ob4Fat + ' ' + ObsFat;

                end;
              end;

              if SeqLin = 5 then
              begin

                if (80 - Length(Ob5Fat)) < (Length(ObsFat) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob5Fat) = '' then
                    Ob5Fat := ObsFat
                  else
                    Ob5Fat := Ob5Fat + ' ' + ObsFat;

                end;
              end;

              if SeqLin = 6 then
              begin

                if (80 - Length(Ob6Fat)) < (Length(ObsFat) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob6Fat) = '' then
                    Ob6Fat := ObsFat
                  else
                    Ob6Fat := Ob6Fat + ' ' + ObsFat;

                end;
              end;

              if SeqLin = 7 then
              begin

                if (80 - Length(Ob7Fat)) < (Length(ObsFat) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob7Fat) = '' then
                    Ob7Fat := ObsFat
                  else
                    Ob7Fat := Ob7Fat + ' ' + ObsFat;

                end;
              end;

              if SeqLin = 8 then
              begin

                if (80 - Length(Ob8Fat)) < (Length(ObsFat) + 1) then
                  Inc(SeqLin)
                else
                begin

                  if Trim(Ob8Fat) = '' then
                    Ob8Fat := ObsFat
                  else
                    Ob8Fat := Ob8Fat + ' ' + ObsFat;

                end;
              end;

              if pos(' ', DscTxf) > 0 then
                DscTxf := copy(DscTxf, (pos(' ', DscTxf) + 1), (Length(DscTxf) - pos(' ', DscTxf)))
              else
                SeqEnc := 0;

            end;
          end;
        end;

        quSQL1.Next;

      end;

      if Trim(fmManNot.FatPedObsFat.Value) <> '' then
      begin

        DscTxf := fmManNot.FatPedObsFat.Value;

        SeqEnc := 1;

        while SeqEnc = 1 do
        begin

          if pos(' ', DscTxf) > 0 then
            ObsFat := copy(DscTxf, 1, (pos(' ', DscTxf) - 1))
          else
            ObsFat := DscTxf;

          if SeqLin = 1 then
          begin

            if (80 - Length(Ob1Fat)) < (Length(ObsFat) + 1) then
              Inc(SeqLin)
            else
            begin

              if Trim(Ob1Fat) = '' then
                Ob1Fat := ObsFat
              else
                Ob1Fat := Ob1Fat + ' ' + ObsFat;

            end;
          end;

          if SeqLin = 2 then
          begin

            if (80 - Length(Ob2Fat)) < (Length(ObsFat) + 1) then
              Inc(SeqLin)
            else
            begin

              if Trim(Ob2Fat) = '' then
                Ob2Fat := ObsFat
              else
                Ob2Fat := Ob2Fat + ' ' + ObsFat;

            end;
          end;

          if SeqLin = 3 then
          begin

            if (80 - Length(Ob3Fat)) < (Length(ObsFat) + 1) then
              Inc(SeqLin)
            else
            begin

              if Trim(Ob3Fat) = '' then
                Ob3Fat := ObsFat
              else
                Ob3Fat := Ob3Fat + ' ' + ObsFat;

            end;
          end;

          if SeqLin = 4 then
          begin

            if (80 - Length(Ob4Fat)) < (Length(ObsFat) + 1) then
              Inc(SeqLin)
            else
            begin

              if Trim(Ob4Fat) = '' then
                Ob4Fat := ObsFat
              else
                Ob4Fat := Ob4Fat + ' ' + ObsFat;

            end;
          end;

          if SeqLin = 5 then
          begin

            if (80 - Length(Ob5Fat)) < (Length(ObsFat) + 1) then
              Inc(SeqLin)
            else
            begin

              if Trim(Ob5Fat) = '' then
                Ob5Fat := ObsFat
              else
                Ob5Fat := Ob5Fat + ' ' + ObsFat;

            end;
          end;

          if SeqLin = 6 then
          begin

            if (80 - Length(Ob6Fat)) < (Length(ObsFat) + 1) then
              Inc(SeqLin)
            else
            begin

              if Trim(Ob6Fat) = '' then
                Ob6Fat := ObsFat
              else
                Ob6Fat := Ob6Fat + ' ' + ObsFat;

            end;
          end;

          if SeqLin = 7 then
          begin

            if (80 - Length(Ob7Fat)) < (Length(ObsFat) + 1) then
              Inc(SeqLin)
            else
            begin

              if Trim(Ob7Fat) = '' then
                Ob7Fat := ObsFat
              else
                Ob7Fat := Ob7Fat + ' ' + ObsFat;

            end;
          end;

          if SeqLin = 8 then
          begin

            if (80 - Length(Ob8Fat)) < (Length(ObsFat) + 1) then
              Inc(SeqLin)
            else
            begin

              if Trim(Ob8Fat) = '' then
                Ob8Fat := ObsFat
              else
                Ob8Fat := Ob8Fat + ' ' + ObsFat;

            end;
          end;

          if pos(' ', DscTxf) > 0 then
            DscTxf := copy(DscTxf, (pos(' ', DscTxf) + 1), (Length(DscTxf) - pos(' ', DscTxf)))
          else
            SeqEnc := 0;

        end;
      end;

      if (Trim(fmManNot.FatPedCodCf1.Value) = '6.403') or
        (Trim(fmManNot.FatPedCodCf2.Value) = '6.403') or
        (Trim(fmManNot.FatPedCodCf1.Value) = '6.411') or
        (Trim(fmManNot.FatPedCodCf2.Value) = '6.411') then
      begin

        with fmManNot.quSQL, SQL do
        begin

          Close;
          Text := ' Select Sum(FatPe2.BasIcm) as BasIcm,' +
            '        Sum(FatPe2.TotIcm) as TotIcm' +
            ' From FatPe2' +
            ' Where FatPe2.CodEmp = ' + QuotedStr(IntToStr(fmManNot.FatPedCodEmp.Value)) +
            '   and FatPe2.DteRes = ' + QuotedStr(fDateToSQL(fmManNot.FatPedDteRes.Value)) +
            '   and FatPe2.NumRes = ' + QuotedStr(IntToStr(fmManNot.FatPedNumRes.Value)) +
            '   and FatPe2.SeqLib = ' + QuotedStr(IntToStr(fmManNot.FatPedSeqLib.Value)) +
            '   and FatPe2.SeqFat = ' + QuotedStr(IntToStr(fmManNot.FatPedSeqFat.Value)) +
            '   and FatPe2.CodCfo = ' + QuotedStr('6.403');
          Open;

          BasIcm := FieldbyName('BasIcm').AsFloat;
          TotIcm := FieldbyName('TotIcm').AsFloat;

        end;

        with fmManNot.quSQL, SQL do
        begin

          Close;
          Text := ' Select Sum(FatPe2.BasIcm) as BasIcm,' +
            '        Sum(FatPe2.TotIcm) as TotIcm' +
            ' From FatPe2' +
            ' Where FatPe2.CodEmp = ' + QuotedStr(IntToStr(fmManNot.FatPedCodEmp.Value)) +
            '   and FatPe2.DteRes = ' + QuotedStr(fDateToSQL(fmManNot.FatPedDteRes.Value)) +
            '   and FatPe2.NumRes = ' + QuotedStr(IntToStr(fmManNot.FatPedNumRes.Value)) +
            '   and FatPe2.SeqLib = ' + QuotedStr(IntToStr(fmManNot.FatPedSeqLib.Value)) +
            '   and FatPe2.SeqFat = ' + QuotedStr(IntToStr(fmManNot.FatPedSeqFat.Value)) +
            '   and FatPe2.CodCfo = ' + QuotedStr('6.411');
          Open;

          BasIcm := BasIcm + FieldbyName('BasIcm').AsFloat;
          TotIcm := TotIcm + FieldbyName('TotIcm').AsFloat;

        end;

        if (BasIcm > 0) or (TotIcm > 0) then
        begin

          if      Trim(Ob1Fat) = '' then Ob1Fat := 'OPERACAO PROPRIA'
          else if Trim(Ob2Fat) = '' then Ob2Fat := 'OPERACAO PROPRIA'
          else if Trim(Ob3Fat) = '' then Ob3Fat := 'OPERACAO PROPRIA'
          else if Trim(Ob4Fat) = '' then Ob4Fat := 'OPERACAO PROPRIA'
          else if Trim(Ob5Fat) = '' then Ob5Fat := 'OPERACAO PROPRIA'
          else if Trim(Ob6Fat) = '' then Ob6Fat := 'OPERACAO PROPRIA'
          else if Trim(Ob7Fat) = '' then Ob7Fat := 'OPERACAO PROPRIA'
          else if Trim(Ob8Fat) = '' then Ob8Fat := 'OPERACAO PROPRIA';

          if      Trim(Ob2Fat) = '' then Ob2Fat := 'BASE DE CALCULO = ' + FormatFloat('###,###,##0.00', BasIcm)
          else if Trim(Ob3Fat) = '' then Ob3Fat := 'BASE DE CALCULO = ' + FormatFloat('###,###,##0.00', BasIcm)
          else if Trim(Ob4Fat) = '' then Ob4Fat := 'BASE DE CALCULO = ' + FormatFloat('###,###,##0.00', BasIcm)
          else if Trim(Ob5Fat) = '' then Ob5Fat := 'BASE DE CALCULO = ' + FormatFloat('###,###,##0.00', BasIcm)
          else if Trim(Ob6Fat) = '' then Ob6Fat := 'BASE DE CALCULO = ' + FormatFloat('###,###,##0.00', BasIcm)
          else if Trim(Ob7Fat) = '' then Ob7Fat := 'BASE DE CALCULO = ' + FormatFloat('###,###,##0.00', BasIcm)
          else if Trim(Ob8Fat) = '' then Ob8Fat := 'BASE DE CALCULO = ' + FormatFloat('###,###,##0.00', BasIcm);

          if      Trim(Ob3Fat) = '' then Ob3Fat := 'VALOR DO ICMS = ' + FormatFloat('###,###,##0.00', TotIcm)
          else if Trim(Ob4Fat) = '' then Ob4Fat := 'VALOR DO ICMS = ' + FormatFloat('###,###,##0.00', TotIcm)
          else if Trim(Ob5Fat) = '' then Ob5Fat := 'VALOR DO ICMS = ' + FormatFloat('###,###,##0.00', TotIcm)
          else if Trim(Ob6Fat) = '' then Ob6Fat := 'VALOR DO ICMS = ' + FormatFloat('###,###,##0.00', TotIcm)
          else if Trim(Ob7Fat) = '' then Ob7Fat := 'VALOR DO ICMS = ' + FormatFloat('###,###,##0.00', TotIcm)
          else if Trim(Ob8Fat) = '' then Ob8Fat := 'VALOR DO ICMS = ' + FormatFloat('###,###,##0.00', TotIcm);

        end;
      end;

      fmManNot.FatPedOb1Fat.Value := Ob1Fat;
      fmManNot.FatPedOb2Fat.Value := Ob2Fat;
      fmManNot.FatPedOb3Fat.Value := Ob3Fat;
      fmManNot.FatPedOb4Fat.Value := Ob4Fat;
      fmManNot.FatPedOb5Fat.Value := Ob5Fat;
      fmManNot.FatPedOb6Fat.Value := Ob6Fat;
      fmManNot.FatPedOb7Fat.Value := Ob7Fat;
      fmManNot.FatPedOb8Fat.Value := Ob8Fat;

      EdOb1Fat.Text := fmManNot.FatPedOb1Fat.Value;
      EdOb2Fat.Text := fmManNot.FatPedOb2Fat.Value;
      EdOb3Fat.Text := fmManNot.FatPedOb3Fat.Value;
      EdOb4Fat.Text := fmManNot.FatPedOb4Fat.Value;
      EdOb5Fat.Text := fmManNot.FatPedOb5Fat.Value;
      EdOb6Fat.Text := fmManNot.FatPedOb6Fat.Value;
      EdOb7Fat.Text := fmManNot.FatPedOb7Fat.Value;
      EdOb8Fat.Text := fmManNot.FatPedOb8Fat.Value;

    end;
  end;

  EdOb1Fat.SetFocus;

end;

procedure TfmManNt2.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManNt2.bContinuarClick(Sender: TObject);
begin

  ActiveControl := nil;

  fmManNot.FatPedOb1Fat.Value := Trim(fmManNot.FatPedOb1Fat.Value);
  fmManNot.FatPedOb2Fat.Value := Trim(fmManNot.FatPedOb2Fat.Value);
  fmManNot.FatPedOb3Fat.Value := Trim(fmManNot.FatPedOb3Fat.Value);
  fmManNot.FatPedOb4Fat.Value := Trim(fmManNot.FatPedOb4Fat.Value);
  fmManNot.FatPedOb5Fat.Value := Trim(fmManNot.FatPedOb5Fat.Value);
  fmManNot.FatPedOb6Fat.Value := Trim(fmManNot.FatPedOb6Fat.Value);
  fmManNot.FatPedOb7Fat.Value := Trim(fmManNot.FatPedOb7Fat.Value);
  fmManNot.FatPedOb8Fat.Value := Trim(fmManNot.FatPedOb8Fat.Value);

  with fmManNot.FatPed do
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

      if fmManNot.FatPed.State = dsBrowse then
        fmManNot.FatPed.Edit;

      EdOb1Fat.SetFocus;

      raise;

    end;

    CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManNot.FatPed.Close;
  fmManNot.FatPed.Open;

  try

    fmManNt3 := TfmManNt3.Create(Self);

    fmManNt3.ShowModal;

  finally

    FreeAndNil(fmManNt3);

  end;

  if fmManNot.Finalizar = 'S' then
    Close
  else
  begin

    fmManNot.FatPed.Edit;

    EdOb1Fat.SetFocus;

  end;
end;

procedure TfmManNt2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManNt2.EdPraPe3KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManNt2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManNot.FatPed.State <> dsBrowse then
    fmManNot.FatPed.CancelUpdates;
end;

end.
