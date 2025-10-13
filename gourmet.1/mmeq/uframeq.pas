unit uframeq;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tframeq = class(Tfrabase)
    uqtabelameqcodigo: TIntegerField;
    uqtabelameqidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frameq: Tframeq;

  // Início ID do Módulo frameq
const
  vPlIdMd = '01.03.80.004-01';
  vPlTitMdl = 'Marcas de Equipamentos';

  // Fim ID do Módulo frameq

implementation

uses
  ufmeq;

{$R *.dfm}

procedure Tframeq.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfmeq, uqtabelameqcodigo.AsString, '');
end;

procedure Tframeq.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfmeq, '', '');
end;

end.
