unit ufimpcuf;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, DAScript, UniScript, ACBrBase,
  ACBrValidador, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ExtCtrls, System.SysUtils,
  Vcl.Dialogs, uFuncoes, System.ImageList;

type
  Tfimpcuf = class(Tfrmbase)
    icu: tuniquery;
    mes: tuniquery;
    itm: tuniquery;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmunicodigo: TIntegerField;
    itmcstcodigo: TStringField;
    itmitmdesccomple: TStringField;
    itmitmquantidade: TFloatField;
    itmitmvalor: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmmovifisico: TStringField;
    itmtoecodigo: TIntegerField;
    itmcfocfop: TStringField;
    itmitmbicm: TFloatField;
    itmicmcodigo: TStringField;
    itmitmaliqicm: TStringField;
    itmitmicm: TFloatField;
    itmitmbicms: TFloatField;
    itmitmaliqicms: TFloatField;
    itmitmicms: TFloatField;
    itmitmapuipi: TStringField;
    itmcsicodigo: TStringField;
    itmceicodigo: TStringField;
    itmitmbipi: TFloatField;
    itmpuncodigo: TIntegerField;
    itmitmaliqipi: TFloatField;
    itmitmipi: TFloatField;
    itmcspcodigo: TStringField;
    itmitmpis: TFloatField;
    itmitmbpis: TFloatField;
    itmitmaliqpis: TFloatField;
    itmitmquantpis: TFloatField;
    itmitmaliqpisvalor: TFloatField;
    itmcsfcodigo: TStringField;
    itmitmbcofins: TFloatField;
    itmitmaliqcofins: TFloatField;
    itmitmquantcofins: TFloatField;
    itmitmaliqcofinsvalor: TFloatField;
    itmitmcofins: TFloatField;
    itmpcccodigo: TStringField;
    itmitmtotal: TFloatField;
    itmunicodigobase: TIntegerField;
    itmcfocfopdestinacao: TStringField;
    itmitmcontendo: TFloatField;
    mesmeschave: TIntegerField;
    mesetdcodigo: TIntegerField;
    mesmesemissao: TDateField;
    mesmesregistro: TDateField;
    mestdfcodigo: TStringField;
    messdecodigo: TStringField;
    mesmesserie: TStringField;
    mesmesnumero: TIntegerField;
    mesmeschavenfe: TStringField;
    mestoecodigo: TIntegerField;
    mesmesvalor: TFloatField;
    mesmesdesconto: TFloatField;
    mesmestotal: TFloatField;
    mestfpcodigo: TIntegerField;
    mesrefcodigo: TIntegerField;
    mesmesfrete: TFloatField;
    mesmesseguro: TFloatField;
    mesmesoutras: TFloatField;
    mesmesbicm: TFloatField;
    mesmesicm: TFloatField;
    mesmesbicms: TFloatField;
    mesmesicms: TFloatField;
    mesmesipi: TFloatField;
    mesmespis: TFloatField;
    mesmescofins: TFloatField;
    mesmespiss: TFloatField;
    mesmescofinss: TFloatField;
    mesclbcodigo: TIntegerField;
    mestrmcodigo: TIntegerField;
    mesmesprotocolo: TStringField;
    mestrfcodigo: TStringField;
    mestemcodigo: TIntegerField;
    mesedritem: TIntegerField;
    icuicuchave: TIntegerField;
    icucufchave: TIntegerField;
    icuprocodigo: TIntegerField;
    icucstcodigo: TStringField;
    icuunicodigo: TIntegerField;
    icuicuquantidade: TFloatField;
    icuicuquantidadecanc: TFloatField;
    icuicuvalor: TFloatField;
    icucfocfop: TStringField;
    icuicupis: TFloatField;
    icuicucofins: TFloatField;
    icuicuicm: TFloatField;
    mesmescoocupom: TIntegerField;
    mesmesccfcupom: TIntegerField;
    mesmesdatacupom: TDateField;
    registrocufchave: TIntegerField;
    registrotdfcodigo: TStringField;
    registroetdcodigo: TIntegerField;
    registrocufdata: TDateField;
    registrosdecodigo: TStringField;
    registrocuftotal: TFloatField;
    registrocufdesconto: TFloatField;
    registrocufpis: TFloatField;
    registrocufcofins: TFloatField;
    registrocufcco: TIntegerField;
    registrocufdoc1: TStringField;
    registrocufnome: TStringField;
    registrorrzcodigo: TIntegerField;
    cufchave: TDBEdit;
    cufdata: TDBEdit;
    mostracupons: TProgressBar;
    mostraitens: TProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    cfgcfgcstcuf: TStringField;
    ACBrValidador1: TACBrValidador;
    zPCalcDesc: TUniScript;
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure itmAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    procedure processacupons;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fimpcuf: Tfimpcuf;

  // Início ID do Módulo fravnd
