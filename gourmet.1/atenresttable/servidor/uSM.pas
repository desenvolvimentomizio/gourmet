unit uSM;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  inifiles, Datasnap.DSProviderDataModuleAdapter,
  ZAbstractConnection,  Datasnap.Provider, Data.DB,
  ZDataset, ZAbstractRODataset, ZAbstractDataset;

type
  TSM = class(TDSServerModule)
    zito: TZQuery;
    DSzito: TDataSetProvider;
    procedure itoPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure orcPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure consultaPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure iocPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure immPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
    procedure DSServerModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function removeritem(vitochave:string): Boolean;
    function enviarparacozinha(VOrcChave: string): string;
    function CarregaUsuario(vsenha: string): string;
    function CarregaAtendimentos(vorcchave, VTrmCodigo: string): boolean;
    function BuscaAtendimentos(VTrmCodigo, vIDMesa, vClbCodigo: string): string;
    function Novoorcamento(VTrmCodigo: string; vIDMesa: string; vClbCodigo: string): string;
    function BuscaPro(vProCodigo: string): string;
    function BuscaqPro(vProCodigo: string): string;
    function IncluirNovoItem(Produto: Integer; Quantidade: double; complemento: string; unidade: string; pun: Integer;
      vorcchave: string; vUsrCodigo: string; VTrmCodigo: string; vIDMesa: string): string;

  end;

implementation

{$R *.dfm}

uses ufprinciServRest;


function TSM.removeritem(vitochave:string): Boolean;
var
  retorno: Boolean;
begin

retorno:=fprinciServRest.removeritem(vitochave);
result:=retorno;

end;

function TSM.enviarparacozinha(vorcchave: string): string;
var
  retorno: string;
begin
  retorno := fprinciServRest.enviarparacozinha(VOrcChave);
  result := retorno;
end;


function TSM.CarregaUsuario(vsenha: string): string;
var
  nome: string;
begin
  nome := fprinciServRest.CarregaUsuario(vsenha);
  result := nome;

end;

function TSM.CarregaAtendimentos(vorcchave: string; VTrmCodigo: string): boolean;
begin
  result := fprinciServRest.CarregaAtendimentos(vorcchave, VTrmCodigo);
end;

function TSM.IncluirNovoItem(Produto: Integer; Quantidade: double; complemento: string; unidade: string; pun: Integer;
  vorcchave: string; vUsrCodigo: string; VTrmCodigo: string; vIDMesa: string): string;
var
  retorno: string;
Begin
  retorno := fprinciServRest.IncluirNovoItem(Produto, Quantidade, complemento, unidade, pun, vorcchave, vUsrCodigo,
    VTrmCodigo, vIDMesa);
  result := retorno;
End;

function TSM.BuscaqPro(vProCodigo: string): string;
var
  retorno: string;
begin
  retorno := fprinciServRest.BuscaqPro(vProCodigo);
  result := retorno;
end;

function TSM.BuscaPro(vProCodigo: string): string;
var
  vpronome: string;
begin
  vpronome := fprinciServRest.BuscaPro(vProCodigo);
  result := vpronome;
end;

function TSM.BuscaAtendimentos(VTrmCodigo: string; vIDMesa: string; vClbCodigo: string): string;
var
  vorcchave: String;
begin
  vorcchave := fprinciServRest.BuscaAtendimentos(VTrmCodigo, vIDMesa, vClbCodigo);
  result := vorcchave;
end;

procedure TSM.consultaPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  fprinciServRest.erros.Lines.Add('consulta: ' + datetimetostr(now) + ': ' + E.Message);
end;

procedure TSM.DSServerModuleCreate(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i] is TZQuery then
    begin
      (self.Components[i] as TZQuery).Connection := fprinciServRest.conexao;
    end;
    if self.Components[i] is tztable then
    begin
      (self.Components[i] as tztable).Connection := fprinciServRest.conexao;
    end;

  end;

end;

procedure TSM.immPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  fprinciServRest.erros.Lines.Add('imm: ' + datetimetostr(now) + ': ' + E.Message);
end;

procedure TSM.iocPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  fprinciServRest.erros.Lines.Add('ioc: ' + datetimetostr(now) + ': ' + E.Message);
end;

procedure TSM.itoPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  fprinciServRest.erros.Lines.Add('ito: ' + datetimetostr(now) + ': ' + E.Message);
end;

function TSM.Novoorcamento(VTrmCodigo, vIDMesa, vClbCodigo: string): string;
var
  vorcchave: string;
begin
  vorcchave := fprinciServRest.Novoorcamento(VTrmCodigo, vIDMesa, vClbCodigo);
  result := vorcchave;
end;

procedure TSM.orcPostError(DataSet: TDataSet; E: EDatabaseError; var Action: TDataAction);
begin
  fprinciServRest.erros.Lines.Add('Erro ao criar orc: ' + datetimetostr(now) + ': ' + E.Message);
end;

end.
