unit uRecordsTEF;

interface

type
  TStatusVenda = (stsLivre, stsIniciada, stsEmPagamento, stsCancelada, stsAguardandoTEF, stsOperacaoTEF, stsFinalizada);


type

  TConfiguracaoTEF = record
    EstabelecimentoTipoTEF: string;
    EstabelecimentoCNPJ: String;
    EstabelecimentoRazaoSocial: String;
    TerminalCodEmpresa: String;
    TerminalCodFilial: String;
    TerminalCodTerminal: String;
    TerminalEnderecoServidor: String;
    TerminalOperador: String;
    TerminalPortaPinPad: String;
  end;

  /// <summary> Record armazenas dados da operação com TEF.</summary>
  TOperacaoTEF = record
    numero: Integer;
    Valor: Extended;
    Modalidade: Integer;
    Identificacao: String;
    Bandeira: String;
    AutorizacaoRetorno: String;
    DocumentoRetorno: String;
    ImagemComprovante1aVia: String;
    ImagemComprovante2aVia: String;
    QuantidadeParcela: String;
    TipoOperacao: String;
    TipoFinanciador: String;
    TipoCartao: String;
    Rede: String;
    Dia: String;
    /// <summary> Record armazenas dados da operação com TEF.</summary>
  end;

implementation

end.
