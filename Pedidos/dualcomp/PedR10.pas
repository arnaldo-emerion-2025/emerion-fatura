unit PedR10;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorEdit,
  dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR10 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label26: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grRes: TdxDBGrid;
    bImprimir: TBitBtn;
    Label20: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    EdPsqCodGve: TdxColorEdit;
    EdPsqCodCve: TdxColorEdit;
    bPsqCve: TSpeedButton;
    bPsqGve: TSpeedButton;
    EdPsqNomGve: TdxColorEdit;
    EdPsqNomCve: TdxColorEdit;
    PedResTOTPED: TFloatField;
    PedResQTDPED: TIntegerField;
    PedResTOTFAT: TFloatField;
    PedResTOTCAN: TFloatField;
    PedResTOTDEV: TFloatField;
    PedResQTDCLI: TIntegerField;
    PedResQTDATI: TIntegerField;
    PedResVENDEDOR: TStringField;
    grResTOTPED: TdxDBGridMaskColumn;
    grResQTDPED: TdxDBGridMaskColumn;
    grResTOTFAT: TdxDBGridMaskColumn;
    grResTOTCAN: TdxDBGridMaskColumn;
    grResTOTDEV: TdxDBGridMaskColumn;
    grResTOTCRE: TdxDBGridMaskColumn;
    grResQTDCLI: TdxDBGridMaskColumn;
    grResQTDATI: TdxDBGridMaskColumn;
    grResVENDEDOR: TdxDBGridMaskColumn;
    PedResTOTCRE: TFloatField;
    PedResTOTDEB: TFloatField;
    grResTOTDEB: TdxDBGridColumn;
    PedResTOTCFA: TFloatField;
    grResTOTCFA: TdxDBGridColumn;
    PedResTOTLIQ: TFloatField;
    grResTOTLIQ: TdxDBGridColumn;
    PedResFATLIQ: TFloatField;
    grResFATLIQ: TdxDBGridColumn;
    rgStatus: TRadioGroup;
    rgTipo: TRadioGroup;
    Colunas1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grResReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure bPsqCveClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure EdPsqCodCveExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    {Private declarations}
    SeqArq : string;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
  end;

var
  fmPedR10: TfmPedR10;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, PsqPfa,
     AuxPsq, ManGDB, ManPri, PsqGve, PsqCve, ManCol;

{$R *.DFM}

procedure TfmPedR10.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR10.FormCreate(Sender: TObject);
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

