unit ufcfv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,  Data.DB,
  DBAccess, Uni, DASQLMonitor, UniSQLMonitor, MemDS, Vcl.ComCtrls, UniProvider,
  MySQLUniProvider, ufuncoes, VirtualTable, Vcl.Grids, Vcl.DBGrids,uPegaBase;

type
  Tfcfv = class(TForm)
    btConectar: TButton;
    Memo1: TMemo;
    Button2: TButton;
    Conexao: TUniConnection;
    mostrar: TProgressBar;
    MySQLUniProvider: TMySQLUniProvider;
    bClientes: TButton;
    cfg: TUniQuery;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    clbclbsenha: TStringField;
    cfgetdapelido: TStringField;
    cfgcfgcodigo: TIntegerField;
    cfgetddoc1: TStringField;
    cfgedrcep: TStringField;
    cfgufssigla: TStringField;
    cfgcddnome: TStringField;
    ufs: TUniQuery;
    ufsufscodigo: TStringField;
    ufsufssigla: TStringField;
    ufsufsnome: TStringField;
    cdd: TUniQuery;
    btCidades: TButton;
    btEstados: TButton;
    btConfiguracoes: TButton;
    btColaboradores: TButton;
    cddcddcodigo: TStringField;
    cddufscodigo: TStringField;
    cddcddnome: TStringField;
    tpe: TUniQuery;
    tpetpecodigo: TIntegerField;
    tpetpeidentificacao: TStringField;
    etl: TUniQuery;
    etletlchave: TIntegerField;
    etletdcodigo: TIntegerField;
    etletlnfemodelos: TStringField;
    etletllimitetotal: TFloatField;
    etletltipo: TIntegerField;
    etletldias: TIntegerField;
    etletldescontopadrao: TFloatField;
    ets: TUniQuery;
    etsetscodigo: TIntegerField;
    etstsecodigo: TIntegerField;
    etsetdcodigo: TIntegerField;
    etsetsdata: TDateField;
    etsetshistorico: TStringField;
    etd: TUniQuery;
    btipopessoas: TButton;
    cfgufscodigo: TStringField;
    cfgcddcodigo: TStringField;
    Button1: TButton;
    mostra: TProgressBar;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdetdapelido: TStringField;
    etdtpecodigo: TIntegerField;
    etdetddatacad: TDateField;
    etdetddoc1: TStringField;
    etdedrrua: TStringField;
    etdedrnumero: TStringField;
    etdedrcomple: TStringField;
    etdedrbairro: TStringField;
    etdcddcodigo: TStringField;
    etdedrinscest: TStringField;
    etdedrcep: TStringField;
    etdufscodigo: TStringField;
    etdeteemail: TStringField;
    etdetftelefone: TStringField;
    etdclbcodigo: TIntegerField;
    ncm: TUniQuery;
    ncmpunbarra: TStringField;
    ncmproncm: TStringField;
    ncmpronome: TStringField;
    btncm: TButton;
    ncmpub: TVirtualTable;
    ncmpubpunbarra: TStringField;
    ncmpubproncm: TStringField;
    ncmpubpronome: TStringField;
    ncmloc: TVirtualTable;
    ncmlocpunbarra: TStringField;
    ncmlocproncm: TStringField;
    ncmlocpronome: TStringField;
    Dncmpub: TDataSource;
    DBGrid1: TDBGrid;
    procedure btConectarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure bClientesClick(Sender: TObject);
    procedure btCidadesClick(Sender: TObject);
    procedure btEstadosClick(Sender: TObject);
    procedure btConfiguracoesClick(Sender: TObject);
    procedure btColaboradoresClick(Sender: TObject);
    procedure btipopessoasClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btncmClick(Sender: TObject);
  private
    procedure carregancmloc;
    procedure carregancmpub;
    procedure sincronizartabela(vnometabela: string; vnomecomponente: string);
    { Private declarations }
  public
    { Public declarations }
    idToken: string;
  end;

const
  vpUrlBase = 'https://miziosistemasfirebase-66307.firebaseio.com/';
  vpApiKey = 'AIzaSyAsgljn-Vg9UHi4ZRVWA6KmnpG62c18nIU';
  vpUsuario = 'danielmizio@gmail.com';
  vpPassword = 'Vitor973';
  vpUi = 'e9801943-8a4c-4be9-9b9f-56816e4f6357';

