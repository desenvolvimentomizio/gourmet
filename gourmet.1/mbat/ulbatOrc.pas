unit ulbatOrc;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufrabat,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Uni, ufuncoes, uPegaBase;

type
  TlbatOrc = class(Tlfrmbase)
    frabat: Tfrabat;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure frabatspbEmFechamentoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbatOrc: TlbatOrc;

implementation

{$R *.dfm}

uses ulbatCnd;

function BuscaAtdOrc(AOwner: TComponent; conexao: tuniconnection; Acesso: Tacesso; moccodigo: Integer; vchave: string): string;
Var
  lfram: Tfrabat;
  vch: string;
Begin
  try
    lbatOrc := TlbatOrc.Create(AOwner);
    lbatOrc.frabat.IdModulo := vplidmd;
    lbatOrc.frabat.titulo := 'Busca Orçamentos';
    lbatOrc.frabat.Acesso := Acesso;
    lbatOrc.frabat.Acesso.Usuario := Acesso.Usuario;
    lbatOrc.frabat.zcone := conexao;

    lbatOrc.frabat.vmoccodigo := moccodigo;

    lbatOrc.frabat.vDirRelat := ExtractFilePath(Application.ExeName) + 'relat\orcamento.fr3';

    lfram := lbatOrc.FindComponent('frabat') as Tfrabat;

    lfram.FormaFrame := ffFormu;
    lfram.ModoFrame := modoPesqEdicao;

    lfram.carregar;

    lfram.PodeFechar := true;
    lfram.PlBotoes.Visible := true;

    if lbatOrc.WindowState = wsMinimized then
      lbatOrc.WindowState := wsNormal;

   { if moccodigo = mocDelivery then
    begin
      lbatOrc.frabat.spbEmFechamento.Execute;
        lbatOrc.frabat.titulo := 'Busca Pedidos';
    end;}

    lbatOrc.ShowModal;
    vch := lbatOrc.frabat.vretorno;
    Result := vch;
  finally
    if lbatOrc.ModalResult = mrCancel then
      lfram.salvacolunas;

    lfram.SalvarColunas(lfram.DBGListaItens);
    FreeAndNil(lbatOrc);
  end;
End;

exports BuscaAtdOrc;

procedure TlbatOrc.FormResize(Sender: TObject);
begin
  inherited;
  AdjustColumnWidths(frabat.DBGListaItens);
end;

procedure TlbatOrc.FormShow(Sender: TObject);
begin
  inherited;
  AdjustColumnWidths(frabat.DBGListaItens);
end;

procedure TlbatOrc.frabatspbEmFechamentoExecute(Sender: TObject);
begin
  inherited;
  frabat.spbEmFechamentoExecute(Sender);

end;

end.
