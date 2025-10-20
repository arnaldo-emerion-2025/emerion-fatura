unit PsqEst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, Wwdbigrd, Wwdbgrid, hGrid, ExtCtrls, Db, Wwdatsrc,
  DBTables, Wwquery, DBCtrls, Mask, hEdits, jpeg, dxCntner,  dxEditor, dxEdLib,
  dxDBELib, Buttons, AlignEdit, FShowPadrao, dxDBColorEdit;

type
  TfmPsqEst = class(TfmShowPadrao)
    EstPro: TwwQuery;
    DsPro: TwwDataSource;
    DsIte: TwwDataSource;
    EstIte: TwwQuery;
    EstIteCODEMP: TIntegerField;
    EstIteQTMITE: TFloatField;
    EstIteQTDITE: TFloatField;
    EstIteQTRITE: TFloatField;
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
    EstProSAIICM: TFloatField;
    EstProCODST1: TStringField;
    EstProCODST2: TStringField;
    EstProQTDEMB: TFloatField;
    PaintBox: TPaintBox;
    Label1: TLabel;
    Label30: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label32: TLabel;
    Label9: TLabel;
    Label18: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label31: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    LbVb5Ite: TLabel;
    LbVb4Ite: TLabel;
    LbVb3Ite: TLabel;
    LbVb2Ite: TLabel;
    LbVb1Ite: TLabel;
    dxDBEdit1: TdxDBColorEdit;
    EdNomClp: TEdit;
    dxDBEdit2: TdxDBColorEdit;
    dxDBEdit3: TdxDBColorEdit;
    dxDBEdit4: TdxDBColorEdit;
    dxDBEdit5: TdxDBColorEdit;
    dxDBEdit6: TdxDBColorEdit;
    dxDBEdit7: TdxDBColorEdit;
    EdNomGru: TEdit;
    EdNomSub: TEdit;
    dxDBEdit10: TdxDBColorEdit;
    EdCodUns: TEdit;
    dxDBEdit14: TdxDBColorEdit;
    EdQtmIte: TAlignEdit;
    dxDBEdit15: TdxDBColorEdit;
    dxDBEdit16: TdxDBColorEdit;
    EdQtdIte: TAlignEdit;
    EdQtrIte: TAlignEdit;
    dxDBEdit19: TdxDBColorEdit;
    EdQtdEmb: TAlignEdit;
    dxDBEdit20: TdxDBColorEdit;
    dxDBEdit21: TdxDBColorEdit;
    EdSldIte: TAlignEdit;
    EdQtaIte: TAlignEdit;
    dbVb1Ite: TdxDBColorEdit;
    dbVb2Ite: TdxDBColorEdit;
    dbVb3Ite: TdxDBColorEdit;
    dbVb4Ite: TdxDBColorEdit;
    dbVb5Ite: TdxDBColorEdit;
    EdVb1Ite: TAlignEdit;
    EdVb2Ite: TAlignEdit;
    EdVb3Ite: TAlignEdit;
    EdVb4Ite: TAlignEdit;
    EdVb5Ite: TAlignEdit;
    nvPro: TDBNavigator;
    dxDBEdit27: TdxDBColorEdit;
    Panel1: TPanel;
    dxDBEdit28: TdxDBColorEdit;
    grPro: ThGrid;
    Label29: TLabel;
    Label28: TLabel;
    Label15: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    EstProIMGPRO: TBlobField;
    Label17: TLabel;
    EstIteAPEEMP: TStringField;
    EstProSIMPRO: TStringField;
    EstProCBAPRO: TStringField;
    Label23: TLabel;
    EstProWEBPRO: TStringField;
    lbWebPro: TLabel;
    EstProCODCAT: TIntegerField;
    EstProCODTIP: TIntegerField;
    EstProCODMRC: TIntegerField;
    Label24: TLabel;
    dxDBEdit30: TdxDBColorEdit;
    EdNomCat: TEdit;
    Label25: TLabel;
    dxDBEdit31: TdxDBColorEdit;
    EdNomTip: TEdit;
    Label26: TLabel;
    dxDBEdit32: TdxDBColorEdit;
    EdNomMrc: TEdit;
    EstProFLGPRO: TStringField;
    LbVp1Ite: TLabel;
    LbVp2Ite: TLabel;
    LbVp3Ite: TLabel;
    LbVp4Ite: TLabel;
    LbVp5Ite: TLabel;
    dbVp1Ite: TdxDBColorEdit;
    EdVp1Ite: TAlignEdit;
    EdVp2Ite: TAlignEdit;
    dbVp2Ite: TdxDBColorEdit;
    EdVp3Ite: TAlignEdit;
    dbVp3Ite: TdxDBColorEdit;
    EdVp4Ite: TAlignEdit;
    dbVp4Ite: TdxDBColorEdit;
    EdVp5Ite: TAlignEdit;
    dbVp5Ite: TdxDBColorEdit;
    EstIteVP1ITE: TFloatField;
    EstIteVP2ITE: TFloatField;
    EstIteVP3ITE: TFloatField;
    EstIteVP4ITE: TFloatField;
    EstIteVP5ITE: TFloatField;
    EstProCLFSAI: TStringField;
    Label27: TLabel;
    EdClfSai: TEdit;
    dxDBEdit33: TdxDBColorEdit;
    pnSimPro: TPanel;
    EstProNUMPRO: TStringField;
    Label33: TLabel;
    EdVcrIte: TAlignEdit;
    EstIteVCRITE: TFloatField;
    dxDBEdit56: TdxDBColorEdit;
    dbDs5Ite: TdxDBColorEdit;
    EdDs5Ite: TAlignEdit;
    dbDs4Ite: TdxDBColorEdit;
    EdDs4Ite: TAlignEdit;
    dbDs3Ite: TdxDBColorEdit;
    EdDs3Ite: TAlignEdit;
    dbDs2Ite: TdxDBColorEdit;
    EdDs2Ite: TAlignEdit;
    dbDs1Ite: TdxDBColorEdit;
    EdDs1Ite: TAlignEdit;
    dbDp5Ite: TdxDBColorEdit;
    EdDp5Ite: TAlignEdit;
    dbDp4Ite: TdxDBColorEdit;
    EdDp4Ite: TAlignEdit;
    dbDp3Ite: TdxDBColorEdit;
    EdDp3Ite: TAlignEdit;
    dbDp2Ite: TdxDBColorEdit;
    EdDp2Ite: TAlignEdit;
    dbDp1Ite: TdxDBColorEdit;
    EdDp1Ite: TAlignEdit;
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
    Label10: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label38: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    dxDBEdit8: TdxDBColorEdit;
    Label7: TLabel;
    dxDBEdit9: TdxDBColorEdit;
    Label22: TLabel;
    Label39: TLabel;
    EstIteQTDRMA: TFloatField;
    Label40: TLabel;
    Label45: TLabel;
    dxDBEdit11: TdxDBColorEdit;
    EstIteATUITE: TFloatField;
    Label46: TLabel;
    Label47: TLabel;
    dxDBEdit12: TdxDBColorEdit;
    EdLocPro: TEdit;
    Label48: TLabel;
    dxDBEdit13: TdxDBColorEdit;
    EdQtdRma: TAlignEdit;
    EdDscPro: TPanel;
    EdCodGru: TPanel;
    EdCodSub: TPanel;
    EdCodPro: TPanel;
    EdCbaPro: TPanel;
    EdRefPro: TPanel;
    EdNumPro: TPanel;
    pnHelp: TPanel;
    Label21: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Panel3: TPanel;
    Label20: TLabel;
    Label59: TLabel;
    dxDBEdit17: TdxDBColorEdit;
    EdQmaIte: TAlignEdit;
    EstIteQMAITE: TFloatField;
    Label72: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    EdSaiIpi: TAlignEdit;
    procedure FormCreate(Sender: TObject);
    procedure DsProDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure lbWebProDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DsIteDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    Ordem : Integer;
    ExiCst : string;
    CliTab : string;
    LanCba : string;
    sCodClp,sCodGru,sCodSub,sCodPro                         : string;
    rCodClp,rCodGru,rCodSub,rCodPro                         : string;
    iCodClp,iCodGru,iCodSub,iCodPro                         : string;
    sBase,sEntr,CodClp,CodGru,CodSub,CodPro,CbaPro,FlgCod   : string;
    ExibeTodas,pCodClp,pCodGru,pCodSub,pCodPro,PCodCat,pCodtip,pCodMrc : string;
  end;

