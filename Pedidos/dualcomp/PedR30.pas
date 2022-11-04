unit PedR30;

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

  TfmPedR30 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    BbPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    quSql: TwwQuery;
    Label7: TLabel;
    Label9: TLabel;
    bImprime: TBitBtn;
    PedResNUMRES: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResTOTLIB: TFloatField;
    PedResBASCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResNRONFS: TIntegerField;
    PedResCLIENTE: TStringField;
    PedResMEDCOM: TFloatField;
    PedResDTEFAT: TDateTimeField;
    PedResCODVEN: TIntegerField;
    rgTipo: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimeClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
    SeqArq : string;
  public
    {Public declarations}
  end;

var
  fmPedR30 : TfmPedR30;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManPri, ManGDB, AuxIni, ManEm9;

{$R *.DFM}

procedure TfmPedR30.bbPesquisaClick(Sender: TObject);
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
       Text := ' Delete From PedR30 Where PedR30.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  if Trim( EdPsqCodVen.Text ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPsqCodVen);

  if Trim(fLimpaStr( EdPsqDteRes1.Text )) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPsqDteRes1);
  if Trim(fLimpaStr( EdPsqDteRes2.Text )) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPsqDteRes2);

  if (rgTipo.ItemIndex = 1) or (rgTipo.ItemIndex = 2) then begin
  
     sFiltro := ' Where PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date)) +
                '   and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date)) +
                '   and PedLib.CodVen  = '+ QuotedStr(EdPsqCodVen.Text)              +
                '   and PedLib.IntFin  = '+ QuotedStr('Sim')                         +
                '   and PedLib.ModPfa  = '+ QuotedStr('Vendas')                      ;

     sFiltro := sFiltro + ' and ( PedLib.SitLib = '''+ 'Faturado' +''' or PedLib.SitLib = '''+ 'Cancelado' +''' or PedLib.SitLib = '''+ 'Devolvido' +''' )';

     if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR30(SeqArq,NumRes,DteRes,DteFat,CodVen,CodCli,NomCli,NroNfs,TotLib,MedCom,BasCom,TotCom)'+
                  ' Select '''+ SeqArq +''','+
                  '        PedLib.NumRes,'+
                  '        PedLib.DteRes,'+
                  '        PedLib.DteFat,'+
                  '        PedLib.CodVen,'+
                  '        PedLib.CodCli,'+
                  '        FinCli.NomCli,'+
                  '        PedLib.NroNfs,'+
                  '        PedLib.TotLib,'+
                  '        PedLib.MedCom,'+
                  '        PedLib.BasCom,'+
                  '        PedLib.TotCom'+
                  ' From PedLib LEFT JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli)'+ sFiltro;
          ExecSQL;

     end;
  end;

  if (rgTipo.ItemIndex = 0) or (rgTipo.ItemIndex = 2) then begin

     if Trim( GFlgAce ) <> 'Sim' then begin
      
        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg From rdb$relations'+
                     ' Where rdb$relations.rdb$relation_name = '+ QuotedStr('LOJPED');
             Open;

        end;

        if quSQL.FieldbyName('QtdReg').AsInteger > 0 then begin

           sFiltro := ' Where LojPed.DopRpe >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date)) +
                      '   and LojPed.DopRpe <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date)) +
                      '   and LojPed.CodVen  = '+ QuotedStr(EdPsqCodVen.Text)              +
                      '   and LojPed.ModPfa  = '+ QuotedStr('Vendas')                      +
                      '   and LojPed.FlgVal  = '+ QuotedStr('Nao')                         +
                      '   and LojPed.TipCpa  = '+ QuotedStr('Vendedor')                    ;

           sFiltro := sFiltro + ' and ( LojPed.SitPed = '''+ 'Recebida' +''' or LojPed.SitPed = '''+ 'Cancelada' +''' )';

           with quSQL,SQL do begin

                Close;
                Text := ' Insert Into PedR30(SeqArq,NumRes,DteRes,DteFat,CodVen,CodCli,NomCli,TotLib,MedCom,BasCom,TotCom)'+
                        ' Select '''+ SeqArq +''','+
                        '        LojPed.NumPed,'+
                        '        LojPed.DtePed,'+
                        '        LojPed.DopRpe,'+
                        '        LojPed.CodVen,'+
                        '        LojPed.CodCli,'+
                        '        LojPed.NomCli,'+
                        '        LojPed.TotPed,'+
                        '        LojPed.MedCom,'+
                        '        LojPed.BasCom,'+
                        '        LojPed.TotCom'+
                        ' From LojPed '+ sFiltro;
                ExecSQL;

           end;
        end;
     end;   
  end;
  
  with PedRes,SQL do begin

       Close;
       Text := ' Select PedR30.NumRes,'+
               '        PedR30.DteRes,'+
               '        PedR30.DteFat,'+
               '        PedR30.CodVen,'+
               '        PedR30.NroNfs,'+
               '        PedR30.TotLib,'+
               '        PedR30.MedCom,'+
               '        PedR30.BasCom,'+
               '        PedR30.TotCom,'+
               '        TextoOcor(IntStrZeros(PedR30.CodCli,05),'''+ ' - ' +''',PedR30.NomCli,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Cliente'+
               ' From PedR30'+
               ' Where PedR30.SeqArq = '+ QuotedStr(SeqArq) +
               ' Order by PedR30.DteFat,PedR30.NroNfs';
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR30 Where PedR30.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  bImprime.SetFocus;

end;

procedure TfmPedR30.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select ApeVen From FinVen Where CodVen = '''+EdPsqCodVen.Text+'''';
          Open;

          EdPsqNomVen.Text := FieldByName('ApeVen').AsString;
          
     end;

     end
  else
     EdPsqNomVen.Text := '';
end;

procedure TfmPedR30.BbPsqVenClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);
        EdPsqNomVen.Text := fmAuxIni.NomVen;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmPedR30.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodVen.SetFocus;
end;

procedure TfmPedR30.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR30.bImprimeClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  try

     fmManEm9 := TfmManEm9.Create(Self);
     fmManEm9.RLReport1.PreviewModal;

  finally

     FreeAndNil(fmManEm9);

  end;
end;

procedure TfmPedR30.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR30.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR30 Where PedR30.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  Action := caFree;
  
end;

procedure TfmPedR30.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR30 := nil;
end;

procedure TfmPedR30.FormCreate(Sender: TObject);
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

end.

