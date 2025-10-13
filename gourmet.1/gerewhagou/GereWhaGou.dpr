program GereWhaGou;

{$I cef.inc}

uses
  uCEFApplication,
  Vcl.Forms,
  MidasLib,
  uFprinciWhaGou in 'uFprinciWhaGou.pas' {FprinciWhaGou};

{$R *.res}

begin

//  ReportMemoryLeaksOnShutdown := True;

  CreateGlobalCEFApp;

  GlobalCEFApp.FrameworkDirPath := 'cef';
  GlobalCEFApp.ResourcesDirPath := 'cef';
  GlobalCEFApp.LocalesDirPath := 'cef\locales';
  GlobalCEFApp.cache := 'cef\cache';
//  GlobalCEFApp.UserDataPath := 'cef\User Data';
  GlobalCEFApp.Locale := 'pt-BR';
  GlobalCEFApp.AcceptLanguageList := 'pt-BR,pt-BR;q=0.9,en-US;q=0.8,en;q=0.7';

  if GlobalCEFApp.StartMainProcess then
  begin
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TFprinciWhaGou, FprinciWhaGou);
  Application.Run;
  end;
  DestroyGlobalCEFApp;

end.
