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
    Label11: TLabel;
    Label13: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    CmpNfsDTEFAT: TDateTimeField;
    CmpNfsHREFAT: TStringField;
    CmpNfsNRONFS: TIntegerField;
    CmpNfsTOTIPI: TFloatField;
    CmpNfsTOTITE: TFloatField;
    CmpNfsTOTGER: TFloatField;
    CmpNfsSITNFS: TStringField;
    CmpNfsLOGUSU: TStringField;
    CmpNf2QTPNF2: TFloatField;
    CmpNf2QTDNF2: TFloatField;
    CmpNf2SLDNF2: TFloatField;
    CmpNf2VLUNF2: TFloatField;
    CmpNf2IPINF2: TFloatField;
    CmpNf2ICMNF2: TFloatField;
    CmpNf2TOTIPI: TFloatField;
    CmpNf2TOTITE: TFloatField;
    CmpNf2FLGENT: TStringField;
    Label19: TLabel;
    CmpNfsID_CMPNFS: TIntegerField;
    CmpNf2ID_CMPNF2: TIntegerField;
    CmpNf2CODCLP: TStringField;
    CmpNf2CODGRU: TStringField;
    CmpNf2CODSUB: TStringField;
    CmpNf2CODPRO: TStringField;
    CmpNf2DESNF2: TStringField;
    CmpNf2FLGATU: TStringField;
    CmpNf2CODITE: TStringField;
    quSQL1: TwwQuery;
    procedure DsNf2DataChange(Sender: TObject; Field: TField);
    procedure grNfsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grNf2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grNfsKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grNfsMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grNf2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grNf2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CmpNf2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManRma: TfmManRma;

implementation

uses Bbmensag, ManEnt, ManGDB;

{$R *.DFM}

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
  Id_CmpNf2,Id_CmpEn2 : integer;
begin
  inherited;
  if key = 13 then begin

     CmpNf2.First;

     grNf2.Enabled := False;

     grNfs.Enabled := True;

     grNfs.SetFocus;

  end;

  if key = 32 then begin {Barra de Espaço}

     Id_CmpNf2 := CmpNf2Id_CmpNf2.Value;

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
             Text := ' Insert Into CmpNfe(Id_CmpNfe,Id_CmpNfs,Id_CmpNf2,Id_CmpEnt,QtpEn2,CodTip,NroNfe)'+
                     '             Values(:Id_CmpNfe,:Id_CmpNfs,:Id_CmpNf2,:Id_CmpEnt,:QtpEn2,:CodTip,:NroNfe)';

             with Params do begin

                  Params[00].AsInteger  := 1;
                  Params[01].AsInteger  := CmpNfsId_CmpNfs.Value;
                  Params[02].AsInteger  := CmpNf2Id_CmpNf2.Value;
                  Params[03].AsInteger  := fmManEnt.CmpEntId_CmpEnt.Value;
                  Params[04].AsFloat    := 0;
                  Params[05].AsInteger  := fmManEnt.CmpEntCodTip.Value;
                  Params[06].AsInteger  := 1;

             end;

             ExecSQL;

        end;

        end
     else
        begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select CmpNfe.Id_CmpEn2'+
                     ' From CmpNfe'+
                     ' Where CmpNfe.Id_CmpNf2 = :Id_CmpNf2'+
                     '   and CmpNfe.Id_CmpEmp = :Id_CmpEnt';

             with Params do begin

                  Params[00].AsInteger := CmpNf2Id_CmpNf2.Value;
                  Params[01].AsInteger := fmManEnt.CmpEntId_CmpEnt.Value;

             end;

             Open;

             Id_CmpEn2 := FieldbyName('Id_CmpEn2').AsInteger;

        end;

        if Id_CmpEn2 > 0 then begin

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
                Text := ' Delete From CmpEn2 Where CmpEn2.Id_CmpEn2 = '+ QuotedStr(IntToStr(Id_CmpEn2));
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

     CmpNf2.Locate('Id_CmpNf2',Id_CmpNf2, [loPartialKey]);

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
       Text := ' Select * From CmpNfe'+
               ' Where CmpNfe.Id_CmpEnt = '+ QuotedStr(IntToStr(fmManEnt.CmpEntId_CmpEnt.Value));
       Open;

  end;

  while not quSQL.EOF do begin

        with quSQL1,SQL do begin

             Close;
             Text := ' Update CmpNf2 Set FlgAtu = '+ QuotedStr('*')   + ',' +
                     '                   FlgEnt = '+ QuotedStr('Nao') +
                     ' Where CmpNf2.Id_CmpNf2 = '+ QuotedStr(IntToStr(quSQL.FieldbyName('Id_CmpNf2').AsInteger)) +
                     '   and CmpNf2.FlgEnt    = '+ QuotedStr('Sim');
             ExecSQL;

        end;

        quSQL.Next;

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

procedure TfmManRma.CmpNf2CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if CmpNf2Id_CmpNf2.Value > 0 then
     Text := CmpNf2CodClp.Value+'-'+CmpNf2CodGru.Value+'.'+CmpNf2CodSub.Value+'.'+CmpNf2CodPro.Value
  else
     Text := '';
end;

end.
