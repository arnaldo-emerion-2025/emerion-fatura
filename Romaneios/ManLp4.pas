unit ManLp4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxDBELib, dxColorDateEdit, dxColorEdit;

type
  TfmManLp4 = class(TfmPadrao)
    FatDup: TwwQuery;
    DsDup: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    EdPsqNumRes1: TdxColorEdit;
    Label28: TLabel;
    EdPsqDteFat1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteFat2: TdxColorDateEdit;
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
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    grDup: ThGrid;
    quSql: TwwQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    bImprimir: TSpeedButton;
    RDprint1: TRDprint;
    FatDupCODEMP: TIntegerField;
    FatDupDTECRE: TDateTimeField;
    FatDupNUMCRE: TFloatField;
    FatDupNUMCRP: TIntegerField;
    FatDupPRACRP: TIntegerField;
    FatDupDTVCRP: TDateTimeField;
    FatDupVLPCRP: TFloatField;
    FatDupVPPCRP: TFloatField;
    FatDupVJPCRP: TFloatField;
    FatDupVDSCRP: TFloatField;
    FatDupDULCRP: TDateTimeField;
    FatDupFLGIMP: TStringField;
    UpDup: TUpdateSQL;
    FatDupNRONFS: TIntegerField;
    FatDupTECCLI: TStringField;
    FatDupENCCLI: TStringField;
    FatDupBACCLI: TStringField;
    FatDupCICCLI: TStringField;
    FatDupCECCLI: TStringField;
    FatDupUFCCLI: TStringField;
    FatDupNRCCLI: TStringField;
    FatDupNOMCLI: TStringField;
    FatDupCODCLI: TIntegerField;
    FatDupCGCCLI: TStringField;
    FatDupINSCLI: TStringField;
    EdPsqNumRes2: TdxColorEdit;
    Label9: TLabel;
    FatDupARQDUP: TStringField;
    FatDupCODBAN: TIntegerField;
    FatDupCODUSU: TIntegerField;
    FatDupTOTCRE: TFloatField;
    FatDupQTPCRE: TIntegerField;
    FatDupRFCCLI: TStringField;
    dbRes: TdxDBGraphicEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumRes1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bImprimirClick(Sender: TObject);
    procedure grDupKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
    ArqDup,sFiltro : string;
  end;

var
  fmManLp4: TfmManLp4;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, AuxIni, ManPri,
     AuxPsq;

{$R *.DFM}

procedure TfmManLp4.FormCreate(Sender: TObject);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FatDup Where CodUsu = :CodUsu';

       with Params do begin

            Params[0].AsInteger := GUsu_Id;

       end;

       ExecSQL;

  end;

  Randomize;
  ArqDup := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
            copy(TimeToStr(Time),1,2)+
            copy(TimeToStr(Time),4,2)+
            copy(TimeToStr(Time),7,2)+
            FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
            FNumZeros(Trim( IntToStr(Random(50000)) ),5);

end;

