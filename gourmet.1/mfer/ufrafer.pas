unit ufrafer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage,upegabase, System.ImageList, Vcl.ImgList;

type
  Tfrafer = class(Tfrabase)
    uqtabelafercodigo: TIntegerField;
    uqtabelaferidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frafer: Tfrafer;


  // Início ID do Módulo frafer
const
  vPlIdMd = '00.00.0.000-01';
  vPlTitMdl = 'Utensílios ou Ferramentas';

  // Fim ID do Módulo frafer

implementation

uses
  uffer;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frafer := Tfrafer.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frafer := Tfrafer.Create(pCargaFrame);
  try
    frafer.CriaAcoesDeAcesso;
  finally
    frafer.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrafer.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tffer, uqtabelafercodigo.AsString, '');
end;

procedure Tfrafer.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tffer, '', '');
end;

end.
