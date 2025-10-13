unit ulctp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufractp,  
   
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tlctp = class(Tlfrmbase)
    fractp: Tfractp;
  private
  public
    { Public declarations }
  end;

var
  lctp: Tlctp;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;

var
  lfram: Tfractp;
  vch: string;
begin
  try
    lctp := Tlctp.Create(AOwner);
    lctp.fractp.IdModulo := vPlIdMd;
    lctp.fractp.titulo := vPlTitMdl;
    lctp.fractp.vusrcodigo := vusuario;
    lctp.fractp.modulo := vmodulo;
    lctp.fractp.zcone := conexao;
    lfram := lctp.FindComponent('fractp') as Tfractp;

    if vtipolista = 1 then
    begin
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := true;
    end;

    lfram.carregar;
    lctp.ShowModal;
    vch := lctp.fractp.vretorno;
    Result := vch;
  finally
    FreeAndNil(lctp);
  end;

end;

exports formu;

end.
