unit PsqEs2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, Wwdbigrd, Wwdbgrid, hGrid, ExtCtrls, Db, Wwdatsrc,
  DBTables, Wwquery, AlignEdit, DBCtrls, Mask, hEdits, dxCntner,
  dxEditor, dxEdLib, dxDBELib, dxExEdtr, FShowpadrao, jpeg,
  dxDBColorCurrencyEdit, dxDBColorDateEdit, dxDBColorEdit;

type
  TfmPsqEs2 = class(TfmShowPadrao)
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
    dbQtrIte: TdxDBColorEdit;
    EdQtdIte: TAlignEdit;
    EdQtrIte: TAlignEdit;
    dxDBEdit19: TdxDBColorEdit;
    EdQtdEmb: TAlignEdit;
    dbQtdRma: TdxDBColorEdit;
    dbQtaIte: TdxDBColorEdit;
    EdQtdRma: TAlignEdit;
    EdQtaIte: TAlignEdit;
    dbVb1Ite: TdxDBColorEdit;
    dbVb2Ite: TdxDBColorEdit;
    dbVb3Ite: TdxDBColorEdit;
    dbVb4Ite: TdxDBColorEdit;
    EdVb1Ite: TAlignEdit;
    EdVb2Ite: TAlignEdit;
    EdVb3Ite: TAlignEdit;
    EdVb4Ite: TAlignEdit;
    nvPro: TDBNavigator;
    Label29: TLabel;
    EstProIMGPRO: TBlobField;
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
    EstProCLFSAI: TStringField;
    Label27: TLabel;
    EdClfSai: TEdit;
    dxDBEdit33: TdxDBColorEdit;
    pnSimPro: TPanel;
    EstProNUMPRO: TStringField;
    EstIteVCRITE: TFloatField;
    dbMk4Ite: TdxDBColorEdit;
    EdMk4Ite: TAlignEdit;
    dbMk3Ite: TdxDBColorEdit;
    EdMk3Ite: TAlignEdit;
    dbMk2Ite: TdxDBColorEdit;
    EdMk2Ite: TAlignEdit;
    dbMk1Ite: TdxDBColorEdit;
    EdMk1Ite: TAlignEdit;
    EstIteDS1ITE: TFloatField;
    EstIteDS2ITE: TFloatField;
    EstIteDS3ITE: TFloatField;
    EstIteDS4ITE: TFloatField;
    EstIteDS5ITE: TFloatField;
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
    Label75: TLabel;
    Label76: TLabel;
    Label78: TLabel;
    dbQtdCmp: TdxDBColorCurrencyEdit;
    dbDulCmp: TdxDBColorDateEdit;
    dbVpfIte: TdxDBColorCurrencyEdit;
    EdVpfIte: TAlignEdit;
    EdQtdCmp: TAlignEdit;
    EstIteQTDCMP: TFloatField;
    EstIteDULCMP: TDateTimeField;
    EstIteVPFITE: TFloatField;
    EdDulCmp: TEdit;
    EstIteMK1ITE: TFloatField;
    EstIteMK2ITE: TFloatField;
    EstIteMK3ITE: TFloatField;
    EstIteMK4ITE: TFloatField;
    EstIteMK5ITE: TFloatField;
    EstProENTIPI: TFloatField;
    EstProCLFENT: TStringField;
    EstProENTICM: TFloatField;
    EstIteVMEITE: TFloatField;
    EstIteATUQTE: TFloatField;
    Label33: TLabel;
    dxDBEdit12: TdxDBColorEdit;
    EdIdePro: TEdit;
    EstProIDEPRO: TStringField;
    EstIteVPFOUT: TFloatField;
    EstPar: TwwQuery;
    EstParFLGTAB: TStringField;
    EstIteCSTITE: TFloatField;
    EstIteVCHITE: TFloatField;
    EstIteVREITE: TFloatField;
    EstIteVCPITE: TFloatField;
    EstIteVPRITE: TFloatField;
    EdCodGru: TPanel;
    EdCodSub: TPanel;
    EdCodPro: TPanel;
    EdDscPro: TPanel;
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
    Label45: TLabel;
    Label46: TLabel;
    Panel3: TPanel;
    Label28: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    dxDBCurrencyEdit1: TdxDBColorCurrencyEdit;
    EdCstOut: TAlignEdit;
    dxDBCurrencyEdit2: TdxDBColorCurrencyEdit;
    EdVpfOut: TAlignEdit;
    EdDulImp: TEdit;
    dxDBDateEdit1: TdxDBColorDateEdit;
    EstIteCSTOUT: TFloatField;
    EstIteDULIMP: TDateTimeField;
    EstIteQTDIMP: TFloatField;
    dxDBCurrencyEdit3: TdxDBColorCurrencyEdit;
    EdQtdImp: TAlignEdit;
    Label59: TLabel;
    dbDs4Ite: TdxDBColorEdit;
    EdDs4Ite: TAlignEdit;
    dbDs3Ite: TdxDBColorEdit;
    EdDs3Ite: TAlignEdit;
    dbDs2Ite: TdxDBColorEdit;
    EdDs2Ite: TAlignEdit;
    dbDs1Ite: TdxDBColorEdit;
    EdDs1Ite: TAlignEdit;
    Label72: TLabel;
    Label77: TLabel;
    Label79: TLabel;
    dbVcrIte: TdxDBColorCurrencyEdit;
    EdVcrIte: TAlignEdit;
    Label80: TLabel;
    Label81: TLabel;
    dbVb5Ite: TdxDBColorEdit;
    EdVb5Ite: TAlignEdit;
    dbMk5Ite: TdxDBColorEdit;
    EdMk5Ite: TAlignEdit;
    dbDs5Ite: TdxDBColorEdit;
    EdDs5Ite: TAlignEdit;
    Label15: TLabel;
    dbSldIte: TdxDBColorEdit;
    EdSldIte: TAlignEdit;
    Label17: TLabel;
    dxDBEdit27: TdxDBColorEdit;
    Panel1: TPanel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label40: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    dxDBEdit28: TdxDBColorEdit;
    grPro: ThGrid;
    Label85: TLabel;
    dxDBColorEdit2: TdxDBColorEdit;
    EdSaiIpi: TAlignEdit;
    Label20: TLabel;
    Label84: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure lbWebProDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DsProDataChange(Sender: TObject; Field: TField);
    procedure DsIteDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    Ordem : Integer;
    ExiCst : string;
    CliTab : string;
    sCodClp,sCodGru,sCodSub,sCodPro                         : string;
    iCodClp,iCodGru,iCodSub,iCodPro                         : string;
    sBase,sEntr,CodClp,CodGru,CodSub,CodPro,CbaPro          : string;
    pCodClp,pCodGru,pCodSub,pCodPro,pCodCat,pCodTip,pCodMrc : string;
  end;

