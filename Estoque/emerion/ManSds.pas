unit ManSds;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, Buttons, dxCntner, dxEditor, dxEdLib, StdCtrls,
  dxExEdtr, Db, DBTables, Wwquery, dxColorDateEdit, dxColorCurrencyEdit,
  dxColorEdit;

type
  TfmManSds = class(TfmPadrao)
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    EdCodPro: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqClp: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqSub: TSpeedButton;
    BbPsqPro: TSpeedButton;
    EdNomPro: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    EdNomEmp: TdxColorEdit;
    Label7: TLabel;
    EdCodCor: TdxColorEdit;
    bPsqCor: TSpeedButton;
    EdNomCor: TdxColorEdit;
    Label14: TLabel;
    EdCodOpe: TdxColorEdit;
    bPsqOpe: TSpeedButton;
    EdNomOpe: TdxColorEdit;
    Label25: TLabel;
    EdCodTam: TdxColorEdit;
    bPsqTam: TSpeedButton;
    EdQtdOpe: TdxColorCurrencyEdit;
    BbConf: TBitBtn;
    BbCanc: TBitBtn;
    quSql: TwwQuery;
    EdDteOpe: TdxColorDateEdit;
    Label1: TLabel;
    PaintBox: TPaintBox;
    Label20: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label28: TLabel;
    Label2: TLabel;
    Label13: TLabel;
    EdObsSdf: TdxColorEdit;
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodEmpExit(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure BbPsqClpClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
    procedure bPsqCorClick(Sender: TObject);
    procedure EdCodCorExit(Sender: TObject);
    procedure bPsqTamClick(Sender: TObject);
    procedure EdCodTamExit(Sender: TObject);
    procedure bPsqOpeClick(Sender: TObject);
    procedure EdCodOpeExit(Sender: TObject);
    procedure BbConfClick(Sender: TObject);
    procedure BbCancClick(Sender: TObject);
    procedure LimpaControls;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    OpePadrao : string;
  public
    { Public declarations }
  end;

var
  fmManSds: TfmManSds;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, PsqEmp, PsqClp, PsqTam, PsqEco,
     ManGDB, AuxIni, PsqOpe;

{$R *.DFM}

procedure TfmManSds.LimpaControls;
var
i : integer;
begin;
  for i := 0 to ComponentCount - 1 do begin

      if Components[i] is TdxColorEdit then (Components[i] as TdxColorEdit).Text := '';

      if Components[i] is TdxColorCurrencyEdit then (Components[i] as TdxColorCurrencyEdit).Value := 0;

  end;
end;

procedure TfmManSds.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSds.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManSds.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodEmp.Text ) <> '' then begin

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
          Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('NomEmp').AsString ) <> '' then
             EdNomEmp.Text := FieldByName('NomEmp').AsString
          else
             begin

             EdNomEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdCodEmp);

          end;
     end;

     end
  else
     EdNomEmp.Text := '';
end;

procedure TfmManSds.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdNomEmp.Text := fmPsqEmp.NomEmp;
        EdCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;

  if Trim( EdCodEmp.Text ) <> '' then EdCodClp.SetFocus;

end;

procedure TfmManSds.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp Where EstClp.CodClp = '+ QuotedStr(EdCodClp.Text);
          Open;


     end;

     if Trim( quSQL.FieldbyName('NomClp').AsString ) <> '' then
        EdNomClp.Text := quSql.FieldByName('NomClp').AsString
     else
        fmsgErro('Classificação Informada não Encontrada.',EdCodClp);

     end
  else
     EdNomClp.Text := '';
end;

procedure TfmManSds.BbPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqClp := TfmPsqClp.Create(Self);

     fmPsqClp.ShowModal;

     if Trim( fmPsqClp.CodClp ) <> '' then begin

        EdCodClp.Text := fmPsqClp.CodClp;
        EdNomClp.Text := fmPsqClp.NomClp;

     end;

  finally

     FreeAndNil(fmPsqClp);

  end;

  if Trim( EdCodClp.Text ) <> '' then EdCodGru.SetFocus;

