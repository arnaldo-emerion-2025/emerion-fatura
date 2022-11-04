unit ManLro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxDBELib, dxColorEdit;

type
  TfmManLro = class(TfmPadrao)
    CmpNfs: TwwQuery;
    DsNfs: TwwDataSource;
    PaintBox: TPaintBox;
    Label2: TLabel;
    Bevel2: TBevel;
    grNfs: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    bEmitir: TSpeedButton;
    Panel1: TPanel;
    EdPsqId_CmpNfs: TdxColorEdit;
    pnCodFor: TPanel;
    dbLib: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    bAtualizar: TBitBtn;
    CmpNfsDTEFAT: TDateTimeField;
    CmpNfsTOTIT1: TFloatField;
    CmpNfsTOTGE1: TFloatField;
    CmpNfsQTINFS: TIntegerField;
    CmpNfsCODFOR: TIntegerField;
    CmpNfsCODTIP: TIntegerField;
    CmpNfsSITNFS: TStringField;
    CmpNfsNOMFOR: TStringField;
    CmpNf2: TwwQuery;
    CmpNf2DESNF2: TStringField;
    CmpNf2QTPNF2: TFloatField;
    CmpNf2QTDNF2: TFloatField;
    CmpNf2QTNNF2: TFloatField;
    CmpNf2VLUNF2: TFloatField;
    CmpNf2IPINF2: TFloatField;
    CmpNf2ICMNF2: TFloatField;
    CmpNf2TOTITE: TFloatField;
    CmpNf2OBSNF2: TStringField;
    DsNf2: TwwDataSource;
    grNf2: ThGrid;
    CmpNfsID_CMPNFS: TIntegerField;
    CmpNf2CODITE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqId_CmpNfsKeyPress(Sender: TObject; var Key: Char);
    procedure bEmitirClick(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsNfsDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
    sBase  : string;
  public
    {Public declarations}
    Id_CmpNfs : integer;
  end;

var
  fmManLro: TfmManLro;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManRo2;

{$R *.DFM}

procedure TfmManLro.FormCreate(Sender: TObject);
begin
  inherited;
  
  sBase := ' Select CmpNfs.Id_CmpNfs,'+
           '        CmpNfs.DteFat,'+
           '        CmpNfs.TotIt1,'+
           '        CmpNfs.TotGe1,'+
           '        CmpNfs.QtiNfs,'+
           '        CmpNfs.CodFor,'+
           '        CmpNfs.CodTip,'+
           '        CmpNfs.SitNfs,'+
           '        FinFor.NomFor '+
           ' From CmpNfs LEFT JOIN FinFor ON (CmpNfs.CodFor = FinFor.CodFor)'+
           ' Where CmpNfs.SitNfs = '+ QuotedStr('Aguardando Emissao de Nota Fiscal');

end;

procedure TfmManLro.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 115 then bEmitir.OnClick(Sender);

end;

procedure TfmManLro.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqId_CmpNfs.SetFocus;
end;

procedure TfmManLro.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLro.EdPsqId_CmpNfsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManLro.bEmitirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManRo2 then Found := i;

     end;

     if Found >= 0 then begin

        fmManRo2.WindowState := wsNormal;
        fmManRo2.BringToFront;

        end
     else
        begin

        if CmpNfsId_CmpNfs.Value > 0 then begin

           Id_CmpNfs := CmpNfsId_CmpNfs.Value;

           with CmpNfs,SQL do begin

                Close;
                Text := sBase +
                        ' and CmpNfs.Id_CmpNfs = :Id_CmpNfs';

                 with Params do begin

                      Params[0].AsInteger := Id_CmpNfs;

                 end;

                 Open;

           end;

           if CmpNfsId_CmpNfs.Value > 0 then begin

              fmManRo2 := TfmManRo2.Create(Self);
              fmManRo2.Show;

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManLro.bAtualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqId_CmpNfs.Text ) <> '' then begin

     with CmpNfs,SQL do begin

          Close;
          Text := sBase +
                  ' and CmpNfs.Id_CmpNfs = '+ QuotedStr(EdPsqId_CmpNfs.Text) +
                  ' Order by CmpNfs.Id_CmpNfs';
           Open;

     end;

     end
  else
     begin

     with CmpNfs,SQL do begin

          Close;
          Text := sBase + ' Order by CmpNfs.Id_CmpNfs';
          Open;

     end;
  end;
end;

procedure TfmManLro.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManRo2 then Found := i;

  end;

  if Found >= 0 then
     fmsgErro('Existem emissões de nota em andamento. Verificar.',Nil)
  else
     Action := CaFree;

end;

procedure TfmManLro.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLro := Nil;
end;

procedure TfmManLro.DsNfsDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if CmpNfsCodFor.Value > 0 then
     pnCodFor.Caption := ' Código do Fornecedor : '+ FNumZeros(IntToStr(CmpNfsCodFor.Value),7)
  else
     pnCodFor.Caption := ' Código do Fornecedor : ';
end;

end.

