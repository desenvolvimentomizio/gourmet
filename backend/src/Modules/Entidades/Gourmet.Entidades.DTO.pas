unit Gourmet.Entidades.DTO;

{ Tipos de dados do modulo Entidades. }

interface

type
  /// Dados de entrada para cadastro/resolucao de uma entidade.
  TEntidadeInput = record
    Doc: string;          // CNPJ/CPF (com ou sem mascara) ou vazio
    Nome: string;
    TipoPessoa: string;   // 'F','J','O'
    Ie: string;
    Papeis: string;       // CSV de tvicodigo (1=cli,2=forn,4=transp,...)
  end;

  /// Identidade global resolvida.
  TEntidadeGlobal = record
    IdGlobal: Int64;
    ChaveUnica: string;
    TipoChave: string;    // 'CNPJ','CPF','CODIGO_UNICO'
    Doc: string;
    Nome: string;
  end;

  /// Resultado da resolucao + vinculo no tenant.
  TEntidadeResolvida = record
    IdGlobal: Int64;
    EtdCodigoLocal: Integer;
    Reaproveitada: Boolean;  // true se a identidade global ja existia
  end;

implementation

end.
