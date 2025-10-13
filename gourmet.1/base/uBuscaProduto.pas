unit uBuscaProduto;

interface

uses
  SysUtils, uni, classes, DAScript, UniScript, Winapi.Windows, ACBrValidador;

function BuscaProdutoBarra(AOwner: TComponent; conexao: TUniConnection; CBarra: String; var PunCodigo, VrpCodigo: Integer): Integer;
function GeraProdutoBarra(AOwner: TComponent; CProCodigo: Integer; CUniCodigo: Integer): string;
function ValidaProdutoBarra(AOwner: TComponent; conexao: TUniConnection; CBarra: string; CProCodigo: Integer; CUniCodigo: Integer;
  CPunCodigo: Integer; CTipoBarra: Integer): String;
function GeraBarraVariacao(AOwner: TComponent; CProCodigo: Integer; CVrpCodigo: Integer): String;
function CodigoInterno(ProCodigo: Integer; PunBarra: String): Boolean;
function ValidaUnidadeCodInterno(ProCodigo, UniCodigo: Integer; PunBarra: String): Boolean;

implementation

const
  (* Tipo de Código de Barra *)
  tcbGTIN = 0;
  tcbInterna = 1;

  MascaraBarra = '00000000000000';

  Formata10 = '0000000000';
  Formata11 = '00000000000';
  Formata12 = '000000000000';
  Formata14 = '00000000000000';

function CalculaDigEAN13(Cod: String): String;
  function Par(Cod: Integer): Boolean;
  begin
    Result := Cod Mod 2 = 0;
  end;

var
  i, SomaPar, SomaImpar: Integer;
begin
  SomaPar := 0;
  SomaImpar := 0;
  for i := 1 to 12 do
    if Par(i) then
      SomaPar := SomaPar + StrToInt(Cod[i])
    else
      SomaImpar := SomaImpar + StrToInt(Cod[i]);
  SomaPar := SomaPar * 3;
  i := 0;
  while i < (SomaPar + SomaImpar) do
    Inc(i, 10);
  Result := IntToStr(i - (SomaPar + SomaImpar));
end;

function CodigoInterno(ProCodigo: Integer; PunBarra: String): Boolean;
begin
  Result := False;
  (* *PADRÃO PEGA2014* *)
  (* 10 Produto - 3 Unidade - 1 Dígito *)
  (* PPPPPPPPPPUUUD *)
  if Copy(PunBarra, 1, 10) = FormatFloat(Formata10, ProCodigo) then
    Result := True;

  (* *PADRÃO POSI2010* *)

  (* 11 Produto - 2 Unidade - 1 Dígito *)
  (* PPPPPPPPPPPUUD *)
  if Copy(PunBarra, 1, 11) = FormatFloat(Formata11, ProCodigo) then
    Result := True;

  (* 12 Produto - 2 Unidade *)
  (* PPPPPPPPPPPPUU *)
  if Copy(PunBarra, 1, 12) = FormatFloat(Formata12, ProCodigo) then
    Result := True;

  (* 14 Produto *)
  (* PPPPPPPPPPPPPP *)
  if Copy(PunBarra, 1, 14) = FormatFloat(Formata14, ProCodigo) then
    Result := True;
end;
exports CodigoInterno;

function ValidaUnidadeCodInterno(ProCodigo, UniCodigo: Integer; PunBarra: String): Boolean;
begin
  Result := True;

  (* *PADRÃO PEGA2014* *)
  (* 10 Produto - 3 Unidade - 1 Dígito *)
  (* PPPPPPPPPPUUUD *)
  if Copy(PunBarra, 1, 10) = FormatFloat(Formata10, ProCodigo) then
    if Copy(PunBarra, 11, 3) <> FormatFloat('000', UniCodigo) then
      Result := False;

  (* *PADRÃO POSI2010* *)

  (* 11 Produto - 2 Unidade - 1 Dígito *)
  (* PPPPPPPPPPPUUD *)
  if Copy(PunBarra, 1, 11) = FormatFloat(Formata11, ProCodigo) then
    if Copy(PunBarra, 12, 2) <> FormatFloat('00', UniCodigo) then
      Result := False;

  (* 12 Produto - 2 Unidade *)
  (* PPPPPPPPPPPPUU *)
  if Copy(PunBarra, 1, 12) = FormatFloat(Formata12, ProCodigo) then
    if Copy(PunBarra, 13, 2) <> FormatFloat('00', UniCodigo) then
      Result := False;
