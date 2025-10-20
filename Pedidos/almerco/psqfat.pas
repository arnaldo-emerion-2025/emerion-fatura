unit PsqFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, ExtCtrls, StdCtrls, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid, hGrid,
  RDprint;

type
  TfmPsqFat = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label2: TLabel;
    Label1: TLabel;
    grFat1: TdxDBGraphicEdit;
    FatPed: TwwQuery;
    DsFatPed: TwwDataSource;
    DsFatPe4: TwwDataSource;
    FatPe4: TwwQuery;
    FatPedDTEFAT: TDateTimeField;
    FatPedHREFAT: TStringField;
    FatPedTOTIPI: TFloatField;
    FatPedTOTICM: TFloatField;
    FatPedTOTFAT: TFloatField;
    FatPedTOTGER: TFloatField;
    FatPedALTVOL: TIntegerField;
    FatPedUSUFAT: TIntegerField;
    FatPedDTELIB: TDateTimeField;
    FatPedHRELIB: TStringField;
    FatPedUSULIB: TIntegerField;
    FatPedNOMLIB: TStringField;
    FatPedNOMFAT: TStringField;
    grFat: ThGrid;
    FatPedNRONFS: TIntegerField;
    pnNomLib: TPanel;
    pnNomFat: TPanel;
    Panel2: TPanel;
    pnTotIcm: TPanel;
    grPe41: TdxDBGraphicEdit;
    Label9: TLabel;
    Label3: TLabel;
    FatPedDTESDA: TDateTimeField;
    FatPedHRESDA: TStringField;
    FatPedTRASDA: TIntegerField;
    FatPedCODVEI: TIntegerField;
    FatPedDTEENT: TDateTimeField;
    FatPedHREENT: TStringField;
    FatPedDTEATU: TDateTimeField;
    FatPedHREATU: TStringField;
    FatPedUSUATU: TIntegerField;
    FatPedNROCOL: TStringField;
    pnSitFat: TPanel;
    FatPedSITFAT: TStringField;
    FatPedQTDVOL: TIntegerField;
    Label4: TLabel;
    PedLb2: TwwQuery;
    DsLb2: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    grLb2: ThGrid;
    FatPedTOTDSR: TFloatField;
    FatPedTOTSUB: TFloatField;
    FatPedQTIPE6: TIntegerField;
    FatPedQTIPE7: TIntegerField;
    FatPedOB1SDA: TStringField;
    FatPedOB2SDA: TStringField;
    FatPedOB3SDA: TStringField;
    FatPedOB4SDA: TStringField;
    FatPedOB5SDA: TStringField;
    FatPedOB1ENT: TStringField;
    FatPedOB2ENT: TStringField;
    FatPedOB3ENT: TStringField;
    FatPedOB4ENT: TStringField;
    FatPedOB5ENT: TStringField;
    FatPedQTPSEL: TIntegerField;
    FatPedID_FATPED: TIntegerField;
    FatPe4DESPE4: TStringField;
    FatPe4QTPPE4: TFloatField;
    FatPe4VLUPE4: TFloatField;
    FatPe4ICMPE4: TFloatField;
    FatPe4IPIPE4: TFloatField;
    FatPe4TOTPE4: TFloatField;
    FatPe4TOTIPI: TFloatField;
    FatPe4TOTGE4: TFloatField;
    FatPe4CODITE: TStringField;
    grPe4: ThGrid;
    PedLb2DESRE2: TStringField;
    PedLb2SLDLB2: TFloatField;
    PedLb2VLQRE2: TFloatField;
    PedLb2IPIRE2: TFloatField;
    PedLb2ICMRE2: TFloatField;
    PedLb2CODITE: TStringField;
    quSql: TwwQuery;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DsFatPedDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPsqFat: TfmPsqFat;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, ManGDB, PsqEnt, PsqCre, ManCc2,
     ManE12, ManE16;

{$R *.DFM}

procedure TfmPsqFat.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqFat.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if FatPedId_FatPed.Value > 0 then begin

     if key = 112 then begin

        try

           fmPsqEnt := TfmPsqEnt.Create(Self);
           fmPsqEnt.ShowModal;

        finally

           FreeAndNil(fmPsqEnt);

        end;
     end;

     if key = 113 then begin

        try

           fmPsqCre := TfmPsqCre.Create(Self);

           fmPsqCre.FinCrp.Close;
           fmPsqCre.FinCrp.Params[0].AsInteger := FatPedId_FatPed.Value;
           fmPsqCre.FinCrp.Open;

           fmPsqCre.ShowModal;

        finally

           FreeAndNil(fmPsqCre);

        end;
     end;

     if key = 116 then begin

        if FatPedId_FatPed.Value > 0 then begin

           if fMsg('Confirma impressão do pedido ?','O') then begin

              try

                 fmManE12 := TfmManE12.Create(Self);

                 fmManE12.FatPed.Close;
                 fmManE12.FatPed.Params[0].AsInteger := FatPedId_FatPed.Value;
                 fmManE12.FatPed.Open;

                 fmManE12.RLReport1.PreviewModal;

              finally

                 FreeAndNil(fmManE12);

              end;
           end;
        end;
     end;

     if key = 117 then begin

        if FatPedId_FatPed.Value > 0 then begin

           if fMsg('Confirma impressão da cópia da nota fiscal ?','O') then begin

              try

                 fmManE16 := TfmManE16.Create(Self);

                 fmManE16.FatPed.Close;
                 fmManE16.FatPed.Params[0].AsInteger := FatPedId_FatPed.Value;
                 fmManE16.FatPed.Open;

                 fmManE16.RLReport1.PreviewModal;

              finally

                 FreeAndNil(fmManE16);

              end;
           end;
        end;
     end;
  end;
end;

procedure TfmPsqFat.FormShow(Sender: TObject);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select PedPar.UsaDec From PedPar';
       Open;

       if FieldbyName('UsaDec').AsString = 'Sim' then begin

          FatPe4QtpPe4.DisplayFormat := '###,###,##0.0000';
          PedLb2SldLb2.DisplayFormat := '###,###,##0.0000';

          end
       else
          begin

          FatPe4QtpPe4.DisplayFormat := '###,###,##0';
          PedLb2SldLb2.DisplayFormat := '###,###,##0';

       end;
  end;

  Label3.Caption := 'F1-Detalhes de entrega  F2-Vencimentos  F5-Imprimir pedido  F6-Cópia da nota fiscal';
     
end;

procedure TfmPsqFat.DsFatPedDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnSitFat.Caption := Trim(FatPedSitFat.Value);

  if FatPedId_FatPed.Value > 0 then begin

     pnTotIcm.Caption := FormatFloat('###,###,##0.00',FatPedTotIcm.Value)+' ';

     pnNomLib.Caption := ' Liberado por ' + Trim(FatPedNomLib.Value);

     pnNomFat.Caption := ' Faturado por ' + Trim(FatPedNomFat.Value);

     end
  else
     begin

     pnNomLib.Caption := ' Liberado por ';

     pnNomFat.Caption := ' Faturado por  ';

  end;
end;

end.

