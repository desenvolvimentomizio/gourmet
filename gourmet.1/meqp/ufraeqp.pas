unit ufraeqp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase,
  VirtualTable, Data.DB, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tfraeqp = class(Tfrabase)
    uqtabelaeqpcodigo: TIntegerField;
    uqtabelaeqpnumserie: TStringField;
    uqtabelaeqpidentificacao: TStringField;
    uqtabelaeqpmodelo: TStringField;
    uqtabelameqidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraeqp: Tfraeqp;

  // Início ID do Módulo fraeqp
const
  vPlIdMd = '01.03.80.005-01';
  vPlTitMdl = 'Equipamentos';

  // Fim ID do Módulo fraeqp

implementation

uses
  ufeqp;

{$R *.dfm}

procedure Tfraeqp.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfeqp, uqtabelaeqpcodigo.AsString, '');
end;

procedure Tfraeqp.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfeqp, '', '');
end;

end.
