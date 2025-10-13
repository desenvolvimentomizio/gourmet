unit ufratpv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase;

type
  Tfratpv = class(Tfrabase)
    uqtabelatpvcodigo: TIntegerField;
    uqtabelatpvidentificacao: TStringField;
    uqtabelatpvdescontomaximo: TFloatField;
    uqtabelatpvprazomaximo: TIntegerField;
    uqtabelatpvpercentualavista: TFloatField;
    uqtabelatpvpercentual: TFloatField;
    uqtabelatpvintervalodias: TIntegerField;
    uqtabelatpvdiasentrada: TIntegerField;
    uqtabelatipopercentual: TStringField;
    uqtabeladescodigo: TIntegerField;
    dsitp: TUniDataSource;
    itp: TUniQuery;
    DBListaItp: TDBGrid;
    itpitpchave: TIntegerField;
    itptpvcodigo: TIntegerField;
    itpprocodigo: TIntegerField;
    itppronome: TStringField;
    itpitpmaxporvenda: TIntegerField;
    itppuncodigo: TIntegerField;
    itpunisimbolo: TStringField;
    itppunprecoav: TFloatField;
    itppunprecoap: TFloatField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure DBListaItpDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratpv: Tfratpv;

  // Início ID do Módulo fratpv
const
  vPlIdMd = '00.00.0.000-01';
  vPlTitMdl = 'Tabelas de Preços para Venda';

  // Fim ID do Módulo fratpv

implementation

uses
  uftpv;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratpv := Tfratpv.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratpv := Tfratpv.Create(pCargaFrame);
  try
    fratpv.CriaAcoesDeAcesso;
  finally
    fratpv.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfratpv.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftpv, uqtabelatpvcodigo.AsString, '');
end;

procedure Tfratpv.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftpv, '', '');
end;

procedure Tfratpv.DBListaItpDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfratpv.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabela.Active then
    if uqtabelatpvcodigo.AsString <> '' then
    begin

      itp.Close;
      itp.ParamByName('tpvcodigo').AsString := uqtabelatpvcodigo.AsString;
      itp.Open;

    end;
end;

end.
