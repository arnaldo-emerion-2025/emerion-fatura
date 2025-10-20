unit PsqCan;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqCAn = class(TForm)
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
    Label22: TLabel;
    EdRefPro: TEdit;
    EdLocPro: TEdit;
    Label25: TLabel;
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
    dxDBEdit9: TdxDBColorEdit;
    dxDBEdit10: TdxDBColorEdit;
    dxDBEdit14: TdxDBColorEdit;
    dxDBEdit15: TdxDBColorEdit;
    dxDBEdit16: TdxDBColorEdit;
    dxDBEdit4: TdxDBColorEdit;
    Label16: TLabel;
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
    dbVp5Ite: TdxDBColorEdit;
    dbVp4Ite: TdxDBColorEdit;
    dbVp3Ite: TdxDBColorEdit;
    dbVp2Ite: TdxDBColorEdit;
    dbVp1Ite: TdxDBColorEdit;
    dbVb5Ite: TdxDBColorEdit;
    dbVb4Ite: TdxDBColorEdit;
    dbVb3Ite: TdxDBColorEdit;
    dbVb2Ite: TdxDBColorEdit;
    dbVb1Ite: TdxDBColorEdit;
    dbDs1Ite: TdxDBColorEdit;
    dbDs2Ite: TdxDBColorEdit;
    dbDs3Ite: TdxDBColorEdit;
    dbDs4Ite: TdxDBColorEdit;
    dbDs5Ite: TdxDBColorEdit;
    dbDp1Ite: TdxDBColorEdit;
    dbDp2Ite: TdxDBColorEdit;
    dbDp3Ite: TdxDBColorEdit;
    dbDp4Ite: TdxDBColorEdit;
    dbDp5Ite: TdxDBColorEdit;
    EdVp5Ite: TAlignEdit;
    EdVp4Ite: TAlignEdit;
    EdVp3Ite: TAlignEdit;
    EdVp2Ite: TAlignEdit;
    EdVp1Ite: TAlignEdit;
    EdDp1Ite: TAlignEdit;
    EdDp2Ite: TAlignEdit;
    EdDp3Ite: TAlignEdit;
    EdDp4Ite: TAlignEdit;
    EdDp5Ite: TAlignEdit;
    EdDs5Ite: TAlignEdit;
    EdDs4Ite: TAlignEdit;
    EdDs3Ite: TAlignEdit;
    EdDs2Ite: TAlignEdit;
    EdDs1Ite: TAlignEdit;
    EdVb1Ite: TAlignEdit;
    EdVb2Ite: TAlignEdit;
    EdVb3Ite: TAlignEdit;
    EdVb4Ite: TAlignEdit;
    EdVb5Ite: TAlignEdit;
    LbVp1Ite: TLabel;
    LbVp2Ite: TLabel;
    LbVp3Ite: TLabel;
    LbVp4Ite: TLabel;
    LbVp5Ite: TLabel;
    LbVb5Ite: TLabel;
    LbVb4Ite: TLabel;
    LbVb3Ite: TLabel;
    LbVb2Ite: TLabel;
    LbVb1Ite: TLabel;
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
    EstProCODITE: TStringField;
    quSql: TwwQuery;
    EstProLOCPRO: TStringField;
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
    ExibeTodas,ExiCst,CliTab,SimPro,CodClp,CodGru,CodSub,CodPro,CodAnt,DscPro,CbaPro,NomClp,NomGru,NomSub : string;
  end;

var
  rCodClp  : string;
  rNomClp  : string;
  rCodGru  : string;
  rNomGru  : string;
  rCodSub  : string;
  rNomSub  : string;
  rCodCat  : integer;
  rCodTip  : integer;
  rCodMrc  : integer;
  fmPsqCAn: TfmPsqCAn;

implementation

uses dxDemoUtils, Bbgeral, ManGDB;

{$R *.DFM}

procedure TfmPsqCAn.grProDblClick(Sender: TObject);
begin

  CodClp := EstProCodClp.Value;
  CodGru := EstProCodGru.Value;
  CodSub := EstProCodSub.Value;
  CodPro := EstProCodPro.Value;
  CodAnt := EstProCodAnt.Value;
  DscPro := EstProDscPro.Value;
  SimPro := EstProSimPro.Value;
  CbaPro := EstProCbaPro.Value;

  NomClp := rNomClp;
  NomGru := rNomGru;
  NomSub := rNomSub;

  Close;

