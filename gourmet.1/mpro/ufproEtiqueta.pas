unit ufproEtiqueta;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, VirtualTable, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, System.SysUtils, Vcl.Dialogs,
  uFuncoes, uBuscaProduto, IdBaseComponent, System.ImageList, Vcl.DBCtrls, Vcl.Mask;

type
  TfproEtiqueta = class(Tfrmbase)
    registroetichave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrotrmcodigo: TIntegerField;
    registropuncodigo: TIntegerField;
    registroeetcodigo: TIntegerField;
    registroetiquanti: TIntegerField;
    registroetiemissao: TDateTimeField;
    cdbarra: TEdit;
    VTBarras: TVirtualTable;
    VTBarrasprocodigo: TIntegerField;
    VTBarraspronome: TStringField;
    VTBarrasunisimbolo: TStringField;
    VTBarraspunbarra: TStringField;
    VTBarraspunprecoav: TFloatField;
    VTBarraspunprecoap: TFloatField;
    UDBarras: TUniDataSource;
    qPro: TUniQuery;
    qProprocodigo: TIntegerField;
    qPropronome: TStringField;
    qProunisimbolo: TStringField;
    qPropunbarra: TStringField;
    qPropunprecoav: TFloatField;
    qPropunprecoap: TFloatField;
    bRemoverSelecionado: TBitBtn;
    Label1: TLabel;
    qPropuncodigo: TIntegerField;
    VTBarraspuncodigo: TIntegerField;
    VTBarrasetiquanti: TIntegerField;
    VTBarrasvrpcodigo: TIntegerField;
    qProgracodigo: TIntegerField;
    registrovrpcodigo: TIntegerField;
    vrp: TUniQuery;
    vrppronome: TStringField;
    Panel1: TPanel;
    DBLista: TDBGrid;
    metidentificacao: TDBLookupComboBox;
    Label20: TLabel;
    Dmet: TDataSource;
    met: TUniQuery;
    metmetcodigo: TIntegerField;
    metmetidentificacao: TStringField;
    Dcfg: TDataSource;
    cfgcfgcodigo: TIntegerField;
    cfgmetcodigo: TIntegerField;
    cfgmetidentificacao: TStringField;
    cfgetirelcodigo: TStringField;
    LbQtdEtiqueta: TLabel;
    rel: TUniQuery;
    relrelcodigo: TStringField;
    relrelidentificacao: TStringField;
    registrorelcodigo: TStringField;
    cfgrelidentificacao: TStringField;
    lrelcodigo: TLabel;
    relcodigo: TDBEdit;
    sbBuscaCodigorelatorio: TSpeedButton;
    relrelarquivo: TBlobField;
    etiquetas: TUniQuery;
    detiquetas: TUniDataSource;
    etiquetasetichave: TIntegerField;
    etiquetasprocodigo: TIntegerField;
    etiquetaspronome: TStringField;
    etiquetaspunprecoav: TFloatField;
    etiquetaspunprecoap: TFloatField;
    etiquetaspunbarra: TStringField;
    etiquetasetiquanti: TIntegerField;
    bRemoverTODOS: TBitBtn;
    VTBarrasetichave: TStringField;
    vrpvrpbarra: TStringField;
    procedure cdbarraKeyPress(Sender: TObject; var Key: Char);
    procedure DBListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bRemoverSelecionadoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure DcfgDataChange(Sender: TObject; Field: TField);
    procedure sbBuscaCodigorelatorioClick(Sender: TObject);
    procedure bRemoverTODOSClick(Sender: TObject);
  private
    procedure IncluirNovoItem(Produto, Embalagem, Variacao: Integer; vqtdetiquetas: string = ''; vetichave: String = '');
    procedure AtualizaQuantidade;
    procedure ChamaRelatorio(vRelCodigo: string);
    function ImprimeRelatorio(modulo, varquivo: string): string;
    procedure carregaetiquetas;
    { Private declarations }
  public
    { Public declarations }
  end;

  TImprimeRelat = function(AOwner: TComponent; Conexao: TUniConnection; vtabela: TUniDataSource; DirRelatorio: String; Impressora: String = '';
    vUsuCodigo: string = ''): string;

