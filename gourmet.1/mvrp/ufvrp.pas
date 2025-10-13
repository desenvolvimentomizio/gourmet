unit ufvrp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ufuncoes, uBuscaProduto, Vcl.ImgList,
  PngImageList;

type
  Tfvrp = class(Tfrmbase)
    registrovrpcodigo: TIntegerField;
    registroprocodigo: TIntegerField;
    registrovrpreferencia: TStringField;
    registrovrpbarra: TStringField;
    registrovrpbarrasistema: TIntegerField;
    sen: TUniQuery;
    registrosenbarrasistema: TStringField;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    Label1: TLabel;
    vrpcodigo: TDBEdit;
    Label2: TLabel;
    vrpreferencia: TDBEdit;
    vrpbarra: TDBEdit;
    Label4: TLabel;
    vrpbarrasistema: TDBEdit;
    Bvregistro: TBevel;
    via: TUniQuery;
    DSvia: TUniDataSource;
    iat: TUniQuery;
    GBAtributos: TGroupBox;
    iatiatcodigo: TIntegerField;
    iatiatidentificacao: TStringField;
    gra: TUniQuery;
    graatrcodigo: TIntegerField;
    viaviacodigo: TIntegerField;
    viavrpcodigo: TIntegerField;
    viaiatcodigo: TIntegerField;
    viaiatidentificacao: TStringField;
    graatridentificacao: TStringField;
    viavrp: TUniQuery;
    viavrpviacodigo: TIntegerField;
    viavrpatrcodigo: TIntegerField;
    qDuplVrp: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure vrpbarrasistemaExit(Sender: TObject);
    procedure vrpbarraExit(Sender: TObject);
    procedure vrpbarraKeyPress(Sender: TObject; var Key: Char);
    procedure bconfirmaClick(Sender: TObject);
  private
    FCodigoBarra: String;
    procedure OnEnterAtributos(Sender: TObject);
    procedure BeforePostAtributos(DataSet: TDataSet);
    procedure SetCodigoBarra(const Value: String);
    procedure AjustaBarra;
    function ValidaBarra(vBarra: String; var vBarraAjustada: String): Boolean;
    function VariacaoExiste: Boolean;
    { Private declarations }
  published
    property CodigoBarra: String read FCodigoBarra write SetCodigoBarra;

  public
    { Public declarations }
  end;

var
  fvrp: Tfvrp;

  // Início ID do Módulo fravrp
const
  vPlIdMd = '01.04.05.004-02';

  // Fim ID do Módulo fravrp

implementation

{$R *.dfm}

procedure Tfvrp.FormShow(Sender: TObject);
var
  J: Integer;
  vlUniQuery: TUniQuery;
  vlDataSource: TUniDataSource;
  vlField: TField;
  vlLabel: TLabel;
  vlDBEdit: TDBEdit;

  vlJaUtilizado: Boolean;
