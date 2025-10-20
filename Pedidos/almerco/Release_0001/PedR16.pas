unit PedR16;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, ppCtrls, ppBands, ppClass, ppVar,
  ppStrtch, ppMemo, ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, dxColorPickEdit, dxColorEdit, dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR16 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label28: TLabel;
    EdPsqDtfRes1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDtfRes2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqCli: TSpeedButton;
    bPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label1: TLabel;
    EdPsqUfeRes: TdxColorPickEdit;
    Label10: TLabel;
    Bevel1: TBevel;
    quSql: TwwQuery;
    bImprimir: TBitBtn;
    Label4: TLabel;
    PedResCODCLI: TIntegerField;
    PedResAPECLI: TStringField;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResTOTGER: TFloatField;
    PedResAPEVEN: TStringField;
    PedResCODCLP: TStringField;
    PedResCODGRU: TStringField;
    PedResCODSUB: TStringField;
    PedResCODPRO: TStringField;
    PedResCODUND: TStringField;
    Label16: TLabel;
    EdPsqId_PedRes: TdxColorEdit;
    PedResQTPLB2: TFloatField;
    PedResULTQTS: TFloatField;
    PedResSLDLB2: TFloatField;
    Label3: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    PedResVLQRE2: TFloatField;
    PedResDESRE2: TStringField;
    PedResID_PEDRES: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase,sFiltro : string;
  end;

var
  QtdPed   : integer;
  sQtdPed  : string;
  fmPedR16 : TfmPedR16;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, PsqPfa,
     AuxPsq, ManGDB, ManPri, FPreview, AuxIni, PedR24;

{$R *.DFM}

procedure TfmPedR16.FormCreate(Sender: TObject);
begin
  inherited;
  sBase := ' Select PedRes.CodCli,'+
           '        FinCli.ApeCli,'+
           '        PedRes.CodEmp,'+
           '        PedRes.DteRes,'+
           '        PedLib.Id_PedRes,'+
           '        PedLib.TotGer,'+
           '        FinVen.ApeVen,'+
           '        PedRe2.CodClp,'+
           '        PedRe2.CodGru,'+
           '        PedRe2.CodSub,'+
           '        PedRe2.CodPro,'+
           '        PedRe2.DesRe2,'+
           '        PedRe2.VlqRe2,'+
           '        PedLb2.QtpLb2,'+
           '        PedLb2.UltQts,'+
           '        PedLb2.SldLb2,'+
           '        PedRe2.CodUnd'+
           ' From PedLb2,PedLib,PedRe2,PedRes,FinCli,FinVen'+
           ' Where PedLb2.Id_PedLib = PedLib.Id_PedLib'+
           '   and PedLb2.Id_PedRe2 = PedRe2.Id_PedRe2'+
           '   and PedRe2.Id_PedRes = PedRes.Id_PedRes'+
           '   and PedRes.CodCli = FinCli.CodCli'+
           '   and PedRes.CodVen = FinVen.CodVen';
end;

procedure TfmPedR16.bSelecionarClick(Sender: TObject);
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
  
  if Trim( EdPsqCodCli.Text ) = '' then begin

     if GCodVen_Id = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Cliente.',EdPsqCodCli);

  end;
  
  sFiltro := ' and not PedLib.SitLib = '+ QuotedStr('Cancelado') +
             ' and not PedLib.SitLib = '+ QuotedStr('Devolvido') +
             ' and not PedLib.SitLib = '+ QuotedStr('Nao Concluido') +
             ' and PedRes.AtuEst = '+ QuotedStr('Sim') +
             ' and PedLb2.SldLb2 > '+ QuotedStr('0');

  if Trim( EdPsqId_PedRes.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.Id_PedRes = '+ QuotedStr(EdPsqId_PedRes.Text);

  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodCli.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
  if Trim( EdPsqUfeRes.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.UfeRes = '+ QuotedStr(EdPsqUfeRes.Text);
  if Trim( EdPsqModPfa.Text ) <> '' then sFiltro := sFiltro + ' and PedRes.ModPfa = '+ QuotedStr(EdPsqModPfa.Text);

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedRes.DteRes >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedRes.DteRes <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));
  if Trim(fLimpaStr(EdPsqDtfRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDtfRes1.Date));
  if Trim(fLimpaStr(EdPsqDtfRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDtfRes2.Date));

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.CodTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');

  with PedRes,SQL do begin

       Close;
       Text := sBase + sFiltro + ' Order by FinCli.ApeCli,PedLib.Id_PedRes';
       Open;

  end;

  if PedResId_PedRes.Value > 0 then begin

     bImprimir.Enabled := True;

     bImprimir.SetFocus;

     end
  else
     bImprimir.Enabled := False;
     
