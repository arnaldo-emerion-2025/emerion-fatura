unit PedR34;

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

  TfmPedR34 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDterec1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDterec2: TdxColorDateEdit;
    Label22: TLabel;
    EdPsqCodAtd: TdxColorEdit;
    BbPsqVen: TSpeedButton;
    EdPsqApeAtd: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    quSql: TwwQuery;
    bImprime: TBitBtn;
    PedResID_PEDRES: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResDTEFAT: TDateTimeField;
    PedResCODVEN: TIntegerField;
    PedResNRONFS: TIntegerField;
    PedResTOTLIB: TFloatField;
    PedResBASCOM: TFloatField;
    PedResCLIENTE: TStringField;
    PedPar: TwwQuery;
    PedParTIPATD: TStringField;
    PedResMEDCAT: TFloatField;
    PedResTOTCAT: TFloatField;
    Label26: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdPsqApeEmp: TdxColorEdit;
    procedure FormShow(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodAtdExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimeClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure EdPsqCodAtdKeyPress(Sender: TObject; var Key: Char);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    SeqArq : string;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPedR34 : TfmPedR34;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManPri, ManGDB, AuxIni, AuxPsq,
     ManE15, PsqEmp;

{$R *.DFM}

procedure TfmPedR34.bbPesquisaClick(Sender: TObject);
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
       Text := ' Delete From PedR11 Where PedR11.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR12 Where PedR12.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  if Trim( EdPsqCodEmp.Text ) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqCodEmp);
  if Trim( EdPsqCodAtd.Text ) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqCodAtd);

  if Trim(fLimpaStr( EdPsqDteRec1.Text )) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqDteRec1);
  if Trim(fLimpaStr( EdPsqDteRec2.Text )) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqDteRec2);

  sFiltro := '';
  
  if Trim(fLimpaStr(EdPsqDteRec1.Text)) <> '' then sFiltro := sFiltro + ' and FinPgc.DteRec >= '+ QuotedStr(fDateToSQL(EdPsqDteRec1.Date));
  if Trim(fLimpaStr(EdPsqDteRec2.Text)) <> '' then sFiltro := sFiltro + ' and FinPgc.DteRec <= '+ QuotedStr(fDateToSQL(EdPsqDteRec2.Date));

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and FinCre.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  
  sFiltro := sFiltro + ' and FinPgc.FlgCre = '+ QuotedStr('Nao');

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR11(SeqArq,Id_FatPed,TotRec)'+
               ' Select '+ QuotedStr(SeqArq) +','+
               '        FinCre.Id_FatPed,'+
               '        Sum(FinPgc.VppPgc)'+
               ' From FinPgc,FinCre,FinVen'+
               ' Where FinPgc.CodEmp = FinCre.CodEmp'+
               '   and FinPgc.DteCre = FinCre.DteCre'+
               '   and FinPgc.NumCre = FinCre.NumCre and FinCre.CodVen = FinVen.CodVen'+ sFiltro +
               ' Group by FinCre.Id_FatPed';
       ExecSQL;

  end;

  with PedRes,SQL do begin

       Close;
       Text := ' Select PedR12.Id_PedRes,'+
               '        PedR12.DteRes,'+
               '        PedR12.DteFat,'+
               '        PedR12.CodVen,'+
               '        PedR12.NroNfs,'+
               '        PedR12.TotLib,'+
               '        PedR12.MedCat,'+
               '        PedR12.BasCom,'+
               '        PedR12.TotCat,'+
               '        TextoOcor(IntStrZeros(PedR12.CodCli,05),'+ QuotedStr('-') +',FinCli.NomCli,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as Cliente'+
               ' From PedR12 LEFT JOIN FinCli ON (PedR12.CodCli = FinCli.CodCli)'+
               ' Where PedR12.SeqArq = '+ QuotedStr(SeqArq);

       if Trim( EdPsqCodAtd.Text ) <> '' then Text := Text + ' and PedR12.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text);

       Text := Text + ' Order by PedR12.Id_PedRes';
       
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR11 Where PedR11.SeqArq = '+ QuotedStr(SeqArq);
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

procedure TfmPedR34.EdPsqCodAtdExit(Sender: TObject);
begin
  if Trim( EdPsqCodAtd.Text ) <> '' then begin

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdPsqCodAtd.Text);
             Open;

             EdPsqApeAtd.Text := FieldByName('ApeVen').AsString;

        end;

        end
     else
        begin

        with quSql,SQL do begin

             Close;
             Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(EdPsqCodAtd.Text);
             Open;

             EdPsqApeAtd.Text := FieldByName('ApeAtd').AsString;

        end;
     end;

     end
  else
     EdPsqApeAtd.Text := '';
end;

procedure TfmPedR34.BbPsqVenClick(Sender: TObject);
begin
  if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqApeAtd.Text := fmAuxIni.NomVen;
           EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     end
  else
     begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Atendentes';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodAtd > 0 then begin

           EdPsqApeAtd.Text := fmAuxIni.NomAtd;
           EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodAtd);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  EdPsqCodAtd.SetFocus;

end;

procedure TfmPedR34.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR34.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR34.bImprimeClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  try

     fmManE15 := TfmManE15.Create(Self);
     fmManE15.RLReport1.PreviewModal;

  finally

     FreeAndNil(fmManE15);

  end;
end;

procedure TfmPedR34.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR11 Where PedR11.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR12 Where PedR12.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := caFree;
  
end;

procedure TfmPedR34.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR34 := nil;
end;

procedure TfmPedR34.EdPsqCodAtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'V';

           fmAuxIni.ShowModal;

           if fmAuxIni.CodVen > 0 then begin

              EdPsqApeAtd.Text := fmAuxIni.NomVen;
              EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodVen);

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        end
     else
        begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Atendentes';

           fmAuxIni.ShowModal;

           if fmAuxIni.CodAtd > 0 then begin

              EdPsqApeAtd.Text := fmAuxIni.NomAtd;
              EdPsqCodAtd.Text := IntToStr(fmAuxIni.CodAtd);

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;
     end;

     EdPsqCodAtd.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'V';

           fmAuxPsq.ShowModal;

           if fmAuxPsq.CodVen > 0 then begin

              EdPsqApeAtd.Text := fmAuxPsq.NomVen;
              EdPsqCodAtd.Text := IntToStr(fmAuxPsq.CodVen);

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        end
     else
        begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Atendentes';

           fmAuxPsq.ShowModal;

           if fmAuxPsq.CodAtd > 0 then begin

              EdPsqApeAtd.Text := fmAuxPsq.NomAtd;
              EdPsqCodAtd.Text := IntToStr(fmAuxPsq.CodAtd);

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;
     end;

     EdPsqCodAtd.SetFocus;

  end;
end;

procedure TfmPedR34.FormCreate(Sender: TObject);
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

procedure TfmPedR34.EdPsqCodAtdKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR34.BbPsqEmpClick(Sender: TObject);
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

procedure TfmPedR34.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmPedR34.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word;
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

end.

