unit ufvndfaturamento;

interface

uses
  Winapi.Windows, Vcl.Forms, ufvndsimples, DBAccess, Uni, Vcl.Dialogs,
  Vcl.ImgList, Vcl.Controls, PngImageList, ACBrBase, ACBrValidador,
  System.Classes, System.Actions, Vcl.ActnList, Vcl.Menus, Data.DB, MemDS,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, uPegaBase,
  Vcl.ComCtrls, Vcl.Mask, System.SysUtils, uFuncoes, VirtualTable, System.ImageList,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfvndfaturamento = class(Tfvndsimples)
    cfgcfgdtinictb: TDateField;
    dfa: tuniquery;
    dfadfachave: TIntegerField;
    dfameschave: TIntegerField;
    dfadfameschave: TIntegerField;
    cfgcfgdatapadrao: TDateField;
    DStoe: TDataSource;
    toecfopsaida: TDBText;
    cfgcfgtoetransflaintepro: TIntegerField;
    cfgcfgtoetransflainte: TIntegerField;
    itmncm: tuniquery;
    itmrefitmpercreducaobaseicm: TFloatField;
    gravaitmrefitmpercreducaobaseicm: TFloatField;
    itmfatitmoutras: TFloatField;
    itmrefitmfrete: TCurrencyField;
    itmfatitmfrete: TCurrencyField;
    gravaitmrefitmfrete: TCurrencyField;
    procedure bvalidarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActAFaturarExecute(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure gravaitmrefAfterInsert(DataSet: TDataSet);
  private
    procedure VerifieAjustaItemTransferenciaFilial;
    procedure IncluirItensIndividualmente;
    procedure IncluirItensAgrupando;
    procedure VerifieAjustaItemTransferenciaFilialMemoria;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  fvndfaturamento: Tfvndfaturamento;

  // Início ID do Módulo fravnd
const
  vPlIdMd = '02.04.09.001-05';

  // Fim ID do Módulo fravnd

implementation

uses
  System.Math, System.Variants;

{$R *.dfm}

procedure Tfvndfaturamento.ActAFaturarExecute(Sender: TObject);
begin
  // inherited;

  // IncluirItensIndividualmente;
  IncluirItensAgrupando;
end;

procedure Tfvndfaturamento.VerifieAjustaItemTransferenciaFilialMemoria;
var
  vlcfop: string;
  vlToecodigo: string;
  vlcstcodigo: string;
  vlcsicodigo: string;
  vlcspcodigo: string;
  vlcsfcodigo: string;
  vlitmmva: string;

  vlpercentualicm: string;
  vlBaseicm: string;
  vlValoricm: string;
  vlitmreducaobaseicm: string;

  vlpercentualpis: string;
  vlvalorpis: string;

  vlpercentualcofins: string;
  vlvalorcofins: string;

  vlProducao: Integer;
  vlValorReducao: double;
  vlcusto: double;

begin

  itmref.First;
  cfg.Close;
  cfg.Open;

  // ajusta o toe do item para produto sem substituição
  While Not itmref.Eof Do
  Begin
    vlcusto := 0;

    consulta.Close;
    consulta.SQL.Text := 'Select puncusto from pun where puncodigo=' + itmrefpuncodigo.AsString;
    consulta.Open;

    vlcusto := consulta.FieldByName('puncusto').AsFloat;

    itmref.Edit;
    itmrefitmvalor.AsFloat := vlcusto;
    itmrefitmtotal.AsFloat := itmrefitmquantidade.AsFloat * vlcusto;
    itmref.Post;

    consulta.Close;
    consulta.SQL.Text := 'SELECT pro.procodigo,pro.pronome, pro.proproducao,pro.icmcodigo,';
    consulta.SQL.Add('pro.cfocfop,cstcodigo,csicodigo,cspcodigo, csfcodigo, pro.propisaliquota, ');
    consulta.SQL.Add('pro.procofinsaliquota, promva, propercfcp, pro.propercreducaobaseicm ');
    consulta.SQL.Add('from pro where procodigo=' + itmrefprocodigo.AsString);
    consulta.Open;


    vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
    vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
    vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;

    vlpercentualpis := consulta.FieldByName('propisaliquota').AsString;
    // vlpercentualpis := StringReplace(vlpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

    vlpercentualcofins := consulta.FieldByName('procofinsaliquota').AsString;
    // vlpercentualcofins := StringReplace(vlpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

    vlitmmva := consulta.FieldByName('promva').AsString;
    // vlitmmva := StringReplace(vlitmmva, ',', '.', [rfReplaceAll, rfIgnoreCase]);

    vlitmreducaobaseicm := '0';
    // vlitmreducaobaseicm := consulta.FieldByName('propercreducaobaseicm').AsString;

    vlProducao := consulta.FieldByName('proproducao').AsInteger;

    if vlProducao = 1 then
    begin
      consulta.Close;
      consulta.SQL.Text := 'select toecodigo, toecfopsaida,cstcodigo from toe where toecodigo=' + cfgcfgtoetransflaintepro.AsString;
      consulta.Open;
    end
    else
    begin
      consulta.Close;
      consulta.SQL.Text := 'select toecodigo, toecfopsaida,cstcodigo from toe where toecodigo=' + cfgcfgtoetransflainte.AsString;
      consulta.Open;
    end;

    vlcfop := consulta.FieldByName('toecfopsaida').AsString;
    vlToecodigo := consulta.FieldByName('toecodigo').AsString;
    vlpercentualicm := 'NN';
    vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;


    {consulta.Close;
    consulta.SQL.Text := 'select icmaliquotas from icm where icmcodigo=' + QuotedStr(itmreficmcodigo.AsString);
    consulta.Open;

    if SoNumeros(consulta.FieldByName('icmaliquotas').AsString) <> '' then
    begin
      if strtofloat(consulta.FieldByName('icmaliquotas').AsString) > 0 then
      begin

        vlpercentualicm := consulta.FieldByName('icmaliquotas').AsString;

        vlBaseicm := itmrefitmtotal.AsString;

        if vlitmreducaobaseicm <> '0' then
        begin
          vlValorReducao := strtofloat(vlBaseicm) * (strtofloat(vlitmreducaobaseicm) / 100);
          vlValorReducao := roundto(vlValorReducao, -2);

          vlBaseicm := floattostr(strtofloat(vlBaseicm) - vlValorReducao);

          vlValoricm := floattostr(roundto(strtofloat(vlBaseicm) * (strtofloat(vlpercentualicm) / 100), -2));
          // vlValoricm := StringReplace(vlValoricm, ',', '.', [rfReplaceAll, rfIgnoreCase]);

          // vlpercentualicm := StringReplace(vlpercentualicm, ',', '.', [rfReplaceAll, rfIgnoreCase]);

        end
        else
        begin
          vlitmreducaobaseicm := '0';

          vlValoricm := floattostr(roundto(strtofloat(vlBaseicm) * (strtofloat(vlpercentualicm) / 100), -2));

          // vlpercentualicm := StringReplace(vlpercentualicm, ',', '.', [rfReplaceAll, rfIgnoreCase]);

        end;

      end
      else
      begin
        vlitmreducaobaseicm := '0';
        vlBaseicm := '0';
        vlValoricm := '0';
      end;

    end
    else
    begin
      vlitmreducaobaseicm := '0';
      vlBaseicm := '0';
      vlValoricm := '0';
    end; }
    // vlBaseicm := StringReplace(vlBaseicm, ',', '.', [rfReplaceAll, rfIgnoreCase]);
    // vlitmreducaobaseicm := StringReplace(vlitmreducaobaseicm, ',', '.', [rfReplaceAll, rfIgnoreCase]);
    // vlValoricm := StringReplace(vlValoricm, ',', '.', [rfReplaceAll, rfIgnoreCase]);

    itmref.Edit;
    itmrefitmicm.AsString := vlValoricm;
    itmrefitmbicm.AsString := vlBaseicm;
    itmreftoecodigo.AsString := vlToecodigo;
    itmrefitmpercreducaobaseicm.AsString := vlitmreducaobaseicm;

    // itmrefitmmva.asstring:=vlitmmva;
    itmrefitmaliqcofins.AsString := vlpercentualcofins;
    itmrefitmaliqpis.AsString := vlpercentualpis;
    itmrefcfocfop.AsString := vlcfop;
    itmrefcstcodigo.AsString := vlcstcodigo;
    itmrefcsicodigo.AsString := vlcsicodigo;
    itmrefcspcodigo.AsString := vlcspcodigo;
    itmrefcsfcodigo.AsString := vlcsfcodigo;
    itmref.Post;

    itmref.Next;
  End;




  // fim do ajusta o toe do item para produto com substituição

end;

procedure Tfvndfaturamento.VerifieAjustaItemTransferenciaFilial;
var
  vlcfop: string;
  vlToecodigo: string;
  vlcstcodigo: string;
  vlcsicodigo: string;
  vlcspcodigo: string;
  vlcsfcodigo: string;
  vlitmmva: string;

  vlpercentualicm: string;
  vlBaseicm: string;
  vlValoricm: string;
  vlitmreducaobaseicm: string;

  vlpercentualpis: string;
  vlvalorpis: string;

  vlpercentualcofins: string;
  vlvalorcofins: string;

  vlProducao: Integer;
  vlValorReducao: double;
  vlcusto: double;

begin

  itm.Close;
  itm.ParamByName('meschave').AsInteger := registromeschave.AsInteger;
  itm.Open;

  itm.First;

  // ajusta o toe do item para produto sem substituição
  While Not itm.Eof Do
  Begin
    vlcusto := 0;
    consulta.Close;
    consulta.SQL.Text := 'Select puncusto from pun where puncodigo=' + itmpuncodigo.AsString;
    consulta.Open;
    vlcusto := consulta.FieldByName('puncusto').AsFloat;

    itm.Edit;
    itmitmvalor.AsFloat := vlcusto;
    itmitmtotal.AsFloat := itmitmquantidade.AsFloat * vlcusto;
    itm.Post;

    consulta.Close;
    consulta.SQL.Text := 'SELECT pro.procodigo,pro.pronome, pro.proproducao,pro.icmcodigo,';
    consulta.SQL.Add('pro.cfocfop,cstcodigo,csicodigo,cspcodigo, csfcodigo, pro.propisaliquota, ');
    consulta.SQL.Add('pro.procofinsaliquota, promva, propercfcp, pro.propercreducaobaseicm ');
    consulta.SQL.Add('from pro where procodigo=' + itmprocodigo.AsString);
    consulta.Open;


    vlcsicodigo := consulta.FieldByName('csicodigo').AsString;
    vlcspcodigo := consulta.FieldByName('cspcodigo').AsString;
    vlcsfcodigo := consulta.FieldByName('csfcodigo').AsString;

    vlpercentualpis := consulta.FieldByName('propisaliquota').AsString;
    vlpercentualpis := StringReplace(vlpercentualpis, ',', '.', [rfReplaceAll, rfIgnoreCase]);

    vlpercentualcofins := consulta.FieldByName('procofinsaliquota').AsString;
    vlpercentualcofins := StringReplace(vlpercentualcofins, ',', '.', [rfReplaceAll, rfIgnoreCase]);

    vlitmmva := consulta.FieldByName('promva').AsString;
    vlitmmva := StringReplace(vlitmmva, ',', '.', [rfReplaceAll, rfIgnoreCase]);

  //  vlitmreducaobaseicm := consulta.FieldByName('propercreducaobaseicm').AsString;
    vlitmreducaobaseicm :='0';

    vlProducao := consulta.FieldByName('proproducao').AsInteger;

    cfg.Close;

    cfg.Open;

    if vlProducao = 1 then
    begin
      consulta.Close;
      consulta.SQL.Text := 'select toecodigo, toecfopsaida,cstcodigo  from toe where toecodigo=' + cfgcfgtoetransflaintepro.AsString;
      consulta.Open;
    end
    else
    begin
      consulta.Close;
      consulta.SQL.Text := 'select toecodigo, toecfopsaida,cstcodigo  from toe where toecodigo=' + cfgcfgtoetransflainte.AsString;
      consulta.Open;
    end;

    vlcfop := consulta.FieldByName('toecfopsaida').AsString;
    vlToecodigo := consulta.FieldByName('toecodigo').AsString;
    vlcstcodigo := consulta.FieldByName('cstcodigo').AsString;
    vlpercentualicm:= '00';


   { consulta.Close;
    consulta.SQL.Text := 'select icmaliquotas from icm where icmcodigo=' + QuotedStr(itmicmcodigo.AsString);
    consulta.Open;

    if SoNumeros(consulta.FieldByName('icmaliquotas').AsString) <> '' then
    begin
      if strtofloat(consulta.FieldByName('icmaliquotas').AsString) > 0 then
      begin

        vlpercentualicm := consulta.FieldByName('icmaliquotas').AsString;

        vlBaseicm := itmitmtotal.AsString;

        if vlitmreducaobaseicm <> '0' then
        begin
          vlValorReducao := strtofloat(vlBaseicm) * (strtofloat(vlitmreducaobaseicm) / 100);
          vlValorReducao := roundto(vlValorReducao, -2);

          vlBaseicm := floattostr(strtofloat(vlBaseicm) - vlValorReducao);

          vlValoricm := floattostr(roundto(strtofloat(vlBaseicm) * (strtofloat(vlpercentualicm) / 100), -2));
          vlValoricm := StringReplace(vlValoricm, ',', '.', [rfReplaceAll, rfIgnoreCase]);

          vlpercentualicm := StringReplace(vlpercentualicm, ',', '.', [rfReplaceAll, rfIgnoreCase]);

        end
        else
        begin
          vlitmreducaobaseicm := '0';

          vlValoricm := floattostr(roundto(strtofloat(vlBaseicm) * (strtofloat(vlpercentualicm) / 100), -2));

          vlpercentualicm := StringReplace(vlpercentualicm, ',', '.', [rfReplaceAll, rfIgnoreCase]);

        end;

      end
      else
      begin
        vlitmreducaobaseicm := '0';
        vlBaseicm := '0';
        vlValoricm := '0';
      end;

    end
    else
    begin
      vlitmreducaobaseicm := '0';
      vlBaseicm := '0';
      vlValoricm := '0';
    end;
    vlBaseicm := StringReplace(vlBaseicm, ',', '.', [rfReplaceAll, rfIgnoreCase]);
    vlitmreducaobaseicm := StringReplace(vlitmreducaobaseicm, ',', '.', [rfReplaceAll, rfIgnoreCase]);
    vlValoricm := StringReplace(vlValoricm, ',', '.', [rfReplaceAll, rfIgnoreCase]);  }

    itmncm.Close;
    itmncm.SQL.Text := 'update itm set  itmicm=' + vlValoricm + ' , itmbicm=' + vlBaseicm + ',    toecodigo=' + vlToecodigo +
      ', itmpercreducaobaseicm=' + vlitmreducaobaseicm + ', itmmva=' + vlitmmva + ', itmaliqcofins=' + vlpercentualcofins + ' ,itmaliqpis=' +
      vlpercentualpis + ', cfocfop=' + QuotedStr(vlcfop) + ',cstcodigo=' + QuotedStr(vlcstcodigo) + ', csicodigo=' + QuotedStr(vlcsicodigo) +
      ', cspcodigo=' + QuotedStr(vlcspcodigo) + ',csfcodigo=' + QuotedStr(vlcsfcodigo) + ' where itmchave=' + itmitmchave.AsString;
    itmncm.ExecSQL;

    itm.Next;
  End;




  // fim do ajusta o toe do item para produto com substituição

end;

procedure Tfvndfaturamento.IncluirItensAgrupando;
var
  vch: string;
  vlcusto: double;
  vlprocodigo: string;
  vlnome: string;
  vlpodeincluir: Boolean;
  i: Integer;
  vlNovo: Boolean;
begin
  if registro.State <> dsBrowse then
    registro.Post;
  dfa.Close;
  dfa.Params[0].AsInteger := Self.meschave.Field.AsInteger;
  dfa.Open;
  vch := '';
  vch := MostraLista('mfat', Self.meschave.Field.AsString);
  if vch <> '' then
  begin
    dfa.Close;
    dfa.Filter := 'tdfcodigo <> ''RF''';
    dfa.Filtered := True;
    dfa.Params[0].AsInteger := Self.meschave.Field.AsInteger;
    dfa.Open;
    dfa.First;

    itmref.Close;
    // itmref.Params[0].AsString := Self.meschave.Field.AsString;
    itmref.Open;

    while not dfa.Eof do
    begin
      itmfat.Close;
      itmfat.Params[0].AsString := Self.dfadfameschave.AsString;
      itmfat.Open;

      while not itmfat.Eof do
      begin
        vlcusto := 0;
        consulta.Close;
        consulta.SQL.Text := 'Select puncusto, pun.procodigo, pronome from pun,pro where pun.procodigo=pro.procodigo and  puncodigo=' +
          itmfatpuncodigo.AsString;
        consulta.Open;
        vlcusto := consulta.FieldByName('puncusto').AsFloat;
        vlprocodigo := consulta.FieldByName('procodigo').AsString;
        vlnome := consulta.FieldByName('pronome').AsString;
        vlpodeincluir := True;
        consulta.Close;
        consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + registrotoecodigo.AsString;
        consulta.Open;

        if ((consulta.FieldByName('toecfopsaida').AsString = '5.151') or (consulta.FieldByName('toecfopsaida').AsString = '5.152')) then
        begin
          if (vlcusto = 0) then
          begin
            vlpodeincluir := false;
            ShowMessage('Atenção!' + ' ' + 'Este produto NÃO será incluído' + ''#13'' + vlprocodigo + ' - ' + vlnome +
              ' está sem preço de custo, por favor verificar!');
          end
          else
          begin
            vlpodeincluir := True;
          end;
        end;

        if vlpodeincluir then
        begin
          vlNovo := True;

          if itmref.locate('procodigo', itmfat.FieldByName('procodigo').AsInteger, []) then
          begin
            if itmrefunicodigo.AsInteger = itmfatunicodigo.AsInteger then
            begin
              vlNovo := false;
            end
            else
            begin
              vlNovo := True;
            end;

          end
          else
          begin
            vlNovo := True;
          end;

          if vlNovo = false then
          begin

            itmref.Edit;

            itmrefitmquantidade.AsFloat := itmrefitmquantidade.AsFloat + itmfatitmquantidade.AsFloat;
            itmrefitmdesconto.AsFloat := itmrefitmdesconto.AsFloat + itmfatitmdesconto.AsFloat;

            itmrefitmbicm.AsFloat := itmrefitmbicm.AsFloat + itmfatitmbicm.AsFloat;
            itmrefitmicm.AsFloat := itmrefitmicm.AsFloat + itmfatitmicm.AsFloat;

            itmrefitmbipi.AsFloat := itmrefitmbipi.AsFloat + itmfatitmbipi.AsFloat;
            itmrefitmipi.AsFloat := itmrefitmipi.AsFloat + itmfatitmipi.AsFloat;

            itmrefitmbpis.AsFloat := itmrefitmbpis.AsFloat + itmfatitmbpis.AsFloat;
            itmrefitmpis.AsFloat := itmrefitmpis.AsFloat + itmfatitmpis.AsFloat;

            itmrefitmbcofins.AsFloat := itmrefitmbcofins.AsFloat + itmfatitmbcofins.AsFloat;
            itmrefitmcofins.AsFloat := itmrefitmcofins.AsFloat + itmfatitmcofins.AsFloat;

            itmrefitmtotal.AsFloat := itmrefitmtotal.AsFloat + itmfatitmtotal.AsFloat;
            itmrefitmcontendo.AsFloat := itmrefitmcontendo.AsFloat + itmfatitmcontendo.AsFloat;

            itmrefitmfrete.AsFloat := itmrefitmfrete.AsFloat + itmfatitmfrete.AsFloat;



          end
          else
          begin
            itmref.Append;
            itmrefitmquantidade.AsFloat := itmfatitmquantidade.AsFloat;
            itmrefitmdesconto.AsFloat := itmfatitmdesconto.AsFloat;

            itmrefitmbicm.AsFloat := itmfatitmbicm.AsFloat;
            itmrefitmicm.AsFloat := itmfatitmicm.AsFloat;

            itmrefitmbipi.AsFloat := itmfatitmbipi.AsFloat;
            itmrefitmipi.AsFloat := itmfatitmipi.AsFloat;

            itmrefitmbpis.AsFloat := itmfatitmbpis.AsFloat;
            itmrefitmpis.AsFloat := itmfatitmpis.AsFloat;

            itmrefitmbcofins.AsFloat := itmfatitmbcofins.AsFloat;
            itmrefitmcofins.AsFloat := itmfatitmcofins.AsFloat;

            itmrefitmtotal.AsFloat := itmfatitmtotal.AsFloat;
            itmrefitmcontendo.AsFloat := itmfatitmcontendo.AsFloat;

            itmrefitmfrete.AsFloat := itmfatitmfrete.AsFloat;

          end;

          itmrefitmaliqcofins.AsFloat := itmfatitmaliqcofins.AsFloat;

          itmrefmeschave.AsInteger := Self.meschave.Field.AsInteger;
          itmrefprocodigo.AsInteger := itmfatprocodigo.AsInteger;
          itmrefunicodigo.AsInteger := itmfatunicodigo.AsInteger;
          itmrefcstcodigo.AsString := itmfatcstcodigo.AsString;
          itmrefitmdesccomple.AsString := itmfatitmdesccomple.AsString;
          itmrefitmvalor.AsFloat := itmfatitmvalor.AsFloat;

          itmrefitmmovifisico.AsString := itmfatitmmovifisico.AsString;
          itmreftoecodigo.AsInteger := itmfattoecodigo.AsInteger;
          itmrefcfocfop.AsString := itmfatcfocfop.AsString;
          itmreficmcodigo.AsString := itmfaticmcodigo.AsString;
          itmrefitmaliqicm.AsString := itmfatitmaliqicm.AsString;
          itmrefitmbicms.AsFloat := itmfatitmbicms.AsFloat;
          itmrefitmaliqicms.AsFloat := itmfatitmaliqicms.AsFloat;
          itmrefitmicms.AsFloat := itmfatitmicms.AsFloat;
          itmrefitmapuipi.AsString := itmfatitmapuipi.AsString;
          itmrefcsicodigo.AsString := itmfatcsicodigo.AsString;
          itmrefceicodigo.AsString := itmfatceicodigo.AsString;
          itmrefpuncodigo.AsInteger := itmfatpuncodigo.AsInteger;
          itmrefitmaliqipi.AsFloat := itmfatitmaliqipi.AsFloat;
          itmrefcspcodigo.AsString := itmfatcspcodigo.AsString;
          itmrefitmaliqpis.AsFloat := itmfatitmaliqpis.AsFloat;
          itmrefitmquantpis.AsFloat := itmfatitmquantpis.AsFloat;
          itmrefitmaliqpisvalor.AsFloat := itmfatitmaliqpisvalor.AsFloat;
          itmrefcsfcodigo.AsString := itmfatcsfcodigo.AsString;
          itmrefitmquantcofins.AsFloat := itmfatitmquantcofins.AsFloat;
          itmrefitmaliqcofinsvalor.AsFloat := itmfatitmaliqcofinsvalor.AsFloat;
          itmrefpcccodigo.AsString := itmfatpcccodigo.AsString;
          itmrefunicodigobase.AsInteger := itmfatunicodigobase.AsInteger;
          itmrefcfocfopdestinacao.AsString := itmfatcfocfopdestinacao.AsString;
          itmrefitmoutras.AsCurrency := itmfatitmoutras.AsCurrency;
          itmrefitmfrete.AsCurrency := itmfatitmfrete.AsCurrency;
          itmref.Post;


        end;
        itmfat.Next;
      end;
      consulta.Close;
      consulta.SQL.Text := 'update mes set tdfcodigo=' + QuotedStr(tdfRefaturado) + ' where meschave=' + Self.dfadfameschave.AsString;
      consulta.ExecSQL;
      dfa.Next;
    end;
    dfa.Filtered := false;
    dfa.Refresh;

    consulta.Close;
    consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + registrotoecodigo.AsString;
    consulta.Open;

    if (consulta.FieldByName('toecfopsaida').AsString = '5.151') or (consulta.FieldByName('toecfopsaida').AsString = '5.152') then
    begin
      // VerifieAjustaItemTransferenciaFilial;
      VerifieAjustaItemTransferenciaFilialMemoria;
    end;

    gravaitmref.Close;
    gravaitmref.Params[0].AsString := Self.meschave.Field.AsString;
    gravaitmref.Open;

    itmref.First;
    while not itmref.Eof do
    begin
      gravaitmref.Append;
      for i := 1 to gravaitmref.fields.count - 1 do
      begin

        gravaitmref.FieldByName(gravaitmref.fields[i].fieldname).AsString := itmref.FieldByName(gravaitmref.fields[i].fieldname).AsString;

      end;

      gravaitmrefitmvalor.AsCurrency := (gravaitmrefitmtotal.AsCurrency) / gravaitmrefitmquantidade.AsCurrency;
      gravaitmref.Post;
      itmref.Next;
    end;

    itm.Refresh;
    recalculatotais;
  end;
  listaitens.SetFocus;
end;

procedure Tfvndfaturamento.IncluirItensIndividualmente;
var
  vch: string;
  vlcusto: double;
  vlprocodigo: string;
  vlnome: string;
  vlpodeincluir: Boolean;
  i: Integer;
begin
  if registro.State <> dsBrowse then
    registro.Post;
  dfa.Close;
  dfa.Params[0].AsInteger := Self.meschave.Field.AsInteger;
  dfa.Open;
  vch := '';
  vch := MostraLista('mfat', Self.meschave.Field.AsString);
  if vch <> '' then
  begin
    dfa.Close;
    dfa.Filter := 'tdfcodigo <> ''RF''';
    dfa.Filtered := True;
    dfa.Params[0].AsInteger := Self.meschave.Field.AsInteger;
    dfa.Open;
    dfa.First;
    itmref.Close;
    // itmref.Params[0].AsString := Self.dfadfameschave.AsString;
    itmref.Open;

    while not dfa.Eof do
    begin
      itmfat.Close;
      itmfat.Params[0].AsString := Self.dfadfameschave.AsString;
      itmfat.Open;

      while not itmfat.Eof do
      begin
        vlcusto := 0;
        consulta.Close;
        consulta.SQL.Text := 'Select puncusto, pun.procodigo, pronome from pun,pro where pun.procodigo=pro.procodigo and  puncodigo=' +
          itmfatpuncodigo.AsString;
        consulta.Open;
        vlcusto := consulta.FieldByName('puncusto').AsFloat;
        vlprocodigo := consulta.FieldByName('procodigo').AsString;
        vlnome := consulta.FieldByName('pronome').AsString;
        vlpodeincluir := True;
        consulta.Close;
        consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + registrotoecodigo.AsString;
        consulta.Open;
        if ((consulta.FieldByName('toecfopsaida').AsString = '5.151') or (consulta.FieldByName('toecfopsaida').AsString = '5.152')) then
        begin
          if (vlcusto = 0) then
          begin
            vlpodeincluir := false;
            ShowMessage('Atenção!' + ' ' + 'Este produto NÃO será incluído' + ''#13'' + vlprocodigo + ' - ' + vlnome +
              ' está sem preço de custo, por favor verificar!');
          end
          else
          begin
            vlpodeincluir := True;
          end;
        end;
        if vlpodeincluir then
        begin
          itmref.Append;
          itmrefmeschave.AsInteger := Self.meschave.Field.AsInteger;
          for i := 3 to itmfat.FieldCount - 1 do
            itmref.FieldByName(itmref.fields[i].fieldname).AsString := itmfat.FieldByName(itmref.fields[i].fieldname).AsString;
          itmref.Post;
        end;
        itmfat.Next;
      end;
      consulta.Close;
      consulta.SQL.Text := 'update mes set tdfcodigo=' + QuotedStr(tdfRefaturado) + ' where meschave=' + Self.dfadfameschave.AsString;
      consulta.ExecSQL;
      dfa.Next;
    end;
    dfa.Filtered := false;
    dfa.Refresh;
    consulta.Close;
    consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + registrotoecodigo.AsString;
    consulta.Open;
    if (consulta.FieldByName('toecfopsaida').AsString = '5.151') or (consulta.FieldByName('toecfopsaida').AsString = '5.152') then
    begin
      VerifieAjustaItemTransferenciaFilial;
    end;
    itm.Refresh;
    recalculatotais;
  end;
  listaitens.SetFocus;
end;

procedure Tfvndfaturamento.bcancelaClick(Sender: TObject);
begin
  inherited;

  // Verifica se usuário realmente cancelou o registro
  // e retorna situação dos documentos importados como "AF - A Faturar" novamente.
  if (ModalResult = mrCancel) and (dfa.Active) then
  begin
    dfa.First;

    while not dfa.Eof do
    begin
      consulta.Close;
      consulta.SQL.Text := 'UPDATE mes m SET m.tdfcodigo = ''' + tdfMovimentoAFaturar + ''' WHERE m.meschave = :meschave;';
      consulta.Params[0].AsInteger := dfadfameschave.AsInteger;
      consulta.ExecSQL;

      dfa.Next;
    end;
  end;
end;

procedure Tfvndfaturamento.bconfirmaClick(Sender: TObject);
var
  vRetLote: String;
begin

  if itm.RecordCount = 0 then
  begin
    ShowMessage('Atenção!' + #13 + 'Para cancelar o registro deve clicar no BOTÃO Cancela!');
    exit;
  end;


  inherited;
  if registro.State = dsBrowse then
    registro.Edit;

  registromesprodutos.AsCurrency := vpTotProdutos;
  registromesservicos.AsCurrency := vpTotServicos;
  registro.Post;

  if ModalResult = mrOk then
  begin
    vRetLote := RegistraLoteFaturamento;
    if vRetLote = '' then
    begin
      ModalResult := mrNone;
      exit;
    end;

    (* Identifica se houve parte de pagamento a prazo *)
    consulta.Close;
    consulta.SQL.Text := 'SELECT rfm.meschave FROM rfm, mfi, mlt, dtl ';
    consulta.SQL.Add('WHERE mfi.rfichave = rfm.rfichave ');
    consulta.SQL.Add('AND mfi.mfichave = mlt.mfichave ');
    consulta.SQL.Add('AND mlt.ltechave = dtl.ltechave ');
    consulta.SQL.Add('AND dtl.mdacodigo = 7 ');
    consulta.SQL.Add('AND rfm.meschave = ' + Self.meschave.Field.AsString);
    consulta.Open;

    if consulta.IsEmpty then
      exit;

    consulta.Close;
    consulta.SQL.Text := 'UPDATE mes SET tfpcodigo=' + IntToStr(tfpAPrazo) + ' WHERE meschave=' + Self.meschave.Field.AsString;
    consulta.ExecSQL;
  end;
end;

procedure Tfvndfaturamento.bvalidarClick(Sender: TObject);
begin
  PlDetalhe.Visible := True;
  inherited;
  bactAFaturar.Click;
end;

procedure Tfvndfaturamento.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  bactAFaturar.Visible := True;
  Self.registromesemissao.AsFloat := Self.cfgcfgdatapadrao.AsFloat;
  Self.registromesregistro.AsFloat := Self.cfgcfgdatapadrao.AsFloat;
  mesemissao.tabstop := false;
  mesregistro.tabstop := false;
  mesemissao.Color := PEG_COR_VALORPADRAO;
  mesregistro.Color := PEG_COR_VALORPADRAO;
  mesemissao.readonly := True;
  mesregistro.readonly := True;
  tdfcodigo.readonly := True;
  tdfcodigo.tabstop := false;
  tdfcodigo.Color := PEG_COR_VALORPADRAO;
  PlDetalhe.Visible := false;
end;

procedure Tfvndfaturamento.gravaitmrefAfterInsert(DataSet: TDataSet);
begin
  inherited;
  gravaitmrefitmitem.AsInteger := gravaitmref.RecordCount + 1;
end;

end.