const
  vPlIdMd = '02.04.09.001-06';

  // Fim ID do Módulo fravnd

implementation

{$R *.dfm}

procedure Tfimpcuf.bcancelaClick(Sender: TObject);
begin
  { inherited; }
  Close;
end;

procedure Tfimpcuf.bconfirmaClick(Sender: TObject);
begin
  { inherited; }
  processacupons;

  Close;
end;

procedure Tfimpcuf.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  if not Assigned(zPCalcDesc.Connection) then
    zPCalcDesc.Connection := Self.zcone;
end;

procedure Tfimpcuf.itmAfterInsert(DataSet: TDataSet);
begin
  inherited;

  itmitmmovifisico.AsInteger := 1;
  itmitmdesconto.AsFloat := 0;

  (* ICMS *)
  itmicmcodigo.AsString := '01';
  itmitmbicm.AsFloat := 0;
  itmitmicm.AsFloat := 0;
  itmitmaliqicm.AsFloat := 0;

  (* ICMS ST *)
  itmitmbicms.AsFloat := 0;
  itmitmaliqicms.AsFloat := 0;
  itmitmicms.AsFloat := 0;

  // ipi
  itmcsicodigo.AsString := '99';
  itmitmapuipi.AsInteger := 0;
  itmitmbipi.AsFloat := 0;
  itmitmaliqipi.AsFloat := 0;
  itmitmipi.AsFloat := 0;
  itmceicodigo.AsString := '0';

  // cofins
  itmcsfcodigo.AsString := '49';
  itmitmcofins.AsFloat := 0;
  itmitmaliqcofinsvalor.AsFloat := 0;
  itmitmquantcofins.AsFloat := 0;
  itmitmaliqcofins.AsFloat := 0;
  itmitmbcofins.AsFloat := 0;

  // pis
  itmcspcodigo.AsString := '49';
  itmitmpis.AsFloat := 0;
  itmitmaliqpisvalor.AsFloat := 0;
  itmitmquantpis.AsFloat := 0;
  itmitmaliqpis.AsFloat := 0;
  itmitmbpis.AsFloat := 0;
  itmpcccodigo.AsString := '3.01.01.03.03.00.00';

  consulta.Close;
  consulta.SQL.Text := 'SELECT toecodigo, toecfopsaida FROM toe WHERE ';
  consulta.SQL.Add('toecfopsaida=' + QuotedStr(Copy(icucfocfop.AsString, 1, 1) + '.' + Copy(icucfocfop.AsString, 2, 3)));
  consulta.Open;

  itmtoecodigo.AsInteger := consulta.Fields[0].AsInteger;
  itmcfocfop.AsString := consulta.Fields[1].AsString;
  itmcfocfopdestinacao.AsString := consulta.Fields[1].AsString;

  cfg.Close;
  cfg.Connection := Self.zcone;
  cfg.Open;

  itmcstcodigo.AsString := cfgcfgcstcuf.AsString;

end;

procedure Tfimpcuf.processacupons;
var
  vcampcup, vcampite: Integer;
  vPercentual, vTotalDesconto, vDiferencaDesc, vTeste1, vTeste2: Double;
  vTesteSQL: String;
  vStrDesconto: String;
  vCpfCnpj: String;
