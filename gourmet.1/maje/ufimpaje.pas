unit ufimpaje;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ExtDlgs, uPegaBase, Vcl.Grids, Vcl.DBGrids;

type
  Tfimpaje = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    ofSelecionaArquivo: TOpenTextFileDialog;
    Label1: TLabel;
    edNomeArquivo: TEdit;
    registro: TUniQuery;
    registroitmchave: TIntegerField;
    registromeschave: TIntegerField;
    registroitmitem: TIntegerField;
    registrotoecodigo: TIntegerField;
    registroprocodigo: TIntegerField;
    registrocfocfop: TStringField;
    registrounicodigo: TIntegerField;
    registroitmquantidade: TFloatField;
    registroitmvalor: TFloatField;
    registroitmdesconto: TFloatField;
    registroitmtotal: TFloatField;
    registroitmfrete: TFloatField;
    registroitmseguro: TFloatField;
    registroitmoutras: TFloatField;
    registroitmbicm: TFloatField;
    registroicmcodigo: TStringField;
    registroitmicm: TFloatField;
    registroitmbicms: TFloatField;
    registroitmaliqicms: TFloatField;
    registroitmicms: TFloatField;
    registroitmaliqipi: TFloatField;
    registroitmipi: TFloatField;
    registrocstcodigo: TStringField;
    registroitmdesccomple: TStringField;
    registroitmmovifisico: TStringField;
    registroitmaliqicm: TStringField;
    registroitmapuipi: TStringField;
    registrocsicodigo: TStringField;
    registroceicodigo: TStringField;
    registroitmbipi: TFloatField;
    registropuncodigo: TIntegerField;
    registrocspcodigo: TStringField;
    registroitmpis: TFloatField;
    registroitmbpis: TFloatField;
    registroitmaliqpis: TFloatField;
    registroitmquantpis: TFloatField;
    registroitmaliqpisvalor: TFloatField;
    registrocsfcodigo: TStringField;
    registroitmbcofins: TFloatField;
    registroitmaliqcofins: TFloatField;
    registroitmquantcofins: TFloatField;
    registroitmaliqcofinsvalor: TFloatField;
    registroitmcofins: TFloatField;
    registropcccodigo: TStringField;
    registrounicodigobase: TIntegerField;
    registrocfocfopdestinacao: TStringField;
    registroitmcontendo: TFloatField;
    registroitmcusto: TFloatField;
    registroitmicmsvalor: TFloatField;
    registroitmquanticontada: TFloatField;
    btLocalizaArquivo: TButton;
    consulta: TUniQuery;
    cfg: TUniQuery;
    cfgufssigla: TStringField;
    cfgetddoc1: TStringField;
    cfgcfgprouso: TIntegerField;
    cfgcfgobs1: TIntegerField;
    cfgcfgobs2: TIntegerField;
    cfgcfgobs3: TIntegerField;
    cfgcfgobs4: TIntegerField;
    cfgcfgetdempresa: TIntegerField;
    cfgcfgnumecertif: TStringField;
    cfgcfgserienfe: TStringField;
    cfgcfgcstterceiros: TStringField;
    cfgcfgcsosn: TStringField;
    ito: TUniQuery;
    itoprocodigo: TIntegerField;
    itounicodigo: TIntegerField;
    itoitoquantidade: TFloatField;
    Dito: TDataSource;
    dbIto: TDBGrid;
    Dregistro: TDataSource;
    dbRegistro: TDBGrid;
    procedure btLocalizaArquivoClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Acesso: TAcesso;
    vChaveMestre: string;
  end;

var
  fimpaje: Tfimpaje;

implementation

{$R *.dfm}

procedure Tfimpaje.bcancelaClick(Sender: TObject);
begin
  modalresult := mrcancel;
end;

procedure Tfimpaje.bconfirmaClick(Sender: TObject);
var
  vlProcodigo: String;
  vlProSaldoDisp: String;
  vlOrcamentos: Tstringlist;
  vlOrcchave: String;
  i: integer;