var
  fcfv: Tfcfv;

implementation

uses
  Firebase.Interfaces,
  Firebase.Auth,
  Firebase.Database,
  System.JSON,
  System.Net.HttpClient,
  System.Generics.Collections,
  System.JSON.Types,
  System.JSON.Writers;

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fcfv := Tfcfv.Create(pCargaFrame.AOwner);
  fcfv.ShowModal;
  fcfv.Free;
end;

exports formulario;

procedure Tfcfv.btColaboradoresClick(Sender: TObject);

var
  ADatabase: TFirebaseDatabase;
  AResponse: IFirebaseResponse;
  JSONReq: TJSONObject;
  JSONResp: TJSONValue;
  Writer: TJsonTextWriter;
  StringWriter: TStringWriter;
  i: integer;
  vcnpj: string;
begin

  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.None;

  cfg.close;
  cfg.Params[0].AsString := '1';
  cfg.open;

  vcnpj := sonumeros(cfgetddoc1.AsString);

  // envio de clb
  clb.close;
  clb.open;
  Writer.WriteStartObject;
  Writer.WritePropertyName('clb');
  Writer.WriteStartArray;
  mostrar.Max := clb.RecordCount;
  mostrar.Position := 0;
  while not clb.Eof do
  begin
    Writer.WriteStartObject;

    mostrar.Position := mostrar.Position + 1;
    application.ProcessMessages;

    for i := 0 to clb.FieldCount - 1 do
    begin
      Writer.WritePropertyName(clb.Fields[i].FieldName);
      Writer.WriteValue(clb.Fields[i].AsString);
    end;
    Writer.WriteEndObject;

    clb.Next;
  end;
  Writer.WriteEndArray;
  Writer.WriteEndObject;

  JSONReq := TJSONObject.ParseJSONValue(StringWriter.ToString) as TJSONObject;

  ADatabase := TFirebaseDatabase.Create;
  ADatabase.SetBaseURI(vpUrlBase);
  ADatabase.SetToken('');
  try
    AResponse := ADatabase.Patch([vcnpj + '.json'], JSONReq);
    JSONResp := TJSONObject.ParseJSONValue(AResponse.ContentAsString);
    if (not Assigned(JSONResp)) or (not(JSONResp is TJSONObject)) then
    begin
      if Assigned(JSONResp) then
      begin
        JSONResp.Free;
      end;
      Exit;
    end;
    Memo1.Text := JSONResp.ToString;
  finally
    ADatabase.Free;
  end;

end;

procedure Tfcfv.btConectarClick(Sender: TObject);
var
  Auth: IFirebaseAuth;
  AResponse: IFirebaseResponse;
  JSONResp: TJSONValue;
  Obj: TJSONObject;

begin

  Auth := TFirebaseAuth.Create;
  Auth.SetApiKey(vpApiKey);
  AResponse := Auth.SignInWithEmailAndPassword(vpUsuario, vpPassword);
  JSONResp := TJSONObject.ParseJSONValue(AResponse.ContentAsString);
  if (not Assigned(JSONResp)) or (not(JSONResp is TJSONObject)) then
  begin
    if Assigned(JSONResp) then
    begin
      JSONResp.Free;
    end;
    Exit;
  end;
  Memo1.Lines.Add('Conectado com sucesso');
  Obj := JSONResp as TJSONObject;
  // idToken:= Obj.GetValue('idToken').Value;

end;

procedure Tfcfv.btConfiguracoesClick(Sender: TObject);

var
  ADatabase: TFirebaseDatabase;
  AResponse: IFirebaseResponse;
  JSONReq: TJSONObject;
  JSONResp: TJSONValue;
  Writer: TJsonTextWriter;
  StringWriter: TStringWriter;
  i: integer;
  vcnpj: string;
