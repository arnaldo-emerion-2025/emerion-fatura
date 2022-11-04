unit PsqHre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, ExtCtrls, StdCtrls, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid, hGrid;

type
  TfmPsqHre = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    PedLog: TwwQuery;
    DsLog: TwwDataSource;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grLog: ThGrid;
    Label9: TLabel;
    PedLogDTELOG: TDateTimeField;
    PedLogHRELOG: TStringField;
    PedLogSITANT: TStringField;
    PedLogSITATU: TStringField;
    PedLogLOGUSU: TStringField;
    Label13: TLabel;
    PedLogSEQLIB: TIntegerField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DsLogDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPsqHre: TfmPsqHre;

implementation

uses dxDemoUtils, PsqHr1, PsqHr2, PsqHr3, PsqHr4, PsqHr5;

{$R *.DFM}

procedure TfmPsqHre.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqHre.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 112 then begin

     if Label13.Visible then begin

        if Trim(PedLogSitAtu.Value) = 'Rejeitado' then begin

           try

              fmPsqHr1 := TfmPsqHr1.Create(Self);

              if Trim(PedLogSitAnt.Value) = 'Aguardando Liberacao do Depto Comercial' then
                 fmPsqHr1.Caption := 'Aguardando liberação do depto comercial';

              if Trim(PedLogSitAnt.Value) = 'Aguardando Consultas de Cadastro' then
                 fmPsqHr1.Caption := 'Aguardando consultas de cadastro';

              if Trim(PedLogSitAnt.Value) = 'Aguardando Liberacao do Depto Financeiro' then
                 fmPsqHr1.Caption := 'Aguardando liberacao do depto financeiro';
                 
              fmPsqHr1.PedRej.Close;
              fmPsqHr1.PedRej.Params[0].AsInteger := PedLogSeqLib.Value;
              fmPsqHr1.PedRej.Open;

              fmPsqHr1.ShowModal;

           finally

              FreeAndNil(fmPsqHr1);

           end;

           end
        else
           begin

           if Trim(PedLogSitAtu.Value) = 'Aguardando Complemento' then begin

              try

                 fmPsqHr4 := TfmPsqHr4.Create(Self);

                 if Trim(PedLogSitAnt.Value) = 'Aguardando Liberacao do Depto Comercial' then
                    fmPsqHr4.Caption := 'Aguardando liberação do depto comercial';

                 if Trim(PedLogSitAnt.Value) = 'Aguardando Liberacao do Depto Financeiro' then
                    fmPsqHr4.Caption := 'Aguardando liberacao do depto financeiro';

                 if Trim(PedLogSitAnt.Value) = 'Aguardando Separacao de Estoque' then
                    fmPsqHr4.Caption := 'Aguardando separacao de estoque';

                 fmPsqHr4.PedVen.Close;
                 fmPsqHr4.PedVen.Params[0].AsInteger := PedLogSeqLib.Value;
                 fmPsqHr4.PedVen.Open;

                 fmPsqHr4.ShowModal;

              finally

                 FreeAndNil(fmPsqHr4);

              end;

              end
           else
              begin
              
              if Trim(PedLogSitAnt.Value) = 'Aguardando Liberacao do Depto Comercial' then begin

                 try

                    fmPsqHr2 := TfmPsqHr2.Create(Self);

                    fmPsqHr2.PedCom.Close;
                    fmPsqHr2.PedCom.Params[0].AsInteger := PedLogSeqLib.Value;
                    fmPsqHr2.PedCom.Open;

                    fmPsqHr2.ShowModal;

                 finally

                    FreeAndNil(fmPsqHr2);

                 end;
              end;

              if Trim(PedLogSitAnt.Value) = 'Aguardando Consultas de Cadastro' then begin

                 try

                    fmPsqHr3 := TfmPsqHr3.Create(Self);

                    fmPsqHr3.PedCon.Close;
                    fmPsqHr3.PedCon.Params[0].AsInteger := PedLogSeqLib.Value;
                    fmPsqHr3.PedCon.Open;

                    fmPsqHr3.ShowModal;

                 finally

                    FreeAndNil(fmPsqHr3);

                 end;
              end;

              if Trim(PedLogSitAnt.Value) = 'Aguardando Liberacao do Depto Financeiro' then begin

                 try

                    fmPsqHr5 := TfmPsqHr5.Create(Self);

                    fmPsqHr5.PedFin.Close;
                    fmPsqHr5.PedFin.Params[0].AsInteger := PedLogSeqLib.Value;
                    fmPsqHr5.PedFin.Open;

                    fmPsqHr5.ShowModal;

                 finally

                    FreeAndNil(fmPsqHr5);

                 end;
              end;
           end;
        end;      
     end;
  end;
end;

procedure TfmPsqHre.DsLogDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if PedLogSeqLib.Value > 0 then begin

     if not Label13.Visible then Label13.Visible := True;

     end
  else
     begin

     if Label13.Visible then Label13.Visible := False;
     
  end
end;

end.

