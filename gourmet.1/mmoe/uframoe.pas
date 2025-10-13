unit uframoe;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tframoe = class(Tfrabase)
    uqtabelamoecodigo: TIntegerField;
    uqtabelamoeidentificacao: TStringField;
    uqtabelamoesimbolo: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  framoe: Tframoe;

  // Início ID do Módulo framoe
const
  vPlIdMd = '03.06.80.005-01';
  vPlTitMdl = 'Moedas e Indicadores';

  // Fim ID do Módulo framoe

implementation

{$R *.dfm}

uses ufmoe;

procedure Tframoe.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfmoe, self.uqtabelamoecodigo.AsString, '');
end;

procedure Tframoe.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfmoe, '', '');
end;

end.