begin

  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.None;

  cfg.close;
  cfg.Params[0].AsString := '1';
  cfg.open;

  vcnpj := sonumeros(cfgetddoc1.AsString);

  // envio de cfg
  cfg.close;
  cfg.open;
  Writer.WriteStartObject;
  Writer.WritePropertyName('cfg');
  Writer.WriteStartArray;
  mostrar.Max := cfg.RecordCount;
  mostrar.Position := 0;
  while not cfg.Eof do
  begin
    Writer.WriteStartObject;

    mostrar.Position := mostrar.Position + 1;
    application.ProcessMessages;

    for i := 0 to cfg.FieldCount - 1 do
    begin
      Writer.WritePropertyName(cfg.Fields[i].FieldName);
      Writer.WriteValue(cfg.Fields[i].AsString);
    end;
    Writer.WriteEndObject;

    cfg.Next;
  end;
  Writer.WriteEndArray;
  Writer.WriteEndObject;

  JSONReq := TJSONObject.ParseJSONValue(StringWriter.ToString) as TJSONObject;

  ADatabase := TFirebaseDatabase.Create;
  ADatabase.SetBaseURI(vpUrlBase);
  ADatabase.SetToken('');
  try
    AResponse := ADatabase.Patch([vcnpj + '.json'], JSONReq);
    JSONResp := TJSONObject.ParseJSONValue(AResponse.ContentAsString);
    if (not Assigned(JSONResp)) or (not(JSONResp is TJSONObject)) then
    begin
      if Assigned(JSONResp) then
      begin
        JSONResp.Free;
      end;
      Exit;
    end;
    Memo1.Text := JSONResp.ToString;
  finally
    ADatabase.Free;
  end;

end;

procedure Tfcfv.btEstadosClick(Sender: TObject);
var
  ADatabase: TFirebaseDatabase;
  AResponse: IFirebaseResponse;
  JSONReq: TJSONObject;
  JSONResp: TJSONValue;
  Writer: TJsonTextWriter;
  StringWriter: TStringWriter;
  i: integer;
  vcnpj: string;

begin

  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.None;

  cfg.close;
  cfg.Params[0].AsString := '1';
  cfg.open;

  vcnpj := sonumeros(cfgetddoc1.AsString);

  // envio de ufs
  ufs.close;
  ufs.open;
  Writer.WriteStartObject;
  Writer.WritePropertyName('ufs');
  Writer.WriteStartArray;
  mostrar.Max := ufs.RecordCount;
  while not ufs.Eof do
  begin
    Writer.WriteStartObject;

    mostrar.Position := mostrar.Position + 1;
    application.ProcessMessages;

    for i := 0 to ufs.FieldCount - 1 do
    begin
      Writer.WritePropertyName(ufs.Fields[i].FieldName);
      Writer.WriteValue(ufs.Fields[i].AsString);
    end;
    Writer.WriteEndObject;

    ufs.Next;
  end;
  Writer.WriteEndArray;
  Writer.WriteEndObject;

  JSONReq := TJSONObject.ParseJSONValue(StringWriter.ToString) as TJSONObject;

  ADatabase := TFirebaseDatabase.Create;
  ADatabase.SetBaseURI(vpUrlBase);
  ADatabase.SetToken('');
  try
    AResponse := ADatabase.Patch([vcnpj + '.json'], JSONReq);
    JSONResp := TJSONObject.ParseJSONValue(AResponse.ContentAsString);
    if (not Assigned(JSONResp)) or (not(JSONResp is TJSONObject)) then
    begin
      if Assigned(JSONResp) then
      begin
        JSONResp.Free;
      end;
      Exit;
    end;
    Memo1.Text := JSONResp.ToString;
  finally
    ADatabase.Free;
  end;

end;

procedure Tfcfv.btipopessoasClick(Sender: TObject);
var
  ADatabase: TFirebaseDatabase;
  AResponse: IFirebaseResponse;
  JSONReq: TJSONObject;
  JSONResp: TJSONValue;
  Writer: TJsonTextWriter;
  StringWriter: TStringWriter;
  i: integer;

begin

  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.None;

  // envio de tpe
  tpe.close;
  tpe.open;
  Writer.WriteStartObject;
  Writer.WritePropertyName('tpe');
  Writer.WriteStartArray;
  mostrar.Max := tpe.RecordCount;
  while not tpe.Eof do
  begin
    Writer.WriteStartObject;

    mostrar.Position := mostrar.Position + 1;
    application.ProcessMessages;

    for i := 0 to tpe.FieldCount - 1 do
    begin
      Writer.WritePropertyName(tpe.Fields[i].FieldName);
      Writer.WriteValue(tpe.Fields[i].AsString);
    end;
    Writer.WriteEndObject;

    tpe.Next;
  end;
  Writer.WriteEndArray;
  Writer.WriteEndObject;

  JSONReq := TJSONObject.ParseJSONValue(StringWriter.ToString) as TJSONObject;

  ADatabase := TFirebaseDatabase.Create;
  ADatabase.SetBaseURI(vpUrlBase);
  ADatabase.SetToken('');
  try
    AResponse := ADatabase.Patch(['tpe.json'], JSONReq);
    JSONResp := TJSONObject.ParseJSONValue(AResponse.ContentAsString);
    if (not Assigned(JSONResp)) or (not(JSONResp is TJSONObject)) then
    begin
      if Assigned(JSONResp) then
      begin
        JSONResp.Free;
      end;
      Exit;
    end;
    Memo1.Text := JSONResp.ToString;
  finally
    ADatabase.Free;
  end;

