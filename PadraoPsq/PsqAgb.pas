unit PsqAgb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqAgb = class(TForm)
    FinAgb: TwwQuery;
    DsAgb: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grAgb: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    FinAgbCODBAN: TIntegerField;
    FinAgbNOMAGB: TStringField;
    FinAgbNOMBAN: TStringField;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    dxDBEdit5: TdxDBColorEdit;
    EdNomBan: TEdit;
    Label2: TLabel;
    FinAgbCODAGB: TStringField;
    quSql: TwwQuery;
    procedure grAgbDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure DsAgbDataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sCodBan : string;
    CodBan  : integer;
    CodAgb,NomAgb,NomBan : string;
  end;

var
  fmPsqAgb: TfmPsqAgb;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmPsqAgb.grAgbDblClick(Sender: TObject);
begin

  CodBan := FinAgbCodBan.Value;
  CodAgb := FinAgbCodAgb.Value;
  NomBan := FinAgbNomBan.Value;
  NomAgb := FinAgbNomAgb.Value;

  Close;

end;

procedure TfmPsqAgb.EdPesquisaChange(Sender: TObject);
begin
  FinAgb.Locate('NOMAGB',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqAgb.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  
  if key = 27 then close;

  if key = 13 then begin

     CodBan := FinAgbCodBan.Value;
     CodAgb := FinAgbCodAgb.Value;
     NomBan := FinAgbNomBan.Value;
     NomAgb := FinAgbNomAgb.Value;

     Close;

  end;

  if key = 33 then FinAgb.MoveBy(-10); {Page Up}
  if key = 34 then FinAgb.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinAgb.Last;  {End}
     if key = 36 then FinAgb.First; {Home}

     if key = 40 then FinAgb.Next; {Para Baixo}
     if key = 38 then FinAgb.Prior; {Para Cima}

  end;
end;

procedure TfmPsqAgb.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqAgb.DsAgbDataChange(Sender: TObject; Field: TField);
begin
  if FinAgbCodBan.Value > 0 then
     EdNomBan.Text := IntToStr(FinAgbCodBan.Value)+' - '+FinAgbNomBan.Value
  else
     EdNomBan.Text := ' ';
end;

procedure TfmPsqAgb.FormCreate(Sender: TObject);
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
  
  if Trim( sCodBan ) <> '' then sFiltro := ' Where FinAgb.CodBan = '''+ sCodBan +'''';

  if GFlgAce = 'Sim' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and Exists(Select * From FinCnb Where CodBan = FinAgb.CodBan and CodAgb = Finagb.CodAgb and FlgInt = '''+ 'Nao' +''' )'
     else
        sFiltro := ' Where Exists(Select * From FinCnb Where CodBan = FinAgb.CodBan and CodAgb = Finagb.CodAgb and FlgInt = '''+ 'Nao' +''' )';
        
  end;
  
  with FinAgb,SQL do begin

       Close;
       Text := ' Select FinAgb.CodBan,'+
               '        FinAgb.CodAgb,'+
               '        FinAgb.NomAgb,'+
               '        FinBan.NomBan'+
               ' From FinAgb LEFT JOIN FinBan ON (FinAgb.CodBan = FinBan.CodBan)'+ sFiltro +
               ' Order by FinAgb.NomAgb';
       Open;

  end;
end;

end.
