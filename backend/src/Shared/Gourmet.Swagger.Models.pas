unit Gourmet.Swagger.Models;

{ Modelos (schemas) para a documentacao OpenAPI/Swagger (gbswagger).
  Sao classes com propriedades published (RTTI) que espelham o JSON real de
  request/response de cada endpoint. Ao mudar um contrato, atualize aqui E na
  documentacao do controller correspondente. }

interface

type
  // -------- Auth --------
  TLoginRequest = class
  private
    Ftenant: string;
    Femail: string;
    Fpassword: string;
  published
    property tenant: string read Ftenant write Ftenant;
    property email: string read Femail write Femail;
    property password: string read Fpassword write Fpassword;
  end;

  TLoginResponse = class
  private
    Faccess_token: string;
    Ftoken_type: string;
    Fexpires_in: Integer;
  published
    property access_token: string read Faccess_token write Faccess_token;
    property token_type: string read Ftoken_type write Ftoken_type;
    property expires_in: Integer read Fexpires_in write Fexpires_in;
  end;

  // -------- Erro padrao --------
  TApiErrorModel = class
  private
    Ferror: string;
    Fmessage: string;
  published
    property error: string read Ferror write Ferror;
    property message: string read Fmessage write Fmessage;
  end;

  // -------- Clientes --------
  TClienteModel = class
  private
    Fid: Integer;
    Fnome: string;
    Fdocumento: string;
    Ftelefone: string;
    Femail: string;
  published
    property id: Integer read Fid write Fid;
    property nome: string read Fnome write Fnome;
    property documento: string read Fdocumento write Fdocumento;
    property telefone: string read Ftelefone write Ftelefone;
    property email: string read Femail write Femail;
  end;

  TClientesPageModel = class
  private
    Ftotal: Integer;
    Fpage: Integer;
    FpageSize: Integer;
    Fitems: TArray<TClienteModel>;
  published
    property total: Integer read Ftotal write Ftotal;
    property page: Integer read Fpage write Fpage;
    property pageSize: Integer read FpageSize write FpageSize;
    property items: TArray<TClienteModel> read Fitems write Fitems;
  end;

  // -------- Entidades --------
  TEntidadeRequest = class
  private
    Fdoc: string;
    Fnome: string;
    FtipoPessoa: string;
    Fie: string;
    Fpapeis: string;
  published
    property doc: string read Fdoc write Fdoc;
    property nome: string read Fnome write Fnome;
    /// F=Fisica, J=Juridica, O=Outros
    property tipoPessoa: string read FtipoPessoa write FtipoPessoa;
    property ie: string read Fie write Fie;
    /// CSV de papeis (tvicodigo): 1=Cliente,2=Fornecedor,4=Transportador
    property papeis: string read Fpapeis write Fpapeis;
  end;

  TEntidadeResolvidaModel = class
  private
    FidGlobal: Int64;
    FetdCodigoLocal: Integer;
    Freaproveitada: Boolean;
  published
    property idGlobal: Int64 read FidGlobal write FidGlobal;
    property etdCodigoLocal: Integer read FetdCodigoLocal write FetdCodigoLocal;
    property reaproveitada: Boolean read Freaproveitada write Freaproveitada;
  end;

implementation

end.
