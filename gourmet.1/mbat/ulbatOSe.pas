unit ulbatOSe;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufrabat,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Uni, ufuncoes, uPegaBase;

type
  TlbatOSe = class(Tlfrmbase)
    frabat: Tfrabat;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure frabatActAtualizarExecute(Sender: TObject);
    procedure frabatActReimprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbatOSe: TlbatOSe;

implementation

{$R *.dfm}

function BuscaAtdOse(AOwner: TComponent; conexao: tuniconnection; Acesso: TAcesso; moccodigo: Integer; vchave: string): string;
Var
  lfram: Tfrabat;
  vch: string;
Begin
  try
    lbatOSe := TlbatOSe.Create(AOwner);
    lbatOSe.frabat.IdModulo := vplidmd;
    lbatOSe.frabat.titulo := 'Busca Ordem de Serviço';
    lbatOSe.frabat.Acesso := Acesso;
    lbatOSe.frabat.Acesso.Usuario := Acesso.Usuario;
    lbatOSe.frabat.zcone := conexao;

    lbatOSe.frabat.vmoccodigo := moccodigo;
    lbatOSe.frabat.vDirRelat := ExtractFilePath(Application.ExeName) + 'relat\ordemservico.fr3';

    lfram := lbatOSe.FindComponent('frabat') as Tfrabat;

    lfram.FormaFrame := ffFormu;
    lfram.ModoFrame := modoPesqEdicao;

    lfram.carregar;

    lfram.PodeFechar := True;
    lfram.PlBotoes.Visible := True;

    if lbatOSe.WindowState = wsMinimized then
      lbatOSe.WindowState := wsNormal;

    lbatOSe.ShowModal;
    vch := lbatOSe.frabat.vretorno;
    Result := vch;
  finally
    if lbatOSe.ModalResult = mrCancel then
      lfram.salvacolunas;

    lfram.SalvarColunas(lfram.DBGListaItens);
    FreeAndNil(lbatOSe);
  end;
End;

exports BuscaAtdOse;

procedure TlbatOSe.FormResize(Sender: TObject);
begin
  inherited;
  AdjustColumnWidths(frabat.DBGListaItens);
end;

procedure TlbatOSe.FormShow(Sender: TObject);
begin
  inherited;
  AdjustColumnWidths(frabat.DBGListaItens);
end;

procedure TlbatOSe.frabatActAtualizarExecute(Sender: TObject);
begin
  inherited;
  frabat.ActAtualizarExecute(Sender);

end;

procedure TlbatOSe.frabatActReimprimirExecute(Sender: TObject);
begin
  inherited;
  frabat.ActReimprimirExecute(Sender);

end;

end.
