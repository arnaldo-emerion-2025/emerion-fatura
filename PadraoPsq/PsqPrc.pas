unit PsqPrc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxDBColorDateEdit, dxDBColorCurrencyEdit,
  dxColorEdit, dxDBColorEdit;

type
  TfmPsqPrc = class(TForm)
    EstPro: TwwQuery;
    DsPro: TwwDataSource;
    EstProDSCPRO: TStringField;
    EstProREFPRO: TStringField;
    Label1: TLabel;
    Label4: TLabel;
    dxDBEdit6: TdxDBColorEdit;
    dxDBEdit5: TdxDBColorEdit;
    EdNomGru: TEdit;
    EdNomSub: TEdit;
    dxDBEdit28: TdxDBColorEdit;
    grPro: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label2: TLabel;
    EstProNUMPRO: TStringField;
    Label3: TLabel;
    dxDBEdit1: TdxDBColorEdit;
    EdNomCat: TEdit;
    Label5: TLabel;
    dxDBEdit2: TdxDBColorEdit;
    EdNomTip: TEdit;
    Label6: TLabel;
    dxDBEdit3: TdxDBColorEdit;
    EdNomMrc: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DsIte: TwwDataSource;
    EstIte: TwwQuery;
    EstIteAPEEMP: TStringField;
    EstIteQTMITE: TFloatField;
    EstIteQTDITE: TFloatField;
    EstIteQTRITE: TFloatField;
    EstIteQTAITE: TFloatField;
    EstIteCODEMP: TIntegerField;
    EstIteCODPRO: TStringField;
    EstIteCODCLP: TStringField;
    EstIteCODGRU: TStringField;
    EstIteCODSUB: TStringField;
    EstIteVB1ITE: TFloatField;
    EstIteVB2ITE: TFloatField;
    EstIteVB3ITE: TFloatField;
    EstIteVB4ITE: TFloatField;
    EstIteVB5ITE: TFloatField;
    EstIteVP1ITE: TFloatField;
    EstIteVP2ITE: TFloatField;
    EstIteVP3ITE: TFloatField;
    EstIteVP4ITE: TFloatField;
    EstIteVP5ITE: TFloatField;
    dxDBEdit7: TdxDBColorEdit;
    Panel2: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    EdQtrIte: TAlignEdit;
    EdQtdIte: TAlignEdit;
    EdQtmIte: TAlignEdit;
    EdCodUns: TEdit;
    Label33: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    EdQtaIte: TAlignEdit;
    EdSldIte: TAlignEdit;
    EdQtdEmb: TAlignEdit;
    EdClfSai: TEdit;
    dxDBEdit21: TdxDBColorEdit;
    dxDBEdit20: TdxDBColorEdit;
    dxDBEdit19: TdxDBColorEdit;
    dxDBEdit33: TdxDBColorEdit;
    PaintBox1: TPaintBox;
    dxDBEdit10: TdxDBColorEdit;
    dxDBEdit14: TdxDBColorEdit;
    dxDBEdit15: TdxDBColorEdit;
    dxDBEdit16: TdxDBColorEdit;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    EstIteSLDITE: TFloatField;
    EstIteDS1ITE: TFloatField;
    EstIteDS2ITE: TFloatField;
    EstIteDS3ITE: TFloatField;
    EstIteDS4ITE: TFloatField;
    EstIteDS5ITE: TFloatField;
    EstIteDP1ITE: TFloatField;
    EstIteDP2ITE: TFloatField;
    EstIteDP3ITE: TFloatField;
    EstIteDP4ITE: TFloatField;
    EstIteDP5ITE: TFloatField;
    EstProCODANT: TStringField;
    Label7: TLabel;
    EstProCODCLP: TStringField;
    EstProCODGRU: TStringField;
    EstProCODSUB: TStringField;
    EstProCODPRO: TStringField;
    EstProSIMPRO: TStringField;
    EstProCBAPRO: TStringField;
    EstProCODUNS: TStringField;
    EstProCLFSAI: TStringField;
    EstProSAIIPI: TFloatField;
    EstProSAIICM: TFloatField;
    EstProQTDEMB: TFloatField;
    EstProCODTIP: TIntegerField;
    EstProCODCAT: TIntegerField;
    EstProFLGPRO: TStringField;
    EstProCODMRC: TIntegerField;
    EstProNOMCLP: TStringField;
    EstProNOMGRU: TStringField;
    EstProNOMSUB: TStringField;
    EstProNOMCAT: TStringField;
    EstProNOMTIP: TStringField;
    EstProNOMMRC: TStringField;
    EstProCODITE: TStringField;
    LbVb1Ite: TLabel;
    LbVb2Ite: TLabel;
    LbVb3Ite: TLabel;
    LbVb4Ite: TLabel;
    LbVb5Ite: TLabel;
    Label45: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label78: TLabel;
    dbQtdCmp: TdxDBColorCurrencyEdit;
    EdQtdCmp: TAlignEdit;
    dbDulCmp: TdxDBColorDateEdit;
    EdDulCmp: TEdit;
    dbVpfIte: TdxDBColorCurrencyEdit;
    EdVpfIte: TAlignEdit;
    dxDBEdit11: TdxDBColorEdit;
    EdVmeIte: TAlignEdit;
    dbVb5Ite: TdxDBColorEdit;
    EdVb5Ite: TAlignEdit;
    dbVb4Ite: TdxDBColorEdit;
    EdVb4Ite: TAlignEdit;
    dbVb3Ite: TdxDBColorEdit;
    EdVb3Ite: TAlignEdit;
    dbVb2Ite: TdxDBColorEdit;
    EdVb2Ite: TAlignEdit;
    dbVb1Ite: TdxDBColorEdit;
    EdVb1Ite: TAlignEdit;
    dbDs1Ite: TdxDBColorEdit;
    EdMk1Ite: TAlignEdit;
    dbDs2Ite: TdxDBColorEdit;
    EdMk2Ite: TAlignEdit;
    dbDs3Ite: TdxDBColorEdit;
    EdMk3Ite: TAlignEdit;
    dbDs4Ite: TdxDBColorEdit;
    EdMk4Ite: TAlignEdit;
    dbDs5Ite: TdxDBColorEdit;
    EdMk5Ite: TAlignEdit;
    EstIteVPFITE: TFloatField;
    EstIteDULCMP: TDateTimeField;
    EstIteQTDCMP: TFloatField;
    EstIteVMEITE: TFloatField;
    quSql: TwwQuery;
    procedure grProDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure DsProDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodEmp,CodFil : integer;
    ExiCst,SimPro,CodClp,CodGru,CodSub,CodPro,DscPro,CbaPro,NomClp,NomGru,NomSub : string;
  end;