end;
exports ValidaUnidadeCodInterno;

function ValidaProdutoBarra(AOwner: TComponent; conexao: TUniConnection; CBarra: string; CProCodigo: Integer; CUniCodigo: Integer;
  CPunCodigo: Integer; CTipoBarra: Integer): String;
var
  ACBrValidadorGtin: TACBrValidador;
  Consulta: TUniQuery;
begin

  (* Trata código em branco *)
  if CBarra = '' then
  begin
    Result := 'ATENÇÃO: Código é obrigatório!' + #13 + #13 + 'Verifique a origem do código de barra!';
    Exit;
  end;

  (* Trata código zero *)
  if StrToFloat(CBarra) = 0 then
  begin
    Result := 'ATENÇÃO: Código não pode ser ZERO!';
    Exit;
  end;

  (* Trata código maior que 14 *)
  if Length(CBarra) > 14 then
  begin
    Result := 'ATENÇÃO: Código de Barra não pode ser superior a 14 dígitos!';
    Exit;
  end;

  (* Verifica duplicidade do Código de Barra *)
  Consulta := TUniQuery.Create(AOwner);
  try
    Consulta.Connection := conexao;

    Consulta.SQL.Text := 'SELECT pun.punbarra, pun.procodigo, pro.pronome, unisimbolo, uninome, punidentificacao FROM pun, pro, uni ';
    Consulta.SQL.Add('WHERE pun.unicodigo = uni.unicodigo ');
    Consulta.SQL.Add('AND pro.procodigo = pun.procodigo ');

    if CPunCodigo <> 0 then
      Consulta.SQL.Add('AND  puncodigo <> ' + IntToStr(CPunCodigo) + ' ');

    Consulta.SQL.Add('AND punbarra = ''' + CBarra + '''');

    Consulta.Open;
    if not Consulta.IsEmpty then
    begin
      Result := 'ATENÇÃO! Este Código de Barra já está em uso!' + #13 + 'Produto: ' + Consulta.Fields[1].AsString + ' ' + Consulta.Fields[2].AsString
        + #13 + 'Embalagem: ' + Consulta.Fields[3].AsString + ' - ' + Consulta.Fields[4].AsString;
      Exit;
    end;
  finally
    Consulta.Free;
  end;

  (* Valida Código de Barra padrão *)
  ACBrValidadorGtin := TACBrValidador.Create(AOwner);
  try
    ACBrValidadorGtin.TipoDocto := docGTIN;
    ACBrValidadorGtin.Documento := FormatFloat(MascaraBarra, StrToFloat(CBarra));

    if ACBrValidadorGtin.Validar then
      CBarra := ACBrValidadorGtin.Documento
    else if CTipoBarra = tcbGTIN then
    begin
      Result := 'ATENÇÃO: Código de Barra padrão GTIN inválido!' + #13 + 'Verifique o código digitado.';
      Exit;
    end;
  finally
    ACBrValidadorGtin.Free;
  end;

  (* Identifica se é um código interno e se está correto *)
  if CodigoInterno(CProCodigo, CBarra) then
  begin
    if CTipoBarra = tcbGTIN then
    begin
      Result := 'ATENÇÃO: Código de Barra padrão GTIN inválido!' + #13 + 'Verifique o código digitado.';
      Exit;
    end;

    if not ValidaUnidadeCodInterno(CProCodigo, CUniCodigo, CBarra) then
    begin
      Result := 'ATENÇÃO: Este é um Código de Barra Interno, ' + #13 + 'mas o código da unidade está errada!';
      Exit;
    end;
  end;

  Result := CBarra;
end;
exports ValidaProdutoBarra;

Function BuscaProdutoBarra(AOwner: TComponent; conexao: TUniConnection; CBarra: String; var PunCodigo, VrpCodigo: Integer): Integer;
Var
  vBarra: String;
  vCodigoPro: Integer;
  vErroPos: Integer;
  BuscaPro: TUniQuery;
  Consulta: TUniQuery;
  CfgMSai: TUniQuery;
Begin
  BuscaPro := TUniQuery.Create(AOwner);
  try
    PunCodigo := -1; // Define puncodigo como NÃO IDENTIFICADO
    VrpCodigo := -1; // Define Variação como NÃO IDENTIFICADA
    BuscaPro.Connection := conexao;

    if CBarra = '' then
      Exit;

    If (Length(CBarra) <= 7) Then // Identifica as buscas por código de produto direto (procodigo)
    Begin
      // identifica se foi digitado apenas números. Se sim, tenta localizar produto.
      Val(CBarra, vCodigoPro, vErroPos);

      if vErroPos = 0 then
      begin
        BuscaPro.Close;
        BuscaPro.SQL.Text := 'SELECT pro.procodigo, pun.puncodigo FROM pro, pun ';
        BuscaPro.SQL.Add('WHERE tpocodigo IN (0, 4, 9) ');
        BuscaPro.SQL.Add('AND pro.procodigo = pun.procodigo ');
        BuscaPro.SQL.Add('AND pro.procodigo = ' + CBarra);
        BuscaPro.Open;
      end;
    End
    Else
    begin
      // Identifica buscas por CÓDIGO DE BARRA VÁLIDO ou INTERNO NOVO PADRÃO (cod. produto + cod. unidadade (000) + dígito)
      try
        vBarra := FormatFloat(MascaraBarra, StrToFloat(CBarra));
      except
        vBarra := '';
      end;

      BuscaPro.Close;
      BuscaPro.SQL.Text := 'SELECT pro.procodigo, pun.puncodigo FROM pro, pun ';
      BuscaPro.SQL.Add('WHERE tpocodigo IN (0, 4, 9) ');
      BuscaPro.SQL.Add('AND pro.procodigo = pun.procodigo ');
      BuscaPro.SQL.Add('AND pun.punbarra = ' + QuotedStr(vBarra));
      BuscaPro.Open;

      // Identifica buscas por CÓDIGO DE BARRA INTERNO PADRÃO ANTIGO (Posi2010)
      If (BuscaPro.IsEmpty) and (Length(CBarra) = 12) Then
      Begin
        try
          vBarra := FormatFloat(MascaraBarra, StrToFloat(Copy(CBarra, 1, 11)));
        except
          vBarra := '';
        end;

        BuscaPro.Close;
        BuscaPro.SQL.Text := 'SELECT pro.procodigo, pun.puncodigo FROM pro, pun ';
        BuscaPro.SQL.Add('WHERE tpocodigo IN (0, 4, 9) ');
        BuscaPro.SQL.Add('AND pro.procodigo = pun.procodigo ');
        BuscaPro.SQL.Add('AND pun.punbarra=' + QuotedStr(vBarra));
        BuscaPro.Open;
      End;

      If (BuscaPro.IsEmpty) and (Length(CBarra) = 13) Then
      Begin
        BuscaPro.Close;
        BuscaPro.SQL.Text := 'SELECT pro.procodigo, pun.puncodigo FROM pro, pun ';
        BuscaPro.SQL.Add('WHERE tpocodigo IN (0, 4, 9) ');
        BuscaPro.SQL.Add('AND pro.procodigo = pun.procodigo ');
        BuscaPro.SQL.Add('AND pun.punbarra=' + QuotedStr(CBarra));
        BuscaPro.Open;
      End;

    end;

    // Busca por Referencia
    if BuscaPro.IsEmpty then
    begin
      BuscaPro.Close;
      BuscaPro.SQL.Text := 'SELECT pro.procodigo, pun.puncodigo FROM pro, pun ';
      BuscaPro.SQL.Add('WHERE tpocodigo IN (0, 4, 9) ');
      BuscaPro.SQL.Add('AND pro.procodigo = pun.procodigo ');
      BuscaPro.SQL.Add('AND pro.proreferencia = ' + QuotedStr(CBarra));
      BuscaPro.Open;
    end;

    // verificar se nao é produto pesado

    if BuscaPro.IsEmpty then
    begin

      Consulta := TUniQuery.Create(AOwner);
      try
        Consulta.Connection := conexao;

        Consulta.Close;
        Consulta.SQL.Text := 'SELECT cfgmsai.cfgbalanca FROM cfgmsai where cfgcodigo=1';
        Consulta.Open;

        if Consulta.Fields[0].AsInteger = 1 then
          if (Copy(CBarra, 1, 1) = '2') and (Length(CBarra) > 7) then
          begin
            CfgMSai := TUniQuery.Create(AOwner);
            CfgMSai.Connection := conexao;
            CfgMSai.SQL.Text := 'select cfgdigitosbalanca from cfgmsai';
            CfgMSai.Open;

            BuscaPro.Close;
            BuscaPro.SQL.Text := 'SELECT pro.procodigo, pun.puncodigo FROM pro, pun ';
            BuscaPro.SQL.Add('WHERE tpocodigo IN (0, 4, 9) ');
            BuscaPro.SQL.Add('AND pro.procodigo = pun.procodigo ');
            BuscaPro.SQL.Add('AND pro.procodigo = ' + Copy(CBarra, 2, CfgMSai.Fields[0].AsInteger));
            BuscaPro.Open;

          end;
      finally
        Consulta.Free;
      end;
    end;

    (* Busca por VARIAÇÂO DE PRODUTO *)
    if BuscaPro.IsEmpty then
    begin
      try
        vBarra := FormatFloat(MascaraBarra, StrToFloat(CBarra));
      except
        vBarra := '';
      end;

      BuscaPro.Close;
      BuscaPro.SQL.Text := 'SELECT pro.procodigo, pun.puncodigo, vrp.vrpcodigo FROM pro ';
      BuscaPro.SQL.Add('JOIN pun ON pro.procodigo = pun.procodigo ');
      BuscaPro.SQL.Add('JOIN vrp ON pro.procodigo = vrp.procodigo ');
      BuscaPro.SQL.Add('WHERE tpocodigo IN (0, 4, 9) ');
      BuscaPro.SQL.Add('AND vrp.vrpbarra = ' + QuotedStr(vBarra));
      BuscaPro.Open;

      If Not BuscaPro.IsEmpty Then
        VrpCodigo := BuscaPro.Fields[2].AsInteger;
    end;

    // verificar se nao é produto vinda do posi2010

    if BuscaPro.IsEmpty then
    begin

      Consulta := TUniQuery.Create(AOwner);
      try
        Consulta.Connection := conexao;

        BuscaPro.Close;
        BuscaPro.SQL.Text := 'SELECT pro.procodigo, pun.puncodigo FROM pro, pun ';
        BuscaPro.SQL.Add('WHERE tpocodigo IN (0, 4, 9) ');
        BuscaPro.SQL.Add('AND pro.procodigo = pun.procodigo ');
        BuscaPro.SQL.Add('AND pun.punbarraposi = ' + QuotedStr(CBarra));
        BuscaPro.Open;

      finally
        Consulta.Free;
      end;
    end;

    if BuscaPro.IsEmpty then
    begin

      Consulta := TUniQuery.Create(AOwner);
      try
        Consulta.Connection := conexao;

        BuscaPro.Close;
        BuscaPro.SQL.Text := 'SELECT pro.procodigo, pun.puncodigo FROM pro, pun ';
        BuscaPro.SQL.Add('WHERE tpocodigo IN (0, 4, 9) ');
        BuscaPro.SQL.Add('AND pro.procodigo = pun.procodigo ');
        BuscaPro.SQL.Add('AND pun.punbarraposi = ' + QuotedStr('0' + Copy(CBarra, 1, 12)));
        BuscaPro.Open;

      finally
        Consulta.Free;
      end;
    end;

  finally
    If Not BuscaPro.IsEmpty Then
    begin
      if BuscaPro.RecordCount = 1 then
        PunCodigo := BuscaPro.Fields[1].AsInteger;
      Result := BuscaPro.Fields[0].AsInteger
    end
    else
      Result := -1;
    BuscaPro.Free;
  end;
End;
exports BuscaProdutoBarra;

Function GeraProdutoBarra(AOwner: TComponent; CProCodigo: Integer; CUniCodigo: Integer): String;
Var
  ACBrValidadorGtin: TACBrValidador;
  vBarra: string;
Begin
  ACBrValidadorGtin := TACBrValidador.Create(AOwner);
  try
    vBarra := FormatFloat(MascaraBarra, StrToFloat(IntToStr(CProCodigo) + FormatFloat('000', CUniCodigo) + '0'));
    ACBrValidadorGtin.TipoDocto := docGTIN;
    ACBrValidadorGtin.Documento := vBarra;
    ACBrValidadorGtin.Documento := ACBrValidadorGtin.Formatar;

    if ACBrValidadorGtin.Validar then
      vBarra := ACBrValidadorGtin.Documento
    else
      vBarra := Copy(vBarra, 1, 13) + ACBrValidadorGtin.DigitoCalculado;

    Result := vBarra;
  finally
    ACBrValidadorGtin.Free;
  end;
End;
exports GeraProdutoBarra;

Function AjustaPesoPrecoBalanca(VQuanti: Double; VPrecoUnit: Double; VPrecoFinal: Double; SPrecoBala: String; VArredonda: Boolean): Double;
Var
  TesteQuanti: Double;
  TestePrecoBala: Double;
  TestePrecoCalc: Double;
  i, X: Integer;

  vPreco: Double; (* ERA UMA VARIÁVEL GLOBAL *)
Begin
  i := 0;
  TesteQuanti := StrToFloat(FormatFloat('0.000', VQuanti));
  TesteQuanti := TesteQuanti - 0.001;
  // Ajusta quantidade arredondada
  TestePrecoBala := VPrecoFinal; // Atribui Total que vem da Balança

  // Atribui Total calculado para comparar com total da Balança
  TestePrecoCalc := StrToFloat(FormatFloat('0.00', TesteQuanti * VPrecoUnit)); // Arredonda valor calculado assim como é feito no ECF

  // Enquanto encontrar diferença faz mesmo acerto até deixar valor certo ou retornar mensagem de erro
  While TestePrecoCalc <> TestePrecoBala Do
  Begin
    TesteQuanti := TesteQuanti + 0.001;

    // Atribui Total calculado para comparar com total da Balança
    TestePrecoCalc := StrToFloat(FormatFloat('0.00', TesteQuanti * VPrecoUnit)); // Arredonda valor calculado assim como é feito no ECF

    If TestePrecoCalc = TestePrecoBala Then
      Break;

    i := i + 1;

    // Verifica se chgou no máximo de tentativas de ajuste
    If i = 5 Then
    Begin
      i := 0;

      // Tenta acertar GRAMA e PREÇO UNITÁRIO para fechar valor truncado
      While TestePrecoCalc <> TestePrecoBala Do
      Begin
        // Verifica se atingiu o máximo de tentativas
        If i = 3 Then
          Break;

        TesteQuanti := StrToFloat(FormatFloat('0.000', VQuanti)); // Devolve quantidade original calculada.
        TesteQuanti := TesteQuanti + 0.001; // Ajusta quantidade em uma GRAMA para melhorar teste
        VPrecoUnit := VPrecoUnit + 0.01; // Ajusta PREÇO UNIT. em 1 centavo a cada tentativa (MÁXIMO DE 2 TENTATIVAS)

        // Inicia 10 tentativas adequando as gramas com o novo PREÇO UNIT.
        For X := 0 To 10 Do
        Begin
          // Atribui Total calculado para comparar com total da Balança
          TestePrecoCalc := StrToFloat(FormatFloat('0.00', TesteQuanti * VPrecoUnit)); // Arredonda valor calculado assim como é feito no ECF

          // Verifica se fechou total
          If TestePrecoCalc = TestePrecoBala Then
            Break;

          TesteQuanti := TesteQuanti - 0.001; // Diminui em uma GRAMA para próxima tentativa.
        End;

        vPreco := VPrecoUnit; // Atribui novo PREÇO UNIT. para variável global.
        i := i + 1;
      End;

      Break;
    End;
  End;

  Result := TesteQuanti;
End;
exports AjustaPesoPrecoBalanca;

Function GeraBarraVariacao(AOwner: TComponent; CProCodigo: Integer; CVrpCodigo: Integer): String;
Var
  ACBrValidadorGtin: TACBrValidador;
  vBarra: string;

const
  MascaraBarraVar = '000000000000';
Begin
  ACBrValidadorGtin := TACBrValidador.Create(AOwner);
  try
    vBarra := '01' + FormatFloat(MascaraBarraVar, StrToFloat(IntToStr(CProCodigo) + FormatFloat('000000', CVrpCodigo) + '0'));
    ACBrValidadorGtin.TipoDocto := docGTIN;
    ACBrValidadorGtin.Documento := vBarra;
    ACBrValidadorGtin.Documento := ACBrValidadorGtin.Formatar;

    if ACBrValidadorGtin.Validar then
      vBarra := ACBrValidadorGtin.Documento
    else
      vBarra := Copy(vBarra, 1, 13) + ACBrValidadorGtin.DigitoCalculado;

    Result := vBarra;
  finally
    ACBrValidadorGtin.Free;
  end;
End;
exports GeraBarraVariacao;

END.
