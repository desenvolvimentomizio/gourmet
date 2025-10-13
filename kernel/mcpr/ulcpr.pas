// Classe de definição da lista de compras
unit ulcpr;

// Permite listar todas as compras registradas no sistema
interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracpr, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  // Lista de compras
  Tlcpr = class(Tlfrmbase)
    fracpr: Tfracpr;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcpr: Tlcpr;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcpr := Tlcpr.Create(pCargaFrame);

  if pos('mesreclassicacao=1', pCargaFrame.Filtro) > 0 then
  begin

    lcpr.fracpr.consulta.Close;
    lcpr.fracpr.consulta.Connection := pCargaFrame.Conexao;
    lcpr.fracpr.consulta.SQL.Text := 'select min(mesregistro) inicio, max(mesregistro) final from mes where  mesreclassicacao=1';
    lcpr.fracpr.consulta.Open;

    if not lcpr.fracpr.consulta.IsEmpty then
    begin

      if lcpr.fracpr.fmd.Active then
      begin
        lcpr.fracpr.fmd.Edit;
        lcpr.fracpr.fmddtinicial.Field.AsFloat := lcpr.fracpr.consulta.FieldByName('inicio').AsFloat;
        lcpr.fracpr.fmddtfinal.Field.AsFloat := lcpr.fracpr.consulta.FieldByName('final').AsFloat;
        lcpr.fracpr.fmd.Post;
      end;

    end;

  end;

  try
    lcpr.ShowModal;
    Result := lcpr.fracpr.vretorno;
  finally
    lcpr.Free;
  end;
end;

// exporta a função formu para utilização da bpl por outros
exports formu;

end.