end;

procedure TfmManSds.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGru.Text ) <> '' then begin

     EdCodGru.Text := FNumZeros(EdCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru Where EstGru.CodGru = '+ QuotedStr(EdCodGru.Text);
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomGru').AsString ) <> '' then
        EdNomGru.Text := quSql.FieldByName('NomGru').AsString
     else
        fmsgErro('Grupo Informado não Encontrado.',EdCodGru);

     end
  else
     EdNomGru.Text := '';
end;

procedure TfmManSds.BbPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdCodClp.Text;

     fmAuxIni.TipoPesq := 'G';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodGru.Text ) <> '' then EdCodSub.SetFocus;

end;

procedure TfmManSds.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodSub.Text ) <> '' then begin

     EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub '+
                  ' Where EstSub.CodGru = '+ QuotedStr(EdCodGru.Text) +
                  '   and EstSub.CodSub = '+ QuotedStr(EdCodSub.Text) ;
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomSub').AsString ) <> '' then
        EdNomSub.Text := quSql.FieldByName('NomSub').AsString
     else
        fmsgErro('SubGrupo Informado não Encontrado.',EdCodSub);

     end
  else
     EdNomSub.Text := '';
end;

procedure TfmManSds.BbPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdCodClp.Text;
     fmAuxIni.CodGru := EdCodGru.Text;

     fmAuxIni.TipoPesq := 'S';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodSub ) <> '' then begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;
        EdCodSub.Text := fmAuxIni.CodSub;
        EdNomSub.Text := fmAuxIni.NomSub;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodSub.Text ) <> '' then EdCodPro.SetFocus;

end;

procedure TfmManSds.EdCodProExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodPro.Text ) <> '' then begin

     EdCodPro.Text := FNumStrZero(EdCodPro.Text);

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPro From EstPro '+
                  ' Where CodClp = :CodClp'+
                  '   and CodGru = :CodGru'+
                  '   and CodSub = :CodSub'+
                  '   and CodPro = :CodPro';

          with Params do begin

               Params[0].AsString := EdCodClp.Text;
               Params[1].AsString := EdCodGru.Text;
               Params[2].AsString := EdCodSub.Text;
               Params[3].AsString := EdCodPro.Text;

          end;

          Open;

     end;

     if Trim( quSQL.FieldbyName('DscPro').AsString ) <> '' then
        EdNomPro.Text := quSql.FieldByName('DscPro').AsString
     else
        fmsgErro('Item Informado não Encontrado.',EdCodPro);

     end
  else
     EdNomPro.Text := '';
end;

procedure TfmManSds.BbPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.CodClp := EdCodClp.Text;
     fmAuxIni.CodGru := EdCodGru.Text;
     fmAuxIni.CodSub := EdCodSub.Text;

     fmAuxIni.TipoPesq := 'I';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodPro ) <> '' then begin

        EdCodClp.Text := fmAuxIni.CodClp;
        EdNomClp.Text := fmAuxIni.NomClp;
        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;
        EdCodSub.Text := fmAuxIni.CodSub;
        EdNomSub.Text := fmAuxIni.NomSub;
        EdCodPro.Text := fmAuxIni.CodPro;
        EdNomPro.Text := fmAuxIni.DscPro;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdCodPro.SetFocus;

end;