var
  fproEtiqueta: TfproEtiqueta;

implementation

{$R *.dfm}

procedure TfproEtiqueta.bconfirmaClick(Sender: TObject);
begin
  if cfg.State <> dsBrowse then
    cfg.Post;

  salvacolunas(DBLista);

  if not VTBarras.Active then
  begin
    ModalResult := mrOk;
    Exit;
  end;

  VTBarras.First;
  while not VTBarras.Eof do
  begin
    if registro.State <> dsInsert then
      registro.Append;

    registroclbcodigo.AsInteger := Acesso.Usuario;
    registrotrmcodigo.AsInteger := 1;
    registroeetcodigo.AsInteger := 1;
    registroetiemissao.AsFloat := Now;
    registropuncodigo.AsInteger := VTBarraspuncodigo.AsInteger;
    registroetiquanti.AsInteger := VTBarrasetiquanti.AsInteger;

    if VTBarrasvrpcodigo.AsInteger > 0 then
      registrovrpcodigo.AsInteger := VTBarrasvrpcodigo.AsInteger;

    if relcodigo.Visible then
    begin
      self.registrorelcodigo.AsString := self.cfgetirelcodigo.AsString;
    end
    else
    begin
      self.registrorelcodigo.AsString := '';
    end;

    registro.Post;

    VTBarras.Next;
  end;

  if self.relcodigo.Visible then
  begin
    ChamaRelatorio(self.cfgetirelcodigo.AsString);
  end;

  ModalResult := mrOk;

end;

function TfproEtiqueta.ImprimeRelatorio(modulo: string; varquivo: string): string;
var
  relat: TImprimeRelat;
  ch: string;
