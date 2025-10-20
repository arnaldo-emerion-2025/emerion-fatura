unit AuxPsq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Db, DBTables,
  Wwquery, dxColorEdit;

type
  TfmAuxPsq = class(TForm)
    PaintBox: TPaintBox;
    Label4: TLabel;
    EdPsqTexto: TdxColorEdit;
    quSql: TwwQuery;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    SeqVol  : integer;
    CodEmp  : integer;
    CodTer  : integer;
    sPcpTm2 : string;
    LanCba  : string;
    sCodAtd_Id : integer;
    sCodVen_Id : integer;
    sGUs_Id : integer;
    sCodCve : integer;
    CodCon  : integer;
    Id_LojCon : integer;
    CodVei : integer;
    CodDes : integer;
    ModVei : string;
    MarVei : string;
    PlcVei : string;
    UfeVei : string;
    NomPlc : string;
    NomPai : string;
    NomCtb : string;
    NomCt2 : string;
    NomCt3 : string;
    NomCt4 : string;
    NomCt5 : string;
    NomCt6 : string;
    Id_FinHol : integer;
    Id_FinTla : integer;
    Id_FinCie : integer;
    Id_FinUfe : integer;
    Id_FinPai : integer;
    Id_FinCtb : integer;
    Id_FinCt2 : integer;
    Id_FinCt3 : integer;
    Id_FinCt4 : integer;
    Id_FinCt5 : integer;
    Id_FinCt6 : integer;
    TestaSimilar,CodMaq,NomMaq,SigNfe : string;
    ApeCon,NomCon,CgcCon,NomTen,NomTla,TipTla,NomCie : string;
    NomPfa,NomTra,UfeTra,NomAtd,FlgPesq,AtuEst,NomTer,NomUfe : string;
    CodAgb,CodCnb,TipoPesq,TipPfa,ModPfa,LocPfa,NomDes,NomHol : string;
    CodPfa,CodCf1,SigUfe,NomCat,NomTip,NomMrc,ApeImp,ApePor,ApeAge : string;
    CliTab,CbaPro,SimPro,NomClp,NomGru,NomSub,DscPro,CgcCli,NomRep : string;
    ExibeTodas,NomCli,UffCli,NomVen,NomFor,CodClp,CodGru,CodSub,CodPro : string;
    VenPfa,CodCat,CodTip,CodMrc,CodUsu,CodOpe,CodImp,CodPor,CodAge,CodTen : integer;
    CodRep,CodCli,CodVen,CodBan,CodFor,CodTra,ConPlc,SubPlc,CodAtd,Id_CmpPor : integer;
    LogUsu,IntFin,CodAnt,CodStr,TipStr,NomStr,NomOpe,NomImp,NomPor,NomAge,TipAge,NomBan,NomAgb,NomCnb : string;
  end;

var
  fmAuxPsq: TfmAuxPsq;

implementation

uses dxDemoUtils, BbMensag, PsqCli, PsqVen, PsqRep, PsqPro, PsqRef, PsqGru,
     PsqSub, PsqBan, PsqAgb, PsqCnb, PsqFor, PsqPfa, PsqTra, PsqAtd, PsqTip,
     PsqCat, PsqMrc, PsqPrc, PsqUsu, PsqPcp, PsqAt2, PsqCAn, PsqPar, PsqStr,
     PsqTer, PsqMaq, PsqOpt, PsqCon, PsqVei, PsqMot, PsqImp, PsqPor, PsqAge,
     PsqTen, PsqDes, PsqPo1, PsqPlc, PsqSpl, PsqTla, PsqCie, PsqPai, PsqCtb,
     PsqCt2, PsqCt3, PsqCt4, PsqCt5, PsqCt6;

{$R *.DFM}

