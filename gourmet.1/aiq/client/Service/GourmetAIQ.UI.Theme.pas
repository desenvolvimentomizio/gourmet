unit GourmetAIQ.UI.Theme;

// Paleta de cores VS Code Dark+ centralizada.
//
// O .dfm original usa cor $002D2D2D em varios pontos -- coincidentemente o
// mesmo valor do "editor sidebar" do VS Code. Esta unit consolida as outras
// cores para nao ficarem espalhadas como literais ($00xxxxxx) pelo codigo.
//
// Aplicacao do tema:
//   1. Project Options -> Appearance -> Custom Styles -> habilitar "Windows10 Dark"
//      (esta etapa eh feita uma vez no IDE e persiste no .dproj).
//   2. No startup do app, ApplyDarkTheme tenta setar 'Windows10 Dark'; se nao
//      estiver disponivel naquela instalacao do Delphi, faz fallback para
//      'Windows' (default) sem quebrar a aplicacao.
//   3. ApplyToForm() ajusta TDBGrid (que VCL Style nao pinta integralmente) e
//      o TitleBar do Windows 10/11.

interface

uses
  Vcl.Graphics, Vcl.Forms, Vcl.DBGrids, Vcl.Grids, Vcl.Themes;

const
  // ===== Paleta VS Code Dark+ =====
  // Em Delphi, TColor = $00BBGGRR. Mantenho o hex do CSS no comentario
  // ao lado para conferencia visual.

  // Backgrounds (todos cinzas neutros, RR=GG=BB, conversao trivial)
  THEME_BG_EDITOR        = $001E1E1E;  // #1E1E1E  editor body
  THEME_BG_SIDEBAR       = $00262525;  // #252526  activity / sidebar
  THEME_BG_TITLEBAR      = $003C3C3C;  // #3C3C3C  title bar
  THEME_BG_PANEL         = $00302D2D;  // #2D2D30  panel / status bar
  THEME_BG_HOVER         = $002E2D2A;  // #2A2D2E  hover row
  THEME_BG_HEADER        = $00252526;  // #252526  cabecalhos pretos suaves

  // Foregrounds
  THEME_FG_PRIMARY       = $00D4D4D4;  // #D4D4D4
  THEME_FG_MUTED         = $00858585;  // #858585
  THEME_FG_DISABLED      = $005A5A5A;  // #5A5A5A

  // Acentos
  THEME_ACCENT_BLUE      = $00CC7A00;  // #007ACC  azul "selected tab"
  THEME_ACCENT_GREEN     = $004FB04F;  // #4FB04F  status OK
  THEME_ACCENT_YELLOW    = $002187B8;  // #F1D924  warning
  THEME_ACCENT_RED       = $004343EB;  // #EB4343  error / loja fechada
  THEME_ACCENT_ORANGE    = $002596CE;  // #CE9625  loja aberta com pedido

  // Bordas e grid
  THEME_BORDER           = $00474747;  // #474747
  THEME_GRID_LINES       = $00463F3F;  // #3F3F46

procedure ApplyDarkTheme;
procedure ApplyToForm(AForm: TForm);
procedure ApplyToDBGrid(AGrid: TDBGrid);

implementation

uses
  System.SysUtils, Winapi.Windows, Winapi.Dwmapi,
  Vcl.Controls, Vcl.StdCtrls, Vcl.ExtCtrls,
  GourmetAIQ.Service.Log;

// ---- Tenta aplicar Windows10 Dark; se nao registrado, fica no default. ----
procedure ApplyDarkTheme;
const
  CANDIDATES: array[0..3] of string = (
    'Windows10 Dark', 'Windows11 Dark', 'Carbon', 'Glow');
var
  i: Integer;
  vApplied: Boolean;
begin
  vApplied := False;
  for i := Low(CANDIDATES) to High(CANDIDATES) do
  begin
    try
      if TStyleManager.TrySetStyle(CANDIDATES[i], False) then
      begin
        Log.Info('UI.Theme: aplicado VCL Style "' + CANDIDATES[i] + '"');
        vApplied := True;
        Break;
      end;
    except
      on E: Exception do
        Log.Warn('UI.Theme: falha ao aplicar "' + CANDIDATES[i] + '": ' + E.Message);
    end;
  end;
  if not vApplied then
    Log.Warn('UI.Theme: nenhum VCL Style escuro disponivel. ' +
             'No IDE: Project > Options > Appearance > Custom Styles > marcar "Windows10 Dark".');
end;

// ---- Title bar escura no Windows 10 build 19041+ / Windows 11 ----
const
  DWMWA_USE_IMMERSIVE_DARK_MODE = 20;

procedure SetDarkTitleBar(AWnd: HWND);
var
  vUseDark: BOOL;
begin
  if AWnd = 0 then Exit;
  vUseDark := True;
  // Nao falha em Windows mais antigo: o DwmSetWindowAttribute apenas devolve erro.
  DwmSetWindowAttribute(AWnd, DWMWA_USE_IMMERSIVE_DARK_MODE, @vUseDark, SizeOf(vUseDark));
end;

procedure ApplyToForm(AForm: TForm);
begin
  if AForm = nil then Exit;
  SetDarkTitleBar(AForm.Handle);
end;

procedure ApplyToDBGrid(AGrid: TDBGrid);
begin
  if AGrid = nil then Exit;
  AGrid.Color := THEME_BG_EDITOR;
  AGrid.Font.Color := THEME_FG_PRIMARY;
  AGrid.FixedColor := THEME_BG_TITLEBAR;
  AGrid.TitleFont.Color := THEME_FG_PRIMARY;
  AGrid.GradientEndColor := THEME_BG_PANEL;
  AGrid.GradientStartColor := THEME_BG_TITLEBAR;
  AGrid.DrawingStyle := gdsClassic;
  AGrid.Options := AGrid.Options - [dgRowLines] + [dgRowSelect];
end;

end.
