unit uframea;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tframea = class(Tfrabase)
    uqtabelameamotivo: TStringField;
    uqtabelameacodigo: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  framea: Tframea;

  // Início ID do Módulo frammea
const
  vPlIdMd = '01.02.15.001-01';
  vPlTitMdl = 'Motivos de Estorno';

  // Fim ID do Módulo frammea

implementation

{$R *.dfm}

uses ufmea;

procedure Tframea.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfmea, self.uqtabelameacodigo.asstring, '');
end;

procedure Tframea.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfmea, '', '');
end;

end.
