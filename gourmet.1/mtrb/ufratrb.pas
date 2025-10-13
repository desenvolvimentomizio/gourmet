unit ufratrb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratrb = class(Tfrabase)
    uqtabelatrbcodigo: TIntegerField;
    uqtabelatrbidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fratrb: Tfratrb;

  // Início ID do Módulo fratrb
const
  vPlIdMd = '01.01.05.010-01';
  vPlTitMdl = 'Tributação Especial de Produtos';

  // Fim ID do Módulo fratrb

implementation

{$R *.dfm}

uses uftrb;

procedure Tfratrb.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tftrb, self.uqtabelatrbcodigo.AsString, '');
end;

procedure Tfratrb.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tftrb, '', '');
end;

end.
