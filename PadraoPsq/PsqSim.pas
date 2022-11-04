unit PsqSim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, Wwdbigrd, Wwdbgrid, hGrid, ExtCtrls, Db, Wwdatsrc,
  DBTables, Wwquery, AlignEdit, DBCtrls, Mask, hEdits, jpeg, dxCntner,
  dxEditor, dxEdLib, dxDBELib, dxDBColorEdit;

type
  TfmPsqSim = class(TForm)
    EstPro: TwwQuery;
    DsPro: TwwDataSource;
    DsIte: TwwDataSource;
    EstIte: TwwQuery;
    EstIteCODEMP: TIntegerField;
    EstIteQTMITE: TFloatField;
    EstIteQTDITE: TFloatField;
    EstIteQTRITE: TFloatField;
    EstIteQSDITE: TFloatField;
    EstIteCODPRO: TStringField;
    EstIteCODCLP: TStringField;
    EstIteCODGRU: TStringField;
    EstIteCODSUB: TStringField;
    EstIteVB1ITE: TFloatField;
    EstIteVB2ITE: TFloatField;
    EstIteVB3ITE: TFloatField;
    EstIteVB4ITE: TFloatField;
    EstIteVB5ITE: TFloatField;
    EstIteQTAITE: TFloatField;
    quSql: TwwQuery;
    PaintBox: TPaintBox;
    dxDBEdit27: TdxDBColorEdit;
    Panel1: TPanel;
    dxDBEdit28: TdxDBColorEdit;
    Label28: TLabel;
    Label15: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    dxDBEdit29: TdxDBColorEdit;
    Panel2: TPanel;
    Label17: TLabel;
    Label25: TLabel;
    dxDBEdit30: TdxDBColorEdit;
    grPro: ThGrid;
    EstIteAPEEMP: TStringField;
    grIte: ThGrid;
    EstProCODCLP: TStringField;
    EstProCODGRU: TStringField;
    EstProCODSUB: TStringField;
    EstProCODPRO: TStringField;
    EstProDSCPRO: TStringField;
    EstProREFPRO: TStringField;
    EstProLOCPRO: TStringField;
    EstProCODUNE: TStringField;
    EstProCODUNS: TStringField;
    EstProQTEPRO: TFloatField;
    EstProQTSPRO: TFloatField;
    EstProSAIIPI: TFloatField;
    EstProCLFSAI: TStringField;
    EstProSAIICM: TFloatField;
    EstProSIMPRO: TStringField;
    EstProCODST1: TStringField;
    EstProCODST2: TStringField;
    EstProQTDEMB: TFloatField;
    EstProIMGPRO: TBlobField;
    EstProCBAPRO: TStringField;
    EstProWEBPRO: TStringField;
    EstProCODCAT: TIntegerField;
    EstProCODTIP: TIntegerField;
    EstProCODMRC: TIntegerField;
    EstProFLGPRO: TStringField;
    Label21: TLabel;
    EstProNUMPRO: TStringField;
    EstProCODANT: TStringField;
    dxDBEdit1: TdxDBColorEdit;
    Panel3: TPanel;
    Label1: TLabel;
    pnSimPro: TPanel;
    Label24: TLabel;
    Label2: TLabel;
    Label26: TLabel;
    Label3: TLabel;
    dxDBEdit2: TdxDBColorEdit;
    EdCodGru: TAlignEdit;
    dxDBEdit3: TdxDBColorEdit;
    EdCodSub: TAlignEdit;
    dxDBEdit4: TdxDBColorEdit;
    EdCodPro: TAlignEdit;
    dxDBEdit5: TdxDBColorEdit;
    EdNomClp: TEdit;
    dxDBEdit32: TdxDBColorEdit;
    EdNomMrc: TEdit;
    dxDBEdit31: TdxDBColorEdit;
    EdNomTip: TEdit;
    dxDBEdit6: TdxDBColorEdit;
    EdNomCat: TEdit;
    Label8: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    dxDBEdit7: TdxDBColorEdit;
    EdNomGru: TEdit;
    dxDBEdit8: TdxDBColorEdit;
    EdNomSub: TEdit;
    EstIteQTDRMA: TFloatField;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EstProIDEPRO: TStringField;
    LbVb1Ite: TLabel;
    LbVb2Ite: TLabel;
    LbVb3Ite: TLabel;
    LbVb4Ite: TLabel;
    LbVb5Ite: TLabel;
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
    EdDs1Ite: TAlignEdit;
    dbDs2Ite: TdxDBColorEdit;
    EdDs2Ite: TAlignEdit;
    dbDs3Ite: TdxDBColorEdit;
    EdDs3Ite: TAlignEdit;
    dbDs4Ite: TdxDBColorEdit;
    EdDs4Ite: TAlignEdit;
    dbDs5Ite: TdxDBColorEdit;
    EdDs5Ite: TAlignEdit;
    EstIteDS1ITE: TFloatField;
    EstIteDS2ITE: TFloatField;
    EstIteDS3ITE: TFloatField;
    EstIteDS4ITE: TFloatField;
    EstIteDS5ITE: TFloatField;
    procedure DsProDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grProDblClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsIteDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    CliTab,ExibeTodas : string;
    CodClp,CodGru,CodSub,CodPro : string;
  end;