begin
  pack := LoadPackage('modulos\' + modulo + '.bpl');
  if pack <> 0 then
    try
      @relat := GetProcAddress(pack, Pchar('mrfrImpressao'));
      if Assigned(relat) then
      begin
        etiquetas.ExecSQL;
        carregaetiquetas;

        ch := relat(Application, self.ZCone, self.detiquetas, varquivo, '', Acesso.Usuario.ToString);
        Result := ch;
      end;
    finally
      // DoUnLoadPackage(application,pack);
    end;
end;

procedure TfproEtiqueta.carregaetiquetas;
var
  vlQuanti: Integer;
  i, x: Integer;

begin
  VTBarras.First;
  x := 1;
  while not VTBarras.Eof do
  begin
    for i := 1 to VTBarrasetiquanti.AsInteger do
    begin
      etiquetas.Append;

      etiquetasetichave.AsInteger := x;
      etiquetasprocodigo.AsInteger := VTBarrasprocodigo.AsInteger;
      etiquetaspronome.AsString := VTBarraspronome.AsString;
      etiquetaspunprecoav.AsCurrency := VTBarraspunprecoav.AsCurrency;
      etiquetaspunprecoap.AsCurrency := VTBarraspunprecoap.AsCurrency;
      etiquetaspunbarra.AsString := VTBarraspunbarra.AsString;
      etiquetasetiquanti.AsInteger := VTBarrasetiquanti.AsInteger;

      etiquetas.Post;
      x := x + 1;

    end;
    VTBarras.Next;
  end;

end;

procedure TfproEtiqueta.ChamaRelatorio(vRelCodigo: string);
var
  vlRelCodigo: String;
  vlNomeArq: string;
  BlobField: TBlobField;
begin
  vlRelCodigo := vRelCodigo;

  rel.Close;
  rel.Filter := 'relcodigo=' + QuotedStr(vlRelCodigo);
  rel.Filtered := true;
  rel.Open;

  if rel.Locate('relcodigo', vlRelCodigo, []) then
  begin
    vlNomeArq := ExtractFilePath(Application.ExeName) + 'relat\rel' + vlRelCodigo + '.fr3';

    BlobField := rel.FieldByName('relarquivo') as TBlobField;
    BlobField.SaveToFile(vlNomeArq);
    if FileExists(vlNomeArq) then
      ImprimeRelatorio('mrfr', vlNomeArq);
  end;

  rel.Close;
  rel.Filtered := false;
  rel.Open;

  self.registro.First;
  while not registro.Eof do
  begin
    registro.Edit;
    registroeetcodigo.AsInteger := 2;
    registro.Post;

    registro.Next;
  end;

end;

procedure TfproEtiqueta.bRemoverSelecionadoClick(Sender: TObject);
begin
  inherited;
  if VTBarras.IsEmpty then
    Exit;

  if VTBarrasetichave.AsString <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'delete from eti where etichave=' + VTBarrasetichave.AsString;
    consulta.ExecSQL;

  end;

  VTBarras.Delete;

  AtualizaQuantidade;
end;

procedure TfproEtiqueta.bRemoverTODOSClick(Sender: TObject);
begin
  inherited;

  if VTBarras.IsEmpty then
    Exit;
  while not VTBarras.Eof do
  begin
    if VTBarrasetichave.AsString <> '' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from eti where etichave=' + VTBarrasetichave.AsString;
      consulta.ExecSQL;

    end;

    VTBarras.Delete;
  end;

  AtualizaQuantidade;
end;

procedure TfproEtiqueta.cdbarraKeyPress(Sender: TObject; var Key: Char);
var
  VProduto: Integer;
  VCBarra: string;
  vEmbalagem: Integer;
  vVariacao: Integer;
  VRetorno: string;
begin
  If (Key <> #13) Then
    Exit;

  Key := #0;

  VCBarra := cdbarra.Text;

  if VCBarra = '' then
  begin
    VRetorno := MostraLista('mpro', '(tpocodigo=0 or tpocodigo=9)');

    if VRetorno = '' Then
      Exit;

    VCBarra := VRetorno;
  end;

  VProduto := BuscaProdutoBarra(Application, ZCone, VCBarra, vEmbalagem, vVariacao);

  If VProduto > -1 Then
  begin
    IncluirNovoItem(VProduto, vEmbalagem, vVariacao)
  end
  Else
    Application.MessageBox(Pchar('Produto não localizado!!'), 'Atenção', MB_ICONWARNING + MB_OK);

  cdbarra.Text := '';
end;

procedure TfproEtiqueta.DBListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited gridzebrado(Sender, Rect, DataCol, Column, State);

end;

procedure TfproEtiqueta.DcfgDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if cfg.Active then
  begin
    if self.cfgmetcodigo.AsInteger = 6 then
    begin
      self.relcodigo.Visible := true;
      self.lrelcodigo.Visible := true;
      sbBuscaCodigorelatorio.Visible := true;
    end
    else
    begin
      self.relcodigo.Visible := false;
      self.lrelcodigo.Visible := false;
      sbBuscaCodigorelatorio.Visible := false;
    end;
  end;
end;

procedure TfproEtiqueta.FormShow(Sender: TObject);
begin
  inherited;

  cfg.Close;
  cfg.ParamByName('cfgcodigo').AsInteger := Acesso.Filial;
  cfg.Open;

  cdbarra.Color := PEG_COR_VALORREQUERIDO;

  consulta.Close;
  consulta.SQL.Text :=
    'select pun.procodigo, eti.puncodigo, eti.vrpcodigo, etiquanti, etichave from eti,pun where pun.puncodigo=eti.puncodigo  and eetcodigo=1';
  consulta.Open;

  while not consulta.Eof do
  begin
    IncluirNovoItem(consulta.FieldByName('procodigo').AsInteger, consulta.FieldByName('puncodigo').AsInteger, consulta.FieldByName('vrpcodigo').AsInteger,
      consulta.FieldByName('etiquanti').AsString, consulta.FieldByName('etichave').AsString);

    consulta.Next;
  end;

  carregacolunas(DBLista);
end;

Procedure TfproEtiqueta.IncluirNovoItem(Produto, Embalagem, Variacao: Integer; vqtdetiquetas: String = ''; vetichave: String = '');
var
  vPunCodigo: string;
  i: Integer;
  sQuantidade: string;
  vQuantidade: Integer;
  vErroPos: Integer;
  (* Variação de Produtos *)
  vlVrpCodigo: String;
begin
  qPro.Close;
  qPro.ParamByName('procodigo').AsInteger := Produto;
  qPro.Open;

  // Identifica se item tem mais de uma unidade de venda
  If (qPro.RecordCount > 1) Then
    if not(qPro.Locate('puncodigo', Embalagem, [])) then
    begin
      vPunCodigo := MostraLista('mpun', '(tuncodigo = 1 or tuncodigo = 9) and procodigo = ' + IntToStr(Produto));

      if vPunCodigo = '' then
        Exit;

      Embalagem := StrToInt(vPunCodigo);
      qPro.Locate('puncodigo', Embalagem, [])
    end;

  (*
    *Identifica se produto está vinculado a uma GRADE
    *e busca VARIAÇÕES do produto
  *)
  if qProgracodigo.AsInteger > 0 then
    if Variacao > 0 then
      vlVrpCodigo := IntToStr(Variacao)
    else
    begin
      vlVrpCodigo := MostraLista('mvrp', IntToStr(Produto));

      if vlVrpCodigo = '' then
        Exit;
    end;

  if not VTBarras.Active then
    VTBarras.Open;

  if vqtdetiquetas = '' then
  begin
    repeat
      sQuantidade := '1';
      sQuantidade := InputBox('Quantidade', 'Informe a quantidade de etiquetas: ', sQuantidade);

      // identifica se foi digitado apenas números.
      Val(sQuantidade, vQuantidade, vErroPos);

      if vErroPos > 0 then
        Application.MessageBox(Pchar('Quantidade inválida!' + #13 + 'Informe apenas números.'), 'Atenção', MB_ICONWARNING + MB_OK);
    until (vErroPos = 0);

  end
  else
  begin
    vQuantidade := StrToInt(vqtdetiquetas);
  end;
  VTBarras.Append;
  for i := 0 to 6 do
    VTBarras.Fields[i] := qPro.Fields[i];

  VTBarrasetiquanti.AsInteger := vQuantidade;
  if vetichave <> '' then
    VTBarrasetichave.AsString := vetichave;

  if vlVrpCodigo <> '' then
  begin
    vrp.Close;
    vrp.Params[0].AsString := vlVrpCodigo;
    vrp.Open;

    VTBarraspronome.AsString := vrppronome.AsString;
    VTBarrasvrpcodigo.AsString := vlVrpCodigo;
    VTBarraspunbarra.AsString := vrpvrpbarra.AsString;
  end;

  VTBarras.Post;

  AtualizaQuantidade;
end;

procedure TfproEtiqueta.sbBuscaCodigorelatorioClick(Sender: TObject);
begin
  inherited;
  cfg.Edit;
  CriaBusca(relcodigo, cfgrelidentificacao);
  cfg.Post;
end;

procedure TfproEtiqueta.AtualizaQuantidade;
var
  vRegistro: Integer;
  vQuantidade: Integer;
begin
  TRY
    vRegistro := VTBarras.RecNo;

    vQuantidade := 0;
    VTBarras.DisableControls;
    VTBarras.First;
    while not VTBarras.Eof do
    begin
      vQuantidade := vQuantidade + VTBarrasetiquanti.AsInteger;
      VTBarras.Next;
    end;

    VTBarras.RecNo := vRegistro;
    VTBarras.EnableControls;

    LbQtdEtiqueta.Caption := 'Quantidade de Etiquetas: ' + IntToStr(vQuantidade);
  EXCEPT
    VTBarras.EnableControls;
  END;
end;

end.