begin
  vlOrcamentos := Tstringlist.Create;

  if fileexists(edNomeArquivo.Text) then
  begin
    vlOrcamentos.LoadFromFile(edNomeArquivo.Text);

    vlOrcchave := vlOrcamentos.Strings[i];
    ito.Close;
    // ito.Params[0].AsString := vlOrcchave;
    ito.SQL.Text := StringReplace(ito.SQL.Text, '--orcamentos', vlOrcamentos.Text, [rfReplaceAll, rfIgnoreCase]);

    ito.Open;

     registro.Close;
     registro.Params[0].AsString:=vChaveMestre;
     registro.Open;

    while not ito.eof do
    begin
      vlProcodigo := itoprocodigo.asstring;
      if not registro.Locate('procodigo', itoprocodigo.AsInteger, []) then
        registro.Append
      else
        registro.Edit;

      consulta.Close;
      consulta.SQL.Text := 'SELECT pro.unicodigo, pro.prosaldodisp, pun.punmultiplicador, pun.puncodigo ';
      consulta.SQL.Add('FROM pun INNER JOIN pro ON pun.procodigo = pro.procodigo ');
      consulta.SQL.Add('AND pro.unicodigo = pun.unicodigo ');
      consulta.SQL.Add('and pro.procodigo=' + vlProcodigo);
      consulta.Open;

      registrounicodigo.asstring := self.consulta.fields[0].asstring;
      registrounicodigobase.asstring := self.consulta.fields[0].asstring;
      registroitmcontendo.AsFloat := self.consulta.fields[2].AsFloat;
      registropuncodigo.AsInteger := self.consulta.fields[3].AsInteger;
      vlProSaldoDisp := self.consulta.fields[1].asstring;
      consulta.Close;

      if (StrToFloat(vlProSaldoDisp) - itoitoquantidade.AsFloat) < 0 then
      begin
        registroitmquantidade.AsFloat := (StrToFloat(vlProSaldoDisp) - itoitoquantidade.AsFloat) * -1;

        consulta.Close;
        consulta.SQL.Text := 'select toecodigo,toecfopsaida from toe where toecfopsaida=' + chr(39) + '1.000' + chr(39);
        consulta.Open;

        registrotoecodigo.asstring := consulta.fields[0].asstring;
        registrocfocfop.asstring := consulta.fields[1].asstring;
        registrocfocfopdestinacao.asstring := consulta.fields[1].asstring;
      end
      else if (StrToFloat(vlProSaldoDisp) - itoitoquantidade.AsFloat) = 0 then
      begin
        registroitmquantidade.AsFloat := (StrToFloat(vlProSaldoDisp) - itoitoquantidade.AsFloat);

        consulta.Close;
        consulta.SQL.Text := 'select toecodigo,toecfopsaida from toe where toecfopsaida=' + chr(39) + '5.000' + chr(39);
        consulta.Open;

        registrotoecodigo.asstring := consulta.fields[0].asstring;
        registrocfocfop.asstring := consulta.fields[1].asstring;
        registrocfocfopdestinacao.asstring := consulta.fields[1].asstring;
      end

      else
      begin
        registroitmquantidade.AsFloat := (StrToFloat(vlProSaldoDisp) - itoitoquantidade.AsFloat);
        consulta.Close;
        consulta.SQL.Text := 'select toecodigo,toecfopsaida from toe where toecfopsaida=' + chr(39) + '5.000' + chr(39);
        consulta.Open;
        registrotoecodigo.asstring := consulta.fields[0].asstring;
        registrocfocfop.asstring := consulta.fields[1].asstring;
        registrocfocfopdestinacao.asstring := consulta.fields[1].asstring;
      end;
      registroprocodigo.AsString:=vlProcodigo;
      registroitmquanticontada.AsFloat:=itoitoquantidade.AsFloat;
      registromeschave.AsString:=vChaveMestre;
      registro.Post;
      ito.Next;
    end;
    {
      modalresult := mrok;
      end;

      procedure Tfimpaje.btLocalizaArquivoClick(Sender: TObject);
      begin
      if ofSelecionaArquivo.Execute then
      begin
      edNomeArquivo.Text := ofSelecionaArquivo.FileName;
      cfg.Close;
      cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
      cfg.Open;

      end
      else
      edNomeArquivo.Text := ''; }

  end;
end;

procedure Tfimpaje.btLocalizaArquivoClick(Sender: TObject);
begin
  if ofSelecionaArquivo.Execute then
  begin
    edNomeArquivo.Text := ofSelecionaArquivo.FileName;
    cfg.Close;
    cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
    cfg.Open;

  end
  else
    edNomeArquivo.Text := '';

end;

procedure Tfimpaje.registroAfterInsert(DataSet: TDataSet);
begin
  cfg.Close;
  cfg.Open;

  consulta.Close;
  consulta.SQL.Text := 'select mes.toecodigo,toecfopsaida from mes,toe where mes.toecodigo=toe.toecodigo and meschave=' + self.vChaveMestre;
  consulta.Open;

  self.registrotoecodigo.asstring := self.consulta.fields[0].asstring;
  self.registrocfocfop.asstring := self.consulta.fields[1].asstring;

  consulta.Close;
  consulta.SQL.Text := 'select count(itmchave) from itm where meschave=' + self.vChaveMestre;
  consulta.Open;

  self.registroitmitem.AsInteger := self.consulta.fields[0].AsInteger + 1;

  self.registroitmmovifisico.AsInteger := 1;
  self.registroitmbicms.AsFloat := 0;
  self.registroitmicms.AsFloat := 0;
  self.registroitmdesconto.Ascurrency := 0;
  self.registroitmipi.Ascurrency := 0;
  self.registroitmbipi.Ascurrency := 0;
  self.registroitmbicm.AsFloat := 0;
  registroicmcodigo.asstring := '00';
  registroitmbicm.AsFloat := 0;
  registroitmicm.AsFloat := 0;
  registroitmbicms.AsFloat := 0;
  registroitmaliqicms.AsFloat := 0;
  registroitmicms.AsFloat := 0;
  registroitmaliqipi.AsFloat := 0;
  registroitmipi.AsFloat := 0;
  registroitmfrete.AsFloat := 0;
  registroitmseguro.AsFloat := 0;
  registroitmoutras.AsFloat := 0;
  registroitmvalor.AsFloat := 0;
  registroitmdesconto.AsFloat := 0;
  registroitmtotal.AsFloat := 0;

  registrocstcodigo.asstring := cfgcfgcsosn.asstring;

  // ipi

  registroitmapuipi.AsInteger := 1;
  registrocsicodigo.asstring := '99';
  registroceicodigo.asstring := '0';

  // cofins
  registroitmcofins.AsFloat := 0;
  registroitmaliqcofinsvalor.AsFloat := 0;
  registroitmquantcofins.AsFloat := 0;
  registroitmaliqcofins.AsFloat := 0;
  registroitmbcofins.AsFloat := 0;
  registrocsfcodigo.asstring := '99';

  // pis
  registroitmpis.AsFloat := 0;
  registroitmaliqpisvalor.AsFloat := 0;
  registroitmquantpis.AsFloat := 0;
  registroitmaliqpis.AsFloat := 0;
  registroitmbpis.AsFloat := 0;
  registrocspcodigo.asstring := '99';
  registropcccodigo.asstring := '3.01.01.03.03.00.00';

end;

end.
