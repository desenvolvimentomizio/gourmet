unit ufrapad;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, System.ImageList, Vcl.ImgList,
  Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, upegabase;

type
  Tfrapad = class(Tfrabase)
    uqtabelapadcodigo: TIntegerField;
    uqtabelapadidentificacao: TStringField;
    uqtabelapadncm: TStringField;
    uqtabelapadpis: TFloatField;
    uqtabelapadcofins: TFloatField;
    uqtabelapadextipi: TStringField;
    uqtabelapadcodigopiscofins: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frapad: Tfrapad;

  // Início ID do Módulo fravrp
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Diferncial de Aliquota';

  // Fim ID do Módulo fravrp

implementation

uses
  ufpad;

{$R *.dfm}

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.titulo := vPlTitMdl;
  frapad := Tfrapad.Create(pCargaFrame);
  Result := frapad;
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.titulo := vPlTitMdl;
  frapad := Tfrapad.Create(pCargaFrame);
  try
    frapad.CriaAcoesDeAcesso;
  finally
    frapad.Free;
  end;
end;

exports execute, defineacesso;

procedure Tfrapad.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpad, self.uqtabelapadcodigo.AsString, '');
end;

procedure Tfrapad.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpad, '', '');
end;

end.
