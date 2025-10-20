unit ManLp3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxColorPickEdit, dxColorCurrencyEdit,
  dxColorEdit, dxColorDateEdit;

type
  TfmManLp3 = class(TfmPadrao)
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
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    grOrc: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    quSql: TwwQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    pnHreOrc: TPanel;
    bCancelar: TBitBtn;
    pnApeVen: TPanel;
    UpOrc: TUpdateSQL;
    FatOr2: TwwQuery;
    FatOrc: TwwQuery;
    FatOrcNUMRES: TIntegerField;
    FatOrcSEQORC: TIntegerField;
    FatOrcDTEORC: TDateTimeField;
    FatOrcCODVEN: TIntegerField;
    FatOrcCODPFA: TStringField;
    FatOrcNOMCLI: TStringField;
    FatOrcTOTGER: TFloatField;
    DsOrc: TwwDataSource;
    DsOr2: TwwDataSource;
    FatOr2DESOR2: TStringField;
    FatOr2QTPOR2: TFloatField;
    FatOr2VLUOR2: TFloatField;
    FatOr2ICMOR2: TFloatField;
    FatOr2IPIOR2: TFloatField;
    FatOr2TOTOR2: TFloatField;
    grOr2: ThGrid;
    dbRes: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    FatOrcCODEMP: TIntegerField;
    FatOrcDTERES: TDateTimeField;
    FatOrcSEQLIB: TIntegerField;
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
    FatOr2CODEMP: TIntegerField;
    FatOr2DTERES: TDateTimeField;
    FatOr2NUMRES: TIntegerField;
    FatOr2SEQLIB: TIntegerField;
    FatOr2SEQORC: TIntegerField;
    FatOr2CODCLP: TStringField;
    FatOr2CODGRU: TStringField;
    FatOr2CODSUB: TStringField;
    FatOr2CODPRO: TStringField;
    FatOr2CODITE: TStringField;
    FatOrcATUEST: TStringField;
    FatOrcINTFIN: TStringField;
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
    procedure bCancelarClick(Sender: TObject);
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
  fmManLp3: TfmManLp3;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, AuxIni, 
     ManPri, AuxPsq, ManCpe;

{$R *.DFM}

procedure TfmManLp3.FormCreate(Sender: TObject);
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
           '        FinCli.NomCli'+
           ' From FatOrc LEFT JOIN FinCli ON (FatOrc.CodCli = FinCli.CodCli)'+
           '             LEFT JOIN FinVen ON (FatOrc.CodVen = FinVen.CodVen)';

end;

procedure TfmManLp3.bSelecionarClick(Sender: TObject);
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

procedure TfmManLp3.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmManLp3.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmManLp3.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManLp3.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLp3.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLp3.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmManLp3.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLp3.BbPsqCliClick(Sender: TObject);
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

procedure TfmManLp3.BbPsqVenClick(Sender: TObject);
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

procedure TfmManLp3.EdPsqNumResExit(Sender: TObject);
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

procedure TfmManLp3.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumRes.SetFocus;
end;

procedure TfmManLp3.DsOrcDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnApeVen.Caption := ' ' + FatOrcApeVen.Value;
  pnHreOrc.Caption := ' ' + FatOrcHreOrc.Value;
end;

procedure TfmManLp3.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLp3.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLp3 := Nil;
end;

procedure TfmManLp3.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManLp3.bCancelarClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if FatOrcCodEmp.Value > 0 then begin

        try

           fmManCpe := TfmManCpe.Create(Self);
           fmManCpe.ShowModal;

        finally

           FreeAndNil(fmManCpe);

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManLp3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManLp3.FatOr2CODITEGetText(Sender: TField; var Text: String;
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

