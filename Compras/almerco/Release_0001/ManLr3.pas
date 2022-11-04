unit ManLr3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, ppDB, ppDBPipe, ppBands, ppClass, ppStrtch,
  ppMemo, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit, dxDBColorCurrencyEdit,
  dxDBColorEdit;

type
  TfmManLr3 = class(TfmPadrao)
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteFat1: TdxColorDateEdit;
    EdPsqId_CmpNfs: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteFat2: TdxColorDateEdit;
    Label25: TLabel;
    EdPsqTotGer1: TdxColorCurrencyEdit;
    Label19: TLabel;
    EdPsqTotGer2: TdxColorCurrencyEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    EdPsqCodPfa: TdxColorEdit;
    EdPsqCodFor: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqFor: TSpeedButton;
    bPsqPfa: TSpeedButton;
    EdPsqNomPfa: TdxColorEdit;
    EdPsqNomFor: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    pnSitNfs: TPanel;
    grCmpNfs1: TdxDBGraphicEdit;
    grCmpNf21: TdxDBGraphicEdit;
    Label11: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    pnSitImp: TPanel;
    bCancelar: TBitBtn;
    CmpNfs: TwwQuery;
    CmpNfsID_CMPNFS: TIntegerField;
    CmpNfsDTEFAT: TDateTimeField;
    CmpNfsNRONFS: TIntegerField;
    CmpNfsCODPFA: TStringField;
    CmpNfsNOMFOR: TStringField;
    CmpNfsTOTGE1: TFloatField;
    CmpNfsCODFOR: TIntegerField;
    CmpNfsSITNFS: TStringField;
    CmpNfsHREFAT: TStringField;
    DsCmpNfs: TwwDataSource;
    UpCmpNfs: TUpdateSQL;
    quSql: TwwQuery;
    grCmpNfs: ThGrid;
    CmpNfsFLGIMP: TStringField;
    CmpNf2: TwwQuery;
    CmpNf2CODITE: TStringField;
    CmpNf2CODCFO: TStringField;
    CmpNf2CLSIPI: TStringField;
    CmpNf2CODSIT: TStringField;
    CmpNf2CODUND: TStringField;
    CmpNf2QTPNF2: TFloatField;
    CmpNf2VLUNF2: TFloatField;
    CmpNf2TOTITE: TFloatField;
    CmpNf2ICMNF2: TFloatField;
    CmpNf2IPINF2: TFloatField;
    CmpNf2TOTIPI: TFloatField;
    CmpNf2DESNF2: TStringField;
    CmpNf2OBSNF2: TStringField;
    DsNf2: TwwDataSource;
    grCmpNf2: ThGrid;
    pnDesNf2: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqForClick(Sender: TObject);
    procedure bPsqPfaClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure EdPsqId_CmpNfsExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqId_CmpNfsKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdPsqCodForExit(Sender: TObject);
    procedure DsCmpNfsDataChange(Sender: TObject; Field: TField);
    procedure CmpNfsFORNECEDORGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure bCancelarClick(Sender: TObject);
    procedure DsNf2DataChange(Sender: TObject; Field: TField);
  private
    Id_CmpNfs : integer;
    {Private declarations}
  public
    sBase,sBaseFiltro,sFiltro,sOrdem : string;
    {Public declarations}
  end;

var
  fmManLr3: TfmManLr3;

implementation

uses dxDemoUtils, Bbgeral, Bbacesso, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqPfa,
     ManPri, AuxPsq, ManCro, AuxIni;

{$R *.DFM}

procedure TfmManLr3.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select CmpNfs.Id_CmpNfs,'+
           '        CmpNfs.DteFat,'+
           '        CmpNfs.HreFat,'+
           '        CmpNfs.NroNfs,'+
           '        CmpNfs.CodPfa,'+
           '        CmpNfs.CodFor,'+
           '        CmpNfs.FlgImp,'+
           '        CmpNfs.TotGe1,'+
           '        CmpNfs.SitNfs,'+
           '        FinFor.NomFor '+
           ' From CmpNfs,FinFor'+
           ' Where CmpNfs.CodFor = FinFor.CodFor';

  sBaseFiltro := ' and not CmpNfs.SitNfs = '+ QuotedStr('Cancelado') +
                 ' and not CmpNfs.SitNfs = '+ QuotedStr('Nao Concluido') +
                 ' and not CmpNfs.SitNfs = '+ QuotedStr('Processo de Alteracao');

