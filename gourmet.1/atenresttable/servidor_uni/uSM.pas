unit uSM;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  inifiles, Datasnap.DSProviderDataModuleAdapter,
  Datasnap.Provider, Data.DB,
  MemDS, DBAccess, Uni;

type
  TSM = class(TDSServerModule)
    zito: TUniQuery;
    DSzito: TDataSetProvider;
    procedure itoPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure orcPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure consultaPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure iocPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure immPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function EstadoMesas: String;
    function removeritem(vitochave: string): Boolean;
    function CarregaUsuario(vsenha: string): string;
    function CarregaAtendimentos(VOrcChave, VTrmCodigo: string): Boolean;
    function BuscaAtendimentos(VTrmCodigo, vIDMesa, vClbCodigo: string): string;
    function Novoorcamento(VTrmCodigo: string; vIDMesa: string;
      vClbCodigo: string): string;
    function BuscaPro(vProCodigo: string): string;
    function BuscaqPro(vProCodigo: string): string;
    function BuscaoPro(vProCodigo: string): string;
    function IncluirNovoItem(Produto: Integer; Quantidade: double;
      complemento: string; unidade: string; pun: Integer; VOrcChave: string;
      vUsrCodigo: string; VTrmCodigo: string; vIDMesa: string): string;
    function enviarparacozinha(VOrcChave: string): string;

  end;

implementation

{$R *.dfm}

uses ufprinciServRest;


function TSM.enviarparacozinha(VOrcChave: string): string;
var
  retorno: string;
begin
  retorno := fprinciServRest.enviarparacozinha(VOrcChave);
  result := retorno;
end;

function TSM.EstadoMesas: String;
var
  retorno: String;
begin

  retorno := fprinciServRest.EstadoMesas;
  result := retorno;

end;


function TSM.removeritem(vitochave: string): Boolean;
var
  retorno: Boolean;
begin

  retorno := fprinciServRest.removeritem(vitochave);
  result := retorno;

end;


function TSM.CarregaUsuario(vsenha: string): string;
var
  nome: string;
begin
  nome := fprinciServRest.CarregaUsuario(vsenha);
  result := nome;

end;

function TSM.CarregaAtendimentos(VOrcChave: string; VTrmCodigo: string)
  : Boolean;
begin
  result := fprinciServRest.CarregaAtendimentos(VOrcChave, VTrmCodigo);
end;

function TSM.IncluirNovoItem(Produto: Integer; Quantidade: double;
  complemento: string; unidade: string; pun: Integer; VOrcChave: string;
  vUsrCodigo: string; VTrmCodigo: string; vIDMesa: string): string;
var
  retorno: string;
Begin
  retorno := fprinciServRest.IncluirNovoItem(Produto, Quantidade, complemento,
    unidade, pun, VOrcChave, vUsrCodigo, VTrmCodigo, vIDMesa);
  result := retorno;
End;

function TSM.BuscaqPro(vProCodigo: string): string;
var
  retorno: string;
begin
  retorno := fprinciServRest.BuscaqPro(vProCodigo);
  result := retorno;
end;

function TSM.BuscaoPro(vProCodigo: string): string;
var
  retorno: string;
begin
  retorno := fprinciServRest.BuscaoPro(vProCodigo);
  result := retorno;
end;

function TSM.BuscaPro(vProCodigo: string): string;
var
  vpronome: string;
begin
  vpronome := fprinciServRest.BuscaPro(vProCodigo);
  result := vpronome;
end;

function TSM.BuscaAtendimentos(VTrmCodigo: string; vIDMesa: string;
  vClbCodigo: string): string;
var
  VOrcChave: String;
begin
  VOrcChave := fprinciServRest.BuscaAtendimentos(VTrmCodigo, vIDMesa,
    vClbCodigo);
  result := VOrcChave;
end;

procedure TSM.consultaPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  fprinciServRest.erros.Lines.Add('consulta: ' + datetimetostr(now) + ': ' +
    E.Message);
end;

procedure TSM.DSServerModuleCreate(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i] is TUniQuery then
    begin
      (self.Components[i] as TUniQuery).Connection := fprinciServRest.conexao;
    end;

  end;

end;

procedure TSM.immPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  fprinciServRest.erros.Lines.Add('imm: ' + datetimetostr(now) + ': ' +
    E.Message);
end;

procedure TSM.iocPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  fprinciServRest.erros.Lines.Add('ioc: ' + datetimetostr(now) + ': ' +
    E.Message);
end;

procedure TSM.itoPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  fprinciServRest.erros.Lines.Add('ito: ' + datetimetostr(now) + ': ' +
    E.Message);
end;

function TSM.Novoorcamento(VTrmCodigo, vIDMesa, vClbCodigo: string): string;
var
  VOrcChave: string;
begin
  VOrcChave := fprinciServRest.Novoorcamento(VTrmCodigo, vIDMesa, vClbCodigo);
  result := VOrcChave;
end;

procedure TSM.orcPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  fprinciServRest.erros.Lines.Add('Erro ao criar orc: ' + datetimetostr(now) +
    ': ' + E.Message);
end;



end.
