unit PsqLib;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, ExtCtrls, StdCtrls, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid, hGrid,
  RDprint;

type
  TfmPsqLib = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label2: TLabel;
    Label1: TLabel;
    dbLib: TdxDBGraphicEdit;
    PedLib: TwwQuery;
    DsPedLib: TwwDataSource;
    DsPedSep: TwwDataSource;
    PedSep: TwwQuery;
    grLib: ThGrid;
    pnNomLib: TPanel;
    pnNomFat: TPanel;
    Panel2: TPanel;
    pnTotDsr: TPanel;
    grSep1: TdxDBGraphicEdit;
    grSep: ThGrid;
    Label9: TLabel;
    PedLibNRONFS: TIntegerField;
    PedLibDTEFAT: TDateTimeField;
    PedLibHREFAT: TStringField;
    PedLibTOTIPI: TFloatField;
    PedLibTOTICM: TFloatField;
    PedLibTOTLIB: TFloatField;
    PedLibTOTGER: TFloatField;
    PedLibUSUFAT: TIntegerField;
    PedLibDTELIB: TDateTimeField;
    PedLibHRELIB: TStringField;
    PedLibUSULIB: TIntegerField;
    PedLibNOMLIB: TStringField;
    PedLibNOMFAT: TStringField;
    PedSepULTQTS: TFloatField;
    PedSepTOTLB2: TFloatField;
    PedSepTOTGE2: TFloatField;
    Label3: TLabel;
    Label4: TLabel;
    grLb21: TdxDBGraphicEdit;
    grLb2: ThGrid;
    PedLb2: TwwQuery;
    DsPedLb2: TwwDataSource;
    PedLibID_PEDLIB: TIntegerField;
    PedSepDESRE2: TStringField;
    PedSepVLQRE2: TFloatField;
    PedSepIPIRE2: TFloatField;
    PedSepICMRE2: TFloatField;
    PedSepCODITE: TStringField;
    PedLb2SLDLB2: TFloatField;
    PedLb2TOTLB2: TFloatField;
    PedLb2TOTGE2: TFloatField;
    PedLb2DESRE2: TStringField;
    PedLb2VLQRE2: TFloatField;
    PedLb2IPIRE2: TFloatField;
    PedLb2ICMRE2: TFloatField;
    PedLb2CODITE: TStringField;
    PedPar: TwwQuery;
    PedParUSADEC: TStringField;
    PedLibTOTFRT: TFloatField;
    PedLibTOTSUB: TFloatField;
    Panel1: TPanel;
    pnTotSub: TPanel;
    PedLibTOTDSR: TFloatField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DsPedLibDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPsqLib: TfmPsqLib;

implementation

uses dxDemoUtils, Bbmensag, Bbfuncao, Bbgeral, ManGDB, ManE08;

{$R *.DFM}

procedure TfmPsqLib.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqLib.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 116 then begin

     if PedLibId_PedLib.Value > 0 then begin

        if fMsg('Confirma impressão do pedido ?','O') then begin

           try

              fmManE08 := TfmManE08.Create(Self);

              fmManE08.PedLib.Close;
              fmManE08.PedLib.Params[0].AsInteger := PedLibId_PedLib.Value;
              fmManE08.PedLib.Open;

              fmManE08.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE08);

           end;
        end;
     end;
  end;
end;

procedure TfmPsqLib.DsPedLibDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnTotSub.Caption := FormatFloat('###,###,##0.00',PedLibTotSub.Value);
  pnTotDsr.Caption := FormatFloat('###,###,##0.00',PedLibTotDsr.Value);

  if PedLibId_PedLib.Value > 0 then begin

     pnNomLib.Caption := ' Liberado por ' + PedLibNomLib.Value;

     pnNomFat.Caption := ' Faturado por ' + PedLibNomFat.Value;

     end
  else
     begin

     pnNomLib.Caption := ' Liberado por ';

     pnNomFat.Caption := ' Faturado por  ';

  end;
end;

procedure TfmPsqLib.FormShow(Sender: TObject);
begin
  inherited;

  if PedParUsaDec.Value = 'Nao' then begin

     PedSepUltQts.DisplayFormat := '###,###,##0';
     PedLb2SldLb2.DisplayFormat := '###,###,##0';

  end;

  grLib.SetFocus;
  
end;

end.

