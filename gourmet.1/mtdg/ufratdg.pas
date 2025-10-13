unit ufratdg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfratdg = class(Tfrabase)
    uqtabelatdgcodigo: TIntegerField;
    uqtabelatdgidentificacao: TStringField;
    uqtabelatfdidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratdg: Tfratdg;

  // Início ID do Módulo fratdg
const
  vPlIdMd = '03.06.81.009-01';
  vPlTitMdl = 'Eventos a Contabilizar';

  // Fim ID do Módulo fratdg

implementation

{$R *.dfm}

uses uftdg;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratdg := Tfratdg.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratdg := Tfratdg.Create(pCargaFrame);
  try
    fratdg.CriaAcoesDeAcesso;
  finally
    fratdg.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfratdg.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tftdg, self.uqtabelatdgcodigo.asstring, '');
end;

procedure Tfratdg.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tftdg, '', '');
end;

end.
