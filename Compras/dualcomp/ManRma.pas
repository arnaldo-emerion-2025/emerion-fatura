unit ManRma;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, dxCntner, dxExEdtr, dxEdLib, dxDBELib, Db, DBTables, Grids,
  Wwdbigrd, Wwdbgrid, hGrid, ExtCtrls, StdCtrls, Wwquery;

type
  TfmManRma = class(TfmShowPadrao)
    dbNfs: TdxDBGraphicEdit;
    CmpNfs: TQuery;
    CmpNf2: TQuery;
    UpNf2: TUpdateSQL;
    DsNfs: TDataSource;
    DsNf2: TDataSource;
    grNfs: ThGrid;
    PaintBox: TPaintBox;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label32: TLabel;
    Label15: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label14: TLabel;
    dbNf2: TdxDBGraphicEdit;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    grNf2: ThGrid;
    Label8: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    LbText: TLabel;
    Label12: TLabel;
    pnDesNf2: TPanel;
    quSql: TwwQuery;
    CmpNf2CODITE: TStringField;
    Label11: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    CmpNfsCODEMP: TIntegerField;
    CmpNfsDTENFS: TDateTimeField;
    CmpNfsSEQNFS: TIntegerField;
    CmpNfsDTEFAT: TDateTimeField;
    CmpNfsHREFAT: TStringField;
    CmpNfsUFENFS: TStringField;
    CmpNfsCODPFA: TStringField;
    CmpNfsTIPPFA: TStringField;
    CmpNfsMODPFA: TStringField;
    CmpNfsCODFOR: TIntegerField;
    CmpNfsPERPIS: TFloatField;
    CmpNfsPERCOF: TFloatField;
    CmpNfsCODFIL: TIntegerField;
    CmpNfsQTDNFS: TIntegerField;
    CmpNfsNRONFS: TIntegerField;
    CmpNfsCGCFOR: TStringField;
    CmpNfsINSFOR: TStringField;
    CmpNfsCODCF1: TStringField;
    CmpNfsCODCF2: TStringField;
    CmpNfsFRTNFS: TStringField;
    CmpNfsFLGENT: TStringField;
    CmpNfsFLGSAI: TStringField;
    CmpNfsDESNAT: TStringField;
    CmpNfsINSSUB: TStringField;
    CmpNfsTIPFRT: TStringField;
    CmpNfsMARNFS: TStringField;
    CmpNfsNUMNFS: TStringField;
    CmpNfsESPNFS: TStringField;
    CmpNfsNOMTRA: TStringField;
    CmpNfsCGCTRA: TStringField;
    CmpNfsINSTRA: TStringField;
    CmpNfsCEPTRA: TStringField;
    CmpNfsTENTRA: TStringField;
    CmpNfsENDTRA: TStringField;
    CmpNfsREFTRA: TStringField;
    CmpNfsNUMTRA: TStringField;
    CmpNfsBAITRA: TStringField;
    CmpNfsCIDTRA: TStringField;
    CmpNfsUFETRA: TStringField;
    CmpNfsPLCTRA: TStringField;
    CmpNfsPRTTRA: TStringField;
    CmpNfsFONTRA: TStringField;
    CmpNfsUFEPLC: TStringField;
    CmpNfsCEPFOR: TStringField;
    CmpNfsTENFOR: TStringField;
    CmpNfsENDFOR: TStringField;
    CmpNfsREFFOR: TStringField;
    CmpNfsNUMFOR: TStringField;
    CmpNfsBAIFOR: TStringField;
    CmpNfsCIDFOR: TStringField;
    CmpNfsUFEFOR: TStringField;
    CmpNfsTXFIPI: TStringField;
    CmpNfsTXFICM: TStringField;
    CmpNfsOBSNFS: TStringField;
    CmpNfsSEQITE: TIntegerField;
    CmpNfsQTINFS: TIntegerField;
    CmpNfsLINNFS: TIntegerField;
    CmpNfsQTDVOL: TIntegerField;
    CmpNfsALTVOL: TIntegerField;
    CmpNfsINFLIQ: TFloatField;
    CmpNfsTOTLIQ: TFloatField;
    CmpNfsINFBRT: TFloatField;
    CmpNfsTOTBRT: TFloatField;
    CmpNfsBASIPI: TFloatField;
    CmpNfsTOTIPI: TFloatField;
    CmpNfsBASICM: TFloatField;
    CmpNfsTOTICM: TFloatField;
    CmpNfsBASSUB: TFloatField;
    CmpNfsTOTSUB: TFloatField;
    CmpNfsTOTITE: TFloatField;
    CmpNfsTOTGER: TFloatField;
    CmpNfsTOTPIS: TFloatField;
    CmpNfsTOTCOF: TFloatField;
    CmpNfsTOTFRT: TFloatField;
    CmpNfsTOTSEG: TFloatField;
    CmpNfsTOTDES: TFloatField;
    CmpNfsICMFRT: TFloatField;
    CmpNfsBSICMF: TFloatField;
    CmpNfsBAICMF: TFloatField;
    CmpNfsTOICMF: TFloatField;
    CmpNfsICMSEG: TFloatField;
    CmpNfsBSICMS: TFloatField;
    CmpNfsBAICMS: TFloatField;
    CmpNfsTOICMS: TFloatField;
    CmpNfsICMDES: TFloatField;
    CmpNfsBSICMD: TFloatField;
    CmpNfsBAICMD: TFloatField;
    CmpNfsTOICMD: TFloatField;
    CmpNfsIPIFRT: TFloatField;
    CmpNfsBSIPIF: TFloatField;
    CmpNfsBAIPIF: TFloatField;
    CmpNfsTOIPIF: TFloatField;
    CmpNfsIPISEG: TFloatField;
    CmpNfsBSIPIS: TFloatField;
    CmpNfsBAIPIS: TFloatField;
    CmpNfsTOIPIS: TFloatField;
    CmpNfsIPIDES: TFloatField;
    CmpNfsBSIPID: TFloatField;
    CmpNfsBAIPID: TFloatField;
    CmpNfsTOIPID: TFloatField;
    CmpNfsBASIP1: TFloatField;
    CmpNfsTOTIP1: TFloatField;
    CmpNfsBASIC1: TFloatField;
    CmpNfsTOTIC1: TFloatField;
    CmpNfsBASSU1: TFloatField;
    CmpNfsTOTSU1: TFloatField;
    CmpNfsTOTIT1: TFloatField;
    CmpNfsTOTGE1: TFloatField;
    CmpNfsCODUSU: TIntegerField;
    CmpNfsHRCNFS: TStringField;
    CmpNfsDTCNFS: TDateTimeField;
    CmpNfsUSCNFS: TIntegerField;
    CmpNfsOBCNFS: TStringField;
    CmpNfsATUEST: TStringField;
    CmpNfsLANEST: TStringField;
    CmpNfsINTFIN: TStringField;
    CmpNfsCONSUM: TStringField;
    CmpNfsFLGCTB: TStringField;
    CmpNfsCODIPI: TStringField;
    CmpNfsTIPIPI: TStringField;
    CmpNfsTRBIPI: TStringField;
    CmpNfsREDIPI: TFloatField;
    CmpNfsBSCIPI: TFloatField;
    CmpNfsCODICM: TStringField;
    CmpNfsTIPICM: TStringField;
    CmpNfsTRBICM: TStringField;
    CmpNfsREDICM: TFloatField;
    CmpNfsBSCICM: TFloatField;
    CmpNfsINCREV: TFloatField;
    CmpNfsINCFIN: TFloatField;
    CmpNfsNROCOL: TStringField;
    CmpNfsDESREG: TStringField;
    CmpNfsSEQOPE: TStringField;
    CmpNfsSITNFS: TStringField;
    CmpNfsFLGNFS: TStringField;
    CmpNfsFLGATU: TStringField;
    CmpNfsLOGUSU: TStringField;
    CmpNf2CODEMP: TIntegerField;
    CmpNf2DTENFS: TDateTimeField;
    CmpNf2SEQNFS: TIntegerField;
    CmpNf2SEQNF2: TIntegerField;
    CmpNf2CODEIT: TIntegerField;
    CmpNf2CODCLP: TStringField;
    CmpNf2CODGRU: TStringField;
    CmpNf2CODSUB: TStringField;
    CmpNf2CODPRO: TStringField;
    CmpNf2CODTAM: TStringField;
    CmpNf2CODCOR: TStringField;
    CmpNf2DESNF2: TStringField;
    CmpNf2OBSNF2: TStringField;
    CmpNf2CODST1: TStringField;
    CmpNf2CODST2: TStringField;
    CmpNf2CODUND: TStringField;
    CmpNf2REFNF2: TStringField;
    CmpNf2LIQNF2: TFloatField;
    CmpNf2BRTNF2: TFloatField;
    CmpNf2LINNF2: TIntegerField;
    CmpNf2QTPNF2: TFloatField;
    CmpNf2QTDNF2: TFloatField;
    CmpNf2SLDNF2: TFloatField;
    CmpNf2VLUNF2: TFloatField;
    CmpNf2IPINF2: TFloatField;
    CmpNf2CLSIPI: TStringField;
    CmpNf2SEQNFG: TIntegerField;
    CmpNf2SEQNF3: TIntegerField;
    CmpNf2ICMNF2: TFloatField;
    CmpNf2BASIPI: TFloatField;
    CmpNf2TOTIPI: TFloatField;
    CmpNf2BASICM: TFloatField;
    CmpNf2TOTICM: TFloatField;
    CmpNf2BASSUB: TFloatField;
    CmpNf2TOTSUB: TFloatField;
    CmpNf2TOTITE: TFloatField;
    CmpNf2TOTNF2: TFloatField;
    CmpNf2TOTLIQ: TFloatField;
    CmpNf2TOTBRT: TFloatField;
    CmpNf2TOTPIS: TFloatField;
    CmpNf2TOTCOF: TFloatField;
    CmpNf2CODSTR: TStringField;
    CmpNf2TIPSTR: TStringField;
    CmpNf2REGIPI: TStringField;
    CmpNf2TIPIPI: TStringField;
    CmpNf2TRBIPI: TStringField;
    CmpNf2REDIPI: TFloatField;
    CmpNf2BSCIPI: TFloatField;
    CmpNf2REGICM: TStringField;
    CmpNf2TIPICM: TStringField;
    CmpNf2TRBICM: TStringField;
    CmpNf2REDICM: TFloatField;
    CmpNf2BSCICM: TFloatField;
    CmpNf2INCREV: TFloatField;
    CmpNf2INCFIN: TFloatField;
    CmpNf2NRONFS: TIntegerField;
    CmpNf2NRONF2: TIntegerField;
    CmpNf2FLGATU: TStringField;
    CmpNf2FLGENT: TStringField;
    Label19: TLabel;
    procedure DsNfsDataChange(Sender: TObject; Field: TField);
    procedure DsNf2DataChange(Sender: TObject; Field: TField);
    procedure grNfsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grNf2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grNfsKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grNfsMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grNf2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grNf2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    DteEnt : TDateTime;
    CodEmp,NumEnt,SeqEn2 : integer;
  end;