end;

procedure Tfcfv.btncmClick(Sender: TObject);
var
  ADatabase: TFirebaseDatabase;
  AResponse: IFirebaseResponse;
  JSONReq: TJSONObject;
  JSONResp: TJSONValue;
  Writer: TJsonTextWriter;
  StringWriter: TStringWriter;
  i: integer;

begin

  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.None;

  // envio de ncmloc
  carregancmpub;
  carregancmloc;

  if ncmloc.IsEmpty then
    Exit;

  Writer.WriteStartObject;
  Writer.WritePropertyName('ncm');
  Writer.WriteStartArray;

  mostrar.Max := ncmloc.RecordCount;
  ncmloc.First;

  while not ncmloc.Eof do
  begin
    Writer.WriteStartObject;
    Writer.WritePropertyName(QuotedStr(ncmlocpunbarra.AsString));
    Writer.WriteStartArray;

    mostrar.Position := mostrar.Position + 1;
    application.ProcessMessages;

    Writer.WriteStartObject;

    for i := 0 to ncmloc.FieldCount - 1 do
    begin

      Writer.WritePropertyName(ncmloc.Fields[i].FieldName);
      Writer.WriteValue(ncmloc.Fields[i].AsString);
    end;
    Writer.WriteEndObject;

    Writer.WriteEndArray;
    Writer.WriteEndObject;

    ncmloc.Next;
  end;
  Writer.WriteEndArray;
  Writer.WriteEndObject;
  JSONReq := TJSONObject.ParseJSONValue(StringWriter.ToString) as TJSONObject;

  ADatabase := TFirebaseDatabase.Create;
  ADatabase.SetBaseURI(vpUrlBase);
  ADatabase.SetToken('');
  try
    AResponse := ADatabase.Patch(['ncm.json'], JSONReq);
    JSONResp := TJSONObject.ParseJSONValue(AResponse.ContentAsString);
    if (not Assigned(JSONResp)) or (not(JSONResp is TJSONObject)) then
    begin
      if Assigned(JSONResp) then
      begin
        JSONResp.Free;
      end;
      Exit;
    end;
    Memo1.Text := JSONResp.ToString;
  finally
    ADatabase.Free;
  end;

end;

procedure Tfcfv.carregancmpub;
begin
  ncmpub.close;
  ncmpub.open;
  // sincronizartabela('ncm', 'ncmpub');
end;

procedure Tfcfv.sincronizartabela(vnometabela: string; vnomecomponente: string);
var
  JSonObject: TJSONObject;
  JSonValue: TJSONValue;
  st: string;

  ADatabase: TFirebaseDatabase;

  // JSONReq: TJSONObject;
  JSONResp: TJSONValue;
  Writer: TJsonTextWriter;
  StringWriter: TStringWriter;
  i, q, c: integer;
  QueryParams: TDictionary<string, string>;
  vquery: TVirtualTable;

  vcampo: string;
  vconteudo: string;
  AResponse: IFirebaseResponse;
