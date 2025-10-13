unit uframdp;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Vcl.StdCtrls, Vcl.DBCtrls, VirtualTable,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, 
  System.ImageList, Vcl.ImgList, Vcl.Dialogs, Vcl.Mask, Vcl.Graphics;

type
  Tframdp = class(Tfrabase)
    uqtabelamdpdescricao: TStringField;
    mdpdescricao: TDBMemo;
    uqtabelaprjcodigo: TIntegerField;
    uqtabelamdpcodigo: TIntegerField;
    uqtabelamdpidentificacao: TStringField;
    uqtabelamdpordem: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  framdp: Tframdp;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

  // Início ID do Módulo framdp
const
  vPlIdMd = '03.07.80.006-01';
  vPlTitMdl = 'Módulos';

  // Fim ID do Módulo framdp

implementation

{$R *.dfm}

uses ufmdp;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  framdp := Tframdp.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  framdp := Tframdp.Create(pCargaFrame);
  try
    framdp.CriaAcoesDeAcesso;
  finally
    framdp.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tframdp.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfmdp, uqtabelamdpcodigo.AsString, '');
end;

procedure Tframdp.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfmdp, '', '');
end;

end.
