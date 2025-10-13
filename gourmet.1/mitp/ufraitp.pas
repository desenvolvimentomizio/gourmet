unit ufraitp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase;

type
  Tfraitp = class(Tfrabase)
    uqtabelaitpchave: TIntegerField;
    uqtabelatpvcodigo: TIntegerField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelapronome: TStringField;
    uqtabelaitpmaxporvenda: TIntegerField;
    uqtabelapuncodigo: TIntegerField;
    uqtabelaunisimbolo: TStringField;
    uqtabelapunprecoav: TFloatField;
    uqtabelapunprecoap: TFloatField;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgrefepro: TIntegerField;
    cfgcfgdoisprecos: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
  private
    procedure atualizacolunas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraitp: Tfraitp;


  // Início ID do Módulo fraitp
const
  vPlIdMd = '00.00.0.000-01';
  vPlTitMdl = 'Itens da Tabela Preços';

  // Fim ID do Módulo fraitp

implementation

uses
  ufitp;

{$R *.dfm}



function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraitp := Tfraitp.Create(pCargaFrame);
  Result := fraitp;

end;


procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraitp := Tfraitp.Create(pCargaFrame);
  try
    fraitp.CriaAcoesDeAcesso;
  finally
    fraitp.Free;
  end;
end;

exports execute, defineacesso;



procedure Tfraitp.atualizacolunas;
begin
  cfg.Close;
  cfg.Open;

  if cfgcfgdoisprecos.AsInteger = 1 then
    ocultarcoluna('punprecoap', True, dbglista)
  else
    ocultarcoluna('punprecoap', False, dbglista);
end;

procedure Tfraitp.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfitp, uqtabelaitpchave.AsString, vChaveMestre);
end;

procedure Tfraitp.ActAtualizarExecute(Sender: TObject);
begin
  inherited;

  atualizacolunas;
end;

procedure Tfraitp.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfitp, '', vChaveMestre);
end;

end.
