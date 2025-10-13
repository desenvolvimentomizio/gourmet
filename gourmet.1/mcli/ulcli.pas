unit ulcli;

interface

uses

  Winapi.Windows, Winapi.Messages, Vcl.Forms, ulfrmbase, ufrabase, ufracli,
  Vcl.StdCtrls, Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Uni,
  uPegaBase;

type
  Tlcli = class(Tlfrmbase)
    fracli: Tfracli;
    BConsumidor: TBitBtn;
    procedure BConsumidorClick(Sender: TObject);
  private
    { Private declarations }
    ParaConsumidor: Boolean;
  public
    { Public declarations }
  end;

var
  lcli: Tlcli;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  (*
    ** Verifica se tela já está carregada pela aplicação e bloqueia a abertura **
    *** Corrige problemas do Atendimento onde usuário pode pressionar rapidamente tecla de atalho repetidas vezes ***
  *)
  if not(pCargaFrame.AOwner.FindComponent('lcli') = nil) then
    Exit;

  pCargaFrame.Titulo := vPlTitMdl;
  lcli := Tlcli.Create(pCargaFrame);
  try
    if (pCargaFrame.Filtro = 'PermiteConsumidor') then
    begin
      lcli.ParaConsumidor := False;
      lcli.BConsumidor.Visible := True;
      lcli.fracli.PlBotaoFiltroEsp.Visible := False;
    end
    else
    begin
      if pCargaFrame.Filtro <> '' then
        lcli.fracli.TxtFiltroSQL := pCargaFrame.Filtro;
    end;
    lcli.ShowModal;

    if lcli.ParaConsumidor then
      Result := '0'
    else
      Result := lcli.fracli.vretorno;
  finally
    lcli.Free;
  end;
end;

exports formu;

procedure Tlcli.BConsumidorClick(Sender: TObject);
begin
  ParaConsumidor := True;
  bconfirma.Click;
end;

end.
