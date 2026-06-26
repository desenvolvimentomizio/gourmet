unit Gourmet.Shared.Errors;

{ Tratamento centralizado de excecoes -> resposta JSON padronizada.
  Elimina o anti-padrao do legado (except vazio): aqui todo erro vira
  uma resposta consistente e logavel, nunca silenciado. }

interface

uses
  System.SysUtils, Horse;

type
  /// Erro de regra de negocio com status HTTP explicito (4xx).
  EApiError = class(Exception)
  private
    FStatus: Integer;
  public
    constructor Create(AStatus: Integer; const AMessage: string);
    property Status: Integer read FStatus;
  end;

  EUnauthorized = class(EApiError)
    constructor Create(const AMessage: string = 'Nao autenticado');
  end;

  EForbidden = class(EApiError)
    constructor Create(const AMessage: string = 'Acesso negado');
  end;

  ENotFound = class(EApiError)
    constructor Create(const AMessage: string = 'Recurso nao encontrado');
  end;

procedure HandleErrors(Req: THorseRequest; Res: THorseResponse; Next: TProc);

implementation

uses
  System.JSON;

constructor EApiError.Create(AStatus: Integer; const AMessage: string);
begin
  inherited Create(AMessage);
  FStatus := AStatus;
end;

constructor EUnauthorized.Create(const AMessage: string);
begin
  inherited Create(401, AMessage);
end;

constructor EForbidden.Create(const AMessage: string);
begin
  inherited Create(403, AMessage);
end;

constructor ENotFound.Create(const AMessage: string);
begin
  inherited Create(404, AMessage);
end;

procedure SendError(Res: THorseResponse; AStatus: Integer; const ACode, AMessage: string);
var
  LJson: TJSONObject;
begin
  LJson := TJSONObject.Create;
  LJson.AddPair('error', ACode);
  LJson.AddPair('message', AMessage);
  Res.Send<TJSONObject>(LJson).Status(AStatus);
end;

procedure HandleErrors(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  try
    Next();
  except
    on E: EApiError do
      SendError(Res, E.Status, E.ClassName, E.Message);
    on E: Exception do
      // TODO Fase A: enviar para o logger central/observabilidade
      SendError(Res, 500, 'InternalError', E.Message);
  end;
end;

end.
