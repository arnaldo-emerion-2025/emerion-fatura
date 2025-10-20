unit PedR12;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, ppDB, ppDBPipe,
  ppCtrls, ppStrtch, ppMemo, ppBands, ppClass, ppVar, ppPrnabl, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, dxColorEdit, dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR12 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDterec1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDterec2: TdxColorDateEdit;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    bPsqVen: TSpeedButton;
    EdPsqApeVen: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    quSql: TwwQuery;
    bImprime: TBitBtn;
    Label26: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    EdPsqApeEmp: TdxColorEdit;
    PedResID_PEDRES: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResDTEFAT: TDateTimeField;
    PedResCODVEN: TIntegerField;
    PedResNRONFS: TIntegerField;
    PedResNUMCRP: TIntegerField;
    PedResQTPCRE: TIntegerField;
    PedResTOTLIB: TFloatField;
    PedResMEDCOM: TFloatField;
    PedResBASCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResCLIENTE: TStringField;
    PedResDTEREC: TDateTimeField;
    Label1: TLabel;
    EdPsqCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    EdPsqNomCli: TdxColorEdit;
    procedure FormShow(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimeClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqCliClick(Sender: TObject);
  private
    SeqArq : string;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPedR12 : TfmPedR12;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManPri, ManGDB, AuxIni, AuxPsq,
     ManE14, PsqEmp;

{$R *.DFM}

procedure TfmPedR12.bbPesquisaClick(Sender: TObject);
var
  sFiltro : string;
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

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR13 Where PedR13.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR12 Where PedR12.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  if Trim( EdPsqCodEmp.Text ) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqCodEmp);
  if Trim( EdPsqCodVen.Text ) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqCodVen);

  if Trim(fLimpaStr( EdPsqDteRec1.Text )) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqDteRec1);
  if Trim(fLimpaStr( EdPsqDteRec2.Text )) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqDteRec2);

  sFiltro := '';
  
  if Trim(fLimpaStr(EdPsqDteRec1.Text)) <> '' then sFiltro := sFiltro + ' and FinPgc.DteRec >= '+ QuotedStr(fDateToSQL(EdPsqDteRec1.Date));
  if Trim(fLimpaStr(EdPsqDteRec2.Text)) <> '' then sFiltro := sFiltro + ' and FinPgc.DteRec <= '+ QuotedStr(fDateToSQL(EdPsqDteRec2.Date));

  sFiltro := sFiltro + ' and FinPgc.FlgCre = '+ QuotedStr('Nao');
  
  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and FinCre.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and FinCre.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
  if Trim( EdPsqCodCli.Text ) <> '' then sFiltro := sFiltro + ' and FinCre.CodCli = '+ QuotedStr(EdPsqCodCli.Text);

  sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr('2');
  
  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR13(SeqArq,Id_FatPed,CodEmp,DteCre,NumCre,NumCrp,QtpCre,TotRec,DteRec)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        FinCre.Id_FatPed,'+
               '        FinCre.CodEmp,'+
               '        FinCre.DteCre,'+
               '        FinCre.NumCre,'+
               '        FinCrp.NumCrp,'+
               '        FinCre.QtpCre,'+
               '        FinPgc.VppPgc,'+
               '        FinPgc.DteRec '+
               ' From FinPgc,FinCrp,FinCre,FinVen'+
               ' Where FinPgc.CodEmp = FinCrp.CodEmp'+
               '   and FinPgc.DteCre = FinCrp.DteCre'+
               '   and FinPgc.NumCre = FinCrp.NumCre'+
               '   and FinPgc.NumCrp = FinCrp.NumCrp'+
               '   and FinCrp.CodEmp = FinCre.CodEmp'+
               '   and FinCrp.DteCre = FinCre.DteCre'+
               '   and FinCrp.NumCre = FinCre.NumCre'+
               '   and FinCre.CodVen = FinVen.CodVen'+ sFiltro;
       ExecSQL;

  end;

  with PedRes,SQL do begin

       Close;
       Text := ' Select PedR12.Id_PedRes,'+
               '        PedR12.DteRes,'+
               '        PedR12.DteFat,'+
               '        PedR12.DteRec,'+               
               '        PedR12.CodVen,'+
               '        PedR12.NroNfs,'+
               '        PedR12.NumCrp,'+
               '        PedR12.QtpCre,'+
               '        PedR12.TotLib,'+
               '        PedR12.MedCom,'+
               '        PedR12.BasCom,'+
               '        PedR12.TotCom,'+
               '        TextoOcor(IntStrZeros(PedR12.CodCli,05),'+ QuotedStr('-') +',FinCli.NomCli,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as Cliente'+
               ' From PedR12 LEFT JOIN FinCli ON (PedR12.CodCli = FinCli.CodCli)'+
               ' Where PedR12.SeqArq = '+ QuotedStr(SeqArq) +
               ' Order by PedR12.Id_PedRes';
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR13 Where PedR13.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR12 Where PedR12.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  if PedResId_PedRes.Value > 0 then
     bImprime.Enabled := True
  else
     bImprime.Enabled := False;

end;

procedure TfmPedR12.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
          Open;

          EdPsqApeVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqApeVen.Text := '';
end;

procedure TfmPedR12.bPsqVenClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);
        EdPsqApeVen.Text := fmAuxIni.NomVen;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmPedR12.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR12.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR12.bImprimeClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  try

     fmManE14 := TfmManE14.Create(Self);
     fmManE14.RLReport1.PreviewModal;

  finally

     FreeAndNil(fmManE14);

  end;
end;

procedure TfmPedR12.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR13 Where PedR13.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR12 Where PedR12.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := caFree;
  
end;

procedure TfmPedR12.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR12 := nil;
end;

procedure TfmPedR12.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqApeVen.Text := fmAuxIni.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqCodVen.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           EdPsqApeVen.Text := fmAuxPsq.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqCodVen.SetFocus;

  end;
end;

procedure TfmPedR12.FormCreate(Sender: TObject);
begin
  inherited;

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
            copy(TimeToStr(Time),1,2)+
            copy(TimeToStr(Time),4,2)+
            copy(TimeToStr(Time),7,2)+
            FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
            FNumZeros(Trim( IntToStr(Random(50000)) ),5);
  
end;

procedure TfmPedR12.bPsqEmpClick(Sender: TObject);
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

procedure TfmPedR12.EdPsqCodEmpExit(Sender: TObject);
begin
  inherited;
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

procedure TfmPedR12.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
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

procedure TfmPedR12.EdPsqCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinCli.NomCli From FinCli Where FinCli.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
          Open;

          EdPsqNomCli.Text := FieldByName('NomCli').AsString;

     end;

     end
  else
     EdPsqNomCli.Text := '';
end;

procedure TfmPedR12.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
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

     EdPsqCodCli.SetFocus;

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

     EdPsqCodCli.SetFocus;

  end;
end;

procedure TfmPedR12.bPsqCliClick(Sender: TObject);
begin
  inherited;

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

  EdPsqCodCli.SetFocus;
  
end;

end.

