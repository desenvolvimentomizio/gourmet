unit ufratbf;

interface

uses
  Winapi.Windows, Winapi.Messages,Vcl.ComCtrls, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, 
Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess,      Vcl.Menus, 
Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfratbf = class(Tfrabase)
    uqtabelatbfcodigo: TIntegerField;
    uqtabelatbfidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratbf: Tfratbf;

const
vPlTitMdl = 'Tabela de Registro Financeiro';
implementation

{$R *.dfm}

end.