end;

procedure TfmManLr3.bSelecionarClick(Sender: TObject);
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

  sOrdem := ' Order by CmpNfs.Id_CmpNfs';

  sFiltro := sBaseFiltro;
  
  if Trim( EdPsqId_CmpNfs.Text ) <> '' then sFiltro := sFiltro + ' and CmpNfs.Id_CmpNfs = '+ QuotedStr(EdPsqId_CmpNfs.Text);

  if Trim( EdPsqNroNfs.Text ) <> '' then sFiltro := sFiltro + ' and CmpNfs.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text);
  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and CmpNfs.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodFor.Text ) <> '' then sFiltro := sFiltro + ' and CmpNfs.CodFor = '+ QuotedStr(EdPsqCodFor.Text);
  if Trim( EdPsqCodPfa.Text ) <> '' then sFiltro := sFiltro + ' and CmpNfs.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text);

  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then sFiltro := sFiltro + ' and CmpNfs.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDteFat1.Date));
  if Trim(fLimpaStr(EdPsqDteFat2.Text)) <> '' then sFiltro := sFiltro + ' and CmpNfs.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDteFat2.Date));

  if EdPsqTotGer1.Value > 0 then sFiltro := sFiltro + ' and CmpNfs.TotGe1 >= '+ QuotedStr(fConvertValor(EdPsqTotGer1.Text));
  if EdPsqTotGer2.Value > 0 then sFiltro := sFiltro + ' and CmpNfs.TotGe1 <= '+ QuotedStr(fConvertValor(EdPsqTotGer2.Text));

  with CmpNfs,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grCmpNfs.SetFocus;

end;

procedure TfmManLr3.EdPsqCodEmpExit(Sender: TObject);
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
          Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

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

procedure TfmManLr3.bPsqEmpClick(Sender: TObject);
begin
  inherited;

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

procedure TfmManLr3.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

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
end;

procedure TfmManLr3.EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           EdPsqNomFor.Text := fmAuxIni.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           EdPsqNomFor.Text := fmAuxPsq.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxPsq.CodFor);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManLr3.bPsqForClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        EdPsqNomFor.Text := fmAuxIni.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManLr3.EdPsqId_CmpNfsExit(Sender: TObject);
begin
  if Trim( EdPsqId_CmpNfs.Text ) <> '' then begin

     EdPsqNroNfs.Clear;
     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodFor.Clear;
     EdPsqNomFor.Clear;
     EdPsqCodPfa.Clear;
     EdPsqNomPfa.Clear;

     EdPsqDteFat1.Clear;
     EdPsqDteFat2.Clear;

     EdPsqTotGer1.Value := 0;
     EdPsqTotGer2.Value := 0;

  end;
end;

procedure TfmManLr3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then Close;
end;

procedure TfmManLr3.FormShow(Sender: TObject);
begin
  inherited;

  EdPsqDteFat1.Date := Date;
  EdPsqDteFat2.Date := Date;

  CmpNfs.Close;
  CmpNfs.Params[0].AsDateTime := Date;
  CmpNfs.Open;

  EdPsqNroNfs.SetFocus;
    
end;

procedure TfmManLr3.bPsqPfaClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqPfa := TfmPsqPfa.Create(Self);

     with fmPsqPfa.EstPfa,SQL do begin

          Close;
          Text := ' Select EstPfa.CodPfa,'+
                  '        EstPfa.TipPfa,'+
                  '        EstPfa.DscPfa,'+
                  '        EstPfa.DsrPfa,'+
                  '        EstPfa.CodCf1,'+
                  '        EstPfa.CodCf2,'+
                  '        EstPfa.IntFin,'+
                  '        EstPfa.AtuEst,'+
                  '        EstPfa.ConSum,'+
                  '        EstPfa.ModPfa'+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString := 'Saida';

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

        EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
        EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

     end;

  finally   

     FreeAndNil(fmPsqPfa);

  end;
