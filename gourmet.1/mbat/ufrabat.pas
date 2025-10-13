unit ufrabat;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Classes,
  System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Controls,
  Vcl.Graphics, uFuncoes, System.SysUtils, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList, uPegaBase, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfrabat = class(Tfrabase)
    uqtabelaorcchave: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaorcdataabert: TDateField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelaorcnome: TStringField;
    uqtabelaorctelefone: TStringField;
    uqtabelaorcendereco: TStringField;
    uqtabelaorcdescrpagto: TStringField;
    uqtabelaorcgeral: TFloatField;
    uqtabelaorcdesconto: TFloatField;
    uqtabelaorctotal: TFloatField;
    uqtabelastoidentificacao: TStringField;
    uqtabelapuoidentificacao: TStringField;
    uqtabelaedrcodigo: TIntegerField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdedrrua: TStringField;
    etdedrnumero: TStringField;
    etdedrbairro: TStringField;
    etdetftelefone: TStringField;
    etdtsecodigo: TIntegerField;
    etdcddnome: TStringField;
    etdufssigla: TStringField;
    etdedrcep: TStringField;
    Detd: TUniDataSource;
    lito: TUniQuery;
    litoorcchave: TIntegerField;
    litoprocodigo: TIntegerField;
    litopronome: TStringField;
    litoitoquantidade: TFloatField;
    litoitovalor: TFloatField;
    litoitototal: TFloatField;
    litoitodesconto: TFloatField;
    litoitosaldo: TFloatField;
    litostoidentificacao: TStringField;
    litoitoproservico: TStringField;
    Dlito: TUniDataSource;
    PnlDadosCliente: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    edrrua: TDBEdit;
    edrnumero: TDBEdit;
    edrbairro: TDBEdit;
    cddnome: TDBEdit;
    edrcep: TDBEdit;
    etftelefone: TDBEdit;
    ufssigla: TDBEdit;
    PnlNomeCliente: TPanel;
    LbDadosConsumidor: TLabel;
    DBGListaItens: TDBGrid;
    pservico: TPanel;
    Panel8: TPanel;
    itoproservico: TDBMemo;
    sto: TUniQuery;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    ActBaixar: TAction;
    ActReimprimir: TAction;
    MenuGerador: TPopupMenu;
    Gerador1: TMenuItem;
    spbBaixados: TAction;
    spbEmAberto: TAction;
    uqtabelastocodigo: TIntegerField;
    ActDevolCond: TAction;
    litoitoquanticondi: TFloatField;
    litoitoquantidevolcondi: TFloatField;
    litostocodigo: TIntegerField;
    uqtabelaorcobs: TStringField;
    uqtabelaclbvendedor: TIntegerField;
    uqtabelaclbvendedorident: TStringField;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgidentificavendedor: TIntegerField;
    spbEquipamentos: TAction;
    spbVeiculos: TAction;
    uqtabelaveicodigo: TIntegerField;
    uqtabelaeqpcodigo: TIntegerField;
    uqtabelaobjidentificacao: TStringField;
    uqtabelaobjmodelo: TStringField;
    spbTodosObj: TAction;
    cfgcfgusaveiculo: TIntegerField;
    cfgcfgidentificaequip: TIntegerField;
    uqtabelafoaidentificacao: TStringField;
    cfgcfgusavendaforaestab: TIntegerField;
    spbEmDigitacao: TAction;
    procedure DlitoDataChange(Sender: TObject; Field: TField);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure DetdDataChange(Sender: TObject; Field: TField);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActBaixarExecute(Sender: TObject);
    procedure ActReimprimirExecute(Sender: TObject);
    procedure Gerador1Click(Sender: TObject);
    procedure spbEmAbertoExecute(Sender: TObject);
    procedure spbBaixadosExecute(Sender: TObject);
    procedure ActDevolCondExecute(Sender: TObject);
    procedure DBGListaDblClick(Sender: TObject);
    procedure DBGListaItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaKeyPress(Sender: TObject; var Key: Char);
    procedure spbEquipamentosExecute(Sender: TObject);
    procedure spbVeiculosExecute(Sender: TObject);
    procedure spbTodosObjExecute(Sender: TObject);
    procedure spbEmDigitacaoExecute(Sender: TObject);
    procedure spbEmFechamentoExecute(Sender: TObject);
  private
    vQueryOriginal: String;
    vstocodigo: Integer;
    vorcchave: string;
    FPodeConfirmarBaixar: Boolean;
    procedure SetPodeConfirmarBaixar(const Value: Boolean);

    { Private declarations }

  published
    property PodeConfirmarBaixar: Boolean read FPodeConfirmarBaixar write SetPodeConfirmarBaixar;
  public
    vmoccodigo: Integer;
    vDirRelat: String;
    procedure Carregar; override;
    { Public declarations }
  end;

var
  frabat: Tfrabat;

  // Início ID do Módulo frabat
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Busca Atendimentos';

  // Fim ID do Módulo frabat

implementation

