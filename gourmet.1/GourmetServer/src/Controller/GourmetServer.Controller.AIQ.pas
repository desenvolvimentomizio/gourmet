unit GourmetServer.Controller.AIQ;

interface

Uses
  System.Json,
  System.SysUtils,
  idHashMessageDigest,
  GourmetServer.Model.DAOGeneric;



type
  TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation


end.
