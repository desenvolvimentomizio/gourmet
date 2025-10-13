unit uframrv;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tframrv = class(Tfrabase)
    uqtabelamrvcodigo: TIntegerField;
    uqtabelamrvidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  framrv: Tframrv;

  // Início ID do Módulo framrv
const
  vPlIdMd = '01.03.80.002-01';
  vPlTitMdl = 'Marca de Veículos';

  // Fim ID do Módulo framrv

implementation

uses ufmrv;

{$R *.dfm}

procedure Tframrv.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfmrv, self.uqtabelamrvcodigo.AsString, '');
end;

procedure Tframrv.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfmrv, '', '');
end;

end.