{$R *.dfm}
{ uses
  ufbatDevolCnd; }

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frabat := Tfrabat.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frabat := Tfrabat.Create(pCargaFrame);
  try
    frabat.CriaAcoesDeAcesso;
  finally
    frabat.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfrabat.DBGListaDblClick(Sender: TObject);
begin
  if UqTabela.IsEmpty then
    Exit;

  if not(uqtabelastocodigo.AsInteger in [stoEmAberto]) then
    Exit;

  inherited;
end;

procedure Tfrabat.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin
  inherited;

  fixRect := Rect;

  With (Sender As TDBGrid).Canvas Do
    if Column.FieldName = 'stoidentificacao' then
      case uqtabelastocodigo.AsInteger of
        stoVendido:
          Font.Color := clBlue;
        stoRetornado:
          Font.Color := clMaroon;
        stoCancelado:
          Font.Color := clRed;
      end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

procedure Tfrabat.DBGListaItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin
  inherited gridzebrado(Sender, Rect, DataCol, Column, State);

  fixRect := Rect;

  With (Sender As TDBGrid).Canvas Do
    if Column.FieldName = 'stoidentificacao' then
      case litostocodigo.AsInteger of
        stoVendido:
          Font.Color := clBlue;
        stoRetornado:
          Font.Color := clMaroon;
        stoCancelado:
          Font.Color := clRed;
      end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

procedure Tfrabat.DBGListaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    if UqTabela.IsEmpty then
      Exit;

    if not(uqtabelastocodigo.AsInteger in [stoEmAberto]) then
      Exit;
  end;

  inherited;
end;

procedure Tfrabat.DetdDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if etdetdcodigo.AsInteger = 0 then
  begin
    if uqtabelaorcnome.AsString = '' then
      LbDadosConsumidor.Caption := etdetdidentificacao.AsString
    else
      LbDadosConsumidor.Caption := uqtabelaorcnome.AsString + ' - ' + uqtabelaorcendereco.AsString + ' - ' + uqtabelaorctelefone.AsString;;
  end
  else
    LbDadosConsumidor.Caption := etdetdidentificacao.AsString;
end;

procedure Tfrabat.DlitoDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if litoitoproservico.AsString <> '' then
    pservico.Visible := True
  else
    pservico.Visible := False;

end;

procedure Tfrabat.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not UqTabela.Active then
    Exit;

  lito.Close;
  lito.Params[1].AsInteger := uqtabelaorcchave.AsInteger;
  lito.Params[0].AsInteger := acesso.Filial;
  lito.Open;

  etd.Close;
  etd.ParamByName('edrcodigo').AsInteger := uqtabelaedrcodigo.AsInteger;
  etd.Open;
end;

procedure Tfrabat.Gerador1Click(Sender: TObject);
begin
  inherited;
  mrfrImprimir(Application, zcone, DsTabela, vDirRelat, tiGerador, acesso.Usuario.ToString);
end;

procedure Tfrabat.SetPodeConfirmarBaixar(const Value: Boolean);
begin
  FPodeConfirmarBaixar := Value;

  if Self.Parent.FindComponent('pbotoes') <> nil then
    if TPanel(Self.Parent.FindComponent('pbotoes')).FindChildControl('bconfirma') <> nil then
      TBitBtn(TPanel(Self.Parent.FindComponent('pbotoes')).FindChildControl('bconfirma')).Enabled := FPodeConfirmarBaixar;

  ActBaixar.Enabled := FPodeConfirmarBaixar;
end;

procedure Tfrabat.spbBaixadosExecute(Sender: TObject);
begin
  inherited;
  spbBaixados.Checked := True;
  spbEmAberto.Checked := False;
  spbEmDigitacao.Checked := False;
  //spbEmFechamento.Checked := False;
  PodeConfirmarBaixar := False;

  ActAtualizar.Execute;
end;

procedure Tfrabat.spbEmAbertoExecute(Sender: TObject);
begin
  inherited;
  spbEmAberto.Checked := True;
  spbBaixados.Checked := False;
  spbEmDigitacao.Checked := False;
//  spbEmFechamento.Checked := False;
  PodeConfirmarBaixar := True;

  ActAtualizar.Execute;
end;

procedure Tfrabat.spbEmDigitacaoExecute(Sender: TObject);
begin
  inherited;
  spbBaixados.Checked := False;
  spbEmAberto.Checked := False;
//  spbEmFechamento.Checked := False;
  spbEmDigitacao.Checked := True;

  PodeConfirmarBaixar := False;

  ActAtualizar.Execute;
end;

procedure Tfrabat.spbEmFechamentoExecute(Sender: TObject);
begin
  inherited;
{  spbEmAberto.Checked := False;
  spbBaixados.Checked := False;
  spbEmDigitacao.Checked := False;
  spbEmFechamento.Checked := True;
  PodeConfirmarBaixar := True;

  ActAtualizar.Execute;}

end;

procedure Tfrabat.spbEquipamentosExecute(Sender: TObject);
begin
  spbTodosObj.Checked := False;
  spbEquipamentos.Checked := True;
  spbVeiculos.Checked := False;

  Self.ActAtualizar.Execute;
end;

