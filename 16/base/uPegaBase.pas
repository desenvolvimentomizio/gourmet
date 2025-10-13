unit uPegaBase;

interface

uses
  System.Classes, Vcl.Controls, Uni;

type

  /// <summary> Define a forma dos frames.</summary>
  TFormaFrame = (ffFrame, ffDocado, ffFormu);

  /// <summary> Define o modo de pesquisa e manutenção dos frames.</summary>
  TModoCarga = (modoPesquisa, modoEdicao, modoPesqEdicao, modoInclusao);

  /// <summary> Record para armazenar os dados de Acesso para compartilhar pelo sistema.</summary>
  TDadosConexaoFTP = record
    Host: String;
    Porta: Integer;
    usuario: string;
    Senha: string;
    Arquivo: string;
    PastaOrigem: string;
    PastaDestino: string;
  end;

  /// <summary> Record para armazenar os dados de Acesso para compartilhar pelo sistema.</summary>
  TAcesso = record
    IdAcesso: Integer;
    usuario: Integer;
    Filial: Integer;
    Terminal: Integer;
 //   Versao: String;
  end;

  /// <summary> Record para armazenar os parâmetros de carregamento dos Frames.</summary>
  TCargaFrame = record
    AOwner: TComponent;
    Handle: NativeUInt;
    Parent: TWinControl;
    Conexao: TUniConnection;
    Acesso: TAcesso;
    FormaFrame: TFormaFrame;
    ModoCarga: TModoCarga;
    IdModulo: String;
    Titulo: String;
    Modulo: String;
    Chave: String;
    ChaveMestre: String;
    Filtro: String;
    Aplicacao: String;
  end;

function CargaFrameTab(pAOwner: TComponent; pHandle: NativeUInt; pParent: TWinControl; pConexao: TUniConnection; pAcesso: TAcesso; pChave: String = ''): TCargaFrame;
function CargaFrameDocado(pAOwner: TComponent; pHandle: NativeUInt; pParent: TWinControl; pConexao: TUniConnection; pAcesso: TAcesso; pModulo, pFiltro, pChaveMestre: String;
  pModoCarga: TModoCarga): TCargaFrame;
function CargaFrameFormu(pAOwner: TComponent; pHandle: NativeUInt; pConexao: TUniConnection; pAcesso: TAcesso; pFiltro: String; pChaveMestre: String = '';
  pModoCarga: TModoCarga = modoPesqEdicao): TCargaFrame;

function CargaFormu(pAOwner: TComponent; pConexao: TUniConnection; pAcesso: TAcesso; pFiltro, pChave, pChaveMestre: String): TCargaFrame;

implementation

function CargaFrameTab(pAOwner: TComponent; pHandle: NativeUInt; pParent: TWinControl; pConexao: TUniConnection; pAcesso: TAcesso; pChave: String = ''): TCargaFrame;
begin
  Result.AOwner := pAOwner;
  Result.Handle := pHandle;
  Result.Parent := pParent;
  Result.Conexao := pConexao;
  Result.Acesso := pAcesso;

  Result.Chave := pChave;

  Result.FormaFrame := ffFrame;
  Result.ModoCarga := modoPesqEdicao;
end;

function CargaFrameDocado(pAOwner: TComponent; pHandle: NativeUInt; pParent: TWinControl; pConexao: TUniConnection; pAcesso: TAcesso; pModulo, pFiltro, pChaveMestre: String;
  pModoCarga: TModoCarga): TCargaFrame;
begin
  Result.AOwner := pAOwner;
  Result.Handle := pHandle;
  Result.Parent := pParent;
  Result.Conexao := pConexao;
  Result.Acesso := pAcesso;
  Result.Modulo := pModulo;
  Result.ChaveMestre := pChaveMestre;
  Result.Filtro := pFiltro;

  Result.FormaFrame := ffDocado;
  Result.ModoCarga := pModoCarga;

end;

function CargaFrameFormu(pAOwner: TComponent; pHandle: NativeUInt; pConexao: TUniConnection; pAcesso: TAcesso; pFiltro: String; pChaveMestre: String = '';
  pModoCarga: TModoCarga = modoPesqEdicao): TCargaFrame;
begin
  Result.AOwner := pAOwner;
  Result.Handle := pHandle;
  Result.Conexao := pConexao;
  Result.Acesso := pAcesso;
  Result.Filtro := pFiltro;
  Result.ChaveMestre := pChaveMestre;

  Result.FormaFrame := ffFormu;
  Result.ModoCarga := pModoCarga;
end;

function CargaFormu(pAOwner: TComponent; pConexao: TUniConnection; pAcesso: TAcesso; pFiltro, pChave, pChaveMestre: String): TCargaFrame;
begin
  Result.AOwner := pAOwner;
  Result.Conexao := pConexao;
  Result.Acesso := pAcesso;
  Result.Filtro := pFiltro;

  Result.Chave := pChave;
  Result.ChaveMestre := pChaveMestre;

end;

end.