var
  rCodClp  : string;
  rCodGru  : string;
  rCodSub  : string;
  rCodCat  : integer;
  rCodTip  : integer;
  rCodMrc  : integer;
  fmPsqEst : TfmPsqEst;

implementation

uses ShellAPI, dxDemoUtils, Bbgeral, BbMensag, ManGDB, PsqSim, AuxPsq, PsqImg,
     PsqObs, PsqGrd, AuxIni, PsqCod, PsqCmp, PsqBar, PsqRes, PsqCba;

{$R *.DFM}

procedure TfmPsqEst.FormCreate(Sender: TObject);
var
QtdReg : Integer;
begin
  inherited;

  sBase := ' Select EstPro.CodClp,'+
           '        EstPro.CodGru,'+
           '        EstPro.CodSub,'+
           '        EstPro.CodPro,'+
           '        EstPro.DscPro,'+
           '        EstPro.RefPro,'+
           '        EstPro.LocPro,'+
           '        EstPro.CodUne,'+
           '        EstPro.CodUns,'+
           '        EstPro.QtePro,'+
           '        EstPro.QtsPro,'+
           '        EstPro.SaiIpi,'+
           '        EstPro.ClfSai,'+
           '        EstPro.SaiIcm,'+
           '        EstPro.SimPro,'+
           '        EstPro.CodSt1,'+
           '        EstPro.CodSt2,'+
           '        EstPro.QtdEmb,'+
           '        EstPro.ImgPro,'+
           '        EstPro.CbaPro,'+
           '        EstPro.WebPro,'+
           '        EstPro.CodCat,'+
           '        EstPro.CodTip,'+
           '        EstPro.CodMrc,'+
           '        EstPro.FlgPro,'+
           '        EstPro.NumPro,'+
           '        EstPro.CodAnt'+
           ' From EstPro';

  Ordem := 1;

  with quSQL,SQL do begin

       close;
       Text := ' Select Count(*) as QtdReg From GerEmp';
       Open;

       QtdReg := FieldbyName('QtdReg').AsInteger;

  end;

  if GFlgAce <> 'Sim' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select FLGDEL,SEQIMP from GerPar';
          Open;

          if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

             GFlgAce := 'Sim';

             if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

             end
          else
             begin

             GEmpLog := 0;
             GFlgAce := 'Nao';

          end;
     end;
  end;
  
  if (QtdReg = 1) or (GFlgAce = 'Sim') then begin

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
                  '        EstIte.QmaIte,'+
                  '        EstIte.QtrIte,'+
                  '        EstIte.Ds1Ite,'+
                  '        EstIte.Ds2Ite,'+
                  '        EstIte.Ds3Ite,'+
                  '        EstIte.Ds4Ite,'+
                  '        EstIte.Ds5Ite,'+
                  '        EstIte.Dp1Ite,'+
                  '        EstIte.Dp2Ite,'+
                  '        EstIte.Dp3Ite,'+
                  '        EstIte.Dp4Ite,'+
                  '        EstIte.Dp5Ite,'+
                  '        EstIte.Vb1Ite,'+
                  '        EstIte.Vb2Ite,'+
                  '        EstIte.Vb3Ite,'+
                  '        EstIte.Vb4Ite,'+
                  '        EstIte.Vb5Ite,'+
                  '        EstIte.Vp1Ite,'+
                  '        EstIte.Vp2Ite,'+
                  '        EstIte.Vp3Ite,'+
                  '        EstIte.Vp4Ite,'+
                  '        EstIte.Vp5Ite,'+
                  '        EstIte.VcrIte,'+
                  '        EstIte.QtaIte,'+
                  '        EstIte.QtdRma,'+
                  '        Round(EstIte.QtdIte - (EstIte.QtrIte + EstIte.QtdRma),4) as AtuIte'+
                  ' From EstIte LEFT JOIN GerEmp ON (EstIte.CodEmp = GerEmp.CodEmp)'+
                  ' Where EstIte.CodClp = :CodClp'+
                  '   and EstIte.CodGru = :CodGru'+
                  '   and EstIte.CodSub = :CodSub'+
                  '   and EstIte.CodPro = :CodPro';

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and EstIte.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Text := Text + ' Order by EstIte.CodEmp';
          
          Open;
                
     end;
  end;
