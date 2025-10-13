Unit Uinfce;

Interface

Uses
  Windows, Forms, Classes, Sysutils, Stdctrls, ufmostraimp, dialogs;

Function IniciaPorta(Porta: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function FechaPorta: Integer; Stdcall; Far; External 'MP2032.DLL';
Function BematechTX(BufTrans: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ComandoTX(BufTrans: Ansistring; TamBufTrans: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function CaracterGrafico(BufTrans: Ansistring; TamBufTrans: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function DocumentInserted: Integer; Stdcall; Far; External 'MP2032.DLL';
Function Le_Status: Integer; Stdcall; Far; External 'MP2032.DLL';
Function AutenticaDoc(Texto: Ansistring; Tempo: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function Le_Status_Gaveta: Integer; Stdcall; Far; External 'MP2032.DLL';
Function ConfiguraTamanhoExtrato(NumeroLinhas: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function HabilitaExtratoLongo(Flag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function HabilitaEsperaImpressao(Flag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function EsperaImpressao: Integer; Stdcall; Far; External 'MP2032.DLL';
Function ConfiguraModeloImpressora(ModeloImpressora: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function AcionaGuilhotina(Modo: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function FormataTX(BufTras: Ansistring; TpoLtra: Integer; Italic: Integer; Sublin: Integer; Expand: Integer; Enfat: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function HabilitaPresenterRetratil(IFlag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ProgramaPresenterRetratil(ITempo: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function VerificaPapelPresenter: Integer; Stdcall; Far; External 'MP2032.DLL';

function DefineNVBitmap(count: Integer; filenames: array of string): Integer; stdcall; far; external 'MP2032.DLL';
function Define1NVBitmap(filename: string): Integer; stdcall; far; external 'MP2032.DLL';
function DefineDLBitmap(filename: string): Integer; stdcall; far; external 'MP2032.DLL';
function PrintNVBitmap(image: Integer; mode: Integer): Integer; stdcall; far; external 'MP2032.DLL';
function PrintDLBitmap(mode: Integer): Integer; stdcall; far; external 'MP2032.DLL';


// Função para Configuração dos Códigos de Barras

Function ConfiguraCodigoBarras(Altura: Integer; Largura: Integer; PosicaoCaracteres: Integer; Fonte: Integer; Margem: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';

// Funções para impressão dos códigos de barras

Function ImprimeCodigoBarrasUPCA(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasUPCE(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasEAN13(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasEAN8(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODE39(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODE93(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODE128(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasITF(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODABAR(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasISBN(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasMSI(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasPLESSEY(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasPDF417(NivelCorrecaoErros: Integer; Altura: Integer; Largura: Integer; Colunas: Integer; Codigo: Ansistring): Integer;
  Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoQRCODE(ErrorCorrectionLevel: Integer; ModuleSize: Integer; CodeType: Integer; QRCodeVersion: Integer; EncodingModes: Integer;
  CodeQr: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';

// Funções para impressão de BitMap

Function ImprimeBitmap(Name: Ansistring; mode: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeBmpEspecial(Name: Ansistring; XScale: Integer; YScale: Integer; Angle: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function AjustaLarguraPapel(Width: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function SelectDithering(mode: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function PrinterReset: Integer; Stdcall; Far; External 'MP2032.DLL';
Function LeituraStatusEstendido(A: Array Of Byte): Integer; Stdcall; Far; External 'MP2032.DLL';
Function IoControl(Flag: Integer; mode: Boolean): Integer; Stdcall; Far; External 'MP2032.DLL';

Implementation

Type
  Tfnfce = Class
    Fnfce: Tfnfce;
  Private
    { Private declarations }
  Public
    { Public declarations }
    I_retorno: Integer;
  End;

Var
  Fnfce: Tfnfce;

function RemoverAcento(Key: Char): Char;
begin
  if (Key in ['é', 'è', 'ê']) then
  begin
    Result := 'e';
  end
  else if (Key in ['É', 'È', 'Ê']) then
  begin
    Result := 'E';
  end
  else if (Key in ['á', 'à', 'ã', 'â']) then
  begin
    Result := 'a';
  end
  else if (Key in ['Á', 'À', 'Ã', 'Â']) then
  begin
    Result := 'A';
  end
  else if (Key in ['í', 'ì', 'Í', 'Ì', 'î', 'Î']) then
  begin
    Result := 'i';
  end
  else if (Key in ['Í', 'Ì', 'Î']) then
  begin
    Result := 'I';
  end
  else if (Key in ['ó', 'ò', 'õ', 'ô']) then
  begin
    Result := 'O';
  end
  else if (Key in ['Ó', 'Ò', 'Õ', 'Ô']) then
  begin
    Result := 'O';
  end
  else if (Key in ['ú', 'ù']) then
  begin
    Result := 'u';
  end
  else if (Key in ['Ú', 'Ù']) then
  begin
    Result := 'U';
  end
  else if (Key in ['ç']) then
  begin
    Result := 'c';
  end
  else if (Key in ['Ç']) then
  begin
    Result := 'C';
  end
  else
    Result := Key;
end;

function semacento(Texto: string): string;

Var
  S: String;
  i: Integer;
begin
  for i := 1 to Length(Texto) do
  begin
    S := S + RemoverAcento(Texto[i]);;
  end;
  Result := S;
end;

Function AbreGaveta(AOwner: TComponent; Texto: TstringList; Porta: Ansistring): Integer;
Var
  vlsRetorno: String;
  vliRetorno: Integer;

  comando: string;
  tamanho: Integer;
begin

   ConfiguraModeloImpressora(7); // MP 4200 TH


    vlsRetorno := inttostr(IniciaPorta(PAnsichar(Porta)));

    comando := #27 + 'v' + 'n';
    tamanho :=Length(comando);

    if vlsRetorno = '1' then
    begin
    vliRetorno:=ComandoTX(comando,tamanho );
    end;
    FechaPorta;


  Result := 1;

end;

Function Estado(AOwner: TComponent; Texto: TstringList; Porta: Ansistring): string;
Var
  vlRetorno: String;
begin

 { ConfiguraModeloImpressora(7); // MP 4200 TH

  // COMANDO DE ABERTURA DA PORTA DE COMUNICAÇÃO

  vlRetorno := inttostr(IniciaPorta(PAnsichar(Porta)));

  if (trim(vlRetorno)='1') or (trim(vlRetorno)<>'0') then
  begin
   vlRetorno := inttostr(Le_Status);
  end;

  FechaPorta; }
  vlRetorno:='24';
  Result := vlRetorno;

end;

Function ImprimeFR(AOwner: TComponent; Texto: TstringList; Porta: Ansistring): String;
begin




end;

Function Imprime(AOwner: TComponent; Texto: TstringList; Porta: Ansistring): String;
Var
  fmostraimp: tfmostraimp;

  Vch: String;
  i: Integer;
  S_linha: Ansistring;
  S_comando: String;
  S_texto: Ansistring;
  I_tipo_letra: Integer;
  I_italico: Integer;
  I_sublinhado: Integer;
  I_expandido: Integer;
  I_enfatizado: Integer;

  ErrorCorrectionLevel: Integer;
  ModuleSize: Integer;
  CodeType: Integer;
  QRCodeVersion: Integer;
  EncodingModes: Integer;
  CodeQr: String;
  IRetorno: Integer;
  sRetorno: String;
  cNomeBitMap: String;
  vExibir: Boolean;

Begin
  Try

    vExibir := true;
    { If Pos('[ DANFE ]', Texto[0]) > 0 Then // linha de texto
      Begin
      vExibir := false;
      End; }

    if vExibir then
    begin
      fmostraimp := tfmostraimp.Create(AOwner);
      fmostraimp.nmostra.Position := 0;
      fmostraimp.nmostra.Max := Texto.count;
      fmostraimp.Show;

    end;

    Fnfce := Tfnfce.Create;

    sRetorno := '1';
    // COMANDO EXECUTADO INTERNAMENTE PELA DLL PARA
    // CONFIGURAÇÃO DO MODELO DA IMPRESSORA QUE SERÁ CONECTADA

    FechaPorta;

    ConfiguraModeloImpressora(7); // MP 4200 TH



    // COMANDO DE ABERTURA DA PORTA DE COMUNICAÇÃO

    Fnfce.I_retorno := IniciaPorta(PAnsichar(Porta));

    PrinterReset;

    If (Fnfce.I_retorno <> 1) or (Fnfce.I_retorno <> 24) Then
    Begin
      while true do
      begin
        if vExibir then
        begin
          fmostraimp.bcancelar.Visible := true;
        end;
        sleep(2000);

        Fnfce.I_retorno := IniciaPorta(PAnsichar(Porta));

        If (Fnfce.I_retorno = 1) or (Fnfce.I_retorno = 24) Then
        Begin
          if vExibir then
          begin

            fmostraimp.plmensagem.Caption := 'Imprimindo ...';
            application.ProcessMessages;

          end;
          break;
        End
        else
        begin
          if vExibir then
          begin

            fmostraimp.plmensagem.Caption := 'VERIFIQUE IMPRESSORA: ' + Porta;
            application.ProcessMessages;
          end;
          sleep(1000);
          if vExibir then
          begin

            if fmostraimp.bcancelar.Enabled = false then
            begin
              sRetorno := '0';
              exit;
            end;
          end;
        end;
      end;
    End;

    If (Fnfce.I_retorno = 1) or (Fnfce.I_retorno = 24) Then
    Begin

      For i := 0 To Texto.count - 1 Do
      Begin
        if vExibir then
        begin

          fmostraimp.nmostra.Position := fmostraimp.nmostra.Position + 1;
          application.ProcessMessages;
        end;
        If Pos('@g0', Texto[i]) > 0 Then // aciona gilhotina parcial
        Begin
             AcionaGuilhotina(0);
        End;

        If Pos('@g1', Texto[i]) > 0 Then //aciona gilhotina total
        Begin
                AcionaGuilhotina(1);
        End;


        If Pos('@0', Texto[i]) > 0 Then // linha de texto
        Begin
            // ajustar para alinhamento centralizado
            BematechTX(#27 + #97 + '0');
        End;


        If Pos('@1', Texto[i]) > 0 Then // linha de texto
        Begin
            // ajustar para alinhamento centralizado
            BematechTX(#27 + #97 + '1');
        End;


        If Pos('@2', Texto[i]) > 0 Then // linha de texto
        Begin
            // ajustar para alinhamento a esquerda
            BematechTX(#27 + #97 + '2');

        End;

        If Pos('&', Texto[i]) > 0 Then // linha de texto
        Begin
          S_linha := Copy(Texto[i], 1, Pos('&', Texto[i]) - 1);

          BematechTX(#27 + #97 + '2');

          ImprimeBmpEspecial(pchar(extractfilepath(application.ExeName) + 'numeros\' + S_linha + '.bmp'), 70, 70, 0);

          BematechTX(#27 + #97 + '1');

        End;

        If Pos('#', Texto[i]) > 0 Then // linha de texto
        Begin

          S_linha := Copy(Texto[i], 1, Pos('#', Texto[i]) - 1);
          S_texto := S_linha;
          S_comando := Copy(Texto[i], Pos('#', Texto[i]) + 1, 200);

          I_tipo_letra := Strtoint(Copy(S_comando, 1, 1)); // comprimido:=1;  normal:=2;  elite:=3;

          I_italico := Strtoint(Copy(S_comando, 2, 1)); // ligado:=1; desligado:=0;
          I_sublinhado := Strtoint(Copy(S_comando, 3, 1)); // ligado:=1; desligado:=0;
          I_expandido := Strtoint(Copy(S_comando, 4, 1)); // ligado:=1; desligado:=0;
          I_enfatizado := Strtoint(Copy(S_comando, 5, 1)); // ligado:=1; desligado:=0;

          Fnfce.I_retorno := FormataTX(PAnsichar(S_texto) + #13 + #10, I_tipo_letra, I_italico, I_sublinhado, I_expandido, I_enfatizado);
          if vExibir then
          begin

            fmostraimp.textoimpresso.Lines.Add(semacento(S_texto));

          end;
          If (Fnfce.I_retorno <> 1) and (Fnfce.I_retorno <> 24) Then
          Begin
            while true do
            begin
              if vExibir then
              begin

                fmostraimp.bcancelar.Visible := true;
              end;
              sleep(2000);

              If Fnfce.I_retorno = 1 Then
              Begin
                if vExibir then
                begin

                  fmostraimp.plmensagem.Caption := 'Imprimindo ...';
                  application.ProcessMessages;
                end;
                Fnfce.I_retorno := FormataTX(PAnsichar(S_texto) + #13 + #10, I_tipo_letra, I_italico, I_sublinhado, I_expandido, I_enfatizado);
                break;
              End
              else
              begin
                if vExibir then
                begin

                  fmostraimp.plmensagem.Caption := 'VERIFIQUE IMPRESSORA: ' + Porta;
                  application.ProcessMessages;
                end;
                sleep(1000);
                if vExibir then
                begin

                  if fmostraimp.bcancelar.Enabled = false then
                  begin
                    sRetorno := '0';
                    exit;
                  end;
                end;
              end;
            end;
          End;
        End;

        If Pos('&cHashQRCode', Texto[i]) > 0 Then // linha de texto
        Begin

          ErrorCorrectionLevel := 2;
          ModuleSize := 5;
          CodeType := 0;
          QRCodeVersion := 10;
          EncodingModes := 1;

          CodeQr := Texto[i];

          BematechTX(#27 + #97 + '1');

          Fnfce.I_retorno := ImprimeCodigoQRCODE(ErrorCorrectionLevel, ModuleSize, CodeType, QRCodeVersion, EncodingModes, CodeQr);

        End;

      End;
      if Porta = '127.0.0.1' then
        AcionaGuilhotina(0)
      else
        AcionaGuilhotina(1);
      if vExibir then
      begin

        fmostraimp.nmostra.Position := fmostraimp.nmostra.Max;
      end;
      sleep(200);

    End;
    // VALIDAÇÃO DE EXECUÇÃO DO COMANDO

    If Fnfce.I_retorno = 0 Then
      exit;

    // Result := Inttostr(Fnfce.I_retorno);
  Finally

    FechaPorta;

    if vExibir then
    begin
      fmostraimp.Close;
    end;

    FreeAndNil(Fnfce);
    Result := sRetorno;
  End;
End;

Exports Imprime,ImprimeFR, Estado, AbreGaveta;

End.
