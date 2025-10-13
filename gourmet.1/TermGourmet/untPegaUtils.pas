unit untPegaUtils;

interface

uses
  System.Classes, System.SysUtils, Winapi.Windows, Vcl.Forms, uni, UntPegaConst, math,
  Vcl.Controls, Vcl.Grids, Vcl.DBCtrls, Vcl.DBGrids,Vcl.StdCtrls;

procedure DoUnLoadPackage(AOwner: TComponent; Module: HModule);

function mrfrImprimir(Dados: TUniDataSource; DirRelatorio: string; TipoImpressao: Integer): string;
function TBRound(Value: Extended; Decimals: Integer): Extended;
function Converte(cmd: string): string;

implementation

uses
  UntDmDados;

procedure DoUnLoadPackage(AOwner: TComponent; Module: HModule);
var
  i: Integer;
  m: TMemoryBasicInformation;
begin
  for i := AOwner.ComponentCount - 1 downto 0 do
  begin
    VirtualQuery(GetClass(AOwner.Components[i].ClassName), m, SizeOf(m));
    if (Module = 0) or (HModule(m.AllocationBase) = Module) then
      AOwner.Components[i].Free;
  end;
  UnRegisterModuleClasses(Module);
  System.Classes.UnRegisterClass(TMemo);
  System.Classes.UnRegisterClass(Tdbmemo);
  System.Classes.UnRegisterClass(TCustomdbgrid);
  UnLoadPackage(Module);
end;

function Converte(cmd: String): String;
var
  A: Integer;
begin
  Result := '';
  for A := 1 to length(cmd) do
  begin
    if not(cmd[A] in ['A' .. 'Z', 'a' .. 'z', '0' .. '9', ' ', '.', ',', '/', '?', '<', '>', ';', ':', ']', '[', '{', '}', '\', '|', '=', '+', '-', '_', ')', '(', '*', '&', '^',
      '%', '$', '#', '@', '!', '~', ']']) then
      Result := Result + '#' + IntToStr(ord(cmd[A])) + ' '
    else
      Result := Result + cmd[A] + ' ';
  end;
end;

function mrfrImprimir(Dados: TUniDataSource; DirRelatorio: String; TipoImpressao: Integer): String;
type
  Impressao = function(AOwner: TComponent; Conexao: TUniConnection; vtabela: TUniDataSource; DirRelatorio: String; Impressora: String = ''; vUsuCodigo: string = ''): string;
var
  Pack: Cardinal;
  Exec: Impressao;
  vNomeRotina: String;
begin
  case TipoImpressao of
    tiImprimir:
      vNomeRotina := 'mrfrImpressao';
    tiGerador:
      vNomeRotina := 'mrfrGerador';
    tiImprimirDireto:
      vNomeRotina := 'mrfrImpressaoDireta';
  end;

  Pack := LoadPackage('modulos\mrfr.bpl');
  if Pack <> 0 then
    try
      @Exec := GetProcAddress(Pack, PChar(vNomeRotina));

      if Assigned(Exec) then
        Result := Exec(Application, DmDados.Conexao, Dados, DirRelatorio, DmDados.Usuario.TciTciPorta, IntToStr(DmDados.Usuario.ClbCodigo));

    finally
      // DoUnLoadPackage(Application, Pack);
    end;
end;

function TBRound(Value: Extended; Decimals: Integer): Extended;
var
  vFator, vFracao: Extended;
begin
  vFator := IntPower(10, Decimals);
  Value := StrToFloat(FloatToStr(Value * vFator));
  Result := Int(Value);
  vFracao := Frac(Value);

  if (vFracao >= 0.5) then
    Result := Result + 1
  else If (vFracao <= -0.5) then
    Result := Result - 1;

  Result := Result / vFator;

end;

end.
