unit CmpR07;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorPickEdit,
  dxColorEdit, dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmCmpR07 = class(TfmPadrao)
    CmpR07: TwwQuery;
    DsEnt: TwwDataSource;
    PaintBox: TPaintBox;
    Label28: TLabel;
    EdDteDoc1: TdxColorDateEdit;
    Label29: TLabel;
    EdDteDoc2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    EdCodFor: TdxColorEdit;
    EdCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqFor: TSpeedButton;
    EdNomFor: TdxColorEdit;
    EdNomEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label11: TLabel;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grEnt: TdxDBGrid;
    bImprimir: TBitBtn;
    Label4: TLabel;
    Label9: TLabel;
    EdModPfa: TdxColorPickEdit;
    Label14: TLabel;
    EdCodTmo: TdxColorEdit;
    bPsqTmo: TSpeedButton;
    EdNomTmo: TdxColorEdit;
    Label7: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    EdCodCat: TdxColorEdit;
    EdCodTip: TdxColorEdit;
    EdCodMrc: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodPro: TdxColorEdit;
    bPsqPro: TSpeedButton;
    bPsqSub: TSpeedButton;
    bPsqGru: TSpeedButton;
    bPsqClp: TSpeedButton;
    PsqMrc: TSpeedButton;
    PsqTip: TSpeedButton;
    PsqCat: TSpeedButton;
    EdNomCat: TdxColorEdit;
    EdNomTip: TdxColorEdit;
    EdNomMrc: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdNomPro: TdxColorEdit;
    rgPeriodo: TRadioGroup;
    CmpR07SEQARQ: TStringField;
    CmpR07CODEMP: TIntegerField;
    CmpR07CODFIL: TIntegerField;
    CmpR07LANEST: TStringField;
    CmpR07DTEENT: TDateTimeField;
    CmpR07NUMENT: TIntegerField;
    CmpR07DTEDOC: TDateTimeField;
    CmpR07CODFOR: TIntegerField;
    CmpR07NOMFOR: TStringField;
    CmpR07CODCLP: TStringField;
    CmpR07CODGRU: TStringField;
    CmpR07CODSUB: TStringField;
    CmpR07CODPRO: TStringField;
    CmpR07CODTAM: TStringField;
    CmpR07CODCOR: TStringField;
    CmpR07CODMRC: TIntegerField;
    CmpR07NOMMRC: TStringField;
    CmpR07VLUEN2: TFloatField;
    CmpR07VALVEN: TFloatField;
    CmpR07CODUND: TStringField;
    CmpR07ICMEN2: TFloatField;
    CmpR07IPIEN2: TFloatField;
    CmpR07DSCEN2: TFloatField;
    CmpR07VDSEN2: TFloatField;
    CmpR07PACEN2: TFloatField;
    CmpR07VACEN2: TFloatField;
    CmpR07TOTEN2: TFloatField;
    CmpR07CSTOUT: TFloatField;
    CmpR07VPFITE: TFloatField;
    CmpR07QTDQTE: TFloatField;
    CmpR07MARKUP: TFloatField;
    CmpR07FORNECEDOR: TStringField;
    CmpR07MARCA: TStringField;
    CmpR07CODTMO: TIntegerField;
    CmpR07VALTMO: TFloatField;
    CmpR07CODSIT: TStringField;
    CmpR07DSCPRO: TStringField;
    grEntVLUEN2: TdxDBGridMaskColumn;
    grEntVB1ITE: TdxDBGridMaskColumn;
    grEntCODUND: TdxDBGridMaskColumn;
    grEntCSTOUT: TdxDBGridMaskColumn;
    grEntVPFITE: TdxDBGridMaskColumn;
    grEntMK1ITE: TdxDBGridMaskColumn;
    grEntCODSIT: TdxDBGridMaskColumn;
    grEntCODITE: TdxDBGridMaskColumn;
    grEntDSCPRO: TdxDBGridMaskColumn;
    CmpR07CODANT: TStringField;
    CmpR07CLSIPI: TStringField;
    CmpR07QTANTE: TFloatField;
    CmpR07QTPEN2: TFloatField;
    CmpR07QTATUA: TFloatField;
    CmpR07VPFOUT: TFloatField;
    grEntQTANTE: TdxDBGridColumn;
    grEntQTATUA: TdxDBGridColumn;
    grEntQTDQTE: TdxDBGridColumn;
    grEntVPFOUT: TdxDBGridColumn;
    grEntQTPEN2: TdxDBGridColumn;
    grEntCLSIPI: TdxDBGridColumn;
    grEntNUMDOC: TdxDBGridColumn;
    grEntFORNECEDOR: TdxDBGridColumn;
    grEntPERCOM: TdxDBGridColumn;
    CmpR07CODTIP: TIntegerField;
    CmpR07PERCOM: TFloatField;
    CmpR07DSCITE: TFloatField;
    CmpR07DTEHIS: TDateTimeField;
    CmpR07LOGUSU: TStringField;
    grEntDTEHIS: TdxDBGridColumn;
    grEntCODTIP: TdxDBGridColumn;
    grEntDS1ITE: TdxDBGridColumn;
    grEntLOGUSU: TdxDBGridColumn;
    Colunas1: TMenuItem;
    CmpR07NUMPRO: TStringField;
    grEntNUMPRO: TdxDBGridColumn;
    CmpR07QTAQTE: TFloatField;
    grEntQTAQTE: TdxDBGridColumn;
    CmpR07NUMDOC: TFloatField;
    CmpR07VB1ITE: TFloatField;
    CmpR07DS1ITE: TFloatField;
    CmpR07VB3ITE: TFloatField;
    CmpR07DS3ITE: TFloatField;
    grEntVB3ITE: TdxDBGridColumn;
    grEntDS3ITE: TdxDBGridColumn;
    CmpR07MK1ITE: TFloatField;
    CmpR07MK3ITE: TFloatField;
    grEntMK3ITE: TdxDBGridColumn;
    CmpR07CODITE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bPsqForClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodForExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure grEntReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPsqTmoClick(Sender: TObject);
    procedure EdCodTmoExit(Sender: TObject);
    procedure EdCodTmoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PsqCatClick(Sender: TObject);
    procedure PsqTipClick(Sender: TObject);
    procedure PsqMrcClick(Sender: TObject);
    procedure bPsqClpClick(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq,sFiltro : string;
  end;

var
  fmCmpR07: TfmCmpR07;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqPfa, AuxPsq,
     ManGDB, ManPri, PsqFor, PsqTmo, AuxIni, PsqClp, ManCol;

{$R *.DFM}

procedure TfmCmpR07.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmCmpR07.bbPesquisaClick(Sender: TObject);
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
  
  if Trim( EdCodEmp.Text ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Empresa.',EdCodEmp);

  if Trim(fLimpaStr( EdDteDoc1.Text )) = '' then begin

     if Trim(fLimpaStr( EdDteDoc2.Text )) = '' then begin

        if (Trim( EdCodGru.Text ) = '') and (Trim( EdCodSub.Text ) = '') and (Trim( EdCodPro.Text ) = '') then
           fmsgErro('Para Informações sem Periodo Informado por Favor Digite um Códido de Item.',EdCodClp);
           
     end;
  end;

  sFiltro := ' Where EstHis.NumEnt > '''+ '0' +''' and (EstHis.CodOpe = '''+ 'EP' +''' or EstHis.CodOpe = '''+ 'ET' +''' ) and Esthis.AnoEnf is null';

  if Trim( EdModPfa.Text ) <> '' then begin

     if EdModPfa.Text <> 'Compras' then
        sFiltro := sFiltro + ' and CmpEnt.ModPfa = '''+ EdModPfa.Text +''''
     else
        sFiltro := sFiltro + ' and ( CmpEnt.ModPfa = '''+ 'Compras' +''' or CmpEnt.ModPfa = '''+ 'Importacao' +''')';

  end;
     
  if Trim( EdCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and EstHis.CodEmp = '''+ EdCodEmp.Text +'''';
  if Trim( EdCodFor.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodFor = '''+ EdCodFor.Text +'''';
  if Trim( EdCodTmo.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodTmo = '''+ EdCodTmo.Text +'''';
  if Trim( EdCodClp.Text ) <> '' then sFiltro := sFiltro + ' and EstHis.CodClp = '''+ EdCodClp.Text +'''';
  if Trim( EdCodGru.Text ) <> '' then sFiltro := sFiltro + ' and EstHis.CodGru = '''+ EdCodGru.Text +'''';
  if Trim( EdCodSub.Text ) <> '' then sFiltro := sFiltro + ' and EstHis.CodSub = '''+ EdCodSub.Text +'''';
  if Trim( EdCodPro.Text ) <> '' then sFiltro := sFiltro + ' and EstHis.CodPro = '''+ EdCodPro.Text +'''';

  if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and not CmpEnt.CodTip = '+ QuotedStr('3');

  if rgPeriodo.ItemIndex = 0 then begin

     if Trim(fLimpaStr(EdDteDoc1.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteOpe >= '''+ fDateToSQL(EdDteDoc1.Date) +'''';
     if Trim(fLimpaStr(EdDteDoc2.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteOpe <= '''+ fDateToSQL(EdDteDoc2.Date) +'''';

  end;

  if rgPeriodo.ItemIndex = 1 then begin

     if Trim(fLimpaStr(EdDteDoc1.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteDoc >= '''+ fDateToSQL(EdDteDoc1.Date) +'''';
     if Trim(fLimpaStr(EdDteDoc2.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteDoc <= '''+ fDateToSQL(EdDteDoc2.Date) +'''';

  end;

  if rgPeriodo.ItemIndex = 2 then begin

     if Trim(fLimpaStr(EdDteDoc1.Text)) <> '' then sFiltro := sFiltro + ' and EstHis.DteHis >= '''+ fDateToSQL(EdDteDoc1.Date) +'''';
     if Trim(fLimpaStr(EdDteDoc2.Text)) <> '' then sFiltro := sFiltro + ' and EstHis.DteHis <= '''+ fDateToSQL(EdDteDoc2.Date) +'''';

  end;

  sFiltro := sFiltro + ' and CmpEnt.SitEnt = '''+ 'Concluida' +'''';

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR07 Where CmpR07.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into CmpR07(SeqArq,CodEmp,CodFil,LanEst,DteEnt,NumEnt,DteDoc,NumDoc,CodTmo,CodFor,NomFor,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,'+
               '                    Qtante,QtpEn2,Qtatua,VluEn2,ValTmo,IcmEn2,IpiEn2,DscEn2,VdsEn2,PacEn2,VacEn2,TotEn2,CstOut,VpfOut,VpfIte,CodTip,DteHis,'+
               '                    LogUsu)'+
               ' Select '''+ SeqArq +''','+
               '        CmpEnt.CodEmp,'+
               '        CmpEnt.CodFil,'+
               '        CmpEnt.LanEst,'+
               '        CmpEnt.DteEnt,'+
               '        CmpEnt.NumEnt,'+
               '        CmpEnt.DteDoc,'+
               '        CmpEnt.NumDoc,'+
               '        CmpEnt.CodTmo,'+
               '        CmpEnt.CodFor,'+
               '        FinFor.ApeFor,'+
               '        EstHis.CodClp,'+
               '        EstHis.CodGru,'+
               '        EstHis.CodSub,'+
               '        EstHis.CodPro,'+
               '        EstHis.CodTam,'+
               '        EstHis.CodCor,'+
               '        EstHis.QtAnte,'+
               '        CmpEn2.QtpEn2,'+
               '        EstHis.QtAtua,'+
               '        CmpEn2.VluEn2,'+
               '        CmpEnt.ValTmo,'+
               '        CmpEn2.IcmEn2,'+
               '        CmpEn2.IpiEn2,'+
               '        CmpEn2.DscEn2,'+
               '        CmpEn2.VdsEn2,'+
               '        CmpEn2.PacEn2,'+
               '        CmpEn2.VacEn2,'+
               '        CmpEn2.TotEn2,'+
               '        EstHis.CstOut,'+
               '        EstHis.VpfOut,'+
               '        EstHis.VpfHis,'+
               '        CmpEnt.CodTip,'+
               '        EstHis.DteHis,'+
               '        GerUsu.LogUsu '+
               ' From EstHis LEFT JOIN CmpEn2 ON (EstHis.EmpEnt = CmpEn2.CodEmp)'+
               '                             AND (EstHis.DteEnt = CmpEn2.DteEnt)'+
               '                             AND (EstHis.NumEnt = CmpEn2.NumEnt)'+
               '                             AND (EstHis.SeqEn2 = CmpEn2.SeqEn2)'+
               '             LEFT JOIN CmpEnt ON (CmpEn2.CodEmp = CmpEnt.CodEmp)'+
               '                             AND (CmpEn2.DteEnt = CmpEnt.DteEnt)'+
               '                             AND (CmpEn2.NumEnt = CmpEnt.NumEnt)'+
               '             LEFT JOIN FinFor ON (CmpEnt.CodFor = FinFor.CodFor)'+
               '             LEFT JOIN GerUsu ON (CmpEnt.CodUsu = GerUsu.CodUsu)'+ sFiltro;
       ExecSQL;

  end;

  with CmpR07,SQL do begin

       Close;
       Text := ' Select CmpR07.*,'+
               '        EstPro.DscPro,'+
               '        EstPro.CodAnt,'+
               '        EstPro.CodMrc,'+
               '        EstPro.NumPro,'+
               '        EstMrc.NomMrc,'+
               '        FinCom.PerCom,'+
               '        EstPro.CodUne as CodUnd,'+
               '        EstPro.ClfEnt as ClsIpi,'+
               '        TextoOcor(EstPro.CodSt1,'''+ '' +''',EstPro.CodSt2,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as CodSit,'+
               '        TextoOcor(IntStrZeros(EstPro.CodMrc,5),'''+ '-' +''',EstMrc.NomMrc,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Marca,'+
               '        TextoOcor(IntStrZeros(CmpR07.CodFor,5),'''+ '-' +''',CmpR07.NomFor,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Fornecedor,'+
               '        CmpR07.CodClp || _UNICODE_FSS '''+ '.' +''' || CmpR07.CodGru || _UNICODE_FSS '''+ '.' +''' || CmpR07.CodSub || _UNICODE_FSS '''+ '.' +''' || CmpR07.CodPro as CodIte'+
               ' From CmpR07 LEFT JOIN EstPro ON (CmpR07.CodClp = EstPro.CodClp '+
               '                             AND  CmpR07.CodGru = EstPro.CodGru '+
               '                             AND  CmpR07.CodSub = EstPro.CodSub '+
               '                             AND  CmpR07.CodPro = EstPro.CodPro)'+
               '             LEFT JOIN EstMrc ON (EstPro.CodMrc = EstMrc.CodMrc)'+
               '             LEFT JOIN FinCom ON (EstPro.CodCom = FinCom.CodCom)'+
               ' Where CmpR07.SeqArq = '''+ SeqArq +''' and CmpR07.QtpEn2 > 0';

       if Trim( EdCodCat.Text ) <> '' then Text := Text + ' and EstPro.CodCat = '''+ EdCodCat.Text +'''';
       if Trim( EdCodTip.Text ) <> '' then Text := Text + ' and EstPro.CodTip = '''+ EdCodTip.Text +'''';
       if Trim( EdCodMrc.Text ) <> '' then Text := Text + ' and EstPro.CodMrc = '''+ EdCodMrc.Text +'''';
               
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR07 Where CmpR07.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  grEnt.FullExpand;

  grEnt.SetFocus;

end;

procedure TfmCmpR07.EdCodEmpExit(Sender: TObject);
begin
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

procedure TfmCmpR07.EdCodForExit(Sender: TObject);
begin
  if Trim( EdCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomFor From FinFor Where CodFor = '''+EdCodFor.Text+'''';
          Open;

          EdNomFor.Text := quSql.FieldByName('NomFor').AsString;

     end;

     end
  else
     EdNomFor.Text := '';
end;

procedure TfmCmpR07.bPsqEmpClick(Sender: TObject);
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

  EdCodEmp.SetFocus;

end;

procedure TfmCmpR07.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

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
  end;
end;

procedure TfmCmpR07.EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqFor := TfmPsqFor.Create(Self);

        fmPsqFor.ShowModal;

        if fmPsqFor.CodFor > 0 then begin

           EdNomFor.Text := fmPsqFor.NomFor;
           EdCodFor.Text := IntToStr(fmPsqFor.CodFor);

        end;

     finally

        FreeAndNil(fmPsqFor);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           EdNomFor.Text := fmAuxPsq.NomFor;
           EdCodFor.Text := IntToStr(fmAuxPsq.CodFor);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmCmpR07.bPsqForClick(Sender: TObject);
begin

  try

     fmPsqFor := TfmPsqFor.Create(Self);

     fmPsqFor.ShowModal;

     if fmPsqFor.CodFor > 0 then begin

        EdCodFor.Text := IntToStr(fmPsqFor.CodFor);
        EdNomFor.Text := fmPsqFor.NomFor;

     end;

  finally

     FreeAndNil(fmPsqFor);

  end;
end;

procedure TfmCmpR07.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmCmpR07.FormShow(Sender: TObject);
begin
  inherited;
  EdCodEmp.SetFocus;
end;

procedure TfmCmpR07.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmCmpR07.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmCmpR07.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GApeEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRazEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GEndEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRefEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de Nota Fiscal de Entrada : '+ EdModPfa.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdCodEmp.Text + ' - ' + EdNomEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Fornecedor : '+ EdCodFor.Text + ' - ' + EdNomFor.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Moeda : '+ EdCodTmo.Text + ' - ' + EdNomTmo.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : '+ EdCodCat.Text + ' - ' + EdNomCat.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo : '+ EdCodTip.Text + ' - ' + EdNomTip.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Marca : '+ EdCodMrc.Text + ' - ' + EdNomMrc.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação : '+ EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Sub-Grupo : '+ EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : '+ EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Realizadas no Periodo de : '+ EdDteDoc1.Text + ' a ' + EdDteDoc2.Text);

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmCmpR07.grEntReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmCmpR07.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação Sintetica de Entradas de Mercadorias.htm', grEnt.SaveToHTML);
end;

procedure TfmCmpR07.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação Sintetica de Entradas de Mercadorias.xls', grEnt.SaveToXLS);
end;

procedure TfmCmpR07.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação Sintetica de Entradas de Mercadorias.xml', grEnt.SaveToXML);
end;

procedure TfmCmpR07.bPsqTmoClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqTmo := TfmPsqTmo.Create(Self);

     fmPsqTmo.ShowModal;

     if fmPsqTmo.CodTmo > 0 then begin

        EdNomTmo.Text := fmPsqTmo.NomTmo;
        EdCodTmo.Text := IntToStr(fmPsqTmo.CodTmo);

     end;

  finally

     FreeAndNil(fmPsqTmo);

  end;
end;

procedure TfmCmpR07.EdCodTmoExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodTmo.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomTmo From FinTmo '+
                  ' Where CodTmo = '''+EdCodTmo.Text+'''';
          Open;

          EdNomTmo.Text := quSql.FieldByName('NomTmo').AsString;

     end;

     end
  else
     EdNomTmo.Text := '';
end;

procedure TfmCmpR07.EdCodTmoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqTmo := TfmPsqTmo.Create(Self);

        fmPsqTmo.ShowModal;

        if fmPsqTmo.CodTmo > 0 then begin

           EdNomTmo.Text := fmPsqTmo.NomTmo;
           EdCodTmo.Text := IntToStr(fmPsqTmo.CodTmo);

        end;

     finally

        FreeAndNil(fmPsqTmo);

     end;
  end;
end;

procedure TfmCmpR07.EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Categoria';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCat > 0 then begin

           EdNomCat.Text := fmAuxIni.NomCat;
           EdCodCat.Text := IntToStr( fmAuxIni.CodCat );

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodCat.Text ) <> '' then EdCodTip.SetFocus;

  end;
end;

procedure TfmCmpR07.EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );

        fmAuxIni.TipoPesq := 'Tipo';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodTip > 0 then begin

           EdNomTip.Text := fmAuxIni.NomTip;
           EdCodTip.Text := IntToStr( fmAuxIni.CodTip );

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodTip.Text ) <> '' then EdCodMrc.SetFocus;

  end;
end;

procedure TfmCmpR07.EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );

        fmAuxIni.TipoPesq := 'Marca';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodMrc > 0 then begin

           EdNomMrc.Text := fmAuxIni.NomMrc;
           EdCodMrc.Text := IntToStr( fmAuxIni.CodMrc );

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdCodMrc.Text ) <> '' then EdCodClp.SetFocus;

  end;
end;

procedure TfmCmpR07.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

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
end;

procedure TfmCmpR07.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

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

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxPsq.CodGru;
           EdNomGru.Text := fmAuxPsq.NomGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdCodGru.Text ) <> '' then EdCodSub.SetFocus;

  end;
end;

procedure TfmCmpR07.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;
        fmAuxIni.CodGru := EdCodGru.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

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

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;
        fmAuxPsq.CodGru := EdCodGru.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxPsq.CodGru;
           EdNomGru.Text := fmAuxPsq.NomGru;
           EdCodSub.Text := fmAuxPsq.CodSub;
           EdNomSub.Text := fmAuxPsq.NomSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdCodSub.Text ) <> '' then EdCodPro.SetFocus;

  end;
end;

procedure TfmCmpR07.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdCodClp.Text;
        fmAuxIni.CodGru := EdCodGru.Text;
        fmAuxIni.CodSub := EdCodSub.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

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

     if Trim( EdCodPro.Text ) <> '' then EdDteDoc1.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdCodClp.Text;
        fmAuxPsq.CodGru := EdCodGru.Text;
        fmAuxPsq.CodSub := EdCodSub.Text;

        if Trim( EdCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdCodCat.Text );
        if Trim( EdCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdCodTip.Text );
        if Trim( EdCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdCodMrc.Text );

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdCodGru.Text := fmAuxPsq.CodGru;
           EdNomGru.Text := fmAuxPsq.NomGru;
           EdCodSub.Text := fmAuxPsq.CodSub;
           EdNomSub.Text := fmAuxPsq.NomSub;
           EdCodPro.Text := fmAuxPsq.CodPro;
           EdNomPro.Text := fmAuxPsq.DscPro;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdCodPro.Text ) <> '' then EdDteDoc1.SetFocus;

  end;
end;

procedure TfmCmpR07.PsqCatClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Categoria';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCat > 0 then begin

        EdNomCat.Text := fmAuxIni.NomCat;
        EdCodCat.Text := IntToStr( fmAuxIni.CodCat );

     end;

  finally

     FreeAndNil(fmAuxIni);
 
  end;

  if Trim( EdCodCat.Text ) <> '' then EdCodTip.SetFocus;

end;

procedure TfmCmpR07.PsqTipClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );

     fmAuxIni.TipoPesq := 'Tipo';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodTip > 0 then begin

        EdNomTip.Text := fmAuxIni.NomTip;
        EdCodTip.Text := IntToStr( fmAuxIni.CodTip );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodTip.Text ) <> '' then EdCodMrc.SetFocus;

end;

procedure TfmCmpR07.PsqMrcClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self); 

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );

     fmAuxIni.TipoPesq := 'Marca';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodMrc > 0 then begin

        EdNomMrc.Text := fmAuxIni.NomMrc;
        EdCodMrc.Text := IntToStr( fmAuxIni.CodMrc );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodMrc.Text ) <> '' then EdCodClp.SetFocus;

end;

procedure TfmCmpR07.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );

     fmAuxIni.TipoPesq := 'Cls';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodClp ) <> '' then begin

        EdCodClp.Text := fmAuxIni.CodClp;
        EdNomClp.Text := fmAuxIni.NomClp;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdCodClp.Text ) <> '' then EdCodGru.SetFocus;

end;

procedure TfmCmpR07.bPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );
     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;

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

procedure TfmCmpR07.bPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );
     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;
     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;

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

procedure TfmCmpR07.bPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdCodCat.Text );
     if Trim( EdCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdCodTip.Text );
     if Trim( EdCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdCodMrc.Text );
     if Trim( EdCodClp.Text ) <> '' then fmAuxIni.CodClp := EdCodClp.Text;
     if Trim( EdCodGru.Text ) <> '' then fmAuxIni.CodGru := EdCodGru.Text;
     if Trim( EdCodSub.Text ) <> '' then fmAuxIni.CodGru := EdCodSub.Text;

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

  if Trim( EdCodPro.Text ) <> '' then EdDteDoc1.SetFocus;

end;

procedure TfmCmpR07.EdCodProExit(Sender: TObject);
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

          EdNomPro.Text := FieldByName('DscPro').AsString;

     end;

     end
  else
     EdNomPro.Text := '';
end;

procedure TfmCmpR07.FormCreate(Sender: TObject);
begin
  inherited;

  SeqArq := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
            copy(TimeToStr(Time),1,2)+
            copy(TimeToStr(Time),4,2)+
            copy(TimeToStr(Time),7,2)+
            FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
            FNumZeros(Trim( IntToStr(Random(50000)) ),5);
            
end;

procedure TfmCmpR07.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodGru.Text ) <> '' then begin

     EdCodGru.Text := FNumZeros(EdCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGru From EstGru '+
                  ' Where CodGru = '''+EdCodGru.Text+'''';
          Open;

          EdNomGru.Text := FieldByName('NomGru').AsString;

     end;

     end
  else
     EdNomGru.Text := '';
end;

procedure TfmCmpR07.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodSub.Text ) <> '' then begin

     EdCodSub.Text := FNumZeros(EdCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select NomSub From EstSub '+
                  ' Where CodGru = '''+EdCodGru.Text+''''+
                  '   and CodSub = '''+EdCodSub.Text+'''';
          Open;

          EdNomSub.Text := FieldByName('NomSub').AsString;

     end;

     end
  else
     EdNomSub.Text := '';
end;

procedure TfmCmpR07.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmCmpR07.grEnt);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

procedure TfmCmpR07.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From CmpR07 Where CmpR07.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  Action := CaFree;
  
end;

procedure TfmCmpR07.FormDestroy(Sender: TObject);
begin
  inherited;
  fmCmpR07 := nil;
end;

procedure TfmCmpR07.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp '+
                  ' Where CodClp = '''+EdCodClp.Text+'''';
          Open;

          EdNomClp.Text := FieldByName('NomClp').AsString;

     end;

     end
  else
     EdNomClp.Text := '';
end;

procedure TfmCmpR07.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodMrc.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomMrc From EstMrc '+
                  ' Where CodMrc = '''+EdCodMrc.Text+'''';
          Open;

          EdNomMrc.Text := FieldByName('NomMrc').AsString;

     end;

     end
  else
     EdNomMrc.Text := '';
end;

procedure TfmCmpR07.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodTip.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomTip From EstTip '+
                  ' Where CodTip = '''+EdCodTip.Text+'''';
          Open;

          EdNomTip.Text := FieldByName('NomTip').AsString;

     end;

     end
  else
     EdNomTip.Text := '';
end;

procedure TfmCmpR07.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim( EdCodCat.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCat From EstCat '+
                  ' Where CodCat = '''+EdCodCat.Text+'''';
          Open;

          EdNomCat.Text := FieldByName('NomCat').AsString;

     end;

     end
  else
     EdNomCat.Text := '';
end;

end.