procedure TfmPedR10.bbPesquisaClick(Sender: TObject);
var
sFiltro1,sFiltro2,sFiltro3,sFiltro4,sFiltro5,sFiltro6 : string;
sFiltro1_Ant,sFiltro2_Ant : string;
begin

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
  
  if Trim(fLimpaStr( EdPsqDteRes1.Text )) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPsqDteRes1);
  if Trim(fLimpaStr( EdPsqDteRes2.Text )) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPsqDteRes2);

  sFiltro1 := '';
  sFiltro2 := '';
  sFiltro3 := '';
  sFiltro4 := '';
  sFiltro5 := '';
  sFiltro6 := '';  

  sFiltro1_Ant := '';
  sFiltro2_Ant := '';

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR10 Where PedR10.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR11 Where PedR11.SeqArq = '+ QuotedStr(SeqArq);
       ExecSQL;

  end;

  if (rgTipo.ItemIndex = 1) or (rgTipo.ItemIndex = 2) then begin
   
     if Trim( EdPsqCodEmp.Text ) <> '' then begin

        sFiltro2 := ' and PedRes.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
        sFiltro3 := ' and PedLib.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
        sFiltro4 := ' and PedLib.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
        sFiltro5 := ' and FatDev.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
        sFiltro6 := ' and FatDep.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

     end;

     if Trim( EdPsqCodGve.Text ) <> '' then sFiltro1 := sFiltro1 + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);
     if Trim( EdPsqCodCve.Text ) <> '' then sFiltro1 := sFiltro1 + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);

     if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro3 := sFiltro3 + ' and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
     if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro3 := sFiltro3 + ' and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));
     if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro2 := sFiltro2 + ' and PedRes.DteRes >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
     if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro2 := sFiltro2 + ' and PedRes.DteRes <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));
     if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro4 := sFiltro4 + ' and PedLib.DteDel >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
     if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro4 := sFiltro4 + ' and PedLib.DteDel <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));
     if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro5 := sFiltro5 + ' and FatDev.DteDev >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
     if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro5 := sFiltro5 + ' and FatDev.DteDev <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));
     if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro6 := sFiltro6 + ' and FatDep.DteDep >= '+ QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
     if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro6 := sFiltro6 + ' and FatDep.DteDep <= '+ QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

     if GFlgAce = 'Sim' then begin

        sFiltro3 := sFiltro3 + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');
        sFiltro2 := sFiltro2 + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = '+QuotedStr('Sim');
        sFiltro4 := sFiltro4 + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '+ QuotedStr(SeqArq) + ',' +
                  '        PedRes.CodVen,'+
                  '        FinVen.ApeVen,'+
                  '        Sum(BasCom),'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +',Count(*) as QtdReg,'+
                  QuotedStr('0') +
                  '        From PedRes,FinVen'+
                  '        Where PedRes.CodVen = FinVen.CodVen'+
                  '          and PedRes.IntFin = '+ QuotedStr('Sim') +' and PedRes.ModPfa = '+ QuotedStr('Vendas') + sFiltro1 + sFiltro2;

          if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

          Text := Text + ' group by PedRes.CodVen,FinVen.ApeVen';

          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '+ QuotedStr(SeqArq) + ',' +
                  '        PedLib.CodVen,'+
                  '        FinVen.ApeVen,'+
                  QuotedStr('0') +','+
                  '        Sum(BasCom),'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  '        Sum(TotCom),'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +
                  ' From PedLib,FinVen'+
                  ' Where PedLib.CodVen = FinVen.CodVen'+
                  '   and PedLib.SitLib = '+ QuotedStr('Faturado') +' and PedLib.IntFin = '+ QuotedStr('Sim') +' and PedLib.ModPfa = '+ QuotedStr('Vendas') + sFiltro1 + sFiltro3;

          if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and PedLib.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

          Text := Text + ' group by PedLib.CodVen,FinVen.ApeVen';

          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '+ QuotedStr(SeqArq) + ',' +
                  '        PedLib.CodVen,'+
                  '        FinVen.ApeVen,'+
                  QuotedStr('0') +','+
                  '        Sum(BasCom),'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  '        Sum(TotCom),'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +
                  ' From PedLib,FinVen'+
                  ' Where PedLib.CodVen = FinVen.CodVen'+
                  '   and PedLib.SitLib = '+ QuotedStr('Devolvido') +' and PedLib.IntFin = '+ QuotedStr('Sim') +' and PedLib.ModPfa = '+ QuotedStr('Vendas') + sFiltro1 + sFiltro3;

          if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and PedLib.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

          Text := Text + ' group by PedLib.CodVen,FinVen.ApeVen';

          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '+ QuotedStr(SeqArq) + ',' +
                  '        PedLib.CodVen,'+
                  '        FinVen.ApeVen,'+
                  QuotedStr('0') +','+
                  '        Sum(BasCom),'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  '        Sum(TotCom),'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +
                  ' From PedLib,FinVen'+
                  ' Where PedLib.CodVen = FinVen.CodVen'+
                  '   and PedLib.SitLib = '+ QuotedStr('Cancelado') +' and PedLib.IntFin = '+ QuotedStr('Sim') + ' and PedLib.ModPfa = '+ QuotedStr('Vendas') + sFiltro1 + sFiltro3;

          if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and PedLib.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

          Text := Text + ' group by PedLib.CodVen,FinVen.ApeVen';

          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '+ QuotedStr(SeqArq) +','+
                  '        PedRes.CodVen,'+
                  '        FinVen.ApeVen,'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  '        Sum(BasCom),'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +
                  ' From PedRes,FinVen'+
                  ' Where PedRes.CodVen = FinVen.CodVen'+
                  '   and PedRes.SitRes = '+ QuotedStr('Cancelado') +
                  '   and PedRes.IntFin = '+ QuotedStr('Sim') +' and PedRes.ModPfa = '+ QuotedStr('Vendas') + sFiltro1 + sFiltro2;

          if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

          Text := Text + ' group by PedRes.CodVen,FinVen.ApeVen';

          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '+ QuotedStr(SeqArq) +','+
                  '        FatDev.CodVen,'+
                  '        FinVen.ApeVen,'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  '        Sum(BasCom),'+
                  QuotedStr('0') +','+
                  '        Sum(TotCom),'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +
                  ' From FatDev,FinVen'+
                  ' Where FatDev.CodVen = FinVen.CodVen'+
                  '   and FatDev.SitDev = '+ QuotedStr('Devolvido') +' and FatDev.IntFin = '+ QuotedStr('Sim') +' and FatDev.ModPfa = '+ QuotedStr('Vendas') +' and FatDev.FlgDif = '+ QuotedStr('Nao') + sFiltro1 + sFiltro5;

          if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and FatDev.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

          Text := Text + ' group by FatDev.CodVen,FinVen.ApeVen';

          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '+ QuotedStr(SeqArq) + ',' +
                  '        FatDep.CodVen,'+
                  '        FinVen.ApeVen,'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  '        Sum(BasCom),'+
                  QuotedStr('0') +','+
                  '        Sum(TotCom),'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +
                  ' From FatDep,FinVen'+
                  ' Where FatDep.CodVen = FinVen.CodVen'+
                  '   and FatDep.SitDep = '+ QuotedStr('Concluido') +' and FatDep.IntFin = '+ QuotedStr('Sim') +' and FatDep.ModPfa = '+ QuotedStr('Vendas') + sFiltro1 + sFiltro6;

          if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and FatDep.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

          Text := Text + ' group by FatDep.CodVen,FinVen.ApeVen';

          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '+ QuotedStr(SeqArq) + ',' +
                  '        FinVen.CodVen,'+
                  '        FinVen.ApeVen as NomVen,'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  '        (Select Count(*) From FinCli Where FinCli.CodVen = FinVen.CodVen),'+
                  QuotedStr('0') +','+
                  QuotedStr('0') +','+
                  QuotedStr('0') +
                  '        From FinVen';

          if Trim( EdPsqCodVen.Text ) <> '' then begin

             if pos('Where FinVen',Text) > 0 then
                Text := Text + ' and FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text)
             else
                Text := Text + ' Where FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

          end;

          if Trim( EdPsqCodGve.Text ) <> '' then begin

             if pos('Where FinVen',Text) > 0 then
                Text := Text + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text)
             else
                Text := Text + ' Where FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);

          end;
       
          if Trim( EdPsqCodCve.Text ) <> '' then begin

             if pos('Where FinVen',Text) > 0 then
                Text := Text + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text)
             else
                Text := Text + ' Where FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);

          end;

          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '''+ SeqArq +''','+
                  '        PedRes.CodVen,'+
                  '        FinVen.ApeVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                  '        Count(Distinct PedRes.CodCli),'''+ '0' +''','''+ '0' +''''+
                  '        From PedRes,FinVen'+
                  ' Where PedRes.CodVen = FinVen.CodVen'+
                  '   and PedRes.IntFin = '''+ 'Sim'    +''''+
                  '   and PedRes.ModPfa = '''+ 'Vendas' +''''+ sFiltro1 + sFiltro2 + ' group by PedRes.CodVen,FinVen.ApeVen';
          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '''+ SeqArq +''','+
                  '        PedLib.CodVen,'+
                  '        FinVen.ApeVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                  '        Sum(TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                  '        Sum(BasCom)'+
                  '        From PedLib,FinVen'+
                  '        Where PedLib.CodVen = FinVen.CodVen'+
                  '          and PedLib.SitLib = '''+ 'Cancelado' +''''+
                  '          and PedLib.IntFin = '''+ 'Sim'       +''''+
                  '          and PedLib.ModPfa = '''+ 'Vendas'    +''''+ sFiltro1 + sFiltro4 + ' group by PedLib.CodVen,FinVen.ApeVen';
          ExecSQL;

     end;
  end;

  if (rgTipo.ItemIndex = 0) or (rgTipo.ItemIndex = 2) then begin
  
     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From rdb$relations'+
                  ' Where rdb$relations.rdb$relation_name = '+ QuotedStr('LOJPED');
          Open;

     end;

     if quSQL.FieldbyName('QtdReg').AsInteger > 0 then begin

        sFiltro1_Ant := sFiltro1;
        sFiltro2_Ant := sFiltro2;
     
        (* Se o Banco de Dados possui FrenteLoja - Acrescenta-se a Comissão  *)
        (* do Modulo                                                         *)

        sFiltro1 := '';
        sFiltro2 := '';
        sFiltro3 := '';
        sFiltro4 := '';
        sFiltro5 := '';
        sFiltro6 := '';                

        if Trim( EdPsqCodEmp.Text ) <> '' then begin

           sFiltro2 := ' and LojPed.CodEmp = '''+ EdPsqCodEmp.Text +'''';
           sFiltro3 := ' and LojPed.CodEmp = '''+ EdPsqCodEmp.Text +'''';
           sFiltro4 := ' and LojPed.CodEmp = '''+ EdPsqCodEmp.Text +'''';
           sFiltro5 := ' and LojDev.CodEmp = '''+ EdPsqCodEmp.Text +'''';
           sFiltro6 := ' and LojGer.CodEmp = '''+ EdPsqCodEmp.Text +'''';

        end;

        if Trim( EdPsqCodGve.Text ) <> '' then sFiltro1 := sFiltro1 + ' and FinVen.CodGve = '''+ EdPsqCodGve.Text +'''';
        if Trim( EdPsqCodCve.Text ) <> '' then sFiltro1 := sFiltro1 + ' and FinVen.CodCve = '''+ EdPsqCodCve.Text +'''';

        if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro3 := sFiltro3 + ' and LojPed.DopRpe >= '''+ fDateToSQL(EdPsqDteRes1.Date) +'''';
        if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro3 := sFiltro3 + ' and LojPed.DopRpe <= '''+ fDateToSQL(EdPsqDteRes2.Date) +'''';
        if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro2 := sFiltro2 + ' and LojPed.DtePed >= '''+ fDateToSQL(EdPsqDteRes1.Date) +'''';
        if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro2 := sFiltro2 + ' and LojPed.DtePed <= '''+ fDateToSQL(EdPsqDteRes2.Date) +'''';
        if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro4 := sFiltro4 + ' and LojPed.DteDel >= '''+ fDateToSQL(EdPsqDteRes1.Date) +'''';
        if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro4 := sFiltro4 + ' and LojPed.DteDel <= '''+ fDateToSQL(EdPsqDteRes2.Date) +'''';
        if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro5 := sFiltro5 + ' and LojDev.DteDev >= '''+ fDateToSQL(EdPsqDteRes1.Date) +'''';
        if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro5 := sFiltro5 + ' and LojDev.DteDev <= '''+ fDateToSQL(EdPsqDteRes2.Date) +'''';
        if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro6 := sFiltro6 + ' and LojGer.DopGer >= '''+ fDateToSQL(EdPsqDteRes1.Date) +'''';
        if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro6 := sFiltro6 + ' and LojGer.DopGer <= '''+ fDateToSQL(EdPsqDteRes2.Date) +'''';

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                     ' Select '''+ SeqArq +''','+
                     '        LojPed.CodVen,'+
                     '        FinVen.ApeVen,'+
                     '        Sum(LojPed.BasCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''',Count(*) as QtdReg,'''+ '0' +''''+
                     '        From LojPed,FinVen'+
                     '        Where LojPed.CodVen = FinVen.CodVen'+
                     '          and LojPed.ModPfa = '''+ 'Vendas'    +''''+
                     '          and LojPed.FlgVal = '''+ 'Nao'       +''''+
                     '          and LojPed.TipCpa = '''+ 'Vendedor'  +''''+ sFiltro1 + sFiltro2;

             if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and LojPed.CodVen = '''+ EdPsqCodVen.Text +'''';

             Text := Text + ' group by LojPed.CodVen,FinVen.ApeVen';

             ExecSQL;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                     ' Select '''+ SeqArq +''','+
                     '        LojPed.CodAtd,'+
                     '        FinVen.ApeVen,'+
                     '        Sum(LojPed.BasCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''',Count(*) as QtdReg,'''+ '0' +''''+
                     '        From LojPed,FinVen'+
                     '        Where LojPed.CodAtd = FinVen.CodVen'+
                     '          and LojPed.ModPfa = '''+ 'Vendas'    +''''+
                     '          and LojPed.FlgVal = '''+ 'Nao'       +''''+
                     '          and LojPed.TipCpa = '''+ 'Atendente' +''''+ sFiltro1 + sFiltro2;

             if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and LojPed.CodAtd = '''+ EdPsqCodVen.Text +'''';

             Text := Text + ' group by LojPed.CodAtd,FinVen.ApeVen';

             ExecSQL;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                     ' Select '''+ SeqArq +''','+
                     '        LojPed.CodVen,'+
                     '        FinVen.ApeVen,'''+ '0' +''','+
                     '        Sum(LojPed.BasCom),'''+ '0' +''','''+ '0' +''','+
                     '        Sum(LojPed.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''''+
                     '        From LojPed,FinVen'+
                     '        Where LojPed.CodVen = FinVen.CodVen'+
                     '          and ( LojPed.SitPed = '''+ 'Recebida' +''' or LojPed.SitPed = '''+ 'Cancelada' +''' )'+
                     '          and LojPed.TipCpa = '''+ 'Vendedor' +''''+
                     '          and LojPed.FlgVal = '''+ 'Nao'      +''''+
                     '          and LojPed.ModPfa = '''+ 'Vendas'   +''''+ sFiltro1 + sFiltro3;

             if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and LojPed.CodVen = '''+ EdPsqCodVen.Text +'''';

             Text := Text + ' group by LojPed.CodVen,FinVen.ApeVen';

             ExecSQL;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                     ' Select '''+ SeqArq +''','+
                     '        LojPed.CodAtd,'+
                     '        FinVen.ApeVen,'''+ '0' +''','+
                     '        Sum(LojPed.BasCom),'''+ '0' +''','''+ '0' +''','+
                     '        Sum(LojPed.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''''+
                     '        From LojPed,FinVen'+
                     '        Where LojPed.CodAtd = FinVen.CodVen'+
                     '          and ( LojPed.SitPed = '''+ 'Recebida' +''' or LojPed.SitPed = '''+ 'Cancelada' +''' )'+
                     '          and LojPed.TipCpa = '''+ 'Atendente' +''''+
                     '          and LojPed.FlgVal = '''+ 'Nao'       +''''+
                     '          and LojPed.ModPfa = '''+ 'Vendas'    +''''+ sFiltro1 + sFiltro3;

             if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and LojPed.CodAtd = '''+ EdPsqCodVen.Text +'''';

             Text := Text + ' group by LojPed.CodAtd,FinVen.ApeVen';

             ExecSQL;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                     ' Select '''+ SeqArq +''','+
                     '        LojDev.CodVen,'+
                     '        FinVen.ApeVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                     '        Sum(LojDev.BasCom),'''+ '0' +''','+
                     '        Sum(LojDev.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''''+
                     '        From LojDev,LojPed,FinVen'+
                     '        Where LojDev.CodEmp = LojPed.CodEmp'+
                     '          and LojDev.DtePed = LojPed.DtePed'+
                     '          and LojDev.NumPed = LojPed.NumPed'+
                     '          and LojDev.CodVen = FinVen.CodVen'+
                     '          and LojDev.SitDev = '''+ 'Concluida' +''''+
                     '          and LojDev.TipCpa = '''+ 'Vendedor'  +''''+
                     '          and LojPed.FlgVal = '''+ 'Nao'       +''''+
                     '          and LojDev.ModPfa = '''+ 'Vendas'    +''''+ sFiltro1 + sFiltro5;

             if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and LojDev.CodVen = '''+ EdPsqCodVen.Text +'''';

             Text := Text + ' group by LojDev.CodVen,FinVen.ApeVen';

             ExecSQL;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                     ' Select '''+ SeqArq +''','+
                     '        LojDev.CodAtd,'+
                     '        FinVen.ApeVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                     '        Sum(LojDev.BasCom),'''+ '0' +''','+
                     '        Sum(LojDev.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''''+
                     '        From LojDev,LojPed,FinVen'+
                     '        Where LojDev.CodEmp = LojPed.CodEmp'+
                     '          and LojDev.DtePed = LojPed.DtePed'+
                     '          and LojDev.NumPed = LojPed.NumPed'+
                     '          and LojDev.CodAtd = FinVen.CodVen'+
                     '          and LojDev.SitDev = '''+ 'Concluida' +''''+
                     '          and LojDev.TipCpa = '''+ 'Atendente' +''''+
                     '          and LojPed.FlgVal = '''+ 'Nao'       +''''+
                     '          and LojDev.ModPfa = '''+ 'Vendas'    +''''+ sFiltro1 + sFiltro5;

             if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and LojDev.CodAtd = '''+ EdPsqCodVen.Text +'''';

             Text := Text + ' group by LojDev.CodAtd,FinVen.ApeVen';

             ExecSQL;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                     ' Select '''+ SeqArq +''','+
                     '        LojGer.CodVen,'+
                     '        FinVen.ApeVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                     '        Sum(LojGer.BasCom),'''+ '0' +''','+
                     '        Sum(LojGer.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''''+
                     '        From LojGer,FinVen'+
                     '        Where LojGer.CodVen = FinVen.CodVen'+
                     '          and LojGer.SitGer = '''+ 'Concluida' +''''+ sFiltro1 + sFiltro6;

             if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and LojGer.CodVen = '''+ EdPsqCodVen.Text +'''';

             Text := Text + ' group by LojGer.CodVen,FinVen.ApeVen';

             ExecSQL;

        end;

        if rgTipo.ItemIndex = 0 then begin
        
           with quSQL,SQL do begin

                Close;
                Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                        ' Select '''+ SeqArq +''','+
                        '        FinVen.CodVen,'+
                        '        FinVen.ApeVen as NomVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                        '        (Select Count(*) From FinCli Where FinCli.CodVen = FinVen.CodVen),'''+ '0' +''','''+ '0' +''','''+ '0' +''''+
                        '        From FinVen';

                if Trim( EdPsqCodVen.Text ) <> '' then begin

                   if pos('Where FinVen',Text) > 0 then
                      Text := Text + ' and FinVen.CodVen = '''+ EdPsqCodVen.Text +''''
                   else
                      Text := Text + ' Where FinVen.CodVen = '''+ EdPsqCodVen.Text +'''';

                end;

                if Trim( EdPsqCodGve.Text ) <> '' then begin

                   if pos('Where FinVen',Text) > 0 then
                      Text := Text + ' and FinVen.CodGve = '''+ EdPsqCodGve.Text +''''
                   else
                      Text := Text + ' Where FinVen.CodGve = '''+ EdPsqCodGve.Text +'''';

                end;

                if Trim( EdPsqCodCve.Text ) <> '' then begin

                   if pos('Where FinVen',Text) > 0 then
                      Text := Text + ' and FinVen.CodCve = '''+ EdPsqCodCve.Text +''''
                   else
                      Text := Text + ' Where FinVen.CodCve = '''+ EdPsqCodCve.Text +'''';

                end;
             
                ExecSQL;

           end;
        end;
        
        if (rgTipo.ItemIndex = 1) or (rgTipo.ItemIndex = 2) then begin
        
           with quSQL,SQL do begin

                Close;
                Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                        ' Select '''+ SeqArq +''','+
                        '        LojPed.CodVen,'+
                        '        FinVen.ApeVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                        '        Count(Distinct LojPed.CodCli),'''+ '0' +''','''+ '0' +''''+
                        '        From LojPed,FinVen'+
                        ' Where LojPed.CodVen = FinVen.CodVen'+
                        '   and LojPed.ModPfa = '''+ 'Vendas'   +''''+
                        '   and LojPed.FlgVal = '''+ 'Nao'      +''''+
                        '   and LojPed.TipCpa = '''+ 'Vendedor' +''''+
                        '   and LojPed.CodCli is not null '+ sFiltro1 + sFiltro2 +
                        '   and not Exists(Select * From PedRes Where PedRes.CodVen = LojPed.CodVen'+
                        '                                         and PedRes.CodCli = LojPed.CodCli'+
                        '                                         and PedRes.IntFin = '''+ 'Sim'    +''''+
                        '                                         and PedRes.ModPfa = '''+ 'Vendas' +''''+ sFiltro2_Ant + ' )';

                Text := Text + ' group by LojPed.CodVen,FinVen.ApeVen';

                ExecSQL;

           end;

           end
        else
           begin

           with quSQL,SQL do begin

                Close;
                Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                        ' Select '''+ SeqArq +''','+
                        '        LojPed.CodVen,'+
                        '        FinVen.ApeVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                        '        Count(Distinct LojPed.CodCli),'''+ '0' +''','''+ '0' +''''+
                        '        From LojPed,FinVen'+
                        ' Where LojPed.CodVen = FinVen.CodVen'+
                        '   and LojPed.ModPfa = '''+ 'Vendas'   +''''+
                        '   and LojPed.FlgVal = '''+ 'Nao'      +''''+
                        '   and LojPed.TipCpa = '''+ 'Vendedor' +''''+
                        '   and LojPed.CodCli is not null '+ sFiltro1 + sFiltro2 +
                        '   and not Exists(Select * From PedRes Where PedRes.CodVen = LojPed.CodVen'+
                        '                                         and PedRes.CodCli = LojPed.CodCli'+
                        '                                         and PedRes.IntFin = '''+ 'Sim'    +''''+
                        '                                         and PedRes.ModPfa = '''+ 'Vendas' +''''+ sFiltro2_Ant + ' )';

                Text := Text + ' group by LojPed.CodVen,FinVen.ApeVen';

                ExecSQL;

           end;
        end;
           
        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                     ' Select '''+ SeqArq +''','+
                     '        LojPed.CodAtd,'+
                     '        FinVen.ApeVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                     '        Count(Distinct LojPed.CodCli),'''+ '0' +''','''+ '0' +''''+
                     '        From LojPed,FinVen'+
                     ' Where LojPed.CodAtd = FinVen.CodVen'+
                     '   and LojPed.ModPfa = '''+ 'Vendas'    +''''+
                     '   and LojPed.FlgVal = '''+ 'Nao'       +''''+
                     '   and LojPed.TipCpa = '''+ 'Atendente' +''''+ sFiltro1 + sFiltro2 + ' group by LojPed.CodAtd,FinVen.ApeVen';
             ExecSQL;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                     ' Select '''+ SeqArq +''','+
                     '        LojPed.CodVen,'+
                     '        FinVen.ApeVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''',Sum(LojPed.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                     '        Sum(LojPed.BasCom)'+
                     '        From LojPed,FinVen'+
                     '        Where LojPed.CodVen = FinVen.CodVen'+
                     '          and LojPed.SitPed = '''+ 'Cancelada' +''''+
                     '          and LojPed.ModPfa = '''+ 'Vendas'    +''''+
                     '          and LojPed.FlgVal = '''+ 'Nao'       +''''+
                     '          and LojPed.TipCpa = '''+ 'Vendedor'  +''''+ sFiltro1 + sFiltro4 + ' group by LojPed.CodVen,FinVen.ApeVen';
             ExecSQL;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedR10(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                     ' Select '''+ SeqArq +''','+
                     '        LojPed.CodAtd,'+
                     '        FinVen.ApeVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''',Sum(LojPed.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                     '        Sum(LojPed.BasCom)'+
                     '        From LojPed,FinVen'+
                     '        Where LojPed.CodAtd = FinVen.CodVen'+
                     '          and LojPed.SitPed = '''+ 'Cancelada' +''''+
                     '          and LojPed.ModPfa = '''+ 'Vendas'    +''''+
                     '          and LojPed.FlgVal = '''+ 'Nao'       +''''+
                     '          and LojPed.TipCpa = '''+ 'Atendente' +''''+ sFiltro1 + sFiltro4 + ' group by LojPed.CodAtd,FinVen.ApeVen';
             ExecSQL;

        end;
     end;
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR11(SeqArq,CodVen,ApeVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
               ' Select PedR10.SeqArq,'+
               '        PedR10.CodVen,'+
               '        PedR10.ApeVen,'+
               '        Sum(TotPed) as TotPed,'+               
               '        Sum(TotFat) as TotFat,'+
               '        Sum(TotCan) as TotCan,'+
               '        Sum(TotDev) as TotDev,'+
               '        Sum(TotCre) as TotCre,'+
               '        Sum(TotDeb) as TotDeb,'+
               '        Sum(QtdCli) as QtdCli,'+
               '        Sum(QtdAti) as QtdAti,'+
               '        Sum(QtdPed) as QtdPed,'+
               '        Sum(TotCfa) as TotCfa'+
               ' From PedR10 Where PedR10.SeqArq = '''+ SeqArq +'''';

       Text := Text + ' Group by PedR10.SeqArq,PedR10.CodVen,PedR10.ApeVen';

       ExecSQL;

  end;
  
  with PedRes,SQL do begin

       Close;
       Text := ' Select Sum(PedR11.TotPed) as TotPed,'+
               '        Sum(PedR11.TotFat) as TotFat,'+
               '        Sum(PedR11.TotCan) as TotCan,'+
               '        Sum(PedR11.TotDev) as TotDev,'+
               '        Sum(PedR11.TotCre) as TotCre,'+
               '        Sum(PedR11.TotDeb) as TotDeb,'+
               '        Sum(PedR11.QtdCli) as QtdCli,'+
               '        Sum(PedR11.QtdAti) as QtdAti,'+
               '        Sum(PedR11.QtdPed) as QtdPed,'+
               '        Sum(PedR11.TotCfa) as TotCfa,'+
               '        Sum(PedR11.TotFat - (PedR11.TotCfa + PedR11.TotDev)) as FatLiq,'+
               '        Round(Sum(PedR11.TotCre) - Sum(PedR11.TotDeb),2) as TotLiq,'+
               '        TextoOcor(IntStrZeros(PedR11.CodVen,3),'''+ '-' +''',PedR11.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Vendedor'+
               ' From PedR11 Where PedR11.SeqArq = '''+ SeqArq +'''';

       if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and PedR11.CodVen = '''+ EdPsqCodVen.Text +'''';

       case rgStatus.Itemindex of
            0: Text := Text + ' and ( PedR11.TotPed > 0 or  PedR11.TotFat > 0 )';
            1: Text := Text + ' and ( PedR11.TotPed = 0 and PedR11.TotFat = 0 )';
       end;
       
       Text := Text + ' Group by TextoOcor(IntStrZeros(PedR11.CodVen,3),'''+ '-' +''',PedR11.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''')';

       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR10 Where PedR10.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR11 Where PedR11.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  grRes.FullExpand;

  grRes.SetFocus;

end;

procedure TfmPedR10.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

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
          Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('ApeEmp').AsString ) <> '' then
             EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
          else
             begin

             EdPsqApeEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmPedR10.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmPedR10.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmPedR10.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select ApeVen From FinVen Where CodVen = '''+EdPsqCodVen.Text+'''';
          Open;

          EdPsqNomVen.Text := quSql.FieldByName('ApeVen').AsString;
     end;

     end
  else
     EdPsqNomVen.Text := '';