begin

  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.None;

  ADatabase := TFirebaseDatabase.Create;
  ADatabase.SetBaseURI(vpUrlBase);
  ADatabase.SetToken('');
  try
    QueryParams := TDictionary<string, string>.Create;

    QueryParams.Add('orderBy', '"$key"');
    // QueryParams.Add('limitToLast', '10');

    AResponse := ADatabase.Get([vnometabela + '.json'], QueryParams);

    JSONResp := TJSONObject.ParseJSONValue(AResponse.ContentAsString);
    if (not Assigned(JSONResp)) or (not(JSONResp is TJSONObject)) then
    begin
      if Assigned(JSONResp) then
      begin
        JSONResp.Free;
      end;
      Exit;
    end;

    st := AResponse.ContentAsString;
    JSonObject := TJSONObject.Create;

    JSonValue := JSonObject.ParseJSONValue(st);

    JSonValue := (JSonValue as TJSONObject).Get(vnometabela).JSonValue;

    if (JSonValue is TJSONArray) then
    begin
      q := (JSonValue as TJSONArray).Count - 1;
      mostra.Max := q;
      mostra.Position := 0;
      if self.FindComponent(vnomecomponente) <> nil then
      begin
        vquery := self.FindComponent(vnomecomponente) as TVirtualTable;
        vquery.close;
        vquery.open;

        for i := 0 to q do
        begin
          mostra.Position := mostra.Position + 1;
          application.ProcessMessages;
          vcampo := vquery.Fields[0].FieldName;
          vconteudo := ((JSonValue as TJSONArray).Items[i] as TJSONObject).Get(vcampo).JSonValue.value;

          if not vquery.Locate(vcampo, vconteudo, [locaseinsensitive]) then
            vquery.Append
          else
            vquery.Edit;

          for c := 0 to vquery.FieldCount - 1 do
          begin
            vquery.Fields[c].AsString := ((JSonValue as TJSONArray).Items[i] as TJSONObject).Get(vquery.Fields[c].FieldName).JSonValue.value;
          end;
          vquery.Post;

        end;

      end;
    end;

    JSonObject.Free;

  finally
    ADatabase.Free;
  end;

end;

procedure Tfcfv.carregancmloc;
begin
  ncmloc.close;
  ncmloc.open;

  ncm.close;
  ncm.open;

  while not ncm.Eof do
  begin
    if not ncmpub.Locate('proncm', ncmproncm.AsString, []) then
    begin

      ncmloc.Append;
      ncmlocpunbarra.AsString := ncmpunbarra.AsString;
      ncmlocproncm.AsString := ncmproncm.AsString;
      ncmlocpronome.AsString := ncmpronome.AsString;
      ncmloc.Post;

    end;
    ncm.Next;
  end;

end;

procedure Tfcfv.btCidadesClick(Sender: TObject);

var
  ADatabase: TFirebaseDatabase;
  AResponse: IFirebaseResponse;
  JSONReq: TJSONObject;
  JSONResp: TJSONValue;
  Writer: TJsonTextWriter;
  StringWriter: TStringWriter;
  i: integer;
  vcnpj: string;
begin

  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.None;

  cfg.close;
  cfg.Params[0].AsString := '1';
  cfg.open;

  vcnpj := sonumeros(cfgetddoc1.AsString);
  // envio de cdd
  cdd.close;
  cdd.open;
  Writer.WriteStartObject;
  Writer.WritePropertyName('cdd');
  Writer.WriteStartArray;
  mostrar.Max := cdd.RecordCount;
  while not cdd.Eof do
  begin
    Writer.WriteStartObject;

    mostrar.Position := mostrar.Position + 1;
    application.ProcessMessages;

    for i := 0 to cdd.FieldCount - 1 do
    begin
      Writer.WritePropertyName(cdd.Fields[i].FieldName);
      Writer.WriteValue(cdd.Fields[i].AsString);
    end;
    Writer.WriteEndObject;

    cdd.Next;
  end;
  Writer.WriteEndArray;
  Writer.WriteEndObject;

  JSONReq := TJSONObject.ParseJSONValue(StringWriter.ToString) as TJSONObject;

  ADatabase := TFirebaseDatabase.Create;
  ADatabase.SetBaseURI(vpUrlBase);
  ADatabase.SetToken('');
  try
    AResponse := ADatabase.Patch([vcnpj + '.json'], JSONReq);
    JSONResp := TJSONObject.ParseJSONValue(AResponse.ContentAsString);
    if (not Assigned(JSONResp)) or (not(JSONResp is TJSONObject)) then
    begin
      if Assigned(JSONResp) then
      begin
        JSONResp.Free;
      end;
      Exit;
    end;
    Memo1.Text := JSONResp.ToString;
  finally
    ADatabase.Free;

  end;

end;

procedure Tfcfv.Button1Click(Sender: TObject);

