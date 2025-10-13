unit ufratob;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratob = class(Tfrabase)
    uqtabelabcocodigo: TStringField;
    uqtabelatobidentificacao: TStringField;
    uqtabelabconome: TStringField;
    uqtabelatobcodigo: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratob: Tfratob;

  // Início ID do Módulo fratob
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Tipos de Ocorrências de Boletos';

  // Fim ID do Módulo fratob

implementation

{$R *.dfm}

uses uftob;

procedure Tfratob.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tftob, self.uqtabelatobcodigo.AsString, '');
end;

procedure Tfratob.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tftob, '', '');
end;

end.
