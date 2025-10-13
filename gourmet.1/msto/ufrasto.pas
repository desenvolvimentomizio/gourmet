unit ufrasto;

interface

uses
  Winapi.Windows, Winapi.Messages,Vcl.ComCtrls, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, 
Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess,      Vcl.Menus, 
Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfrasto = class(Tfrabase)
    uqtabelastoidentificacao: TStringField;
    uqtabelastocodigo: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frasto: Tfrasto;

const
vPlTitMdl = 'Situação do Orçamento';
implementation

{$R *.dfm}

end.
