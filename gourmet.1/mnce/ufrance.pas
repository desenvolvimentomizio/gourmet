unit ufrance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uframnc, uPegaBase, ufuncoes, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
   System.ImageList, Vcl.ImgList;

type
  Tfrance = class(Tframnc)
    plTotalPendentes: TPanel;
    Panel1: TPanel;
  private
    procedure RecalculaTotais; override;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  france: Tfrance;

  // Início ID do Módulo framnf
const
  vPlIdMd = '02.04.88.001-01';
  vPlTitMdl = 'Vendas NFC-e';

  // Fim ID do Módulo framnf

implementation

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  pCargaFrame.Filtro := 'ttocodigo=2 and tdfcodigo=' + QuotedStr('65');
  france := Tfrance.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  france := Tfrance.Create(pCargaFrame);
  try
    france.CriaAcoesDeAcesso;
  finally
    france.Free;
  end;
end;
exports formuFrame, defineacesso;

procedure Tfrance.RecalculaTotais;
var
  rgi: Integer;
  vtotsai: Double;
  vtotdessai: Double;
  vtotnfesai: Double;
  vtotnfePendente: Double;

  vtotnfeaemsai: Double;
  vlPrimeiraNota: Integer;
  vlUltimaNota: Integer;

begin

  if Self.UQTabela.Active then
  begin
    rgi := Self.UQTabela.RecNo;
  end
  else
  begin
    rgi := 0;
  end;
  Self.UQTabela.DisableControls;
  Self.UQTabela.First;
  vtotsai := 0;
  vtotdessai := 0;
  vtotnfesai := 0;
  vtotnfeaemsai := 0;
  vtotnfePendente := 0;
  vlPrimeiraNota := 9999999;
  vlUltimaNota := 0;
  while not Self.UQTabela.Eof do
  begin

    vtotsai := vtotsai + Self.uqtabelamesvalor.AsCurrency;
    vtotdessai := vtotdessai + Self.uqtabelamesdesconto.AsCurrency;

    if uqtabelamesnumero.AsInteger <= vlPrimeiraNota then
      vlPrimeiraNota := uqtabelamesnumero.AsInteger;

    if uqtabelamesnumero.AsInteger >= vlUltimaNota then
      vlUltimaNota := uqtabelamesnumero.AsInteger;

    if uqtabelatemcodigo.AsInteger = temNFEPendente then
      vtotnfePendente := vtotnfePendente + uqtabelamestotal.AsCurrency;

    Self.UQTabela.Next;
  end;

  Pltotalsaidas.Caption := 'NFE Total ' + FormatFloat('##,###,##0.00', vtotsai + vtotdessai);

  Pltotaldescontossaidas.Caption := 'Descontos ' + FormatFloat('##,###,##0.00', vtotdessai);
  Pltotalnfesaidas.Caption := 'NFE Líquido ' + FormatFloat('##,###,##0.00', vtotsai);

  if vlPrimeiraNota = 9999999 then
    vlPrimeiraNota := 0;

  Panel2.Caption := 'Primeira Nota: ' + FormatFloat('0000000', vlPrimeiraNota);
  Pltotalliquidosaidas.Caption := 'Última Nota: ' + FormatFloat('0000000', vlUltimaNota);
  if vtotnfePendente > 0 then
  begin
    plTotalPendentes.Visible := True;
    plTotalPendentes.Caption := 'NFE Pendentes ' + FormatFloat('##,###,##0.00', vtotnfePendente);
  end
  else
    plTotalPendentes.Visible := false;

  Self.UQTabela.EnableControls;
  Self.UQTabela.RecNo := rgi;

end;

end.