var
  rCodClp  : string;
  rCodGru  : string;
  rCodSub  : string;
  rCodCat  : integer;
  rCodTip  : integer;
  rCodMrc  : integer;
  fmPsqSim: TfmPsqSim;

implementation

uses ShellAPI, dxDemoUtils, Bbgeral, ManGDB;

{$R *.DFM}

procedure TfmPsqSim.DsProDataChange(Sender: TObject; Field: TField);
begin

  EdCodGru.Text := EstProCodGru.Value;
  EdCodSub.Text := EstProCodSub.Value;
  EdCodPro.Text := EstProCodPro.Value;

  if rCodClp <> EstProCodClp.Value then begin

     rCodClp := EstProCodClp.Value;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp Where EstClp.CodClp = '''+ rCodClp +'''';
          Open;

          EdNomClp.Text := ' '+FieldbyName('NomClp').AsString;

     end;
  end;

  if rCodGru <> EstProCodGru.Value then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru Where EstGru.CodGru = '''+ EstProCodGru.Value +'''';
          Open;

          EdNomGru.Text := ' '+FieldbyName('NomGru').AsString;

     end;
  end;

  if ( rCodGru <> EstProCodGru.Value ) or ( rCodSub <> EstProCodSub.Value ) then begin

     rCodGru := EstProCodGru.Value;
     rCodSub := EstProCodSub.Value;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub Where EstSub.CodGru = '''+ rCodGru +''' and EstSub.CodSub = '''+ rCodSub +'''';
          Open;

          EdNomSub.Text := ' '+FieldbyName('NomSub').AsString;

     end;
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

  pnSimPro.Caption := EstProSimPro.Value;

  if (EstIteCodClp.Value <> EstProCodClp.Value) or (EstIteCodGru.Value <> EstProCodGru.Value) or
     (EstIteCodSub.Value <> EstProCodSub.Value) or (EstIteCodPro.Value <> EstProCodPro.Value) then begin

     EstIte.Close;
     EstIte.Params[0].AsString := EstProCodClp.Value;
     EstIte.Params[1].AsString := EstProCodGru.Value;
     EstIte.Params[2].AsString := EstProCodSub.Value;
     EstIte.Params[3].AsString := EstProCodPro.Value;
     EstIte.Open;

  end;
end;

procedure TfmPsqSim.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then Close;

  if key = 33 then EstPro.MoveBy(-10); {Page Up}
  if key = 34 then EstPro.MoveBy(10);  {Page Down}

  if key = 13 then begin

     CodClp := EstProCodClp.Value;
     CodGru := EstProCodGru.Value;
     CodSub := EstProCodSub.Value;
     CodPro := EstProCodPro.Value;

     Close;

  end;
end;

procedure TfmPsqSim.grProDblClick(Sender: TObject);
begin

  CodClp := EstProCodClp.Value;
  CodGru := EstProCodGru.Value;
  CodSub := EstProCodSub.Value;
  CodPro := EstProCodPro.Value;

  Close;

