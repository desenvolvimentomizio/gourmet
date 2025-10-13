unit ufraaco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, DAScript, UniScript,
   System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable,
  MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase;

type
  Tfraaco = class(Tfrabase)
    uqtabelaacocodigo: TIntegerField;
    uqtabelaacoidentificacao: TStringField;
    uqtabelaacosigla: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraaco: Tfraaco;


const
  vPlIdMd = '';
  vPlTitMdl = 'Tipos de Ações';

implementation

uses
  ufaco;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraaco := Tfraaco.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraaco := Tfraaco.Create(pCargaFrame);
  try
    fraaco.CriaAcoesDeAcesso;
  finally
    fraaco.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraaco.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfaco, Self.uqtabelaacocodigo.AsString, '');
end;

procedure Tfraaco.ActIncluirExecute(Sender: TObject);
begin
  inherited;

  CriaFormulario(Tfaco, '', '');
end;

end.
