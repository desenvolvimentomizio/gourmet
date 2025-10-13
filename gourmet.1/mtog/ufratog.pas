unit ufratog;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratog = class(Tfrabase)
    uqtabelatogcodigo: TIntegerField;
    uqtabelatogidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratog: Tfratog;

  // Início ID do Módulo fratog
const
  vPlIdMd = '03.06.81.008-01';
  vPlTitMdl = 'Origem dos Campos para Contabilização';

  // Fim ID do Módulo fratog

implementation

{$R *.dfm}

uses uftog;

procedure Tfratog.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tftog, uqtabelatogcodigo.AsString, '');
end;

procedure Tfratog.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tftog, '', '');
end;

end.
