unit ManLp2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxDBELib, dxColorPickEdit,
  dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit;

type
  TfmManLp2 = class(TfmPadrao)
    FatOrc: TwwQuery;
    FatOr2: TwwQuery;
    DsOr2: TwwDataSource;
    DsOrc: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    EdPsqNumRes: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label25: TLabel;
    EdPsqTotRes1: TdxColorCurrencyEdit;
    Label19: TLabel;
    EdPsqTotRes2: TdxColorCurrencyEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqCli: TSpeedButton;
    BbPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqNomEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    rgOrdem: TRadioGroup;
    grOrc: ThGrid;
    quSql: TwwQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    bImprimir: TBitBtn;
    RDprint1: TRDprint;
    FatOrcNUMRES: TIntegerField;
    FatOrcDTEORC: TDateTimeField;
    FatOrcNOMCLI: TStringField;
    FatOrcCODVEN: TIntegerField;
    FatOrcCODPFA: TStringField;
    FatOrcTOTGER: TFloatField;
    dbRes: TdxDBGraphicEdit;
    pnApeVen: TPanel;
    pnHreOrc: TPanel;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    Bevel3: TBevel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grOr3: ThGrid;
    FatOrcCODEMP: TIntegerField;
    FatOrcDTERES: TDateTimeField;
    FatOrcSEQLIB: TIntegerField;
    FatOrcSEQORC: TIntegerField;
    FatOrcHREORC: TStringField;
    FatOrcFLGTMO: TStringField;
    FatOrcCODTMO: TIntegerField;
    FatOrcTIPTMO: TStringField;
    FatOrcDTCTMO: TDateTimeField;
    FatOrcVALTMO: TFloatField;
    FatOrcFLGAVI: TStringField;
    FatOrcSEQITE: TIntegerField;
    FatOrcQTIORC: TIntegerField;
    FatOrcQTPORC: TIntegerField;
    FatOrcSQPORC: TIntegerField;
    FatOrcQTDVOL: TIntegerField;
    FatOrcTOTORC: TFloatField;
    FatOrcTOTFRT: TFloatField;
    FatOrcTOTSEG: TFloatField;
    FatOrcTOTDES: TFloatField;
    FatOrcLANORC: TFloatField;
    FatOrcSLDORC: TFloatField;
    FatOrcCODUSU: TIntegerField;
    FatOrcHRECOR: TStringField;
    FatOrcDTECOR: TDateTimeField;
    FatOrcUSUCOR: TIntegerField;
    FatOrcOBSCOR: TMemoField;
    FatOrcOBSORC: TMemoField;
    FatOrcTRASDA: TIntegerField;
    FatOrcDTESDA: TDateTimeField;
    FatOrcHRESDA: TStringField;
    FatOrcUSUSDA: TIntegerField;
    FatOrcOBSSDA: TStringField;
    FatOrcCODVEI: TIntegerField;
    FatOrcDTEENT: TDateTimeField;
    FatOrcHREENT: TStringField;
    FatOrcUSUENT: TIntegerField;
    FatOrcOBSENT: TStringField;
    FatOrcFLGATU: TStringField;
    FatOrcFLGIMP: TStringField;
    FatOrcDTEATU: TDateTimeField;
    FatOrcHREATU: TStringField;
    FatOrcUSUATU: TIntegerField;
    FatOrcSITORC: TStringField;
    FatOrcNROCOL: TStringField;
    FatOrcFLGIPI: TStringField;
    FatOrcCODCLI: TIntegerField;
    FatOrcTIPPFA: TStringField;
    FatOrcMODPFA: TStringField;
    FatOrcUFEORC: TStringField;
    FatOrcCEPCLI: TStringField;
    FatOrcTENCLI: TStringField;
    FatOrcENDCLI: TStringField;
    FatOrcREFCLI: TStringField;
    FatOrcNUMCLI: TStringField;
    FatOrcBAICLI: TStringField;
    FatOrcCIDCLI: TStringField;
    FatOrcUFECLI: TStringField;
    FatOrcINECLI: TStringField;
    FatOrcCGECLI: TStringField;
    FatOrcCODTRA: TIntegerField;
    FatOrcAPEVEN: TStringField;
    FatOrcPRFVEN: TStringField;
    FatOrcFONVEN: TStringField;
    FatOrcAPECLI: TStringField;
    FatOr2CODEMP: TIntegerField;
    FatOr2DTERES: TDateTimeField;
    FatOr2NUMRES: TIntegerField;
    FatOr2SEQLIB: TIntegerField;
    FatOr2SEQORC: TIntegerField;
    FatOr2CODCLP: TStringField;
    FatOr2CODGRU: TStringField;
    FatOr2CODSUB: TStringField;
    FatOr2CODPRO: TStringField;
    FatOr2DESOR2: TStringField;
    FatOr2QTPOR2: TFloatField;
    FatOr2VLUOR2: TFloatField;
    FatOr2IPIOR2: TFloatField;
    FatOr2ICMOR2: TFloatField;
    FatOr2TOTOR2: TFloatField;
    FatOr2CODITE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqNumResExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure DsOrcDataChange(Sender: TObject; Field: TField);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
    procedure RDprint1BeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FatOr2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    {Private declarations}
  public
    {Public declarations}
    DteRes : TDateTime;
    CodEmp,NumRes,SeqLib : integer;
    sBase,sFiltro,sOrdem : string;
  end;