procedure TfmManSds.bPsqTamClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqTam := TfmPsqTam.Create(Self);

     fmPsqTam.EstTam.Close;

     if Trim( EdCodEmp.Text ) <> '' then
       fmPsqTam.EstTam.Params[0].AsInteger := 0
     else
        fmPsqTam.EstTam.Params[0].AsInteger := StrToInt( EdCodEmp.Text );

     fmPsqTam.EstTam.Params[1].AsString  := EdCodClp.Text;
     fmPsqTam.EstTam.Params[2].AsString  := EdCodGru.Text;
     fmPsqTam.EstTam.Params[3].AsString  := EdCodSub.Text;
     fmPsqTam.EstTam.Params[4].AsString  := EdCodPro.Text;
     fmPsqTam.EstTam.Open;

     fmPsqTam.ShowModal;

     if Trim( fmPsqTam.CodTam ) <> '' then EdCodTam.Text := fmPsqTam.CodTam;

  finally   

     FreeAndNil(fmPsqTam);

  end;

  EdCodTam.SetFocus;

end;

procedure TfmManSds.EdCodTamExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodTam.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select Count(*) as Reg From EstQte '+
                  ' Where CodEmp = '+ QuotedStr(EdCodEmp.Text) +
                  '   and CodClp = '+ QuotedStr(EdCodClp.Text) +
                  '   and CodGru = '+ QuotedStr(EdCodGru.Text) +
                  '   and CodSub = '+ QuotedStr(EdCodSub.Text) +
                  '   and CodPro = '+ QuotedStr(EdCodPro.Text) ;
          Open;

     end;

     if quSQL.FieldbyName('Reg').AsInteger = 0 then fmsgErro('Tamanho Informado para o Item não Encontrado.',EdCodTam);

     end
  else
     fmsgErro('Tamanho Informado para o Item não Encontrado.',EdCodTam);
end;

procedure TfmManSds.bPsqCorClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEco := TfmPsqEco.Create(Self);

     fmPsqEco.EstQte.Close;

     if Trim( EdCodEmp.Text ) <> '' then
        fmPsqEco.EstQte.Params[0].AsInteger := 0
     else
        fmPsqEco.EstQte.Params[0].AsInteger := StrToInt( EdCodEmp.Text );

     fmPsqEco.EstQte.Open;
        
     fmPsqEco.EstQte.Params[1].AsString  := EdCodClp.Text;
     fmPsqEco.EstQte.Params[2].AsString  := EdCodGru.Text;
     fmPsqEco.EstQte.Params[3].AsString  := EdCodSub.Text;
     fmPsqEco.EstQte.Params[4].AsString  := EdCodPro.Text;
     fmPsqEco.EstQte.Params[5].AsString  := EdCodTam.Text;
     fmPsqEco.EstQte.Open;

     fmPsqEco.ShowModal;

     if Trim( fmPsqEco.CodCor ) <> '' then EdCodCor.Text := fmPsqEco.CodCor;

  finally   

     FreeAndNil(fmPsqEco);

  end;

  EdCodCor.SetFocus;

end;

procedure TfmManSds.EdCodCorExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCor From EstCor Where EstCor.CodCor = '+ QuotedStr(EdCodCor.Text);
          Open;


     end;

     if Trim( quSQL.FieldbyName('NomCor').AsString ) <> '' then
        EdNomCor.Text := quSql.FieldByName('NomCor').AsString
     else
        fmsgErro('Cor Informada para o Item não Encontrada.',EdCodCor);

     end
  else
     EdNomCor.Text := '';
end;

procedure TfmManSds.bPsqOpeClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqOpe := TfmPsqOpe.Create(Self);

     fmPsqOpe.EstOpe.Close;
     fmPsqOpe.EstOpe.Params[0].AsString := 'S';
     fmPsqOpe.EstOpe.Open;

     fmPsqOpe.ShowModal;

     if Trim( fmPsqOpe.CodOpe ) <> '' then EdCodOpe.Text := fmPsqOpe.CodOpe;

  finally    

     FreeAndNil(fmPsqOpe);

  end;

  EdCodOpe.SetFocus;

end;

