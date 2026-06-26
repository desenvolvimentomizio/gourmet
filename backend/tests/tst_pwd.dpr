program tst_pwd;
{$APPTYPE CONSOLE}
uses System.SysUtils, Gourmet.Password in '..\src\Shared\Gourmet.Password.pas';
var h: string;
begin
  h := TPassword.Hash('Senha@123');
  Writeln('hash=', Copy(h,1,40), '...');
  if TPassword.Verify('Senha@123', h) then Writeln('OK   verify senha correta')
  else begin Writeln('FAIL verify senha correta'); ExitCode:=1; end;
  if not TPassword.Verify('errada', h) then Writeln('OK   rejeita senha errada')
  else begin Writeln('FAIL rejeita senha errada'); ExitCode:=1; end;
  // dois hashes da mesma senha devem diferir (salt aleatorio)
  if TPassword.Hash('x') <> TPassword.Hash('x') then Writeln('OK   salt aleatorio (hashes diferem)')
  else begin Writeln('FAIL salt'); ExitCode:=1; end;
  Writeln('exitcode=', ExitCode);
end.
