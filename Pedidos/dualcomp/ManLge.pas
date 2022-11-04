unit ManLge;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, dxCntner, dxExEdtr, dxEdLib, dxDBELib, Db, DBTables, Grids,
  Wwdbigrd, Wwdbgrid, hGrid, ExtCtrls, StdCtrls, Wwquery;

type
  TfmManLge = class(TfmShowPadrao)
    dbGer: TdxDBGraphicEdit;
    PedGer: TQuery;
    PedGr2: TQuery;
    UpGr2: TUpdateSQL;
    DsGer: TDataSource;
    DsGr2: TDataSource;
    PedGerCODEMP: TIntegerField;
    PedGerDTEGER: TDateTimeField;
    PedGerNUMGER: TIntegerField;
    PedGerHREGER: TStringField;
    PedGerCODCLI: TIntegerField;
    PedGerCODVEN: TIntegerField;
    PedGerCODPFA: TStringField;
    PedGerTIPPFA: TStringField;
    PedGerPEDCLI: TStringField;
    PedGerUFEGER: TStringField;
    PedGerQTIGER: TIntegerField;
    PedGerSEQITE: TIntegerField;
    PedGerBASIPI: TFloatField;
    PedGerTOTIPI: TFloatField;
    PedGerBASICM: TFloatField;
    PedGerTOTICM: TFloatField;
    PedGerBASSUB: TFloatField;
    PedGerTOTSUB: TFloatField;
    PedGerTOTCST: TFloatField;
    PedGerTOTVEN: TFloatField;
    PedGerTOTITE: TFloatField;
    PedGerTOTREN: TFloatField;
    PedGerTOTGER: TFloatField;
    PedGerDSCREG: TFloatField;
    PedGerDSCCOM: TFloatField;
    PedGerTOPPRM: TFloatField;
    PedGerMEDPRM: TFloatField;
    PedGerMEDACR: TFloatField;
    PedGerTOTDSC: TFloatField;
    PedGerTOTDSR: TFloatField;
    PedGerTOTDSP: TFloatField;
    PedGerTOTACR: TFloatField;
    PedGerCODUSU: TIntegerField;
    PedGerFLGCTB: TStringField;
    PedGerSEQGER: TStringField;
    PedGerCONSUM: TStringField;
    PedGerCODIPI: TStringField;
    PedGerTIPIPI: TStringField;
    PedGerTRBIPI: TStringField;
    PedGerREDIPI: TFloatField;
    PedGerBSCIPI: TFloatField;
    PedGerCODICM: TStringField;
    PedGerTIPICM: TStringField;
    PedGerTRBICM: TStringField;
    PedGerREDICM: TFloatField;
    PedGerBSCICM: TFloatField;
    PedGerINCREV: TFloatField;
    PedGerINCFIN: TFloatField;
    PedGerTXFIPI: TStringField;
    PedGerTXFICM: TStringField;
    PedGerMEDDSC: TFloatField;
    PedGerDTEDEL: TDateTimeField;
    PedGerHREDEL: TStringField;
    PedGerOBSDEL: TMemoField;
    PedGerUSUDEL: TIntegerField;
    PedGerSITGER: TStringField;
    grGer: ThGrid;
    PaintBox: TPaintBox;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label32: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label14: TLabel;
    dbGr2: TdxDBGraphicEdit;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    grGr2: ThGrid;
    Label8: TLabel;
    Bevel1: TBevel;
    PedGr2CODEMP: TIntegerField;
    PedGr2DTEGER: TDateTimeField;
    PedGr2NUMGER: TIntegerField;
    PedGr2SEQGR2: TIntegerField;
    PedGr2CODEIT: TIntegerField;
    PedGr2CODCLP: TStringField;
    PedGr2CODGRU: TStringField;
    PedGr2CODSUB: TStringField;
    PedGr2CODPRO: TStringField;
    PedGr2CODTAM: TStringField;
    PedGr2CODCOR: TStringField;
    PedGr2DESGR2: TStringField;
    PedGr2OBSGR2: TStringField;
    PedGr2CODST1: TStringField;
    PedGr2CODST2: TStringField;
    PedGr2CODUND: TStringField;
    PedGr2TABPRC: TIntegerField;
    PedGr2CODPRM: TIntegerField;
    PedGr2QTPGR2: TFloatField;
    PedGr2QTSGR2: TFloatField;
    PedGr2QTLGR2: TFloatField;
    PedGr2SLDGR2: TFloatField;
    PedGr2VLUGR2: TFloatField;
    PedGr2VLQGR2: TFloatField;
    PedGr2VCHGR2: TFloatField;
    PedGr2VREGR2: TFloatField;
    PedGr2VCPGR2: TFloatField;
    PedGr2VPRGR2: TFloatField;
    PedGr2VCSGR2: TFloatField;
    PedGr2DSCGR2: TFloatField;
    PedGr2VDSGR2: TFloatField;
    PedGr2DSPGR2: TFloatField;
    PedGr2VDPGR2: TFloatField;
    PedGr2DSRGR2: TFloatField;
    PedGr2VDRGR2: TFloatField;
    PedGr2PACGR2: TFloatField;
    PedGr2VACGR2: TFloatField;
    PedGr2IPIGR2: TFloatField;
    PedGr2CLSIPI: TStringField;
    PedGr2ICMGR2: TFloatField;
    PedGr2TOTVEN: TFloatField;
    PedGr2TOTCST: TFloatField;
    PedGr2BASIPI: TFloatField;
    PedGr2TOTIPI: TFloatField;
    PedGr2BASICM: TFloatField;
    PedGr2TOTICM: TFloatField;
    PedGr2BASSUB: TFloatField;
    PedGr2TOTSUB: TFloatField;
    PedGr2TOTGR2: TFloatField;
    PedGr2TOTGE2: TFloatField;
    PedGr2TOTREN: TFloatField;
    PedGr2TOTDSC: TFloatField;
    PedGr2TOTDSR: TFloatField;
    PedGr2TOTDSP: TFloatField;
    PedGr2TOTACR: TFloatField;
    PedGr2CODSTR: TStringField;
    PedGr2TIPSTR: TStringField;
    PedGr2REGIPI: TStringField;
    PedGr2TIPIPI: TStringField;
    PedGr2TRBIPI: TStringField;
    PedGr2REDIPI: TFloatField;
    PedGr2BSCIPI: TFloatField;
    PedGr2REGICM: TStringField;
    PedGr2TIPICM: TStringField;
    PedGr2TRBICM: TStringField;
    PedGr2REDICM: TFloatField;
    PedGr2BSCICM: TFloatField;
    PedGr2INCREV: TFloatField;
    PedGr2INCFIN: TFloatField;
    PedGr2NROGR2: TIntegerField;
    PedGr2FLASEQ: TStringField;
    PedGr2CODITE: TStringField;
    PedGr2FLGRES: TStringField;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    LbText: TLabel;
    Label12: TLabel;
    pnDesGr2: TPanel;
    quSql: TwwQuery;
    procedure grGerKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grGr2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grGerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grGerMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grGr2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grGr2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DsGr2DataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DteRes : TDateTime;
    CodEmp,NumRes,SeqRe2 : integer;
  end;