var
  fmManRma: TfmManRma;

implementation

uses Bbmensag, ManEnt, ManGDB;

{$R *.DFM}

procedure TfmManRma.DsNfsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (CmpNf2CodEmp.Value <> CmpNfsCodEmp.Value) or (CmpNf2DteNfs.Value <> CmpNfsDteNfs.Value) or (CmpNf2SeqNfs.Value <> CmpNfsSeqNfs.Value) then begin

     CmpNf2.Close;
     CmpNf2.Params[0].AsInteger  := CmpNfsCodEmp.Value;
     CmpNf2.Params[1].AsDateTime := CmpNfsDteNfs.Value;
     CmpNf2.Params[2].AsInteger  := CmpNfsSeqNfs.Value;
     CmpNf2.Open;

  end;
end;

procedure TfmManRma.DsNf2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnDesNf2.Caption := ' '+CmpNf2DesNf2.Value;
end;

procedure TfmManRma.grNfsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin

     grNfs.Enabled := False;

     grNf2.Enabled := True;

     grNf2.SetFocus;

  end;
end;

procedure TfmManRma.grNf2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
DteNfs : TDateTime;
CodEmp,SeqNfs,SeqNf2,NroEn2 : integer;
begin
  inherited;
  if key = 13 then begin

     CmpNf2.First;

     grNf2.Enabled := False;

     grNfs.Enabled := True;

     grNfs.SetFocus;

  end;

  if key = 32 then begin {Barra de Espaço}

     CodEmp := CmpNf2CodEmp.Value;
     DteNfs := CmpNf2DteNfs.Value;
     SeqNfs := CmpNf2SeqNfs.Value;
     SeqNf2 := CmpNf2SeqNf2.Value;

     if CmpNf2FlgEnt.Value = 'Nao' then begin

        CmpNf2.Edit;

        CmpNf2FlgAtu.Value := '*';
        CmpNf2FlgEnt.Value := 'Sim';

        with CmpNf2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpNf2.State <> dsBrowse then CmpNf2.CancelUpdates;

                grNf2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into CmpNfe Values(:CodEmp,:DteNfs,:SeqNfs,:SeqNf2,:SeqNfe,:EmpEnt,:DteEnt,:NumEnt,:SeqEn2,:QtpEn2,:NroNfe,:CodTip)';

             with Params do begin

                  Params[00].AsInteger  := CmpNf2CodEmp.Value;
                  Params[01].AsDateTime := CmpNf2DteNfs.Value;
                  Params[02].AsInteger  := CmpNf2SeqNfs.Value;
                  Params[03].AsInteger  := CmpNf2SeqNf2.Value;
                  Params[04].AsInteger  := 1;
                  Params[05].AsInteger  := fmManEnt.CmpEntCodEmp.Value;
                  Params[06].AsDateTime := fmManEnt.CmpEntDteEnt.Value;
                  Params[07].AsInteger  := fmManEnt.CmpEntNumEnt.Value;
                  Params[08].AsInteger  := 1;
                  Params[09].AsFloat    := 0;
                  Params[10].AsInteger  := 1;
                  Params[11].AsInteger  := fmManEnt.CmpEntCodTip.Value;

             end;

             ExecSQL;

        end;

        end
     else
        begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select SeqEn2 From CmpNfe'+
                     ' Where CodEmp = :CodEmp'+
                     '   and DteNfs = :DteNfs'+
                     '   and SeqNfs = :SeqNfs'+
                     '   and SeqNf2 = :SeqNf2'+
                     '   and EmpEnt = :EmpEnt'+
                     '   and DteEnt = :DteEnt'+
                     '   and NumEnt = :NumEnt';

             with Params do begin

                  Params[00].AsInteger  := CmpNf2CodEmp.Value;
                  Params[01].AsDateTime := CmpNf2DteNfs.Value;
                  Params[02].AsInteger  := CmpNf2SeqNfs.Value;
                  Params[03].AsInteger  := CmpNf2SeqNf2.Value;
                  Params[04].AsInteger  := fmManEnt.CmpEntCodEmp.Value;
                  Params[05].AsDateTime := fmManEnt.CmpEntDteEnt.Value;
                  Params[06].AsInteger  := fmManEnt.CmpEntNumEnt.Value;

             end;

             Open;

             NroEn2 := FieldbyName('SeqEn2').AsInteger;

        end;

        if NroEn2 > 0 then begin

           CmpNf2.Edit;

           CmpNf2FlgAtu.Value := '*';

           CmpNf2FlgEnt.Value := 'Nao';

           with CmpNf2 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if CmpNf2.State <> dsBrowse then CmpNf2.CancelUpdates;

                   grNf2.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Delete From CmpEn2'+
                        ' Where CmpEn2.CodEmp = :CodEmp'+
                        '   and CmpEn2.DteEnt = :DteEnt'+
                        '   and CmpEn2.NumEnt = :NumEnt'+
                        '   and CmpEn2.SeqEn2 = :SeqEn2';

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

     CmpNf2.Close;
     CmpNf2.Open;

     fmManEnt.CmpEnt.Close;
     fmManEnt.CmpEnt.Open;

     fmManEnt.CmpEn2.Close;
     fmManEnt.CmpEn2.Open;

     fmManEnt.CmpEn2.Last;

     fmManEnt.CmpEn2.Locate('CodEmp;DteEnt;NumEnt;SeqEn2',VarArrayOf([CodEmp,DteEnt,NumEnt,SeqEn2]), [loPartialKey]);

     CmpNf2.Locate('CodEmp;DteNfs;SeqNfs;SeqNf2',VarArrayOf([CodEmp,DteNfs,SeqNfs,SeqNf2]), [loPartialKey]);

  end;
