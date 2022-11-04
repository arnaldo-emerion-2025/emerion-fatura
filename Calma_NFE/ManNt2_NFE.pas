unit ManNt2_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, FShowpadrao, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit, dxDBColorMemo, math;

type
  TfmManNt2_NFE = class(TfmShowPadrao)
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
    function textoDinamicoNF(strTexto: string): string;

  public
    {Public declarations}
  end;

var
  fmManNt2_NFE: TfmManNt2_NFE;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManNot_NFE, PsqBan,
  AuxPsq, ManNt3_NFE, ManImp_NFE;

{$R *.DFM}

procedure TfmManNt2_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bRetornar.OnClick(Sender);

  if key = 123 then
    bContinuar.OnClick(Sender);

end;

procedure TfmManNt2_NFE.FormShow(Sender: TObject);
var
  DscTxf: string;
  BasIcm: real;
  TotIcm: real;
  SeqLin, SeqEnc: Integer;
  ObsFat, Ob1Fat, Ob2Fat, Ob3Fat, Ob4Fat, Ob5Fat, Ob6Fat, Ob7Fat, Ob8Fat, sCaractere: string;
begin
  inherited;

  fmManNot_NFE.FatPed.Edit;

  if pos('BASE DE CALCULO =', fmManNot_NFE.FatPedOB1FAT.AsString) > 0 then fmManNot_NFE.FatPedOB1FAT.AsString := 'BASE DE CALCULO = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedBASICM.AsFloat, 2));
  if pos('BASE DE CALCULO =', fmManNot_NFE.FatPedOB2FAT.AsString) > 0 then fmManNot_NFE.FatPedOB2FAT.AsString := 'BASE DE CALCULO = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedBASICM.AsFloat, 2));
  if pos('BASE DE CALCULO =', fmManNot_NFE.FatPedOB3FAT.AsString) > 0 then fmManNot_NFE.FatPedOB3FAT.AsString := 'BASE DE CALCULO = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedBASICM.AsFloat, 2));
  if pos('BASE DE CALCULO =', fmManNot_NFE.FatPedOB4FAT.AsString) > 0 then fmManNot_NFE.FatPedOB4FAT.AsString := 'BASE DE CALCULO = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedBASICM.AsFloat, 2));
  if pos('BASE DE CALCULO =', fmManNot_NFE.FatPedOB5FAT.AsString) > 0 then fmManNot_NFE.FatPedOB5FAT.AsString := 'BASE DE CALCULO = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedBASICM.AsFloat, 2));
  if pos('BASE DE CALCULO =', fmManNot_NFE.FatPedOB6FAT.AsString) > 0 then fmManNot_NFE.FatPedOB6FAT.AsString := 'BASE DE CALCULO = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedBASICM.AsFloat, 2));
  if pos('BASE DE CALCULO =', fmManNot_NFE.FatPedOB7FAT.AsString) > 0 then fmManNot_NFE.FatPedOB7FAT.AsString := 'BASE DE CALCULO = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedBASICM.AsFloat, 2));
  if pos('BASE DE CALCULO =', fmManNot_NFE.FatPedOB8FAT.AsString) > 0 then fmManNot_NFE.FatPedOB8FAT.AsString := 'BASE DE CALCULO = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedBASICM.AsFloat, 2));

  if pos('VALOR DO ICMS =', fmManNot_NFE.FatPedOB1FAT.AsString) > 0 then fmManNot_NFE.FatPedOB1FAT.AsString := 'VALOR DO ICMS = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedTOTICM.AsFloat, 2));
  if pos('VALOR DO ICMS =', fmManNot_NFE.FatPedOB2FAT.AsString) > 0 then fmManNot_NFE.FatPedOB2FAT.AsString := 'VALOR DO ICMS = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedTOTICM.AsFloat, 2));
  if pos('VALOR DO ICMS =', fmManNot_NFE.FatPedOB3FAT.AsString) > 0 then fmManNot_NFE.FatPedOB3FAT.AsString := 'VALOR DO ICMS = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedTOTICM.AsFloat, 2));
  if pos('VALOR DO ICMS =', fmManNot_NFE.FatPedOB4FAT.AsString) > 0 then fmManNot_NFE.FatPedOB4FAT.AsString := 'VALOR DO ICMS = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedTOTICM.AsFloat, 2));
  if pos('VALOR DO ICMS =', fmManNot_NFE.FatPedOB5FAT.AsString) > 0 then fmManNot_NFE.FatPedOB5FAT.AsString := 'VALOR DO ICMS = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedTOTICM.AsFloat, 2));
  if pos('VALOR DO ICMS =', fmManNot_NFE.FatPedOB6FAT.AsString) > 0 then fmManNot_NFE.FatPedOB6FAT.AsString := 'VALOR DO ICMS = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedTOTICM.AsFloat, 2));
  if pos('VALOR DO ICMS =', fmManNot_NFE.FatPedOB7FAT.AsString) > 0 then fmManNot_NFE.FatPedOB7FAT.AsString := 'VALOR DO ICMS = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedTOTICM.AsFloat, 2));
  if pos('VALOR DO ICMS =', fmManNot_NFE.FatPedOB8FAT.AsString) > 0 then fmManNot_NFE.FatPedOB8FAT.AsString := 'VALOR DO ICMS = ' + FormatFloat('0.00', fROUND(fmManNot_NFE.FatPedTOTICM.AsFloat, 2));

  if fmManNot_NFE.SeqImpText = 'N' then
  begin

    fmManNot_NFE.SeqImpText := 'S';

    SeqLin := 1;

    qusql1.Active   := false;
    qusql1.SQL.Text := 'Select FLGCOT from FATPAR';
    qusql1.Open;

    if qusql1.fieldbyname('FLGCOT').asstring = 'Sim' then
    begin
      fmManNot_NFE.FatPedOb1Fat.Value := '';
      fmManNot_NFE.FatPedOb2Fat.Value := '';
      fmManNot_NFE.FatPedOb3Fat.Value := '';
      fmManNot_NFE.FatPedOb4Fat.Value := '';
      fmManNot_NFE.FatPedOb5Fat.Value := '';
      fmManNot_NFE.FatPedOb6Fat.Value := '';
      fmManNot_NFE.FatPedOb7Fat.Value := '';
      fmManNot_NFE.FatPedOb8Fat.Value := '';
    end;

    if Trim(fmManNot_NFE.FatPedOb1Fat.Value) = '' then
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
        Close;
        Text := ' Select Distinct FatPe2.CodTxf' +
                ' From FatPe2' +
                ' Where FatPe2.CodEmp = :CodEmp' +
                '   and FatPe2.DteRes = :DteRes' +
                '   and FatPe2.NumRes = :NumRes' +
                '   and FatPe2.SeqLib = :SeqLib' +
                '   and FatPe2.SeqFat = :SeqFat';

        with Params do
        begin
          Params[0].AsInteger := fmManNot_NFE.FatPedCodEmp.Value;
          Params[1].AsDateTime := fmManNot_NFE.FatPedDteRes.Value;
          Params[2].AsInteger := fmManNot_NFE.FatPedNumRes.Value;
          Params[3].AsInteger := fmManNot_NFE.FatPedSeqLib.Value;
          Params[4].AsInteger := fmManNot_NFE.FatPedSeqFat.Value;
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
              Params[0].AsInteger := fmManNot_NFE.FatPedCodEmp.Value;
              Params[1].AsDateTime := fmManNot_NFE.FatPedDteRes.Value;
              Params[2].AsInteger := fmManNot_NFE.FatPedNumRes.Value;
              Params[3].AsInteger := fmManNot_NFE.FatPedSeqLib.Value;
              Params[4].AsInteger := fmManNot_NFE.FatPedSeqFat.Value;
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

                if (2000 - Length(Ob1Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
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

                if (2000 - Length(Ob2Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
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

                if (2000 - Length(Ob3Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
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

                if (2000 - Length(Ob4Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
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

                if (2000 - Length(Ob5Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
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

                if (2000 - Length(Ob6Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
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

                if (2000 - Length(Ob7Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
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

                if (2000 - Length(Ob8Fat)) < (Length(Trim(quSQL2.FieldbyName('ClsIpi').AsString)) + 1) then
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

            if SeqLin = 1 then Ob1Fat := Ob1Fat + ' ';
            if SeqLin = 2 then Ob2Fat := Ob2Fat + ' ';
            if SeqLin = 3 then Ob3Fat := Ob3Fat + ' ';
            if SeqLin = 4 then Ob4Fat := Ob4Fat + ' ';
            if SeqLin = 5 then Ob5Fat := Ob5Fat + ' ';
            if SeqLin = 6 then Ob6Fat := Ob6Fat + ' ';
            if SeqLin = 7 then Ob7Fat := Ob7Fat + ' ';
            if SeqLin = 8 then Ob8Fat := Ob8Fat + ' ';

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

                if (2000 - Length(Ob1Fat)) < (Length(ObsFat) + 1) then
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

                if (2000 - Length(Ob2Fat)) < (Length(ObsFat) + 1) then
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

                if (2000 - Length(Ob3Fat)) < (Length(ObsFat) + 1) then
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

                if (2000 - Length(Ob4Fat)) < (Length(ObsFat) + 1) then
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

                if (2000 - Length(Ob5Fat)) < (Length(ObsFat) + 1) then
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

                if (2000 - Length(Ob6Fat)) < (Length(ObsFat) + 1) then
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

                if (2000 - Length(Ob7Fat)) < (Length(ObsFat) + 1) then
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

                if (2000 - Length(Ob8Fat)) < (Length(ObsFat) + 1) then
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

      if Trim(fmManNot_NFE.FatPedObsFat.Value) <> '' then
      begin

        DscTxf := fmManNot_NFE.FatPedObsFat.Value;

        SeqEnc := 1;

        while SeqEnc = 1 do
        begin

          if pos(' ', DscTxf) > 0 then
            ObsFat := copy(DscTxf, 1, (pos(' ', DscTxf) - 1))
          else
            ObsFat := DscTxf;

          if SeqLin = 1 then
          begin

            if (2000 - Length(Ob1Fat)) < (Length(ObsFat) + 1) then
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

            if (2000 - Length(Ob2Fat)) < (Length(ObsFat) + 1) then
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

            if (2000 - Length(Ob3Fat)) < (Length(ObsFat) + 1) then
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

            if (2000 - Length(Ob4Fat)) < (Length(ObsFat) + 1) then
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

            if (2000 - Length(Ob5Fat)) < (Length(ObsFat) + 1) then
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

            if (2000 - Length(Ob6Fat)) < (Length(ObsFat) + 1) then
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

            if (2000 - Length(Ob7Fat)) < (Length(ObsFat) + 1) then
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

            if (2000 - Length(Ob8Fat)) < (Length(ObsFat) + 1) then
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

      if (Trim(fmManNot_NFE.FatPedCodCf1.Value) = '6.403') or
         (Trim(fmManNot_NFE.FatPedCodCf2.Value) = '6.403') or
         (Trim(fmManNot_NFE.FatPedCodCf1.Value) = '5.403') or
         (Trim(fmManNot_NFE.FatPedCodCf2.Value) = '5.403') or
         (Trim(fmManNot_NFE.FatPedCodCf2.Value) = '6.403') or
         (Trim(fmManNot_NFE.FatPedCodCf2.Value) = '6.411') then
      begin

        with fmManNot_NFE.quSQL, SQL do
        begin

          Close;
          Text := ' Select Sum(FatPe2.BasIcm) as BasIcm,' +
                  '        Sum(FatPe2.TotIcm) as TotIcm' +
                  ' From FatPe2' +
                  ' Where FatPe2.CodEmp = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedCodEmp.Value)) +
                  '   and FatPe2.DteRes = ' + QuotedStr(fDateToSQL(fmManNot_NFE.FatPedDteRes.Value)) +
                  '   and FatPe2.NumRes = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedNumRes.Value)) +
                  '   and FatPe2.SeqLib = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedSeqLib.Value)) +
                  '   and FatPe2.SeqFat = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedSeqFat.Value)) +
                  '   and FatPe2.CodCfo = ' + QuotedStr('5.403');

          Open;

          BasIcm := FieldbyName('BasIcm').AsFloat;
          TotIcm := FieldbyName('TotIcm').AsFloat;

        end;
        with fmManNot_NFE.quSQL, SQL do
        begin

          Close;
          Text := ' Select Sum(FatPe2.BasIcm) as BasIcm,' +
                  '        Sum(FatPe2.TotIcm) as TotIcm' +
                  ' From FatPe2' +
                  ' Where FatPe2.CodEmp = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedCodEmp.Value)) +
                  '   and FatPe2.DteRes = ' + QuotedStr(fDateToSQL(fmManNot_NFE.FatPedDteRes.Value)) +
                  '   and FatPe2.NumRes = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedNumRes.Value)) +
                  '   and FatPe2.SeqLib = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedSeqLib.Value)) +
                  '   and FatPe2.SeqFat = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedSeqFat.Value)) +
                  '   and FatPe2.CodCfo = ' + QuotedStr('6.403');

          Open;

          BasIcm := BasIcm + FieldbyName('BasIcm').AsFloat;
          TotIcm := TotIcm + FieldbyName('TotIcm').AsFloat;

        end;

        with fmManNot_NFE.quSQL, SQL do
        begin

          Close;
          Text := ' Select Sum(FatPe2.BasIcm) as BasIcm,' +
                  '        Sum(FatPe2.TotIcm) as TotIcm' +
                  ' From FatPe2' +
                  ' Where FatPe2.CodEmp = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedCodEmp.Value)) +
                  '   and FatPe2.DteRes = ' + QuotedStr(fDateToSQL(fmManNot_NFE.FatPedDteRes.Value)) +
                  '   and FatPe2.NumRes = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedNumRes.Value)) +
                  '   and FatPe2.SeqLib = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedSeqLib.Value)) +
                  '   and FatPe2.SeqFat = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedSeqFat.Value)) +
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

          if      Trim(Ob2Fat) = '' then Ob2Fat := 'BASE DE CALCULO = ' + FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedBASICM.AsFloat)
          else if Trim(Ob3Fat) = '' then Ob3Fat := 'BASE DE CALCULO = ' + FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedBASICM.AsFloat)
          else if Trim(Ob4Fat) = '' then Ob4Fat := 'BASE DE CALCULO = ' + FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedBASICM.AsFloat)
          else if Trim(Ob5Fat) = '' then Ob5Fat := 'BASE DE CALCULO = ' + FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedBASICM.AsFloat)
          else if Trim(Ob6Fat) = '' then Ob6Fat := 'BASE DE CALCULO = ' + FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedBASICM.AsFloat)
          else if Trim(Ob7Fat) = '' then Ob7Fat := 'BASE DE CALCULO = ' + FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedBASICM.AsFloat)
          else if Trim(Ob8Fat) = '' then Ob8Fat := 'BASE DE CALCULO = ' + FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedBASICM.AsFloat);

          if      Trim(Ob3Fat) = '' then Ob3Fat := 'VALOR DO ICMS = ' + FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTOTICM.AsFloat)
          else if Trim(Ob4Fat) = '' then Ob4Fat := 'VALOR DO ICMS = ' + FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTOTICM.AsFloat)
          else if Trim(Ob5Fat) = '' then Ob5Fat := 'VALOR DO ICMS = ' + FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTOTICM.AsFloat)
          else if Trim(Ob6Fat) = '' then Ob6Fat := 'VALOR DO ICMS = ' + FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTOTICM.AsFloat)
          else if Trim(Ob7Fat) = '' then Ob7Fat := 'VALOR DO ICMS = ' + FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTOTICM.AsFloat)
          else if Trim(Ob8Fat) = '' then Ob8Fat := 'VALOR DO ICMS = ' + FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTOTICM.AsFloat);

        end;
      end;

      fmManNot_NFE.FatPedOb1Fat.AsString := textoDinamicoNF(Ob1Fat);
      fmManNot_NFE.FatPedOb2Fat.AsString := textoDinamicoNF(Ob2Fat);
      fmManNot_NFE.FatPedOb3Fat.AsString := textoDinamicoNF(Ob3Fat);
      fmManNot_NFE.FatPedOb4Fat.AsString := textoDinamicoNF(Ob4Fat);
      fmManNot_NFE.FatPedOb5Fat.AsString := textoDinamicoNF(Ob5Fat);
      fmManNot_NFE.FatPedOb6Fat.AsString := textoDinamicoNF(Ob6Fat);
      fmManNot_NFE.FatPedOb7Fat.AsString := textoDinamicoNF(Ob7Fat);
      fmManNot_NFE.FatPedOb8Fat.AsString := textoDinamicoNF(Ob8Fat);

      EdOb1Fat.Text := fmManNot_NFE.FatPedOb1Fat.AsString;
      EdOb2Fat.Text := fmManNot_NFE.FatPedOb2Fat.AsString;
      EdOb3Fat.Text := fmManNot_NFE.FatPedOb3Fat.AsString;
      EdOb4Fat.Text := fmManNot_NFE.FatPedOb4Fat.AsString;
      EdOb5Fat.Text := fmManNot_NFE.FatPedOb5Fat.AsString;
      EdOb6Fat.Text := fmManNot_NFE.FatPedOb6Fat.AsString;
      EdOb7Fat.Text := fmManNot_NFE.FatPedOb7Fat.AsString;
      EdOb8Fat.Text := fmManNot_NFE.FatPedOb8Fat.AsString;

    end;
  end;

  fmManNot_NFE.FatPedOb1Fat.AsString := textoDinamicoNF(fmManNot_NFE.FatPedOb1Fat.AsString);
  fmManNot_NFE.FatPedOb2Fat.AsString := textoDinamicoNF(fmManNot_NFE.FatPedOb2Fat.AsString);
  fmManNot_NFE.FatPedOb3Fat.AsString := textoDinamicoNF(fmManNot_NFE.FatPedOb3Fat.AsString);
  fmManNot_NFE.FatPedOb4Fat.AsString := textoDinamicoNF(fmManNot_NFE.FatPedOb4Fat.AsString);
  fmManNot_NFE.FatPedOb5Fat.AsString := textoDinamicoNF(fmManNot_NFE.FatPedOb5Fat.AsString);
  fmManNot_NFE.FatPedOb6Fat.AsString := textoDinamicoNF(fmManNot_NFE.FatPedOb6Fat.AsString);
  fmManNot_NFE.FatPedOb7Fat.AsString := textoDinamicoNF(fmManNot_NFE.FatPedOb7Fat.AsString);
  fmManNot_NFE.FatPedOb8Fat.AsString := textoDinamicoNF(fmManNot_NFE.FatPedOb8Fat.AsString);

  EdOb1Fat.Text := fmManNot_NFE.FatPedOb1Fat.AsString;
  EdOb2Fat.Text := fmManNot_NFE.FatPedOb2Fat.AsString;
  EdOb3Fat.Text := fmManNot_NFE.FatPedOb3Fat.AsString;
  EdOb4Fat.Text := fmManNot_NFE.FatPedOb4Fat.AsString;
  EdOb5Fat.Text := fmManNot_NFE.FatPedOb5Fat.AsString;
  EdOb6Fat.Text := fmManNot_NFE.FatPedOb6Fat.AsString;
  EdOb7Fat.Text := fmManNot_NFE.FatPedOb7Fat.AsString;
  EdOb8Fat.Text := fmManNot_NFE.FatPedOb8Fat.AsString;

  EdOb1Fat.SetFocus;

end;

procedure TfmManNt2_NFE.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManNt2_NFE.bContinuarClick(Sender: TObject);
begin

  ActiveControl := nil;

  fmManNot_NFE.FatPedOb1Fat.AsString := Trim(fmManNot_NFE.FatPedOb1Fat.AsString);
  fmManNot_NFE.FatPedOb2Fat.AsString := Trim(fmManNot_NFE.FatPedOb2Fat.AsString);
  fmManNot_NFE.FatPedOb3Fat.AsString := Trim(fmManNot_NFE.FatPedOb3Fat.AsString);
  fmManNot_NFE.FatPedOb4Fat.AsString := Trim(fmManNot_NFE.FatPedOb4Fat.AsString);
  fmManNot_NFE.FatPedOb5Fat.AsString := Trim(fmManNot_NFE.FatPedOb5Fat.AsString);
  fmManNot_NFE.FatPedOb6Fat.AsString := Trim(fmManNot_NFE.FatPedOb6Fat.AsString);
  fmManNot_NFE.FatPedOb7Fat.AsString := Trim(fmManNot_NFE.FatPedOb7Fat.AsString);
  fmManNot_NFE.FatPedOb8Fat.AsString := Trim(fmManNot_NFE.FatPedOb8Fat.AsString);

  with fmManNot_NFE.FatPed do
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

      if fmManNot_NFE.FatPed.State = dsBrowse then
        fmManNot_NFE.FatPed.Edit;

      EdOb1Fat.SetFocus;

      raise;

    end;

    CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManNot_NFE.FatPed.Close;
  fmManNot_NFE.FatPed.Open;

  try

    fmManNt3_NFE := TfmManNt3_NFE.Create(Self);

    fmManNt3_NFE.ShowModal;

  finally

    FreeAndNil(fmManNt3_NFE);

  end;

  if fmManNot_NFE.Finalizar = 'S' then
    Close
  else
  begin

    fmManNot_NFE.FatPed.Edit;

    EdOb1Fat.SetFocus;

  end;
end;

procedure TfmManNt2_NFE.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManNt2_NFE.EdPraPe3KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManNt2_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManNot_NFE.FatPed.State <> dsBrowse then
    fmManNot_NFE.FatPed.CancelUpdates;
end;

function TfmManNt2_NFE.textoDinamicoNF(strTexto: string): string;
var
  strValor: string;
  strAntigo: string;
begin
  strAntigo := strTexto;

  if (pos('{{TOTNFE}}', strAntigo)) > 0 then
  begin
    strValor := formatfloat('R$ #,##0.00', fmManNot_NFE.FatPedTotGer.AsFloat);
    strAntigo := StringReplace(strAntigo, '{{TOTNFE}}', strValor, [rfReplaceAll, rfIgnoreCase]);
  end;

  if (pos('{{BASSUBNFE}}', strAntigo)) > 0 then
  begin
    strValor := formatfloat('R$ #,##0.00', fmManNot_NFE.FatPedBasSub.AsFloat);
    strAntigo := StringReplace(strAntigo, '{{BASSUBNFE}}', strValor, [rfReplaceAll, rfIgnoreCase]);
  end;

  if (pos('{{TOTSUBNFE}}', strAntigo)) > 0 then
  begin
    strValor := formatfloat('R$ #,##0.00', fmManNot_NFE.FatPedTotSub.AsFloat);
    strAntigo := StringReplace(strAntigo, '{{TOTSUBNFE}}', strValor, [rfReplaceAll, rfIgnoreCase]);
  end;

  if (pos('{{BASIPINFE}}', strAntigo)) > 0 then
  begin
    strValor := formatfloat('R$ #,##0.00', fmManNot_NFE.FatPedBasIpi.AsFloat);
    strAntigo := StringReplace(strAntigo, '{{BASIPINFE}}', strValor, [rfReplaceAll, rfIgnoreCase]);
  end;

  if (pos('{{TOTIPINFE}}', strAntigo)) > 0 then
  begin
    strValor := formatfloat('R$ #,##0.00', fmManNot_NFE.FatPedTotIpi.AsFloat);
    strAntigo := StringReplace(strAntigo, '{{TOTIPINFE}}', strValor, [rfReplaceAll, rfIgnoreCase]);
  end;

  if (pos('{{ALIQCREDNFE}}', strAntigo)) > 0 then
  begin
    strValor := formatfloat('#,##0.00%', fmManNot_NFE.FatPedALIQ_CRED_SN.AsFloat);
    strAntigo := StringReplace(strAntigo, '{{ALIQCREDNFE}}', strValor, [rfReplaceAll, rfIgnoreCase]);
  end;

  if (pos('{{VLRCREDNFE}}', strAntigo)) > 0 then
  begin
    strValor := formatfloat('R$ #,##0.00', (fmManNot_NFE.FatPedTotFat.AsFloat * (fmManNot_NFE.FatPedALIQ_CRED_SN.AsFloat / 100)));
    strAntigo := StringReplace(strAntigo, '{{VLRCREDNFE}}', strValor, [rfReplaceAll, rfIgnoreCase]);
  end;

  Result := strAntigo;

end;

end.