end;

procedure TfmPsqEst.DsProDataChange(Sender: TObject; Field: TField);
begin

  EdCodGru.Caption := EstProCodGru.Value;
  EdCodSub.Caption := EstProCodSub.Value;
  EdCodPro.Caption := EstProCodPro.Value;

  EdDscPro.Caption := ' '+EstProDscPro.Value;
  EdRefPro.Caption := ' '+EstProRefPro.Value;
  EdNumPro.Caption := ' '+EstProNumPro.Value;
  
  EdLocPro.Text := ' '+EstProLocPro.Value;
  EdCodUns.Text := ' '+EstProCodUns.Value;
  EdClfSai.Text := ' '+EstProClfSai.Value;

  lbWebPro.Caption := EstProWebPro.Value;

  EdQtdEmb.Text := FormatFloat('######',EstProQtdEmb.Value);

  EdSaiIpi.Text := FormatFloat('###,###,##0.00',EstProSaiIpi.Value);

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

  if EstProSimPro.Value <> '' then begin

     if not pnSimPro.Visible then pnSimPro.Visible := True;

     end
  else
     begin

     if pnSimPro.Visible then pnSimPro.Visible := False;

  end;

  if (EstIte.Params[0].AsString <> EstProCodClp.Value) or
     (EstIte.Params[1].AsString <> EstProCodGru.Value) or
     (EstIte.Params[2].AsString <> EstProCodSub.Value) or
     (EstIte.Params[3].AsString <> EstProCodPro.Value) then begin

     EstIte.Close;
     EstIte.Params[0].AsString := EstProCodClp.Value;
     EstIte.Params[1].AsString := EstProCodGru.Value;
     EstIte.Params[2].AsString := EstProCodSub.Value;
     EstIte.Params[3].AsString := EstProCodPro.Value;
     EstIte.Open;

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstBar.CodBar From EstBar '+
                  ' Where EstBar.CodClp = :CodClp'+
                  '   and EstBar.CodGru = :CodGru'+
                  '   and EstBar.CodSub = :CodSub'+
                  '   and EstBar.CodPro = :CodPro'+
                  '   and EstBar.FlgInt = :FlgInt';

          with Params do begin

               Params[0].AsString := EstProCodClp.Value;
               Params[1].AsString := EstProCodGru.Value;
               Params[2].AsString := EstProCodSub.Value;
               Params[3].AsString := EstProCodPro.Value;
               Params[4].AsString := 'Sim';

          end;

          Open;

          EdCbaPro.Caption := Trim( FieldbyName('CodBar').AsString );

     end;
  end;
end;

