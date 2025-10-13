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
  TOperacaoTEF = class(TObject)
     private
      fnumero: Integer;
      fValor: Extended;
      fModalidade: Integer;
      fIdentificacao: String;
      fBandeira: String;
      fAutorizacaoRetorno: String;
      fDocumentoRetorno: String;
      fImagemComprovante1aVia: String;
      fImagemComprovante2aVia: String;
      fQuantidadeParcela: String;
      fTipoOperacao: String;
      fTipoFinanciador: String;
      fTipoCartao: String;
      fRede: String;
      fDia: String;
      fHora: String;
    published
      property numero: Integer read fnumero write fnumero;
      property Valor: Extended read fValor write fValor;
      property Modalidade: Integer read fModalidade write fModalidade;
      property Identificacao: String read fIdentificacao write fIdentificacao;
      property Bandeira: String read fBandeira write fBandeira;
      property AutorizacaoRetorno: String read fAutorizacaoRetorno write fAutorizacaoRetorno;
      property DocumentoRetorno: String read fDocumentoRetorno write fDocumentoRetorno;
      property ImagemComprovante1aVia: String read fImagemComprovante1aVia write fImagemComprovante1aVia;
      property ImagemComprovante2aVia: String read fImagemComprovante2aVia write fImagemComprovante2aVia;
      property QuantidadeParcela: String read fQuantidadeParcela write fQuantidadeParcela;
      property TipoOperacao: String read fTipoOperacao write fTipoOperacao;
      property TipoFinanciador: String read fTipoFinanciador write fTipoFinanciador;
      property TipoCartao: String read fTipoCartao write fTipoCartao;
      property Rede: String read fRede write fRede;
      property Dia: String read fdia write fdia;
      property Hora: String read fhora write fhora;
     end;

    /// <summary> Record armazenas dados da operação com TEF.</summary>




implementation


end.
