unit GourmetAIQ.Service.RestExec;

// Helpers para executar IRequest (do RESTRequest4Delphi) com retry uniforme.
//
// Padrao replicado em todos os controllers antes desta refatoracao:
//   try
//     Request.Execute;
//   except
//     Sleep(2000);
//     Request.Execute;  // segunda tentativa apos pausa
//   end;
//
// Aqui ele fica em um lugar so. Cada operacao (GET/POST/PUT/DELETE) tem
// sua propria helper para nao precisar passar o metodo como parametro.
//
// IMPORTANTE: estas helpers RELANCAM a excecao se a segunda tentativa tambem
// falhar. Quem chama eh responsavel por capturar (geralmente o
// HealthMonitor.Track ja faz isso).

interface

uses
  RESTRequest4D;

const
  RETRY_DELAY_MS = 2000;

function ExecGet(ARequest: IRequest): IResponse;
function ExecPost(ARequest: IRequest): IResponse;
function ExecPut(ARequest: IRequest): IResponse;
function ExecDelete(ARequest: IRequest): IResponse;

implementation

uses
  Winapi.Windows;

function ExecGet(ARequest: IRequest): IResponse;
begin
  try
    Result := ARequest.Get;
  except
    Sleep(RETRY_DELAY_MS);
    Result := ARequest.Get; // se falhar de novo, propaga
  end;
end;

function ExecPost(ARequest: IRequest): IResponse;
begin
  try
    Result := ARequest.Post;
  except
    Sleep(RETRY_DELAY_MS);
    Result := ARequest.Post;
  end;
end;

function ExecPut(ARequest: IRequest): IResponse;
begin
  try
    Result := ARequest.Put;
  except
    Sleep(RETRY_DELAY_MS);
    Result := ARequest.Put;
  end;
end;

function ExecDelete(ARequest: IRequest): IResponse;
begin
  try
    Result := ARequest.Delete;
  except
    Sleep(RETRY_DELAY_MS);
    Result := ARequest.Delete;
  end;
end;

end.
