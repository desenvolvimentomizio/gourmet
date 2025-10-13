unit ulbolBuscaCRE;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrarfi, ufracre, Uni, ufuncoes;

type
  TlbolBuscaCRE = class(Tlfrmbase)
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbolBuscaCRE: TlbolBuscaCRE;

implementation

{$R *.dfm}

function BuscaParcelas(AOwner: TComponent; Conexao: TUniConnection; vUsuario: string; Acesso:TAcesso;vGebCodigo: Integer): String;
var
  lfram: TfrabolBuscaCRE;
  vch: string;
  I: Integer;
begin
  lbolBuscaCRE := TlbolBuscaCRE.Create(AOwner);
  try
    lbolBuscaCRE.frabolBuscaCRE.IdModulo := vPlIdMd;
    lbolBuscaCRE.frabolBuscaCRE.titulo := vPlTitMdl;
    lbolBuscaCRE.frabolBuscaCRE.acesso:=Acesso;

    lbolBuscaCRE.frabolBuscaCRE.zcone := Conexao;
    lbolBuscaCRE.frabolBuscaCRE.Vusrcodigo := vUsuario;
    lbolBuscaCRE.frabolBuscaCRE.vtfdcodigo := tfdReceber;
    lbolBuscaCRE.frabolBuscaCRE.GebCodigo := vGebCodigo;
    lfram := lbolBuscaCRE.FindComponent('frabolBuscaCRE') as TfrabolBuscaCRE;
    lfram.edbusca.Tag := 1;

    lfram.carregar;

    lbolBuscaCRE.ShowModal;
  finally
    FreeAndNil(lbolBuscaCRE);
  end;
end;

exports BuscaParcelas;

procedure TlbolBuscaCRE.bconfirmaClick(Sender: TObject);
begin
  frabolBuscaCRE.ProcessaSelecionados;
  inherited;
end;

end.