begin

  registro.Open;
  mes.Open;
  mostracupons.Position := 0;
  mostracupons.Max := registro.RecordCount;
  while not registro.Eof do
  begin
    vTotalDesconto := 0;
    vPercentual := 0;
    vTotalDesconto := 0;
    vDiferencaDesc := 0;
    vTeste1 := 0;
    vTeste2 := 0;

    mostracupons.Position := mostracupons.Position + 1;
    application.ProcessMessages;

    if mes.Locate('mescoocupom', registrocufcco.AsInteger, []) = false then
    begin

      icu.Close;
      icu.Params[0].AsInteger := Self.registrocufchave.AsInteger;
      icu.Open;

      itm.Close;
      itm.Params[0].AsInteger := Self.mesmeschave.AsInteger;
      itm.Open;

      mes.Append;
      mestdfcodigo.AsString := tdfCupomFiscalEmitidoPorECF;
      mesmesemissao.AsString := registrocufdata.AsString;
      mesmesregistro.AsString := registrocufdata.AsString;
      mestfpcodigo.AsInteger := 1;
      mesrefcodigo.AsInteger := 1;
      mesclbcodigo.AsInteger := 1;
      mestrmcodigo.AsInteger := 1;
      mestrfcodigo.AsInteger := 0;
      mestemcodigo.AsInteger := 3;
      mesedritem.AsInteger := 1;

      for vcampcup := 2 to 9 do
      begin
        mes.Fields[vcampcup].AsString := registro.Fields[vcampcup].AsString;
      end;

      vCpfCnpj := registrocufdoc1.AsString;

      ACBrValidador1.TipoDocto := docCNPJ;
      ACBrValidador1.Documento := vCpfCnpj;
      if not ACBrValidador1.Validar then
      begin
        ACBrValidador1.TipoDocto := docCPF;
        ACBrValidador1.Documento := Copy(vCpfCnpj, 4, 11);
        ACBrValidador1.Validar;
      end;

      vCpfCnpj := ACBrValidador1.Formatar;

      consulta.Close;
      consulta.SQL.Text := 'SELECT e.etdcodigo FROM etd e WHERE e.etddoc1 = ''' + vCpfCnpj + '''';
      consulta.Open;

      if consulta.Fields[0].AsInteger > 0 then
        mesetdcodigo.AsInteger := consulta.Fields[0].AsInteger;

      mesmesvalor.AsFloat := Self.registrocuftotal.AsFloat + mesmesdesconto.AsFloat;
      mesmestotal.AsFloat := Self.registrocuftotal.AsFloat;
      mes.Post;

      mostraitens.Max := icu.RecordCount;
      mostraitens.Position := 0;

      icu.First;
      while not icu.Eof do
      begin
        mostraitens.Position := mostraitens.Position + 1;
        application.ProcessMessages;

        itm.Append;

        for vcampite := 1 to 8 do
        begin
          itm.Fields[vcampite].AsString := icu.Fields[vcampite].AsString;
        end;

        itmitmvalor.AsFloat := itmitmvalor.AsFloat / itmitmquantidade.AsFloat;

        if mesmestotal.AsFloat > 0 then
          vPercentual := icuicuvalor.AsFloat / mesmestotal.AsFloat;

        itmitmdesconto.AsFloat := mesmesdesconto.AsFloat * vPercentual;
        itmitmvalor.AsFloat := itmitmvalor.AsFloat + (itmitmdesconto.AsFloat / itmitmquantidade.AsFloat);
        itmitmtotal.AsFloat := itmitmvalor.AsFloat * itmitmquantidade.AsFloat;

        vTotalDesconto := vTotalDesconto + itmitmdesconto.AsFloat;

        itmmeschave.AsInteger := Self.mesmeschave.AsInteger;
        itmitmitem.AsInteger := Self.itm.RecordCount + 1;

        consulta.Close;
        consulta.SQL.Text := 'SELECT puncodigo, punmultiplicador, unicodigobase FROM pun WHERE ';
        consulta.SQL.Add('procodigo=' + icuprocodigo.AsString + ' AND ');
        consulta.SQL.Add('unicodigo=' + icuunicodigo.AsString);
        consulta.Open;

        itmpuncodigo.AsInteger := consulta.Fields[0].AsInteger;
        itmitmcontendo.AsFloat := consulta.Fields[1].AsFloat;
        itmunicodigobase.AsInteger := consulta.Fields[2].AsInteger;

        itm.Post;

        icu.Next;
      end;

      vTeste1 := mesmesdesconto.AsFloat;
      vTeste2 := TBRound(vTotalDesconto, 2);
      vDiferencaDesc := vTeste1 - vTeste2;

      if vDiferencaDesc <> 0 then
      begin
        try
          vStrDesconto := FloatToStr(TBRound(vTotalDesconto, 2));
          zPCalcDesc.SQL.Text := 'SET @total=(SELECT SUM(itmtotal) FROM itm WHERE meschave=' + mesmeschave.AsString + '); ';
          zPCalcDesc.SQL.Add('SET @chave=(SELECT itmchave FROM itm WHERE meschave=' + mesmeschave.AsString);
          zPCalcDesc.SQL.Add(' ORDER BY (itmtotal/@total) desc limit 1); ');
          zPCalcDesc.SQL.Add('UPDATE itm SET itmdesconto=(itmdesconto+' + BuscaTroca(vStrDesconto, ',', '.') + ') WHERE itmchave=@chave;');
          zPCalcDesc.Execute;
        Except
          ShowMessage('Erro CF - COO: ' + registrocufchave.AsString);
        end;
      end;

      mes.Edit;
      mestoecodigo.AsInteger := itmtoecodigo.AsInteger;
      mes.Post;

    end;

    registro.Next;
  end;
  ShowMessage('Verificação realizada com sucesso!');
end;

end.
