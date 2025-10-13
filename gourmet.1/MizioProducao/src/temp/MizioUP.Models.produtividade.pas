unit MizioUP.Models.produtividade;

interface

uses
  System.Classes,
  System.Generics.Collections;
type
  TResumoProdutividade = class
  private
    FQuantidade: Integer;
    FMaiorTempo: String;
    FTempoMedio: String;
    FMenorTempo: String;
  public
    property Quantidade: Integer read FQuantidade write FQuantidade;
    property MaiorTempo: String read FMaiorTempo write FMaiorTempo;
    property TempoMedio: String read FTempoMedio write FTempoMedio;
    property MenorTempo: String read FMenorTempo write FMenorTempo;
  end;
implementation

end.