procedure TfmManSds.EdCodOpeExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodOpe.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select * From EstOpe '+
                  ' Where CodOpe = :CodOpe'+
                  '   and TipOpe = :TipOpe';

          with Params do begin

               Params[0].AsString := EdCodOpe.Text;
               Params[1].AsString := 'S';

          end;

          Open;
         
     end;

     if Trim( quSql.FieldByName('CodOpe').AsString ) <> '' then
        EdNomOpe.Text := quSql.FieldByName('NomOpe').AsString
     else
        fmsgErro('Operação Informada não Encontrada.',EdCodOpe);

     end
  else
     EdNomOpe.Text := '';
end;

procedure TfmManSds.BbCancClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfmManSds.BbConfClick(Sender: TObject);
var
SeqSdf : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     ActiveControl := nil;

     if ( Trim(EdCodEmp.Text) <> '' ) and ( Trim(EdCodClp.Text) <> '' ) and ( Trim(EdCodGru.Text) <> '' ) and
        ( Trim(EdCodSub.Text) <> '' ) and ( Trim(EdCodPro.Text) <> '' ) and ( Trim(EdCodTam.Text) <> '' ) and ( Trim(EdCodCor.Text) <> '' ) then begin

        if Trim(EdObsSdf.Text) <> '' then begin
     
           with quSQL,SQL do begin

                Close;
                Text := ' Select Count(*) as QtdReg From EstQte'+
                        ' Where CodEmp = '+ QuotedStr(EdCodEmp.Text) +
                        '   and CodClp = '+ QuotedStr(EdCodClp.Text) +
                        '   and CodGru = '+ QuotedStr(EdCodGru.Text) +
                        '   and CodSub = '+ QuotedStr(EdCodSub.Text) +
                        '   and CodPro = '+ QuotedStr(EdCodPro.Text) +
                        '   and CodTam = '+ QuotedStr(EdCodTam.Text) +
                        '   and CodCor = '+ QuotedStr(EdCodCor.Text) ;
                Open;

           end;

           if quSQL.FieldbyName('QtdReg').AsInteger > 0 then begin

              if fMsg('Confirma Operação ?','O') then begin

                 Randomize;
                 SeqSdf := FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Insert Into EstSdf(AnoSdf,SeqSdf,CodEmp,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DteSdf,DteOpe,HreOpe,CodOpe,'+
                              '                    QtdSdf,CodUsu,FlgSdf,FlgTrg,FlgSeq,ObsSdf)'+
                              '             Values(:AnoSdf,:SeqSdf,:CodEmp,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DteSdf,:DteOpe,:HreOpe,:CodOpe,'+
                              '                    :QtdSdf,:CodUsu,:FlgSdf,:FlgTrg,:FlgSeq,:ObsSdf)';

                      with Params do begin

                           Params[00].AsInteger  := StrToInt(copy(FormatDateTime('dd/mm/yyyy',Date),7,4));
                           Params[01].AsInteger  := 1;
                           Params[02].AsInteger  := StrToInt(EdCodEmp.Text);
                           Params[03].AsString   := EdCodClp.Text;
                           Params[04].AsString   := EdCodGru.Text;
                           Params[05].AsString   := EdCodSub.Text;
                           Params[06].AsString   := EdCodPro.Text;
                           Params[07].AsString   := EdCodTam.Text;
                           Params[08].AsString   := EdCodCor.Text;
                           Params[09].AsDateTime := EdDteOpe.Date;
                           Params[10].AsDateTime := Date;
                           Params[11].AsString   := TimeToStr(Time);
                           Params[12].AsString   := EdCodOpe.Text;
                           Params[13].AsFloat    := EdQtdOpe.Value;
                           Params[14].AsInteger  := GUsu_Id;
                           Params[15].AsString   := SeqSdf;
                           Params[16].AsString   := ' ';
                           Params[17].AsString   := ' ';
                           Params[18].AsString   := EdObsSdf.Text;                           

                      end;

                      ExecSQL;

                 end;

                 EdCodEmp.Text := '';
                 EdNomOpe.Text := '';
                 EdCodPro.Text := '';
                 EdNomPro.Text := '';
                 EdCodOpe.Text := '';
                 EdNomOpe.Text := '';

                 if Trim( OpePadrao ) <> '' then EdCodOpe.Text := OpePadrao;

                 if EdCodTam.Enabled then EdCodTam.Text := '';

                 if EdCodCor.Enabled then begin

                    EdCodCor.Text := '';
                    EdNomCor.Text := '';

                 end;

                 with quSql,SQL do begin

                      Close;
                      Text := ' Select * From EstOpe '+
                              ' Where EstOpe.CodOpe = '+ QuotedStr(EdCodOpe.Text) +
                              '   and EstOpe.TipOpe = '+ QuotedStr('S') ;
                      Open;

                      EdNomOpe.Text := FieldByName('NomOpe').AsString

                 end;

                 EdQtdOpe.Value := 0;

                 EdDteOpe.Date := Date;

                 if ( GEmp_Id ) > 0 then begin

                    EdCodEmp.Text := IntToStr( GEmp_Id );

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select NomEmp From GerEmp Where CodEmp = '+ QuotedStr(EdCodEmp.Text);
                         Open;

                         EdNomEmp.Text := FieldByName('NomEmp').AsString

                    end;
                 end;   

                 if fMsg('Repetir Último Grupo & SubGrupo ?','O') then
                    EdCodPro.SetFocus
                 else
                    begin

                    EdCodClp.Text := '';
                    EdNomClp.Text := '';
                    EdCodGru.Text := '';
                    EdNomGru.Text := '';
                    EdCodSub.Text := '';
                    EdNomSub.Text := '';

                    EdCodEmp.SetFocus;

                 end;
              end;

              end
           else
              fmsgErro('Item não Encontrado no Estoque da Empresa Informada.',EdCodEmp);

           end
        else
           fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Observações.',EdObsSdf);

        end
     else
        fmsgErro('Empresa e Codigo do Item não Informado.',EdCodEmp);

     end
  else
     fmsgErro(GMensagem,Nil);

end;

procedure TfmManSds.FormShow(Sender: TObject);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select * From EstPar';
       Open;

       OpePadrao := FieldbyName('OpeSda').AsString;
       
       if FieldbyName('FlgTam').AsString = 'Nao' then begin

          EdCodTam.Text := 'UN';

          EdCodTam.Enabled := False;

          EdCodTam.Font.Style := [fsBold]

       end;

       if FieldbyName('TamCor').AsString = 'Nao' then begin

          EdCodCor.Text := 'UN';

          with quSql,SQL do begin

               Close;
               Text := ' Select NomCor From EstCor Where EstCor.CodCor = '+ QuotedStr(EdCodCor.Text);
               Open;

               EdNomCor.Text := FieldByName('NomCor').AsString

          end;

          EdCodCor.Enabled := False;

          EdCodCor.Font.Style := [fsBold]

       end;
  end;

  if Trim( OpePadrao ) <> '' then EdCodOpe.Text := OpePadrao;

  with quSql,SQL do begin

       Close;
       Text := ' Select * From EstOpe '+
               ' Where EstOpe.CodOpe = '+ QuotedStr(EdCodOpe.Text) +
               '   and EstOpe.TipOpe = '+ QuotedStr('S') ;
       Open;

       EdNomOpe.Text := FieldByName('NomOpe').AsString

  end;

  EdDteOpe.Date := Date;

  if GEmp_Id > 0 then begin

     EdCodEmp.Text := IntToStr( GEmp_Id );

     with quSQL,SQL do begin

          Close;
          Text := 'Select NomEmp From GerEmp Where CodEmp = '+ QuotedStr(EdCodEmp.Text);
          Open;

          EdNomEmp.Text := FieldByName('NomEmp').AsString

     end;
  end;
end;

procedure TfmManSds.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManSds.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManSds := Nil;
end;

end.