end;

procedure TfmManRma.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if grNf2.Enabled then begin

        CmpNf2.First;

        grNf2.Enabled := False;

        grNfs.Enabled := True;

        grNfs.SetFocus;

        end
     else
        Close;
  end;
end;

procedure TfmManRma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Update CmpNf2 Set FlgAtu = '''+ '*' +''',FlgEnt = '''+ 'Nao' +''''+
               ' Where CmpNf2.CodEmp = :CodEmp'+
               '   and CmpNf2.DteNfs = :DteNfs'+
               '   and CmpNf2.SeqNfs = :SeqNfs'+
               '   and CmpNf2.FlgEnt = :FlgEnt';

       with Params do begin

            Params[0].AsInteger  := CmpNf2CodEmp.Value;
            Params[1].AsDateTime := CmpNf2DteNfs.Value;
            Params[2].AsInteger  := CmpNf2SeqNfs.Value;
            Params[3].AsString   := 'Sim';

       end;

       ExecSQL;

  end;
end;

procedure TfmManRma.grNfsKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Janela';
end;

procedure TfmManRma.grNfsMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Janela';
end;

procedure TfmManRma.grNf2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Janela BARRA DE ESPAÇO-Selecionar/Não Selecionar Item';
end;

procedure TfmManRma.grNf2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  LbText.Caption := 'ENTER-Alterar Janela BARRA DE ESPAÇO-Selecionar/Não Selecionar o Item';
end;

end.
