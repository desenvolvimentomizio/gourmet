unit ufragrm;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfragrm = class(Tfrabase)
    uqtabelagrmcodigo: TIntegerField;
    uqtabelamdpidentificacao: TStringField;
    uqtabelamdpcodigo: TIntegerField;
    uqtabelagrmidentificacao: TStringField;
    uqtabelagrmordem: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fragrm: Tfragrm;

  // Início ID do Módulo fragrm
const
  vPlIdMd = '03.07.80.014-01';
  vPlTitMdl = 'Grupos de Botões';

  // Fim ID do Módulo fragrm

implementation

uses
  ufgrm;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fragrm := Tfragrm.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fragrm := Tfragrm.Create(pCargaFrame);
  try
    fragrm.CriaAcoesDeAcesso;
  finally
    fragrm.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfragrm.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfgrm, uqtabelagrmcodigo.AsString, '');
end;

procedure Tfragrm.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfgrm, '', '');
end;

end.