var
  fmPsqPrc: TfmPsqPrc;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, ManGDB;

{$R *.DFM}

procedure TfmPsqPrc.grProDblClick(Sender: TObject);
begin

  CodClp := EstProCodClp.Value;
  NomClp := EstProNomClp.Value;
  CodGru := EstProCodGru.Value;
  NomGru := EstProNomGru.Value;
  CodSub := EstProCodSub.Value;
  NomSub := EstProNomSub.Value;
  CodPro := EstProCodPro.Value;
  DscPro := EstProDscPro.Value;
  SimPro := EstProSimPro.Value;
  CbaPro := EstProCbaPro.Value;

  Close;

end;

procedure TfmPsqPrc.EdPesquisaChange(Sender: TObject);
begin
  EstPro.Locate('DSCPRO',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqPrc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodClp := EstProCodClp.Value;
     NomClp := EstProNomClp.Value;
     CodGru := EstProCodGru.Value;
     NomGru := EstProNomGru.Value;
     CodSub := EstProCodSub.Value;
     NomSub := EstProNomSub.Value;
     CodPro := EstProCodPro.Value;
     DscPro := EstProDscPro.Value;
     SimPro := EstProSimPro.Value;
     CbaPro := EstProCbaPro.Value;

     Close;

  end;

  if key = 33 then EstPro.MoveBy(-10); {Page Up}
  if key = 34 then EstPro.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstPro.Last;  {End}
     if key = 36 then EstPro.First; {Home}

     if key = 40 then EstPro.Next; {Para Baixo}
     if key = 38 then EstPro.Prior; {Para Cima}

  end;
end;

procedure TfmPsqPrc.DsProDataChange(Sender: TObject; Field: TField);
var
Mk1Ite,Mk2Ite,Mk3Ite,Mk4Ite,Mk5Ite : real;
Vb1Ite,Vb2Ite,Vb3Ite,Vb4Ite,Vb5Ite : real;
begin

  EdCodUns.Text := ' '+EstProCodUns.Value;
  EdClfSai.Text := ' '+EstProClfSai.Value;

  EdNomGru.Text := ' '+fNumZeros(EstProCodGru.Value,4) + ' - ' + EstProNomGru.Value;
  EdNomSub.Text := ' '+fNumZeros(EstProCodSub.Value,4) + ' - ' + EstProNomSub.Value;

  if EstProCodCat.Value > 0 then
     EdNomCat.Text := ' '+fNumZeros(IntToStr( EstProCodCat.Value ),4) + ' - ' + EstProNomCat.Value
  else
     EdNomCat.Text := ' ';

  if EstProCodTip.Value > 0 then
     EdNomTip.Text := ' '+fNumZeros(IntToStr( EstProCodTip.Value ),4) + ' - ' + EstProNomTip.Value
  else
     EdNomTip.Text := ' ';

  if EstProCodMrc.Value > 0 then
     EdNomMrc.Text := ' '+fNumZeros(IntToStr( EstProCodMrc.Value ),4) + ' - ' + EstProNomMrc.Value
  else
     EdNomMrc.Text := ' ';
     
  EdQtdEmb.Text := FormatFloat('#####0',EstProQtdEmb.Value);

  if (EstIteCodClp.Value <> EstProCodClp.Value) or (EstIteCodGru.Value <> EstProCodGru.Value) or
     (EstIteCodSub.Value <> EstProCodSub.Value) or (EstIteCodPro.Value <> EstProCodPro.Value) then begin

     CodEmp := GEmp_Id;

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From GerEmp';
          Open;

     end;

     if quSQL.FieldbyName('QtdReg').AsInteger > 1 then begin     
     
        with quSQL,SQL do begin

             Close;
             Text := ' Select GerEmp.CodFil From GerEmp Where GerEmp.CodEmp = :CodEmp';

             with Params do begin

                  Params[0].AsInteger := GEmp_Id;

             end;

             Open;

             CodFil := FieldbyName('CodFil').AsInteger;

        end;

        if CodFil > 0 then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select GerEmp.LanEst From GerEmp Where GerEmp.CodEmp = :CodEmp';

                with Params do begin

                     Params[0].AsInteger := CodFil;

                end;

                Open;

                if FieldbyName('LanEst').AsString = 'Sim' then CodEmp := CodFil;

           end;
        end;
     end;
     
     EstIte.Close;
     EstIte.Params[0].AsInteger := CodEmp;
     EstIte.Params[1].AsString  := EstProCodClp.Value;
     EstIte.Params[2].AsString  := EstProCodGru.Value;
     EstIte.Params[3].AsString  := EstProCodSub.Value;
     EstIte.Params[4].AsString  := EstProCodPro.Value;
     EstIte.Open;

  end;

  Vb1Ite := EstIteVb1Ite.Value;
  Vb2Ite := EstIteVb2Ite.Value;
  Vb3Ite := EstIteVb3Ite.Value;
  Vb4Ite := EstIteVb4Ite.Value;
  Vb5Ite := EstIteVb5Ite.Value;

  Mk1Ite := 0;
  
  if EstIteVpfIte.Value > 0 then begin

     if EstIteVb1Ite.Value > 0 then Mk1Ite := fRound(((EstIteVb1Ite.Value - EstIteVpfIte.Value) * 100)/EstIteVpfIte.Value,2);

  end;

  Mk2Ite := 0;

  if EstIteVpfIte.Value > 0 then begin

     if EstIteVb2Ite.Value > 0 then Mk2Ite := fRound(((EstIteVb2Ite.Value - EstIteVpfIte.Value) * 100)/EstIteVpfIte.Value,2);

  end;

  Mk3Ite := 0;

  if EstIteVpfIte.Value > 0 then begin

     if EstIteVb3Ite.Value > 0 then Mk3Ite := fRound(((EstIteVb3Ite.Value - EstIteVpfIte.Value) * 100)/EstIteVpfIte.Value,2);

  end;

  Mk4Ite := 0;

  if EstIteVpfIte.Value > 0 then begin

     if EstIteVb4Ite.Value > 0 then Mk4Ite := fRound(((EstIteVb4Ite.Value - EstIteVpfIte.Value) * 100)/EstIteVpfIte.Value,2);

  end;

  Mk5Ite := 0;

  if EstIteVpfIte.Value > 0 then begin

     if EstIteVb5Ite.Value > 0 then Mk5Ite := fRound(((EstIteVb5Ite.Value - EstIteVpfIte.Value) * 100)/EstIteVpfIte.Value,2);

  end;

  EdVb1Ite.Text := FormatFloat('###,###,##0.0000',Vb1Ite);
  EdVb2Ite.Text := FormatFloat('###,###,##0.0000',Vb2Ite);
  EdVb3Ite.Text := FormatFloat('###,###,##0.0000',Vb3Ite);
  EdVb4Ite.Text := FormatFloat('###,###,##0.0000',Vb4Ite);
  EdVb5Ite.Text := FormatFloat('###,###,##0.0000',Vb5Ite);
  
  EdMk1Ite.Text := FormatFloat('###,###,##0.00',Mk1Ite);
  EdMk2Ite.Text := FormatFloat('###,###,##0.00',Mk2Ite);
  EdMk3Ite.Text := FormatFloat('###,###,##0.00',Mk3Ite);
  EdMk4Ite.Text := FormatFloat('###,###,##0.00',Mk4Ite);
  EdMk5Ite.Text := FormatFloat('###,###,##0.00',Mk5Ite);

  EdVpfIte.Text := FormatFloat('###,###,##0.0000',EstIteVpfIte.Value);
  EdVmeIte.Text := FormatFloat('###,###,##0.0000',EstIteVmeIte.Value);
  EdQtdCmp.Text := FormatFloat('###,###,##0.0000',EstIteQtdCmp.Value);

  if EstIteQtdCmp.Value > 0 then
     EdDulCmp.Text := ' ' + FormatDateTime('dd/mm/yyyy',EstIteDulCmp.Value)
  else
     EdDulCmp.Text := ' ';

  EdQtmIte.Text := FormatFloat('###,###,##0.0000',EstIteQtmIte.Value);
  EdQtdIte.Text := FormatFloat('###,###,##0.0000',EstIteQtdIte.Value);
  EdQtrIte.Text := FormatFloat('###,###,##0.0000',EstIteQtrIte.Value);
  EdQtaIte.Text := FormatFloat('###,###,##0.0000',EstIteQtaIte.Value);
  EdSldIte.Text := FormatFloat('###,###,##0.0000',EstIteSldIte.Value);

end;

procedure TfmPsqPrc.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmPsqPrc.FormShow(Sender: TObject);
var
Mk1Ite,Mk2Ite,Mk3Ite,Mk4Ite,Mk5Ite : real;
Vb1Ite,Vb2Ite,Vb3Ite,Vb4Ite,Vb5Ite : real;
begin
  inherited;

  CodEmp := GEmp_Id;

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerEmp.CodFil From GerEmp Where GerEmp.CodEmp = :CodEmp';

       with Params do begin

            Params[0].AsInteger := GEmp_Id;

       end;

       Open;

       CodFil := FieldbyName('CodFil').AsInteger;

  end;

  if CodFil > 0 then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select GerEmp.LanEst From GerEmp Where GerEmp.CodEmp = :CodEmp';

          with Params do begin

               Params[0].AsInteger := CodFil;

          end;

          Open;

          if FieldbyName('LanEst').AsString = 'Sim' then CodEmp := CodFil;

     end;
  end;

  EstIte.Close;
  EstIte.Params[0].AsInteger := CodEmp;
  EstIte.Params[1].AsString  := EstProCodClp.Value;
  EstIte.Params[2].AsString  := EstProCodGru.Value;
  EstIte.Params[3].AsString  := EstProCodSub.Value;
  EstIte.Params[4].AsString  := EstProCodPro.Value;
  EstIte.Open;

  Vb1Ite := EstIteVb1Ite.Value;
  Vb2Ite := EstIteVb2Ite.Value;
  Vb3Ite := EstIteVb3Ite.Value;
  Vb4Ite := EstIteVb4Ite.Value;
  Vb5Ite := EstIteVb5Ite.Value;

  Mk1Ite := 0;
  
  if EstIteVpfIte.Value > 0 then begin

     if EstIteVb1Ite.Value > 0 then Mk1Ite := fRound(((EstIteVb1Ite.Value - EstIteVpfIte.Value) * 100)/EstIteVpfIte.Value,2);

  end;

  Mk2Ite := 0;

  if EstIteVpfIte.Value > 0 then begin

     if EstIteVb2Ite.Value > 0 then Mk2Ite := fRound(((EstIteVb2Ite.Value - EstIteVpfIte.Value) * 100)/EstIteVpfIte.Value,2);

  end;

  Mk3Ite := 0;

  if EstIteVpfIte.Value > 0 then begin

     if EstIteVb3Ite.Value > 0 then Mk3Ite := fRound(((EstIteVb3Ite.Value - EstIteVpfIte.Value) * 100)/EstIteVpfIte.Value,2);

  end;

  Mk4Ite := 0;

  if EstIteVpfIte.Value > 0 then begin

     if EstIteVb4Ite.Value > 0 then Mk4Ite := fRound(((EstIteVb4Ite.Value - EstIteVpfIte.Value) * 100)/EstIteVpfIte.Value,2);

  end;

  Mk5Ite := 0;

  if EstIteVpfIte.Value > 0 then begin

     if EstIteVb5Ite.Value > 0 then Mk5Ite := fRound(((EstIteVb5Ite.Value - EstIteVpfIte.Value) * 100)/EstIteVpfIte.Value,2);

  end;

  EdVb1Ite.Text := FormatFloat('###,###,##0.0000',Vb1Ite);
  EdVb2Ite.Text := FormatFloat('###,###,##0.0000',Vb2Ite);
  EdVb3Ite.Text := FormatFloat('###,###,##0.0000',Vb3Ite);
  EdVb4Ite.Text := FormatFloat('###,###,##0.0000',Vb4Ite);
  EdVb5Ite.Text := FormatFloat('###,###,##0.0000',Vb5Ite);
  
  EdMk1Ite.Text := FormatFloat('###,###,##0.00',Mk1Ite);
  EdMk2Ite.Text := FormatFloat('###,###,##0.00',Mk2Ite);
  EdMk3Ite.Text := FormatFloat('###,###,##0.00',Mk3Ite);
  EdMk4Ite.Text := FormatFloat('###,###,##0.00',Mk4Ite);
  EdMk5Ite.Text := FormatFloat('###,###,##0.00',Mk5Ite);

  EdVpfIte.Text := FormatFloat('###,###,##0.0000',EstIteVpfIte.Value);
  EdVmeIte.Text := FormatFloat('###,###,##0.0000',EstIteVmeIte.Value);
  EdQtdCmp.Text := FormatFloat('###,###,##0.0000',EstIteQtdCmp.Value);

  if EstIteQtdCmp.Value > 0 then
     EdDulCmp.Text := ' ' + FormatDateTime('dd/mm/yyyy',EstIteDulCmp.Value)
  else
     EdDulCmp.Text := ' ';

  EdQtmIte.Text := FormatFloat('###,###,##0.0000',EstIteQtmIte.Value);
  EdQtdIte.Text := FormatFloat('###,###,##0.0000',EstIteQtdIte.Value);
  EdQtrIte.Text := FormatFloat('###,###,##0.0000',EstIteQtrIte.Value);
  EdQtaIte.Text := FormatFloat('###,###,##0.0000',EstIteQtaIte.Value);
  EdSldIte.Text := FormatFloat('###,###,##0.0000',EstIteSldIte.Value);

end;

end.