const
  // curl -u email@dominio.com.br:[token/senha] https://{seu-dominio}.acelerato.com/api/usuarios

  vlUrlBase = 'https://mizio.acelerato.com/api/usuarios';
  // vlApiKey = 'AIzaSyBTxHmmD1j04Q03uCFgROCKsosx5m8Y7FI';
  vlUsuario = 'daniel@miziosistemas.com.br';
  vlPassword = 'mizio973';

var
  JSonObject: TJSONObject;
  JSonValue: TJSONValue;
  st: string;

  ADatabase: TFirebaseDatabase;

  // JSONReq: TJSONObject;
  JSONResp: TJSONValue;
  Writer: TJsonTextWriter;
  StringWriter: TStringWriter;
  i, q, c: integer;
  QueryParams: TDictionary<string, string>;
  vquery: TUniQuery;

  vcampo: string;
  vconteudo: string;
  AResponse: IFirebaseResponse;

begin

  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.None;

  ADatabase := TFirebaseDatabase.Create;
  ADatabase.SetBaseURI(vlUrlBase);
  ADatabase.SetToken('');
  try
    QueryParams := TDictionary<string, string>.Create;

    // QueryParams.add('orderBy', '"$key"');
    // QueryParams.Add('limitToLast', '10');

    AResponse := ADatabase.Get(['basico.json'], QueryParams);

    JSONResp := TJSONObject.ParseJSONValue(AResponse.ContentAsString);
    if (not Assigned(JSONResp)) or (not(JSONResp is TJSONObject)) then
    begin
      if Assigned(JSONResp) then
      begin
        JSONResp.Free;
      end;
      Exit;
    end;

    st := AResponse.ContentAsString;
    JSonObject := TJSONObject.Create;

    JSonValue := JSonObject.ParseJSONValue(st);

    { JSonValue := (JSonValue as TJSonObject).Get(vnometabela).JSonValue;

      if (JSonValue is TJSONArray) then
      begin
      q := (JSonValue as TJSONArray).Count - 1;
      mostra.Max := q;
      mostra.Value := 0;
      if self.FindComponent(vnometabela) <> nil then
      begin
      vquery := self.FindComponent(vnometabela) as TUniQuery;
      vquery.close;
      vquery.Open;

      for i := 0 to q do
      begin
      mostra.Value := mostra.Value + 1;
      Application.ProcessMessages;
      vcampo := vquery.Fields[0].FieldName;
      vconteudo := ((JSonValue as TJSONArray).Items[i] as TJSonObject).Get(vcampo).JSonValue.Value;

      if not vquery.Locate(vcampo, vconteudo, [locaseinsensitive]) then
      vquery.Append
      else
      vquery.Edit;

      for c := 0 to vquery.FieldCount - 1 do
      begin
      vquery.Fields[c].asstring := ((JSonValue as TJSONArray).Items[i] as TJSonObject).Get(vquery.Fields[c].FieldName).JSonValue.Value;
      end;
      vquery.Post;

      end;

      end;
      end; }

    JSonObject.Free;

  finally
    ADatabase.Free;
  end;

end;

procedure Tfcfv.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfcfv.bClientesClick(Sender: TObject);
var
  ADatabase: TFirebaseDatabase;
  AResponse: IFirebaseResponse;
  JSONReq: TJSONObject;
  JSONResp: TJSONValue;
  Writer: TJsonTextWriter;
  StringWriter: TStringWriter;
  i: integer;
  vcnpj: string;