procedure TfmPsqEst.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
BlobStream : TStream;
JPEGImage  : TJPEGImage;
sOrdem     : string;
begin
  inherited;
  
  if key = 112 then begin

     if not pnHelp.Visible then pnHelp.Visible := true;

  end;

  if key = 27 then begin

     if pnHelp.Visible then
        pnHelp.Visible := False
     else
        close;   

  end;

  if not pnHelp.Visible then begin

     if not (ActiveControl is ThGrid) then begin

        case key of
             35: nvPro.BtnClick(nbLast);  {End}
             36: nvPro.BtnClick(nbFirst); {Home}
             37: nvPro.BtnClick(nbPrior); {Seta para a Esquerda}
             39: nvPro.BtnClick(nbNext);  {Seta para Direita}
             38: nvPro.BtnClick(nbNext);  {Seta para Cima}
             40: nvPro.BtnClick(nbPrior); {Seta para Baixo}
        end;

        end
     else
        begin

        case key of
             35: nvPro.BtnClick(nbLast);  {End}
             36: nvPro.BtnClick(nbFirst); {Home}
             37: nvPro.BtnClick(nbPrior); {Seta para a Esquerda}
             39: nvPro.BtnClick(nbNext);  {Seta para Direita}
        end;
     end;

     if key = 71 then begin {G - Grade de Itens}

        try

           fmPsqGrd := TfmPsqGrd.Create(Self);

           fmPsqGrd.EstTam.Close;
           fmPsqGrd.EstTam.Params[0].AsInteger := EstIteCodEmp.Value;
           fmPsqGrd.EstTam.Params[1].AsString  := EstIteCodClp.Value;
           fmPsqGrd.EstTam.Params[2].AsString  := EstIteCodGru.Value;
           fmPsqGrd.EstTam.Params[3].AsString  := EstIteCodSub.Value;
           fmPsqGrd.EstTam.Params[4].AsString  := EstIteCodPro.Value;
           fmPsqGrd.EstTam.Open;

           fmPsqGrd.ShowModal;

        finally

           FreeAndNil(fmPsqGrd);

        end;
     end;

     if key = 113 then begin {F2 - Descrição}

        pCodClp := '';
        pCodGru := '';
        pCodSub := '';
        pCodPro := '';

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := sCodClp;
           fmAuxIni.CodGru := sCodGru;
           fmAuxIni.CodSub := sCodSub;

           fmAuxIni.TipoPesq := 'I';

           fmAuxIni.ShowModal;

           pCodClp := fmAuxIni.CodClp;
           pCodGru := fmAuxIni.CodGru;
           pCodSub := fmAuxIni.CodSub;
           pCodPro := fmAuxIni.CodPro;

        finally   

           FreeAndNil(fmAuxIni);

        end;   
     end;

     if key = 114 then begin {F3 - Referência}

        pCodClp := '';
        pCodGru := '';
        pCodSub := '';
        pCodPro := '';

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := sCodClp;
           fmAuxIni.CodGru := sCodGru;
           fmAuxIni.CodSub := sCodSub;

           fmAuxIni.TipoPesq := 'R';

           fmAuxIni.ShowModal;

           pCodClp := fmAuxIni.CodClp;
           pCodGru := fmAuxIni.CodGru;
           pCodSub := fmAuxIni.CodSub;
           pCodPro := fmAuxIni.CodPro;

        finally   

           FreeAndNil(fmAuxIni);

        end;
     end;

     if key = 115 then begin {F5 - Inteligente/Descrição}

        pCodCat := '';
        pCodTip := '';
        pCodMrc := '';
        pCodClp := '';
        pCodGru := '';
        pCodSub := '';
        pCodPro := '';

        if Trim(FlgCod) = 'Sim' then begin

           try

              fmPsqCba := TfmPsqCba.Create(Self);

              fmPsqCba.ShowModal;

              pCodCat := fmPsqCba.sCodCat;
              pCodTip := fmPsqCba.sCodTip;
              pCodMrc := fmPsqCba.sCodMrc;
              pCodClp := fmPsqCba.sCodClp;
              pCodGru := fmPsqCba.sCodGru;
              pCodSub := fmPsqCba.sCodSub;
              pCodPro := fmPsqCba.sCodPro;

           finally

              FreeAndNil(fmPsqCba);

           end;

           end
        else
           begin
           
           try

              fmPsqCod := TfmPsqCod.Create(Self);

              fmPsqCod.ShowModal;

              pCodCat := fmPsqCod.sCodCat;
              pCodTip := fmPsqCod.sCodTip;
              pCodMrc := fmPsqCod.sCodMrc;
              pCodClp := fmPsqCod.sCodClp;
              pCodGru := fmPsqCod.sCodGru;
              pCodSub := fmPsqCod.sCodSub;
              pCodPro := fmPsqCod.sCodPro;

           finally

              FreeAndNil(fmPsqCod);

           end;
        end;
     end;

     if key = 116 then begin {F5 - Inteligente/Descrição}

        pCodClp := '';
        pCodGru := '';
        pCodSub := '';
        pCodPro := '';

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := sCodClp;
           fmAuxPsq.CodGru := sCodGru;
           fmAuxPsq.CodSub := sCodSub;
           fmAuxPsq.CodPro := sCodPro;

           fmAuxPsq.TipoPesq := 'I';

           fmAuxPsq.ShowModal;

           pCodClp := fmAuxPsq.CodClp;
           pCodGru := fmAuxPsq.CodGru;
           pCodSub := fmAuxPsq.CodSub;
           pCodPro := fmAuxPsq.CodPro;

        finally   

           FreeAndNil(fmAuxPsq);

        end;
     end;

     if key = 117 then begin {F6 - Inteligente/Referência}

        pCodClp := '';
        pCodGru := '';
        pCodSub := '';
        pCodPro := '';

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           if Trim( sCodClp ) <> '' then fmAuxPsq.CodClp := sCodClp;
           if Trim( sCodGru ) <> '' then fmAuxPsq.CodGru := sCodGru;
           if Trim( sCodSub ) <> '' then fmAuxPsq.CodSub := sCodSub;
           if Trim( sCodPro ) <> '' then fmAuxPsq.CodPro := sCodPro;

           fmAuxPsq.TipoPesq := 'R';

           fmAuxPsq.ShowModal;

           pCodClp := fmAuxPsq.CodClp;
           pCodGru := fmAuxPsq.CodGru;
           pCodSub := fmAuxPsq.CodSub;
           pCodPro := fmAuxPsq.CodPro;

        finally   

           FreeAndNil(fmAuxPsq);

        end;
     end;

     if Trim( EstProCodGru.Value ) <> '' then begin

        if key = 118 then begin {F7 - Imagem}

           try

              fmPsqImg := TfmPsqImg.Create(Self);

              if EstProImgPro.BlobSize <> 0 then begin

                 BlobStream := EstPro.CreateBlobStream(EstProImgPro,bmRead);

                 JPEGImage := TJPEGImage.Create;

                 try
                   JPEGImage.LoadFromStream(BlobStream);
                   fmPsqImg.Image2.Picture.Assign(JPEGImage);
                 finally
                   FreeAndNil(BlobStream);
                   FreeAndNil(JPEGImage);
                 end;

                 end
              else
                 fmPsqImg.Image2.Picture:= nil;

              fmPsqImg.ShowModal;

           finally

              FreeAndNil(fmPsqImg);

           end;
        end;

        if key = 119 then begin {F8 - Caracteristicas}

           try

              fmPsqObs := TfmPsqObs.Create(Self);

              fmPsqObs.EstPro.Close;
              fmPsqObs.EstPro.Params[0].AsString := EstProCodClp.Value;
              fmPsqObs.EstPro.Params[1].AsString := EstProCodGru.Value;
              fmPsqObs.EstPro.Params[2].AsString := EstProCodSub.Value;
              fmPsqObs.EstPro.Params[3].AsString := EstProCodPro.Value;
              fmPsqObs.EstPro.Open;

              fmPsqObs.ShowModal;

           finally

              FreeAndNil(fmPsqObs);

           end;
        end;
     end;
     
     if key = 33 then EstPro.MoveBy(-10); {Page Up}
     if key = 34 then EstPro.MoveBy(10);  {Page Down}

     if key = 13 then begin {Enter - Confirmar Item}

        if sEntr = 'S' then begin

           CodClp := EstProCodClp.Value;
           CodGru := EstProCodGru.Value;
           CodSub := EstProCodSub.Value;
           CodPro := EstProCodPro.Value;
           CbaPro := EstProCbaPro.Value;

           if Trim(LanCba) = 'Sim' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg'+
                           ' From EstBar'+
                           ' Where EstBar.CodClp = :CodClp'+
                           '   and EstBar.CodGru = :CodGru'+
                           '   and EstBar.CodSub = :CodSub'+
                           '   and EstBar.CodPro = :CodPro';

                   with Params do begin

                        Params[0].AsString := CodClp;
                        Params[1].AsString := CodGru;
                        Params[2].AsString := CodSub;
                        Params[3].AsString := CodPro;

                   end;

                   Open;

              end;

              if quSQL.FieldbyName('QtdReg').AsInteger = 1 then begin
  
                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstBar.CodBar From EstBar'+
                              ' Where EstBar.CodClp = :CodClp'+
                              '   and EstBar.CodGru = :CodGru'+
                              '   and EstBar.CodSub = :CodSub'+
                              '   and EstBar.CodPro = :CodPro';

                      with Params do begin

                           Params[0].AsString := CodClp;
                           Params[1].AsString := CodGru;
                           Params[2].AsString := CodSub;
                           Params[3].AsString := CodPro;

                      end;

                      Open;

                      CbaPro := FieldbyName('CodBar').AsString;

                 end;

                 end
              else
                 begin

                 if quSQL.FieldbyName('QtdReg').AsInteger > 1 then begin
        
                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select EstBar.CodBar From EstBar'+
                                 ' Where EstBar.CodClp = :CodClp'+
                                 '   and EstBar.CodGru = :CodGru'+
                                 '   and EstBar.CodSub = :CodSub'+
                                 '   and EstBar.CodPro = :CodPro'+
                                 '   and EstBar.FlgInt = :FlgInt'+
                                 ' Order by EstBar.NroBar';

                         with Params do begin

                              Params[0].AsString := CodClp;
                              Params[1].AsString := CodGru;
                              Params[2].AsString := CodSub;
                              Params[3].AsString := CodPro;
                              Params[4].AsString := 'Sim';

                         end;

                         Open;

                         CbaPro := FieldbyName('CodBar').AsString;

                    end;
                 end;
              end;
           end;

           Close;

        end;
     end;

     if key = 32 then begin {ESPAÇO - Mudar Ordem}

        if Ordem < 4 then
           Ordem := Ordem + 1
        else
           Ordem := 1;

        if Ordem = 1 then Label29.Caption := '[Descrição]';
        if Ordem = 2 then Label29.Caption := '[Referência]';
        if Ordem = 3 then Label29.Caption := '[Part Number]';
        if Ordem = 4 then Label29.Caption := '[Grupo+Sub+Item]';

        if Ordem = 1 then sOrdem := ' Order by EstPro.DscPro';
        if Ordem = 2 then sOrdem := ' Order by EstPro.RefPro';
        if Ordem = 3 then sOrdem := ' Order by EstPro.NumPro';
        if Ordem = 4 then sOrdem := ' Order by EstPro.CodClp,EstPro.CodGru,EstPro.CodSub,EstPro.CodPro';

        pCodClp := EstProCodClp.Value;
        pCodGru := EstProCodGru.Value;
        pCodSub := EstProCodSub.Value;
        pCodPro := EstProCodPro.Value;

        with EstPro,SQL do begin

             Close;
             Text := sBase + ' Where EstPro.FlbPro = '''+ ' ' +'''';

             if Trim( iCodClp ) <> '' then Text := Text + ' and EstPro.CodClp = '''+ iCodClp +'''';
             if Trim( iCodGru ) <> '' then Text := Text + ' and EstPro.CodGru = '''+ iCodGru +'''';
             if Trim( iCodSub ) <> '' then Text := Text + ' and EstPro.CodSub = '''+ iCodSub +'''';
             if Trim( iCodPro ) <> '' then Text := Text + ' and EstPro.CodPro = '''+ iCodPro +'''';

             Text := Text + sOrdem;

             Open;

        end;

        EstPro.Locate('CodClp;CodGru;CodSub;CodPro', VarArrayOf([pCodClp,pCodGru,pCodSub,pCodPro]), [loPartialKey]);

        pCodClp := '';
        pCodGru := '';
        pCodSub := '';
        pCodPro := '';

     end;

     if key = 83 then begin {S - Verificar Similares}

        if Trim( EstProSimPro.Value ) <> '' then begin

           pCodClp := '';
           pCodGru := '';
           pCodSub := '';
           pCodPro := '';

           try

              fmPsqSim := TfmPsqSim.Create(Self);

              if Trim( CliTab ) <> '' then fmPsqSim.CliTab := CliTab;

              with fmPsqSim.EstPro,SQL do begin

                   Close;
                   Text := ' Select EstPro.CodClp,'+
                           '        EstPro.CodGru,'+
                           '        EstPro.CodSub,'+
                           '        EstPro.CodPro,'+
                           '        EstPro.DscPro,'+
                           '        EstPro.RefPro,'+
                           '        EstPro.LocPro,'+
                           '        EstPro.CodUne,'+
                           '        EstPro.CodUns,'+
                           '        EstPro.QtePro,'+
                           '        EstPro.QtsPro,'+
                           '        EstPro.SaiIpi,'+
                           '        EstPro.ClfSai,'+
                           '        EstPro.SaiIcm,'+
                           '        EstPro.SimPro,'+
                           '        EstPro.CodSt1,'+
                           '        EstPro.CodSt2,'+
                           '        EstPro.QtdEmb,'+
                           '        EstPro.ImgPro,'+
                           '        EstPro.CbaPro,'+
                           '        EstPro.WebPro,'+
                           '        EstPro.CodCat,'+
                           '        EstPro.CodTip,'+
                           '        EstPro.CodMrc,'+
                           '        EstPro.FlgPro,'+
                           '        EstPro.NumPro,'+
                           '        EstPro.CodAnt,'+
                           '        EstPro.IdePro'+
                           ' From EstPro'+
                           ' Where EstPro.FlbPro = '''+ ' ' +'''';

                   if Trim( sCodClp ) <> '' then
                      Text := Text + ' and EstPro.CodClp = '''+ sCodClp +''' and EstPro.SimPro = '''+ EstProSimPro.Value +''''
                   else
                      Text := Text + ' and EstPro.SimPro = '''+ EstProSimPro.Value +'''';

                   Text := Text + ' Order by EstPro.CodClp,EstPro.CodGru,EstPro.CodSub,EstPro.CodPro';

                   Open;

              end;

              fmPsqSim.ShowModal;

              pCodClp := fmPsqSim.CodClp;
              pCodGru := fmPsqSim.CodGru;
              pCodSub := fmPsqSim.CodSub;
              pCodPro := fmPsqSim.CodPro;

           finally

              FreeAndNil(fmPsqSim);

           end;
        end;
     end;

     if (Trim( pCodCat ) <> '') or
        (Trim( pCodTip ) <> '') or
        (Trim( pCodMrc ) <> '') or
        (Trim( pCodGru ) <> '') or
        (Trim( pCodSub ) <> '') or
        (Trim( pCodPro ) <> '') then begin

        if Ordem = 1 then sOrdem := ' Order by EstPro.DscPro';
        if Ordem = 2 then sOrdem := ' Order by EstPro.RefPro';
        if Ordem = 3 then sOrdem := ' Order by EstPro.NumPro';
        if Ordem = 4 then sOrdem := ' Order by EstPro.CodClp,EstPro.CodGru,EstPro.CodSub,EstPro.CodPro';

        with EstPro,SQL do begin

             Close;
             Text := ' Select EstPro.CodClp,'+
                     '        EstPro.CodGru,'+
                     '        EstPro.CodSub,'+
                     '        EstPro.CodPro,'+
                     '        EstPro.DscPro,'+
                     '        EstPro.RefPro,'+
                     '        EstPro.LocPro,'+
                     '        EstPro.CodUne,'+
                     '        EstPro.CodUns,'+
                     '        EstPro.QtePro,'+
                     '        EstPro.QtsPro,'+
                     '        EstPro.SaiIpi,'+
                     '        EstPro.ClfSai,'+
                     '        EstPro.SaiIcm,'+
                     '        EstPro.SimPro,'+
                     '        EstPro.CodSt1,'+
                     '        EstPro.CodSt2,'+
                     '        EstPro.QtdEmb,'+
                     '        EstPro.ImgPro,'+
                     '        EstPro.FlgPro,'+
                     '        EstPro.CbaPro,'+
                     '        EstPro.WebPro,'+
                     '        EstPro.CodCat,'+
                     '        EstPro.CodTip,'+
                     '        EstPro.CodMrc,'+
                     '        EstPro.NumPro,'+
                     '        EstPro.CodAnt'+
                     ' From EstPro'+
                     ' Where EstPro.CodClp = '''+ '1' +''''+
                     '   and EstPro.FlbPro = '''+ ' ' +'''';

             if Trim( pCodCat ) <> '' then Text := Text + ' and EstPro.CodCat = '''+ pCodCat +'''';
             if Trim( pCodTip ) <> '' then Text := Text + ' and EstPro.CodTip = '''+ pCodTip +'''';
             if Trim( pCodMrc ) <> '' then Text := Text + ' and EstPro.CodMrc = '''+ pCodMrc +'''';
             if Trim( pCodGru ) <> '' then Text := Text + ' and EstPro.CodGru = '''+ pCodGru +'''';
             if Trim( pCodSub ) <> '' then Text := Text + ' and EstPro.CodSub = '''+ pCodSub +'''';
             if Trim( pCodPro ) <> '' then Text := Text + ' and EstPro.CodPro = '''+ pCodPro +'''';

             Text := Text + sOrdem;

             Open;

        end;

        iCodClp := pCodClp;
        iCodGru := pCodGru;
        iCodSub := pCodSub;
        iCodPro := pCodPro;

        pCodCat := '';
        pCodTip := '';
        pCodMrc := '';
        pCodGru := '';
        pCodSub := '';
        pCodPro := '';

     end;
  end;   
end;

procedure TfmPsqEst.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqEst.lbWebProDblClick(Sender: TObject);
var
pagina : string;
begin
  inherited;

  pagina := 'http://'+LbWebPro.Caption;

  ShellExecute(0, Nil, PChar(pagina), Nil, Nil, sw_Normal);

end;

procedure TfmPsqEst.FormShow(Sender: TObject);
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
  
  if ExiCst <> 'Sim' then begin

     Label33.Visible := False;

     dxDBEdit56.Visible := False;
     
     EdVcrIte.Visible := False;

  end;
end;

procedure TfmPsqEst.FormKeyPress(Sender: TObject; var Key: Char);
var
sOrdem : string;
begin
  inherited;  
  if not pnHelp.Visible then begin

     if key = #2 then begin

        pCodClp := '';
        pCodGru := '';
        pCodSub := '';
        pCodPro := '';

        try

           fmPsqBar := TfmPsqBar.Create(Self);

           fmPsqBar.ShowModal;

           pCodClp := fmPsqBar.sCodClp;
           pCodGru := fmPsqBar.sCodGru;
           pCodSub := fmPsqBar.sCodSub;
           pCodPro := fmPsqBar.sCodPro;

        finally   

           FreeAndNil(fmPsqBar);

        end;
     end;

     if key = #16 then begin

        pCodClp := '';
        pCodGru := '';
        pCodSub := '';
        pCodPro := '';

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := sCodClp;
           fmAuxIni.CodGru := sCodGru;
           fmAuxIni.CodSub := sCodSub;

           fmAuxIni.TipoPesq := 'U';

           fmAuxIni.ShowModal;

           pCodClp := fmAuxIni.CodClp;
           pCodGru := fmAuxIni.CodGru;
           pCodSub := fmAuxIni.CodSub;
           pCodPro := fmAuxIni.CodPro;

        finally   

           FreeAndNil(fmAuxIni);

        end;
     end;

     if (Trim( pCodGru ) <> '') or
        (Trim( pCodSub ) <> '') or
        (Trim( pCodPro ) <> '') then begin

        if Ordem = 1 then sOrdem := ' Order by EstPro.DscPro';
        if Ordem = 2 then sOrdem := ' Order by EstPro.RefPro';
        if Ordem = 3 then sOrdem := ' Order by EstPro.NumPro';
        if Ordem = 4 then sOrdem := ' Order by EstPro.CodClp,EstPro.CodGru,EstPro.CodSub,EstPro.CodPro';

        with EstPro,SQL do begin

             Close;
             Text := ' Select EstPro.CodClp,'+
                     '        EstPro.CodGru,'+
                     '        EstPro.CodSub,'+
                     '        EstPro.CodPro,'+
                     '        EstPro.DscPro,'+
                     '        EstPro.RefPro,'+
                     '        EstPro.LocPro,'+
                     '        EstPro.CodUne,'+
                     '        EstPro.CodUns,'+
                     '        EstPro.QtePro,'+
                     '        EstPro.QtsPro,'+
                     '        EstPro.EntIpi,'+
                     '        EstPro.SaiIpi,'+
                     '        EstPro.ClfSai,'+
                     '        EstPro.ClfEnt,'+
                     '        EstPro.EntIcm,'+
                     '        EstPro.SaiIcm,'+
                     '        EstPro.SimPro,'+
                     '        EstPro.CodSt1,'+
                     '        EstPro.CodSt2,'+
                     '        EstPro.QtdEmb,'+
                     '        EstPro.ImgPro,'+
                     '        EstPro.CbaPro,'+
                     '        EstPro.WebPro,'+
                     '        EstPro.CodCat,'+
                     '        EstPro.CodTip,'+
                     '        EstPro.CodMrc,'+
                     '        EstPro.FlgPro,'+
                     '        EstPro.NumPro,'+
                     '        EstPro.CodAnt,'+
                     '        EstPro.IdePro'+
                     ' From EstPro'+
                     ' Where EstPro.CodClp = '''+ '1' +''''+
                     '   and EstPro.FlbPro = '''+ ' ' +'''';

             if Trim( pCodGru ) <> '' then Text := Text + ' and EstPro.CodGru = '''+ pCodGru +'''';
             if Trim( pCodSub ) <> '' then Text := Text + ' and EstPro.CodSub = '''+ pCodSub +'''';
             if Trim( pCodPro ) <> '' then Text := Text + ' and EstPro.CodPro = '''+ pCodPro +'''';

             Text := Text + sOrdem;

             Open;

        end;

        iCodClp := pCodClp;
        iCodGru := pCodGru;
        iCodSub := pCodSub;
        iCodPro := pCodPro;

        pCodGru := '';
        pCodSub := '';
        pCodPro := '';

     end;

     if Trim( EstProCodGru.Value ) <> '' then begin

        if key = #3 then begin // Comprado //

           try

              fmPsqCmp := TfmPsqCmp.Create(Self);

              fmPsqCmp.Panel3.Caption := ' '+EstProCodGru.Value+'.'+EstProCodSub.Value+'.'+EstProCodPro.Value+' - '+EstProDscPro.Value;

              fmPsqCmp.CmpPed.Close;
              fmPsqCmp.CmpPed.Params[0].AsString := EstProCodClp.Value;
              fmPsqCmp.CmpPed.Params[1].AsString := EstProCodGru.Value;
              fmPsqCmp.CmpPed.Params[2].AsString := EstProCodSub.Value;
              fmPsqCmp.CmpPed.Params[3].AsString := EstProCodPro.Value;
              fmPsqCmp.CmpPed.Open;

              fmPsqCmp.ShowModal;

           finally

              FreeAndNil(fmPsqCmp);

           end;
        end;

        if key = #18 then begin {Reservas}

           try

              fmPsqRes := TfmPsqRes.Create(Self);

              fmPsqRes.Panel3.Caption := ' '+EstProCodGru.Value+'.'+EstProCodSub.Value+'.'+EstProCodPro.Value+' - '+EstProDscPro.Value;

              fmPsqRes.PedRes.Close;
              fmPsqRes.PedRes.Params[0].AsString := EstProCodClp.Value;
              fmPsqRes.PedRes.Params[1].AsString := EstProCodGru.Value;
              fmPsqRes.PedRes.Params[2].AsString := EstProCodSub.Value;
              fmPsqRes.PedRes.Params[3].AsString := EstProCodPro.Value;
              fmPsqRes.PedRes.Open;

              fmPsqRes.ShowModal;

           finally

              FreeAndNil(fmPsqRes);

           end;
        end;
     end;
  end;
end;

procedure TfmPsqEst.DsIteDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if EstProFlgPro.Value = 'Sim' then begin

     if (not LbVp1Ite.Visible) or
        (not LbVp2Ite.Visible) or
        (not LbVp3Ite.Visible) or
        (not LbVp4Ite.Visible) or
        (not LbVp5Ite.Visible) then begin

        if Trim( CliTab ) = '01 Tabela 01' then begin

           LbVp1Ite.Visible := True;
           dbVp1Ite.Visible := True;
           EdVp1Ite.Visible := True;
           dbDp1Ite.Visible := True;
           EdDp1Ite.Visible := True;

           end
        else
           begin
              
           if Trim( CliTab ) = '02 Tabela 02' then begin

              LbVp1Ite.Visible := True;
              dbVp1Ite.Visible := True;
              EdVp1Ite.Visible := True;
              dbDp1Ite.Visible := True;
              EdDp1Ite.Visible := True;

              LbVp2Ite.Visible := True;
              dbVp2Ite.Visible := True;
              EdVp2Ite.Visible := True;
              dbDp2Ite.Visible := True;
              EdDp2Ite.Visible := True;

              end
           else
              begin

              if Trim( CliTab ) = '03 Tabela 03' then begin

                 LbVp1Ite.Visible := True;
                 dbVp1Ite.Visible := True;
                 EdVp1Ite.Visible := True;
                 dbDp1Ite.Visible := True;
                 EdDp1Ite.Visible := True;

                 LbVp2Ite.Visible := True;
                 dbVp2Ite.Visible := True;
                 EdVp2Ite.Visible := True;
                 dbDp2Ite.Visible := True;
                 EdDp2Ite.Visible := True;

                 LbVp3Ite.Visible := True;
                 dbVp3Ite.Visible := True;
                 EdVp3Ite.Visible := True;
                 dbDp3Ite.Visible := True;
                 EdDp3Ite.Visible := True;

                 end
              else
                 begin

                 if Trim( CliTab ) = '04 Tabela 04' then begin

                    LbVp1Ite.Visible := True;
                    dbVp1Ite.Visible := True;
                    EdVp1Ite.Visible := True;
                    dbDp1Ite.Visible := True;
                    EdDp1Ite.Visible := True;

                    LbVp2Ite.Visible := True;
                    dbVp2Ite.Visible := True;
                    EdVp2Ite.Visible := True;
                    dbDp2Ite.Visible := True;
                    EdDp2Ite.Visible := True;

                    LbVp3Ite.Visible := True;
                    dbVp3Ite.Visible := True;
                    EdVp3Ite.Visible := True;
                    dbDp3Ite.Visible := True;
                    EdDp3Ite.Visible := True;

                    LbVp4Ite.Visible := True;
                    dbVp4Ite.Visible := True;
                    EdVp4Ite.Visible := True;
                    dbDp4Ite.Visible := True;
                    EdDp4Ite.Visible := True;

                    end
                 else
                    begin
                    
                    LbVp1Ite.Visible := True;
                    dbVp1Ite.Visible := True;
                    EdVp1Ite.Visible := True;
                    dbDp1Ite.Visible := True;
                    EdDp1Ite.Visible := True;

                    LbVp2Ite.Visible := True;
                    dbVp2Ite.Visible := True;
                    EdVp2Ite.Visible := True;
                    dbDp2Ite.Visible := True;
                    EdDp2Ite.Visible := True;

                    LbVp3Ite.Visible := True;
                    dbVp3Ite.Visible := True;
                    EdVp3Ite.Visible := True;
                    dbDp3Ite.Visible := True;
                    EdDp3Ite.Visible := True;

                    LbVp4Ite.Visible := True;
                    dbVp4Ite.Visible := True;
                    EdVp4Ite.Visible := True;
                    dbDp4Ite.Visible := True;
                    EdDp4Ite.Visible := True;

                    LbVp5Ite.Visible := True;
                    dbVp5Ite.Visible := True;
                    EdVp5Ite.Visible := True;
                    dbDp5Ite.Visible := True;
                    EdDp5Ite.Visible := True;

                 end;
              end;
           end;
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

  if EdVcrIte.Visible then EdVcrIte.Text := FormatFloat('###,###,##0.0000',EstIteVcrIte.Value);

  EdQtmIte.Text := FormatFloat('###,###,##0.0000',EstIteQtmIte.Value);
  EdQmaIte.Text := FormatFloat('###,###,##0.0000',EstIteQmaIte.Value);
  EdQtdIte.Text := FormatFloat('###,###,##0.0000',EstIteQtdIte.Value);
  EdQtrIte.Text := FormatFloat('###,###,##0.0000',EstIteQtrIte.Value);
  EdQtdRma.Text := FormatFloat('###,###,##0.0000',EstIteQtdRma.Value);
  EdQtaIte.Text := FormatFloat('###,###,##0.0000',EstIteQtaIte.Value);
  EdSldIte.Text := FormatFloat('###,###,##0.0000',EstIteAtuIte.Value);

end;

end.
