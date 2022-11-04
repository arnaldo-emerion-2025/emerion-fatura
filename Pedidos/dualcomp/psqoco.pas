unit PsqOco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, FShowPadrao;

type
  TfmPsqOco = class(TfmShowPadrao)
    PedOco: TwwQuery;
    DsOco: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBEdit;
    grOco: ThGrid;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    PedOcoCODEMP: TIntegerField;
    PedOcoNUMRES: TIntegerField;
    PedOcoSEQOCO: TIntegerField;
    PedOcoNOMOCO: TStringField;
    PedOcoDTERES: TDateTimeField;
    PedOcoNRORE2: TIntegerField;
    Label2: TLabel;
    PedOcoTIPOCO: TStringField;
    PedOcoDTEOPE: TDateTimeField;
    PedOcoCODCLI: TIntegerField;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label3: TLabel;
    PedRe2: TwwQuery;
    PedRe2DSCPRO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2ICMRE2: TFloatField;
    PedRe2TOTRE2: TFloatField;
    PedRe2IPIRE2: TFloatField;
    PedRe2TOTIPI: TFloatField;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2CODEIT: TIntegerField;
    PedRe2CODCLP: TStringField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2CODTAM: TStringField;
    PedRe2CODCOR: TStringField;
    PedRe2OBSRE2: TStringField;
    PedRe2CODST1: TStringField;
    PedRe2CODST2: TStringField;
    PedRe2CODUND: TStringField;
    PedRe2LIQRE2: TFloatField;
    PedRe2BRTRE2: TFloatField;
    PedRe2LINRE2: TIntegerField;
    PedRe2TABPRC: TIntegerField;
    PedRe2QTSRE2: TFloatField;
    PedRe2QTFRE2: TFloatField;
    PedRe2QTDRE2: TFloatField;
    PedRe2ULTQTS: TFloatField;
    PedRe2SLDRE2: TFloatField;
    PedRe2VLURE2: TFloatField;
    PedRe2VCHRE2: TFloatField;
    PedRe2VRERE2: TFloatField;
    PedRe2VCPRE2: TFloatField;
    PedRe2VPRRE2: TFloatField;
    PedRe2VCSRE2: TFloatField;
    PedRe2DSCRE2: TFloatField;
    PedRe2VDSRE2: TFloatField;
    PedRe2DSPRE2: TFloatField;
    PedRe2VDPRE2: TFloatField;
    PedRe2DSRRE2: TFloatField;
    PedRe2VDRRE2: TFloatField;
    PedRe2PACRE2: TFloatField;
    PedRe2VACRE2: TFloatField;
    PedRe2CODCOM: TStringField;
    PedRe2PCORE2: TFloatField;
    PedRe2CLSIPI: TStringField;
    PedRe2CLFRE2: TStringField;
    PedRe2TOTVEN: TFloatField;
    PedRe2TOTCST: TFloatField;
    PedRe2BASIPI: TFloatField;
    PedRe2BASICM: TFloatField;
    PedRe2TOTICM: TFloatField;
    PedRe2TOTGE2: TFloatField;
    PedRe2TOTREN: TFloatField;
    PedRe2TOTLIQ: TFloatField;
    PedRe2TOTBRT: TFloatField;
    PedRe2BASCOM: TFloatField;
    PedRe2TOTCOM: TFloatField;
    PedRe2TOTDSC: TFloatField;
    PedRe2TOTDSR: TFloatField;
    PedRe2TOTDSP: TFloatField;
    PedRe2TOTACR: TFloatField;
    PedRe2REGIPI: TStringField;
    PedRe2TIPIPI: TStringField;
    PedRe2TRBIPI: TStringField;
    PedRe2REDIPI: TFloatField;
    PedRe2BSCIPI: TFloatField;
    PedRe2REGICM: TStringField;
    PedRe2TIPICM: TStringField;
    PedRe2TRBICM: TStringField;
    PedRe2REDICM: TFloatField;
    PedRe2BSCICM: TFloatField;
    PedRe2INCREV: TFloatField;
    PedRe2INCFIN: TFloatField;
    PedRe2NRORE2: TIntegerField;
    PedRe2FLASEQ: TStringField;
    PedRe2CODPRM: TIntegerField;
    PedRe2BASSUB: TFloatField;
    PedRe2TOTSUB: TFloatField;
    PedRe2CODSTR: TStringField;
    PedRe2TIPSTR: TStringField;
    PedRe2FLGRES: TStringField;
    PedRe2DSCCOM: TFloatField;
    PedRe2VDSCOM: TFloatField;
    PedRe2TOTDCO: TFloatField;
    PedRe2SEQPR2: TIntegerField;
    PedRe2CSTRE2: TFloatField;
    PedRe2VCRRE2: TFloatField;
    PedRe2FLGDUP: TStringField;
    PedRe2EMPGER: TIntegerField;
    PedRe2DTEGER: TDateTimeField;
    PedRe2NUMGER: TIntegerField;
    PedRe2SEQGR2: TIntegerField;
    PedRe2PEDCLI: TStringField;
    PedRe2FLGREQ: TStringField;
    PedRe2QTDEMB: TFloatField;
    PedRe2CODVWA: TStringField;
    DsRe2: TwwDataSource;
    dbRe2: TdxDBGraphicEdit;
    grRe2: ThGrid;
    PedRe2REFRE2: TStringField;
    PedRe2CSTCST: TFloatField;
    PedRe2VCHCST: TFloatField;
    PedRe2VRECST: TFloatField;
    PedRe2VCRCST: TFloatField;
    PedRe2VCPCST: TFloatField;
    PedRe2VPRCST: TFloatField;
    PedRe2SEQGR3: TIntegerField;
    PedRe2VMERE2: TFloatField;
    PedRe2VPFRE2: TFloatField;
    PedRe2VMECST: TFloatField;
    PedRe2VPFCST: TFloatField;
    PedRe2DSCPER: TFloatField;
    PedRe2FLGVAL: TStringField;
    PedRe2FLGLIB: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grOcoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grOcoMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grRe2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grRe2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DsOcoDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqOco: TfmPsqOco;

