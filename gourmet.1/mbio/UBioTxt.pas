unit UBioTxt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, System.Win.ComObj;

type
  TOBio = class(TComponent)
  public
    szFir: wideString;
    /// <author>Daniel de Souza</author>
    Versao: String;
    function busca_Digital(nUserID: integer; szFir: wideString): integer;
    function CapturarLeituraBio(nUserID: integer): wideString;
    constructor Create;
    destructor Destroy; override;
  end;

var
  Bio: TOBio;

const
  NBioAPIERROR_NONE = 0;
  NBioAPI_FIR_PURPOSE_VERIFY = 1;
  NBioAPI_DEVICE_ID_NONE = 0;
  NBioAPI_DEVICE_ID_FDP02_0 = 1;
  NBioAPI_DEVICE_ID_FDU01_0 = 2;
  NBioAPI_DEVICE_ID_AUTO_DETECT = 255;

var
  objNBioBSP: variant;
  objDevice: variant;
  objExtraction: variant;
  objIndexSearch: variant;

implementation


function TOBio.CapturarLeituraBio(nUserID: integer): wideString; // captura do aparelho a digital.
var
  szFir: wideString;
begin
  objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT); // abre aparelho biometrico
  if objDevice.ErrorCode <> 0 Then
  Begin
   // ShowMessage('Falha na abertura do aparelho biometrico !');
    exit;
  End;
  objExtraction.Enroll(nUserID, 0); // ler impressão digital
  if objExtraction.ErrorCode <> NBioAPIERROR_NONE Then
  Begin
  //  ShowMessage('Erro de leitura !');
    exit;
  End;
  objDevice.close(NBioAPI_DEVICE_ID_AUTO_DETECT); // fecha aparelho biometrico
  szFir := objExtraction.TextEncodeFIR; // captura string gerada pela DLL
  objIndexSearch.AddFIR(szFir, nUserID);

  if (objIndexSearch.ErrorCode = NBioAPIERROR_NONE) Then // salva string no banco de dados se não tiver erro.
  begin

  end
  else
   // ShowMessage('Falha na extração da digital !');

end;

function IdentificacaoClick: integer; // identifica usuario pela digital.
var

  str: wideString;
  User_id: integer;

begin
  User_id := 0;

  objDevice.Open(NBioAPI_DEVICE_ID_AUTO_DETECT); // abre aparelho biometrico
  if objDevice.ErrorCode <> NBioAPIERROR_NONE then
  begin
    str := objDevice.ErrorDescription;
   // ShowMessage('Falha no aparelho biométrico !');
    exit;
  end;
  objExtraction.Capture(NBioAPI_FIR_PURPOSE_VERIFY); // captura digital
  if objExtraction.ErrorCode = NBioAPIERROR_NONE then
  begin
    objDevice.close(NBioAPI_DEVICE_ID_AUTO_DETECT);
    Bio.szFir := objExtraction.TextEncodeFIR; // busca string da digital
    objIndexSearch.IdentifyUser(Bio.szFir, 5); // identifica digital com o da memoria com nivel 5  de segurança
    if objIndexSearch.ErrorCode <> NBioAPIERROR_NONE then
   //   ShowMessage('Funcionario não identificado !')
    else
    Begin
      User_id := objIndexSearch.UserID; // pega o ID
   //  ShowMessage('Funcionario identificado com sucesso ' + inttostr(User_id));

    End;
  end
  else
  //  ShowMessage('Falha na extração da biometria !');
  objDevice.close(NBioAPI_DEVICE_ID_AUTO_DETECT);

  result := User_id;
end;


Function TOBio.busca_Digital(nUserID: integer; szFir: wideString): integer;
var
  lszFir: wideString;

begin

  if objIndexSearch.ErrorCode <> NBioAPIERROR_NONE then
  begin
   // ShowMessage('Falha ao iniciar sistema de biometria!');
  end
  else
  Begin

    objIndexSearch.ClearDB;

    objIndexSearch.AddFIR(szFir, nUserID); // coloca na memoria as strings armazenadas no BD.

   { if objIndexSearch.ErrorCode <> NBioAPIERROR_NONE then
      ShowMessage('Erro ao ler dados');  }
  End;

  result := 0;

end;

constructor TOBio.Create;
begin


  // Cria NBioBSP object
  objNBioBSP := CreateOleObject('NBioBSPCOM.NBioBSP'); // uses  Comobj
  objDevice := objNBioBSP.Device;
  objExtraction := objNBioBSP.Extraction;
  objIndexSearch := objNBioBSP.IndexSearch;

  if objIndexSearch.ErrorCode <> NBioAPIERROR_NONE then
  begin
 //   ShowMessage('Falha ao iniciar sistema de biometria!');
  end
  else
  Begin
    Bio.Versao := objNBioBSP.MajorVersion + '.' + objNBioBSP.MinorVersion;
  End;
end;

destructor TOBio.Destroy;
begin
  objNBioBSP := 0;
  objDevice := 0;
  objExtraction := 0;
  objIndexSearch := 0;
end;

end.