end;

procedure TfmPsqCAn.EdPesquisaChange(Sender: TObject);
begin
  EstPro.Locate('DSCPRO',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCAn.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodClp := EstProCodClp.Value;
     CodGru := EstProCodGru.Value;
     CodSub := EstProCodSub.Value;
     CodPro := EstProCodPro.Value;
     CodAnt := EstProCodAnt.Value;
     DscPro := EstProDscPro.Value;
     SimPro := EstProSimPro.Value;
     CbaPro := EstProCbaPro.Value;

     NomClp := rNomClp;
     NomGru := rNomGru;
     NomSub := rNomSub;

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

procedure TfmPsqCAn.DsProDataChange(Sender: TObject; Field: TField);
var
CodEmp,CodFil : integer;
begin

  EdRefPro.Text := ' '+EstProRefPro.Value;
  EdLocPro.Text := ' '+EstProLocPro.Value;
  EdCodUns.Text := ' '+EstProCodUns.Value;
  EdClfSai.Text := ' '+EstProClfSai.Value;

  if rCodClp <> EstProCodClp.Value then begin

     rCodClp := EstProCodClp.Value;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp Where EstClp.CodClp = '''+ rCodClp +'''';
          Open;

          rNomClp := FieldbyName('NomClp').AsString;

     end;
  end;

  if rCodGru <> EstProCodGru.Value then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru Where EstGru.CodGru = '''+ EstProCodGru.Value +'''';
          Open;

          rNomGru := FieldbyName('NomGru').AsString;

     end;

     EdNomGru.Text := ' '+rNomGru;

  end;

  if ( rCodGru <> EstProCodGru.Value ) or ( rCodSub <> EstProCodSub.Value ) then begin

     rCodGru := EstProCodGru.Value;
     rCodSub := EstProCodSub.Value;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub Where EstSub.CodGru = '''+ rCodGru +''' and EstSub.CodSub = '''+ rCodSub +'''';
          Open;

          rNomSub := FieldbyName('NomSub').AsString;

     end;

     EdNomSub.Text := ' '+rNomSub;

  end;

  if rCodCat <> EstProCodCat.Value then begin

     rCodCat := EstProCodCat.Value;

     if rCodCat > 0 then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select NomCat From EstCat Where EstCat.CodCat = '''+ IntToStr(rCodCat) +'''';
             Open;

             EdNomCat.Text := ' '+FieldbyName('NomCat').AsString;

        end;

        end
     else
        EdNomCat.Text := ' ';

     end
  else
     begin

     if rCodCat = 0 then EdNomCat.Text := ' ';

  end;

  if rCodTip <> EstProCodTip.Value then begin

     rCodTip := EstProCodTip.Value;

     if rCodTip > 0 then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select NomTip From EstTip Where EstTip.CodTip = '''+ IntToStr(rCodTip) +'''';
             Open;

             EdNomTip.Text := ' '+FieldbyName('NomTip').AsString;

        end;

        end
     else
        EdNomTip.Text := ' ';

     end
  else
     begin

     if rCodTip = 0 then EdNomTip.Text := ' ';

  end;

  if rCodMrc <> EstProCodMrc.Value then begin

     rCodMrc := EstProCodMrc.Value;

     if rCodMrc > 0 then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select NomMrc From EstMrc Where EstMrc.CodMrc = '''+ IntToStr(rCodMrc) +'''';
             Open;

             EdNomMrc.Text := ' '+FieldbyName('NomMrc').AsString;

        end;

        end
     else
        EdNomMrc.Text := ' ';

     end
  else
     begin

     if rCodMrc = 0 then EdNomMrc.Text := ' ';

  end;

  EdQtdEmb.Text := FormatFloat('#####0',EstProQtdEmb.Value);

  if (EstIteCodClp.Value <> EstProCodClp.Value) or (EstIteCodGru.Value <> EstProCodGru.Value) or
     (EstIteCodSub.Value <> EstProCodSub.Value) or (EstIteCodPro.Value <> EstProCodPro.Value) then begin

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

  end;

  if EstProFlgPro.Value = 'Sim' then begin

     if not LbVp1Ite.Visible then begin

        LbVp1Ite.Visible := True;
        LbVp2Ite.Visible := True;
        LbVp3Ite.Visible := True;
        LbVp4Ite.Visible := True;
        LbVp5Ite.Visible := True;
        dbVp1Ite.Visible := True;
        dbVp2Ite.Visible := True;
        dbVp3Ite.Visible := True;
        dbVp4Ite.Visible := True;
        dbVp5Ite.Visible := True;
        EdVp1Ite.Visible := True;
        EdVp2Ite.Visible := True;
        EdVp3Ite.Visible := True;
        EdVp4Ite.Visible := True;
        EdVp5Ite.Visible := True;
        dbDp1Ite.Visible := True;
        dbDp2Ite.Visible := True;
        dbDp3Ite.Visible := True;
        dbDp4Ite.Visible := True;
        dbDp5Ite.Visible := True;
        EdDp1Ite.Visible := True;
        EdDp2Ite.Visible := True;
        EdDp3Ite.Visible := True;
        EdDp4Ite.Visible := True;
        EdDp5Ite.Visible := True;

        if Trim( CliTab ) = '02 Tabela 02' then begin

           LbVp1Ite.Visible := False;
           dbVp1Ite.Visible := False;
           EdVp1Ite.Visible := False;

           dbDp1Ite.Visible := False;
           EdDp1Ite.Visible := False;

        end;

        if Trim( CliTab ) = '03 Tabela 03' then begin

           LbVp1Ite.Visible := False;
           dbVp1Ite.Visible := False;
           EdVp1Ite.Visible := False;
           LbVp2Ite.Visible := False;
           dbVp2Ite.Visible := False;
           EdVp2Ite.Visible := False;

           dbDp1Ite.Visible := False;
           EdDp1Ite.Visible := False;
           dbDp2Ite.Visible := False;
           EdDp2Ite.Visible := False;

        end;

        if Trim( CliTab ) = '04 Tabela 04' then begin

           LbVp1Ite.Visible := False;
           dbVp1Ite.Visible := False;
           EdVp1Ite.Visible := False;
           LbVp2Ite.Visible := False;
           dbVp2Ite.Visible := False;
           EdVp2Ite.Visible := False;
           LbVp3Ite.Visible := False;
           dbVp3Ite.Visible := False;
           EdVp3Ite.Visible := False;

           dbDp1Ite.Visible := False;
           EdDp1Ite.Visible := False;
           dbDp2Ite.Visible := False;
           EdDp2Ite.Visible := False;
           dbDp3Ite.Visible := False;
           EdDp3Ite.Visible := False;

        end;

        if Trim( CliTab ) = '05 Tabela 05' then begin

           LbVp1Ite.Visible := False;
           dbVp1Ite.Visible := False;
           EdVp1Ite.Visible := False;
           LbVp2Ite.Visible := False;
           dbVp2Ite.Visible := False;
           EdVp2Ite.Visible := False;
           LbVp3Ite.Visible := False;
           dbVp3Ite.Visible := False;
           EdVp3Ite.Visible := False;
           LbVp4Ite.Visible := False;
           dbVp4Ite.Visible := False;
           EdVp4Ite.Visible := False;

           dbDp1Ite.Visible := False;
           EdDp1Ite.Visible := False;
           dbDp2Ite.Visible := False;
           EdDp2Ite.Visible := False;
           dbDp3Ite.Visible := False;
           EdDp3Ite.Visible := False;
           dbDp4Ite.Visible := False;
           EdDp4Ite.Visible := False;

        end;
     end;

     EdVp1Ite.Text := FormatFloat('###,###,##0.0000',EstIteVp1Ite.Value);
     EdVp2Ite.Text := FormatFloat('###,###,##0.0000',EstIteVp2Ite.Value);
     EdVp3Ite.Text := FormatFloat('###,###,##0.0000',EstIteVp3Ite.Value);
     EdVp4Ite.Text := FormatFloat('###,###,##0.0000',EstIteVp4Ite.Value);
     EdVp5Ite.Text := FormatFloat('###,###,##0.0000',EstIteVp5Ite.Value);

     EdDp1Ite.Text := FormatFloat('###,###,##0.00',EstIteDp1Ite.Value);
     EdDp2Ite.Text := FormatFloat('###,###,##0.00',EstIteDp2Ite.Value);
     EdDp3Ite.Text := FormatFloat('###,###,##0.00',EstIteDp3Ite.Value);
     EdDp4Ite.Text := FormatFloat('###,###,##0.00',EstIteDp4Ite.Value);
     EdDp5Ite.Text := FormatFloat('###,###,##0.00',EstIteDp5Ite.Value);

     end
  else
     begin

     if LbVp1Ite.Visible then begin

        LbVp1Ite.Visible := False;
        LbVp2Ite.Visible := False;
        LbVp3Ite.Visible := False;
        LbVp4Ite.Visible := False;
        LbVp5Ite.Visible := False;
        dbVp1Ite.Visible := False;
        dbVp2Ite.Visible := False;
        dbVp3Ite.Visible := False;
        dbVp4Ite.Visible := False;
        dbVp5Ite.Visible := False;
        EdVp1Ite.Visible := False;
        EdVp2Ite.Visible := False;
        EdVp3Ite.Visible := False;
        EdVp4Ite.Visible := False;
        EdVp5Ite.Visible := False;

        dbDp1Ite.Visible := False;
        dbDp2Ite.Visible := False;
        dbDp3Ite.Visible := False;
        dbDp4Ite.Visible := False;
        dbDp5Ite.Visible := False;
        EdDp1Ite.Visible := False;
        EdDp2Ite.Visible := False;
        EdDp3Ite.Visible := False;
        EdDp4Ite.Visible := False;
        EdDp5Ite.Visible := False;
        
     end;
  end;

  EdVb1Ite.Text := FormatFloat('###,###,##0.0000',EstIteVb1Ite.Value);
  EdVb2Ite.Text := FormatFloat('###,###,##0.0000',EstIteVb2Ite.Value);
  EdVb3Ite.Text := FormatFloat('###,###,##0.0000',EstIteVb3Ite.Value);
  EdVb4Ite.Text := FormatFloat('###,###,##0.0000',EstIteVb4Ite.Value);
  EdVb5Ite.Text := FormatFloat('###,###,##0.0000',EstIteVb5Ite.Value);

  EdDs1Ite.Text := FormatFloat('###,###,##0.00',EstIteDs1Ite.Value);
  EdDs2Ite.Text := FormatFloat('###,###,##0.00',EstIteDs2Ite.Value);
  EdDs3Ite.Text := FormatFloat('###,###,##0.00',EstIteDs3Ite.Value);
  EdDs4Ite.Text := FormatFloat('###,###,##0.00',EstIteDs4Ite.Value);
  EdDs5Ite.Text := FormatFloat('###,###,##0.00',EstIteDs5Ite.Value);

  EdQtmIte.Text := FormatFloat('###,###,##0.0000',EstIteQtmIte.Value);
  EdQtdIte.Text := FormatFloat('###,###,##0.0000',EstIteQtdIte.Value);
  EdQtrIte.Text := FormatFloat('###,###,##0.0000',EstIteQtrIte.Value);
  EdQtaIte.Text := FormatFloat('###,###,##0.0000',EstIteQtaIte.Value);
  EdSldIte.Text := FormatFloat('###,###,##0.0000',EstIteSldIte.Value);

end;

procedure TfmPsqCAn.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmPsqCAn.FormShow(Sender: TObject);
begin
  inherited;
  if UpperCase(ExibeTodas) = 'NAO' then begin

     if Trim( CliTab ) = '02 Tabela 02' then begin

        LbVb1Ite.Visible := False;
        dbVb1Ite.Visible := False;
        EdVb1Ite.Visible := False;
        dbDs1Ite.Visible := False;
        EdDs1Ite.Visible := False;
        LbVb3Ite.Visible := False;
        dbVb3Ite.Visible := False;
        EdVb3Ite.Visible := False;
        dbDs3Ite.Visible := False;
        EdDs3Ite.Visible := False;
        LbVb4Ite.Visible := False;
        dbVb4Ite.Visible := False;
        EdVb4Ite.Visible := False;
        dbDs4Ite.Visible := False;
        EdDs4Ite.Visible := False;
        LbVb5Ite.Visible := False;
        dbVb5Ite.Visible := False;
        EdVb5Ite.Visible := False;
        dbDs5Ite.Visible := False;
        EdDs5Ite.Visible := False;

     end;

     if Trim( CliTab ) = '03 Tabela 03' then begin

        LbVb1Ite.Visible := False;
        dbVb1Ite.Visible := False;
        EdVb1Ite.Visible := False;
        dbDs1Ite.Visible := False;
        EdDs1Ite.Visible := False;
        LbVb2Ite.Visible := False;
        dbVb2Ite.Visible := False;
        EdVb2Ite.Visible := False;
        dbDs2Ite.Visible := False;
        EdDs2Ite.Visible := False;
        LbVb4Ite.Visible := False;
        dbVb4Ite.Visible := False;
        EdVb4Ite.Visible := False;
        dbDs4Ite.Visible := False;
        EdDs4Ite.Visible := False;
        LbVb5Ite.Visible := False;
        dbVb5Ite.Visible := False;
        EdVb5Ite.Visible := False;
        dbDs5Ite.Visible := False;
        EdDs5Ite.Visible := False;

     end;

     if Trim( CliTab ) = '04 Tabela 04' then begin

        LbVb1Ite.Visible := False;
        dbVb1Ite.Visible := False;
        EdVb1Ite.Visible := False;
        dbDs1Ite.Visible := False;
        EdDs1Ite.Visible := False;
        LbVb2Ite.Visible := False;
        dbVb2Ite.Visible := False;
        EdVb2Ite.Visible := False;
        dbDs2Ite.Visible := False;
        EdDs2Ite.Visible := False;
        LbVb3Ite.Visible := False;
        dbVb3Ite.Visible := False;
        EdVb3Ite.Visible := False;
        dbDs3Ite.Visible := False;
        EdDs3Ite.Visible := False;
        LbVb5Ite.Visible := False;
        dbVb5Ite.Visible := False;
        EdVb5Ite.Visible := False;
        dbDs5Ite.Visible := False;
        EdDs5Ite.Visible := False;

     end;

     if Trim( CliTab ) = '05 Tabela 05' then begin

        LbVb1Ite.Visible := False;
        dbVb1Ite.Visible := False;
        EdVb1Ite.Visible := False;
        dbDs1Ite.Visible := False;
        EdDs1Ite.Visible := False;
        LbVb2Ite.Visible := False;
        dbVb2Ite.Visible := False;
        EdVb2Ite.Visible := False;
        dbDs2Ite.Visible := False;
        EdDs2Ite.Visible := False;
        LbVb3Ite.Visible := False;
        dbVb3Ite.Visible := False;
        EdVb3Ite.Visible := False;
        dbDs3Ite.Visible := False;
        EdDs3Ite.Visible := False;
        LbVb4Ite.Visible := False;
        dbVb4Ite.Visible := False;
        EdVb4Ite.Visible := False;
        dbDs4Ite.Visible := False;
        EdDs4Ite.Visible := False;

     end;
     
     end
  else
     begin

     if Trim( CliTab ) = '02 Tabela 02' then begin

        LbVb3Ite.Visible := False;
        dbVb3Ite.Visible := False;
        EdVb3Ite.Visible := False;
        dbDs3Ite.Visible := False;
        EdDs3Ite.Visible := False;
        LbVb4Ite.Visible := False;
        dbVb4Ite.Visible := False;
        EdVb4Ite.Visible := False;
        dbDs4Ite.Visible := False;
        EdDs4Ite.Visible := False;
        LbVb5Ite.Visible := False;
        dbVb5Ite.Visible := False;
        EdVb5Ite.Visible := False;
        dbDs5Ite.Visible := False;
        EdDs5Ite.Visible := False;

     end;

     if Trim( CliTab ) = '03 Tabela 03' then begin

        LbVb4Ite.Visible := False;
        dbVb4Ite.Visible := False;
        EdVb4Ite.Visible := False;
        dbDs4Ite.Visible := False;
        EdDs4Ite.Visible := False;
        LbVb5Ite.Visible := False;
        dbVb5Ite.Visible := False;
        EdVb5Ite.Visible := False;
        dbDs5Ite.Visible := False;
        EdDs5Ite.Visible := False;

     end;

     if Trim( CliTab ) = '04 Tabela 04' then begin

        LbVb5Ite.Visible := False;
        dbVb5Ite.Visible := False;
        EdVb5Ite.Visible := False;
        dbDs5Ite.Visible := False;
        EdDs5Ite.Visible := False;

     end;
  end;   
end;

end.