procedure TfmAuxPsq.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if (key = 13) and (Trim( EdPsqTexto.Text ) <> '') then begin

     if UpperCase(TipoPesq) = 'MUNICIPIOS' then begin

        try

           fmPsqCie := TfmPsqCie.Create(Self);

           with fmPsqCie.FinCie,SQL do begin

                Close;
                Text := ' Select FinCie.*,'+
                        '        FinUfe.SigUfe,'+
                        '        FinUfe.NomUfe '+
                        ' From FinCie LEFT JOIN FinUfe ON (FinCie.Id_FinUfe = FinUfe.Id_FinUfe)';

                if Id_FinUfe > 0 then Text := Text + ' Where FinCie.Id_FinUfe = '+ QuotedStr(IntToStr(Id_FinUfe));
                        
                if pos('#',EdPsqTexto.Text) > 0 then begin

                   if pos('Where',Text) = 0 then begin

                      Text := Text + ' Where FinCie.NomCie LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + '   and FinCie.NomCie LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      begin

                      Text := Text + ' and FinCie.NomCie LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and FinCie.NomCie LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end;
                   
                   end
                else
                   begin

                   if pos('Where',Text) = 0 then
                      Text := Text + ' Where FinCie.NomCie LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%')
                   else
                      Text := Text + '   and FinCie.NomCie LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by FinCie.NomCie';

                Open;

           end;

           fmPsqCie.ShowModal;

           if fmPsqCie.Id_FinCie > 0 then begin

              Id_FinCie := fmPsqCie.Id_FinCie;

              NomCie := fmPsqCie.NomCie;
              SigNfe := fmPsqCie.SigNfe;

           end;
           
        finally

           FreeAndNil(fmPsqCie);

        end;

        if Id_FinCie > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'VEICULOS' then begin

        try

           fmPsqVei := TfmPsqVei.Create(Self);

           with fmPsqVei.ExpVei,SQL do begin

                Close;
                Text := ' Select * From ExpVei Where ExpVei.FlgAti = '+ QuotedStr('Sim');

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and ExpVei.ModVei LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and ExpVei.ModVei LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and ExpVei.ModVei LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by ExpVei.ModVei ';

                Open;

           end;

           fmPsqVei.ShowModal;

           if fmPsqVei.CodVei > 0 then begin

              CodVei := fmPsqVei.CodVei;
              ModVei := fmPsqVei.ModVei;
              MarVei := fmPsqVei.MarVei;
              PlcVei := fmPsqVei.PlcVei;
              UfeVei := fmPsqVei.UfeVei;

           end;

        finally

           FreeAndNil(fmPsqVei);
           
        end;

        if CodVei > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'CONDUTOR' then begin

        try

           fmPsqMot := TfmPsqMot.Create(Self);

           with fmPsqMot.ExpCon,SQL do begin

                Close;
                Text := ' Select * From ExpCon Where ExpCon.FlgAti = '+ QuotedStr('Sim');

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and ExpCon.ApeCon LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and ExpCon.ApeCon LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and ExpCon.ApeCon LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by ExpCon.ApeCon ';

                Open;

           end;

           fmPsqMot.ShowModal;

           if fmPsqMot.CodCon > 0 then begin

              CodCon := fmPsqMot.CodCon;
              NomCon := fmPsqMot.NomCon;
              ApeCon := fmPsqMot.ApeCon;              

           end;

        finally

           FreeAndNil(fmPsqMot);
           
        end;

        if CodCon > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'EQUIPAMENTOS' then begin
     
        try

           fmPsqMaq := TfmPsqMaq.Create(Self);

           with fmPsqMaq.PcpMaq,SQL do begin

                Close;
                Text := ' Select CodMaq,NomMaq From PcpMaq';

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' Where NomMaq LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + '   and NomMaq LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' Where NomMaq LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by NomMaq ';

                Open;

           end;

           fmPsqMaq.ShowModal;

           if Trim( fmPsqMaq.CodMaq ) <> '' then CodMaq := fmPsqMaq.CodMaq;

        finally

           FreeAndNil(fmPsqMaq);

        end;

        if Trim( CodMaq ) <> '' then Close;

     end;
  
     if UpperCase(TipoPesq) = 'USUARIOS' then begin {Usuarios do Sistema}

        try

           fmPsqUsu := TfmPsqUsu.Create(Self);

           with fmPsqUsu.GerUsu,SQL do begin

                Close;
                Text := ' Select LogUsu,CodUsu From GerUsu';

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' Where GerUsu.LogUsu LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + '   and GerUsu.LogUsu LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' Where GerUsu.LogUsu LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by GerUsu.LogUsu ';

                Open;

           end;

           fmPsqUsu.ShowModal;

           if fmPsqUsu.CodUsu > 0 then begin

              CodUsu := fmPsqUsu.CodUsu;
              LogUsu := fmPsqUsu.LogUsu;

           end;

        finally

           FreeAndNil(fmPsqUsu);

        end;
        
        if CodUsu > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'CATEGORIA' then begin {Categoria de Produtos}

        try

           fmPsqCat := TfmPsqCat.Create(Self);

           with fmPsqCat.EstCat,SQL do begin

                Close;
                Text := ' Select * From EstCat';

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' Where NomCat LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + '   and NomCat LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' Where NomCat LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by NomCat ';

                Open;

           end;

           fmPsqCat.ShowModal;

           if fmPsqCat.CodCat > 0 then begin

              CodCat := fmPsqCat.CodCat;
              NomCat := fmPsqCat.NomCat;

           end;

        finally

           FreeAndNil(fmPsqCat);

        end;

        if CodCat > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'STR' then begin

        try

           fmPsqStr := TfmPsqStr.Create(Self);

           with fmPsqStr.EstStr,SQL do begin

                Close;
                Text := ' Select * From EstStr';

                Text := Text + ' Where EstStr.TipStr = '+ QuotedStr(TipStr);

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and EstStr.NomStr LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and EstStr.NomStr LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and EstStr.NomStr LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by EstStr.NomStr';

                Open;

           end;

           fmPsqStr.ShowModal;

           if Trim( fmPsqStr.CodStr ) <> '' then begin

              CodStr := fmPsqStr.CodStr;
              NomStr := fmPsqStr.NomStr;

           end;

        finally

           FreeAndNil(fmPsqStr);

        end;

        if Trim( CodStr ) <> '' then Close;

     end;

     if UpperCase(TipoPesq) = 'TIPO' then begin {Tipos de Produtos}

        try

           fmPsqTip := TfmPsqTip.Create(Self);

           with fmPsqTip.EstTip,SQL do begin

                Close;
                Text := ' Select * From EstTip';

                Text := Text + ' Where Exists(Select * From EstPro Where EstPro.CodTip = EstTip.CodTip';

                if CodCat > 0 then Text := Text + ' and EstPro.CodCat = '+ QuotedStr(IntToStr(CodCat));

                if Trim( CodClp ) <> '' then Text := Text + ' and EstPro.CodClp = '+ QuotedStr(CodClp);

                Text := Text + ')';

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' and NomTip LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + ' and NomTip LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and NomTip LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by NomTip';

                Open;

           end;

           fmPsqTip.ShowModal;

           if fmPsqTip.CodTip > 0 then begin

              CodTip := fmPsqTip.CodTip;
              NomTip := fmPsqTip.NomTip;

           end;

        finally

           FreeAndNil(fmPsqTip);

        end;

        if CodTip > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'MARCA' then begin {Marcas de Produtos}

        try

           fmPsqMrc := TfmPsqMrc.Create(Self);

           with fmPsqMrc.EstMrc,SQL do begin

                Close;
                Text := ' Select * From EstMrc';

                Text := Text + ' Where Exists(Select * From EstPro Where EstPro.CodMrc = EstMrc.CodMrc';

                if CodCat > 0 then Text := Text + ' and EstPro.CodCat = '+ QuotedStr(IntToStr(CodCat));
                if CodTip > 0 then Text := Text + ' and EstPro.CodTip = '+ QuotedStr(IntToStr(CodTip));

                if Trim( CodClp ) <> '' then Text := Text + ' and EstPro.CodClp = '+ QuotedStr(CodClp);

                Text := Text + ')';

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' and NomMrc LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + ' and NomMrc LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and NomMrc LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by NomMrc';

                Open;

           end;

           fmPsqMrc.ShowModal;

           if fmPsqMrc.CodMrc > 0 then begin

              CodMrc := fmPsqMrc.CodMrc;
              NomMrc := fmPsqMrc.NomMrc;

           end;

        finally

           FreeAndNil(fmPsqMrc);

        end;

        if CodMrc > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'C' then begin {Clientes}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqCli := TfmPsqCli.Create(Self);

           with fmPsqCli.FinCli,SQL do begin

                Close;
                Text := ' Select NomCli,ApeCli,CodCli,CodVen,CodAtd,UffCli,CgcCli,CodPfa,TipPfa From FinCli';

                if sCodAtd_Id > 0 then begin

                   Text := Text + ' Where FinCli.CodAtd = '+ QuotedStr(IntToStr(sCodAtd_Id));

                   if Trim( EdPsqTexto.Text ) <> '' then begin

                      if pos('#',EdPsqTexto.Text) > 0 then begin

                         Text := Text + ' and FinCli.NomCli LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                         Text := Text + ' and FinCli.NomCli LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                         end
                      else
                         Text := Text + ' and FinCli.NomCli LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                   end;

                   end
                else
                   begin
                      
                   if (sCodVen_Id > 0) and (sGUs_Id > 1) and (Trim(FlgPesq) = '') then begin

                      Text := Text + ' Where FinCli.CodVen = '+ QuotedStr(IntToStr(sCodVen_Id));

                      if Trim( EdPsqTexto.Text ) <> '' then begin

                         if pos('#',EdPsqTexto.Text) > 0 then begin

                            Text := Text + ' and FinCli.NomCli LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                            Text := Text + ' and FinCli.NomCli LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                            end
                         else
                            Text := Text + ' and FinCli.NomCli LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                      end;

                      end
                   else
                      begin

                      if CodVen > 0 then begin

                         Text := Text + ' Where FinCli.CodVen = '+ QuotedStr(IntToStr(CodVen));

                         if Trim( EdPsqTexto.Text ) <> '' then begin

                            if pos('#',EdPsqTexto.Text) > 0 then begin

                               Text := Text + ' and FinCli.NomCli LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                               Text := Text + ' and FinCli.NomCli LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                               end
                            else
                               Text := Text + ' and FinCli.NomCli LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                         end;

                         end
                      else
                         begin

                         if Trim( EdPsqTexto.Text ) <> '' then begin

                            if pos('#',EdPsqTexto.Text) > 0 then begin

                               Text := Text + ' Where NomCli LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                               Text := Text + '   and NomCli LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                               end
                            else
                               Text := Text + ' Where NomCli LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                         end;
                      end;
                   end;
                end;

                if SeqVol = 1 then begin

                   if pos('Where',Text) > 0 then
                      Text := Text + ' and Exists(Select * From VwaFab Where CodCli = FinCli.CodCli)'
                   else
                      Text := ' Where Exists(Select * From VwaFab Where CodCli = FinCli.CodCli)';

                end;

                Text := Text + ' Order by NomCli ';

                Open;

           end;

           fmPsqCli.ShowModal;

           if fmPsqCli.CodCli > 0 then begin

              CodCli := fmPsqCli.CodCli;
              CodVen := fmPsqCli.CodVen;
              CodAtd := fmPsqCli.CodAtd;
              NomCli := fmPsqCli.NomCli;
              UffCli := fmPsqCli.UffCli;
              CgcCli := fmPsqCli.CgcCli;
              CodPfa := fmPsqCli.CodPfa;
              TipPfa := fmPsqCli.TipPfa;

           end;

        finally

           FreeAndNil(fmPsqCli);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodCli > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'CONSUMIDOR' then begin {Consumidores}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqCon := TfmPsqCon.Create(Self);

           with fmPsqCon.LojCon,SQL do begin

                Close;
                Text := ' Select LojCon.Id_LojCon,'+
                        '        LojCon.NomCon,'+
                        '        LojCon.CgcCon,'+
                        '        LojCon.SigUfe '+
                        ' From LojCon';

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' Where LojCon.NomCon LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + '   and LojCon.NomCon LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' Where LojCon.NomCon LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by LojCon.NomCon';

                Open;

           end;

           fmPsqCon.ShowModal;

           if fmPsqCon.Id_LojCon > 0 then begin

              Id_LojCon := fmPsqCon.Id_LojCon;

              NomCon := fmPsqCon.NomCon;
              CgcCon := fmPsqCon.CgcCon;

           end;

        finally

           FreeAndNil(fmPsqCon);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodCon > 0 then Close;

     end;
     
     if UpperCase(TipoPesq) = 'CLIENTES_PREPOSTOS' then begin {Clientes & Prepostos}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqPcp := TfmPsqPcp.Create(Self);

           with fmPsqPcp.PedCli,SQL do begin

                Close;
                Text := ' Select PedCli.CodVen,'+
                        '        PedCli.CodRep,'+
                        '        PedCli.CodCli,'+
                        '        FinCli.NomCli,'+
                        '        FinCli.ApeCli,'+
                        '        FinCli.CodAtd,'+
                        '        FinCli.UffCli,'+
                        '        FinCli.CgcCli,'+
                        '        FinCli.CodPfa,'+
                        '        FinCli.TipPfa'+
                        ' From PedCli LEFT JOIN FinCli ON (PedCli.CodCli = FinCli.CodCli)';

                if CodVen > 0 then Text := Text + ' Where PedCli.CodVen = '+ QuotedStr(IntToStr(CodVen));

                if CodRep > 0 then begin

                   if pos('Where',Text) = 0 then
                      Text := Text + ' Where PedCli.CodRep = '+ QuotedStr(IntToStr(CodRep))
                   else
                      Text := Text + ' and PedCli.CodRep = '+ QuotedStr(IntToStr(CodRep));

                end;

                if sCodAtd_Id > 0 then begin

                   if pos('Where',Text) = 0 then
                      Text := Text + ' Where FinCli.CodAtd = '+ QuotedStr(IntToStr(sCodAtd_Id))
                   else
                      Text := Text + ' and FinCli.CodAtd = '+ QuotedStr(IntToStr(sCodAtd_Id));

                end;

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   if pos('Where',Text) = 0 then begin

                      Text := Text + ' and FinCli.NomCli LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and FinCli.NomCli LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      begin

                      Text := Text + ' Where FinCli.NomCli LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + '   and FinCli.NomCli LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end;

                   end
                else
                   begin

                   if pos('Where',Text) = 0 then
                      Text := Text + ' Where FinCli.NomCli LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%')
                   else
                      Text := Text + ' and FinCli.NomCli LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                if SeqVol = 1 then begin

                   if pos('Where',Text) > 0 then
                      Text := Text + ' and Exists(Select * From VwaFab Where CodCli = FinCli.CodCli)'
                   else
                      Text := ' Where Exists(Select * From VwaFab Where CodCli = FinCli.CodCli)';

                end;

                Text := Text + ' Order by FinCli.NomCli ';

                Open;

           end;

           fmPsqPcp.ShowModal;

           if fmPsqPcp.CodCli > 0 then begin

              CodCli := fmPsqPcp.CodCli;
              CodVen := fmPsqPcp.CodVen;
              CodRep := fmPsqPcp.CodRep;
              CodAtd := fmPsqPcp.CodAtd;
              NomCli := fmPsqPcp.NomCli;
              UffCli := fmPsqPcp.UffCli;
              CgcCli := fmPsqPcp.CgcCli;
              CodPfa := fmPsqPcp.CodPfa;
              TipPfa := fmPsqPcp.TipPfa;

           end;

        finally

           FreeAndNil(fmPsqPcp);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodCli > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'T' then begin {Clientes}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqTra := TfmPsqTra.Create(Self);

           with fmPsqTra.FinTra,SQL do begin

                Close;
                Text := ' Select * From FinTra Where FinTra.FlgAti = '+ QuotedStr('Sim');

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' and FinTra.NomTra LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + ' and FinTra.NomTra LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and FinTra.NomTra LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by FinTra.NomTra ';

                Open;

           end;

           fmPsqTra.ShowModal;

           if fmPsqTra.CodTra > 0 then begin

              CodTra := fmPsqTra.CodTra;
              NomTra := fmPsqTra.NomTra;
              UfeTra := fmPsqTra.UfeTra;

           end;

        finally

           FreeAndNil(fmPsqTra);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodTra > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'P' then begin {Padrões de Faturamentos}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqPfa := TfmPsqPfa.Create(Self);

           with fmPsqPfa.EstPfa,SQL do begin

                Close;
                Text := ' Select EstPfa.CodPfa,'+
                        '        EstPfa.TipPfa,'+
                        '        EstPfa.DscPfa,'+
                        '        EstPfa.DsrPfa,'+
                        '        EstPfa.CodCf1,'+
                        '        EstPfa.CodCf2,'+
                        '        EstPfa.IntFin,'+
                        '        EstPfa.AtuEst,'+
                        '        EstPfa.ConSum,'+
                        '        EstPfa.ModPfa'+
                        ' From EstPfa';

                if Trim( TipPfa ) <> '' then Text := Text + ' Where EstPfa.TipPfa = '+ QuotedStr(TipPfa);

                if Trim( LocPfa ) <> '' then begin

                   if pos('Where',Text) > 0 then
                      Text := Text + '   and EstPfa.LocPfa = '+ QuotedStr(LocPfa)
                   else
                      Text := Text + ' Where EstPfa.LocPfa = '+ QuotedStr(LocPfa);

                end;

                if Trim( ModPfa ) <> '' then begin

                   if pos('Where',Text) > 0 then
                      Text := Text + '   and EstPfa.ModPfa = '+ QuotedStr(ModPfa)
                   else
                      Text := Text + ' Where EstPfa.ModPfa = '+ QuotedStr(ModPfa);

                end;
                
                if Trim( IntFin ) <> '' then begin

                   if pos('Where',Text) > 0 then
                      Text := Text + '   and EstPfa.IntFin = '+ QuotedStr(IntFin)
                   else
                      Text := Text + ' Where EstPfa.IntFin = '+ QuotedStr(IntFin);

                end;

                if Trim( AtuEst ) <> '' then begin

                   if pos('Where',Text) > 0 then
                      Text := Text + '   and EstPfa.AtuEst = '+ QuotedStr(AtuEst)
                   else
                      Text := Text + ' Where EstPfa.AtuEst = '+ QuotedStr(AtuEst);

                end;

                if pos('Where',Text) > 0 then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and EstPfa.DscPfa LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and EstPfa.DscPfa LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and EstPfa.DscPfa LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                   end
                else
                   begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' Where EstPfa.DscPfa LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + '   and EstPfa.DscPfa LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' Where EstPfa.DscPfa LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                if VenPfa > 0 then begin

                   if pos('Where',Text) > 0 then
                      Text := Text + '   and Exists(Select * From PedPve Where PedPve.CodPfa = EstPfa.CodPfa and PedPve.TipPfa = EstPfa.TipPfa)'
                   else
                      Text := Text + ' Where Exists(Select * From PedPve Where PedPve.CodPfa = EstPfa.CodPfa and PedPve.TipPfa = EstPfa.TipPfa)';
                end;

                Text := Text + ' Order by EstPfa.DscPfa ';

                Open;

           end;

           fmPsqPfa.ShowModal;

           if Trim( fmPsqPfa.CodPfa ) <> '' then begin

              CodPfa := fmPsqPfa.CodPfa;
              CodCf1 := fmPsqPfa.CodCf1;
              NomPfa := fmPsqPfa.NomPfa;

           end;

        finally

           FreeAndNil(fmPsqPfa);

        end;

        EdPsqTexto.Color := clInfoBk;

        if Trim( CodPfa ) <> '' then Close;

     end;

     if UpperCase(TipoPesq) = 'V' then begin {Vendedores}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqVen := TfmPsqVen.Create(Self);

           with fmPsqVen.FinVen,SQL do begin

                Close;
                Text := ' Select NomVen,ApeVen,CodVen From FinVen Where FinVen.FlgAti = '+ QuotedStr('Sim');

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' and NomVen LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + ' and NomVen LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and NomVen LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                if sCodCve > 0 then Text := Text + ' and FinVen.CodCve = '+ QuotedStr(IntToStr(sCodCve));

                Text := Text + ' Order by NomVen ';

                Open;

           end;

           fmPsqVen.ShowModal;

           if fmPsqVen.CodVen > 0 then begin

              CodVen := fmPsqVen.CodVen;
              NomVen := fmPsqVen.NomVen;

           end;

        finally

           FreeAndNil(fmPsqVen);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodVen > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'PC' then begin {Plano de contas}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqPlc := TfmPsqPlc.Create(Self);

           with fmPsqPlc.FinPlc,SQL do begin

                Close;
                Text := ' Select * From FinPlc'+
                        ' Where FinPlc.FlgAti = '+ QuotedStr('Sim');

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and FinPlc.NomPlc LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and FinPlc.NomPlc LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and FinPlc.NomPlc LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by FinPlc.NomPlc ';

                Open;

           end;

           fmPsqPlc.ShowModal;

           if fmPsqPlc.ConPlc > 0 then begin

              ConPlc := fmPsqPlc.ConPlc;
              NomPlc := fmPsqPlc.NomPlc;

           end;

        finally

           FreeAndNil(fmPsqPlc);

        end;

        EdPsqTexto.Color := clInfoBk;

        if ConPlc > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'SC' then begin {SubContas do Plano de contas}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqSpl := TfmPsqSpl.Create(Self);

           with fmPsqSpl.FinSub,SQL do begin

                Close;
                Text := ' Select FinSub.SubPlc,'+
                        '        FinSub.NomSub,'+
                        '        FinSub.ConPlc,'+
                        '        FinPlc.NomPlc '+
                        ' From FinSub LEFT JOIN FinPlc ON (FinSub.ConPlc = FinPlc.ConPlc)'+
                        ' Where FinSub.FlgAti = '+ QuotedStr('Sim') +
                        '   and FinPlc.FlgAti = '+ QuotedStr('Sim') ;

                if ConPlc > 0 then Text := Text + ' and FinSub.ConPlc = '+ QuotedStr(IntToStr(ConPlc));
                        
                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and FinSub.NomSub LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and FinSub.NomSub LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and FinSub.NomSub LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by FinSub.NomSub';

                Open;

           end;

           fmPsqSpl.ShowModal;

           if fmPsqSpl.SubPlc > 0 then begin

              ConPlc := fmPsqSpl.ConPlc;
              SubPlc := fmPsqSpl.SubPlc;
              NomPlc := fmPsqSpl.NomPlc;
              NomSub := fmPsqSpl.NomSub;

           end;

        finally

           FreeAndNil(fmPsqSpl);

        end;

        EdPsqTexto.Color := clInfoBk;

        if SubPlc > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'LB' then begin {Plano de contas}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqTla := TfmPsqTla.Create(Self);

           with fmPsqTla.FinTla,SQL do begin

                Close;
                Text := ' Select * From FinTla'+
                        ' Where FinTla.FlgInt = '+ QuotedStr('Nao');

                if Trim(TipTla) <> '' then Text := Text + ' and FinTla.TipTla = '+ QuotedStr(TipTla);
                        
                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and FinTla.NomTla LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and FinTla.NomTla LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and FinTla.NomTla LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by FinTla.NomTla ';

                Open;

           end;

           fmPsqTla.ShowModal;

           if fmPsqTla.Id_FinTla > 0 then begin

              Id_FinTla := fmPsqTla.Id_FinTla;
              
              NomTla := fmPsqTla.NomTla;

           end;

        finally

           FreeAndNil(fmPsqTla);

        end;

        EdPsqTexto.Color := clInfoBk;

        if Id_FinTla > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'PREPOSTO' then begin {Prepostos}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqRep := TfmPsqRep.Create(Self);

           with fmPsqRep.FinRep,SQL do begin

                Close;
                Text := ' Select NomRep,ApeRep,CodRep From FinRep Where FinRep.CodVen = :CodVen and FinRep.FlgAti = '+ QuotedStr('Sim');

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + '   and NomRep LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + '   and NomRep LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + '   and NomRep LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by NomRep ';

                with Params do begin

                     Params[0].AsInteger := CodVen;

                end;

                Open;

           end;

           fmPsqRep.ShowModal;

           if fmPsqRep.CodRep > 0 then begin

              CodRep := fmPsqRep.CodRep;
              NomRep := fmPsqRep.NomRep;

           end;

        finally

           FreeAndNil(fmPsqRep);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodRep > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'L' then begin {Atendentes}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqAtd := TfmPsqAtd.Create(Self);

           with fmPsqAtd.FinVen,SQL do begin

                Close;
                Text := ' Select NomVen,CodVen From FinVen Where FinVen.FlgAti = '+ QuotedStr('Sim');

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' and NomVen LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + ' and NomVen LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and NomVen LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by NomVen ';

                Open;

           end;

           fmPsqAtd.ShowModal;

           if fmPsqAtd.CodAtd > 0 then begin

              CodAtd := fmPsqAtd.CodAtd;
              NomAtd := fmPsqAtd.NomAtd;

           end;

        finally

           FreeAndNil(fmPsqAtd);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodAtd > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'ATENDENTES' then begin

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqAt2 := TfmPsqAt2.Create(Self);

           with fmPsqAt2.FinAtd,SQL do begin

                Close;
                Text := ' Select NomAtd,CodAtd,ApeAtd From FinAtd';

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' Where FinAtd.NomAtd LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + '   and FinAtd.NomAtd LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' Where FinAtd.NomAtd LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by FinAtd.NomAtd ';

                Open;

           end;

           fmPsqAt2.ShowModal;

           if fmPsqAt2.CodAtd > 0 then begin

              CodAtd := fmPsqAt2.CodAtd;
              NomAtd := fmPsqAt2.NomAtd;

           end;

        finally

           FreeAndNil(fmPsqAt2);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodAtd > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'F' then begin {Fornecedores}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqFor := TfmPsqFor.Create(Self);

           with fmPsqFor.FinFor,SQL do begin

                Close;
                Text := ' Select FinFor.NomFor,'+
                        '        FinFor.ApeFor,'+
                        '        FinFor.CodFor,'+
                        '        FinFor.SigUfe,'+
                        '        FinFor.ConPlc,'+
                        '        FinFor.SubPlc,'+
                        '        FinFor.CgcFor,'+
                        '        FormatCgcCpf(CgcFor) as CgcCpf From FinFor';

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' Where FinFor.ApeFor LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + '   and FinFor.ApeFor LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' Where FinFor.ApeFor LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                if pos('Where',Text) > 0 then
                   Text := Text + ' and FinFor.FlgAti = '+ QuotedStr('Sim')
                else
                   Text := Text + ' Where FinFor.FlgAti = '+ QuotedStr('Sim');

                Text := Text + ' Order by FinFor.ApeFor ';

                Open;

           end;

           fmPsqFor.ShowModal;

           if fmPsqFor.CodFor > 0 then begin

              CodFor := fmPsqFor.CodFor;
              NomFor := fmPsqFor.NomFor;
              SigUfe := fmPsqFor.SigUfe;
              ConPlc := fmPsqFor.ConPlc;
              SubPlc := fmPsqFor.SubPlc;

           end;

        finally

           FreeAndNil(fmPsqFor);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodFor > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'TRANSPORTES' then begin {Tipos de Transportes}

        try

           fmPsqTen := TfmPsqTen.Create(Self);

           with fmPsqTen.CmpTen,SQL do begin

                Close;
                Text := ' Select * From CmpTen';

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' Where NomTen LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + '   and NomTen LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' Where NomTen LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by NomTen';

                Open;

           end;

           fmPsqTen.ShowModal;

           if fmPsqTen.CodTen > 0 then begin

              CodTen := fmPsqTen.CodTen;
              NomTen := fmPsqTen.NomTen;

           end;

        finally

           FreeAndNil(fmPsqTen);

        end;

        if CodTen > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'IMPORTADOR' then begin {Importafores}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqImp := TfmPsqImp.Create(Self);

           with fmPsqImp.CmpImp,SQL do begin

                Close;
                Text := ' Select CmpImp.NomImp,'+
                        '        CmpImp.ApeImp,'+
                        '        CmpImp.CodImp,'+
                        '        CmpImp.SigUfe,'+
                        '        CmpImp.CgcImp,'+
                        '        FormatCgcCpf(CmpImp.CgcImp) as CgcCpf'+
                        ' From CmpImp';

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' Where CmpImp.ApeImp LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + '   and CmpImp.ApeImp LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' Where CmpImp.ApeImp LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                if pos('Where',Text) > 0 then
                   Text := Text + ' and CmpImp.FlgAti = '+ QuotedStr('Sim')
                else
                   Text := Text + ' Where CmpImp.FlgAti = '+ QuotedStr('Sim');

                Text := Text + ' Order by CmpImp.ApeImp ';

                Open;

           end;

           fmPsqImp.ShowModal;

           if fmPsqImp.CodImp > 0 then begin

              CodImp := fmPsqImp.CodImp;
              NomImp := fmPsqImp.NomImp;
              SigUfe := fmPsqImp.SigUfe;

           end;

        finally   

           FreeAndNil(fmPsqImp);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodImp > 0 then Close;

     end;
     
     if UpperCase(TipoPesq) = 'PORTOS' then begin {Portos}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqPor := TfmPsqPor.Create(Self);

           with fmPsqPor.CmpPor,SQL do begin

                Close;
                Text := ' Select CmpPor.NomPor,'+
                        '        CmpPor.ApePor,'+
                        '        CmpPor.CodPor,'+
                        '        CmpPor.SigUfe,'+
                        '        CmpPor.CgcPor,'+
                        '        FormatCgcCpf(CmpPor.CgcPor) as CgcCpf'+
                        ' From CmpPor';

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' Where CmpPor.ApePor LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + '   and CmpPor.ApePor LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' Where CmpPor.ApePor LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                if pos('Where',Text) > 0 then
                   Text := Text + ' and CmpPor.FlgAti = '+ QuotedStr('Sim')
                else
                   Text := Text + ' Where CmpPor.FlgAti = '+ QuotedStr('Sim');

                Text := Text + ' Order by CmpPor.ApePor ';

                Open;

           end;

           fmPsqPor.ShowModal;

           if fmPsqPor.CodPor > 0 then begin

              CodPor := fmPsqPor.CodPor;
              NomPor := fmPsqPor.NomPor;
              SigUfe := fmPsqPor.SigUfe;

           end;

        finally

           FreeAndNil(fmPsqPor);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodPor > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'PORTOS1' then begin {Portos}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqPo1 := TfmPsqPo1.Create(Self);

           with fmPsqPo1.CmpPor,SQL do begin

                Close;
                Text := ' Select CmpPor.NomPor,'+
                        '        CmpPor.ApePor,'+
                        '        CmpPor.Id_CmpPor,'+
                        '        CmpPor.SigUfe,'+
                        '        CmpPor.CgcPor,'+
                        '        FormatCgcCpf(CmpPor.CgcPor) as CgcCpf'+
                        ' From CmpPor';

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' Where CmpPor.ApePor LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + '   and CmpPor.ApePor LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' Where CmpPor.ApePor LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                if pos('Where',Text) > 0 then
                   Text := Text + ' and CmpPor.FlgAti = '+ QuotedStr('Sim')
                else
                   Text := Text + ' Where CmpPor.FlgAti = '+ QuotedStr('Sim');

                Text := Text + ' Order by CmpPor.ApePor ';

                Open;

           end;

           fmPsqPo1.ShowModal;

           if fmPsqPo1.Id_CmpPor > 0 then begin

              Id_CmpPor := fmPsqPo1.Id_CmpPor;

              NomPor := fmPsqPo1.NomPor;
              SigUfe := fmPsqPo1.SigUfe;

           end;

        finally

           FreeAndNil(fmPsqPo1);

        end;

        EdPsqTexto.Color := clInfoBk;

        if Id_CmpPor > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'AGENTES' then begin {Agentes}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqAge := TfmPsqAge.Create(Self);

           with fmPsqAge.CmpAge,SQL do begin

                Close;
                Text := ' Select CmpAge.NomAge,'+
                        '        CmpAge.ApeAge,'+
                        '        CmpAge.CodAge,'+
                        '        CmpAge.SigUfe,'+
                        '        CmpAge.CgcAge,'+
                        '        FormatCgcCpf(CmpAge.CgcAge) as CgcCpf'+
                        ' From CmpAge';

                Text := Text + ' Where CmpAge.TipAge = '+ QuotedStr(TipAge);
                       
                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' and CmpAge.ApeAge LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + ' and CmpAge.ApeAge LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and CmpAge.ApeAge LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' and CmpAge.FlgAti = '+ QuotedStr('Sim');

                Text := Text + ' Order by CmpAge.ApeAge ';

                Open;

           end;

           fmPsqAge.ShowModal;

           if fmPsqAge.CodAge > 0 then begin

              CodAge := fmPsqAge.CodAge;
              NomAge := fmPsqAge.NomAge;
              SigUfe := fmPsqAge.SigUfe;

           end;

        finally   

           FreeAndNil(fmPsqAge);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodAge > 0 then Close;

     end;
     
     if UpperCase(TipoPesq) = 'DESPACHANTES' then begin

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqDes := TfmPsqDes.Create(Self);

           with fmPsqDes.CmpDes,SQL do begin

                Close;
                Text := ' Select CmpDes.NomDes,'+
                        '        CmpDes.ApeDes,'+
                        '        CmpDes.CodDes,'+
                        '        CmpDes.SigUfe,'+
                        '        CmpDes.CgcDes,'+
                        '        FormatCgcCpf(CmpDes.CgcDes) as CgcCpf'+
                        ' From CmpDes'+
                        ' Where CmpDes.FlgAti = '+ QuotedStr('Sim');

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and CmpDes.ApeDes LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and CmpDes.ApeDes LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and CmpDes.ApeDes LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by CmpDes.ApeDes';

                Open;

           end;

           fmPsqDes.ShowModal;

           if fmPsqDes.CodDes > 0 then begin

              CodDes := fmPsqDes.CodDes;
              NomDes := fmPsqDes.NomDes;
              SigUfe := fmPsqDes.SigUfe;

           end;

        finally

           FreeAndNil(fmPsqDes);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodDes > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'OPERADOR' then begin {Operadores}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqOpt := TfmPsqOpt.Create(Self);

           with fmPsqOpt.CmpOpe,SQL do begin

                Close;
                Text := ' Select * From CmpOpe';

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' Where CmpOpe.NomOpe LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + '   and CmpOpe.NomOpe LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' Where CmpOpe.NomOpe LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by CmpOpe.NomOpe ';

                Open;

           end;

           fmPsqOpt.ShowModal;

           if fmPsqOpt.CodOpe > 0 then begin

              CodOpe := fmPsqOpt.CodOpe;
              NomOpe := fmPsqOpt.NomOpe;

           end;

        finally

           FreeAndNil(fmPsqOpt);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodOpe > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'TERCEIROS' then begin {Terceirizados}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqTer := TfmPsqTer.Create(Self);

           with fmPsqTer.CmpTer,SQL do begin

                Close;
                Text := ' Select CmpTer.NomTer,'+
                        '        CmpTer.ApeTer,'+
                        '        CmpTer.CodTer,'+
                        '        CmpTer.SigUfe,'+
                        '        CmpTer.CgcTer,'+
                        '        FormatCgcCpf(CmpTer.CgcTer) as CgcCpf From CmpTer';

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' Where CmpTer.ApeTer LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + '   and CmpTer.ApeTer LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' Where CmpTer.ApeTer LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                if pos('Where',Text) > 0 then
                   Text := Text + ' and CmpTer.FlgAti = '+ QuotedStr('Sim')
                else
                   Text := Text + ' Where CmpTer.FlgAti = '+ QuotedStr('Sim');

                Text := Text + ' Order by CmpTer.ApeTer ';

                Open;

           end;

           fmPsqTer.ShowModal;

           if fmPsqTer.CodTer > 0 then begin

              CodTer := fmPsqTer.CodTer;
              NomTer := fmPsqTer.NomTer;
              SigUfe := fmPsqTer.SigUfe;

           end;

        finally

           FreeAndNil(fmPsqTer);

        end;

        EdPsqTexto.Color := clInfoBk;

        if CodTer > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'I' then begin {Itens}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqPro := TfmPsqPro.Create(Self);

           fmPsqPro.ExibeTodas := ExibeTodas;

           fmPsqPro.CliTab := CliTab;

           with fmPsqPro.EstPro,SQL do begin

                Close;
                Text := ' Select CodClp,'+
                        '        CodGru,'+
                        '        CodSub,'+
                        '        CodPro,'+
                        '        DscPro,'+
                        '        RefPro,'+
                        '        SimPro,'+
                        '        CbaPro,'+
                        '        NumPro,'+
                        '        CodUns,'+
                        '        ClfSai,'+
                        '        SaiIpi,'+
                        '        SaiIcm,'+
                        '        QtdEmb,'+
                        '        CodTip,'+
                        '        CodCat,'+
                        '        FlgPro,'+
                        '        LocPro,'+
                        '        CodAnt,'+
                        '        CodMrc,'+
                        '        CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || CodPro as CodIte'+
                        ' From EstPro'+
                        ' Where FlbPro = '+ QuotedStr(' ');

                if CodCat > 0 then Text := Text + ' and CodCat = '+ QuotedStr(IntToStr(CodCat));
                if CodTip > 0 then Text := Text + ' and CodTip = '+ QuotedStr(IntToStr(CodTip));
                if CodTip > 0 then Text := Text + ' and CodMrc = '+ QuotedStr(IntToStr(CodMrc));

                if Trim( CodClp ) <> '' then Text := Text + ' and CodClp = '+ QuotedStr(CodClp);
                if Trim( CodGru ) <> '' then Text := Text + ' and CodGru = '+ QuotedStr(CodGru);
                if Trim( CodSub ) <> '' then Text := Text + ' and CodSub = '+ QuotedStr(CodSub);

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' and DscPro LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + ' and DscPro LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and DscPro LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by DscPro';

                Open;

           end;

           fmPsqPro.ShowModal;

           if Trim( fmPsqPro.CodClp ) <> '' then begin

              CodClp := fmPsqPro.CodClp;
              NomClp := fmPsqPro.NomClp;
              CodGru := fmPsqPro.CodGru;
              NomGru := fmPsqPro.NomGru;
              CodSub := fmPsqPro.CodSub;
              NomSub := fmPsqPro.NomSub;
              CodPro := fmPsqPro.CodPro;
              DscPro := fmPsqPro.DscPro;
              CbaPro := fmPsqPro.CbaPro;
              SimPro := fmPsqPro.SimPro;

              if Trim(LanCba) = 'Sim' then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstBar.CodBar From EstBar'+
                              ' Where EstBar.CodClp = :CodClp'+
                              '   and EstBar.CodGru = :CodGru'+
                              '   and EstBar.CodSub = :CodSub'+
                              '   and EstBar.CodPro = :CodPro'+
                              '   and EstBar.FlgInt = :FlgInt'+
                              ' Order by EstBar.NroBar';

                      with Params do begin

                           Params[0].AsString := CodClp;
                           Params[1].AsString := CodGru;
                           Params[2].AsString := CodSub;
                           Params[3].AsString := CodPro;
                           Params[4].AsString := 'Sim';

                      end;

                      Open;

                      CbaPro := FieldbyName('CodBar').AsString;

                 end;

                 end
              else
                 begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstBar.CodBar From EstBar'+
                              ' Where EstBar.CodClp = :CodClp'+
                              '   and EstBar.CodGru = :CodGru'+
                              '   and EstBar.CodSub = :CodSub'+
                              '   and EstBar.CodPro = :CodPro'+
                              ' Order by EstBar.NroBar';

                      with Params do begin

                           Params[0].AsString := CodClp;
                           Params[1].AsString := CodGru;
                           Params[2].AsString := CodSub;
                           Params[3].AsString := CodPro;

                      end;

                      Open;

                      CbaPro := FieldbyName('CodBar').AsString;

                 end;
              end;
           end;

        finally

           FreeAndNil(fmPsqPro);

        end;

        if Trim( CodPro ) <> '' then Close;

     end;

     if UpperCase(TipoPesq) = 'CODANTIGO' then begin {Itens}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqCAn := TfmPsqCAn.Create(Self);

           fmPsqCAn.ExibeTodas := ExibeTodas;

           fmPsqCAn.CliTab := CliTab;

           with fmPsqCAn.EstPro,SQL do begin

                Close;
                Text := ' Select CodClp,'+
                        '        CodGru,'+
                        '        CodSub,'+
                        '        CodPro,'+
                        '        DscPro,'+
                        '        RefPro,'+
                        '        SimPro,'+
                        '        CbaPro,'+
                        '        NumPro,'+
                        '        CodUns,'+
                        '        ClfSai,'+
                        '        SaiIpi,'+
                        '        SaiIcm,'+
                        '        QtdEmb,'+
                        '        CodTip,'+
                        '        CodCat,'+
                        '        FlgPro,'+
                        '        LocPro,'+
                        '        CodAnt,'+
                        '        CodMrc,'+
                        '        CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || CodPro as CodIte'+
                        ' From EstPro'+
                        ' Where FlbPro = '+ QuotedStr(' ');

                if CodCat > 0 then Text := Text + ' and CodCat = '+ QuotedStr(IntToStr(CodCat));
                if CodTip > 0 then Text := Text + ' and CodTip = '+ QuotedStr(IntToStr(CodTip));
                if CodTip > 0 then Text := Text + ' and CodMrc = '+ QuotedStr(IntToStr(CodMrc));

                if Trim( CodClp ) <> '' then Text := Text + ' and CodClp = '+ QuotedStr(CodClp);
                if Trim( CodGru ) <> '' then Text := Text + ' and CodGru = '+ QuotedStr(CodGru);
                if Trim( CodSub ) <> '' then Text := Text + ' and CodSub = '+ QuotedStr(CodSub);

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' and DscPro LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + ' and DscPro LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and DscPro LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by DscPro';

                Open;

           end;

           fmPsqCAn.ShowModal;

           if Trim( fmPsqCAn.CodAnt ) <> '' then CodAnt := fmPsqCAn.CodAnt;

        finally

           FreeAndNil(fmPsqCAn);

        end;

        if Trim( CodAnt ) <> '' then Close;

     end;

     if UpperCase(TipoPesq) = 'IC' then begin {Itens}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqPrc := TfmPsqPrc.Create(Self);

           with fmPsqPrc.EstPro,SQL do begin

                Close;
                Text := ' Select EstPro.CodClp,'+
                        '        EstPro.CodGru,'+
                        '        EstPro.CodSub,'+
                        '        EstPro.CodPro,'+
                        '        EstPro.DscPro,'+
                        '        EstPro.RefPro,'+
                        '        EstPro.SimPro,'+
                        '        EstPro.CbaPro,'+
                        '        EstPro.NumPro,'+
                        '        EstPro.CodUns,'+
                        '        EstPro.ClfSai,'+
                        '        EstPro.SaiIpi,'+
                        '        EstPro.SaiIcm,'+
                        '        EstPro.QtdEmb,'+
                        '        EstPro.CodTip,'+
                        '        EstPro.CodCat,'+
                        '        EstPro.FlgPro,'+
                        '        EstPro.CodAnt,'+
                        '        EstPro.CodMrc,'+
                        '        (Select NomClp From EstClp Where CodClp = EstPro.CodClp) as NomClp,'+
                        '        (Select NomGru From EstGru Where CodGru = EstPro.CodGru) as NomGru,'+
                        '        (Select NomSub From EstSub Where CodGru = EstPro.CodGru and EstSub.CodSub = EstPro.CodSub) as NomSub,'+
                        '        (Select NomCat From EstCat Where CodCat = EstPro.CodCat) as NomCat,'+
                        '        (Select NomTip From EstTip Where CodTip = EstPro.CodTip) as NomTip,'+
                        '        (Select NomMrc From EstMrc Where CodMrc = EstPro.CodMrc) as NomMrc,'+
                        '        EstPro.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || EstPro.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || EstPro.CodPro as CodIte'+
                        ' From EstPro'+
                        ' Where EstPro.FlbPro = '+ QuotedStr(' ');

                if CodCat > 0 then Text := Text + ' and EstPro.CodCat = '+ QuotedStr(IntToStr(CodCat));
                if CodTip > 0 then Text := Text + ' and EstPro.CodTip = '+ QuotedStr(IntToStr(CodTip));
                if CodTip > 0 then Text := Text + ' and EstPro.CodMrc = '+ QuotedStr(IntToStr(CodMrc));

                if Trim( CodClp ) <> '' then Text := Text + ' and EstPro.CodClp = '+ QuotedStr(CodClp);
                if Trim( CodGru ) <> '' then Text := Text + ' and EstPro.CodGru = '+ QuotedStr(CodGru);
                if Trim( CodSub ) <> '' then Text := Text + ' and EstPro.CodSub = '+ QuotedStr(CodSub);

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' and EstPro.DscPro LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + ' and EstPro.DscPro LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and EstPro.DscPro LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by EstPro.DscPro';

                Open;

           end;

           fmPsqPrc.ShowModal;

           if Trim( fmPsqPrc.CodClp ) <> '' then begin

              CodClp := fmPsqPrc.CodClp;
              NomClp := fmPsqPrc.NomClp;
              CodGru := fmPsqPrc.CodGru;
              NomGru := fmPsqPrc.NomGru;
              CodSub := fmPsqPrc.CodSub;
              NomSub := fmPsqPrc.NomSub;
              CodPro := fmPsqPrc.CodPro;
              DscPro := fmPsqPrc.DscPro;
              CbaPro := fmPsqPrc.CbaPro;
              SimPro := fmPsqPrc.SimPro;

              if Trim(LanCba) = 'Sim' then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstBar.CodBar From EstBar'+
                              ' Where EstBar.CodClp = :CodClp'+
                              '   and EstBar.CodGru = :CodGru'+
                              '   and EstBar.CodSub = :CodSub'+
                              '   and EstBar.CodPro = :CodPro'+
                              '   and EstBar.FlgInt = :FlgInt'+
                              ' Order by EstBar.NroBar';

                      with Params do begin

                           Params[0].AsString := CodClp;
                           Params[1].AsString := CodGru;
                           Params[2].AsString := CodSub;
                           Params[3].AsString := CodPro;
                           Params[4].AsString := 'Sim';

                      end;

                      Open;

                      CbaPro := FieldbyName('CodBar').AsString;

                 end;

                 end
              else
                 begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstBar.CodBar From EstBar'+
                              ' Where EstBar.CodClp = :CodClp'+
                              '   and EstBar.CodGru = :CodGru'+
                              '   and EstBar.CodSub = :CodSub'+
                              '   and EstBar.CodPro = :CodPro'+
                              ' Order by EstBar.NroBar';

                      with Params do begin

                           Params[0].AsString := CodClp;
                           Params[1].AsString := CodGru;
                           Params[2].AsString := CodSub;
                           Params[3].AsString := CodPro;

                      end;

                      Open;

                      CbaPro := FieldbyName('CodBar').AsString;

                 end;
              end;
           end;

        finally

           FreeAndNil(fmPsqPrc);

        end;

        if Trim( CodPro ) <> '' then Close;

     end;

     if UpperCase(TipoPesq) = 'R' then begin {Referência}

        try

           fmPsqRef := TfmPsqRef.Create(Self);

           with fmPsqRef.EstPro,SQL do begin

                Close;
                Text := ' Select EstPro.CodClp,'+
                        '        EstPro.CodGru,'+
                        '        EstPro.CodSub,'+
                        '        EstPro.CodPro,'+
                        '        EstPro.DscPro,'+
                        '        EstPro.RefPro,'+
                        '        EstClp.NomClp,'+
                        '        EstGru.NomGru,'+
                        '        EstSub.NomSub,'+
                        '        EstPro.SimPro,'+
                        '        EstPro.CbaPro,'+
                        '        EstPro.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || EstPro.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || EstPro.CodPro as CodIte'+
                        ' From EstPro LEFT JOIN EstClp ON (EstPro.CodClp = EstClp.CodClp)'+
                        '             LEFT JOIN EstSub ON (EstPro.CodGru = EstSub.CodGru)'+
                        '                             AND (EstPro.CodSub = EstSub.CodSub)'+
                        '             LEFT JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)'+
                        ' Where EstPro.FlbPro = '+ QuotedStr(' ') +' and EstPro.RefPro is not null';

                if CodCat > 0 then Text := Text + ' and EstPro.CodCat = '+ QuotedStr(IntToStr(CodCat));
                if CodTip > 0 then Text := Text + ' and EstPro.CodTip = '+ QuotedStr(IntToStr(CodTip));
                if CodTip > 0 then Text := Text + ' and EstPro.CodMrc = '+ QuotedStr(IntToStr(CodMrc));

                if Trim( CodClp ) <> '' then Text := Text + ' and EstPro.CodClp = '+ QuotedStr(CodClp);
                if Trim( CodGru ) <> '' then Text := Text + ' and EstPro.CodGru = '+ QuotedStr(CodGru);
                if Trim( CodSub ) <> '' then Text := Text + ' and EstPro.CodSub = '+ QuotedStr(CodSub);

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' and EstPro.RefPro LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + ' and EstPro.RefPro LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and EstPro.RefPro LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by EstPro.RefPro';

                Open;

           end;

           fmPsqRef.ShowModal;

           if Trim( fmPsqRef.CodClp ) <> '' then begin

              CodClp := fmPsqRef.CodClp;
              NomClp := fmPsqRef.NomClp;
              CodGru := fmPsqRef.CodGru;
              NomGru := fmPsqRef.NomGru;
              CodSub := fmPsqRef.CodSub;
              NomSub := fmPsqRef.NomSub;
              CodPro := fmPsqRef.CodPro;
              DscPro := fmPsqRef.DscPro;
              CbaPro := fmPsqRef.CbaPro;
              SimPro := fmPsqRef.SimPro;

              if Trim(LanCba) = 'Sim' then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstBar.CodBar From EstBar'+
                              ' Where EstBar.CodClp = :CodClp'+
                              '   and EstBar.CodGru = :CodGru'+
                              '   and EstBar.CodSub = :CodSub'+
                              '   and EstBar.CodPro = :CodPro'+
                              '   and EstBar.FlgInt = :FlgInt'+
                              ' Order by EstBar.NroBar';

                      with Params do begin

                           Params[0].AsString := CodClp;
                           Params[1].AsString := CodGru;
                           Params[2].AsString := CodSub;
                           Params[3].AsString := CodPro;
                           Params[4].AsString := 'Sim';

                      end;

                      Open;

                      CbaPro := FieldbyName('CodBar').AsString;

                 end;

                 end
              else
                 begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstBar.CodBar From EstBar'+
                              ' Where EstBar.CodClp = :CodClp'+
                              '   and EstBar.CodGru = :CodGru'+
                              '   and EstBar.CodSub = :CodSub'+
                              '   and EstBar.CodPro = :CodPro'+
                              ' Order by EstBar.NroBar';

                      with Params do begin

                           Params[0].AsString := CodClp;
                           Params[1].AsString := CodGru;
                           Params[2].AsString := CodSub;
                           Params[3].AsString := CodPro;

                      end;

                      Open;

                      CbaPro := FieldbyName('CodBar').AsString;

                 end;
              end;
           end;

        finally

           FreeAndNil(fmPsqRef);

        end;

        if Trim( CodPro ) <> '' then Close;

     end;

     if UpperCase(TipoPesq) = 'U' then begin {Part Number}

        try

           fmPsqPar := TfmPsqPar.Create(Self);

           with fmPsqPar.EstPro,SQL do begin

                Close;
                Text := ' Select EstPro.CodClp,'+
                        '        EstPro.CodGru,'+
                        '        EstPro.CodSub,'+
                        '        EstPro.CodPro,'+
                        '        EstPro.DscPro,'+
                        '        EstPro.NumPro as RefPro,'+
                        '        EstClp.NomClp,'+
                        '        EstGru.NomGru,'+
                        '        EstSub.NomSub,'+
                        '        EstPro.SimPro,'+
                        '        EstPro.CbaPro,'+
                        '        EstPro.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || EstPro.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || EstPro.CodPro as CodIte'+
                        ' From EstPro LEFT JOIN EstClp ON (EstPro.CodClp = EstClp.CodClp)'+
                        '             LEFT JOIN EstSub ON (EstPro.CodGru = EstSub.CodGru)'+
                        '                             AND (EstPro.CodSub = EstSub.CodSub)'+
                        '             LEFT JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)'+
                        ' Where EstPro.FlbPro = '+ QuotedStr(' ') +' and EstPro.NumPro is not null';

                if TestaSimilar = 'S' then Text := Text + ' and EstPro.SimPro is not Null';

                if CodCat > 0 then Text := Text + ' and EstPro.CodCat = '+ QuotedStr(IntToStr(CodCat));
                if CodTip > 0 then Text := Text + ' and EstPro.CodTip = '+ QuotedStr(IntToStr(CodTip));
                if CodMrc > 0 then Text := Text + ' and EstPro.CodMrc = '+ QuotedStr(IntToStr(CodMrc));

                if Trim( CodClp ) <> '' then Text := Text + ' and EstPro.CodClp = '+ QuotedStr(CodClp);
                if Trim( CodGru ) <> '' then Text := Text + ' and EstPro.CodGru = '+ QuotedStr(CodGru);
                if Trim( CodSub ) <> '' then Text := Text + ' and EstPro.CodSub = '+ QuotedStr(CodSub);

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and EstPro.NumPro LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and EstPro.NumPro LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and EstPro.NumPro LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by EstPro.NumPro';

                Open;

           end;

           fmPsqPar.ShowModal;

           if Trim( fmPsqPar.CodPro ) <> '' then begin

              CodClp := fmPsqPar.CodClp;
              NomClp := fmPsqPar.NomClp;
              CodGru := fmPsqPar.CodGru;
              NomGru := fmPsqPar.NomGru;
              CodSub := fmPsqPar.CodSub;
              NomSub := fmPsqPar.NomSub;
              CodPro := fmPsqPar.CodPro;
              DscPro := fmPsqPar.DscPro;
              CbaPro := fmPsqPar.CbaPro;
              SimPro := fmPsqPar.SimPro;

              if Trim(LanCba) = 'Sim' then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstBar.CodBar From EstBar'+
                              ' Where EstBar.CodClp = :CodClp'+
                              '   and EstBar.CodGru = :CodGru'+
                              '   and EstBar.CodSub = :CodSub'+
                              '   and EstBar.CodPro = :CodPro'+
                              '   and EstBar.FlgInt = :FlgInt'+
                              ' Order by EstBar.NroBar';

                      with Params do begin

                           Params[0].AsString := CodClp;
                           Params[1].AsString := CodGru;
                           Params[2].AsString := CodSub;
                           Params[3].AsString := CodPro;
                           Params[4].AsString := 'Sim';

                      end;

                      Open;

                      CbaPro := FieldbyName('CodBar').AsString;

                 end;

                 end
              else
                 begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstBar.CodBar From EstBar'+
                              ' Where EstBar.CodClp = :CodClp'+
                              '   and EstBar.CodGru = :CodGru'+
                              '   and EstBar.CodSub = :CodSub'+
                              '   and EstBar.CodPro = :CodPro'+
                              ' Order by EstBar.NroBar';

                      with Params do begin

                           Params[0].AsString := CodClp;
                           Params[1].AsString := CodGru;
                           Params[2].AsString := CodSub;
                           Params[3].AsString := CodPro;

                      end;

                      Open;

                      CbaPro := FieldbyName('CodBar').AsString;

                 end;
              end;
           end;

        finally

           FreeAndNil(fmPsqPar);

        end;

        if Trim( CodPro ) <> '' then Close;

     end;
     
     if UpperCase(TipoPesq) = 'G' then begin {Grupos}

        try

           fmPsqGru := TfmPsqGru.Create(Self);

           with fmPsqGru.EstGru,SQL do begin

                Close;
                Text := ' Select * From EstGru';

                if Trim( CodClp ) <> '' then
                   Text := Text + ' Where Exists(Select * From EstPro Where CodClp = '+ QuotedStr(CodClp) +' and CodGru = EstGru.CodGru'
                else
                   Text := Text + ' Where Exists(Select * From EstPro Where CodGru = EstGru.CodGru';

                if CodCat > 0 then Text := Text + ' and CodCat = '+ QuotedStr(IntToStr(CodCat));
                if CodTip > 0 then Text := Text + ' and CodTip = '+ QuotedStr(IntToStr(CodTip));
                if CodMrc > 0 then Text := Text + ' and CodMrc = '+ QuotedStr(IntToStr(CodMrc));

                Text := Text + ')';

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' and NomGru LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + ' and NomGru LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and NomGru LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by NomGru';

                Open;

           end;

           fmPsqGru.ShowModal;

           if Trim( fmPsqGru.CodGru ) <> '' then CodGru := fmPsqGru.CodGru;

        finally

           FreeAndNil(fmPsqGru);

        end;

        if Trim( CodGru ) <> '' then Close;

     end;

     if UpperCase(TipoPesq) = 'GRUPO' then begin {Grupos}

        try

           fmPsqGru := TfmPsqGru.Create(Self);

           with fmPsqGru.EstGru,SQL do begin

                Close;
                Text := ' Select * From EstGru';

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' Where EstGru.NomGru LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + '   and EstGru.NomGru LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and EstGru.NomGru LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by EstGru.NomGru';

                Open;

           end;

           fmPsqGru.ShowModal;

           if Trim( fmPsqGru.CodGru ) <> '' then CodGru := fmPsqGru.CodGru;

        finally

           FreeAndNil(fmPsqGru);

        end;

        if Trim( CodGru ) <> '' then Close;

     end;

     if UpperCase(TipoPesq) = 'S' then begin {Sub-Grupos}

        try

           fmPsqSub := TfmPsqSub.Create(Self);

           with fmPsqSub.EstSub,SQL do begin

                Close;
                Text := ' Select CodGru,NomSub,CodSub,NomGru'+
                        ' From EstSub LEFT JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)';

                if Trim( CodClp ) <> '' then
                   Text := Text + ' Where Exists(Select * From EstPro Where CodClp = '+ QuotedStr(CodClp) +' and CodGru = EstSub.CodGru and CodSub = EstSub.CodSub'
                else
                   Text := Text + ' Where Exists(Select * From EstPro Where CodGru = EstSub.CodGru and CodSub = EstSub.CodSub';

                if CodCat > 0 then Text := Text + ' and CodCat = '+ QuotedStr(IntToStr(CodCat));
                if CodTip > 0 then Text := Text + ' and CodTip = '+ QuotedStr(IntToStr(CodTip));
                if CodMrc > 0 then Text := Text + ' and CodMrc = '+ QuotedStr(IntToStr(CodMrc));

                Text := Text + ')';

                if Trim( CodGru ) <> '' then Text := Text + ' and EstSub.CodGru = '+ QuotedStr(CodGru);

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' and EstSub.NomSub LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + ' and EstSub.NomSub LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and EstSub.NomSub LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                if Trim( sPcpTm2 ) = 'Sim' then Text := Text + ' and not Exists(Select * From PcpTm2 Where CodGru = EstSub.CodGru and CodSub = EstSub.CodSub)';

                Text := Text + ' Order by EstSub.NomSub ';

                Open;

           end;

           fmPsqSub.ShowModal;

           if Trim( fmPsqSub.CodGru ) <> '' then CodGru := fmPsqSub.CodGru;
           if Trim( fmPsqSub.CodSub ) <> '' then CodSub := fmPsqSub.CodSub;

        finally

           FreeAndNil(fmPsqSub);

        end;

        if Trim( CodSub ) <> '' then Close;

     end;

     if UpperCase(TipoPesq) = 'SUBGRUPO' then begin {Sub-Grupos}

        try

           fmPsqSub := TfmPsqSub.Create(Self);

           with fmPsqSub.EstSub,SQL do begin

                Close;
                Text := ' Select CodGru,NomSub,CodSub,NomGru'+
                        ' From EstSub LEFT JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)';

                if Trim( CodGru ) <> '' then Text := Text + ' Where EstSub.CodGru = '+ QuotedStr(CodGru);

                if pos('Where',Text) > 0 then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and EstSub.NomSub LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and EstSub.NomSub LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and EstSub.NomSub LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                   end
                else
                   begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' Where EstSub.NomSub LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + '   and EstSub.NomSub LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' Where EstSub.NomSub LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by EstSub.NomSub';

                Open;

           end;

           fmPsqSub.ShowModal;

           if Trim( fmPsqSub.CodGru ) <> '' then CodGru := fmPsqSub.CodGru;
           if Trim( fmPsqSub.CodSub ) <> '' then CodSub := fmPsqSub.CodSub;

        finally

           FreeAndNil(fmPsqSub);

        end;

        if Trim( CodSub ) <> '' then Close;

     end;

     if UpperCase(TipoPesq) = 'B' then begin {Bancos}

        try

           fmPsqBan := TfmPsqBan.Create(Self);

           with fmPsqBan.FinBan,SQL do begin

                Close;
                Text := ' Select * From FinBan';

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' Where NomBan LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + '   and NomBan LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' Where NomBan LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by NomBan';

                Open;

           end;

           fmPsqBan.ShowModal;

           if fmPsqBan.CodBan > 0 then begin

              CodBan := fmPsqBan.CodBan;
              NomBan := fmPsqBan.NomBan;

           end;

        finally

           FreeAndNil(fmPsqBan);

        end;

        if CodBan > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'PAISES' then begin

        try

           fmPsqPai := TfmPsqPai.Create(Self);

           with fmPsqPai.FinPai,SQL do begin

                Close;
                Text := ' Select * From FinPai';

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' Where FinPai.NomPai LIKE '+ QuotedStr(copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + '   and FinPai.NomPai LIKE '+ QuotedStr(copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' Where FinPai.NomPai LIKE '+ QuotedStr(EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by FinPai.NomPai';

                Open;

           end;

           fmPsqPai.ShowModal;

           if fmPsqPai.Id_FinPai > 0 then begin

              Id_FinPai := fmPsqPai.Id_FinPai;

              NomPai := fmPsqPai.NomPai;

           end;

        finally

           FreeAndNil(fmPsqPai);

        end;

        if Id_FinPai > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'A' then begin {Agências}

        try

           fmPsqAgb := TfmPsqAgb.Create(Self);

           with fmPsqAgb.FinAgb,SQL do begin

                Close;
                Text := ' Select FinAgb.CodBan,'+
                        '        FinAgb.CodAgb,'+
                        '        FinAgb.NomAgb,'+
                        '        FinBan.NomBan '+
                        ' From FinAgb LEFT JOIN FinBan ON (FinAgb.CodBan = FinBan.CodBan)';

                if CodBan > 0 then begin

                   if pos('Where',Text) > 0 then
                      Text := Text + '   and FinAgb.CodBan = '+ QuotedStr(IntToStr(CodBan))
                   else
                      Text := Text + ' Where FinAgb.CodBan = '+ QuotedStr(IntToStr(CodBan));

                end;

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' and FinAgb.NomAgb LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + ' and FinAgb.NomAgb LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and FinAgb.NomAgb LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by FinAgb.NomAgb';

                Open;

           end;

           fmPsqAgb.ShowModal;

           if Trim( fmPsqAgb.CodAgb ) <> '' then begin

              CodBan := fmPsqAgb.CodBan;
              NomBan := fmPsqAgb.NomBan;
              CodAgb := fmPsqAgb.CodAgb;
              NomAgb := fmPsqAgb.NomAgb;

           end;

        finally

           FreeAndNil(fmPsqAgb);

        end;

        if Trim( CodAgb ) <> '' then Close;

     end;

     if UpperCase(TipoPesq) = 'N' then begin {Contas Bancárias}

        try

           fmPsqCnb := TfmPsqCnb.Create(Self);

           with fmPsqCnb.FinCnb,SQL do begin

                Close;
                Text := ' Select FinCnb.CodBan,'+
                        '        FinCnb.CodAgb,'+
                        '        FinCnb.CodCnb,'+
                        '        FinCnb.NomCnb,'+
                        '        FinBan.NomBan,'+
                        '        FinAgb.NomAgb '+
                        ' From FinCnb LEFT JOIN FinAgb ON (FinCnb.CodBan = FinAgb.CodBan '+
                        '                              AND FinCnb.CodAgb = FinAgb.CodAgb)'+
                        '             LEFT JOIN FinBan ON (FinAgb.CodBan = FinBan.CodBan)';

                if CodBan > 0 then begin

                   if pos('Where',Text) > 0 then
                      Text := Text + '   and FinCnb.CodBan = '+ QuotedStr(IntToStr(CodBan))
                   else
                      Text := Text + ' Where FinCnb.CodBan = '+ QuotedStr(IntToStr(CodBan));

                end;

                if Trim( CodAgb ) <> '' then begin

                   if pos('Where',Text) > 0 then
                      Text := Text + '   and FinCnb.CodAgb = '+ QuotedStr(CodAgb)
                   else
                      Text := Text + ' Where FinCnb.CodAgb = '+ QuotedStr(CodAgb);

                end;

                if pos('#',EdPsqTexto.Text) > 0 then begin

                   Text := Text + ' and FinCnb.NomCnb LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                   Text := Text + ' and FinCnb.NomCnb LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                   end
                else
                   Text := Text + ' and FinCnb.NomCnb LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                Text := Text + ' Order by FinCnb.NomCnb';

                Open;

           end;

           fmPsqCnb.ShowModal;

           if Trim( fmPsqCnb.CodCnb ) <> '' then begin

              CodBan := fmPsqCnb.CodBan;
              CodAgb := fmPsqCnb.CodAgb;
              CodCnb := fmPsqCnb.CodCnb;

           end;

        finally

           FreeAndNil(fmPsqCnb);

        end;

        if Trim( CodCnb ) <> '' then Close;

     end;

     if UpperCase(TipoPesq) = 'N1' then begin {Plano de contas}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqCtb := TfmPsqCtb.Create(Self);

           with fmPsqCtb.FinCtb,SQL do begin

                Close;
                Text := ' Select FinCtb.Id_FinCtb,'+
                        '        FinCtb.NomCtb'+
                        ' From FinCtb'+
                        ' Where FinCtb.FlgAti = '+ QuotedStr('Sim');

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and FinCtb.NomCtb LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and FinCtb.NomCtb LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and FinCtb.NomCtb LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by FinCtb.NomCtb';

                Open;

           end;

           fmPsqCtb.ShowModal;

           if fmPsqCtb.Id_FinCtb > 0 then begin

              Id_FinCtb := fmPsqCtb.Id_FinCtb;
              NomCtb := fmPsqCtb.NomCtb;

           end;

        finally

           FreeAndNil(fmPsqCtb);

        end;

        EdPsqTexto.Color := clInfoBk;

        if Id_FinCtb > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'N2' then begin {Plano de contas}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqCt2 := TfmPsqCt2.Create(Self);

           with fmPsqCt2.FinCt2,SQL do begin

                Close;
                Text := ' Select FinCt2.Id_FinCt2,'+
                        '        FinCt2.Id_FinCtb,'+
                        '        FinCtb.NomCtb,'+
                        '        FinCt2.NomCt2'+
                        ' From FinCt2,FinCtb'+
                        ' Where FinCt2.Id_FinCtb = FinCtb.Id_FinCtb'+
                        '   and FinCt2.FlgAti = '+ QuotedStr('Sim')+
                        '   and FinCtb.FlgAti = '+ QuotedStr('Sim');

                if Id_FinCtb > 0 then Text := Text + ' and FinCt2.Id_FinCtb = '+ QuotedStr(IntToStr(Id_FinCtb));

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and FinCt2.NomCt2 LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and FinCt2.NomCt2 LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and FinCt2.NomCt2 LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by FinCt2.NomCt2';

                Open;

           end;

           fmPsqCt2.ShowModal;

           if fmPsqCt2.Id_FinCt2 > 0 then begin

              Id_FinCtb := fmPsqCt2.Id_FinCtb;
              Id_FinCt2 := fmPsqCt2.Id_FinCt2;

              NomCtb := fmPsqCt2.NomCtb;
              NomCt2 := fmPsqCt2.NomCt2;

           end;

        finally

           FreeAndNil(fmPsqCt2);

        end;

        EdPsqTexto.Color := clInfoBk;

        if Id_FinCt2 > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'N3' then begin {Plano de contas}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqCt3 := TfmPsqCt3.Create(Self);

           with fmPsqCt3.FinCt3,SQL do begin

                Close;
                Text := ' Select FinCt3.Id_FinCt3,'+
                        '        FinCt3.Id_FinCt2,'+
                        '        FinCt2.Id_FinCtb,'+                        
                        '        FinCtb.NomCtb,'+
                        '        FinCt2.NomCt2,'+
                        '        FinCt3.NomCt3'+
                        ' From FinCt3,FinCt2,FinCtb'+
                        ' Where FinCt3.Id_FinCt2 = FinCt2.Id_FinCt2'+
                        '   and FinCt2.Id_FinCtb = FinCtb.Id_FinCtb'+
                        '   and FinCt3.FlgAti = '+ QuotedStr('Sim') +
                        '   and FinCt2.FlgAti = '+ QuotedStr('Sim') +
                        '   and FinCtb.FlgAti = '+ QuotedStr('Sim') ;

                if Id_FinCtb > 0 then Text := Text + ' and FinCt2.Id_FinCtb = '+ QuotedStr(IntToStr(Id_FinCtb));
                if Id_FinCt2 > 0 then Text := Text + ' and FinCt3.Id_FinCt2 = '+ QuotedStr(IntToStr(Id_FinCt2));

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and FinCt3.NomCt3 LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and FinCt3.NomCt3 LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and FinCt3.NomCt3 LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by FinCt3.NomCt3';

                Open;

           end;

           fmPsqCt3.ShowModal;

           if fmPsqCt3.Id_FinCt3 > 0 then begin

              Id_FinCtb := fmPsqCt3.Id_FinCtb;
              Id_FinCt2 := fmPsqCt3.Id_FinCt2;
              Id_FinCt3 := fmPsqCt3.Id_FinCt3;

              NomCtb := fmPsqCt3.NomCtb;
              NomCt2 := fmPsqCt3.NomCt2;
              NomCt3 := fmPsqCt3.NomCt3;

           end;

        finally

           FreeAndNil(fmPsqCt3);

        end;

        EdPsqTexto.Color := clInfoBk;

        if Id_FinCt3 > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'N4' then begin {Plano de contas}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqCt4 := TfmPsqCt4.Create(Self);

           with fmPsqCt4.FinCt4,SQL do begin

                Close;
                Text := ' Select FinCt4.Id_FinCt4,'+
                        '        FinCt4.Id_FinCt3,'+
                        '        FinCt3.Id_FinCt2,'+
                        '        FinCt2.Id_FinCtb,'+
                        '        FinCtb.NomCtb,'+
                        '        FinCt2.NomCt2,'+
                        '        FinCt3.NomCt3,'+
                        '        FinCt4.NomCt4 '+
                        ' From FinCt4,FinCt3,FinCt2,FinCtb'+
                        ' Where FinCt4.Id_FinCt3 = FinCt3.Id_FinCt3'+
                        '   and FinCt3.Id_FinCt2 = FinCt2.Id_FinCt2'+
                        '   and FinCt2.Id_FinCtb = FinCtb.Id_FinCtb'+
                        '   and FinCt4.FlgAti = '+ QuotedStr('Sim') +
                        '   and FinCt3.FlgAti = '+ QuotedStr('Sim') +
                        '   and FinCt2.FlgAti = '+ QuotedStr('Sim') +
                        '   and FinCtb.FlgAti = '+ QuotedStr('Sim') ;

                if Id_FinCtb > 0 then Text := Text + ' and FinCt2.Id_FinCtb = '+ QuotedStr(IntToStr(Id_FinCtb));
                if Id_FinCt2 > 0 then Text := Text + ' and FinCt3.Id_FinCt2 = '+ QuotedStr(IntToStr(Id_FinCt2));
                if Id_FinCt3 > 0 then Text := Text + ' and FinCt4.Id_FinCt3 = '+ QuotedStr(IntToStr(Id_FinCt3));

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and FinCt4.NomCt4 LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and FinCt4.NomCt4 LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and FinCt4.NomCt4 LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by FinCt4.NomCt4';

                Open;

           end;

           fmPsqCt4.ShowModal;

           if fmPsqCt4.Id_FinCt4 > 0 then begin

              Id_FinCtb := fmPsqCt4.Id_FinCtb;
              Id_FinCt2 := fmPsqCt4.Id_FinCt2;
              Id_FinCt3 := fmPsqCt4.Id_FinCt3;
              Id_FinCt4 := fmPsqCt4.Id_FinCt4;

              NomCtb := fmPsqCt4.NomCtb;
              NomCt2 := fmPsqCt4.NomCt2;
              NomCt3 := fmPsqCt4.NomCt3;
              NomCt4 := fmPsqCt4.NomCt4;

           end;

        finally

           FreeAndNil(fmPsqCt4);

        end;

        EdPsqTexto.Color := clInfoBk;

        if Id_FinCt4 > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'N5' then begin {Plano de contas}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqCt5 := TfmPsqCt5.Create(Self);

           with fmPsqCt5.FinCt5,SQL do begin

                Close;
                Text := ' Select FinCt5.Id_FinCt5,'+
                        '        FinCt5.Id_FinCt4,'+
                        '        FinCt4.Id_FinCt3,'+
                        '        FinCt3.Id_FinCt2,'+
                        '        FinCt2.Id_FinCtb,'+
                        '        FinCtb.NomCtb,'+
                        '        FinCt2.NomCt2,'+
                        '        FinCt3.NomCt3,'+
                        '        FinCt4.NomCt4,'+
                        '        FinCt5.NomCt5 '+
                        ' From FinCt5,FinCt4,FinCt3,FinCt2,FinCtb'+
                        ' Where FinCt5.Id_FinCt4 = FinCt4.Id_FinCt4'+
                        '   and FinCt4.Id_FinCt3 = FinCt3.Id_FinCt3'+
                        '   and FinCt3.Id_FinCt2 = FinCt2.Id_FinCt2'+
                        '   and FinCt2.Id_FinCtb = FinCtb.Id_FinCtb'+
                        '   and FinCt5.FlgAti = '+ QuotedStr('Sim') +                        
                        '   and FinCt4.FlgAti = '+ QuotedStr('Sim') +
                        '   and FinCt3.FlgAti = '+ QuotedStr('Sim') +
                        '   and FinCt2.FlgAti = '+ QuotedStr('Sim') +
                        '   and FinCtb.FlgAti = '+ QuotedStr('Sim') ;

                if Id_FinCtb > 0 then Text := Text + ' and FinCt2.Id_FinCtb = '+ QuotedStr(IntToStr(Id_FinCtb));
                if Id_FinCt2 > 0 then Text := Text + ' and FinCt3.Id_FinCt2 = '+ QuotedStr(IntToStr(Id_FinCt2));
                if Id_FinCt3 > 0 then Text := Text + ' and FinCt4.Id_FinCt3 = '+ QuotedStr(IntToStr(Id_FinCt3));
                if Id_FinCt4 > 0 then Text := Text + ' and FinCt5.Id_FinCt4 = '+ QuotedStr(IntToStr(Id_FinCt4));

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and FinCt5.NomCt5 LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and FinCt5.NomCt5 LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and FinCt5.NomCt5 LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by FinCt5.NomCt5';

                Open;

           end;

           fmPsqCt5.ShowModal;

           if fmPsqCt5.Id_FinCt5 > 0 then begin

              Id_FinCtb := fmPsqCt5.Id_FinCtb;
              Id_FinCt2 := fmPsqCt5.Id_FinCt2;
              Id_FinCt3 := fmPsqCt5.Id_FinCt3;
              Id_FinCt4 := fmPsqCt5.Id_FinCt4;
              Id_FinCt5 := fmPsqCt5.Id_FinCt5;

              NomCtb := fmPsqCt5.NomCtb;
              NomCt2 := fmPsqCt5.NomCt2;
              NomCt3 := fmPsqCt5.NomCt3;
              NomCt4 := fmPsqCt5.NomCt4;
              NomCt5 := fmPsqCt5.NomCt5;

           end;

        finally

           FreeAndNil(fmPsqCt5);

        end;

        EdPsqTexto.Color := clInfoBk;

        if Id_FinCt5 > 0 then Close;

     end;

     if UpperCase(TipoPesq) = 'N6' then begin {Plano de contas}

        EdPsqTexto.Color := $00FCF4ED;

        try

           fmPsqCt6 := TfmPsqCt6.Create(Self);

           with fmPsqCt6.FinCt6,SQL do begin

                Close;
                Text := ' Select FinCt6.Id_FinCt6,'+
                        '        FinCt6.Id_FinCt5,'+
                        '        FinCt5.Id_FinCt4,'+
                        '        FinCt4.Id_FinCt3,'+
                        '        FinCt3.Id_FinCt2,'+
                        '        FinCt2.Id_FinCtb,'+
                        '        FinCtb.NomCtb,'+
                        '        FinCt2.NomCt2,'+
                        '        FinCt3.NomCt3,'+
                        '        FinCt4.NomCt4,'+
                        '        FinCt5.NomCt5,'+
                        '        FinCt6.NomCt6 '+
                        ' From FinCt6,FinCt5,FinCt4,FinCt3,FinCt2,FinCtb'+
                        ' Where FinCt6.Id_FinCt5 = FinCt5.Id_FinCt5'+
                        '   and FinCt5.Id_FinCt4 = FinCt4.Id_FinCt4'+
                        '   and FinCt4.Id_FinCt3 = FinCt3.Id_FinCt3'+
                        '   and FinCt3.Id_FinCt2 = FinCt2.Id_FinCt2'+
                        '   and FinCt2.Id_FinCtb = FinCtb.Id_FinCtb'+
                        '   and FinCt6.FlgAti = '+ QuotedStr('Sim') +
                        '   and FinCt5.FlgAti = '+ QuotedStr('Sim') +
                        '   and FinCt4.FlgAti = '+ QuotedStr('Sim') +
                        '   and FinCt3.FlgAti = '+ QuotedStr('Sim') +
                        '   and FinCt2.FlgAti = '+ QuotedStr('Sim') +
                        '   and FinCtb.FlgAti = '+ QuotedStr('Sim') ;

                if Id_FinCtb > 0 then Text := Text + ' and FinCt2.Id_FinCtb = '+ QuotedStr(IntToStr(Id_FinCtb));
                if Id_FinCt2 > 0 then Text := Text + ' and FinCt3.Id_FinCt2 = '+ QuotedStr(IntToStr(Id_FinCt2));
                if Id_FinCt3 > 0 then Text := Text + ' and FinCt4.Id_FinCt3 = '+ QuotedStr(IntToStr(Id_FinCt3));
                if Id_FinCt4 > 0 then Text := Text + ' and FinCt5.Id_FinCt4 = '+ QuotedStr(IntToStr(Id_FinCt4));
                if Id_FinCt5 > 0 then Text := Text + ' and FinCt6.Id_FinCt5 = '+ QuotedStr(IntToStr(Id_FinCt5));

                if Trim( EdPsqTexto.Text ) <> '' then begin

                   if pos('#',EdPsqTexto.Text) > 0 then begin

                      Text := Text + ' and FinCt6.NomCt6 LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,1,pos('#',EdPsqTexto.Text)-1)  +'%');
                      Text := Text + ' and FinCt6.NomCt6 LIKE '+ QuotedStr('%'+ copy(EdPsqTexto.Text,pos('#',EdPsqTexto.Text)+1,60) +'%');

                      end
                   else
                      Text := Text + ' and FinCt6.NomCt6 LIKE '+ QuotedStr('%'+ EdPsqTexto.Text +'%');

                end;

                Text := Text + ' Order by FinCt6.NomCt6';

                Open;

           end;

           fmPsqCt6.ShowModal;

           if fmPsqCt6.Id_FinCt6 > 0 then begin

              Id_FinCtb := fmPsqCt6.Id_FinCtb;
              Id_FinCt2 := fmPsqCt6.Id_FinCt2;
              Id_FinCt3 := fmPsqCt6.Id_FinCt3;
              Id_FinCt4 := fmPsqCt6.Id_FinCt4;
              Id_FinCt5 := fmPsqCt6.Id_FinCt5;
              Id_FinCt6 := fmPsqCt6.Id_FinCt6;

              NomCtb := fmPsqCt6.NomCtb;
              NomCt2 := fmPsqCt6.NomCt2;
              NomCt3 := fmPsqCt6.NomCt3;
              NomCt4 := fmPsqCt6.NomCt4;
              NomCt5 := fmPsqCt6.NomCt5;
              NomCt6 := fmPsqCt6.NomCt6;

           end;

        finally

           FreeAndNil(fmPsqCt6);

        end;

        EdPsqTexto.Color := clInfoBk;

        if Id_FinCt6 > 0 then Close;

     end;

     end
  else
     begin

     if key = 13 then fmsgErro('Texto para Pesquisa não Informado',EdPsqTexto);

  end;
end;

procedure TfmAuxPsq.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
