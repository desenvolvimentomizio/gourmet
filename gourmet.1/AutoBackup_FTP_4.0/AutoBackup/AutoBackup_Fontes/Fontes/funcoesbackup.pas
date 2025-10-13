unit funcoesbackup;

interface

uses
  Inifiles, Registry, ShellAPI, WinSvc, Windows, Vcl.Forms, SysUtils,
  uAutoBackup, uConexaoModulo;


implementation

uses uConfigura;

function ExecutaBackup(ServidorCli, BaseCli, UsuarioCli, SenhaCli, DirCli,
  DirCli2: string; ServidorEnvio, ServidorBackup, UsuarioEnvio, SenhaEnvio,
  UsuarioBackup, SenhaBackup: string; BaseEnvio, BaseBackup: string): boolean;

var { Controle de Hora Inicial e Final }
  HoraInicia, HoraFinal: string;

var { Informa��es do Cliente }
  ServerCli, BancoCli, LoginCli, SenhaCliente, DirBackupCli, DirBackupCli2,
    Cnpj, Apelido: string;

var { Informa��es para conex�o com o servidor de Envio e consulta e escrita no Banco }
  ServerEnvio, ServerBackup, LoginEnvio, SenhaEnvioS, LoginBackup, SenhaBackupB,
    BaseEmpresa, BaseBackups: string;

var { Diretorios dos Bats }
  DirBatCopia, DirBatOrigem, DirBatXml, HoraBat, HoraBat2: string;

var { Complementares }
  OrigemArq, XmlArq: string;
  LocalLog, HoraUltimo: string;

var
  E: Exception;

begin

  
end;

end.
