unit ufraape;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
     Vcl.Menus, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tfraape = class(Tfrabase)
    uqtabelaapecodigo: TIntegerField;
    uqtabelaapeidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraape: Tfraape;

  // Início ID do Módulo fraape
const
  vPlIdMd = '01.01.05.017-01';
  vPlTitMdl = 'Apartamento do Endereçamento de Produtos';

  // Fim ID do Módulo fraape

implementation

uses
  ufape;

{$R *.dfm}

procedure Tfraape.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfape, fape, self.uqtabelaapecodigo.AsString, '');
end;

procedure Tfraape.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfape, fape, '', '');
end;

end.
