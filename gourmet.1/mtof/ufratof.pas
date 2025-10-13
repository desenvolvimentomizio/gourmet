unit ufratof;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfratof = class(Tfrabase)
    uqtabelatofcodigo: TIntegerField;
    uqtabelatofidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fratof: Tfratof;

  // Início ID do Módulo fratof
const
  vPlIdMd = '02.04.80.008-01';
  vPlTitMdl = 'Observações das NFEs';

  // Fim ID do Módulo fratof

implementation

{$R *.dfm}

uses uftof;

procedure Tfratof.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tftof, self.uqtabelatofcodigo.AsString, '');
end;

procedure Tfratof.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tftof, '', '');
end;

end.
