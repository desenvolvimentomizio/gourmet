unit ufes;

interface

uses Uni;

function calculoitens(nomefun: string; parametro: string; itm: tuniquery; registro: tuniquery): boolean;

implementation

function calculoitens(nomefun: string; parametro: string; itm, registro: tuniquery): boolean;
begin
  itm.DisableControls;
  itm.First;
  while not itm.Eof do
  begin
    itm.Edit;
    if (registro.fieldbyname('mesoutras').AsFloat > 0) then
    begin
      itm.fieldbyname('itmoutras').AsFloat :=
        (registro.fieldbyname('mesoutras').AsFloat * (itm.fieldbyname('itmtotal').AsFloat / registro.fieldbyname('mesvalor').AsFloat));
    end;
    if (registro.fieldbyname('messeguro').AsFloat > 0) then
    begin
      itm.fieldbyname('itmseguro').AsFloat :=
        (registro.fieldbyname('messeguro').AsFloat * (itm.fieldbyname('itmtotal').AsFloat / registro.fieldbyname('mesvalor').AsFloat));
    end;
    if (registro.fieldbyname('mesfrete').AsFloat > 0) then
    begin
      itm.fieldbyname('itmfrete').AsFloat :=
        (registro.fieldbyname('mesfrete').AsFloat * (itm.fieldbyname('itmtotal').AsFloat / registro.fieldbyname('mesvalor').AsFloat));
    end;
    itm.fieldbyname('itmcusto').AsFloat := itm.fieldbyname('itmvalor').AsFloat +
      ((itm.fieldbyname('itmfrete').AsFloat + itm.fieldbyname('itmoutras').AsFloat + itm.fieldbyname('itmseguro').AsFloat +
      itm.fieldbyname('itmicms').AsFloat + itm.fieldbyname('itmipi').AsFloat) / itm.fieldbyname('itmquantidade').AsFloat) -
      itm.fieldbyname('itmdesconto').AsFloat;
    itm.Post;
    itm.Next;
  end;
  itm.EnableControls;
  result := true;
end;

exports calculoitens;

end.
