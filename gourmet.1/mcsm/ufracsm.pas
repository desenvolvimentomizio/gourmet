unit ufracsm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase,
   System.ImageList, Vcl.ImgList;

type
  Tfracsm = class(Tfrabase)
    uqtabelameschave: TIntegerField;
    uqtabelamesemissao: TDateField;
    uqtabelatdfidentificacao: TStringField;
    uqtabelamesnumero: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelamesvalor: TFloatField;
    uqtabelamesdesconto: TFloatField;
    uqtabelamestotal: TFloatField;
    uqtabelasdeidentificacao: TStringField;
    uqtabelatoeidentificacao: TStringField;
    uqtabelamesserie: TStringField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelatrmcodigo: TIntegerField;
    uqtabelamesprotocolo: TStringField;
    uqtabelasdecodigo: TStringField;
    uqtabelamesdatanfe: TDateField;
    uqtabelatemcodigo: TIntegerField;
    uqtabelatdfcodigo: TStringField;
    uqtabelattocodigo: TIntegerField;
    uqtabelamesregistro: TDateField;
    uqtabelaclbvendedor: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelaorcchave: TIntegerField;
    uqtabelatemidentificacao: TStringField;
    uqtabelaclboperador: TStringField;
    uqtabelameshora: TTimeField;
    uqtabelaflasigla: TStringField;
    uqtabelamesprodutos: TFloatField;
    uqtabelamesservicos: TFloatField;
    uqtabelaflacodigo: TIntegerField;
    uqtabelatoecodigo: TIntegerField;
    uqtabelatoecfopsaida: TStringField;
    uqtabelamestipocomissao: TIntegerField;
    itm: TUniQuery;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
    itmunisimbolo: TStringField;
    itmitmvalor: TFloatField;
    itmitmquantidade: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmcfocfop: TStringField;
    itmitmaliqipi: TFloatField;
    itmitmtotalliq: TFloatField;
    itmtoecodigo: TIntegerField;
    itmproncm: TStringField;
    itmcstcodigo: TStringField;
    itmcspcodigo: TStringField;
    itmitmpis: TFloatField;
    itmitmcofins: TFloatField;
    Ditm: TUniDataSource;
    PlItens: TPanel;
    listaitm: TDBGrid;
    plTituloItensDetalhe: TPanel;
    ActProcessar: TAction;
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActProcessarExecute(Sender: TObject);
  private
    procedure AtualizarDetalhe;
    { Private declarations }
  public
    { Public declarations }
    procedure Carregar; override;

  end;

  TProcessaConsumoInterno = function(pAOwner: TApplication; pConexao: TUniConnection): Integer;

var
  fracsm: Tfracsm;

  // Início ID do Módulo fravnd
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Consumo Interno';

  // Fim ID do Módulo fravndv

implementation

uses
  ufcsm;

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracsm := Tfracsm.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracsm := Tfracsm.Create(pCargaFrame);
  try
    fracsm.CriaAcoesDeAcesso;
  finally
    fracsm.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfracsm.Carregar;
begin

  inherited Carregar;

  CarregarColunas(listaitm);

end;

procedure Tfracsm.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  AtualizarDetalhe;
end;

procedure Tfracsm.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfcsm, uqtabelameschave.AsString, '');
end;

procedure Tfracsm.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfcsm, '', '');
end;

procedure Tfracsm.ActProcessarExecute(Sender: TObject);
var
  ProcessaConsumoInterno: TProcessaConsumoInterno;
  vlRetorno: Integer;
  vlActCodigo: Integer;
  vlPackLia: Cardinal;
begin

  vlPackLia := LoadPackage('modulos\mcsm.bpl');
  if vlPackLia <> 0 then
    try
      @ProcessaConsumoInterno := GetProcAddress(vlPackLia, PChar('ProcessaConsumoInterno'));

      if Assigned(ProcessaConsumoInterno) then
      begin
        vlRetorno := ProcessaConsumoInterno(Application, ZCone);
      end;
    finally
    end;

end;

procedure Tfracsm.AtualizarDetalhe;
begin

  itm.Close;
  itm.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  itm.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
  itm.Open;

end;

end.