procedure Tfrabat.spbTodosObjExecute(Sender: TObject);
begin
  spbTodosObj.Checked := True;
  spbEquipamentos.Checked := False;
  spbVeiculos.Checked := False;

  Self.ActAtualizar.Execute;
end;

procedure Tfrabat.spbVeiculosExecute(Sender: TObject);
begin
  spbTodosObj.Checked := False;
  spbEquipamentos.Checked := False;
  spbVeiculos.Checked := True;

  Self.ActAtualizar.Execute;
end;

procedure Tfrabat.ActAtualizarExecute(Sender: TObject);

begin
 { if vmoccodigo = mocDelivery then
    vmoccodigo := mocOrcamento;    }

  UqTabela.Params[0].AsInteger := vmoccodigo;
  UqTabela.Params[1].AsInteger := acesso.Filial;

  If spbBaixados.Checked Then
    // vstocodigo = 3 Fechado - 8 Cond. Retornado - 88 Cancelado
    Self.txtfiltrosql := ' (sto.stocodigo IN (3, 8, 88)) '
  Else if spbEmAberto.Checked Then
    // vstocodigo   2 - Em Aberto
    Self.txtfiltrosql := ' (sto.stocodigo IN (2)) '
{  Else if spbEmFechamento.Checked Then
    Self.txtfiltrosql := ' (sto.stocodigo IN (5)) '}

  Else if spbEmDigitacao.Checked Then
  begin
    // vstocodigo   2 - Em Aberto
    Self.txtfiltrosql := ' (sto.stocodigo IN (1)) and trmcodigo=' + acesso.Terminal.ToString + ' and orc.clbcodigo=' + acesso.Usuario.ToString + ' ';
    UqTabela.Params[0].AsInteger := 0;
  end;

  if spbEquipamentos.Checked then
    Self.txtfiltrosql := Self.txtfiltrosql + ' AND (obj.eqpcodigo) '
  else if spbVeiculos.Checked then
    Self.txtfiltrosql := Self.txtfiltrosql + ' AND (obj.veicodigo) ';

  inherited;

  if not Self.lito.Active then
    Self.lito.Open;

  Self.lito.Refresh;

  if not Self.etd.Active then
    Self.etd.Open;

  Self.etd.Refresh;

  if UqTabela.IsEmpty then
    PodeConfirmarBaixar := False
  else if (spbEmAberto.Checked) then
    PodeConfirmarBaixar := True;
end;

procedure Tfrabat.ActBaixarExecute(Sender: TObject);
begin
  inherited;

  if UqTabela.IsEmpty then
    Exit;

  if not(uqtabelastocodigo.AsInteger in [stoEmAberto]) then
    Exit;

  case Application.MessageBox(PChar('Processo irreversível!' + #13 + 'Você realmente deseja cancelar esse lançamento?'), 'Atenção',
    MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION) of
    IDNO:
      Exit;
  end;

  consulta.Close;
  consulta.SQL.Text := 'update orc set stocodigo = 88 where orcchave=' + Self.uqtabelaorcchave.AsString;
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'update ito set stocodigo = 88 where orcchave=' + Self.uqtabelaorcchave.AsString;
  consulta.ExecSQL;

  Self.lito.Refresh;
  Self.UqTabela.Refresh;
  Self.etd.Refresh;
end;

procedure Tfrabat.ActDevolCondExecute(Sender: TObject);
begin
  inherited;
  // CriaFormulario(TfbatDevolCnd, fbatDevolCnd, uqtabelaorcchave.AsString, '');
end;

procedure Tfrabat.ActReimprimirExecute(Sender: TObject);
begin
  inherited;
  mrfrImprimir(Application, zcone, DsTabela, vDirRelat, tiImprimir, acesso.Usuario.ToString);
end;

procedure Tfrabat.Carregar;
begin
  cfg.Connection := Self.zcone;
  cfg.Open;

  (* Se não identifica Vendedor colunas são deletadas *)
  if (cfgcfgidentificavendedor.AsInteger = 0) then
  begin
    DeletarColuna('clbvendedor', dbglista);
    DeletarColuna('clbvendedorident', dbglista);
  end;

  (* Se não utilizar Equipamento nem Veículo colunas são deletadas *)
  if (cfgcfgusaveiculo.AsInteger = 0) and (cfgcfgidentificaequip.AsInteger = 0) then
  begin
    DeletarColuna('objidentificacao', dbglista);
    DeletarColuna('objmodelo', dbglista);
  end;

  (* Se utilizar Equipamento e Veículo filtros são ativados *)
  if (cfgcfgusaveiculo.AsInteger = 1) and (cfgcfgidentificaequip.AsInteger = 1) then
  begin
    spbTodosObj.Visible := True;
    spbEquipamentos.Visible := True;
    spbVeiculos.Visible := True;
  end;

  (* Se não utilizar Venda Fora do Estabelecimento coluna Forma é deletada *)
  if (cfgcfgusavendaforaestab.AsInteger = 0) then
    DeletarColuna('foaidentificacao', dbglista);

  inherited Carregar;
end;

end.
