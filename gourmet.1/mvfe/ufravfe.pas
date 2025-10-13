unit ufravfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, ufuncoes, uPegaBase, System.ImageList,
  Vcl.ImgList, Vcl.Mask, Vcl.DBCtrls;

type
  Tfravfe = class(Tfrabase)
    uqtabelavfecodigo: TIntegerField;
    uqtabelavferegistro: TDateTimeField;
    listaRemessa: TDBGrid;
    plbotoesitens: TPanel;
    LbItensSai: TLabel;
    PlTotaisSai: TPanel;
    PlVlrTotalSai: TPanel;
    PlQtItensSai: TPanel;
    listaOS: TDBGrid;
    plbotoesitensEnt: TPanel;
    LbItensEnt: TLabel;
    PlTotaisEnt: TPanel;
    PlVlrTotalEnt: TPanel;
    PlQtItensEnt: TPanel;
    SplRodapeGrid: TSplitter;
    ActIncluirRemessa: TAction;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    mes: TUniQuery;
    DSmes: TUniDataSource;
    mesvfecodigo: TIntegerField;
    mesmeschave: TIntegerField;
    mesetdcodigo: TIntegerField;
    mesetdidentificacao: TStringField;
    mesmesemissao: TDateField;
    mesmesregistro: TDateField;
    mestdfcodigo: TStringField;
    mestdfidentificacao: TStringField;
    messdecodigo: TStringField;
    messdeidentificacao: TStringField;
    mesmesnumero: TIntegerField;
    mesmesvalor: TFloatField;
    mesmesdesconto: TFloatField;
    mesmestotal: TFloatField;
    uqtabelavfscodigo: TIntegerField;
    uqtabelavfsidentificacao: TStringField;
    ActVincularOS: TAction;
    orc: TUniQuery;
    DSorc: TUniDataSource;
    orcvfecodigo: TIntegerField;
    orcorcchave: TIntegerField;
    orcetdcodigo: TIntegerField;
    orcetdidentificacao: TStringField;
    orcorcdataabert: TDateField;
    orcclbcodigo: TIntegerField;
    orcclbidentificacao: TStringField;
    orcorcnome: TStringField;
    orcorctelefone: TStringField;
    orcorcendereco: TStringField;
    orcorcdescrpagto: TStringField;
    orcorcgeral: TFloatField;
    orcorcdesconto: TFloatField;
    orcorctotal: TFloatField;
    orcstoidentificacao: TStringField;
    orcpuoidentificacao: TStringField;
    orcedrcodigo: TIntegerField;
    orcstocodigo: TIntegerField;
    orcorcobs: TStringField;
    orcclbvendedor: TIntegerField;
    orcclbvendedorident: TStringField;
    orcveicodigo: TIntegerField;
    orceqpcodigo: TIntegerField;
    orcobjidentificacao: TStringField;
    orcobjmodelo: TStringField;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgidentificavendedor: TIntegerField;
    cfgcfgusaveiculo: TIntegerField;
    cfgcfgidentificaequip: TIntegerField;
    ActEncerrar: TAction;
    mestoeidentificacao: TStringField;
    uqtabelavfeencerramento: TDateTimeField;
    uqtabelaclbabertura: TIntegerField;
    uqtabelaclbabertident: TStringField;
    uqtabelaclbencerramento: TIntegerField;
    uqtabelaclbencerraident: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActIncluirRemessaExecute(Sender: TObject);
    procedure listaRemessaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure listaOSDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActSairExecute(Sender: TObject);
    procedure ActVincularOSExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActEncerrarExecute(Sender: TObject);
  private
    procedure BuscaAtendimentos;
    { Private declarations }
  public
    procedure Carregar; override;
    { Public declarations }
  end;

var
  fravfe: Tfravfe;

  // Início ID do Módulo fravfe
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Venda Fora do Estabelecimento';

  // Fim ID do Módulo fravfe

implementation

{$R *.dfm}

uses ufvfe, ufmesvfe;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fravfe := Tfravfe.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fravfe := Tfravfe.Create(pCargaFrame);
  try
    fravfe.CriaAcoesDeAcesso;
  finally
    fravfe.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfravfe.ActAtualizarExecute(Sender: TObject);
begin
  inherited;

  if mes.Active then
    mes.Refresh;

  if orc.Active then
    orc.Refresh;
end;

procedure Tfravfe.ActEncerrarExecute(Sender: TObject);
var
  vlMensagem: PWideChar;