procedure TfmManLp4.bSelecionarClick(Sender: TObject);
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
  
  if ( Trim(EdPsqNumRes1.Text) = '') and ( Trim(EdPsqNumRes2.Text) = '') then begin

     if Trim(fLimpaStr( EdPsqDteFat1.Text )) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Data Inicial.',EdPsqDteFat1);
     if Trim(fLimpaStr( EdPsqDteFat2.Text )) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Data Final.',EdPsqDteFat2);

  end;
  
  sFiltro := ' and FinCre.FlgDev = '''+ ' ' +''' and FinCre.FlgDel = '''+ ' ' +''' and FinCrp.FlpCrp = '''+ ' ' +'''';

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and FinCre.CodEmp = '''+ EdPsqCodEmp.Text +'''';
  if Trim( EdPsqCodCli.Text ) <> '' then sFiltro := sFiltro + ' and FinCre.CodCli = '''+ EdPsqCodCli.Text +'''';
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and FinCre.CodVen = '''+ EdPsqCodVen.Text +'''';

  if Trim( EdPsqNumRes1.Text ) <> '' then sFiltro := sFiltro + ' and ( FinCre.ResOrc >= '''+ EdPsqNumRes1.Text +''' or FinCre.ResFat >= '''+ EdPsqNumRes1.Text +''' )';
  if Trim( EdPsqNumRes2.Text ) <> '' then sFiltro := sFiltro + ' and ( FinCre.ResOrc <= '''+ EdPsqNumRes2.Text +''' or FinCre.ResFat <= '''+ EdPsqNumRes2.Text +''' )';

  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then sFiltro := sFiltro + ' and FinCre.DteCre >= '''+ fDateToSQL(EdPsqDteFat1.Date) +'''';
  if Trim(fLimpaStr(EdPsqDteFat2.Text)) <> '' then sFiltro := sFiltro + ' and FinCre.DteCre <= '''+ fDateToSQL(EdPsqDteFat2.Date) +'''';

  if GFlgAce = 'Sim' then begin

     if GEmpLog > 0 then
        sFiltro := sFiltro + ' and FinCrp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
     else
        sFiltro := sFiltro + ' and GerEmp.CodFil > 0';

  end;
  
  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FatDup'+
               ' Where ArqDup = :ArqDup';

       with Params do begin

            Params[0].AsString := ArqDup;

       end;

       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into FatDup(ArqDup,CodEmp,DteCre,NumCre,NumCrp,PraCrp,DtvCrp,VlpCrp,VppCrp,VjpCrp,VdsCrp,DulCrp,CodBan,NroNfs,ResFat,ResOrc,CodUsu,Flgimp) '+
               ' Select '''+ ArqDup + ''','+
               '        FinCrp.CodEmp,'+
               '        FinCrp.DteCre,'+
               '        FinCrp.NumCre,'+
               '        FinCrp.NumCrp,'+
               '        FinCrp.PraCrp,'+
               '        FinCrp.DtvCrp,'+
               '        FinCrp.VlpCrp,'+
               '        FinCrp.VppCrp,'+
               '        FinCrp.VjpCrp,'+
               '        FinCrp.VdsCrp,'+
               '        FinCrp.DulCrp,'+
               '        FinCrp.CodBan,'+
               '        FinCre.NroNfs,'+               
               '        FinCre.ResFat,'+
               '        FinCre.ResOrc,'''+ IntToStr(GUsu_Id) + ''','''+'*'+''''+
               ' From FinCrp,FinCre,FinCli,GerEmp'+
               ' Where FinCrp.CodEmp = FinCre.CodEmp'+
               '   and FinCrp.DteCre = FinCre.DteCre'+
               '   and FinCrp.NumCre = FinCre.NumCre'+
               '   and FinCrp.CodCli = FinCli.CodCli'+
               '   and FinCrp.CodEmp = GerEmp.CodEmp'+ sFiltro;
       ExecSQL;

  end;

  FatDup.Close;
  FatDup.Params[0].AsString := ArqDup;
  FatDup.Open;

  if FatDupCodEmp.Value > 0 then bImprimir.Enabled := True;

  grDup.SetFocus;

end;

procedure TfmManLp4.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmManLp4.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmManLp4.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManLp4.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLp4.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLp4.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmManLp4.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLp4.BbPsqCliClick(Sender: TObject);
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

procedure TfmManLp4.BbPsqVenClick(Sender: TObject);
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

procedure TfmManLp4.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumRes1.SetFocus;
end;

procedure TfmManLp4.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLp4.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLp4 := Nil;
end;

procedure TfmManLp4.EdPsqNumRes1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManLp4.bImprimirClick(Sender: TObject);
var
ArqTexto : TStringList;
ValorMaior,ValorMenor : real;
ImpBo1: array[1..33] of string;
ImpBo2: array[1..33] of string;
ImpBo3: array[1..33] of string;
QtdLin,Lin,Inc,Col,Reg,Qtd,i,j : integer;
CgcCli,Linha,sValor,sText,svar : string;
begin
  inherited;
  if FatDupCodEmp.Value > 0 then begin

     if fMsg('Confirma Emissão de Duplicata para os Vencimentos ?','O') then begin

        if FileExists('C:\Emerion\FATBOL.CFG') then begin

           if FileExists('C:\Emerion\FATBOL.TXT') then begin

              ValorMaior := 0;
              ValorMenor := 0;

              for i := 1 to 33 do begin

                  ImpBo3[i] := ' ';
                  ImpBo2[i] := 'Comp20';

              end;

              ImpBo2[01] := 'Comp12'; {Character Normal}
              ImpBo2[16] := 'Comp12';
              ImpBo2[17] := 'Comp12';
              ImpBo2[22] := 'Comp12';
              ImpBo2[23] := 'Comp12';
              ImpBo2[24] := 'Comp12';

              ArqTexto := TStringList.Create;
              ArqTexto.LoadFromFile('C:\Emerion\FATBOL.CFG');

              QtdLin := ArqTexto.Count - 1; {Quantidade de Linhas no Arquivo FATBOL.CFG}

              Qtd := 0; {Quantidade de Linhas Verificadas}

              while Qtd <= QtdLin do begin

                    Linha := ArqTexto[Qtd];

                    if Trim( Linha ) <> '' then begin

                       if pos('&&&',Linha) = 0 then begin

                          if pos('#',Linha) > 0 then begin

                             Reg := StrToInt(copy(Linha,pos('#',Linha)+1,5));

                             ImpBo3[Reg] := copy(Linha,pos('{',Linha)+1,2);

                             sValor := '';

                             if (Trim( copy(Linha,pos('|',Linha)+1,1) ) = 'V') or (Trim( copy(Linha,pos('|',Linha)+1,1) ) = '%') then begin

                                sValor := copy(Linha,pos('[',Linha)+1,40);

                                sValor := copy(sValor,1,pos(']',sValor)-3)+','+copy(sValor,pos(']',sValor)-2,2);

                                ImpBo1[Reg] := PreString(FormatFloat('###,##0.00',StrToFloat(sValor)),10);

                                end
                             else
                                begin

                                if Trim( copy(Linha,pos('|',Linha)+1,1) ) = 'I' then begin

                                   sValor := copy(Linha,pos('[',Linha)+1,40);

                                   sValor := copy(sValor,1,pos(']',sValor)-1);

                                   ImpBo1[Reg] := sValor;

                                   end
                                else
                                   begin

                                   ImpBo1[Reg] := copy(Linha,pos('[',Linha)+1,70);
                                   ImpBo1[Reg] := copy(ImpBo1[Reg],1,pos(']',ImpBo1[Reg])-1);

                                end;
                             end;

                             if pos('(',Linha) > 0 then begin

                                if Trim( copy(Linha,pos('(',Linha)+1,1) ) <> 'N' then begin

                                   if Trim( sValor ) <> '' then begin

                                      if copy(Linha,pos('(',Linha)+1,1) = '-' then
                                         ValorMenor := ValorMenor + StrToFloat( sValor )
                                      else
                                         ValorMaior := ValorMaior + StrToFloat( sValor );

                                   end;
                                end;
                             end;
                          end;
                       end;
                    end;

                    Qtd := Qtd + 1;

              end;

              if StrToFloat(ImpBo1[29]) > 0 then begin

                 if StrToFloat(ImpBo1[30]) > 0 then ImpBo1[31] := FloatToStr( fRound( StrToFloat(ImpBo1[29])/StrToFloat(ImpBo1[30]),2));

              end;

              if ValorMaior = StrToFloat( ImpBo1[22] ) then ValorMaior := 0;
              
              ImpBo1[007] := 'DUPL';
              ImpBo2[007] := 'Comp20';

              ImpBo1[009] := FormatDateTime('dd/mm/yyyy',Date);
              ImpBo2[009] := 'Comp20';

              ArqTexto := TStringList.Create;
              ArqTexto.LoadFromFile('C:\Emerion\FATBOL.TXT');

              qtdLin := ArqTexto.Count - 1; {Quantidade de Linhas no Arquivo FATBOL.TXT}

              rdprint1.OpcoesPreview.Preview     := False;
              rdprint1.OpcoesPreview.PreviewZoom := 100;
              rdprint1.TamanhoQteLPP             := Oito;
              rdprint1.UsaGerenciadorImpr        := True;

              rdprint1.TamanhoQteColunas  := 136;
              rdprint1.FonteTamanhoPadrao := s17cpp;

              {Programação dos Eventos: desliga eventos cabecalho/rodape}
              rdprint1.OnNewPage       := nil;
              rdprint1.OnBeforeNewPage := nil;

              rdprint1.TamanhoQteLinhas := 32;

              FatDup.First;

              rdprint1.abrir;

              while not FatDup.Eof do begin

                    if FatDupFlgImp.Value = '*' then begin

                       ImpBo1[002] := FNumZeros(FloatToStr(FatDupNumCre.Value),10);    {Nro. Documento}

                       ImpBo2[002] := 'Comp20';

                       ImpBo1[003] := FormatDateTime('dd/mm/yyyy',FatDupDtvCrp.Value); {Vencimento}
                       ImpBo2[003] := 'Comp12';

                       ImpBo1[004] := FormatDateTime('dd/mm/yyyy',FatDupDteCre.Value); {Date de Emissão}
                       ImpBo2[004] := 'Comp20';

                       ImpBo1[005] := FNumZeros(IntToStr(FatDupCodEmp.Value),03)+   {Nro. Documento}
                                      FNumZeros(FloatToStr(FatDupNumCre.Value),10)+
                                      FNumZeros(IntToStr(FatDupNumCrp.Value),03);

                       ImpBo2[005] := 'Comp20';

                       ImpBo1[006] := FNumZeros(IntToStr(FatDupNumCrp.Value),03) + '/' + FNumZeros(IntToStr(FatDupQtpCre.Value),03); {Nro. Sequencia}
                       ImpBo2[006] := 'Comp20';

                       ImpBo1[008] := ' ';        {Aceite}
                       ImpBo2[008] := 'Comp20';

                       ImpBo1[010] := ' ';        {Uso do Banco}
                       ImpBo2[010] := 'Comp20';

                       ImpBo1[011] := ' ';        {Carteira}
                       ImpBo2[011] := 'Comp20';

                       ImpBo1[012] := ' ';        {Especie de Moeda}
                       ImpBo2[012] := 'Comp20';

                       ImpBo1[013] := ' ';        {Quantidade}
                       ImpBo2[013] := 'Comp20';

                       ImpBo1[014] := ' ';        {Valor da Moeda}
                       ImpBo2[014] := 'Comp20';

                       if StrToFloat(ImpBo1[31]) > 0 then ImpBo1[32] := FloatToStr(fRound((FatDupVlpCrp.Value * StrToFloat(ImpBo1[31])) / 100,2));

                       ImpBo1[015] := PreString(FormatFloat('###,##0.00',FatDupVlpCrp.Value),10); {Valor da Parcela}
                       ImpBo2[015] := 'Comp12';

                       if (ValorMaior = 0) and (ValorMenor = 0) then begin

                          ImpBo1[016] := ' ';
                          ImpBo1[017] := ' ';
                          ImpBo1[022] := ' ';
                          ImpBo1[023] := ' ';
                          ImpBo1[024] := ' ';

                          end
                       else
                          ImpBo1[024] := PreString(FormatFloat('###,##0.00',((FatDupVlpCrp.Value + ValorMaior) - ValorMenor)),10); {Valor Cobrado}

                       ImpBo2[024] := 'Negrit';

                       for j := 18 to 21 do begin

                           if pos('#',ImpBo1[j]) > 0 then begin

                              sText := ImpBo1[j];

                              while (pos('#',sText) > 0) do begin

                                    svar := copy(sText,pos('#',sText)+1,2);

                                    if Trim( sVar ) <> '' then begin

                                       for i := 1 to 33 do begin

                                           if impBo3[i] = svar then svar := Trim( impBo1[i] );

                                       end;

                                       sText := copy(sText,1,pos('#',sText)-1)+ ' ' + sVar + ' ' + copy(sText,pos('#',sText)+3,Length(sText) - pos('#',sText));

                                    end;
                              end;

                              ImpBo1[j] := sText;

                           end;
                       end;

                       ImpBo1[025] := Trim( FatDupNomCli.Value ) + ' ' + fNumZeros(IntToStr(FatDupCodCli.Value),7);
                       ImpBo2[025] := 'Comp20';

                       CgcCli := fLimpaStr(FatDupCgcCli.Value);

                       if Length( Trim(CgcCli) ) <= 11 then
                          ImpBo1[026] := 'CPF No. '+ copy(CgcCli,1,3)+'.'+copy(CgcCli,4,3)+'.'+
                                                     copy(CgcCli,7,3)+'-'+copy(CgcCli,10,2)
                       else
                          ImpBo1[026] := 'CNPJ No. '+ copy(CgcCli,01,2)+'.'+copy(CgcCli,3,3)+'.'+
                                                      copy(CgcCli,06,3)+'/'+copy(CgcCli,9,4)+'-'+
                                                      copy(CgcCli,13,2);

                       ImpBo2[026] := 'Comp20';

                       ImpBo1[027] := Trim( FatDupTecCli.Value ) + ' ' + Trim( FatDupEncCli.Value ) + ', ' + Trim( FatDupNrcCli.Value ) + ' ' + Trim( FatDupBacCli.Value ) + ' ' + Trim( FatDupRfcCli.Value );
                       ImpBo2[027] := 'Comp20';

                       ImpBo1[028] := copy(FatDupCecCli.Value,1,5)+ '-' + copy(FatDupCecCli.Value,6,3) + ' ' + Trim( FatDupCicCli.Value) + ' ' + FatDupUfcCli.Value;
                       ImpBo2[028] := 'Comp20';

                       Lin := 0; {Linha que Esta Sendo Impressas}{Incrementos de Linhas}
                       Inc := 0; {Incrementos de Linhas}
                       Col := 0; {Posição da Coluna a ser Impressa}
                       Reg := 0; {Numero do Vetor a Ser Impresso}
                       Qtd := 0; {Quantidade de Linhas Verificadas}

                       while Qtd <= qtdLin do begin

                             Linha := ArqTexto[Qtd];

                             if Trim( Linha ) <> '' then begin

                                if pos('Sim',Linha) > 0 then begin

                                   Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3)); {Linha encontrada e de Incremento de Saltos de Linhas}
                                   Col := StrToInt(copy(Linha,pos(',',Linha)+1,3));

                                   if pos('salto',Linha) > 0 then begin

                                      Lin := Lin + Inc;

                                      rdprint1.imp(Lin,001,'');

                                      end
                                   else
                                      begin

                                      reg := StrToInt(copy(Linha,pos('#',Linha)+1,5));

                                      Lin := Lin + Inc;

                                      if Col = 0 then Col := 1;

                                      if UpperCase( ImpBo2[Reg] ) = 'COMP12' then rdprint1.impf(Lin,Col,ImpBo1[reg],[Comp12]);
                                      if UpperCase( ImpBo2[Reg] ) = 'COMP20' then rdprint1.impf(Lin,Col,ImpBo1[reg],[Comp20]);
                                      if UpperCase( ImpBo2[Reg] ) = 'COMP17' then rdprint1.impf(Lin,Col,ImpBo1[reg],[Comp17]);
                                      if UpperCase( ImpBo2[Reg] ) = 'NEGRIT' then rdprint1.impf(Lin,Col,ImpBo1[reg],[NORMAL, NEGRITO]);
                                      
                                   end;
                                end;
                             end;

                             Qtd := Qtd + 1;

                       end;

                       FatDup.Next;

                       if not FatDup.Eof then rdprint1.Novapagina;

                       end
                    else
                       FatDup.Next;

              end;

              rdprint1.fechar;

              rdprint1.TamanhoQteLinhas := 66;

              end
           else
              fmsgErro('Arquivo de Configuração da Duplicata FATBOL.TXT não Encontrado. Consulte o Administrador do Sistema para Maiores Informações',Nil);

           end
        else
           fmsgErro('Arquivo de Configuração da Duplicata FATBOL.CFG não Encontrado. Consulte o Administrador do Sistema para Maiores Informações',Nil);
     end;
  end;
end;

procedure TfmManLp4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 115 then begin

     if FatDupCodEmp.Value > 0 then begin

        if bImprimir.Enabled then bImprimir.OnClick(Sender);

     end;
  end;
end;

procedure TfmManLp4.grDupKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if FatDupCodEmp.Value > 0 then begin

     if key = 32 then begin

        FatDup.Edit;

        if FatDupFlgImp.Value = '' then
           FatDupFlgImp.Value := '*'
        else
           FatDupFlgImp.Clear;

        with FatDup do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if FatDup.State <> dsBrowse then FatDup.CancelUpdates;

                 grDup.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        grDup.SetFocus;

     end;
  end;
end;

procedure TfmManLp4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FatDup Where ArqDup = '''+ ArqDup +'''';
       ExecSQL;

  end;
  
  Action := CaFree;

end;

end.

