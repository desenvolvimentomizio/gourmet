unit GourmetAIQ.Service.Constants;
// Constantes da integracao AIQFome.
//
// IMPORTANTE: nao mais armazena credenciais. Os identificadores secretos
// (client_secret, developer_secret, senha da loja) sao carregados em runtime
// pelo GourmetAIQ.Service.Config a partir do gourmeterp.ini.
//
// Os PATH_* abaixo sao parte do contrato publico da API AIQFome, nao sao
// segredos -- ficam como constantes mesmo.
interface
const
  // ===== Endpoints da API AIQFome =====
  PATH_ID_LOJA          = '/store?page=1&per_page=10';
  PATH_TOKEN            = '/auth/token';
  // Pedidos
  PATH_PEDIDOS          = '/orders';
  PATH_PEDIDO_LIDO      = '/orders/mark-as-read';
  PATH_PEDIDO_PRONTO    = '/orders/mark-as-ready';
  // Item do menu
  PATH_ITENS            = '/menu/_store/categories/_catergory/items';
  PATH_ITENS_STATUS     = '/menu/_store/items/_itemUuid/toggle-status';
  // Grupos / categorias
  PATH_GRUPOS           = '/menu/_store/categories';
  PATH_GRUPOS_DETALHES  = '/menu/_store/categories/_category';
  // Tamanhos
  PATH_TAMANHO          = '/menu/_store/sizes/_size';
  PATH_TAMANHO_STATUS   = '/menu/_store/sizes/_size/toggle-status';
  PATH_TAMANHO_STATUS_DIA = '/menu/_store/sizes/_size/day-block';
  // Limite AIQFome documentado: 20 requisicoes / minuto.
  // Tick do timer eh 1 seg; processamento real ocorre a cada TEMPO_PEDIDOS ticks.
  TEMPO_PEDIDOS = 3;
  urlbase = 'https://purple-box.aiqfome.com/alfredo';
  Client_ID = 'pegasus';

  Developer_ID = 'daniel@pegasussistemas.com.br';
  Developer_Secret = 'p3g$su5S1st3ma%';

  Client_Secret = '33bdbf69-7623-4b50-8172-68f5d23840d9';

implementation


end.
