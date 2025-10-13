unit ulbatEnt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  ufrabase, ufrabat, uPegaBase, uni, ufuncoes;

type
  TlbatEnt = class(Tlfrmbase)
    frabat: Tfrabat;
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbatEnt: TlbatEnt;

implementation

{$R *.dfm}

function BuscaAtdEnt(AOwner: TComponent; conexao: tuniconnection; Acesso: Tacesso; moccodigo: Integer; vchave: string): string;
Var
  lfram: Tfrabat;
  vch: string;
Begin
  try
    lbatEnt := TlbatEnt.Create(AOwner);
    lbatEnt.frabat.IdModulo := vplidmd;
    lbatEnt.frabat.titulo := 'Busca Entrega';
    lbatEnt.frabat.Acesso := Acesso;
    lbatEnt.frabat.Acesso.Usuario := Acesso.Usuario;
    lbatEnt.frabat.zcone := conexao;

    lbatEnt.frabat.vmoccodigo := moccodigo;
    lbatEnt.frabat.vDirRelat := ExtractFilePath(Application.ExeName) + 'relat\Entrega.fr3';

    lfram := lbatEnt.FindComponent('frabat') as Tfrabat;

    lfram.FormaFrame := ffFormu;
    lfram.ModoFrame := modoPesqEdicao;

    lfram.carregar;

    lfram.PodeFechar := True;
    lfram.PlBotoes.Visible := True;

    if lbatEnt.WindowState = wsMinimized then
      lbatEnt.WindowState := wsNormal;

    lbatEnt.ShowModal;
    vch := lbatEnt.frabat.vretorno;
    Result := vch;
  finally
    if lbatEnt.ModalResult = mrCancel then
      lfram.salvacolunas;

    lfram.SalvarColunas(lfram.DBGListaItens);
    FreeAndNil(lbatEnt);
  end;
End;

exports BuscaAtdEnt;

procedure TlbatEnt.FormResize(Sender: TObject);
begin
  inherited;
  AdjustColumnWidths(frabat.DBGListaItens);
end;

procedure TlbatEnt.FormShow(Sender: TObject);
begin
  inherited;
  AdjustColumnWidths(frabat.DBGListaItens);
end;

end.
