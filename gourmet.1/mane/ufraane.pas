unit ufraane;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfraane = class(Tfrabase)
    uqtabelaanecodigo: TIntegerField;
    uqtabelaaneidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraane: Tfraane;

  // In�cio ID do M�dulo fraane
const
  vPlIdMd = '01.01.05.016-01';
  vPlTitMdl = 'Andar do Endere�amento de Produtos';

  // Fim ID do M�dulo fraane

implementation

uses
  ufane;

{$R *.dfm}

procedure Tfraane.ActAlterarExecute(Sender: TObject);
begin
  if uqtabelaanecodigo.AsInteger = 0 then
  begin
    Application.MessageBox(PChar('Registro padr�o do sistema, n�o pode ser alterado!'), 'Aten��o', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  CriaFormulario(Tfane, self.uqtabelaanecodigo.AsString, '');
end;

procedure Tfraane.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfane, '', '');
end;

end.
