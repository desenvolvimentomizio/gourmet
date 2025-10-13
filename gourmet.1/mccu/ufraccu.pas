unit ufraccu;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfraccu = class(Tfrabase)
    uqtabelaccucodigo: TStringField;
    uqtabelaccuidentificacao: TStringField;
    uqtabelaccudtinicio: TDateField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fraccu: Tfraccu;

  // Início ID do Módulo fraccu
const
  vPlIdMd = '02.02.16.002-01';
  vPlTitMdl = 'Centros de Custos';

  // Fim ID do Módulo fraccu

implementation

{$R *.dfm}

uses ufccu;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraccu := Tfraccu.Create(pCargaFrame);
end;

exports formuFrame;

procedure Tfraccu.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfccu, self.uqtabelaccucodigo.AsString, '');
end;

procedure Tfraccu.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfccu, '', '');
end;

end.
