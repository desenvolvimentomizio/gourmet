unit ufratct;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfratct = class(Tfrabase)
    uqtabelatctcodigo: TIntegerField;
    uqtabelatctidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fratct: Tfratct;

  // Início ID do Módulo fratct
const
  vPlIdMd = '01.02.07.003-01';
  vPlTitMdl = 'Tipos de Contas';

  // Fim ID do Módulo fratct

implementation

{$R *.dfm}

uses uftct;

procedure Tfratct.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tftct, self.uqtabelatctcodigo.AsString, '');
end;

procedure Tfratct.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tftct, '', '');
end;

end.