begin
  IdModulo := vPlIdMd;
  inherited;

  vlJaUtilizado := False;

  if Situacao = 'Alterando' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT vrp.vrpcodigo FROM vrp ';
    consulta.SQL.Add('WHERE vrp.vrpcodigo IN ( ');
    consulta.SQL.Add('(SELECT eti.vrpcodigo FROM eti WHERE eti.vrpcodigo = vrp.vrpcodigo LIMIT 1), ');
    consulta.SQL.Add('(SELECT ito.vrpcodigo FROM ito WHERE ito.vrpcodigo = vrp.vrpcodigo LIMIT 1), ');
    consulta.SQL.Add('(SELECT imv.vrpcodigo FROM imv WHERE imv.vrpcodigo = vrp.vrpcodigo LIMIT 1)) ');
    consulta.SQL.Add('AND vrp.vrpcodigo = ' + registrovrpcodigo.AsString);
    consulta.Open;

    if not consulta.IsEmpty then
      vlJaUtilizado := True;
  end;

  viavrp.Params[0].AsInteger := registrovrpcodigo.AsInteger;
  viavrp.Open;

  (* Rotinas de criação dos campos referente Atributos dos itens de acordo com a Grade do produto *)
  gra.Close;
  gra.Params[0].AsString := vChaveMestre;
  gra.Open;

  gra.Last;
  while not gra.Bof do
  begin
    vlUniQuery := TUniQuery.Create(Self);
    vlUniQuery.SQL.Text := via.SQL.Text;
    vlUniQuery.SQLUpdate.Text := via.SQLUpdate.Text;
    vlUniQuery.SQLInsert.Text := via.SQLInsert.Text;
    vlUniQuery.Connection := zcone;
    vlUniQuery.Name := 'via' + IntToStr(gra.RecNo);

    (* Cria os Fields *)
    for J := 0 to via.FieldCount - 1 do
    begin
      if via.Fields[J].DataType = ftInteger then
        vlField := TIntegerField.Create(vlUniQuery)
      else
        vlField := TStringField.Create(vlUniQuery);

      vlField.FieldName := via.Fields[J].FieldName;
      vlField.DisplayLabel := via.Fields[J].DisplayLabel;
      vlField.Size := via.Fields[J].Size;
      vlField.Required := via.Fields[J].Required;

      if via.Fields[J].FieldKind = fkLookup then
      begin
        vlField.FieldKind := fkLookup;
        vlField.KeyFields := 'iatcodigo';
        vlField.LookupDataSet := iat;
        vlField.LookupKeyFields := 'iatcodigo';
        vlField.LookupResultField := 'iatidentificacao';
      end;

      vlField.DataSet := vlUniQuery;
    end;

    vlUniQuery.MasterSource := DSRegistro;
    vlUniQuery.MasterFields := 'vrpcodigo';
    vlUniQuery.KeyFields := 'vrpcodigo';
    vlUniQuery.DetailFields := 'vrpcodigo';
    vlUniQuery.BeforePost := BeforePostAtributos;

    vlDataSource := TUniDataSource.Create(Self);
    vlDataSource.Name := 'DS' + vlUniQuery.Name;
    vlDataSource.DataSet := vlUniQuery;

    vlLabel := TLabel.Create(Self);
    vlLabel.Parent := GBAtributos;
    vlLabel.Caption := graatridentificacao.AsString;
    vlLabel.Left := 8;
    vlLabel.Top := 24 + ((gra.RecNo - 1) * 27);

    vlDBEdit := TDBEdit.Create(Self);
    vlDBEdit.Parent := GBAtributos;
    vlDBEdit.Name := 'iatcodigo' + graatrcodigo.AsString;
    vlDBEdit.DataSource := vlDataSource;
    vlDBEdit.DataField := 'iatcodigo';
    vlDBEdit.Left := 134;
    vlDBEdit.Top := 21 + ((gra.RecNo - 1) * 27);
    vlDBEdit.Width := 30;
    vlDBEdit.OnExit := ValidaSaida;
    vlDBEdit.OnEnter := OnEnterAtributos;

    if vlJaUtilizado then
      vlDBEdit.Enabled := False;

    vlDBEdit.TabOrder := 0;

    if gra.RecNo > 1 then
      GBAtributos.Height := GBAtributos.Height + 27;

    vlUniQuery.Close;
    if not viavrp.IsEmpty then
      if viavrp.Locate('atrcodigo', graatrcodigo.AsInteger, []) then
        vlUniQuery.Params[0].AsInteger := viavrpviacodigo.AsInteger;
    vlUniQuery.Open;

    if (psituacao.Caption = 'Incluindo') then
      vlUniQuery.Append;

    gra.Prior;
  end;

  ajustacampos;

  CodigoBarra := registrovrpbarra.AsString;

  AjustaBarra;
end;

procedure Tfvrp.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrovrpbarrasistema.AsInteger := 1;
end;

procedure Tfvrp.SetCodigoBarra(const Value: String);
begin
  FCodigoBarra := Value;
end;

function Tfvrp.ValidaBarra(vBarra: String; var vBarraAjustada: String): Boolean;
var
  vResultado: string;
  vlUniCodigo: Integer;
