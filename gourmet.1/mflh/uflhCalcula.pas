unit uflhCalcula;

interface

uses
  Uni, Vcl.Forms,System.SysUtils;

procedure CalculaFolha(AOwner: TApplication; Conexao: TUniConnection; vFlhChave, vClbCodigo: Integer);

implementation

procedure CalculaFolha(AOwner: TApplication; Conexao: TUniConnection; vFlhChave, vClbCodigo: Integer);
var
  uqProcessa: TUniQuery;
  uqColaboradroes: TUniQuery;
begin
  uqProcessa := TUniQuery.Create(AOwner);
  uqColaboradroes := TUniQuery.Create(AOwner);
  try
    uqProcessa.Connection := Conexao;
    uqColaboradroes.Connection := Conexao;

    uqProcessa.SQL.Text := 'CALL CalcularFolha(:pFlhChave, :pClbCodigo);';
    uqProcessa.Params[0].AsInteger := vFlhChave;
    uqProcessa.Params[1].AsInteger := vClbCodigo;

    uqProcessa.Execute;

    {uqColaboradroes.SQL.Text := 'select etdcodigo from efg where flhchave=' +IntToStr(vFlhChave);
    uqColaboradroes.Open;
    while not uqColaboradroes.eof do
    begin
      uqProcessa.SQL.Text := 'CALL CalculoFolhaINSS(:pFlhChave, :pClbCodigo, :pEtdCodigo);';
      uqProcessa.Params[0].AsInteger := vFlhChave;
      uqProcessa.Params[1].AsInteger := vClbCodigo;
      uqProcessa.Params[2].AsInteger := uqColaboradroes.FieldByName('etdcodigo').AsInteger;
      uqProcessa.Execute;

      uqColaboradroes.Next;
    end;}

  finally
    uqProcessa.Free;
  end;
end;

end.