var
  rCodClp  : string;
  rCodGru  : string;
  rCodSub  : string;
  rCodCat  : integer;
  rCodTip  : integer;
  rCodMrc  : integer;
  fmPsqEs2 : TfmPsqEs2;

implementation

uses ShellAPI, dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManGDB, PsqSim, AuxPsq,
     PsqImg, PsqObs, PsqGrd, AuxIni, PsqCde, PsqCmp, PsqRes, PsqPco, PsqBar,
     PsqEs3;

{$R *.DFM}

procedure TfmPsqEs2.FormCreate(Sender: TObject);
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
           '        EstPro.IdePro From EstPro';

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
                  '        EstIte.QtrIte,'+
                  '        EstIte.Ds1Ite,'+
                  '        EstIte.Ds2Ite,'+
                  '        EstIte.Ds3Ite,'+
                  '        EstIte.Ds4Ite,'+
                  '        EstIte.Ds5Ite,'+
                  '        EstIte.Vb1Ite,'+
                  '        EstIte.Vb2Ite,'+
                  '        EstIte.Vb3Ite,'+
                  '        EstIte.Vb4Ite,'+
                  '        EstIte.Vb5Ite,'+
                  '        EstIte.Mk1Ite,'+
                  '        EstIte.Mk2Ite,'+
                  '        EstIte.Mk3Ite,'+
                  '        EstIte.Mk4Ite,'+
                  '        EstIte.Mk5Ite,'+
                  '        EstIte.CstIte,'+
                  '        EstIte.VchIte,'+
                  '        EstIte.VreIte,'+
                  '        EstIte.VcpIte,'+
                  '        EstIte.VprIte,'+
                  '        EstIte.VcrIte,'+
                  '        EstIte.VpfOut,'+
                  '        EstIte.CstOut,'+
                  '        EstIte.QtdCmp,'+
                  '        EstIte.DulCmp,'+
                  '        EstIte.DulImp,'+
                  '        EstIte.QtdImp,'+
                  '        EstIte.VpfIte,'+
                  '        EstIte.VmeIte,'+
                  '        EstIte.QtaIte,'+
                  '        EstIte.QtdRma,'+
                  '        Round(EstIte.QtdIte - (EstIte.QtrIte + EstIte.QtdRma),4) as AtuQte'+
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