implementation

uses dxDemoUtils, PsqOc3, Bbfuncao, PsqOc4;

{$R *.DFM}

procedure TfmPsqOco.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;

  if key = 112 then begin

     if PedOcoSeqOco.Value = 3 then begin

        try

           fmPsqOc3 := TfmPsqOc3.Create(Self);

           with fmPsqOc3.FinCrp,SQL do begin

                Close;
                Text := ' Select FinCrp.*,'''+ fDateToSQL(Date) +''' - FinCrp.DtvCrp as Atraso,'+
                        '        TextoOcor(IntStrZeros(FinCrp.NumCrp,3),'''+ '/' +''',IntStrZeros(FinCre.QtpCre,3),'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as QtpCre,'+
                        '        FinBan.NomBan'+
                        ' From FinCrp LEFT JOIN FinCre ON (FinCrp.CodEmp = FinCre.CodEmp)'+
                        '                             AND (FinCrp.DteCre = FinCre.DteCre)'+
                        '                             AND (FinCrp.NumCre = FinCre.NumCre)'+
                        '             LEFT JOIN FinBan ON (FinCrp.CodBan = FinBan.CodBan)'+
                        ' Where FinCrp.CodCli = '''+ IntToStr(PedOcoCodCli.Value) +''''+
                        '   and FinCrp.FlgDel = '''+ ' '                          +''''+
                        '   and FinCrp.FlgDev = '''+ ' '                          +''''+
                        '   and FinCrp.DtvCrp < '''+ fDateToSQL(Date)             +''''+
                        ' Order by FinCrp.CodEmp,FinCrp.DteCre,FinCrp.NumCre,FinCrp.NumCrp';
                 Open;

           end;

           fmPsqOc3.ShowModal;

        finally

           FreeAndNil(fmPsqOc3);

        end;
     end;

     if PedOcoSeqOco.Value = 4 then begin

        try

           fmPsqOc4 := TfmPsqOc4.Create(Self);

           fmPsqOc4.Caption := 'Cheques Reapresentados';

           with fmPsqOc4.FinChc,SQL do begin

                Close;
                Text := ' Select * From FinChc'+
                        ' Where FinChc.CodCli = '''+ IntToStr(PedOcoCodCli.Value) +''''+
                        '   and FinChc.SitChc = '''+ 'Reapresentado'              +''''+
                        ' Order by FinChc.CodCli,FinChc.CodBan,FinChc.CodAgb,FinChc.CodCnb,FinChc.NumChc';
                 Open;

           end;

           fmPsqOc4.ShowModal;

        finally

           FreeAndNil(fmPsqOc4);

        end;
     end;

     if PedOcoSeqOco.Value = 4 then begin

        try

           fmPsqOc4 := TfmPsqOc4.Create(Self);

           fmPsqOc4.Caption := 'Cheques Devolvidos';

           with fmPsqOc4.FinChc,SQL do begin

                Close;
                Text := ' Select * From FinChc'+
                        ' Where FinChc.CodCli = '''+ IntToStr(PedOcoCodCli.Value) +''''+
                        '   and FinChc.SitChc = '''+ 'Devolvido'                  +''''+
                        ' Order by FinChc.CodCli,FinChc.CodBan,FinChc.CodAgb,FinChc.CodCnb,FinChc.NumChc';
                 Open;

           end;

           fmPsqOc4.ShowModal;

        finally

           FreeAndNil(fmPsqOc4);

        end;
     end;
  end;
end;

procedure TfmPsqOco.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqOco.FormShow(Sender: TObject);
begin
  inherited;
  grOco.SetFocus;
end;

procedure TfmPsqOco.grOcoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grOco.Color := clInfoBk;

  grRe2.Color := $00FCF4ED;

end;

procedure TfmPsqOco.grOcoMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grOco.Color := clInfoBk;

  grRe2.Color := $00FCF4ED;

end;

procedure TfmPsqOco.grRe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grRe2.Color := clInfoBk;

  grOco.Color := $00FCF4ED;

end;

procedure TfmPsqOco.grRe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grRe2.Color := clInfoBk;

  grOco.Color := $00FCF4ED;

end;

procedure TfmPsqOco.DsOcoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (PedOcoSeqOco.Value >= 3) and (PedOcoSeqOCo.Value <= 5) then
     Label2.Visible := True
  else
     Label2.Visible := False;
end;

end.