end;

procedure TfmManLr3.EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqPfa := TfmPsqPfa.Create(Self);

        with fmPsqPfa.EstPfa,SQL do begin

             Close;
             Text := ' Select EstPfa.CodPfa,'+
                     '        EstPfa.TipPfa,'+
                     '        EstPfa.DscPfa,'+
                     '        EstPfa.DsrPfa,'+
                     '        EstPfa.CodCf1,'+
                     '        EstPfa.CodCf2,'+
                     '        EstPfa.IntFin,'+
                     '        EstPfa.AtuEst,'+
                     '        EstPfa.ConSum,'+
                     '        EstPfa.ModPfa'+
                     ' From EstPfa'+
                     ' Where EstPfa.TipPfa = :TipPfa'+
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString := 'Saida';

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
           EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

        end;

     finally

        FreeAndNil(fmPsqPfa);

     end;
  end;
end;

procedure TfmManLr3.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLr3.EdPsqId_CmpNfsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManLr3.EdPsqCodPfaExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPfa.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPfa From EstPfa'+
                  ' Where EstPfa.TipPfa = '''+ 'Saida'          +''''+
                  '   and EstPfa.CodPfa = '''+ EdPsqCodPfa.Text +'''';
          Open;

          EdPsqNomPfa.Text := FieldByName('DscPfa').AsString;

     end;

     end
  else
     EdPsqNomPfa.Text := '';
end;

procedure TfmManLr3.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLr3 := nil;
end;

procedure TfmManLr3.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     EdPsqId_CmpNfs.Clear;
       
     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodFor.Clear;
     EdPsqNomFor.Clear;
     EdPsqCodPfa.Clear;
     EdPsqNomPfa.Clear;

     EdPsqDteFat1.Clear;
     EdPsqDteFat2.Clear;

     EdPsqTotGer1.Value := 0;
     EdPsqTotGer2.Value := 0;

  end;
end;

procedure TfmManLr3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManLr3.EdPsqCodForExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomFor From FinFor Where FinFor.CodFor = '''+ EdPsqCodFor.Text +'''';
          Open;

          EdPsqNomFor.Text := FieldByName('NomFor').AsString;

     end;

     end
  else
     EdPsqNomFor.Text := '';
end;

procedure TfmManLr3.DsCmpNfsDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnSitNfs.Caption := CmpNfsSitNfs.Value;

  pnSitImp.Caption := ' Impressão Confirmada (Sim/Nao) : '+CmpNfsFlgImp.Value;

end;

procedure TfmManLr3.CmpNfsFORNECEDORGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if CmpNfsCodFor.Value > 0 then
     Text := fNumZeros(IntToStr(CmpNfsCodFor.Value),5)+ ' - ' +Trim(CmpNfsNomFor.Value)
  else
     Text := '';
end;

procedure TfmManLr3.bCancelarClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpNfsId_CmpNfs.Value > 0 then begin

        Id_CmpNfs := CmpNfsId_CmpNfs.Value;

        with CmpNfs,SQL do begin

             Close;
             Text := sBase +
                     ' and CmpNfs.Id_CmpNfs = '+ QuotedStr(IntToStr(Id_CmpNfs));
             Open;

        end;

        if CmpNfsId_CmpNfs.Value > 0 then begin

           if fMsg('Confirma o cancelamento da operação ?','O') then begin

              try

                 fmManCro := TfmManCro.Create(Self);

                 fmManCro.CmpNfs.Close;
                 fmManCro.CmpNfs.Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
                 fmManCro.CmpNfs.Open;

                 fmManCro.ShowModal;

              finally

                 FreeAndNil(fmManCro);

              end;

              CmpNfs.Close;
              CmpNfs.Open;

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManLr3.DsNf2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnDesNf2.Caption := ' '+CmpNf2DesNf2.Value+' '+CmpNf2ObsNf2.Value;
end;

end.

