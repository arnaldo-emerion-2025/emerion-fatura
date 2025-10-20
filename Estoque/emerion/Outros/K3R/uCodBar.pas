unit uCodBar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, dxfProgressBar, Db, DBTables;

type
  TfrmPrincipal = class(TForm)
    btnconfirmar: TBitBtn;
    ProgressBar: TdxfProgressBar;
    EstPro: TQuery;
    EstProCODCLP: TStringField;
    EstProCODGRU: TStringField;
    EstProCODSUB: TStringField;
    EstProCODPRO: TStringField;
    EstProCBAEMB: TStringField;
    quSQL: TQuery;
    procedure btnconfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.DFM}

procedure TfrmPrincipal.btnconfirmarClick(Sender: TObject);
begin

  btnconfirmar.Enabled := False;
  
  with quSQL,SQL do begin

       Close;
       Text := ' Select Count(*) as QtdReg From EstPro';
       Open;

       ProgressBar.Max := FieldbyName('QtdReg').AsInteger;

  end;

  EstPro.Close;
  EstPro.Params[0].AsString := '1';
  EstPro.Open;
  EstPro.First;

  while not EstPro.EOF do begin

        if Trim(EstProCbaEmb.Value) <> '' then begin
                
           with quSQL,SQL do begin

                Close;
                Text := ' Select Count(*) as QtdReg From EstBar'+
                        ' Where EstBar.CodClp = :CodClp'+
                        '   and EstBar.CodGru = :CodGru'+
                        '   and EstBar.CodSub = :CodSub'+
                        '   and EstBar.CodPro = :CodPro'+
                        '   and EstBar.CodBar = :CodBar';

                with Params do begin

                     Params[0].AsString := EstProCodClp.Value;
                     Params[1].AsString := EstProCodGru.Value;
                     Params[2].AsString := EstProCodSub.Value;
                     Params[3].AsString := EstProCodPro.Value;
                     Params[4].AsString := EstProCbaEmb.Value;

                end;

                Open;
                
           end;

           if quSQL.FieldbyName('QtdReg').AsInteger = 0 then begin

              try

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Insert Into EstBar(CodClp,CodGru,CodSub,CodPro,SeqBar,CodBar,NroBar,FlgInt,QtdEmb,TipEmb)'+
                              '             values(:CodClp,:CodGru,:CodSub,:CodPro,:SeqBar,:CodBar,:NroBar,:FlgInt,:QtdEmb,:TipEmb)';

                      with Params do begin

                           Params[0].AsString  := EstProCodClp.Value;
                           Params[1].AsString  := EstProCodGru.Value;
                           Params[2].AsString  := EstProCodSub.Value;
                           Params[3].AsString  := EstProCodPro.Value;
                           Params[4].AsInteger := 1;
                           Params[5].AsString  := EstProCbaEmb.Value;
                           Params[6].AsInteger := 1;
                           Params[7].AsString  := 'Nao';
                           Params[8].AsFloat   := 1;
                           Params[9].AsString  := 'Unidade';

                      end;

                      ExecSQL;

                 end;

              except

              end;   
           end;
        end;

        EstPro.Next;

        ProgressBar.StepBy(1);
        
  end;

  ProgressBar.Position := 0;

  btnconfirmar.Enabled := True;

  close;
  
end;

end.
