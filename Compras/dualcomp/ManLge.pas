unit ManLge;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, dxCntner, dxExEdtr, dxEdLib, dxDBELib, Db, DBTables, Grids,
  Wwdbigrd, Wwdbgrid, hGrid, ExtCtrls, StdCtrls, Wwquery;

type
  TfmManLge = class(TfmShowPadrao)
    dbPed: TdxDBGraphicEdit;
    CmpPed: TQuery;
    CmpPe2: TQuery;
    UpPe2: TUpdateSQL;
    DsPed: TDataSource;
    DsPe2: TDataSource;
    grPed: ThGrid;
    PaintBox: TPaintBox;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label32: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label14: TLabel;
    dbPe2: TdxDBGraphicEdit;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    grPe2: ThGrid;
    Label8: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    LbText: TLabel;
    Label12: TLabel;
    pnDesPe2: TPanel;
    quSql: TwwQuery;
    CmpPedCODEMP: TIntegerField;
    CmpPedDTEPED: TDateTimeField;
    CmpPedNUMPED: TIntegerField;
    CmpPedHREPED: TStringField;
    CmpPedCODFOR: TIntegerField;
    CmpPedCONPLC: TIntegerField;
    CmpPedSUBPLC: TIntegerField;
    CmpPedCODPFA: TStringField;
    CmpPedTIPPFA: TStringField;
    CmpPedPREPED: TIntegerField;
    CmpPedDPEPED: TDateTimeField;
    CmpPedCODTMO: TIntegerField;
    CmpPedVALTMO: TFloatField;
    CmpPedCODFIL: TIntegerField;
    CmpPedUFEPED: TStringField;
    CmpPedCODCLP: TStringField;
    CmpPedNOMCON: TStringField;
    CmpPedNOMVEN: TStringField;
    CmpPedCEPENT: TStringField;
    CmpPedTENENT: TStringField;
    CmpPedENDENT: TStringField;
    CmpPedREFENT: TStringField;
    CmpPedNUMENT: TStringField;
    CmpPedBAIENT: TStringField;
    CmpPedCIDENT: TStringField;
    CmpPedUFEENT: TStringField;
    CmpPedFLGCTB: TStringField;
    CmpPedOBSCND: TStringField;
    CmpPedOBSPED: TStringField;
    CmpPedQTIPED: TIntegerField;
    CmpPedSEQITE: TIntegerField;
    CmpPedBASIPI: TFloatField;
    CmpPedTOTIPI: TFloatField;
    CmpPedBASICM: TFloatField;
    CmpPedTOTICM: TFloatField;
    CmpPedBASSUB: TFloatField;
    CmpPedTOTSUB: TFloatField;
    CmpPedTOTPED: TFloatField;
    CmpPedTOTGER: TFloatField;
    CmpPedMEDDSC: TFloatField;
    CmpPedTOTDSC: TFloatField;
    CmpPedMEDACR: TFloatField;
    CmpPedTOTACR: TFloatField;
    CmpPedLANEST: TStringField;
    CmpPedATUEST: TStringField;
    CmpPedINTFIN: TStringField;
    CmpPedCONSUM: TStringField;
    CmpPedCODIPI: TStringField;
    CmpPedTIPIPI: TStringField;
    CmpPedTRBIPI: TStringField;
    CmpPedREDIPI: TFloatField;
    CmpPedBSCIPI: TFloatField;
    CmpPedCODICM: TStringField;
    CmpPedTIPICM: TStringField;
    CmpPedTRBICM: TStringField;
    CmpPedREDICM: TFloatField;
    CmpPedBSCICM: TFloatField;
    CmpPedINCREV: TFloatField;
    CmpPedINCFIN: TFloatField;
    CmpPedTXFIPI: TStringField;
    CmpPedTXFICM: TStringField;
    CmpPedCODUSU: TIntegerField;
    CmpPedFLGOCO: TStringField;
    CmpPedFLGATU: TStringField;
    CmpPedSEQPED: TStringField;
    CmpPedSITPED: TStringField;
    CmpPe2CODEMP: TIntegerField;
    CmpPe2DTEPED: TDateTimeField;
    CmpPe2NUMPED: TIntegerField;
    CmpPe2SEQPE2: TIntegerField;
    CmpPe2CODEIT: TIntegerField;
    CmpPe2CODCLP: TStringField;
    CmpPe2CODGRU: TStringField;
    CmpPe2CODSUB: TStringField;
    CmpPe2CODPRO: TStringField;
    CmpPe2CODTAM: TStringField;
    CmpPe2CODCOR: TStringField;
    CmpPe2DESPE2: TStringField;
    CmpPe2OBSPE2: TStringField;
    CmpPe2CODST1: TStringField;
    CmpPe2CODST2: TStringField;
    CmpPe2CODUND: TStringField;
    CmpPe2CLSIPI: TStringField;
    CmpPe2QTPPE2: TFloatField;
    CmpPe2QTEPE2: TFloatField;
    CmpPe2QTRPE2: TFloatField;
    CmpPe2SLDPE2: TFloatField;
    CmpPe2VLUPE2: TFloatField;
    CmpPe2VLQPE2: TFloatField;
    CmpPe2DSCPE2: TFloatField;
    CmpPe2VDSPE2: TFloatField;
    CmpPe2PACPE2: TFloatField;
    CmpPe2VACPE2: TFloatField;
    CmpPe2IPIPE2: TFloatField;
    CmpPe2ICMPE2: TFloatField;
    CmpPe2BASIPI: TFloatField;
    CmpPe2TOTIPI: TFloatField;
    CmpPe2BASICM: TFloatField;
    CmpPe2TOTICM: TFloatField;
    CmpPe2BASSUB: TFloatField;
    CmpPe2TOTSUB: TFloatField;
    CmpPe2TOTPE2: TFloatField;
    CmpPe2TOTGE2: TFloatField;
    CmpPe2TOTDSC: TFloatField;
    CmpPe2TOTACR: TFloatField;
    CmpPe2CODSTR: TStringField;
    CmpPe2TIPSTR: TStringField;
    CmpPe2REGIPI: TStringField;
    CmpPe2TIPIPI: TStringField;
    CmpPe2TRBIPI: TStringField;
    CmpPe2REDIPI: TFloatField;
    CmpPe2BSCIPI: TFloatField;
    CmpPe2REGICM: TStringField;
    CmpPe2TIPICM: TStringField;
    CmpPe2TRBICM: TStringField;
    CmpPe2REDICM: TFloatField;
    CmpPe2BSCICM: TFloatField;
    CmpPe2INCREV: TFloatField;
    CmpPe2INCFIN: TFloatField;
    CmpPe2FLASEQ: TStringField;
    CmpPe2NROPE2: TIntegerField;
    CmpPe2FLGDUP: TStringField;
    CmpPe2QTIPE3: TIntegerField;
    CmpPe2SEQPE3: TIntegerField;
    CmpPe2FLGRES: TStringField;
    CmpPe2CODITE: TStringField;
    Label11: TLabel;
    Label13: TLabel;
    CmpPedLOGUSU: TStringField;
    Label16: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    CmpPedFLGTAB: TStringField;
    CmpPedTOTVEN: TFloatField;
    CmpPedTOTREN: TFloatField;
    CmpPedDTEFPE: TDateTimeField;
    CmpPedHREFPE: TStringField;
    CmpPedOBSFPE: TMemoField;
    CmpPedUSUFPE: TIntegerField;
    CmpPedFLGRES: TStringField;
    CmpPe2VLQITE: TFloatField;
    CmpPe2FLGVAL: TStringField;
    CmpPe2FLGLAN: TStringField;
    CmpPe2VALVEN: TFloatField;
    CmpPe2TOTVEN: TFloatField;
    CmpPe2TOTREN: TFloatField;
    CmpPe2CODPFO: TStringField;
    CmpPe2QTNPE2: TFloatField;
    CmpPe2OBSPE3: TStringField;
    CmpPe2FLGENT: TStringField;
    procedure DsPedDataChange(Sender: TObject; Field: TField);
    procedure DsPe2DataChange(Sender: TObject; Field: TField);
    procedure grPedKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grPe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grPedKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grPedMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grPe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grPe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    DteEnt : TDateTime;
    CodEmp,NumEnt,SeqEn2 : integer;
  end;

