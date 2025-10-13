unit ufratto;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratto = class(Tfrabase)
    uqtabelattocodigo: TIntegerField;
    uqtabelattoidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fratto: Tfratto;

  // Início ID do Módulo fratto
const
  vPlIdMd = '02.04.11.006-01';
  vPlTitMdl = 'Tipos de Operação de Estoque';

  // Fim ID do Módulo fratto

implementation

{$R *.dfm}

uses uftto;

procedure Tfratto.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tftto, uqtabelattocodigo.AsString, '');
end;

procedure Tfratto.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tftto, '', '');
end;

end.
