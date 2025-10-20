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
    EdPsqDterec1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDterec2: TdxColorDateEdit;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    BbPsqVen: TSpeedButton;
    EdPsqApeVen: TdxColorEdit;
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
    PedResMEDCOM: TFloatField;
    PedResBASCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResCLIENTE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimeClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPedR30 : TfmPedR30;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManPri, ManGDB, AuxIni, AuxPsq,
     ManE13;

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

  if Trim( EdPsqCodVen.Text ) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqCodVen);

  if Trim(fLimpaStr( EdPsqDteRec1.Text )) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqDteRec1);
  if Trim(fLimpaStr( EdPsqDteRec2.Text )) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPsqDteRec2);

  sFiltro := ' and PedLib.DteRec >= '+ QuotedStr(fDateToSQL(EdPsqDteRec1.Date)) +
             ' and PedLib.DteRec <= '+ QuotedStr(fDateToSQL(EdPsqDteRec2.Date)) +
             ' and FinVen.CodGve  = '+ QuotedStr('1') +
             ' and PedRes.ModPfa  = '+ QuotedStr('Vendas') ;

  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
  
  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.CodTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');

  with PedRes,SQL do begin

       Close;
       Text := ' Select PedLib.Id_PedRes,'+
               '        PedRes.DteRes,'+
               '        PedLib.DteFat,'+
               '        PedRes.CodVen,'+
               '        PedLib.NroNfs,'+
               '        PedLib.TotLib,'+
               '        PedLib.MedCom,'+
               '        PedLib.BasCom,'+
               '        PedLib.TotCom,'+
               '        TextoOcor(IntStrZeros(PedRes.CodCli,05),'+ QuotedStr('-') +',FinCli.NomCli,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as Cliente'+
               ' From PedLib,PedRes,FinVen,FinCli'+
               ' Where PedLib.Id_PedRes = PedRes.Id_PedRes and PedRes.CodVen = FinVen.CodVen and PedRes.CodCli = FinCli.CodCli'+ sFiltro +
               ' Order by PedLib.Id_PedRes';
       Open;

  end;

  if PedResId_PedRes.Value > 0 then
     bImprime.Enabled := True
  else
     bImprime.Enabled := False;

end;

procedure TfmPedR30.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmPedR30.BbPsqVenClick(Sender: TObject);
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

     fmManE13 := TfmManE13.Create(Self);
     fmManE13.RLReport1.PreviewModal;

  finally

     FreeAndNil(fmManE13);

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
  Action := caFree;
end;

procedure TfmPedR30.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR30 := nil;
end;

procedure TfmPedR30.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word;
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

end.

