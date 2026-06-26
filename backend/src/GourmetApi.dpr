program GourmetApi;

{
  Backend SaaS multi-tenant do ERP Gourmet.
  Stack: Delphi 13 + Horse + UniDAC + ACBr.

  Conceito de tenancy: 1 schema MySQL por cliente (modelo atual do ERP).
  Cada request resolve o tenant (claim do JWT) -> schema -> conexao UniDAC
  do pool daquele schema. O control-plane (saas_control) guarda o registro
  de tenants/usuarios/assinaturas.

  IMPORTANTE: este e o esqueleto da Fase A. Requer os pacotes Horse, UniDAC
  (Devart) e ACBr instalados na IDE. Veja README.md.
}

{$APPTYPE CONSOLE}

uses
  System.SysUtils,
  Horse,
  Horse.Jhonson,                 // body/response JSON
  Horse.CORS,                    // CORS p/ o frontend
  Gourmet.Config in 'Bootstrap\Gourmet.Config.pas',
  Gourmet.Database in 'Infra\Gourmet.Database.pas',
  Gourmet.ControlPlane in 'Infra\Gourmet.ControlPlane.pas',
  Gourmet.Middleware.Auth in 'Middlewares\Gourmet.Middleware.Auth.pas',
  Gourmet.Middleware.Tenant in 'Middlewares\Gourmet.Middleware.Tenant.pas',
  Gourmet.Shared.Errors in 'Shared\Gourmet.Shared.Errors.pas',
  Gourmet.Clientes.Repository in 'Modules\Clientes\Gourmet.Clientes.Repository.pas',
  Gourmet.Clientes.Service in 'Modules\Clientes\Gourmet.Clientes.Service.pas',
  Gourmet.Clientes.Controller in 'Modules\Clientes\Gourmet.Clientes.Controller.pas';

begin
  ReportMemoryLeaksOnShutdown := True;
  TConfig.Load;                                   // env + config.ini

  // --- Middlewares globais (ordem importa) ---
  THorse.Use(Jhonson);
  THorse.Use(CORS);
  THorse.Use(HandleErrors);                       // captura excecoes -> JSON padrao
  THorse.Use(EnsureAuthenticated);                // valida JWT (exceto rotas publicas)
  THorse.Use(ResolveTenant);                      // claim tenant -> schema/conexao

  // --- Healthcheck (publico) ---
  THorse.Get('/health',
    procedure(Req: THorseRequest; Res: THorseResponse)
    begin
      Res.Send('{"status":"ok","service":"gourmet-api","version":"0.1.0"}')
         .ContentType('application/json');
    end);

  // --- Modulos do ERP (cada um registra suas rotas) ---
  TClientesController.RegisterRoutes;
  // TFornecedoresController.RegisterRoutes;  // proximas fases
  // TProdutosController.RegisterRoutes;
  // ...

  Writeln(Format('Gourmet API ouvindo em http://localhost:%d', [TConfig.Port]));
  THorse.Listen(TConfig.Port);
end.
