unit USession;

interface

uses
  System.Classes;

type TAdquirentePOS = (tadVERO, tadSTONE, tadPAGBANK, tadNONE,tadSmartTEF);

type
  TSession = class

  private
    class var FTEF_NSU: string;
    class var FTEF_TIPO: string;
    class var FTEF_ADQUIRENTE: string;
    class var FTEF_CNPJADQUIRENTE: string;
    class var FTEF_BANDEIRA: string;
    class var FTEF_ERRO: string;
    class var FOOK: Boolean;
    class var FTEF_AdquirentePOS: TAdquirentePOS;
    class var FTEF_POS_Anterior: TAdquirentePOS;

  public

    class property TEF_AdquirentePOS  : TAdquirentePOS read FTEF_AdquirentePOS    write FTEF_AdquirentePOS;
    class property TEF_POS_Anterior   : TAdquirentePOS read FTEF_POS_Anterior     write FTEF_POS_Anterior;
    class property TEF_NSU            : string         read FTEF_NSU              write FTEF_NSU;
    class property TEF_TIPO           : string         read FTEF_TIPO             write FTEF_TIPO;
    class property TEF_BANDEIRA       : string         read FTEF_BANDEIRA         write FTEF_BANDEIRA;
    class property TEF_ADQUIRENTE     : string         read FTEF_ADQUIRENTE       write FTEF_ADQUIRENTE;
    class property TEF_CNPJADQUIRENTE : string         read FTEF_CNPJADQUIRENTE   write FTEF_CNPJADQUIRENTE;
    class property TEF_ERRO           : string         read FTEF_ERRO             write FTEF_ERRO;
    class property OOK                : Boolean        read FOOK                  write FOOK;

    class function GetSmartPOSByID(ID: Integer): TAdquirentePOS;


  end;

implementation

uses
  System.IniFiles,ACBrUtil, System.SysUtils;

{ TSession }


class function TSession.GetSmartPOSByID(ID: Integer): TAdquirentePOS;
begin
  case ID of
    0: Result := tadPAGBANK;
    1: Result := tadSTONE;
    2: Result := tadVERO;
    3: Result := tadNONE;
    4: Result := tadSmartTEF;
  else
    raise Exception.Create('ID inválido');
  end;
end;

end.
