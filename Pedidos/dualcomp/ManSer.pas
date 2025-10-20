unit ManSer;

interface

uses
  Fpadrao, Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Db, DBTables, Wwquery, ExtCtrls,
  FlEdit, Grids, Wwdbigrd, Wwdbgrid, hGrid, Wwdatsrc, Mask, hEdits, wwdbedit,
  Wwdotdot, Wwdbcomb, DBCtrls, AlignEdit, QuickRpt, ppDB, ppDBPipe,
  ppStrtch, ppMemo, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, wwdbdatetimepicker,
  ppModule, daDatMod, dxCntner, dxEditor, dxEdLib, dxExEdtr, dxDBELib,
  dxfProgressBar, dxColorDateEdit, dxColorEdit;

type
  TfmManSer = class(TfmPadrao)
    FinCli: TwwQuery;
    DsCli: TwwDataSource;
    bEnviar: TBitBtn;
    quSql: TwwQuery;
    Label2: TLabel;
    bPesquisa: TBitBtn;
    PaintBox: TPaintBox;
    EdPsqCodEmp: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    Label1: TLabel;
    Label5: TLabel;
    EdPsqDteFat1: TdxColorDateEdit;
    EdPsqDteFat2: TdxColorDateEdit;
    Label3: TLabel;
    Bevel2: TBevel;
    Label4: TLabel;
    Bevel1: TBevel;
    dbRes: TdxDBGraphicEdit;
    grCli: ThGrid;
    FinCliCODCLI: TIntegerField;
    FinCliNOMCLI: TStringField;
    FinCliDCACLI: TDateTimeField;
    FinCliTOTACM: TFloatField;
    FinCliCGCCPF: TStringField;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    ProgressBar: TdxfProgressBar;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SaveDialog: TSaveDialog;
    FinCliCGCCLI: TStringField;
    FinCliDTEACM: TDateTimeField;
    FinCliFLBCLI: TStringField;
    Label9: TLabel;
    Label10: TLabel;
    procedure BbCancClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bEnviarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase,sFiltro : string;
  end;

var
  fmManSer: TfmManSer;

implementation

uses dxDemoUtils, ShellAPI, BbGeral, BbMensag, Bbfuncao, PsqEmp, ManGDB,
     ManPri;

{$R *.DFM}

procedure TfmManSer.BbCancClick(Sender: TObject);
begin
  close;
end;

procedure TfmManSer.FormShow(Sender: TObject);
begin

  if GEmp_Id > 0 then begin

     EdPsqCodEmp.Text := IntToStr( GEmp_Id );

     EdPsqApeEmp.Text := GRazEmp;
     
  end;

  EdPsqCodEmp.SetFocus;

end;

procedure TfmManSer.EdPsqCodEmpExit(Sender: TObject);
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
          Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('ApeEmp').AsString ) <> '' then
             EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
          else
             begin

             EdPsqApeEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmManSer.bPsqEmpClick(Sender: TObject);
begin

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManSer.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManSer.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSer.FormCreate(Sender: TObject);
begin
  sBase := ' Select CodCli,'+
           '        NomCli,'+
           '        DcaCli,'+
           '        FlbCli,'+           
           '        CgcCli,'+
           '        TotAcm,'+
           '        DteAcm,'+
           '        FormatCgcCpf(CgcCli) as CgcCpf From FinCli';
end;

