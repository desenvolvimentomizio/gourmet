unit ufrafct;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  Tfrafct = class(Tfrabase)
    uqtabelafctchave: TIntegerField;
    RadioButton1: TRadioButton;
    uqtabelactacodigo: TIntegerField;
    uqtabelactaidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frafct: Tfrafct;


  // Início ID do Módulo fratog
const
  vPlIdMd = '03.06.81.011-01';
  vPlTitMdl = 'Configurações de Contas para Folha Gerencial';

  // Fim ID do Módulo fratog

implementation

{$R *.dfm}

end.
