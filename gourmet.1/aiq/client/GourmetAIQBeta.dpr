program GourmetAIQBeta;

uses
  madExcept,
  Vcl.Forms,
  Vcl.Themes,
  Vcl.Styles,
  uFormGourmetAIQ in 'uFormGourmetAIQ.pas' {FormGourmetAIQ},
  GourmetAIQ.Model.Entity.PedidoAIQGourmet in '..\Model\Entity\GourmetAIQ.Model.Entity.PedidoAIQGourmet.pas',
  GourmetServer.Model.Entity.aiq.AIQCFG in '..\Model\Entity\GourmetServer.Model.Entity.aiq.AIQCFG.pas',
  GourmetAIQ.Model.Entity.AIQ in '..\Model\Entity\GourmetAIQ.Model.Entity.AIQ.pas',
  GourmetAIQ.Controller.AIQ in 'Controller\GourmetAIQ.Controller.AIQ.pas',
  GourmetAIQ.Controller.AIQSRV in 'Controller\GourmetAIQ.Controller.AIQSRV.pas',
  GourmetAIQ.Controller.CCX in 'Controller\GourmetAIQ.Controller.CCX.pas',
  GourmetAIQ.Controller.cfgaiq in 'Controller\GourmetAIQ.Controller.cfgaiq.pas',
  GourmetAIQ.Controller.CZN in 'Controller\GourmetAIQ.Controller.CZN.pas',
  GourmetAIQ.Controller.PedidoAIQ in 'Controller\GourmetAIQ.Controller.PedidoAIQ.pas',
  GourmetAIQ.Controller.PedidoAIQGourmet in 'Controller\GourmetAIQ.Controller.PedidoAIQGourmet.pas',
  GourmetAIQ.DataModulo.AIQ in 'DataModule\GourmetAIQ.DataModulo.AIQ.pas' {DMAIQ: TDataModule},
  GourmetAIQ.DataModulo.ccx in 'DataModule\GourmetAIQ.DataModulo.ccx.pas' {DMccx: TDataModule},
  GourmetAIQ.DataModulo.cfgaiq in 'DataModule\GourmetAIQ.DataModulo.cfgaiq.pas' {DMcfgaiq: TDataModule},
  GourmetAIQ.DataModulo.Connection in 'DataModule\GourmetAIQ.DataModulo.Connection.pas',
  GourmetAIQ.DataModulo.czn in 'DataModule\GourmetAIQ.DataModulo.czn.pas' {DMczn: TDataModule},
  GourmetAIQ.DataModulo.grp in 'DataModule\GourmetAIQ.DataModulo.grp.pas' {DMgrp: TDataModule},
  GourmetAIQ.DataModulo.PedidoAIQ in 'DataModule\GourmetAIQ.DataModulo.PedidoAIQ.pas' {DMPedidoAIQ: TDataModule},
  GourmetAIQ.DataModulo.PedidoAIQGourmet in 'DataModule\GourmetAIQ.DataModulo.PedidoAIQGourmet.pas' {DMPedidoAIQGourmet: TDataModule},
  GourmetAIQ.service.authenticationAIQ in 'Service\GourmetAIQ.service.authenticationAIQ.pas',
  GourmetAIQ.Service.Config in 'Service\GourmetAIQ.Service.Config.pas',
  GourmetAIQ.Service.Constants in 'Service\GourmetAIQ.Service.Constants.pas',
  GourmetAIQ.service.funcoes in 'Service\GourmetAIQ.service.funcoes.pas',
  GourmetAIQ.Service.HealthMonitor in 'Service\GourmetAIQ.Service.HealthMonitor.pas',
  GourmetAIQ.Service.Log in 'Service\GourmetAIQ.Service.Log.pas',
  GourmetAIQ.Service.RestExec in 'Service\GourmetAIQ.Service.RestExec.pas',
  GourmetAIQ.Service.Worker in 'Service\GourmetAIQ.Service.Worker.pas',
  GourmetAIQ.UI.Theme in 'Service\GourmetAIQ.UI.Theme.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  // Aplica VCL Style escuro antes de criar o form. ApplyDarkTheme tenta
  // 'Windows10 Dark' e cai pra fallback se nao registrado.
  //
  // ATIVACAO DO ESTILO (passo unico no IDE):
  //   Project > Options > Appearance > Custom Styles > marcar "Windows10 Dark"
  //   e Salvar. O IDE escreve as referencias corretas no .dproj e linka o
  //   .vsf como recurso. Sem esse passo, o ApplyDarkTheme nao acha o estilo
  //   e cai no fallback (logado em gourmetaiq.log).
  //
  //   NUNCA editar Custom_Styles/Custom_Styles_Active a mao no .dproj --
  //   isso quebra a tarefa "CreateRcFile" do MSBuild com IndexOutOfRange,
  //   porque ela espera o .vsf linkado e nao apenas o nome.
  ApplyDarkTheme;

  Application.CreateForm(TFormGourmetAIQ, FormGourmetAIQ);
  Application.Run;
end.
