unit GourmetAIQ.service.constants;

interface

const

  Client_ID = 'pegasus';


  Developer_ID = 'daniel@pegasussistemas.com.br';
  Developer_Secret = 'p3g$su5S1st3ma%';

//  Cliente_Loja = 'daniel.pegasus@gmail.com';
//  Cliente_Senha = 'p3g$su5S1st3ma%';


//  Cliente_Loja = 'kuskao';
//  Cliente_Senha = 'kuskao@pizza';


  PATH_ID_LOJA = '/store?page=1&per_page=10';
  PATH_TOKEN = '/auth/token';

  // pedidos
  PATH_PEDIDOS = '/orders';
  PATH_PEDIDO_LIDO = '/orders/mark-as-read';
  PATH_PEDIDO_PRONTO = '/orders/mark-as-ready';

  // Item do Menu
  // GET
  PATH_ITENS = '/menu/_store/categories/_catergory/items';
  // PUT
  PATH_ITENS_STATUS = '/menu/_store/items/_itemUuid/toggle-status';

  // Grupos
  // GET POST
  PATH_GRUPOS = '/menu/_store/categories';
  // GET PUT DELETE
  PATH_GRUPOS_DETALHES = '/menu/_store/categories/_category';

  // tamanhos Alfredo - Item management
  // PUT
  PATH_TAMANHO = '/menu/_store/sizes/_size';
  // PUT
  PATH_TAMANHO_STATUS = '/menu/_store/sizes/_size/toggle-status';
  // PUT
  PATH_TAMANHO_STATUS_DIA = '/menu/_store/sizes/_size/day-block';

  // 1 MINUTOS = 60 SEGUNDOS
  // LIMITE DO AIQUEFOME 20 REQUISICOES POR MINUTO
  TEMPO_PEDIDOS = 3;

  // esta é de homologavacao
  // urlbase = 'http://sandbox-raimundo.aiqfome.com:8889/alfredo';
  // Client_Secret = '69014ac1-c8a7-4a11-b891-7290558fb18b';



  // esta é de producao
  urlbase = 'https://purple-box.aiqfome.com/alfredo';
  Client_Secret = '33bdbf69-7623-4b50-8172-68f5d23840d9';

  // esta é de producao CATALOGO
  // urlbase = 'https://purple-box.aiqfome.com/alfredo';
  // Client_Secret = '33bdbf69-7623-4b50-8172-68f5d23840d9';



implementation

end.