procedure TfmManSer.bPesquisaClick(Sender: TObject);
begin

  if Trim( EdPsqCodEmp.Text ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPsqCodEmp);

  if Trim(fLimpaStr(EdPsqDteFat1.Text)) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPsqDteFat1);
  if Trim(fLimpaStr(EdPsqDteFat2.Text)) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPsqDteFat2);

  sFiltro := ' Where FinCli.FlgInf = '''+ 'Sim' +'''';

  with FinCli,SQL do begin

       Close;
       Text := sBase + sFiltro + ' Order by CodCli';
       Open;

  end;

  if FinCliCodCli.Value > 0 then begin

     bEnviar.Enabled := True;

     bEnviar.SetFocus;

     end
  else
     begin

     bEnviar.Enabled := False;

     EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmManSer.bEnviarClick(Sender: TObject);
var
ArqTxt        : TextFile;
SeqReg        : integer;
QtdReg_1      : integer;
QtdReg_2      : integer;
QtdReg_3      : integer;
QtdReg_4      : integer;
QtdReg_7      : integer;
NomArq        : string;
Literal       : string;
CnpjConv      : string;
CnpjCli       : string;
DgCli         : string;
FilCli        : string;
DtInicio      : string;
DtFim         : string;
NumCre        : string;
DtvCrp        : string;
DpgPgc        : string;
VlpCrp        : string;
DCadCli       : string;
TipoCliente   : string;
AnoMesRef     : string;
UltCompra     : string;
DultCompra    : string;
MaiorCompra   : string;
DMaiorCompra  : string;
MaiorAcumulo  : string;
DMaiorAcumulo : string;
QtdAvista     : string;
TotAvista     : string;
DateInicial   : TDateTime;
DateFinal     : TDateTime;
TotVencidos   : string;
TotAVencer    : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if FinCliCodCli.Value > 0 then begin

        if fMsg('Confirma Envio das Informações','S') then begin

           AnoMesRef := copy(FormatDateTime('dd/mm/yyyy',EdPsqDteFat1.Date),7,4) + copy(FormatDateTime('dd/mm/yyyy',EdPsqDteFat1.Date),4,2);

           NomArq := 'SER'+ copy(FormatDateTime('dd/mm/yyyy',EdPsqDteFat1.Date),4,2) + copy(FormatDateTime('dd/mm/yyyy',EdPsqDteFat1.Date),9,2)+'.TXT';

           DateInicial := EdPsqDteFat1.Date - 360;
           DateFinal   := EdPsqDteFat2.Date;

           SaveDialog.FileName := NomArq;

           if SaveDialog.Execute then begin

              with quSQL,SQL do begin

                   Close;
                   Text :=  ' Select Count(*) as QtdReg From FinCli '+ sFiltro;
                   Open;

              end;

              SeqReg := 0;

              QtdReg_1 := 0;
              QtdReg_2 := 0;
              QtdReg_3 := 0;
              QtdReg_4 := 0;
              QtdReg_7 := 0;

              ProgressBar.Max      := quSQL.FieldbyName('QtdReg').AsInteger;
              ProgressBar.Min      := 0;
              ProgressBar.Position := 0;

              AssignFile(ArqTxt,SaveDialog.FileName);

              Rewrite(ArqTxt);

              // Registro - Header do Arquivo

              Literal := 'CONV INF COMERCIAL  ';

              CnpjConv := copy(fLimpaStr(GCgcEmp),1,8);

              DtInicio := copy(FormatDateTime('dd/mm/yyyy',EdPsqDteFat1.Date),7,4) + copy(FormatDateTime('dd/mm/yyyy',EdPsqDteFat1.Date),4,2) + copy(FormatDateTime('dd/mm/yyyy',EdPsqDteFat1.Date),1,2);
              DtFim    := copy(FormatDateTime('dd/mm/yyyy',EdPsqDteFat2.Date),7,4) + copy(FormatDateTime('dd/mm/yyyy',EdPsqDteFat2.Date),4,2) + copy(FormatDateTime('dd/mm/yyyy',EdPsqDteFat2.Date),1,2);

              Writeln(ArqTxt,'00'                              +
                             Literal                           +
                             CnpjConv                          +
                             '82'                              +
                             DtInicio                          +
                             DtFim                             +
                             'M'                               +
                             fReplicate(' ',15)                +
                             '000'                             +
                             '00001'                           +
                             fReplicate(' ',29));

              FinCli.First;

              while not FinCli.EOF do begin

                    CnpjCli := copy(fLimpaStr(FinCliCgcCli.Value),1,8);

                    FilCli := copy(fLimpaStr(FinCliCgcCli.Value),9,4);

                    DgCli   := copy(fLimpaStr(FinCliCgcCli.Value),13,2);

                    if FinCliDcaCli.Value > StrToDate('01/05/2004') then begin

                       DCadCli := copy(FormatDateTime('dd/mm/yyyy',FinCliDcaCli.Value),7,4) + copy(FormatDateTime('dd/mm/yyyy',FinCliDcaCli.Value),4,2) + copy(FormatDateTime('dd/mm/yyyy',FinCliDcaCli.Value),1,2);

                       if (FinCliDcaCli.Value - StrToDate(EdPsqDteFat2.Text)) > 360 then
                          TipoCliente := '1'
                       else
                          TipoCliente := '2';

                       end
                    else
                       begin

                       DCadCli := '00000000';

                       TipoCliente := '1';
                    
                    end;

                    if FinCliFlbCli.Value = '*' then TipoCliente := '3';

                    Inc(QtdReg_1);

                    Writeln(ArqTxt,'01'                        +
                                   CnpjCli                     +
                                   DgCli                       +
                                   '01'                        +  
                                   DCadCli                     +
                                   TipoCliente                 +
                                   FilCli                      +
                                   fReplicate(' ',73));

                    // Última Compra //

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select NumCre,DteCre,TotCre From FinCre'+
                                 ' Where FinCre.CodEmp  = '''+ EdPsqCodEmp.Text               +''''+
                                 '   and FinCre.CodCli  = '''+ IntToStr( FinCliCodCli.Value ) +''''+
                                 '   and FinCre.DteCre >= '''+ fDateToSQL( DateInicial )      +''''+
                                 '   and FinCre.DteCre <= '''+ fDateToSQL( DateFinal )        +''''+
                                 '   and FinCre.FlgDev  = '''+ ' '                            +''''+
                                 '   and FinCre.FlgDel  = '''+ ' '                            +''''+
                                 ' Order by NumCre DESC';
                         Open;

                         UltCompra  := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00',FieldbyName('TotCre').AsFloat)),13);
                         DultCompra := copy(FormatDateTime('dd/mm/yyyy',FieldbyName('DteCre').AsDateTime),7,4) + copy(FormatDateTime('dd/mm/yyyy',FieldbyName('DteCre').AsDateTime),4,2) + copy(FormatDateTime('dd/mm/yyyy',FieldbyName('DteCre').AsDateTime),1,2);

                    end;

                    if quSQL.FieldbyName('TotCre').AsFloat > 0 then begin

                       // Maior Compra //

                       with quSQL,SQL do begin

                            Close;
                            Text := ' Select DteCre,TotCre From FinCre'+
                                    ' Where FinCre.CodEmp  = '''+ EdPsqCodEmp.Text               +''''+
                                    '   and FinCre.CodCli  = '''+ IntToStr( FinCliCodCli.Value ) +''''+
                                    '   and FinCre.DteCre >= '''+ fDateToSQL( DateInicial )      +''''+
                                    '   and FinCre.DteCre <= '''+ fDateToSQL( DateFinal )        +''''+
                                    '   and FinCre.FlgDev  = '''+ ' '                            +''''+
                                    '   and FinCre.FlgDel  = '''+ ' '                            +''''+
                                    ' Order by TotCre DESC';
                            Open;

                            MaiorCompra  := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00',FieldbyName('TotCre').AsFloat)),13);
                            DMaiorCompra := copy(FormatDateTime('dd/mm/yyyy',FieldbyName('DteCre').AsDateTime),7,4) + copy(FormatDateTime('dd/mm/yyyy',FieldbyName('DteCre').AsDateTime),4,2) + copy(FormatDateTime('dd/mm/yyyy',FieldbyName('DteCre').AsDateTime),1,2);

                       end;

                       // Maior Acumulo //

                       MaiorAcumulo  := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00',FinCliTotAcm.Value)),13);
                       DMaiorAcumulo := copy(FormatDateTime('dd/mm/yyyy',FinCliDteAcm.Value),7,4) + copy(FormatDateTime('dd/mm/yyyy',FinCliDteAcm.Value),4,2) + copy(FormatDateTime('dd/mm/yyyy',FinCliDteAcm.Value),1,2);

                       Inc(QtdReg_2);

                       Writeln(ArqTxt,'01'                        +
                                      CnpjCli                     +
                                      DgCli                       +
                                      '02'                        +
                                      UltCompra                   +
                                      DultCompra                  +
                                      MaiorCompra                 +
                                      DMaiorCompra                +
                                      MaiorAcumulo                +
                                      DMaiorAcumulo               +
                                      FilCli                      +
                                      fReplicate(' ',19));

                    end;

                    // Pagamentos AVista //

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select Sum(TotPgc) as TotRec,'+
                                 '        Count(*) as QtdRec'+
                                 ' From FinPgc,FinCrp'+
                                 ' Where FinPgc.CodEmp  = FinCrp.CodEmp'+
                                 '   and FinPgc.DteCre  = FinCrp.DteCre'+
                                 '   and FinPgc.NumCre  = FinCrp.NumCre'+
                                 '   and FinPgc.NumCrp  = FinCrp.NumCrp'+
                                 '   and FinCrp.CodEmp  = '''+ EdPsqCodEmp.Text                +''''+
                                 '   and FinCrp.CodCli  = '''+ IntToStr( FinCliCodCli.Value )  +''''+
                                 '   and FinPgc.DpgPgc >= '''+ fDateToSQL( EdPsqDteFat1.Date ) +''''+
                                 '   and FinPgc.DpgPgc <= '''+ fDateToSQL( EdPsqDteFat2.Date ) +''''+
                                 '   and FinCrp.FlgDev  = '''+ ' '                             +''''+
                                 '   and FinCrp.FlgDel  = '''+ ' '                             +''''+
                                 '   and FinPgc.SitPgc  = '''+ 'Sim'                           +''''+
                                 '   and FinCrp.DtvCrp  = FinCrp.DteCre';
                         Open;

                         QtdAvista := fNumZeros(IntToStr(FieldbyName('QtdRec').AsInteger),5);
                         TotAvista := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00',FieldbyName('TotRec').AsFloat)),13);

                    end;

                    if quSQL.FieldbyName('TotRec').AsFloat > 0 then begin

                       Inc(QtdReg_3);

                       Writeln(ArqTxt,'01'                        +
                                      CnpjCli                     +
                                      DgCli                       +
                                      '03'                        +
                                      '0000'                      +
                                      AnoMesRef                   +
                                      QtdAvista                   +
                                      TotAvista                   +
                                      FilCli                      +
                                      fReplicate(' ',54));

                    end;

                    // Pagamentos a Prazo //

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select FinPgc.NumCre,'+
                                 '        FinCrp.DtvCrp,'+
                                 '        FinPgc.DpgPgc,'+
                                 '        FinCrp.VlpCrp'+
                                 ' From FinPgc,FinCrp'+
                                 ' Where FinPgc.CodEmp  = FinCrp.CodEmp'+
                                 '   and FinPgc.DteCre  = FinCrp.DteCre'+
                                 '   and FinPgc.NumCre  = FinCrp.NumCre'+
                                 '   and FinPgc.NumCrp  = FinCrp.NumCrp'+
                                 '   and FinCrp.CodEmp  = '''+ EdPsqCodEmp.Text                +''''+
                                 '   and FinCrp.CodCli  = '''+ IntToStr( FinCliCodCli.Value )  +''''+
                                 '   and FinPgc.DpgPgc >= '''+ fDateToSQL( EdPsqDteFat1.Date ) +''''+
                                 '   and FinPgc.DpgPgc <= '''+ fDateToSQL( EdPsqDteFat2.Date ) +''''+
                                 '   and FinCrp.FlgDev  = '''+ ' '                             +''''+
                                 '   and FinCrp.FlgDel  = '''+ ' '                             +''''+
                                 '   and FinPgc.SitPgc  = '''+ 'Sim'                           +''''+
                                 '   and FinCrp.DtvCrp  > FinCrp.DteCre';
                         Open;

                    end;

                    while not quSQL.EOF do begin

                          NumCre := fNumZeros(FloatToStr(quSQL.FieldbyName('NumCre').AsFloat),10);
                          DtvCrp := copy(FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvCrp').AsDateTime),7,4) + copy(FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvCrp').AsDateTime),4,2) + copy(FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvCrp').AsDateTime),1,2);
                          DpgPgc := copy(FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DpgPgc').AsDateTime),7,4) + copy(FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DpgPgc').AsDateTime),4,2) + copy(FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DpgPgc').AsDateTime),1,2);
                          VlpCrp := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00',quSQL.FieldbyName('VlpCrp').AsFloat)),13);

                          Inc(QtdReg_4);

                          Writeln(ArqTxt,'01'                        +
                                         CnpjCli                     +
                                         DgCli                       +
                                         '04'                        +
                                         '0000'                      +
                                         NumCre                      +
                                         DtvCrp                      +
                                         DpgPgc                      +
                                         VlpCrp                      +
                                         FilCli                      +
                                         fReplicate(' ',39));

                          quSQL.Next;

                    end;

                    // Titulos Vencidos //

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select Sum(VlsCrp) as TotCrp From FinCrp'+
                                 ' Where FinCrp.CodEmp = '''+ EdPsqCodEmp.Text                +''''+
                                 '   and FinCrp.CodCli = '''+ IntToStr( FinCliCodCli.Value )  +''''+
                                 '   and FinCrp.DtvCrp < '''+ fDateToSQL( EdPsqDteFat2.Date ) +''''+
                                 '   and FinCrp.FlgDev = '''+ ' '                             +''''+
                                 '   and FinCrp.FlgDel = '''+ ' '                             +''''+
                                 '   and FinCrp.FlpCrp = '''+ ' '                             +'''';
                         Open;

                         TotVencidos  := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00',FieldbyName('TotCrp').AsFloat)),13);

                    end;

                    // Titulos a Vencer //

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select Sum(VlsCrp) as TotCrp From FinCrp'+
                                 ' Where FinCrp.CodEmp  = '''+ EdPsqCodEmp.Text                +''''+
                                 '   and FinCrp.CodCli  = '''+ IntToStr( FinCliCodCli.Value )  +''''+
                                 '   and FinCrp.DtvCrp >= '''+ fDateToSQL( EdPsqDteFat2.Date ) +''''+
                                 '   and FinCrp.FlgDev  = '''+ ' '                             +''''+
                                 '   and FinCrp.FlgDel  = '''+ ' '                             +''''+
                                 '   and FinCrp.FlpCrp  = '''+ ' '                             +'''';
                         Open;

                         TotAVencer  := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00',FieldbyName('TotCrp').AsFloat)),13);

                    end;

                    Inc(QtdReg_7);

                    Writeln(ArqTxt,'01'                        +
                                   CnpjCli                     +
                                   DgCli                       +
                                   '07'                        +
                                   AnoMesRef                   +
                                   TotVencidos                 +
                                   TotAVencer                  +
                                   FilCli                      +
                                   fReplicate(' ',50));

                    FinCli.Next;

                    Inc(SeqReg);

                    ProgressBar.Position := SeqReg;

              end;

              Writeln(ArqTxt,'99'+
                             FNumZeros(IntToStr(QtdReg_1),11)+
                             FNumZeros(IntToStr(QtdReg_2),11)+
                             FNumZeros(IntToStr(QtdReg_3),11)+
                             FNumZeros(IntToStr(QtdReg_4),11)+
                             FNumZeros(IntToStr(QtdReg_7),11)+
                             fReplicate(' ',43));

              CloseFile(ArqTxt);

              fMsg('Arquivo '+SaveDialog.FileName+'. Gerado com Sucesso'+#10+'Quantidade de Registros para Transmissão '+Trim(IntToStr(QtdReg_1+QtdReg_2+QtdReg_3+QtdReg_4+QtdReg_7)),'I');

              ProgressBar.Position := 0;

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManSer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManSer.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManSer := nil;
end;

end.