var
  fmManLge: TfmManLge;

implementation

uses Bbmensag, ManPed, ManGDB;

{$R *.DFM}

procedure TfmManLge.grGerKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin

     grGer.Enabled := False;

     grGr2.Enabled := True;

     grGr2.SetFocus;

  end;
end;

procedure TfmManLge.grGr2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
DteGer : TDateTime;
CodEmp,NumGer,SeqGr2,NroRe2 : integer;
begin
  inherited;
  if key = 13 then begin

     PedGr2.First;

     grGr2.Enabled := False;

     grGer.Enabled := True;

     grGer.SetFocus;

  end;

  if key = 32 then begin {Barra de Espaço}

     CodEmp := PedGr2CodEmp.Value;
     DteGer := PedGr2DteGer.Value;
     NumGer := PedGr2NumGer.Value;
     SeqGr2 := PedGr2SeqGr2.Value;

     if PedGr2FlgRes.Value = 'Nao' then begin

        PedGr2.Edit;

        PedGr2FlaSeq.Value := '*';
        PedGr2FlgRes.Value := 'Sim';

        with PedGr2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedGr3 Values(:CodEmp,:DteGer,:NumGer,:SeqGr2,:SeqGr3,:EmpRes,:DteRes,:NumRes,:SeqRe2,:QtpRe2,:QtsRe2,:NroGr3)';

             with Params do begin

                  Params[00].AsInteger  := PedGr2CodEmp.Value;
                  Params[01].AsDateTime := PedGr2DteGer.Value;
                  Params[02].AsInteger  := PedGr2NumGer.Value;
                  Params[03].AsInteger  := PedGr2SeqGr2.Value;
                  Params[04].AsInteger  := 1;
                  Params[05].AsInteger  := fmManPed.PedResCodEmp.Value;
                  Params[06].AsDateTime := fmManPed.PedResDteRes.Value;
                  Params[07].AsInteger  := fmManPed.PedResNumRes.Value;
                  Params[08].AsInteger  := 1;
                  Params[09].AsFloat    := PedGr2SldGr2.Value;
                  Params[10].AsFloat    := 0;
                  Params[11].AsInteger  := 1;

             end;

             ExecSQL;

        end;

        end
     else
        begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select SeqRe2 From PedGr3'+
                     ' Where CodEmp = :CodEmp'+
                     '   and DteGer = :DteGer'+
                     '   and NumGer = :NumGer'+
                     '   and SeqGr2 = :SeqGr2'+
                     '   and EmpRes = :EmpRes'+
                     '   and DteRes = :DteRes'+
                     '   and NumRes = :NumRes';

             with Params do begin

                  Params[00].AsInteger  := PedGr2CodEmp.Value;
                  Params[01].AsDateTime := PedGr2DteGer.Value;
                  Params[02].AsInteger  := PedGr2NumGer.Value;
                  Params[03].AsInteger  := PedGr2SeqGr2.Value;
                  Params[04].AsInteger  := fmManPed.PedResCodEmp.Value;
                  Params[05].AsDateTime := fmManPed.PedResDteRes.Value;
                  Params[06].AsInteger  := fmManPed.PedResNumRes.Value;

             end;

             Open;

             NroRe2 := FieldbyName('SeqRe2').AsInteger;

        end;

        if NroRe2 > 0 then begin

           PedGr2.Edit;

           PedGr2FlaSeq.Value := '*';
           PedGr2FlgRes.Value := 'Nao';

           with PedGr2 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Delete From PedRe2'+
                        ' Where CodEmp = :CodEmp'+
                        '   and DteRes = :DteRes'+
                        '   and NumRes = :NumRes'+
                        '   and SeqRe2 = :SeqRe2';

                with Params do begin

                     Params[0].AsInteger  := fmManPed.PedResCodEmp.Value;
                     Params[1].AsDateTime := fmManPed.PedResDteRes.Value;
                     Params[2].AsInteger  := fmManPed.PedResNumRes.Value;
                     Params[3].AsInteger  := NroRe2;

                end;

                ExecSQL;

           end;

           end
        else
           fmsgErro('Item não Encontrado no Pedido.',Nil);

     end;

     PedGr2.Close;
     PedGr2.Open;

     fmManPed.PedRes.Close;
     fmManPed.PedRes.Open;

     fmManPed.PedRe2.Close;
     fmManPed.PedRe2.Open;

     fmManPed.PedRe2.Last;

     fmManPed.PedRe2.Locate('CodEmp;DteRes;NumRes;SeqRe2',VarArrayOf([CodEmp,DteRes,NumRes,SeqRe2]), [loPartialKey]);

     PedGr2.Locate('CodEmp;DteGer;NumGer;SeqGr2',VarArrayOf([CodEmp,DteGer,NumGer,SeqGr2]), [loPartialKey]);

  end;
