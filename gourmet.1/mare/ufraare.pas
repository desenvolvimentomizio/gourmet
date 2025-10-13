unit ufraare;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfraare = class(Tfrabase)
    uqtabelaarecodigo: TIntegerField;
    uqtabelaareidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraare: Tfraare;

  // Início ID do Módulo fraare
const
  vPlIdMd = '01.01.05.014-01';
  vPlTitMdl = 'Área do Endereçamento de Produtos';

  // Fim ID do Módulo fraare

implementation

uses ufare;
{$R *.dfm}

procedure Tfraare.ActAlterarExecute(Sender: TObject);
begin
  if uqtabelaarecodigo.AsInteger = 0 then
  begin
    Application.MessageBox(PChar('Registro padrão do sistema, não pode ser alterado!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  inherited;
  CriaFormulario(Tfare, self.uqtabelaarecodigo.AsString, '');
end;

procedure Tfraare.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfare, '', '');
end;

end.