var
  Linha : integer;
  NroPag : integer;
  fmManLp2: TfmManLp2;
  EndFat,EndCob,EndEnt,FonVen,CgcCli,InsCli : string;
  BafCli,CifCli,UffCli,CefCli,BacCli,CicCli,UfcCli,CecCli : string;  

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, AuxIni,
     ManPri, AuxPsq;

{$R *.DFM}

procedure TfmManLp2.FormCreate(Sender: TObject);
begin
  inherited;

  EdPsqDteRes1.Date := Date;
  EdPsqDteRes2.Date := Date;

  FatOrc.Close;
  FatOrc.Params[0].AsDateTime := EdPsqDteRes1.Date;
  FatOrc.Open;

  sBase := ' Select FatOrc.*,'+
           '        FinVen.ApeVen,'+
           '        FinVen.PrfVen,'+
           '        FinVen.FonVen,'+
           '        FinCli.ApeCli,'+
           '        FinCli.NomCli'+
           ' From FatOrc LEFT JOIN FinCli ON (FatOrc.CodCli = FinCli.CodCli)'+
           '             LEFT JOIN FinVen ON (FatOrc.CodVen = FinVen.CodVen)';

end;

procedure TfmManLp2.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

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

  sFiltro := ' Where FatOrc.SitOrc = '''+ 'Faturado' +'''';

  case rgOrdem.Itemindex of
       0: sOrdem := ' Order by FatOrc.CodCli,FatOrc.NumRes';
       1: sOrdem := ' Order by FatOrc.CodVen,FatOrc.NumRes';
       2: sOrdem := ' Order by FatOrc.DteOrc,FatOrc.NumRes';
       3: sOrdem := ' Order by FatOrc.NumRes';
  end;

  if Trim( EdPsqNumRes.Text ) <> '' then sFiltro := sFiltro + ' and FatOrc.NumRes = '+ QuotedStr(EdPsqNumRes.Text);
  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and FatOrc.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodCli.Text ) <> '' then sFiltro := sFiltro + ' and FatOrc.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and FatOrc.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and FatOrc.DteOrc >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and FatOrc.DteOrc <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  if EdPsqTotRes1.Value > 0 then sFiltro := sFiltro + ' and FatOrc.TotGer >= '+ QuotedStr(fConvertValor(EdPsqTotRes1.Text));
  if EdPsqTotRes2.Value > 0 then sFiltro := sFiltro + ' and FatOrc.TotGer <= '+ QuotedStr(fConvertValor(EdPsqTotRes2.Text));

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and FatOrc.SitOrc = '+ QuotedStr('Transferencias');
  
  with FatOrc,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grOrc.SetFocus;

end;

procedure TfmManLp2.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

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
     
     with quSql,SQL do begin

          Close;
          Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('NomEmp').AsString ) <> '' then
             EdPsqNomEmp.Text := FieldByName('NomEmp').AsString
          else
             begin

             EdPsqNomEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqNomEmp.Text := '';
end;

procedure TfmManLp2.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomCli From FinCli Where CodCli = '''+EdPsqCodCli.Text+'''';
          Open;

          EdPsqNomCli.Text := quSql.FieldByName('NomCli').AsString;
     end;

     end
  else
     EdPsqNomCli.Text := '';
end;

procedure TfmManLp2.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManLp2.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmManLp2.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxIni.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxPsq.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxPsq.CodCli);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManLp2.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomVen From FinVen Where CodVen = '''+EdPsqCodVen.Text+'''';
          Open;

          EdPsqNomVen.Text := quSql.FieldByName('NomVen').AsString;
     end;

     end
  else
     EdPsqNomVen.Text := '';
end;

procedure TfmManLp2.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqNomVen.Text := fmAuxIni.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           EdPsqNomVen.Text := fmAuxPsq.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManLp2.BbPsqCliClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'C';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCli > 0 then begin

        EdPsqNomCli.Text := fmAuxIni.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManLp2.BbPsqVenClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdPsqNomVen.Text := fmAuxIni.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManLp2.EdPsqNumResExit(Sender: TObject);
begin
  if Trim( EdPsqNumRes.Text ) <> '' then begin

     EdPsqCodEmp.Clear;
     EdPsqNomEmp.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqNomVen.Clear;

     EdPsqDteRes1.Clear;
     EdPsqDteRes2.Clear;

     EdPsqTotRes1.Value := 0;
     EdPsqTotRes2.Value := 0;

  end;
end;

procedure TfmManLp2.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumRes.SetFocus;
end;

procedure TfmManLp2.DsOrcDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnApeVen.Caption := ' ' + FatOrcApeVen.Value;
  pnHreOrc.Caption := ' ' + FatOrcHreOrc.Value;
end;

procedure TfmManLp2.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLp2.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLp2 := Nil;
end;

procedure TfmManLp2.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManLp2.bImprimirClick(Sender: TObject);
var
  ObsRes : string;
begin
  inherited;
  if FatOrcCodEmp.Value > 0 then begin

     if fMsg('Confirma Impressão do Romaneio ?','S') then begin

        FonVen := '('+ FatOrcPrfVen.Value+') ' + FatOrcFonVen.Value;

        with quSQL,SQL do begin

             Close;
             Text := ' Select QtdRom From FatPar';
             Open;

             if FieldbyName('QtdRom').AsInteger > 0 then
                rdprint1.NumerodeCopias := FieldbyName('QtdRom').AsInteger
             else
                rdprint1.NumerodeCopias := 1;
                
        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinCli.CgcCli,'+
                     '        FinCli.InsCli,'+
                     '        FinCli.CefCli,'+
                     '        FinCli.TefCli,'+
                     '        FinCli.EnfCli,'+
                     '        FinCli.NrfCli,'+
                     '        FinCli.RffCli,'+
                     '        FinCli.CifCli,'+
                     '        FinCli.BafCli,'+
                     '        FinCli.UffCli,'+
                     '        FinCli.CecCli,'+
                     '        FinCli.TecCli,'+
                     '        FinCli.EncCli,'+
                     '        FinCli.NrcCli,'+
                     '        FinCli.RfcCli,'+
                     '        FinCli.CicCli,'+
                     '        FinCli.BacCli,'+
                     '        FinCli.UfcCli'+
                     ' From FinCli'+
                     ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(FatOrcCodCli.Value));
             Open;

             CgcCli := FieldbyName('CgcCli').AsString;
             InsCli := FieldbyName('InsCli').AsString;
             CefCli := FieldbyName('CefCli').AsString;
             BafCli := FieldbyName('BafCli').AsString;
             CifCli := FieldbyName('CifCli').AsString;
             UffCli := FieldbyName('UffCli').AsString;
             CecCli := FieldbyName('CecCli').AsString;
             BacCli := FieldbyName('BacCli').AsString;
             CicCli := FieldbyName('CicCli').AsString;
             UfcCli := FieldbyName('UfcCli').AsString;

             if Trim( FieldbyName('TefCli').AsString ) <> '' then
                EndFat := Trim( FieldbyName('TefCli').AsString )+ ' ' +Trim( FieldbyName('EnfCli').AsString )
             else
                EndFat := Trim( FieldbyName('EnfCli').AsString );

             if Trim( FieldbyName('NrfCli').AsString ) <> '' then
                EndFat := EndFat+ ', ' +Trim( FieldbyName('NrfCli').AsString );

             if Trim( FieldbyName('TecCli').AsString ) <> '' then   
                EndCob := Trim( FieldbyName('TecCli').AsString )+ ' ' +Trim( FieldbyName('EncCli').AsString )
             else
                EndCob := Trim( FieldbyName('EncCli').AsString );

             if Trim( FieldbyName('NrcCli').AsString ) <> '' then
                EndCob := EndCob+ ', ' +Trim( FieldbyName('NrcCli').AsString );
        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select PedRes.ObsRes'+
                     ' From PedRes'+
                     ' Where PedRes.CodEmp = '+ QuotedStr(IntToStr(FatOrcCodEmp.Value))+
                     '   and PedRes.DteRes = '+ QuotedStr(fDateToSQL(FatOrcDteRes.Value))+
                     '   and PedRes.NumRes = '+ QuotedStr(IntToStr(FatOrcNumRes.Value));
             Open;

             ObsRes := FieldbyName('ObsRes').AsString;
             
        end;
        
        EndEnt := Trim( FatOrcTenCli.Value )+' '+Trim( FatOrcEndCli.Value )+', '+Trim( FatOrcNumCli.Value ) + ' - ' + Trim( FatOrcBaiCli.Value ) + ' - ' + Trim( FatOrcCidCli.Value ) + ' ' + Trim( FatOrcUfeCli.Value );

        with quSQL,SQL do begin

             Close;
             Text := ' Select FatOr2.CodGru,'+
                     '        FatOr2.CodSub,'+
                     '        FatOr2.CodPro,'+
                     '        FatOr2.DesOr2,'+
                     '        FatOr2.QtpOr2,'+
                     '        FatOr2.VluOr2,'+
                     '        FatOr2.TotOr2'+                     
                     ' From FatOr2'+
                     ' Where FatOr2.CodEmp = :CodEmp'+
                     '   and FatOr2.DteRes = :DteRes'+
                     '   and FatOr2.NumRes = :NumRes'+
                     '   and FatOr2.SeqLib = :SeqLib'+
                     '   and FatOr2.SeqOrc = :SeqOrc'+
                     ' Order by FatOr2.NroOr2';

             with Params do begin

                  Params[0].AsInteger  := FatOrcCodEmp.Value;
                  Params[1].AsDateTime := FatOrcDteRes.Value;
                  Params[2].AsInteger  := FatOrcNumRes.Value;
                  Params[3].AsInteger  := FatOrcSeqLib.Value;
                  Params[4].AsInteger  := FatOrcSeqOrc.Value;

             end;

             Open;

        end;

        rdprint1.OpcoesPreview.Preview     := False;
        rdprint1.OpcoesPreview.PreviewZoom := 100;
        rdprint1.TamanhoQteLPP             := seis;
        rdprint1.UsaGerenciadorImpr        := True;

        rdprint1.TamanhoQteColunas  := 136;
        rdprint1.FonteTamanhoPadrao := s17cpp;

        NroPag := 0;
        
        {Inicio...}
        with rdprint1 do begin

             abrir; {inicializa o arquivo de impressao...}

             if setup then begin {abre tela para escolha da impressora e modelo...}

                quSql.First;

                while not quSQL.EOF do begin

                      impf(Linha,001,quSql.FieldbyName('CodGru').AsString+'.'+quSql.FieldbyName('CodSub').AsString+'.'+quSql.FieldbyName('CodPro').AsString,[NORMAL]);
                      impf(Linha,026,copy(Trim(quSql.FieldbyName('DesOr2').AsString),1,40),[NORMAL]);
                      impf(Linha,091,PreString(FormatFloat('###,###,##0',quSql.FieldbyName('QtpOr2').AsFloat),07),[NORMAL]);
                      impf(Linha,104,PreString(FormatFloat('###,##0.0000',quSql.FieldbyName('VluOr2').AsFloat),10),[NORMAL]);
                      impf(Linha,122,PreString(FormatFloat('###,##0.00',quSql.FieldbyName('TotOr2').AsFloat),09),[NORMAL]);

                      Inc(Linha);

                      if linha > 61 then rdprint1.novapagina;

                      quSQL.Next;

                end;

                impf(Linha,121,fReplicate('-',10),[NORMAL]);

                Inc(Linha);

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,077,'Total Produtos',[NORMAL]);
                impf(Linha,114,PreString(FormatFloat('###,###,##0.00',FatOrcTotOrc.Value),14),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,077,'Total Frete',[NORMAL]);
                impf(Linha,114,PreString(FormatFloat('###,###,##0.00',FatOrcTotFrt.Value),14),[NORMAL]);

                Inc(Linha);

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,077,'Outras Despesas',[NORMAL]);
                impf(Linha,114,PreString(FormatFloat('###,###,##0.00',fRound(FatOrcTotDes.Value + FatOrcTotSeg.Value,2)),14),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,121,fReplicate('-',10),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,077,'Total Romaneio',[NORMAL]);
                impf(Linha,114,PreString(FormatFloat('###,###,##0.00',FatOrcTotGer.Value),14),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,077,'Qtde Volumes',[NORMAL]);
                impf(Linha,114,PreString(FormatFloat('####0',FatOrcQtdVol.Value),14),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,001,fReplicate('-',80),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,001,'Entrega     : '+EndEnt,[NORMAL, NEGRITO]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                if Trim(CgcCli) <> '' then begin

                   if Length( Trim(CgcCli) ) <= 11 then begin

                      CgcCli := copy(CgcCli,1,3)+'.'+copy(CgcCli,4,3)+'.'+copy(CgcCli,7,3)+'-'+copy(CgcCli,10,2);

                      impf(Linha,001,'CPF         : '+CgcCli,[NORMAL, NEGRITO]);
                      impf(Linha,057,'RG  : '+InsCli,[NORMAL, NEGRITO]);

                      end
                   else
                      begin

                      CgcCli := copy(CgcCli,01,2)+'.'+copy(CgcCli,3,3)+'.'+copy(CgcCli,06,3)+'/'+copy(CgcCli,9,4)+'-'+copy(CgcCli,13,2);

                      impf(Linha,001,'CNPJ        : '+CgcCli,[NORMAL, NEGRITO]);
                      impf(Linha,057,'I.E.: '+InsCli,[NORMAL, NEGRITO]);

                   end;

                   end
                else
                   begin

                   impf(Linha,001,'CNPJ        : ',[NORMAL, NEGRITO]);
                   impf(Linha,057,'I.E.: ',[NORMAL, NEGRITO]);

                end;

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,001,fReplicate('-',80),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,001,'Vencimentos : ',[NORMAL, NEGRITO]);

                with quSQL,SQL do begin

                     Close;
                     Text := ' Select * From FatOr3'+
                             ' Where FatOr3.CodEmp = :CodEmp'+
                             '   and FatOr3.DteRes = :DteRes'+
                             '   and FatOr3.NumRes = :NumRes'+
                             '   and FatOr3.SeqLib = :SeqLib'+
                             '   and FatOr3.SeqOrc = :SeqOrc'+
                             ' Order by FatOr3.NroOr3';

                     with Params do begin

                          Params[0].AsInteger  := FatOrcCodEmp.Value;
                          Params[1].AsDateTime := FatOrcDteRes.Value;
                          Params[2].AsInteger  := FatOrcNumRes.Value;
                          Params[3].AsInteger  := FatOrcSeqLib.Value;
                          Params[4].AsInteger  := FatOrcSeqOrc.Value;

                     end;

                     Open;

                end;

                while not quSQL.Eof do begin

                      impf(Linha,025,quSql.FieldbyName('DtvOr3').AsString,[NORMAL]);
                      impf(Linha,046,PreString(IntToStr(quSql.FieldbyName('PraOr3').AsInteger),5),[NORMAL]);
                      impf(Linha,060,PreString(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpOr3').AsFloat),14),[NORMAL]);
                      impf(Linha,085,PreString(IntToStr(quSql.FieldbyName('CodBan').AsInteger),5),[NORMAL]);

                      Inc(Linha);

                      if linha > 61 then rdprint1.novapagina;

                      quSql.Next;

                end;

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,001,fReplicate('-',80),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,001,'Observacoes : ',[NORMAL, NEGRITO]);
                impf(Linha,025,copy(ObsRes,001,040),[NORMAL]);

                if Trim( copy(ObsRes,041,040) ) <> '' then begin

                   Inc(Linha);

                   if linha > 61 then rdprint1.novapagina;

                   impf(Linha,025,copy(ObsRes,041,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,081,040) ) <> '' then begin

                   Inc(Linha);

                   if linha > 61 then rdprint1.novapagina;

                   impf(Linha,025,copy(ObsRes,081,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,121,040) ) <> '' then begin

                   Inc(Linha);

                   if linha > 61 then rdprint1.novapagina;

                   impf(Linha,025,copy(ObsRes,121,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,161,040) ) <> '' then begin

                   Inc(Linha);

                   if linha > 61 then rdprint1.novapagina;

                   impf(Linha,025,copy(ObsRes,161,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,201,040) ) <> '' then begin

                   Inc(Linha);

                   if linha > 61 then rdprint1.novapagina;

                   impf(Linha,025,copy(ObsRes,201,040),[NORMAL]);

                end;
             end;

             fechar;  {Finaliza e inicia impressao ou preview}

        end;
     end;
  end;
end;

procedure TfmManLp2.RDprint1NewPage(Sender: TObject; Pagina: Integer);
begin
  inherited;

  RdPrint1.impf(01,001,'Romaneio    : '+preString(fNumZeros(IntToStr(FatOrcNumRes.Value),7),7),[NORMAL, NEGRITO]);
  RdPrint1.impf(01,109,'Data : '+DateToStr(FatOrcDteOrc.Value),[NORMAL, NEGRITO]);
  RdPrint1.impf(02,001,'Vendedor    : '+preString(fNumZeros(IntToStr(FatOrcCodVen.Value),7),7)+' - '+copy(Trim(FatOrcApeVen.Value),1,21),[NORMAL, NEGRITO]);
  RdPrint1.impf(02,083,'Fone : '+FonVen,[NORMAL, NEGRITO]);

  RdPrint1.impf(03,001,'Cliente     : '+preString(fNumZeros(IntToStr(FatOrcCodCli.Value),7),7)+' - '+copy(Trim(FatOrcNomCli.Value),1,40)+' / '+copy(Trim(FatOrcApeCli.Value),1,20),[NORMAL, NEGRITO]);
  RdPrint1.impf(04,001,'Endereco    : '+EndFat,[NORMAL, NEGRITO]);
  RdPrint1.impf(04,088,'Bairro : '+copy(Trim(BafCli),1,20),[NORMAL, NEGRITO]);
  RdPrint1.impf(05,001,'Cidade      : '+copy(Trim(CifCli),1,36),[NORMAL, NEGRITO]);
  RdPrint1.impf(05,088,'Estado : '+UffCli,[NORMAL, NEGRITO]);
  RdPrint1.impf(05,112,'Cep : '+copy(CefCli,1,5)+'-'+copy(CefCli,6,3),[NORMAL, NEGRITO]);

  RdPrint1.impf(06,001,'Cobranca    : '+EndCob,[NORMAL, NEGRITO]);
  RdPrint1.impf(06,088,'Bairro : '+copy(Trim(BacCli),1,20),[NORMAL, NEGRITO]);
  RdPrint1.impf(07,001,'Cidade      : '+copy(Trim(CicCli),1,36),[NORMAL, NEGRITO]);
  RdPrint1.impf(07,088,'Estado : '+UfcCli,[NORMAL, NEGRITO]);
  RdPrint1.impf(07,112,'Cep : '+copy(CecCli,1,5)+'-'+copy(CecCli,6,3),[NORMAL, NEGRITO]);

  RdPrint1.impf(08,001,fReplicate('-',80),[NORMAL]);
  RdPrint1.impf(09,001,'N.Codigo',[NORMAL]);
  RdPrint1.impf(09,026,'Descricao',[NORMAL]);
  RdPrint1.impf(09,096,'Qtde',[NORMAL]);
  RdPrint1.impf(09,112,'Preco',[NORMAL]);
  RdPrint1.impf(09,129,'Total',[NORMAL]);
  RdPrint1.impf(10,001,fReplicate('-',80),[NORMAL]);

  Linha := 11;

end;

procedure TfmManLp2.RDprint1BeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  inherited;

  NroPag := NroPag + 1;

  rdprint1.impf(64,114,'Pagina No. '+fNumZeros(IntToStr(NroPag),3),[NORMAL]);

end;

procedure TfmManLp2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManLp2.FatOr2CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if FatOr2CodEmp.Value > 0 then
     Text := FatOr2CodGru.Value+ '.' +
             FatOr2CodSub.Value+ '.' +
             FatOr2CodPro.Value
  else
     Text := ' ';
end;

end.

