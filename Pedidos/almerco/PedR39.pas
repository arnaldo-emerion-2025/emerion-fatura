unit PedR39;

interface

uses
  SysUtils, Classes, Controls, Forms, 
  Fpadrao, Wwdbigrd, Wwdbgrid, hGrid, StdCtrls, ExtCtrls, Buttons,
  dxCntner, dxEditor, dxEdLib, Db, Wwdatsrc, DBTables, Wwquery, RDprint,
  dxExEdtr, dxColorPickEdit, dxColorEdit, Grids, dxDBELib;

type
  TfmPedR39 = class(TfmPadrao)
    FinR12: TwwQuery;
    dsCli: TwwDataSource;
    quSql: TwwQuery;
    PaintBox: TPaintBox;
    Label19: TLabel;
    Label77: TLabel;
    Label50: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    EdRodape: TdxColorEdit;
    EdPsqSigUfe: TdxColorPickEdit;
    EdPsqCodTra1: TdxColorEdit;
    EdPsqCodAtd1: TdxColorEdit;
    EdPsqCodVen1: TdxColorEdit;
    EdPsqNomCli1: TdxColorEdit;
    EdPsqApeCli1: TdxColorEdit;
    EdPsqCodCli1: TdxColorEdit;
    Label20: TLabel;
    EdPsqCodCli2: TdxColorEdit;
    Label8: TLabel;
    EdPsqCodVen2: TdxColorEdit;
    EdPsqCodAtd2: TdxColorEdit;
    Label9: TLabel;
    Label10: TLabel;
    EdPsqCodTra2: TdxColorEdit;
    Label13: TLabel;
    Label21: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    EdPsqNomCli2: TdxColorEdit;
    EdPsqApeCli2: TdxColorEdit;
    EdPsqCodGCl1: TdxColorEdit;
    EdPsqCodCCl1: TdxColorEdit;
    EdPsqCodTCl1: TdxColorEdit;
    EdPsqNumCep1: TdxColorEdit;
    Label22: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    EdPsqCodGCl2: TdxColorEdit;
    EdPsqCodCCl2: TdxColorEdit;
    EdPsqCodTCl2: TdxColorEdit;
    EdPsqNumCep2: TdxColorEdit;
    rgOrdem: TRadioGroup;
    rgEstado: TRadioGroup;
    rgEndereco: TRadioGroup;
    rgStatus: TRadioGroup;
    bSelecionar: TBitBtn;
    dxCheckEdit1: TdxCheckEdit;
    Label1: TLabel;
    bImprimir: TBitBtn;
    grR12: ThGrid;
    grRe21: TdxDBGraphicEdit;
    Label23: TLabel;
    FinR12SEQARQ: TStringField;
    FinR12CODCLI: TIntegerField;
    FinR12NOMCLI: TStringField;
    FinR12APECLI: TStringField;
    FinR12CGCCLI: TStringField;
    FinR12UFECLI: TStringField;
    FinR12CEPCLI: TStringField;
    FinR12TENCLI: TStringField;
    FinR12ENDCLI: TStringField;
    FinR12REFCLI: TStringField;
    FinR12NUMCLI: TStringField;
    FinR12BAICLI: TStringField;
    FinR12CIDCLI: TStringField;
    FinR12CONCLI: TStringField;
    FinR12FLGENV: TStringField;
    UpR12: TUpdateSQL;
    Label24: TLabel;
    EdModEti: TdxColorPickEdit;
    procedure FormCreate(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdPsqCodVen1KeyPress(Sender: TObject; var Key: Char);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure grR12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase,sFiltro,sOrdem,SeqArq : string;
  end;

var
  fmPedR39: TfmPedR39;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, ManGDB, ManPri, ManE18;

{$R *.DFM}

procedure TfmPedR39.FormCreate(Sender: TObject);
begin
  inherited;

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
            copy(TimeToStr(Time),1,2)+
            copy(TimeToStr(Time),4,2)+
            copy(TimeToStr(Time),7,2)+
            FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
            FNumZeros(Trim( IntToStr(Random(50000)) ),5);

end;

procedure TfmPedR39.bSelecionarClick(Sender: TObject);
begin
  inherited;

  bSelecionar.Enabled := False;

  if bImprimir.Enabled then bImprimir.Enabled := False;

  case rgEndereco.ItemIndex of
  
       0: sBase := ' Select '+ QuotedStr(SeqArq) +','+
                   '        FinCli.CodCli,'+
                   '        FinCli.NomCli,'+
                   '        FinCli.ApeCli,'+
                   '        FinCli.InsCli,'+
                   '        FinCli.CgcCli,'+
                   '        FinCli.CeeCli,'+
                   '        FinCli.TeeCli,'+
                   '        FinCli.EneCli,'+
                   '        FinCli.RfeCli,'+
                   '        FinCli.NreCli,'+
                   '        FinCli.BaeCli,'+
                   '        FinCli.CieCli,'+
                   '        FinCli.UfeCli,'+
                   '        FinCli.CoeCli '+
                   ' From FinCli';

       1: sBase := ' Select '+ QuotedStr(SeqArq) +','+
                   '        FinCli.CodCli,'+
                   '        FinCli.NomCli,'+
                   '        FinCli.ApeCli,'+
                   '        FinCli.InsCli,'+
                   '        FinCli.CgcCli,'+
                   '        FinCli.CeaCli,'+
                   '        FinCli.TeaCli,'+
                   '        FinCli.EnaCli,'+
                   '        FinCli.RfaCli,'+
                   '        FinCli.NraCli,'+
                   '        FinCli.BaaCli,'+
                   '        FinCli.CiaCli,'+
                   '        FinCli.UfaCli,'+
                   '        FinCli.ComCli '+
                   ' From FinCli';

       2: sBase := ' Select '+ QuotedStr(SeqArq) +','+
                   '        FinCli.CodCli,'+
                   '        FinCli.NomCli,'+
                   '        FinCli.ApeCli,'+
                   '        FinCli.InsCli,'+
                   '        FinCli.CgcCli,'+
                   '        FinCli.CecCli,'+
                   '        FinCli.TecCli,'+
                   '        FinCli.EncCli,'+
                   '        FinCli.RfcCli,'+
                   '        FinCli.NrcCli,'+
                   '        FinCli.BacCli,'+
                   '        FinCli.CicCli,'+
                   '        FinCli.UfcCli,'+
                   '        FinCli.CocCli '+
                   ' From FinCli';

       3: sBase := ' Select '+ QuotedStr(SeqArq) +','+
                   '        FinCli.CodCli,'+
                   '        FinCli.NomCli,'+
                   '        FinCli.ApeCli,'+
                   '        FinCli.InsCli,'+
                   '        FinCli.CgcCli,'+
                   '        FinCli.CefCli,'+
                   '        FinCli.TefCli,'+
                   '        FinCli.EnfCli,'+
                   '        FinCli.RffCli,'+
                   '        FinCli.NrfCli,'+
                   '        FinCli.BafCli,'+
                   '        FinCli.CifCli,'+
                   '        FinCli.UffCli,'+
                   '        FinCli.CofCli '+
                   ' From FinCli';

  end;

  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by FinR12.NomCli';
       1: sOrdem := ' Order by FinR12.CodCli';
       2: sOrdem := ' Order by FinR12.ApeCli';
       3: sOrdem := ' Order by FinR12.CgcCli';
       4: sOrdem := ' Order by FinR12.UfeCli';
       5: sOrdem := ' Order by FinR12.CepCli';
  end;

  case rgStatus.ItemIndex of
       0: sFiltro := ' Where FinCli.FlbCli = '+ QuotedStr(' ');
       1: sFiltro := ' Where FinCli.FlbCli = '+ QuotedStr('*');
  end;

  if Trim( EdPsqApeCli1.Text ) <> '' then begin

     if (Trim( EdPsqApeCli2.Text ) <> '') and (EdPsqApeCli1.Text <> EdPsqApeCli2.Text) then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.ApeCli Between '''+ EdPsqApeCli1.Text +'%'+''' and '''+ EdPsqApeCli2.Text +'%'''
        else
           sFiltro := ' Where FinCli.ApeCli Between '''+ EdPsqApeCli1.Text +'%'+''' and '''+ EdPsqApeCli2.Text +'%''';

        end
     else
        begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.ApeCli Like '''+ EdPsqApeCli1.Text +'%'''
        else
           sFiltro := ' Where FinCli.ApeCli Like '''+ EdPsqApeCli1.Text +'%''';

     end;
  end;

  if Trim( EdPsqNomCli1.Text ) <> '' then begin

     if (Trim( EdPsqNomCli2.Text ) <> '') and (EdPsqNomCli1.Text <> EdPsqNomCli2.Text) then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.NomCli Between '''+ EdPsqNomCli1.Text +'%'+''' and '''+ EdPsqNomCli2.Text +'%'''
        else
           sFiltro := ' Where FinCli.NomCli Between '''+ EdPsqNomCli1.Text +'%'+''' and '''+ EdPsqNomCli2.Text +'%''';
           
        end
     else
        begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.NomCli Like '''+ EdPsqNomCli1.Text +'%'''
        else
           sFiltro := ' Where FinCli.NomCli Like '''+ EdPsqNomCli1.Text +'%''';

     end;
  end;

  if Trim( EdPsqCodCli1.Text ) <> '' then begin

     if Trim( EdPsqCodCli2.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.CodCli >= '+ QuotedStr(EdPsqCodCli1.Text) +' and FinCli.CodCli <= '+ QuotedStr(EdPsqCodCli2.Text)
        else
           sFiltro := ' Where FinCli.CodCli >= '+ QuotedStr(EdPsqCodCli1.Text) +' and FinCli.CodCli <= '+ QuotedStr(EdPsqCodCli2.Text);

        end
     else
        begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.CodCli = '+ QuotedStr(EdPsqCodCli1.Text)
        else
           sFiltro := ' Where FinCli.CodCli = '+ QuotedStr(EdPsqCodCli1.Text);
           
     end;
  end;

  if Trim( EdPsqCodVen1.Text ) <> '' then begin

     if Trim( EdPsqCodVen2.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.CodVen >= '+ QuotedStr(EdPsqCodVen1.Text) +' and FinCli.CodVen <= '+ QuotedStr(EdPsqCodVen2.Text)
        else
           sFiltro := ' Where FinCli.CodVen >= '+ QuotedStr(EdPsqCodVen1.Text) +' and FinCli.CodVen <= '+ QuotedStr(EdPsqCodVen2.Text);

        end
     else
        begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.CodVen = '+ QuotedStr(EdPsqCodVen1.Text)
        else
           sFiltro := ' Where FinCli.CodVen = '+ QuotedStr(EdPsqCodVen1.Text);

     end;      
  end;

  if Trim( EdPsqCodGCl1.Text ) <> '' then begin

     if Trim( EdPsqCodGCl2.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.CodGCl >= '+ QuotedStr(EdPsqCodGCl1.Text) +' and FinCli.CodGCl <= '+ QuotedStr(EdPsqCodGCl2.Text)
        else
           sFiltro := ' Where FinCli.CodGCl >= '+ QuotedStr(EdPsqCodGCl1.Text) +' and FinCli.CodGCl <= '+ QuotedStr(EdPsqCodGCl2.Text);

        end
     else
        begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.CodGCl = '+ QuotedStr(EdPsqCodGCl1.Text)
        else
           sFiltro := ' Where FinCli.CodGCl = '+ QuotedStr(EdPsqCodGCl1.Text);

     end;      
  end;

  if Trim( EdPsqCodAtd1.Text ) <> '' then begin

     if Trim( EdPsqCodAtd2.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.CodAtd >= '+ QuotedStr(EdPsqCodAtd1.Text) +' and FinCli.CodAtd <= '+ QuotedStr(EdPsqCodAtd2.Text)
        else
           sFiltro := ' Where FinCli.CodAtd >= '+ QuotedStr(EdPsqCodAtd1.Text) +' and FinCli.CodAtd <= '+ QuotedStr(EdPsqCodAtd2.Text);

        end
     else
        begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.CodAtd = '+ QuotedStr(EdPsqCodAtd1.Text)
        else
           sFiltro := ' Where FinCli.CodAtd = '+ QuotedStr(EdPsqCodAtd1.Text);
           
     end;
  end;

  if Trim( EdPsqCodCCl1.Text ) <> '' then begin

     if Trim( EdPsqCodCCl2.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.CodCCl >= '+ QuotedStr(EdPsqCodCCl1.Text) +' and FinCli.CodCCl <= '+ QuotedStr(EdPsqCodCCl2.Text)
        else
           sFiltro := ' Where FinCli.CodCCl >= '+ QuotedStr(EdPsqCodCCl1.Text) +' and FinCli.CodCCl <= '+ QuotedStr(EdPsqCodCCl2.Text);
           
        end
     else
        begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.CodCCl = '+ QuotedStr(EdPsqCodCCl1.Text)
        else
           sFiltro := ' Where FinCli.CodCCl = '+ QuotedStr(EdPsqCodCCl1.Text);
           
     end;
  end;

  if Trim( EdPsqCodTra1.Text ) <> '' then begin

     if Trim( EdPsqCodTra2.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.CodTra >= '+ QuotedStr(EdPsqCodTra1.Text) +' and FinCli.CodTra <= '+ QuotedStr(EdPsqCodTra2.Text)
        else
           sFiltro := ' Where FinCli.CodTra >= '+ QuotedStr(EdPsqCodTra1.Text) +' and FinCli.CodTra <= '+ QuotedStr(EdPsqCodTra2.Text);
           
        end
     else
        begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.CodTra = '+ QuotedStr(EdPsqCodTra1.Text)
        else
           sFiltro := ' Where FinCli.CodTra = '+ QuotedStr(EdPsqCodTra1.Text);

     end;      
  end;

  if Trim( EdPsqCodTCl1.Text ) <> '' then begin

     if Trim( EdPsqCodTCl2.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.CodTCl >= '+ QuotedStr(EdPsqCodTCl1.Text) +' and FinCli.CodTCl <= '+ QuotedStr(EdPsqCodTCl2.Text)
        else
           sFiltro := ' Where FinCli.CodTCl >= '+ QuotedStr(EdPsqCodTCl1.Text) +' and FinCli.CodTCl <= '+ QuotedStr(EdPsqCodTCl2.Text);
           
        end
     else
        begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and FinCli.CodTCl = '+ QuotedStr(EdPsqCodTCl1.Text)
        else
           sFiltro := ' Where FinCli.CodTCl = '+ QuotedStr(EdPsqCodTCl1.Text);

     end;
  end;

  if Trim( EdPsqSigUfe.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then begin
     
        case rgEstado.ItemIndex of
             0: sFiltro := sFiltro + ' and FinCli.UfeCli = '+ QuotedStr(EdPsqSigUfe.Text);
             1: sFiltro := sFiltro + ' and FinCli.UfaCli = '+ QuotedStr(EdPsqSigUfe.Text);
             2: sFiltro := sFiltro + ' and FinCli.UfcCli = '+ QuotedStr(EdPsqSigUfe.Text);
             3: sFiltro := sFiltro + ' and FinCli.UffCli = '+ QuotedStr(EdPsqSigUfe.Text);
        end;

        end
     else
        begin

        case rgEstado.ItemIndex of
             0: sFiltro := ' Where FinCli.UfeCli = '+ QuotedStr(EdPsqSigUfe.Text);
             1: sFiltro := ' Where FinCli.UfaCli = '+ QuotedStr(EdPsqSigUfe.Text);
             2: sFiltro := ' Where FinCli.UfcCli = '+ QuotedStr(EdPsqSigUfe.Text);
             3: sFiltro := ' Where FinCli.UffCli = '+ QuotedStr(EdPsqSigUfe.Text);
        end;
     end;   
  end;

  if Trim( EdPsqNumCep1.Text ) <> '' then begin

     if (Trim( EdPsqNumCep2.Text ) <> '') and (EdPsqNumCep1.Text <> EdPsqNumCep2.Text) then begin

        if pos('Where',sFiltro) > 0 then begin

           case rgEstado.ItemIndex of
                0: sFiltro := sFiltro + ' and FinCli.CeeCli Between '+ QuotedStr(EdPsqNumCep1.Text) +' and '+ QuotedStr(EdPsqNumCep2.Text);
                1: sFiltro := sFiltro + ' and FinCli.CeaCli Between '+ QuotedStr(EdPsqNumCep1.Text) +' and '+ QuotedStr(EdPsqNumCep2.Text);
                2: sFiltro := sFiltro + ' and FinCli.CecCli Between '+ QuotedStr(EdPsqNumCep1.Text) +' and '+ QuotedStr(EdPsqNumCep2.Text);
                3: sFiltro := sFiltro + ' and FinCli.CefCli Between '+ QuotedStr(EdPsqNumCep1.Text) +' and '+ QuotedStr(EdPsqNumCep2.Text);
           end;

           end
        else
           begin

           case rgEstado.ItemIndex of
                0: sFiltro := ' Where FinCli.CeeCli Between '+ QuotedStr(EdPsqNumCep1.Text) +' and '+ QuotedStr(EdPsqNumCep2.Text);
                1: sFiltro := ' Where FinCli.CeaCli Between '+ QuotedStr(EdPsqNumCep1.Text) +' and '+ QuotedStr(EdPsqNumCep2.Text);
                2: sFiltro := ' Where FinCli.CecCli Between '+ QuotedStr(EdPsqNumCep1.Text) +' and '+ QuotedStr(EdPsqNumCep2.Text);
                3: sFiltro := ' Where FinCli.CefCli Between '+ QuotedStr(EdPsqNumCep1.Text) +' and '+ QuotedStr(EdPsqNumCep2.Text);
           end;
        end;
        
        end
     else
        begin

        if pos('Where',sFiltro) > 0 then begin
        
           case rgEstado.ItemIndex of
                0: sFiltro := sFiltro + ' and FinCli.CeeCli = '+ QuotedStr(EdPsqNumCep1.Text);
                1: sFiltro := sFiltro + ' and FinCli.CeaCli = '+ QuotedStr(EdPsqNumCep1.Text);
                2: sFiltro := sFiltro + ' and FinCli.CecCli = '+ QuotedStr(EdPsqNumCep1.Text);
                3: sFiltro := sFiltro + ' and FinCli.CefCli = '+ QuotedStr(EdPsqNumCep1.Text);
           end;

           end
        else
           begin

           case rgEstado.ItemIndex of
                0: sFiltro := ' Where FinCli.CeeCli = '+ QuotedStr(EdPsqNumCep1.Text);
                1: sFiltro := ' Where FinCli.CeaCli = '+ QuotedStr(EdPsqNumCep1.Text);
                2: sFiltro := ' Where FinCli.CecCli = '+ QuotedStr(EdPsqNumCep1.Text);
                3: sFiltro := ' Where FinCli.CefCli = '+ QuotedStr(EdPsqNumCep1.Text);
           end;
        end;
     end;
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FinR12 Where FinR12.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;
       
  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into FinR12(SeqArq,CodCli,NomCli,ApeCli,InsCli,CgcCli,CepCli,TenCli,EndCli,RefCli,NumCli,BaiCli,CidCli,UfeCli,ConCli)'+ sBase + sFiltro;
       ExecSQL;

  end;  

  with FinR12,SQL do begin

       Close;
       Text := ' Select FinR12.SeqArq,'+
               '        FinR12.CodCli,'+
               '        FinR12.NomCli,'+
               '        FinR12.ApeCli,'+
               '        FinR12.CgcCli,'+
               '        FinR12.UfeCli,'+
               '        FinR12.CepCli,'+
               '        FinR12.TenCli,'+
               '        FinR12.EndCli,'+
               '        FinR12.RefCli,'+
               '        FinR12.NumCli,'+
               '        FinR12.BaiCli,'+
               '        FinR12.CidCli,'+
               '        FinR12.ConCli,'+
               '        FinR12.FlgEnv '+
               ' From FinR12'+
               ' Where FinR12.SeqArq = '+ QuotedStr(SeqArq) + sOrdem;
       Open;
       First;

  end;

  bSelecionar.Enabled := True;

  if FinR12CodCli.Value > 0 then bImprimir.Enabled := True;

  grR12.SetFocus;

end;

procedure TfmPedR39.bImprimirClick(Sender: TObject);
begin
  if fMsg('Confirma Impressão ?','S') then begin

     with FinR12,SQL do begin

          Close;
          Text := ' Select FinR12.SeqArq,'+
                  '        FinR12.CodCli,'+
                  '        FinR12.NomCli,'+
                  '        FinR12.ApeCli,'+
                  '        FinR12.CgcCli,'+
                  '        FinR12.UfeCli,'+
                  '        FinR12.CepCli,'+
                  '        FinR12.TenCli,'+
                  '        FinR12.EndCli,'+
                  '        FinR12.RefCli,'+
                  '        FinR12.NumCli,'+
                  '        FinR12.BaiCli,'+
                  '        FinR12.CidCli,'+
                  '        FinR12.ConCli,'+
                  '        FinR12.FlgEnv '+
                  ' From FinR12'+
                  ' Where FinR12.SeqArq = '+ QuotedStr(SeqArq) +
                  '   and FinR12.FlgEnv = '+ QuotedStr('Sim')  + sOrdem;
          Open;
          First;

     end;

     if FinR12CodCli.Value > 0 then begin

        try

           fmManE18 := TfmManE18.Create(Self);

           fmManE18.FinR12.Close;
           fmManE18.FinR12.Params[0].AsString := SeqArq;
           fmManE18.FinR12.Open;

           fmManE18.RLReport1.PreviewModal;

        finally

           FreeAndNil(fmManE18);

        end;

        end
     else
        fmsgErro('Não existem clientes selecionados para emissão. Verificar.',Nil);

  end;
end;

procedure TfmPedR39.FormShow(Sender: TObject);
begin
  inherited;
  with quSQL,SQL do begin

       Close;
       Text := ' Select * From FinPar';
       Open;

       EdRodape.Text := quSQL.FieldbyName('Rodape').AsString;

  end;
end;

procedure TfmPedR39.EdPsqCodVen1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0
end;

procedure TfmPedR39.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR39.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FinR12 Where FinR12.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;
       
  Action := CaFree;
  
end;

procedure TfmPedR39.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR39 := Nil;
end;

procedure TfmPedR39.grR12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then begin

     if FinR12CodCli.Value > 0 then begin

        FinR12.Edit;

        if FinR12FlgEnv.Value = 'Sim' then
           FinR12FlgEnv.Value := 'Nao'
        else
           FinR12FlgEnv.Value := 'Sim';

        with FinR12 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if FinR12.State <> dsBrowse then FinR12.CancelUpdates;

                grR12.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        if not FinR12.EOF then FinR12.Next;
        
     end;
  end;
end;

end.
