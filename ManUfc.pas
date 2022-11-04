unit ManUfc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Buttons, dxCntner, dxEditor, dxEdLib,
  dxColorEdit, dxfProgressBar, Db, DBTables, Wwquery;

type
  TfmManUfc = class(TfmPadrao)
    PaintBox: TPaintBox;
    Label1: TLabel;
    Label2: TLabel;
    EdPsqSigUfe2: TdxColorEdit;
    EdPsqSigUfe1: TdxColorEdit;
    Label6: TLabel;
    Label7: TLabel;
    bPsqUfe1: TSpeedButton;
    bPsqUfe2: TSpeedButton;
    EdPsqNomUfe2: TdxColorEdit;
    EdPsqNomUfe1: TdxColorEdit;
    pnSequenc: TPanel;
    ProgressBar: TdxfProgressBar;
    bConfirmar: TBitBtn;
    quSql: TwwQuery;
    quSQL1: TwwQuery;
    pnCodIte: TLabel;
    procedure PaintBoxPaint(Sender: TObject);
    procedure bPsqUfe1Click(Sender: TObject);
    procedure bPsqUfe2Click(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure EdPsqSigUfe1Exit(Sender: TObject);
    procedure EdPsqSigUfe2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManUfc: TfmManUfc;

implementation

uses dxDemoUtils, Bbmensag, ManGDB, PsqUfe;

{$R *.DFM}

procedure TfmManUfc.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManUfc.bPsqUfe1Click(Sender: TObject);
begin
  inherited;

  try

    fmPsqUfe := TfmPsqUfe.Create(Self);
    fmPsqUfe.ShowModal;

    if Trim(fmPsqUfe.SigUfe) <> '' then
    begin

      EdPsqSigUfe1.Text := fmPsqUfe.SigUfe;
      EdPsqNomUfe1.Text := fmPsqUfe.NomUfe;

    end;

  finally

    FreeAndNil(fmPsqUfe);

  end;
end;

procedure TfmManUfc.bPsqUfe2Click(Sender: TObject);
begin
  inherited;

  try

    fmPsqUfe := TfmPsqUfe.Create(Self);
    fmPsqUfe.ShowModal;

    if Trim(fmPsqUfe.SigUfe) <> '' then
    begin

      EdPsqSigUfe2.Text := fmPsqUfe.SigUfe;
      EdPsqNomUfe2.Text := fmPsqUfe.NomUfe;

    end;

  finally

    FreeAndNil(fmPsqUfe);

  end;
end;

procedure TfmManUfc.bConfirmarClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    ActiveControl := nil;

    if Trim(EdPsqSigUfe1.Text) = '' then
      fmsgErro('Campo de Preenchimento Obrigatório não Informado.', EdPsqSigUfe1);

    if Trim(EdPsqSigUfe2.Text) = '' then
      fmsgErro('Campo de Preenchimento Obrigatório não Informado.', EdPsqSigUfe2);

    if Trim(EdPsqSigUfe2.Text) = Trim(EdPsqSigUfe1.Text) then
      fmsgErro('UF de Destino igual ao de Origem. Verificar.', EdPsqSigUfe2);

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select Count(*) as QtdReg From GerPro Where GerPro.SigUfe = ' + QuotedStr(EdPsqSigUfe1.Text);
      Open;

    end;

    ProgressBar.Min := 0;
    ProgressBar.Max := quSQL.FieldbyName('QtdReg').AsInteger;

    ProgressBar.Position := 0;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select * From GerPro Where GerPro.SigUfe = ' + QuotedStr(EdPsqSigUfe1.Text);
      Open;
      First;

    end;

    while not quSQL.EOF do
    begin

      pnCodIte.Caption := quSQL.FieldbyName('CodGru').AsString + '.' +
        quSQL.FieldbyName('CodSub').AsString + '.' +
        quSQL.FieldbyName('CodPro').AsString;

      with quSQL1, SQL do
      begin

        Close;
        Text := ' Select Count(*) as QtdReg' +
          ' From GerPro' +
          ' Where GerPro.SigUfe = ' + QuotedStr(EdPsqSigUfe2.Text) +
          '   and GerPro.CodClp = ' + QuotedStr(quSQL.FieldbyName('CodClp').AsString) +
          '   and GerPro.CodGru = ' + QuotedStr(quSQL.FieldbyName('CodGru').AsString) +
          '   and GerPro.CodSub = ' + QuotedStr(quSQL.FieldbyName('CodSub').AsString) +
          '   and GerPro.CodPro = ' + QuotedStr(quSQL.FieldbyName('CodPro').AsString);
        Open;

      end;

      if quSQL1.FieldbyName('QtdReg').AsInteger = 0 then
      begin

        with quSQL1, SQL do
        begin

          Close;
          Text := ' Insert Into GerPro(SigUfe,SeqPro,CodClp,CodGru,CodSub,CodPro,DscPro,NroPro,FlgTrg)' +
            '             Values(:SigUfe,:SeqPro,:CodClp,:CodGru,:CodSub,:CodPro,:DscPro,:NroPro,:FlgTrg)';

          with Params do
          begin

            Params[0].AsString := EdPsqSigUfe2.Text;
            Params[1].AsInteger := 1;
            Params[2].AsString := quSQL.FieldbyName('CodClp').AsString;
            Params[3].AsString := quSQL.FieldbyName('CodGru').AsString;
            Params[4].AsString := quSQL.FieldbyName('CodSub').AsString;
            Params[5].AsString := quSQL.FieldbyName('CodPro').AsString;
            Params[6].AsString := quSQL.FieldbyName('DscPro').AsString;
            Params[7].AsInteger := 1;
            Params[8].AsString := ' ';

          end;

          ExecSQL;

        end;

      end
      else
      begin

        with quSQL1, SQL do
        begin

          Close;
          Text := ' Update GerPro Set DscPro = :DscPro,' +
            '                   FlgTrg = :FlgTrg' +
            ' Where GerPro.SigUfe = :SigUfe' +
            '   and GerPro.CodClp = :CodClp' +
            '   and GerPro.CodGru = :CodGru' +
            '   and GerPro.CodSub = :CodSub' +
            '   and GerPro.CodPro = :CodPro';

          with Params do
          begin

            Params[0].AsString := quSQL.FieldbyName('DscPro').AsString;
            Params[1].AsString := '*';
            Params[2].AsString := EdPsqSigUfe2.Text;
            Params[3].AsString := quSQL.FieldbyName('CodClp').AsString;
            Params[4].AsString := quSQL.FieldbyName('CodGru').AsString;
            Params[5].AsString := quSQL.FieldbyName('CodSub').AsString;
            Params[6].AsString := quSQL.FieldbyName('CodPro').AsString;

          end;

          ExecSQL;

        end;
      end;

      Application.ProcessMessages;

      ProgressBar.StepBy(1);

      quSQL.Next;

    end;

    ProgressBar.Position := 0;

    pnCodIte.Caption := '';

    EdPsqSigUfe1.Text := '';
    EdPsqNomUfe1.Text := '';
    EdPsqSigUfe2.Text := '';
    EdPsqNomUfe2.Text := '';

    EdPsqSigUfe1.SetFocus;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManUfc.EdPsqSigUfe1Exit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqSigUfe1.Text) <> '' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomUfe From GerUfe Where GerUfe.SigUfe = ' + QuotedStr(EdPsqSigUfe1.Text);
      Open;

      EdPsqNomUfe1.Text := FieldbyName('NomUfe').AsString;

    end;

  end
  else
    EdPsqNomUfe1.Text := '';
end;

procedure TfmManUfc.EdPsqSigUfe2Exit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqSigUfe2.Text) <> '' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomUfe From GerUfe Where GerUfe.SigUfe = ' + QuotedStr(EdPsqSigUfe2.Text);
      Open;

      EdPsqNomUfe2.Text := FieldbyName('NomUfe').AsString;

    end;

  end
  else
    EdPsqNomUfe2.Text := '';
end;

procedure TfmManUfc.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqSigUfe1.SetFocus;
end;

procedure TfmManUfc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManUfc.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManUfc := nil;
end;

end.
