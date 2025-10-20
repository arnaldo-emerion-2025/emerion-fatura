unit PsqCnb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqCnb = class(TForm)
    FinCnb: TwwQuery;
    DsCnb: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grCnb: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    FinCnbCODBAN: TIntegerField;
    FinCnbNOMCNB: TStringField;
    FinCnbNOMBAN: TStringField;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dxDBEdit5: TdxDBColorEdit;
    EdNomBan: TEdit;
    Label3: TLabel;
    dxDBEdit1: TdxDBColorEdit;
    EdNomAgb: TEdit;
    FinCnbCODAGB: TStringField;
    FinCnbCODCNB: TStringField;
    FinCnbNOMAGB: TStringField;
    quSql: TwwQuery;
    procedure grCnbDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure DsCnbDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sCodBan : string;
    sCodAgb : string;
    CodBan  : integer;
    CodCnb,CodAgb,NomBan,NomAgb,NomCnb : string;
  end;

var
  fmPsqCnb: TfmPsqCnb;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmPsqCnb.grCnbDblClick(Sender: TObject);
begin

  CodBan := FinCnbCodBan.Value;
  NomBan := FinCnbNomBan.Value;
  CodAgb := FinCnbCodAgb.Value;
  NomAgb := FinCnbNomAgb.Value;
  CodCnb := FinCnbCodCnb.Value;
  NomCnb := FinCnbNomCnb.Value;

  Close;

end;

procedure TfmPsqCnb.EdPesquisaChange(Sender: TObject);
begin
  FinCnb.Locate('NOMCNB',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCnb.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodBan := FinCnbCodBan.Value;
     NomBan := FinCnbNomBan.Value;
     CodAgb := FinCnbCodAgb.Value;
     NomAgb := FinCnbNomAgb.Value;
     CodCnb := FinCnbCodCnb.Value;
     NomCnb := FinCnbNomCnb.Value;

     Close;

  end;

  if key = 33 then FinCnb.MoveBy(-10); {Page Up}
  if key = 34 then FinCnb.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinCnb.Last;  {End}
     if key = 36 then FinCnb.First; {Home}

     if key = 40 then FinCnb.Next; {Para Baixo}
     if key = 38 then FinCnb.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCnb.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCnb.DsCnbDataChange(Sender: TObject; Field: TField);
begin

  if FinCnbCodBan.Value > 0 then
     EdNomBan.Text := IntToStr(FinCnbCodBan.Value)+' - '+FinCnbNomBan.Value
  else
     EdNomBan.Text := ' ';

  if Trim(FinCnbCodAgb.Value) <> '' then
     EdNomAgb.Text := FinCnbCodAgb.Value+' - '+FinCnbNomAgb.Value
  else
     EdNomAgb.Text := ' ';
     
end;

procedure TfmPsqCnb.FormCreate(Sender: TObject);
var
  sFiltro : string;
begin

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

  sFiltro := '';
  
  if Trim( sCodBan ) <> '' then sFiltro := ' Where FinCnb.CodBan = '''+ sCodBan +'''';

  if Trim( sCodAgb ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and FinCnb.CodAgb = '''+ sCodAgb +''''
     else
        sFiltro := ' Where FinCnb.CodAgb = '''+ sCodAgb +'''';

  end;
        
  if GFlgAce = 'Sim' then begin

     if pos('Where',sFiltro) > 0 then  
        sFiltro := sFiltro + ' and FinCnb.FlgInt = '''+ 'Sim' +''''
     else
        sFiltro := ' Where FinCnb.FlgInt = '''+ 'Sim' +'''';

  end;
        
  with FinCnb,SQL do begin

       Close;
       Text := ' Select FinCnb.CodBan,'+
               '        FinCnb.CodAgb,'+
               '        FinCnb.CodCnb,'+
               '        FinCnb.NomCnb,'+                              
               '        FinBan.NomBan,'+
               '        FinAgb.NomAgb'+
               ' From FinCnb LEFT JOIN FinAgb ON (FinCnb.CodBan = FinAgb.CodBan '+
               '                             AND  FinCnb.CodAgb = FinAgb.CodAgb)'+
               '             LEFT JOIN FinBan ON (FinAgb.CodBan = FinBan.CodBan)'+ sFiltro +
               ' Order by FinCnb.NomCnb';
       Open;

  end;
end;

end.
