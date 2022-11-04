unit ManCon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxDBELib, dxColorEdit;

type
  TfmManCon = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label2: TLabel;
    Bevel2: TBevel;
    grRes: ThGrid;
    quSql: TwwQuery;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    UpRes: TUpdateSQL;
    pnCodCli: TPanel;
    Panel1: TPanel;
    EdPsqNumRes: TdxColorEdit;
    dbRes: TdxDBGraphicEdit;
    PedResDTERES: TDateTimeField;
    PedResNUMRES: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTOTGER: TFloatField;
    PedResNOMCLI: TStringField;
    dbOco: TdxDBGraphicEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    PedRe2: TwwQuery;
    PedRe2DESRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2TOTRE2: TFloatField;
    DsRe2: TwwDataSource;
    grRe2: ThGrid;
    bVencimento: TSpeedButton;
    bAtualizar: TBitBtn;
    PedResCODEMP: TIntegerField;
    PedResSITRES: TStringField;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2NRORE2: TIntegerField;
    PedResCODCLI: TIntegerField;
    pnQtdReg: TPanel;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bVencimentoClick(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
    sBase : string;
    CodEmp : integer;
    NumRes : integer;
    DteRes : TDateTime;
  public
    {Public declarations}
  end;

var
  Linha : Integer;
  fmManCon: TfmManCon;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManObs,
     ManLcc, ManPre;

{$R *.DFM}

procedure TfmManCon.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 113 then bVencimento.OnClick(Sender);

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

end;

procedure TfmManCon.FormShow(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.CodEmp,'+
           '        PedRes.DteRes,'+
           '        PedRes.NumRes,'+
           '        PedRes.CodVen,'+
           '        PedRes.CodCli,'+
           '        PedRes.CodPfa,'+
           '        PedRes.TotGer,'+
           '        PedRes.SitRes,'+
           '        FinCli.NomCli'+
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Consultas de Cadastro');

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;
  
  with PedRes,SQL do begin

       Close;
       Text := sBase + ' Order by PedRes.NumRes';
       Open;

  end;

  CountRegistros;
  
  with quSQL,SQL do begin

       Close;
       Text := ' Select UsaDec From PedPar';
       Open;

       if FieldbyName('UsaDec').AsString = 'Sim' then
          PedRe2QtpRe2.DisplayFormat := '###,###,##0.0000'
       else
          PedRe2QtpRe2.DisplayFormat := '###,###,##0';
          
  end;

  EdPsqNumRes.SetFocus;

end;

procedure TfmManCon.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCon.bIncluirClick(Sender: TObject);
var
  sCorreto : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedResCodEmp.Value > 0 then begin

        CodEmp := PedResCodEmp.Value;
        DteRes := PedResDteRes.Value;
        NumRes := PedResNumRes.Value;

        with PedRes,SQL do begin

             Close;
             Text := sBase +
                     '   and PedRes.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                     '   and PedRes.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                     '   and PedRes.NumRes = '+ QuotedStr(IntToStr(NumRes))   ;
             Open;

        end;
        
        CountRegistros;
        
        if PedResCodEmp.Value > 0 then begin

           try

              fmManLcc := TfmManLcc.Create(Self);

              fmManLcc.PedRes.Close;
              fmManLcc.PedRes.Params[0].AsInteger  := PedResCodEmp.Value;
              fmManLcc.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
              fmManLcc.PedRes.Params[2].AsInteger  := PedResNumRes.Value;
              fmManLcc.PedRes.Open;

              fmManLcc.ShowModal;

              sCorreto := fmManLcc.Liberar;

           finally

              FreeAndNil(fmManLcc);

           end;

           if sCorreto = 'Sim' then begin

              EdPsqNumRes.Text := '';

              with PedRes,SQL do begin

                   Close;
                   Text := sBase + ' Order by PedRes.NumRes';
                   Open;

              end;

              CountRegistros;
              
           end;
        end;   
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManCon.bEditarClick(Sender: TObject);
var
sCorreto : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedResCodEmp.Value > 0 then begin

        CodEmp := PedResCodEmp.Value;
        DteRes := PedResDteRes.Value;
        NumRes := PedResNumRes.Value;

        with PedRes,SQL do begin

             Close;
             Text := sBase +
                     '   and PedRes.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                     '   and PedRes.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                     '   and PedRes.NumRes = '+ QuotedStr(IntToStr(NumRes))   ;
             Open;

        end;
        
        CountRegistros;
        
        if PedResCodEmp.Value > 0 then begin

           try

              fmManObs := TfmManObs.Create(Self);

              fmManObs.Caption := 'Liberações de Pedidos Aguardando Consultas de Cadastro';

              fmManObs.PedRes.Close;
              fmManObs.PedRes.Params[0].AsInteger  := PedResCodEmp.Value;
              fmManObs.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
              fmManObs.PedRes.Params[2].AsInteger  := PedResNumRes.Value;
              fmManObs.PedRes.Open;

              fmManObs.ShowModal;

              sCorreto := fmManObs.sCorreto;

           finally

              FreeAndNil(fmManObs);

           end;

           if sCorreto = 'Sim' then begin

              EdPsqNumRes.Text := '';

              with PedRes,SQL do begin

                   Close;
                   Text := sBase + ' Order by PedRes.NumRes';
                   Open;

              end;

              CountRegistros;
              
           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManCon.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManCon.bVencimentoClick(Sender: TObject);
begin
  inherited;
  if PedResCodEmp.Value > 0 then begin

     CodEmp := PedResCodEmp.Value;
     DteRes := PedResDteRes.Value;
     NumRes := PedResNumRes.Value;

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  '   and PedRes.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                  '   and PedRes.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                  '   and PedRes.NumRes = '+ QuotedStr(IntToStr(NumRes))   ;
          Open;

     end;
        
     CountRegistros;
        
     if PedResCodEmp.Value > 0 then begin

        try

           fmManPre := TfmManPre.Create(Self);

           fmManPre.CodEmp := PedResCodEmp.Value;
           fmManPre.DteRes := PedResDteRes.Value;
           fmManPre.NumRes := PedResNumRes.Value;

           fmManPre.ShowModal;

        finally

           FreeAndNil(fmManPre);

        end;
     end;
  end;
end;

procedure TfmManCon.bAtualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNumRes.Text ) <> '' then begin

     with PedRes,SQL do begin

          Close;
          Text := sBase +
                  '   and PedRes.NumRes = '+ QuotedStr(EdPsqNumRes.Text) +
                  ' Order by PedRes.NumRes';
          Open;

     end;

     end
  else
     begin

     with PedRes,SQL do begin

          Close;
          Text := sBase + ' Order by PedRes.NumRes';
          Open;

     end;
  end;

  CountRegistros;
  
end;

procedure TfmManCon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManCon.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCon := nil;
end;

procedure TfmManCon.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if PedResCodCli.Value > 0 then
     pnCodCli.Caption := ' Código do Cliente : ' + FNumZeros(IntToStr(PedResCodCli.Value),7)
  else
     pnCodCli.Caption := ' Código do Cliente : ';
end;

procedure TfmManCon.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Count(*) as QtdReg From PedRes'+
               ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Consultas de Cadastro');

       if CodEmp > 0 then begin

          Text := Text + ' and PedRes.CodEmp = '+ QuotedStr(IntToStr(CodEmp));
          Text := Text + ' and PedRes.DteRes = '+ QuotedStr(fDateToSQL(DteRes));
          Text := Text + ' and PedRes.NumRes = '+ QuotedStr(IntToStr(NumRes));

       end;

       if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

          if GCodVen_Id > 0 then Text := Text + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

       end;
       
       Open;

       if FieldbyName('QtdReg').AsInteger > 0 then
          pnQtdReg.Caption := IntToStr(FieldbyName('QtdReg').AsInteger)+' Pedido(s)'
       else
          pnQtdReg.Caption := '0 Pedido(s)';
          
  end;

  CodEmp := 0;
  NumRes := 0;

end;

procedure TfmManCon.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedRes.CodEmp,'+
           '        PedRes.DteRes,'+
           '        PedRes.NumRes,'+
           '        PedRes.CodVen,'+
           '        PedRes.CodCli,'+
           '        PedRes.CodPfa,'+
           '        PedRes.TotGer,'+
           '        PedRes.SitRes,'+
           '        FinCli.NomCli'+
           ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
           ' Where PedRes.SitRes = '+ QuotedStr('Aguardando Consultas de Cadastro');

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' and PedRes.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;           
end;

end.