end;

procedure TfmPedR10.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqVen := TfmPsqVen.Create(Self);

        fmPsqVen.ShowModal;

        if fmPsqVen.CodVen > 0 then begin

           EdPsqNomVen.Text := fmPsqVen.NomVen;
           EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);

        end;

     finally

        FreeAndNil(fmPsqVen);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           EdPsqNomVen.Text := fmAuxPsq.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmPedR10.BbPsqVenClick(Sender: TObject);
begin

  try

     fmPsqVen := TfmPsqVen.Create(Self);

     fmPsqVen.ShowModal;

     if fmPsqVen.CodVen > 0 then begin

        EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);
        EdPsqNomVen.Text := fmPsqVen.NomVen;

     end;

  finally

     FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmPedR10.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR10.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR10.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR10.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdPsqCodGve.Text + ' - ' + EdPsqNomGve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : '+ EdPsqCodCve.Text + ' - ' + EdPsqNomCve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : '+ EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Emitidos Em : '+ EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);

  case rgStatus.Itemindex of
       0:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Status : Com Movimentação');
       1:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Status : Sem Movimentação');
       2:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Status : Todos');
  end;

  case rgTipo.Itemindex of
       0:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de Operação : Varejo');
       1:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de Operação : Atacado');
       2:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de Operação : Todos');
  end;
  
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR10.grResReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR10.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Fechamento de Comissões (Sintetico).htm', grRes.SaveToHTML);
end;