end;

procedure TfmPsqSim.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqSim.FormShow(Sender: TObject);
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
  
  grPro.SetFocus;

end;

procedure TfmPsqSim.FormCreate(Sender: TObject);
begin
  inherited;

  with quSQL,SQL do begin

        close;
        Text := ' Select Count(*) as QtdReg From GerEmp';
        Open;

  end;

  if quSQL.FieldbyName('QtdReg').AsInteger <= 1 then begin

     with EstIte,SQL do begin

          Close;
          Text := ' Select EstIte.CodEmp,'+
                  '        GerEmp.ApeEmp,'+
                  '        EstIte.CodClp,'+
                  '        EstIte.CodGru,'+
                  '        EstIte.CodSub,'+
                  '        EstIte.CodPro,'+
                  '        EstIte.QtdIte,'+
                  '        EstIte.QtmIte,'+
                  '        EstIte.QtrIte,'+
                  '        EstIte.Vb1Ite,'+
                  '        EstIte.Vb2Ite,'+
                  '        EstIte.Vb3Ite,'+
                  '        EstIte.Vb4Ite,'+
                  '        EstIte.Vb5Ite,'+
                  '        EstIte.QtaIte,'+
                  '        EstIte.Ds1Ite,'+
                  '        EstIte.Ds2Ite,'+
                  '        EstIte.Ds3Ite,'+
                  '        EstIte.Ds4Ite,'+
                  '        EstIte.Ds5Ite,'+
                  '        EstIte.QtdRma,'+
                  '        Round(EstIte.QtdIte - (EstIte.QtrIte + EstIte.QtdRma),4) as QsdIte'+
                  ' From EstIte LEFT JOIN GerEmp ON (EstIte.CodEmp = GerEmp.CodEmp)'+
                  ' Where EstIte.CodClp = :CodClp'+
                  '   and EstIte.CodGru = :CodGru'+
                  '   and EstIte.CodSub = :CodSub'+
                  '   and EstIte.CodPro = :CodPro'+
                  ' Order by EstIte.CodEmp';
          Open;

     end;

     end
  else
     begin
        
     if GFlgAce = 'Sim' then begin

        with EstIte,SQL do begin

             Close;
             Text := ' Select EstIte.CodEmp,'+
                     '        GerEmp.ApeEmp,'+
                     '        EstIte.CodClp,'+
                     '        EstIte.CodGru,'+
                     '        EstIte.CodSub,'+
                     '        EstIte.CodPro,'+
                     '        EstIte.QtdIte,'+
                     '        EstIte.QtmIte,'+
                     '        EstIte.QtrIte,'+
                     '        EstIte.Vb1Ite,'+
                     '        EstIte.Vb2Ite,'+
                     '        EstIte.Vb3Ite,'+
                     '        EstIte.Vb4Ite,'+
                     '        EstIte.Vb5Ite,'+
                     '        EstIte.QtaIte,'+
                     '        EstIte.Ds1Ite,'+
                     '        EstIte.Ds2Ite,'+
                     '        EstIte.Ds3Ite,'+
                     '        EstIte.Ds4Ite,'+
                     '        EstIte.Ds5Ite,'+
                     '        EstIte.QtdRma,'+
                     '        Round(EstIte.QtdIte - (EstIte.QtrIte + EstIte.QtdRma),4) as QsdIte'+
                     ' From EstIte LEFT JOIN GerEmp ON (EstIte.CodEmp = GerEmp.CodEmp)'+
                     ' Where EstIte.CodClp = :CodClp'+
                     '   and EstIte.CodGru = :CodGru'+
                     '   and EstIte.CodSub = :CodSub'+
                     '   and EstIte.CodPro = :CodPro'+
                     '   and GerEmp.ExiEst = '''+ 'Sim' +''''+
                     ' Order by EstIte.CodEmp';
             Open;
              
        end;
     end;
  end;   
end;

procedure TfmPsqSim.DsIteDataChange(Sender: TObject; Field: TField);
begin

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

end;

end.
