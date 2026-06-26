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
/// Envia resposta de erro JSON padronizada (uso em short-circuit de middleware).
procedure RespondError(Res: THorseResponse; AStatus: Integer; const ACode, AMessage: string);

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

procedure RespondError(Res: THorseResponse; AStatus: Integer; const ACode, AMessage: string);
var
  LJson: TJSONObject;
begin
  LJson := TJSONObject.Create;
  LJson.AddPair('error', ACode);
  LJson.AddPair('message', AMessage);
  Res.Status(AStatus).Send<TJSONObject>(LJson);
end;

procedure HandleErrors(Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin
  try
    Next();
  except
    // sinais de controle do Horse: deixam passar (resposta ja enviada)
    on E: EHorseCallbackInterrupted do
      raise;
    on E: EHorseException do
      raise;
    on E: EApiError do
      RespondError(Res, E.Status, E.ClassName, E.Message);
    on E: Exception do
      // TODO: enviar para o logger central/observabilidade
      RespondError(Res, 500, 'InternalError', E.Message);
  end;
end;

end.