end;

procedure TfmManLge.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if grGr2.Enabled then begin

        PedGr2.First;

        grGr2.Enabled := False;

        grGer.Enabled := True;

        grGer.SetFocus;

        end
     else
        Close;
  end;
end;

procedure TfmManLge.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  
  with quSQL,SQL do begin

       Close;
       Text := ' Update PedGr2 Set FlaSeq = '''+ '*' +''',FlgRes = '''+ 'Nao' +''''+
               ' Where CodEmp = :CodEmp'+
               '   and DteGer = :DteGer'+
               '   and NumGer = :NumGer'+
               '   and FlgRes = :FlgRes';

       with Params do begin

            Params[0].AsInteger  := PedGr2CodEmp.Value;
            Params[1].AsDateTime := PedGr2DteGer.Value;
            Params[2].AsInteger  := PedGr2NumGer.Value;
            Params[3].AsString   := 'Sim';

       end;

       ExecSQL;

  end;
end;

procedure TfmManLge.grGerKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Janela';
end;

procedure TfmManLge.grGerMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Janela';
end;

procedure TfmManLge.grGr2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Janela BARRA DE ESPAÇO-Selecionar/Não Selecionar Item';
end;

procedure TfmManLge.grGr2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Janela BARRA DE ESPAÇO-Selecionar/Não Selecionar o Item';
end;

procedure TfmManLge.DsGr2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnDesGr2.Caption := ' '+PedGr2DesGr2.Value;
end;

procedure TfmManLge.FormShow(Sender: TObject);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select UsaDec From PedPar';
       Open;

       if FieldbyName('UsaDec').AsString = 'Sim' then begin

          PedGr2QtpGr2.DisplayFormat := '###,###,##0.0000';
          PedGr2QtsGr2.DisplayFormat := '###,###,##0.0000';
          PedGr2QtlGr2.DisplayFormat := '###,###,##0.0000';
          PedGr2SldGr2.DisplayFormat := '###,###,##0.0000';

          end
       else
          begin

          PedGr2QtpGr2.DisplayFormat := '###,###,##0';
          PedGr2QtsGr2.DisplayFormat := '###,###,##0';
          PedGr2QtlGr2.DisplayFormat := '###,###,##0';
          PedGr2SldGr2.DisplayFormat := '###,###,##0';

       end;
  end;

  grGer.SetFocus;
  
end;

end.