var
  fmManLge: TfmManLge;

implementation

uses Bbmensag, ManEnt, ManGDB;

{$R *.DFM}

procedure TfmManLge.DsPedDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (CmpPe2CodEmp.Value <> CmpPedCodEmp.Value) or (CmpPe2DtePed.Value = CmpPedDtePed.Value) or (CmpPe2NumPed.Value <> CmpPedNumPed.Value) then begin

     CmpPe2.Close;
     CmpPe2.Params[0].AsInteger  := CmpPedCodEmp.Value;
     CmpPe2.Params[1].AsDateTime := CmpPedDtePed.Value;
     CmpPe2.Params[2].AsInteger  := CmpPedNumPed.Value;
     CmpPe2.Open;

  end;
end;

procedure TfmManLge.DsPe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnDesPe2.Caption := ' '+CmpPe2DesPe2.Value;
end;

procedure TfmManLge.grPedKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin

     grPed.Enabled := False;

     grPe2.Enabled := True;

     grPe2.SetFocus;

  end;
end;

procedure TfmManLge.grPe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
DtePed : TDateTime;
CodEmp,NumPed,SeqPe2,NroEn2 : integer;
begin
  inherited;
  if key = 13 then begin

     CmpPe2.First;

     grPe2.Enabled := False;

     grPed.Enabled := True;

     grPed.SetFocus;

  end;

  if key = 32 then begin {Barra de Espaço}

     CodEmp := CmpPe2CodEmp.Value;
     DtePed := CmpPe2DtePed.Value;
     NumPed := CmpPe2NumPed.Value;
     SeqPe2 := CmpPe2SeqPe2.Value;

     if CmpPe2FlgEnt.Value = 'Nao' then begin

        CmpPe2.Edit;

        CmpPe2FlaSeq.Value := '*';

        CmpPe2FlgEnt.Value := 'Sim';

        with CmpPe2 do begin

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
             Text := ' Insert Into CmpPe3 Values(:CodEmp,:DtePed,:NumPed,:SeqPe2,:SeqPe3,:EmpEnt,:DteEnt,:NumEnt,:SeqEn2,:QtpEn2,:NroPe3,:CodTip,:FlgCno)';

             with Params do begin

                  Params[00].AsInteger  := CmpPe2CodEmp.Value;
                  Params[01].AsDateTime := CmpPe2DtePed.Value;
                  Params[02].AsInteger  := CmpPe2NumPed.Value;
                  Params[03].AsInteger  := CmpPe2SeqPe2.Value;
                  Params[04].AsInteger  := 1;
                  Params[05].AsInteger  := fmManEnt.CmpEntCodEmp.Value;
                  Params[06].AsDateTime := fmManEnt.CmpEntDteEnt.Value;
                  Params[07].AsInteger  := fmManEnt.CmpEntNumEnt.Value;
                  Params[08].AsInteger  := 1;
                  Params[09].AsFloat    := CmpPe2SldPe2.Value;
                  Params[10].AsInteger  := 1;
                  Params[11].AsInteger  := fmManEnt.CmpEntCodTip.Value;
                  Params[12].AsString   := 'Nao';

             end;

             ExecSQL;

        end;

        end
     else
        begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select SeqEn2 From CmpPe3'+
                     ' Where CodEmp = :CodEmp'+
                     '   and DtePed = :DtePed'+
                     '   and NumPed = :NumPed'+
                     '   and SeqPe2 = :SeqPe2'+
                     '   and EmpEnt = :EmpEnt'+
                     '   and DteEnt = :DteEnt'+
                     '   and NumEnt = :NumEnt';

             with Params do begin

                  Params[00].AsInteger  := CmpPe2CodEmp.Value;
                  Params[01].AsDateTime := CmpPe2DtePed.Value;
                  Params[02].AsInteger  := CmpPe2NumPed.Value;
                  Params[03].AsInteger  := CmpPe2SeqPe2.Value;
                  Params[04].AsInteger  := fmManEnt.CmpEntCodEmp.Value;
                  Params[05].AsDateTime := fmManEnt.CmpEntDteEnt.Value;
                  Params[06].AsInteger  := fmManEnt.CmpEntNumEnt.Value;

             end;

             Open;

             NroEn2 := FieldbyName('SeqEn2').AsInteger;

        end;

        if NroEn2 > 0 then begin

           CmpPe2.Edit;

           CmpPe2FlaSeq.Value := '*';

           CmpPe2FlgEnt.Value := 'Nao';

           with CmpPe2 do begin

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
                Text := ' Delete From CmpEn2'+
                        ' Where CodEmp = :CodEmp'+
                        '   and DteEnt = :DteEnt'+
                        '   and NumEnt = :NumEnt'+
                        '   and SeqEn2 = :SeqEn2';

                with Params do begin

                     Params[0].AsInteger  := fmManEnt.CmpEntCodEmp.Value;
                     Params[1].AsDateTime := fmManEnt.CmpEntDteEnt.Value;
                     Params[2].AsInteger  := fmManEnt.CmpEntNumEnt.Value;
                     Params[3].AsInteger  := NroEn2;

                end;

                ExecSQL;

           end;

           end
        else
           fmsgErro('Item não Encontrado na Entrada de Mercadorias.',Nil);

     end;

     CmpPe2.Close;
     CmpPe2.Open;

     fmManEnt.CmpEnt.Close;
     fmManEnt.CmpEnt.Open;

     fmManEnt.CmpEn2.Close;
     fmManEnt.CmpEn2.Open;

     fmManEnt.CmpEn2.Last;

     fmManEnt.CmpEn2.Locate('CodEmp;DteEnt;NumEnt;SeqEn2',VarArrayOf([CodEmp,DteEnt,NumEnt,SeqEn2]), [loPartialKey]);

     CmpPe2.Locate('CodEmp;DtePed;NumPed;SeqPe2',VarArrayOf([CodEmp,DtePed,NumPed,SeqPe2]), [loPartialKey]);

  end;
end;

procedure TfmManLge.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if grPe2.Enabled then begin

        CmpPe2.First;

        grPe2.Enabled := False;

        grPed.Enabled := True;

        grPed.SetFocus;

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
       Text := ' Update CmpPe2 Set FlaSeq = '''+ '*' +''',FlgEnt = '''+ 'Nao' +''''+
               ' Where CodEmp = :CodEmp'+
               '   and DtePed = :DtePed'+
               '   and NumPed = :NumPed'+
               '   and FlgEnt = :FlgEnt';

       with Params do begin

            Params[0].AsInteger  := CmpPe2CodEmp.Value;
            Params[1].AsDateTime := CmpPe2DtePed.Value;
            Params[2].AsInteger  := CmpPe2NumPed.Value;
            Params[3].AsString   := 'Sim';

       end;

       ExecSQL;

  end;
end;

procedure TfmManLge.grPedKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Janela';
end;

procedure TfmManLge.grPedMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Janela';
end;

procedure TfmManLge.grPe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Janela BARRA DE ESPAÇO-Selecionar/Não Selecionar Item';
end;

procedure TfmManLge.grPe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Janela BARRA DE ESPAÇO-Selecionar/Não Selecionar o Item';
end;

end.
