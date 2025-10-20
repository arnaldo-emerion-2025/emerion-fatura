unit ManEnv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, Buttons, ComCtrls, Db, DBTables, Wwquery, ExtCtrls, FlEdit,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, Wwdatsrc, Mask, hEdits, wwdbedit,
  Wwdotdot, Wwdbcomb, DBCtrls, AlignEdit, QuickRpt, ppDB, ppDBPipe, ppBands,
  ppClass, ppStrtch, ppMemo, ppVar, jpeg, ppCtrls, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ppModule, daDatMod, wwdbdatetimepicker,
  dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, ImgList, Menus,
  dxCntner, dxEditor, dxEdLib, dxTL, dxDBCtrl, dxDBGrid, dxExEdtr,
  dxColorEdit, dxColorDateEdit, dxDBELib, dxColorCurrencyEdit,
  dxfProgressBar;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmManEnv = class(TfmPadrao)
    PaintBox: TPaintBox;
    Label5: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    Label13: TLabel;
    EdCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdNomEmp: TdxColorEdit;
    Label2: TLabel;
    Bevel2: TBevel;
    Label17: TLabel;
    Label12: TLabel;
    EdDteEst: TdxColorDateEdit;
    bSelecionar: TBitBtn;
    bEnviar: TBitBtn;
    grPro: TdxDBGraphicEdit;
    EstR11: TwwQuery;
    quSql: TwwQuery;
    DsEnv: TwwDataSource;
    SaveDialog: TSaveDialog;
    pnSequenc: TPanel;
    ProgressBar: TdxfProgressBar;
    EdSequenc: TdxColorCurrencyEdit;
    EdValCre: TdxColorCurrencyEdit;
    Label22: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdQtdPar: TdxColorEdit;
    bImprimir: TBitBtn;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grR01: TdxDBGrid;
    EstR11SEQARQ: TStringField;
    EstR11CODEMP: TIntegerField;
    EstR11CODCLP: TStringField;
    EstR11CODGRU: TStringField;
    EstR11CODSUB: TStringField;
    EstR11CODPRO: TStringField;
    EstR11DTEEST: TDateTimeField;
    EstR11QTDEST: TFloatField;
    EstR11VLQEST: TFloatField;
    EstR11TOTEST: TFloatField;
    EstR11TIPCST: TStringField;
    EstR11VPFEST: TFloatField;
    EstR11SIGUFE: TStringField;
    EstR11CODTME: TStringField;
    EstR11CODSTR: TStringField;
    EstR11TIPSTR: TStringField;
    EstR11ICMSUB: TFloatField;
    EstR11MRGSUB: TFloatField;
    EstR11BASESB: TFloatField;
    EstR11BASSUB: TFloatField;
    EstR11TOTSUB: TFloatField;
    EstR11FLGENV: TStringField;
    EstR11DSCPRO: TStringField;
    EstR11CODUNS: TStringField;
    EstR11CODITE: TStringField;
    QTDEST: TdxDBGridMaskColumn;
    TOTEST: TdxDBGridMaskColumn;
    VPFEST: TdxDBGridMaskColumn;
    ICMSUB: TdxDBGridMaskColumn;
    MRGSUB: TdxDBGridMaskColumn;
    BASSUB: TdxDBGridMaskColumn;
    TOTSUB: TdxDBGridMaskColumn;
    DSCPRO: TdxDBGridMaskColumn;
    CODITE: TdxDBGridMaskColumn;
    CODTME: TdxDBGridColumn;
    CODUNS: TdxDBGridColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grR11ReloadGroupList(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure bEnviarClick(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
  private
    {Private declarations}
    SeqArq, sFiltro : string;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
  end;

var
  fmManEnv: TfmManEnv;

implementation

uses dxDemoUtils, ShellAPI, Bbgeral, BbMensag, Bbfuncao, ManGDB, FPreview,
     PsqEmp, ManPri, AuxIni, ManCol;

{$R *.DFM}

procedure TfmManEnv.FormCreate(Sender: TObject);
begin
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

procedure TfmManEnv.FormShow(Sender: TObject);
begin
  EdCodEmp.SetFocus;
end;

procedure TfmManEnv.grR11ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmManEnv.BbPsqEmpClick(Sender: TObject);
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

  if Trim( EdCodEmp.Text ) <> '' then EdDteEst.SetFocus;

end;

procedure TfmManEnv.EdCodEmpExit(Sender: TObject);
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

procedure TfmManEnv.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEnv.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManEnv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From EstR11 Where EstR11.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  Action := CaFree;

end;

procedure TfmManEnv.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManEnv := Nil;
end;

procedure TfmManEnv.bSelecionarClick(Sender: TObject);
var
  SigUfe : string;
begin
  inherited;

  ActiveControl := nil;

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

  if Trim( EdCodEmp.Text ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Empresa.',EdCodEmp);

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerEmp.SigUfe From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdCodEmp.Text);
       Open;

       SigUfe := FieldbyName('SigUfe').AsString;
       
  end;
  
  if Trim(fLimpaStr( EdDteEst.Text )) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdDteEst);
  
  sFiltro := '';

  if Trim( EdCodEmp.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstIte.CodEmp = '+ QuotedStr(EdCodEmp.Text)
     else
        sFiltro := ' Where EstIte.CodEmp = '+ QuotedStr(EdCodEmp.Text);

  end;

  if GFlgAce = 'Sim' then begin

     if GEmpLog > 0 then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and EstIte.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
        else
           sFiltro := ' Where EstIte.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))

        end   
     else
        begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and GerEmp.CodFil > '+ QuotedStr('0')
        else
           sFiltro := ' Where GerEmp.CodFil > '+ QuotedStr('0');

     end;  
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From EstR11 Where EstR11.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  sFiltro := sFiltro + ' and EstPro.CodSte is not null';
  
  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into EstR11(SeqArq,CodEmp,CodClp,CodGru,CodSub,CodPro,CodStr,TipStr,VpfEst,SigUfe,DteEst,TipCst)'+
               ' Select :SeqArq,'+
               '        EstIte.CodEmp,'+
               '        EstIte.CodClp,'+
               '        EstIte.CodGru,'+
               '        EstIte.CodSub,'+
               '        EstIte.CodPro,'+
               '        EstPro.CodSte,'+
               '        EstPro.TipSte,'+
               '        EstIte.VpfIte,:SigUfe,:DteEst,:TipCst'+
               ' From EstIte LEFT JOIN GerEmp ON (EstIte.CodEmp = GerEmp.CodEmp)'+
               '             LEFT JOIN EstPro ON (EstIte.CodClp = EstPro.CodClp '+
               '                             AND  EstIte.CodGru = EstPro.CodGru '+
               '                             AND  EstIte.CodSub = EstPro.CodSub '+
               '                             AND  EstIte.CodPro = EstPro.CodPro)'+ sFiltro;

       with Params do begin

            Params[0].AsString   := SeqArq;
            Params[1].AsString   := SigUfe;
            Params[2].AsDateTime := EdDteEst.Date;
            Params[3].AsString   := 'Ultimo Custo';

       end;

       ExecSQL;

  end;
  
  with EstR11,SQL do begin

       Close;
       Text := ' Select EstR11.*,'+
               '        EstPro.CodUns,'+
               '        EstPro.DscPro,'+
               '        EstR11.CodClp || _UNICODE_FSS '''+' - '+''' || EstR11.CodGru || _UNICODE_FSS '''+'.'+''' || EstR11.CodSub || _UNICODE_FSS '''+'.'+''' || EstR11.CodPro as CodIte'+
               ' From EstR11 LEFT JOIN EstPro ON (EstR11.CodClp = EstPro.CodClp '+
               '                             AND  EstR11.CodGru = EstPro.CodGru '+
               '                             AND  EstR11.CodSub = EstPro.CodSub '+
               '                             AND  EstR11.CodPro = EstPro.CodPro)'+
               ' Where EstR11.SeqArq = '+ QuotedStr(SeqArq) +
               '   and EstR11.QtdEst > 0'+
               '   and EstR11.VpfEst > 0'+
               '   and EstR11.CodTme is not null'+
               '   and EstR11.FlgEnv = '+ QuotedStr('Sim') +
               ' Order by EstR11.CodClp,EstR11.CodGru,EstR11.CodSub,EstR11.CodPro';
       Open;

  end;

  if EstR11CodEmp.Value > 0 then
     bImprimir.Enabled := True
  else
     bImprimir.Enabled := False;

  grR01.FullExpand;

  grR01.SetFocus;

end;

procedure TfmManEnv.bEnviarClick(Sender: TObject);
var
  NomArq     : string;
  NomEmp     : string;
  UfeEmp     : string;
  CgcEmp     : string;
  InsEmp     : string;
  QtdPar     : string;
  TotSub_Ger : real;
  QtdReg     : integer;
  ArqTexto   : TextFile;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if fMsg('Confirma Envio das Informações','S') then begin

        NomArq := copy(FormatDateTime('dd/mm/yyyy',EdDteEst.Date),1,2) +
                  copy(FormatDateTime('dd/mm/yyyy',EdDteEst.Date),4,2) +
                  copy(FormatDateTime('dd/mm/yyyy',EdDteEst.Date),7,4) + '.TXT';

        SaveDialog.FileName := NomArq;

        if SaveDialog.Execute then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select Count(*) as QtdReg'+
                        ' From EstR11'+
                        ' Where EstR11.SeqArq = '+ QuotedStr(SeqArq) +
                        '   and EstR11.QtdEst > 0'+
                        '   and EstR11.VpfEst > 0'+
                        '   and EstR11.FlgEnv = '+ QuotedStr('Sim') +
                        '   and EstR11.CodTme is not null';
                Open;                             

                QtdReg := FieldbyName('QtdReg').AsInteger;

           end;

           if Trim(EdQtdPar.Text) = '' then
              QtdPar := '0'
           else
              QtdPar := EdQtdPar.Text;
           
           ProgressBar.Max      := QtdReg;
        
           ProgressBar.Position := 0;

           with quSQL,SQL do begin

                Close;
                Text := ' Select GerEmp.NomEmp,'+
                        '        GerEmp.CgcEmp,'+
                        '        GerEmp.InsEmp,'+
                        '        GerEmp.SigUfe '+
                        ' From GerEmp'+
                        ' Where GerEmp.CodEmp = '+ QuotedStr(EdCodEmp.Text);
                Open;                             

                NomEmp := Trim(FieldbyName('NomEmp').AsString);
                CgcEmp := Trim(FieldbyName('CgcEmp').AsString);
                InsEmp := fLimpaStr(Trim(FieldbyName('InsEmp').AsString));
                UfeEmp := Trim(FieldbyName('SigUfe').AsString);

           end;

           AssignFile(ArqTexto,SaveDialog.FileName);

           Rewrite(ArqTexto);
                       
           Write(ArqTexto,#$EF+#$BB+#$BF);

           Writeln(ArqTexto,'1'+
                            '|'+
                            CgcEmp+
                            '|'+
                            InsEmp+
                            '|'+
                            NomEmp+
                            '|'+
                            '2'+
                            '|'+
                            IntToStr(QtdReg)+
                            '|'+
                            FormatDateTime('dd/mm/yyyy',EdDteEst.Date));

           TotSub_Ger := 0;

           EstR11.First;

           while not EstR11.EOF do begin

                 TotSub_Ger := TotSub_Ger + EstR11TotSub.Value;

                 Writeln(ArqTexto,'2'+
                                  '|'+
                                  EstR11CodClp.Value+
                                  EstR11CodGru.Value+
                                  EstR11CodSub.Value+
                                  EstR11CodPro.Value+
                                  '|'+
                                  FormatFloat('###,###,##0.000',EstR11QtdEst.Value)+
                                  '|'+
                                  FormatFloat('###,###,##0.00',EstR11VpfEst.Value)+
                                  '|'+
                                  FormatFloat('###,###,##0.00',EstR11TotEst.Value)+
                                  '|'+
                                  FormatFloat('##0.00',EstR11IcmSub.Value)+
                                  '|'+
                                  FormatFloat('##0.00',EstR11MrgSub.Value)+
                                  '|'+
                                  '0,00'+
                                  '|'+
                                  FormatFloat('###,###,##0.00',EstR11TotSub.Value)+
                                  '|'+
                                  EstR11CodTme.Value+
                                  '|'+
                                  Trim(EstR11DscPro.Value)+
                                  '|'+
                                  Trim(EstR11CodUns.Value));

                 EstR11.Next;

                 ProgressBar.StepBy(1);

                 Application.ProcessMessages;

           end;

           Writeln(ArqTexto,'3'+
                            '|'+
                            FormatFloat('###,###,##0.00',EdValCre.Value)+
                            '|'+
                            FormatFloat('###,###,##0.00',TotSub_Ger)+
                            '|'+
                            FormatFloat('###,###,##0.00',TotSub_Ger - EdValCre.Value)+
                            '|'+
                            QtdPar);

           CloseFile(ArqTexto);

           with quSQL,SQL do begin

                Close;
                Text := ' Delete From EstR11 Where EstR11.SeqArq = '+ QuotedStr(SeqArq);
                ExecSQL;

           end;

           ProgressBar.Position := 0;

           bEnviar.Enabled := False;

           bImprimir.Enabled := False;

           EstR11.Close;
           EstR11.Open;

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
     
end;

procedure TfmManEnv.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Estoque de Itens com Substituição Tributária.htm', grR01.SaveToHTML);
end;

procedure TfmManEnv.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Estoque de Itens com Substituição Tributária.xls', grR01.SaveToXLS);
end;

procedure TfmManEnv.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Estoque de Itens com Substituição Tributária.xml', grR01.SaveToXML);
end;

procedure TfmManEnv.bImprimirClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     bEnviar.Enabled := True;

     ActiveControl := nil;

     dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

     dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
     dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdCodEmp.Text + ' - ' + EdNomEmp.Text);
     dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Posição de Estoque no Dia : '+ EdDteEst.Text);
     dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Saldo Credor Aproveitado : '+ FormatFloat('###,###,##0,00',EdValCre.Value));
     dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Número de Parcelas para Pagamento do ICMS : '+ EdQtdPar.Text);
     dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

     dxComponentPrinterLink1.Preview;

     end
  else
     fmsgErro(GMensagem,Nil);     
end;

procedure TfmManEnv.Save(ADefaultExt, AFilter, AFileName: String;
  AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

end.
