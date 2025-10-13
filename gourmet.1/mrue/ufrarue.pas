unit ufrarue;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfrarue = class(Tfrabase)
    uqtabelaruecodigo: TIntegerField;
    uqtabelarueidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frarue: Tfrarue;

  // In�cio ID do M�dulo frarue
const
  vPlIdMd = '01.01.05.014-01';
  vPlTitMdl = 'Rua do Endere�amento de Produtos';

  // Fim ID do M�dulo frarue

implementation

uses
  ufrue;

{$R *.dfm}

procedure Tfrarue.ActAlterarExecute(Sender: TObject);
begin
  if uqtabelaruecodigo.AsInteger = 0 then
  begin
    Application.MessageBox(PChar('Registro padr�o do sistema, n�o pode ser alterado!'), 'Aten��o', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  inherited;
  CriaFormulario(Tfrue, self.uqtabelaruecodigo.AsString, '');
end;

procedure Tfrarue.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfrue, '', '');
end;

end.