procedure TfmPsqEs2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
BlobStream : TStream;
JPEGImage : TJPEGImage;
sOrdem : string;
Linha : Integer;
begin
  inherited;
  
  if key = 27 then begin

     if pnHelp.Visible then
        pnHelp.Visible := False
     else
        close;   

  end;

  if key = 112 then begin

     if not pnHelp.Visible then pnHelp.Visible := true;

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

           fmAuxIni.TipoPesq := 'IC';

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

        try

           fmPsqCde := TfmPsqCde.Create(Self);

           fmPsqCde.sCodClp := sCodClp;
           fmPsqCde.sCodGru := sCodGru;
           fmPsqCde.sCodSub := sCodSub;
           fmPsqCde.sCodPro := sCodPro;

           fmPsqCde.ShowModal;

           pCodCat := fmPsqCde.sCodCat;
           pCodTip := fmPsqCde.sCodTip;
           pCodMrc := fmPsqCde.sCodMrc;
           pCodClp := fmPsqCde.sCodClp;
           pCodGru := fmPsqCde.sCodGru;
           pCodSub := fmPsqCde.sCodSub;
           pCodPro := fmPsqCde.sCodPro;

        finally

           FreeAndNil(fmPsqCde);

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

           fmAuxPsq.TipoPesq := 'IC';

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

        if key = 121 then begin {F10 - Estoque de Outras Unidades}

           if quSQL.Active then quSQL.Close;
           
           with fmManGDB.dbEmerion1 do begin

                try
                   Connected := True;
                except
                   Connected := False;
                end;

           end;
           
           with fmManGDB.dbEmerion2 do begin

                try
                   Connected := True;
                except
                   Connected := False;
                end;

           end;

           if (fmManGDB.dbEmerion1.Connected) or (fmManGDB.dbEmerion2.Connected) then begin

              Linha := 0;

              try

                 fmPsqEs3 := TfmPsqEs3.Create(Self);

                 fmPsqEs3.Panel3.Caption := ' '+EstProCodGru.Value+'.'+EstProCodSub.Value+'.'+EstProCodPro.Value+' - '+EstProDscPro.Value;

                 if fmManGDB.dbEmerion1.Connected then begin

                    quSQL.DatabaseName := 'Emerion_01';

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select GerEmp.ApeEmp,'+
                                 '        EstIte.Vb1Ite,'+
                                 '        EstIte.Vb2Ite,'+
                                 '        EstIte.Vb3Ite,'+
                                 '        EstIte.Vb4Ite,'+
                                 '        EstIte.Vb5Ite,'+
                                 '        EstIte.Mk1Ite,'+
                                 '        EstIte.Mk2Ite,'+
                                 '        EstIte.Mk3Ite,'+
                                 '        EstIte.Mk4Ite,'+
                                 '        EstIte.Mk5Ite,'+
                                 '        EstIte.Ds1Ite,'+
                                 '        EstIte.Ds2Ite,'+
                                 '        EstIte.Ds3Ite,'+
                                 '        EstIte.Ds4Ite,'+
                                 '        EstIte.Ds5Ite,'+
                                 '        EstIte.VcrIte,'+
                                 '        EstIte.VpfIte,'+
                                 '        EstIte.DulCmp,'+
                                 '        EstIte.QtdCmp,'+
                                 '        EstIte.VpfOut,'+
                                 '        EstIte.CstOut,'+
                                 '        EstIte.DulImp,'+
                                 '        EstIte.QtdImp,'+
                                 '        EstIte.QtmIte,'+
                                 '        EstIte.QtdIte,'+
                                 '        EstIte.QtrIte,'+
                                 '        EstIte.QtaIte,'+
                                 '        EstIte.Qtdrma,'+
                                 '        EstIte.QtdIte,'+
                                 '        Round(EstIte.QtdIte - (EstIte.QtrIte + EstIte.QtdRma),4) as AtuIte'+
                                 ' From EstIte,GerEmp'+
                                 ' Where EstIte.CodEmp = GerEmp.CodEmp'+
                                 '   and EstIte.CodClp = '+ QuotedStr(EstProCodClp.Value)+
                                 '   and EstIte.CodGru = '+ QuotedStr(EstProCodGru.Value)+
                                 '   and EstIte.CodSub = '+ QuotedStr(EstProCodSub.Value)+
                                 '   and EstIte.CodPro = '+ QuotedStr(EstProCodPro.Value)+
                                 '   and GerEmp.ExiEst = '+ QuotedStr('Sim');
                         Open;

                         fmPsqEs3.StrTab.Cells[00,Linha] := FieldbyName('ApeEmp').AsString;
                         fmPsqEs3.StrTab.Cells[01,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[02,Linha] := FormatFloat('###,###,##0',FieldbyName('QtrIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[03,Linha] := FormatFloat('###,###,##0',FieldbyName('QtaIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[04,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdRma').AsFloat);
                         fmPsqEs3.StrTab.Cells[05,Linha] := FormatFloat('###,###,##0',FieldbyName('AtuIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[06,Linha] := 'Emerion_01';

                         fmPsqEs3.StrTab.Cells[07,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb1Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[08,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb2Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[09,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb3Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[10,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb4Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[11,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb5Ite').AsFloat);

                         fmPsqEs3.StrTab.Cells[12,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk1Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[13,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk2Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[14,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk3Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[15,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk4Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[16,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk5Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[17,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds1Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[18,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds2Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[19,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds3Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[20,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds4Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[21,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds5Ite').AsFloat);

                         fmPsqEs3.StrTab.Cells[22,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('VcrIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[23,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('VpfIte').AsFloat);

                         if FieldbyName('QtdCmp').AsFloat > 0 then
                            fmPsqEs3.StrTab.Cells[24,Linha] := FormatDateTime('dd/mm/yyyy',FieldbyName('DulCmp').AsDateTime)
                         else
                            fmPsqEs3.StrTab.Cells[24,Linha] := ' ';

                         fmPsqEs3.StrTab.Cells[25,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdCmp').AsFloat);

                         fmPsqEs3.StrTab.Cells[26,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('VpfOut').AsFloat);
                         fmPsqEs3.StrTab.Cells[27,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('CstOut').AsFloat);

                         if FieldbyName('QtdImp').AsFloat > 0 then
                            fmPsqEs3.StrTab.Cells[28,Linha] := FormatDateTime('dd/mm/yyyy',FieldbyName('DulImp').AsDateTime)
                         else
                            fmPsqEs3.StrTab.Cells[28,Linha] := ' ';

                         fmPsqEs3.StrTab.Cells[29,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdImp').AsFloat);

                         Inc(Linha);

                         Close;

                    end;
                 end;

                 if fmManGDB.dbEmerion2.Connected then begin

                    quSQL.DatabaseName := 'Emerion_02';

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select GerEmp.ApeEmp,'+
                                 '        EstIte.Vb1Ite,'+
                                 '        EstIte.Vb2Ite,'+
                                 '        EstIte.Vb3Ite,'+
                                 '        EstIte.Vb4Ite,'+
                                 '        EstIte.Vb5Ite,'+
                                 '        EstIte.Mk1Ite,'+
                                 '        EstIte.Mk2Ite,'+
                                 '        EstIte.Mk3Ite,'+
                                 '        EstIte.Mk4Ite,'+
                                 '        EstIte.Mk5Ite,'+
                                 '        EstIte.Ds1Ite,'+
                                 '        EstIte.Ds2Ite,'+
                                 '        EstIte.Ds3Ite,'+
                                 '        EstIte.Ds4Ite,'+
                                 '        EstIte.Ds5Ite,'+
                                 '        EstIte.VcrIte,'+
                                 '        EstIte.VpfIte,'+
                                 '        EstIte.DulCmp,'+
                                 '        EstIte.QtdCmp,'+
                                 '        EstIte.VpfOut,'+
                                 '        EstIte.CstOut,'+
                                 '        EstIte.DulImp,'+
                                 '        EstIte.QtdImp,'+
                                 '        EstIte.QtmIte,'+
                                 '        EstIte.QtdIte,'+
                                 '        EstIte.QtrIte,'+
                                 '        EstIte.QtaIte,'+
                                 '        EstIte.Qtdrma,'+
                                 '        EstIte.QtdIte,'+
                                 '        Round(EstIte.QtdIte - (EstIte.QtrIte + EstIte.QtdRma),4) as AtuIte'+
                                 ' From EstIte,GerEmp'+
                                 ' Where EstIte.CodEmp = GerEmp.CodEmp'+
                                 '   and EstIte.CodClp = '+ QuotedStr(EstProCodClp.Value)+
                                 '   and EstIte.CodGru = '+ QuotedStr(EstProCodGru.Value)+
                                 '   and EstIte.CodSub = '+ QuotedStr(EstProCodSub.Value)+
                                 '   and EstIte.CodPro = '+ QuotedStr(EstProCodPro.Value)+
                                 '   and GerEmp.ExiEst = '+ QuotedStr('Sim');
                         Open;

                         fmPsqEs3.StrTab.Cells[00,Linha] := FieldbyName('ApeEmp').AsString;
                         fmPsqEs3.StrTab.Cells[01,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[02,Linha] := FormatFloat('###,###,##0',FieldbyName('QtrIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[03,Linha] := FormatFloat('###,###,##0',FieldbyName('QtaIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[04,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdRma').AsFloat);
                         fmPsqEs3.StrTab.Cells[05,Linha] := FormatFloat('###,###,##0',FieldbyName('AtuIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[06,Linha] := 'Emerion_02';

                         fmPsqEs3.StrTab.Cells[07,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb1Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[08,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb2Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[09,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb3Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[10,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb4Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[11,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb5Ite').AsFloat);

                         fmPsqEs3.StrTab.Cells[12,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk1Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[13,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk2Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[14,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk3Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[15,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk4Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[16,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk5Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[17,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds1Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[18,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds2Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[19,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds3Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[20,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds4Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[21,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds5Ite').AsFloat);

                         fmPsqEs3.StrTab.Cells[22,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('VcrIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[23,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('VpfIte').AsFloat);

                         if FieldbyName('QtdCmp').AsFloat > 0 then
                            fmPsqEs3.StrTab.Cells[24,Linha] := FormatDateTime('dd/mm/yyyy',FieldbyName('DulCmp').AsDateTime)
                         else
                            fmPsqEs3.StrTab.Cells[24,Linha] := ' ';

                         fmPsqEs3.StrTab.Cells[25,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdCmp').AsFloat);

                         fmPsqEs3.StrTab.Cells[26,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('VpfOut').AsFloat);
                         fmPsqEs3.StrTab.Cells[27,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('CstOut').AsFloat);

                         if FieldbyName('QtdImp').AsFloat > 0 then
                            fmPsqEs3.StrTab.Cells[28,Linha] := FormatDateTime('dd/mm/yyyy',FieldbyName('DulImp').AsDateTime)
                         else
                            fmPsqEs3.StrTab.Cells[28,Linha] := ' ';

                         fmPsqEs3.StrTab.Cells[29,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdImp').AsFloat);

                         Close;

                    end;
                 end;

                 fmPsqEs3.ShowModal;

              finally

                 fmManGDB.dbEmerion1.Connected := False;
                 fmManGDB.dbEmerion2.Connected := False;

                 quSQL.DatabaseName := 'ISade';

                 FreeAndNil(fmPsqEs3);

              end;
           end;
        end;
     end;

     if key = 33 then EstPro.MoveBy(-10); {Page Up}
     if key = 34 then EstPro.MoveBy(10);  {Page Down}

     if key = 13 then begin {Enter - Confirmar Item}

        CodClp := EstProCodClp.Value;
        CodGru := EstProCodGru.Value;
        CodSub := EstProCodSub.Value;
        CodPro := EstProCodPro.Value;
        CbaPro := EstProCbaPro.Value;

        Close;

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

              with fmPsqSim.EstPro,SQL do begin

                   Close;
                   Text := sBase + ' Where EstPro.FlbPro = '''+ ' ' +'''';

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

procedure TfmPsqEs2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqEs2.lbWebProDblClick(Sender: TObject);
var
pagina : string;
begin
  inherited;

  pagina := 'http://'+LbWebPro.Caption;

  ShellExecute(0, Nil, PChar(pagina), Nil, Nil, sw_Normal);

end;

procedure TfmPsqEs2.FormKeyPress(Sender: TObject; var Key: Char);
var
sOrdem : string;
Linha  : integer;
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

     if key = #12 then begin

        if Trim( EstProCodGru.Value ) <> '' then begin

           if quSQL.Active then quSQL.Close;
           
           with fmManGDB.dbEmerion1 do begin

                try
                   Connected := True;
                except
                   Connected := False;
                end;

           end;
           
           with fmManGDB.dbEmerion2 do begin

                try
                   Connected := True;
                except
                   Connected := False;
                end;

           end;

           if (fmManGDB.dbEmerion1.Connected) or (fmManGDB.dbEmerion2.Connected) then begin

              Linha := 0;

              try

                 fmPsqEs3 := TfmPsqEs3.Create(Self);

                 fmPsqEs3.Panel3.Caption := ' '+EstProCodGru.Value+'.'+EstProCodSub.Value+'.'+EstProCodPro.Value+' - '+EstProDscPro.Value;

                 if fmManGDB.dbEmerion1.Connected then begin

                    quSQL.DatabaseName := 'Emerion_01';

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select GerEmp.ApeEmp,'+
                                 '        EstIte.Vb1Ite,'+
                                 '        EstIte.Vb2Ite,'+
                                 '        EstIte.Vb3Ite,'+
                                 '        EstIte.Vb4Ite,'+
                                 '        EstIte.Vb5Ite,'+
                                 '        EstIte.Mk1Ite,'+
                                 '        EstIte.Mk2Ite,'+
                                 '        EstIte.Mk3Ite,'+
                                 '        EstIte.Mk4Ite,'+
                                 '        EstIte.Mk5Ite,'+
                                 '        EstIte.Ds1Ite,'+
                                 '        EstIte.Ds2Ite,'+
                                 '        EstIte.Ds3Ite,'+
                                 '        EstIte.Ds4Ite,'+
                                 '        EstIte.Ds5Ite,'+
                                 '        EstIte.VcrIte,'+
                                 '        EstIte.VpfIte,'+
                                 '        EstIte.DulCmp,'+
                                 '        EstIte.QtdCmp,'+
                                 '        EstIte.VpfOut,'+
                                 '        EstIte.CstOut,'+
                                 '        EstIte.DulImp,'+
                                 '        EstIte.QtdImp,'+
                                 '        EstIte.QtmIte,'+
                                 '        EstIte.QtdIte,'+
                                 '        EstIte.QtrIte,'+
                                 '        EstIte.QtaIte,'+
                                 '        EstIte.Qtdrma,'+
                                 '        EstIte.QtdIte,'+
                                 '        Round(EstIte.QtdIte - (EstIte.QtrIte + EstIte.QtdRma),4) as AtuIte'+
                                 ' From EstIte,GerEmp'+
                                 ' Where EstIte.CodEmp = GerEmp.CodEmp'+
                                 '   and EstIte.CodClp = '+ QuotedStr(EstProCodClp.Value)+
                                 '   and EstIte.CodGru = '+ QuotedStr(EstProCodGru.Value)+
                                 '   and EstIte.CodSub = '+ QuotedStr(EstProCodSub.Value)+
                                 '   and EstIte.CodPro = '+ QuotedStr(EstProCodPro.Value)+
                                 '   and GerEmp.ExiEst = '+ QuotedStr('Sim');
                         Open;

                         fmPsqEs3.StrTab.Cells[00,Linha] := FieldbyName('ApeEmp').AsString;
                         fmPsqEs3.StrTab.Cells[01,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[02,Linha] := FormatFloat('###,###,##0',FieldbyName('QtrIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[03,Linha] := FormatFloat('###,###,##0',FieldbyName('QtaIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[04,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdRma').AsFloat);
                         fmPsqEs3.StrTab.Cells[05,Linha] := FormatFloat('###,###,##0',FieldbyName('AtuIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[06,Linha] := 'Emerion_01';

                         fmPsqEs3.StrTab.Cells[07,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb1Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[08,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb2Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[09,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb3Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[10,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb4Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[11,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb5Ite').AsFloat);

                         fmPsqEs3.StrTab.Cells[12,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk1Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[13,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk2Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[14,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk3Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[15,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk4Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[16,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk5Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[17,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds1Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[18,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds2Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[19,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds3Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[20,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds4Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[21,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds5Ite').AsFloat);

                         fmPsqEs3.StrTab.Cells[22,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('VcrIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[23,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('VpfIte').AsFloat);

                         if FieldbyName('QtdCmp').AsFloat > 0 then
                            fmPsqEs3.StrTab.Cells[24,Linha] := FormatDateTime('dd/mm/yyyy',FieldbyName('DulCmp').AsDateTime)
                         else
                            fmPsqEs3.StrTab.Cells[24,Linha] := ' ';

                         fmPsqEs3.StrTab.Cells[25,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdCmp').AsFloat);

                         fmPsqEs3.StrTab.Cells[26,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('VpfOut').AsFloat);
                         fmPsqEs3.StrTab.Cells[27,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('CstOut').AsFloat);

                         if FieldbyName('QtdImp').AsFloat > 0 then
                            fmPsqEs3.StrTab.Cells[28,Linha] := FormatDateTime('dd/mm/yyyy',FieldbyName('DulImp').AsDateTime)
                         else
                            fmPsqEs3.StrTab.Cells[28,Linha] := ' ';

                         fmPsqEs3.StrTab.Cells[29,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdImp').AsFloat);

                         Inc(Linha);

                         Close;

                    end;
                 end;

                 if fmManGDB.dbEmerion2.Connected then begin

                    quSQL.DatabaseName := 'Emerion_02';

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select GerEmp.ApeEmp,'+
                                 '        EstIte.Vb1Ite,'+
                                 '        EstIte.Vb2Ite,'+
                                 '        EstIte.Vb3Ite,'+
                                 '        EstIte.Vb4Ite,'+
                                 '        EstIte.Vb5Ite,'+
                                 '        EstIte.Mk1Ite,'+
                                 '        EstIte.Mk2Ite,'+
                                 '        EstIte.Mk3Ite,'+
                                 '        EstIte.Mk4Ite,'+
                                 '        EstIte.Mk5Ite,'+
                                 '        EstIte.Ds1Ite,'+
                                 '        EstIte.Ds2Ite,'+
                                 '        EstIte.Ds3Ite,'+
                                 '        EstIte.Ds4Ite,'+
                                 '        EstIte.Ds5Ite,'+
                                 '        EstIte.VcrIte,'+
                                 '        EstIte.VpfIte,'+
                                 '        EstIte.DulCmp,'+
                                 '        EstIte.QtdCmp,'+
                                 '        EstIte.VpfOut,'+
                                 '        EstIte.CstOut,'+
                                 '        EstIte.DulImp,'+
                                 '        EstIte.QtdImp,'+
                                 '        EstIte.QtmIte,'+
                                 '        EstIte.QtdIte,'+
                                 '        EstIte.QtrIte,'+
                                 '        EstIte.QtaIte,'+
                                 '        EstIte.Qtdrma,'+
                                 '        EstIte.QtdIte,'+
                                 '        Round(EstIte.QtdIte - (EstIte.QtrIte + EstIte.QtdRma),4) as AtuIte'+
                                 ' From EstIte,GerEmp'+
                                 ' Where EstIte.CodEmp = GerEmp.CodEmp'+
                                 '   and EstIte.CodClp = '+ QuotedStr(EstProCodClp.Value)+
                                 '   and EstIte.CodGru = '+ QuotedStr(EstProCodGru.Value)+
                                 '   and EstIte.CodSub = '+ QuotedStr(EstProCodSub.Value)+
                                 '   and EstIte.CodPro = '+ QuotedStr(EstProCodPro.Value)+
                                 '   and GerEmp.ExiEst = '+ QuotedStr('Sim');
                         Open;

                         fmPsqEs3.StrTab.Cells[00,Linha] := FieldbyName('ApeEmp').AsString;
                         fmPsqEs3.StrTab.Cells[01,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[02,Linha] := FormatFloat('###,###,##0',FieldbyName('QtrIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[03,Linha] := FormatFloat('###,###,##0',FieldbyName('QtaIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[04,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdRma').AsFloat);
                         fmPsqEs3.StrTab.Cells[05,Linha] := FormatFloat('###,###,##0',FieldbyName('AtuIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[06,Linha] := 'Emerion_02';

                         fmPsqEs3.StrTab.Cells[07,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb1Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[08,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb2Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[09,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb3Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[10,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb4Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[11,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('Vb5Ite').AsFloat);

                         fmPsqEs3.StrTab.Cells[12,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk1Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[13,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk2Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[14,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk3Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[15,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk4Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[16,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Mk5Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[17,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds1Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[18,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds2Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[19,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds3Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[20,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds4Ite').AsFloat);
                         fmPsqEs3.StrTab.Cells[21,Linha] := FormatFloat('###,###,##0.00',FieldbyName('Ds5Ite').AsFloat);

                         fmPsqEs3.StrTab.Cells[22,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('VcrIte').AsFloat);
                         fmPsqEs3.StrTab.Cells[23,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('VpfIte').AsFloat);

                         if FieldbyName('QtdCmp').AsFloat > 0 then
                            fmPsqEs3.StrTab.Cells[24,Linha] := FormatDateTime('dd/mm/yyyy',FieldbyName('DulCmp').AsDateTime)
                         else
                            fmPsqEs3.StrTab.Cells[24,Linha] := ' ';

                         fmPsqEs3.StrTab.Cells[25,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdCmp').AsFloat);

                         fmPsqEs3.StrTab.Cells[26,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('VpfOut').AsFloat);
                         fmPsqEs3.StrTab.Cells[27,Linha] := FormatFloat('###,###,##0.0000',FieldbyName('CstOut').AsFloat);

                         if FieldbyName('QtdImp').AsFloat > 0 then
                            fmPsqEs3.StrTab.Cells[28,Linha] := FormatDateTime('dd/mm/yyyy',FieldbyName('DulImp').AsDateTime)
                         else
                            fmPsqEs3.StrTab.Cells[28,Linha] := ' ';

                         fmPsqEs3.StrTab.Cells[29,Linha] := FormatFloat('###,###,##0',FieldbyName('QtdImp').AsFloat);

                         Close;

                    end;
                 end;

                 fmPsqEs3.ShowModal;

              finally

                 fmManGDB.dbEmerion1.Connected := False;
                 fmManGDB.dbEmerion2.Connected := False;

                 quSQL.DatabaseName := 'ISade';

                 FreeAndNil(fmPsqEs3);

              end;
           end;
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
          
        if key = #18 then begin // Reservas //

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

        if key = #3 then begin // Comprado //

           try

              fmPsqCmp := TfmPsqCmp.Create(Self);

              fmPsqCmp.Panel3.Caption := ' '+EstProCodGru.Value+'.'+EstProCodSub.Value+'.'+EstProCodPro.Value+' - '+EstProDscPro.Value;

              fmPsqCmp.CmpPed.Close;
              fmPsqCmp.CmpPed.Params[0].AsString  := EstProCodClp.Value;
              fmPsqCmp.CmpPed.Params[1].AsString  := EstProCodGru.Value;
              fmPsqCmp.CmpPed.Params[2].AsString  := EstProCodSub.Value;
              fmPsqCmp.CmpPed.Params[3].AsString  := EstProCodPro.Value;
              fmPsqCmp.CmpPed.Open;

              fmPsqCmp.ShowModal;

           finally

              FreeAndNil(fmPsqCmp);

           end;
        end;

        if key = #6 then begin // Preços de Fornecedores //

           try

              fmPsqPco := TfmPsqPco.Create(Self);

              fmPsqPco.Label1.Caption := EstProCodGru.Value+'.'+EstProCodSub.Value+'.'+EstProCodPro.Value+' - '+EstProDscPro.Value;

              fmPsqPco.CmpPfo.Close;
              fmPsqPco.CmpPfo.Params[0].AsString  := EstProCodClp.Value;
              fmPsqPco.CmpPfo.Params[1].AsString  := EstProCodGru.Value;
              fmPsqPco.CmpPfo.Params[2].AsString  := EstProCodSub.Value;
              fmPsqPco.CmpPfo.Params[3].AsString  := EstProCodPro.Value;
              fmPsqPco.CmpPfo.Open;

              fmPsqPco.ShowModal;

           finally

              FreeAndNil(fmPsqPco);

           end;
        end;
     end;
  end;   
end;

procedure TfmPsqEs2.DsProDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  EdCodGru.Caption := EstProCodGru.Value;
  EdCodSub.Caption := EstProCodSub.Value;
  EdCodPro.Caption := EstProCodPro.Value;

  EdDscPro.Caption := ' ' + EstProDscPro.Value;
  EdRefPro.Caption := ' ' + EstProRefPro.Value;
  EdNumPro.Caption := ' ' + EstProNumPro.Value;

  EdIdePro.Text := ' ' + EstProIdePro.Value;
  EdCodUns.Text := ' ' + EstProCodUne.Value;
  EdClfSai.Text := ' ' + EstProClfSai.Value;

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

  lbWebPro.Caption := EstProWebPro.Value;

  EdQtdEmb.Text := FormatFloat('######',EstProQtdEmb.Value);

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

  end;
end;

procedure TfmPsqEs2.DsIteDataChange(Sender: TObject; Field: TField);
var
VbaIte : real;
begin

  if EstParFlgTab.Value = 'Ultimo Preco'           then VbaIte := EstIteCstIte.Value;
  if EstParFlgTab.Value = 'Custo Historico'        then VbaIte := EstIteVchIte.Value;
  if EstParFlgTab.Value = 'Custo Ponderado'        then VbaIte := EstIteVreIte.Value;
  if EstParFlgTab.Value = 'Custo Referencial'      then VbaIte := EstIteVcrIte.Value;
  if EstParFlgTab.Value = 'Ultimo Custo(CIF)'      then VbaIte := EstIteVpfOut.Value;
  if EstParFlgTab.Value = 'Custo Historico (G)'    then VbaIte := EstIteVcpIte.Value;
  if EstParFlgTab.Value = 'Custo Ponderado (G)'    then VbaIte := EstIteVprIte.Value;
  if EstParFlgTab.Value = 'Media Ponderada (E)'    then VbaIte := EstIteVmeIte.Value;
  if EstParFlgTab.Value = 'Custo da Ultima Compra' then VbaIte := EstIteVpfIte.Value;

  EdVb1Ite.Text := FormatFloat('###,###,##0.0000',EstIteVb1Ite.Value);
  EdVb2Ite.Text := FormatFloat('###,###,##0.0000',EstIteVb2Ite.Value);
  EdVb3Ite.Text := FormatFloat('###,###,##0.0000',EstIteVb3Ite.Value);
  EdVb4Ite.Text := FormatFloat('###,###,##0.0000',EstIteVb4Ite.Value);
  EdVb5Ite.Text := FormatFloat('###,###,##0.0000',EstIteVb5Ite.Value);

  EdMk1Ite.Text := FormatFloat('###,###,##0.00',EstIteMk1Ite.Value);
  EdMk2Ite.Text := FormatFloat('###,###,##0.00',EstIteMk2Ite.Value);
  EdMk3Ite.Text := FormatFloat('###,###,##0.00',EstIteMk3Ite.Value);
  EdMk4Ite.Text := FormatFloat('###,###,##0.00',EstIteMk4Ite.Value);
  EdMk5Ite.Text := FormatFloat('###,###,##0.00',EstIteMk5Ite.Value);

  EdDs1Ite.Text := FormatFloat('###,###,##0.00',EstIteDs1Ite.Value);
  EdDs2Ite.Text := FormatFloat('###,###,##0.00',EstIteDs2Ite.Value);
  EdDs3Ite.Text := FormatFloat('###,###,##0.00',EstIteDs3Ite.Value);
  EdDs4Ite.Text := FormatFloat('###,###,##0.00',EstIteDs4Ite.Value);
  EdDs5Ite.Text := FormatFloat('###,###,##0.00',EstIteDs5Ite.Value);

  EdVpfIte.Text := FormatFloat('###,###,##0.0000',VbaIte);
  
  EdVcrIte.Text := FormatFloat('###,###,##0.0000',EstIteVcrIte.Value);
  EdQtdCmp.Text := FormatFloat('###,###,##0.0000',EstIteQtdCmp.Value);
  EdQtdImp.Text := FormatFloat('###,###,##0.0000',EstIteQtdImp.Value);
  EdVpfOut.Text := FormatFloat('###,###,##0.0000',EstIteVpfOut.Value);
  EdCstOut.Text := FormatFloat('###,###,##0.0000',EstIteCstOut.Value);

  if EstIteQtdCmp.Value > 0 then
     EdDulCmp.Text := ' ' + FormatDateTime('dd/mm/yyyy',EstIteDulCmp.Value)
  else
     EdDulCmp.Text := ' ';

  if EstIteQtdImp.Value > 0 then
     EdDulImp.Text := ' ' + FormatDateTime('dd/mm/yyyy',EstIteDulImp.Value)
  else
     EdDulImp.Text := ' ';

  EdQtmIte.Text := FormatFloat('###,###,##0.0000',EstIteQtmIte.Value);
  EdQtdIte.Text := FormatFloat('###,###,##0.0000',EstIteQtdIte.Value);
  EdQtdRma.Text := FormatFloat('###,###,##0.0000',EstIteQtdRma.Value);
  EdQtrIte.Text := FormatFloat('###,###,##0.0000',EstIteQtrIte.Value);
  EdQtaIte.Text := FormatFloat('###,###,##0.0000',EstIteQtaIte.Value);
  EdSldIte.Text := FormatFloat('###,###,##0.0000',EstIteAtuQte.Value);

end;

end.