begin
  Result := False;

  consulta.Close;
  consulta.SQL.Text := 'SELECT pro.unicodigo FROM pro WHERE pro.procodigo = ' + registroprocodigo.AsString;
  consulta.Open;

  vlUniCodigo := consulta.Fields[0].AsInteger;
  consulta.Close;

  vResultado := ValidaProdutoBarra(Application, zcone, vBarra, registroprocodigo.AsInteger, vlUniCodigo, 0, registrovrpbarrasistema.AsInteger);

  if Copy(vResultado, 1, 7) = 'ATENÇÃO' then
  begin
    Application.MessageBox(PChar(vResultado), 'Atenção', MB_ICONWARNING + MB_OK);
    // Trata o foco do próximo campo quando usuário utiliza o mouse pra sair.
    PostMessage(ActiveControl.Handle, WM_LBUTTONUP, 0, 0);
    Exit;
  end;

  if CodigoInterno(registroprocodigo.AsInteger, vBarra) then
  begin
    Application.MessageBox(PChar('Esse código de barra está no formato de produtos e não de variação!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    // Trata o foco do próximo campo quando usuário utiliza o mouse pra sair.
    PostMessage(ActiveControl.Handle, WM_LBUTTONUP, 0, 0);
    Exit;
  end;

  consulta.Close;
  consulta.SQL.Text := 'SELECT CONCAT(vv.vrpcodigo, '' - '', vv.pronome) FROM v_vrp vv ';
  consulta.SQL.Add('WHERE vv.vrpbarra = ' + QuotedStr(vResultado) + ' ');

  if Situacao = 'Alterando' then
    consulta.SQL.Add('AND vv.vrpcodigo <> ' + registrovrpcodigo.AsString);

  consulta.Open;

  if not consulta.IsEmpty then
  begin

    Application.MessageBox(PChar('Esse código de barra já está em uso!!' + #13 + #13 + 'Variação: ' + consulta.Fields[0].AsString), 'Atenção',
      MB_ICONWARNING + MB_OK);
    // Trata o foco do próximo campo quando usuário utiliza o mouse pra sair.
    PostMessage(ActiveControl.Handle, WM_LBUTTONUP, 0, 0);
    Exit;
  end;

  consulta.Close;

  Result := True;
  vBarraAjustada := vResultado;
end;

procedure Tfvrp.vrpbarraExit(Sender: TObject);
var
  vResultado: string;
begin
  if vrpbarra.ReadOnly = True then
    Exit;

  if not ValidaBarra(vrpbarra.Field.AsString, vResultado) then
    Exit;

  vrpbarra.Field.AsString := vResultado;
end;

procedure Tfvrp.vrpbarraKeyPress(Sender: TObject; var Key: Char);
begin
  FormKeyPress(Sender, Key);
  if not(Key in [#0, #13, #8, #3, #$16, #$18, '0' .. '9']) then
  begin
    ShowMessage('Tecla Inválida: ' + Key);
    Key := #0;
  end;
end;

procedure Tfvrp.vrpbarrasistemaExit(Sender: TObject);
begin
  AjustaBarra;

  ValidaSaida(Sender);
end;

procedure Tfvrp.OnEnterAtributos(Sender: TObject);
begin
  if not(Sender is TDBEdit) then
    Exit;

  (* Atribui atrcodigo para o Filtro *)
  txtFiltro := SomenteNumeros(TDBEdit(Sender).Name);
  iat.Filter := 'atrcodigo = ' + txtFiltro;
  iat.Filtered := True;
end;

procedure Tfvrp.AjustaBarra;
begin
  if registrovrpbarrasistema.AsInteger = 0 then
  begin
    vrpbarra.ReadOnly := False;
    vrpbarra.Color := PEG_COR_VALORREQUERIDO;
  end
  else
  begin
    vrpbarra.Field.AsString := CodigoBarra;
    vrpbarra.ReadOnly := True;
    vrpbarra.Color := PEG_COR_VALORPADRAO;
  end;
end;

procedure Tfvrp.bconfirmaClick(Sender: TObject);
var
  vlBarraAjustada: String;
begin
  if registrovrpbarrasistema.AsInteger = 0 then
    if not ValidaBarra(vrpbarra.Field.AsString, vlBarraAjustada) then
    begin
      vrpbarrasistema.SetFocus;
      Exit;
    end;

  if VariacaoExiste then
    Exit;

  inherited;

  if not(ModalResult = mrOK) then
    Exit;

  if registrovrpbarrasistema.AsInteger = 0 then
    Exit;

  registro.Edit;
  registrovrpbarra.AsString := GeraBarraVariacao(Self, registroprocodigo.AsInteger, registrovrpcodigo.AsInteger);
  registro.Post;
end;

procedure Tfvrp.BeforePostAtributos(DataSet: TDataSet);
begin
  if ActiveControl = bcancela then
  begin
    DataSet.Cancel;
    Exit;
  end;

  if not(psituacao.Caption = 'Incluindo') then
    Exit;

  DataSet.FieldByName('vrpcodigo').AsInteger := registrovrpcodigo.AsInteger;
end;

function Tfvrp.VariacaoExiste: Boolean;
var
  vlDBEdit: TDBEdit;
  vlAtributos, vlSeparador: String;
begin
  gra.First;
  while not gra.Eof do
  begin
    vlDBEdit := Self.FindComponent('iatcodigo' + graatrcodigo.AsString) as TDBEdit;
    vlAtributos := vlAtributos + vlSeparador + vlDBEdit.Field.AsString;
    vlSeparador := ',';
    gra.Next;
  end;

  qDuplVrp.Close;
  qDuplVrp.ParamByName('procodigo').AsInteger := registroprocodigo.AsInteger;
  qDuplVrp.ParamByName('atributos').AsString := vlAtributos;

  if Situacao = 'Alterando' then
    qDuplVrp.SQL.Add('AND vv.vrpcodigo <> ' + registrovrpcodigo.AsString);

  qDuplVrp.Open;

  if qDuplVrp.IsEmpty then
    Result := False
  else
  begin
    Result := True;
    Application.MessageBox(PChar('Esta variação já existe para este produto:' + #13 + #13 + 'Variação: ' + qDuplVrp.Fields[0].AsString), 'Atenção',
      MB_ICONWARNING + MB_OK);
  end;
end;

END.