begin

  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.None;

  cfg.close;
  cfg.Params[0].AsString := '1';
  cfg.open;

  vcnpj := sonumeros(cfgetddoc1.AsString);

  // envio de etdentes
  etd.close;
  etd.open;
  Writer.WriteStartObject;
  Writer.WritePropertyName('etd');
  Writer.WriteStartArray;
  mostrar.Max := etd.RecordCount;
  mostrar.Position := 0;
  while not etd.Eof do
  begin
    Writer.WriteStartObject;

    mostrar.Position := mostrar.Position + 1;
    application.ProcessMessages;

    for i := 0 to etd.FieldCount - 1 do
    begin
      Writer.WritePropertyName(etd.Fields[i].FieldName);
      Writer.WriteValue(etd.Fields[i].AsString);
    end;
    Writer.WriteEndObject;

    etd.Next;
  end;
  Writer.WriteEndArray;
  Writer.WriteEndObject;

  JSONReq := TJSONObject.ParseJSONValue(StringWriter.ToString) as TJSONObject;

  ADatabase := TFirebaseDatabase.Create;
  ADatabase.SetBaseURI(vpUrlBase);
  ADatabase.SetToken('');
  try
    AResponse := ADatabase.Patch([vcnpj + '.json'], JSONReq);
    JSONResp := TJSONObject.ParseJSONValue(AResponse.ContentAsString);
    if (not Assigned(JSONResp)) or (not(JSONResp is TJSONObject)) then
    begin
      if Assigned(JSONResp) then
      begin
        JSONResp.Free;
      end;
      Exit;
    end;
    // Memo1.Text := JSONResp.ToString;
  finally
    ADatabase.Free;
    StringWriter.Free;
  end;

  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.None;

  cfg.close;
  cfg.Params[0].AsString := '1';
  cfg.open;

  vcnpj := sonumeros(cfgetddoc1.AsString);

  // envio de etlentes
  etl.close;
  etl.open;
  Writer.WriteStartObject;
  Writer.WritePropertyName('etl');
  Writer.WriteStartArray;
  mostrar.Max := etl.RecordCount;
  mostrar.Position := 0;
  while not etl.Eof do
  begin
    Writer.WriteStartObject;

    mostrar.Position := mostrar.Position + 1;
    application.ProcessMessages;

    for i := 0 to etl.FieldCount - 1 do
    begin
      Writer.WritePropertyName(etl.Fields[i].FieldName);
      Writer.WriteValue(etl.Fields[i].AsString);
    end;
    Writer.WriteEndObject;

    etl.Next;
  end;
  Writer.WriteEndArray;
  Writer.WriteEndObject;

  JSONReq := TJSONObject.ParseJSONValue(StringWriter.ToString) as TJSONObject;

  ADatabase := TFirebaseDatabase.Create;
  ADatabase.SetBaseURI(vpUrlBase);
  ADatabase.SetToken('');
  try
    AResponse := ADatabase.Patch([vcnpj + '.json'], JSONReq);
    JSONResp := TJSONObject.ParseJSONValue(AResponse.ContentAsString);
    if (not Assigned(JSONResp)) or (not(JSONResp is TJSONObject)) then
    begin
      if Assigned(JSONResp) then
      begin
        JSONResp.Free;
      end;
      Exit;
    end;
    // Memo1.Text := JSONResp.ToString;
  finally
    ADatabase.Free;
    StringWriter.Free;
  end;

  StringWriter := TStringWriter.Create();
  Writer := TJsonTextWriter.Create(StringWriter);
  Writer.Formatting := TJsonFormatting.None;

  cfg.close;
  cfg.Params[0].AsString := '1';
  cfg.open;

  vcnpj := sonumeros(cfgetddoc1.AsString);

  // envio de etsentes
  ets.close;
  ets.open;
  Writer.WriteStartObject;
  Writer.WritePropertyName('ets');
  Writer.WriteStartArray;
  mostrar.Max := ets.RecordCount;
  mostrar.Position := 0;
  while not ets.Eof do
  begin
    Writer.WriteStartObject;

    mostrar.Position := mostrar.Position + 1;
    application.ProcessMessages;

    for i := 0 to ets.FieldCount - 1 do
    begin
      Writer.WritePropertyName(ets.Fields[i].FieldName);
      Writer.WriteValue(ets.Fields[i].AsString);
    end;
    Writer.WriteEndObject;

    ets.Next;
  end;
  Writer.WriteEndArray;
  Writer.WriteEndObject;

  JSONReq := TJSONObject.ParseJSONValue(StringWriter.ToString) as TJSONObject;

  ADatabase := TFirebaseDatabase.Create;
  ADatabase.SetBaseURI(vpUrlBase);
  ADatabase.SetToken('');
  try
    AResponse := ADatabase.Patch([vcnpj + '.json'], JSONReq);
    JSONResp := TJSONObject.ParseJSONValue(AResponse.ContentAsString);
    if (not Assigned(JSONResp)) or (not(JSONResp is TJSONObject)) then
    begin
      if Assigned(JSONResp) then
      begin
        JSONResp.Free;
      end;
      Exit;
    end;
    // Memo1.Text := JSONResp.ToString;
  finally
    ADatabase.Free;
    StringWriter.Free;
  end;

end;

end.
