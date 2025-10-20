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
    CmpPedDTEPED: TDateTimeField;
    CmpPedHREPED: TStringField;
    CmpPedTOTIPI: TFloatField;
    CmpPedTOTPED: TFloatField;
    CmpPedTOTGER: TFloatField;
    CmpPedSITPED: TStringField;
    CmpPe2QTPPE2: TFloatField;
    CmpPe2QTRPE2: TFloatField;
    CmpPe2SLDPE2: TFloatField;
    CmpPe2VLQPE2: TFloatField;
    CmpPe2IPIPE2: TFloatField;
    CmpPe2ICMPE2: TFloatField;
    CmpPe2TOTIPI: TFloatField;
    CmpPe2TOTPE2: TFloatField;
    Label11: TLabel;
    Label13: TLabel;
    CmpPedLOGUSU: TStringField;
    Label16: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    CmpPe2FLGENT: TStringField;
    CmpPedID_CMPPED: TIntegerField;
    CmpPedTOTSUB: TFloatField;
    CmpPe2ID_CMPPE2: TIntegerField;
    CmpPe2CODCLP: TStringField;
    CmpPe2CODGRU: TStringField;
    CmpPe2CODSUB: TStringField;
    CmpPe2CODPRO: TStringField;
    CmpPe2DESPE2: TStringField;
    CmpPe2CODITE: TStringField;
    CmpPe2FLGATU: TStringField;
    quSQL1: TwwQuery;
    procedure DsPe2DataChange(Sender: TObject; Field: TField);
    procedure grPedKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grPe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grPedKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grPedMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grPe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grPe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure CmpPe2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManLge: TfmManLge;

implementation

uses Bbmensag, ManEnt, ManGDB;

{$R *.DFM}

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
  Id_CmpPe2,Id_CmpEn2 : integer;
begin
  inherited;
  if key = 13 then begin

     CmpPe2.First;

     grPe2.Enabled := False;

     grPed.Enabled := True;

     grPed.SetFocus;

  end;

  if key = 32 then begin {Barra de Espaço}

     if CmpPe2Id_CmpPe2.Value > 0 then begin
     
        Id_CmpPe2 := CmpPe2Id_CmpPe2.Value;

        if CmpPe2FlgEnt.Value = 'Nao' then begin

           CmpPe2.Edit;

           CmpPe2FlgAtu.Value := '*';

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
                Text := ' Insert Into CmpPe3(Id_CmpPe3,Id_CmpPed,Id_CmpPe2,Id_CmpEnt,QtpEn2,CodTip,FlgCno,NroPe3)'+
                        '             Values(:Id_CmpPe3,:Id_CmpPed,:Id_CmpPe2,:Id_CmpEnt,:QtpEn2,:CodTip,:FlgCno,:NroPe3)';

                with Params do begin

                     Params[00].AsInteger := 1;
                     Params[01].AsInteger := CmpPedId_CmpPed.Value;
                     Params[02].AsInteger := CmpPe2Id_CmpPe2.Value;
                     Params[03].AsInteger := fmManEnt.CmpEntId_CmpEnt.Value;
                     Params[04].AsFloat   := CmpPe2SldPe2.Value;
                     Params[05].AsInteger := fmManEnt.CmpEntCodTip.Value;
                     Params[06].AsString  := 'Nao';
                     Params[07].AsInteger := 1;

                end;

                ExecSQL;

           end;

           end
        else
           begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select CmpPe3.Id_CmpEn2'+
                        ' From CmpPe3'+
                        ' Where CmpPe3.Id_CmpPe2 = :Id_CmpPe2'+
                        '   and CmpPe3.Id_CmpEnt = :Id_CmpEmp';

                with Params do begin

                     Params[00].AsInteger := CmpPe2Id_CmpPe2.Value;
                     Params[01].AsInteger := fmManEnt.CmpEntId_CmpEnt.Value;

                end;

                Open;

                Id_CmpEn2 := FieldbyName('Id_CmpEn2').AsInteger;

           end;

           if Id_CmpEn2 > 0 then begin

              CmpPe2.Edit;

              CmpPe2FlgAtu.Value := '*';

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
                   Text := ' Delete From CmpEn2 Where CmpEn2.Id_CmpEn2 = '+ QuotedStr(IntToStr(Id_CmpEn2));
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

        CmpPe2.Locate('Id_CmpPe2',Id_CmpPe2, [loPartialKey]);

     end;
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
       Text := ' Select * From CmpPe3'+
               ' Where CmpPe3.Id_CmpEnt = '+ QuotedStr(IntToStr(fmManEnt.CmpEntId_CmpEnt.Value));
       Open;

  end;

  while not quSQL.EOF do begin

        with quSQL1,SQL do begin

             Close;
             Text := ' Update CmpPe2 Set FlgAtu = '+ QuotedStr('*')   + ',' +
                     '                   FlgEnt = '+ QuotedStr('Nao') +
                     ' Where CmpPe2.Id_CmpPe2 = '+ QuotedStr(IntToStr(quSQL.FieldbyName('Id_CmpPe2').AsInteger)) +
                     '   and CmpPe2.FlgEnt    = '+ QuotedStr('Sim');
             ExecSQL;

        end;

        quSQL.Next;

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

procedure TfmManLge.CmpPe2CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if Trim(CmpPe2CodClp.Value) <> '' then
     Text := CmpPe2CodClp.Value+'-'+CmpPe2CodGru.Value+'.'+CmpPe2CodSub.Value+'.'+CmpPe2CodPro.Value
  else
     Text := '';
end;

end.
