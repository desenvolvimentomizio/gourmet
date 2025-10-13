unit ufrapde;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfrapde = class(Tfrabase)
    uqtabelapdecodigo: TIntegerField;
    uqtabelapdeidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frapde: Tfrapde;

  // Início ID do Módulo frapde
const
  vPlIdMd = '01.01.05.015-01';
  vPlTitMdl = 'Prédio do Endereçamento de Produtos';

  // Fim ID do Módulo frapde

implementation

uses
  ufpde;

{$R *.dfm}

procedure Tfrapde.ActAlterarExecute(Sender: TObject);
begin
  if uqtabelapdecodigo.AsInteger = 0 then
  begin
    Application.MessageBox(PChar('Registro padrão do sistema, não pode ser alterado!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  CriaFormulario(Tfpde, self.uqtabelapdecodigo.AsString, '');
end;

procedure Tfrapde.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfpde, '', '');
end;

end.
