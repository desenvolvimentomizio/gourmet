unit ufraims;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, upegabase;

type
  Tfraims = class(Tfrabase)
    uqtabelaimscodigo: TIntegerField;
    uqtabelaimsidentificacao: TStringField;
    Action1: TAction;
    uqtabelaimsimagem: TBlobField;
    DBImage1: TDBImage;
    uqtabelaimsregistro: TDateField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraims: Tfraims;

const
  vPlIdMd = '';
  vPlTitMdl = 'Cadastro de Imagens';

implementation

uses
  ufims;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraims := Tfraims.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraims := Tfraims.Create(pCargaFrame);
  try
    fraims.CriaAcoesDeAcesso;
  finally
    fraims.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraims.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  criaformulario(Tfims, uqtabelaimscodigo.AsString, '');
end;

procedure Tfraims.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  criaformulario(Tfims, '', '');
end;

end.
