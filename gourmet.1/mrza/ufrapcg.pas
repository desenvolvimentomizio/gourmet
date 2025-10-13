unit ufrapcg;

interface

uses
  Winapi.Windows, Winapi.Messages,Vcl.ComCtrls, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, 
Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess,      Vcl.Menus, 
Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfrapcg = class(Tfrabase)
    uqtabelapcgcodigo: TIntegerField;
    uqtabelapcgidentificacao: TStringField;
    uqtabelapcgestrutural: TStringField;
    uqtabelaseacodigo: TIntegerField;
    procedure ActRelatoriosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frapcg: Tfrapcg;

const
vPlTitMdl = 'Seleção de Contas';
implementation

{$R *.dfm}

procedure Tfrapcg.ActRelatoriosExecute(Sender: TObject);
begin
  self.txtfiltro:='razão';
  inherited;

end;

end.
