unit ulbatCnd;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufrabat,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Uni, ufuncoes, uPegaBase;

type
  TlbatCnd = class(Tlfrmbase)
    frabat: Tfrabat;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbatCnd: TlbatCnd;

implementation

{$R *.dfm}

function BuscaAtdCnd(AOwner: TComponent; conexao: tuniconnection; Acesso: Tacesso; moccodigo: Integer; vchave: string): string;
Var
  lfram: Tfrabat;
  vch: string;
Begin
  try
    lbatCnd := TlbatCnd.Create(AOwner);
    lbatCnd.frabat.IdModulo := vplidmd;
    lbatCnd.frabat.titulo := 'Busca Condicionais';
    lbatCnd.frabat.Acesso:=Acesso;
    lbatCnd.frabat.Acesso.Usuario :=Acesso.Usuario;
    lbatCnd.frabat.zcone := conexao;

    lbatCnd.frabat.vmoccodigo := moccodigo;
    lbatCnd.frabat.vDirRelat := ExtractFilePath(Application.ExeName) + 'relat\Condicional.fr3';

    lfram := lbatCnd.FindComponent('frabat') as Tfrabat;

    lfram.FormaFrame := ffFormu;
    lfram.ModoFrame := modoPesqEdicao;

    lfram.carregar;

    lfram.PodeFechar := True;
    lfram.PlBotoes.Visible := True;

    if lbatCnd.WindowState = wsMinimized then
      lbatCnd.WindowState := wsNormal;

    lbatCnd.ShowModal;
    vch := lbatCnd.frabat.vretorno;
    Result := vch;
  finally
    if lbatCnd.ModalResult = mrCancel then
      lfram.salvacolunas;

    lfram.SalvarColunas(lfram.DBGListaItens);
    FreeAndNil(lbatCnd);
  end;
End;

exports BuscaAtdCnd;

procedure TlbatCnd.FormResize(Sender: TObject);
begin
  inherited;
  AdjustColumnWidths(frabat.DBGListaItens);
end;

procedure TlbatCnd.FormShow(Sender: TObject);
begin
  inherited;
  AdjustColumnWidths(frabat.DBGListaItens);
end;

end.