procedure TfmPedR10.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Fechamento de Comissões (Sintetico).xls', grRes.SaveToXLS);
end;

procedure TfmPedR10.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Fechamento de Comissões (Sintetico).xml', grRes.SaveToXML);
end;

procedure TfmPedR10.bPsqGveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGve := TfmPsqGve.Create(Self);

     fmPsqGve.ShowModal;

     if fmPsqGve.CodGve > 0 then begin

        EdPsqCodGve.Text := IntToStr(fmPsqGve.CodGve);
        EdPsqNomGve.Text := fmPsqGve.NomGve;

     end;

  finally

     FreeAndNil(fmPsqGve);

  end;
end;

procedure TfmPedR10.bPsqCveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCve := TfmPsqCve.Create(Self);

     fmPsqCve.ShowModal;

     if fmPsqCve.CodCve > 0 then begin

        EdPsqCodCve.Text := IntToStr(fmPsqCve.CodCve);
        EdPsqNomCve.Text := fmPsqCve.NomCve;

     end;

  finally

     FreeAndNil(fmPsqCve);

  end;
end;

procedure TfmPedR10.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR10.EdPsqCodGveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomGve From FinGve Where CodGve = '''+EdPsqCodGve.Text+'''';
          Open;

          EdPsqNomGve.Text := FieldByName('NomGve').AsString;

     end;

     end
  else
     EdPsqNomGve.Text := '';
end;

procedure TfmPedR10.EdPsqCodCveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCve From FinCve Where CodCve = '''+EdPsqCodCve.Text+'''';
          Open;

          EdPsqNomCve.Text := FieldByName('NomCve').AsString;

     end;

     end
  else
     EdPsqNomCve.Text := '';
end;

procedure TfmPedR10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR10 Where PedR10.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR11 Where PedR11.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmPedR10.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR10 := nil;
end;

procedure TfmPedR10.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmPedR10.grRes);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

end.

