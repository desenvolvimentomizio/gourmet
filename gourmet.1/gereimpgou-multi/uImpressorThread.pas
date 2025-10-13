unit uImpressorThread;

interface

uses System.Classes, SysUtils;

Function ConfiguraModeloImpressora(ModeloImpressora: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function IniciaPorta(Porta: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function FechaPorta: Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeBmpEspecial(Name: Ansistring; XScale: Integer; YScale: Integer; Angle: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function AcionaGuilhotina(Modo: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function Le_Status: Integer; Stdcall; Far; External 'MP2032.DLL';
Function HabilitaEsperaImpressao(Flag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
type
  TSendThread = class(TThread)
  private
    FRetorno: Integer;
    Fporta: string;
    Farquivo: string;
    Fidentificacao: string;
    Ftcicodigo: string;
    function EstadoMP2032(vporta: string): Integer;
    function ConsultaImpressora(Porta: string): String;

  protected
    procedure Execute; override;
  public

    property retorno: Integer read FRetorno write FRetorno;
    property Porta: string read Fporta write Fporta;
    property arquivo: string read Farquivo write Farquivo;
    property identificacao: string read Fidentificacao write Fidentificacao;
    property tcicodigo: string read Ftcicodigo write Ftcicodigo;

    constructor create(const CreateSuspended: boolean; const Porta: string; const arquivo: string; const tcicodigo: string; const identificacao: string);

  end;

implementation

uses
  ufprincigereimpgou;

constructor TSendThread.create(const CreateSuspended: boolean; const Porta: string; const arquivo: string; const tcicodigo: string; const identificacao: string);
begin

  FRetorno := 0;
  Fporta := Porta;
  Farquivo := arquivo;
  Ftcicodigo := tcicodigo;
  Fidentificacao := identificacao;

  inherited create(CreateSuspended);

  FreeOnTerminate := True;

end;

procedure TSendThread.Execute;
var
  vlRetorno: Integer;
begin

  while True do
  begin
    FRetorno := ConfiguraModeloImpressora(7);
    HabilitaEsperaImpressao(1);
    FRetorno := IniciaPorta(Fporta);
    vlRetorno := EstadoMP2032(Fporta);
    if vlRetorno = 24 then
    begin
      fPrinciGereImpGou.AjustaPainelImpressora(Ftcicodigo, Fidentificacao, Fporta, 28);
      vlRetorno := IniciaPorta(Fporta);

      sleep(200);
      vlRetorno := EstadoMP2032(Fporta);
      sleep(200);

      if vlRetorno = 24 then

      begin

        vlRetorno := ImprimeBmpEspecial(pchar(Farquivo), 80, 80, 0);
        sleep(1000);
      end
      else
        vlRetorno := 0;

      if vlRetorno = 24 then
      begin

        vlRetorno := AcionaGuilhotina(0);
        FechaPorta;
        fPrinciGereImpGou.AjustaPainelImpressora(Ftcicodigo, Fidentificacao, Fporta, vlRetorno);
        break;
      end;

      vlRetorno := EstadoMP2032(Fporta);

      fPrinciGereImpGou.AjustaPainelImpressora(Ftcicodigo, Fidentificacao, Fporta, vlRetorno);

    end
    else
    begin
      fPrinciGereImpGou.AjustaPainelImpressora(Ftcicodigo, Fidentificacao, Fporta, vlRetorno);
    end;
    sleep(3000);
  end;

end;

function TSendThread.EstadoMP2032(vporta: string): Integer;
Var
  vu: string;
  vlRetorno, i_retorno: Integer;
  s_cmdtx: string;
  i, U, E: Integer;
Begin

  vlRetorno := ConfiguraModeloImpressora(7);
  vlRetorno := IniciaPorta(vporta);

  if vlRetorno = 0 then
  begin
    result := 0;
    exit;
  end;
  try
    vlRetorno := Le_Status();
    FechaPorta;
    result := vlRetorno;
  except
    result := 0;
  end;

End;

Function TSendThread.ConsultaImpressora(Porta: string): String;
Var
  Vch: String;
  i: Integer;
  S_linha: Ansistring;
  S_comando: String;
  S_texto: Ansistring;

  i_retorno: Integer;

  ErrorCorrectionLevel: Integer;
  ModuleSize: Integer;
  CodeType: Integer;
  QRCodeVersion: Integer;
  EncodingModes: Integer;
  CodeQr: String;
  IRetorno: Integer;
  sRetorno: String;
  linha: string;

Begin

  Try

    sRetorno := '1';

    i_retorno := EstadoMP2032(Porta);

    If i_retorno <> 1 Then
    Begin
      // I_retorno := IniciaPorta(PAnsichar(Porta));
      // *********** IMPRESSORAS MP 4000 TH CONEXÃO SERIAL **************
      // if i_retorno = 24 then
      // erros.Lines.Add('24 - IMPRESSORA - ON LINE ' + Porta);
      if i_retorno = 0 then
      begin
        linha := datetimetostr(now) + ' 0 - IMPRESSORA - OFF LINE/SEM COMUNICAÇÃO ' + Porta;
      end
      else if i_retorno = 32 then
      begin
        linha := (datetimetostr(now) + '32 - IMPRESSORA - SEM PAPEL ' + Porta);
      end
      else if i_retorno = 5 then
      begin
        linha := (datetimetostr(now) + ' 5 - IMPRESSORA - ON LINE - POUCO PAPEL ' + Porta);
      end
      else if i_retorno = 9 then
      begin
        linha := (datetimetostr(now) + ' 9 - IMPRESSORA - OFF LINE - TAMPA ABERTA ' + Porta);
      end
      else if i_retorno <> 24 then
      begin
        linha := (datetimetostr(now) + '  ' + inttostr(i_retorno) + ' - IMPRESSORA - ERRO NÃO DEFINIDO ' + Porta);
      end;

    End;

    If i_retorno = 1 Then
    Begin

      sleep(100);

    End;
    // VALIDAÇÃO DE EXECUÇÃO DO COMANDO

    sRetorno := inttostr(i_retorno);

    If i_retorno = 0 Then
      exit;

  Finally
    // FechaPorta();
    result := sRetorno;
  End;
End;

end.