begin
  uqtabela.Refresh;

  if uqtabela.IsEmpty then
    Exit;

  if uqtabelavfscodigo.AsInteger in [vfsEncerrado, vfsCancelado] then
  begin
    vlMensagem := 'Este processo já está encerrado.';
    Application.MessageBox(vlMensagem, 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  if Application.MessageBox(PChar('Confirma o encerramento do processo?'), 'Confirmação', MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDNO Then
    Exit;

  zcone.StartTransaction;
  try

    (* Se existem remessas é carregado o formulário para registrar o retorno das mercadorias *)
    if not mes.IsEmpty then
      if not CriaFormulario(Tfmesvfe, IntToStr(vfsEncerrado), uqtabelavfecodigo.AsString) then
      (* Se usuário abandonou o registro do retorno das mercadorias o processo não é concluído *)
      begin
        if zcone.TransactionCount > 0 then
          zcone.Rollback;

        Exit;
      end;

    consulta.Close;
    consulta.SQL.Text := 'UPDATE vfe ';
    if not mes.IsEmpty then
      consulta.SQL.Add('SET vfe.vfscodigo = 2 -- Encerrado ')
    else
      consulta.SQL.Add('SET vfe.vfscodigo = 3 -- Cancelado ');
    consulta.SQL.Add('  , vfe.vfeencerramento = CURRENT_TIMESTAMP() ');
    consulta.SQL.Add('  , vfe.clbencerramento =  ' + Acesso.Usuario.ToString + ' ');
    consulta.SQL.Add('WHERE vfe.vfecodigo = ' + uqtabelavfecodigo.AsString);
    consulta.ExecSQL;
     if ZCone.TransactionCount > 0 then
      if ZCone.Transactions[0].Active then
    zcone.Commit;

    ActAtualizar.Execute;
  except
   if ZCone.TransactionCount > 0 then
      if ZCone.Transactions[0].Active then
            zcone.Rollback;
  end;
end;

procedure Tfravfe.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfvfe, '', '');
end;

procedure Tfravfe.ActIncluirRemessaExecute(Sender: TObject);
var
  vlMensagem: PWideChar;
begin
  uqtabela.Refresh;

  if uqtabela.IsEmpty then
    Exit;

  if uqtabelavfscodigo.AsInteger in [vfsEncerrado, vfsCancelado] then
  begin
    vlMensagem := 'Este processo está encerrado, não é possível lançar mais itens de Remessa.';
    Application.MessageBox(vlMensagem, 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  CriaFormulario(Tfmesvfe, '', uqtabelavfecodigo.AsString);

  mes.Refresh;
end;

procedure Tfravfe.ActSairExecute(Sender: TObject);
begin
  SalvarColunas(listaRemessa);
  SalvarColunas(listaOS);

  inherited;
end;

procedure Tfravfe.ActVincularOSExecute(Sender: TObject);
var
  vlMensagem: PWideChar;
begin
  uqtabela.Refresh;

  if uqtabela.IsEmpty then
    Exit;

  if uqtabelavfscodigo.AsInteger in [vfsEncerrado, vfsCancelado] then
  begin
    vlMensagem := 'Este processo está encerrado, não é possível vincular mais Atendimentos.';
    Application.MessageBox(vlMensagem, 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  if mes.IsEmpty then
  begin
    vlMensagem := 'Vínculo de atendimentos não permitido, pois o processo não possui nenhuma remessa registrada.';
    Application.MessageBox(vlMensagem, 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  BuscaAtendimentos;

  orc.Refresh;
end;

procedure Tfravfe.BuscaAtendimentos;
type
  TBuscaAtendimento = function(AOwner: TComponent; conexao: TUniConnection; vusuario: String; vClbCodigo, vVfeCodigo: Integer; vVfeData: TDate): String;
var
  Exec: TBuscaAtendimento;
begin

  Pack := LoadPackage('modulos\mvfe.bpl');
  if Pack <> 0 then
    try
      @Exec := GetProcAddress(Pack, PChar('BuscaAtendimento'));

      if not Assigned(Exec) then
        Exit;

      Exec(Application, zcone, Acesso.Usuario.ToString, uqtabelaclbcodigo.AsInteger, uqtabelavfecodigo.AsInteger, uqtabelavferegistro.AsDateTime);
    finally
      // DoUnLoadPackage(Application, Pack);
    end;
end;

procedure Tfravfe.Carregar;
begin
  cfg.Connection := Self.zcone;
  cfg.Open;

  (* Se não utilizar Equipamento nem Veículo colunas são deletadas *)
  if (cfgcfgusaveiculo.AsInteger = 0) and (cfgcfgidentificaequip.AsInteger = 0) then
  begin
    DeletarColuna('objidentificacao', listaOS);
    DeletarColuna('objmodelo', listaOS);
  end;

  inherited Carregar;

  mes.Open;
  orc.Open;

  CarregarColunas(listaRemessa);
  CarregarColunas(listaOS);
end;

procedure Tfravfe.listaRemessaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfravfe.listaOSDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

end.