end;

procedure TfmPedR16.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmPedR16.EdPsqCodCliExit(Sender: TObject);
begin
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

procedure TfmPedR16.bPsqEmpClick(Sender: TObject);
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

procedure TfmPedR16.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
          Open;

          EdPsqNomVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqNomVen.Text := '';
end;

procedure TfmPedR16.bPsqCliClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'C';
     
     fmAuxIni.sCodVen_Id := GCodVen_Id;

     fmAuxIni.sGUs_Id := GGUs_Id;

     fmAuxIni.sCodAtd_Id := GCodAtd_Id;

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCli > 0 then begin

        EdPsqNomCli.Text := fmAuxIni.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

        if fmAuxIni.CodVen > 0 then begin

           EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

           with quSql,SQL do begin

                Close;
                Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(fmAuxIni.CodVen));
                Open;

                EdPsqNomVen.Text := FieldByName('ApeVen').AsString;

           end;
        end;
     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
  
  EdPsqCodCli.SetFocus;

end;

procedure TfmPedR16.bPsqVenClick(Sender: TObject);
begin

  try

     fmPsqVen := TfmPsqVen.Create(Self);

     fmPsqVen.ShowModal;

     if fmPsqVen.CodVen > 0 then begin

        EdPsqNomVen.Text := fmPsqVen.NomVen;
        EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);

     end;

  finally

     FreeAndNil(fmPsqVen);

  end;   

  EdPsqCodVen.SetFocus;

end;

procedure TfmPedR16.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR16.FormShow(Sender: TObject);
begin
  inherited;

  if GCodVen_Id > 0 then begin

     EdPsqNomVen.Text := GNomVen_Id;
     EdPsqCodVen.Text := IntToStr( GCodVen_Id );

     if GGus_Id <> 1 then begin

        bPsqVen.Enabled := False;

        EdPsqCodVen.Enabled := False;

        EdPsqCodVen.Font.Style := [fsBold];

     end;
  end;

  EdPsqUfeRes.SetFocus;
  
end;

procedure TfmPedR16.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR16.EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR16.bImprimirClick(Sender: TObject);
begin
  inherited;
  if PedResCodEmp.Value > 0 then begin

     if not Assigned(fmPedR24) then begin

        try

           fmPedR24 := TfmPedR24.Create(Self);
           fmPedR24.RLReport1.PreviewModal;

        finally

           FreeAndNil(fmPedR24);

        end;
     end;   
  end;
end;

procedure TfmPedR16.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.sCodVen_Id := GCodVen_Id;

        fmAuxIni.sGUs_Id := GGUs_Id;

        fmAuxIni.sCodAtd_Id := GCodAtd_Id;

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxIni.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

           if fmAuxIni.CodVen > 0 then begin

              EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

              with quSql,SQL do begin

                   Close;
                   Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(fmAuxIni.CodVen));
                   Open;

                   EdPsqNomVen.Text := FieldByName('ApeVen').AsString;

              end;
           end;
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

        fmAuxPsq.sCodVen_Id := GCodVen_Id;

        fmAuxPsq.sGUs_Id := GGUs_Id;

        fmAuxPsq.sCodAtd_Id := GCodAtd_Id;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxPsq.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxPsq.CodCli);

           if fmAuxIni.CodVen > 0 then begin

              EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

              with quSql,SQL do begin

                   Close;
                   Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(fmAuxIni.CodVen));
                   Open;

                   EdPsqNomVen.Text := FieldByName('ApeVen').AsString;

              end;
           end;
        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqCodCli.SetFocus;

  end;
end;

procedure TfmPedR16.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqVen := TfmPsqVen.Create(Self);

        fmPsqVen.ShowModal;

        if fmPsqVen.CodVen > 0 then begin

           EdPsqNomVen.Text := fmPsqVen.NomVen;
           EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);

        end;

     finally

        FreeAndNil(fmPsqVen);

     end;

     EdPsqCodVen.SetFocus;

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

     EdPsqCodVen.SetFocus;

  end;
end;

procedure TfmPedR16.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR16.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR16 := nil;
end;

end.

