unit ufrafnc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfrafnc = class(Tfrabase)
    uqtabelafnccodigo: TIntegerField;
    uqtabelafncidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frafnc: Tfrafnc;

  // Início ID do Módulo frafnc
const
  vPlIdMd = '01.01.02.003-01';
  vPlTitMdl = 'Função dos Colaboradores';

  // Fim ID do Módulo frafnc

implementation

{$R *.dfm}

uses
  uffnc;

procedure Tfrafnc.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tffnc, uqtabelafnccodigo.AsString, '');
end;

procedure Tfrafnc.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tffnc, '', '');
end;

end.
