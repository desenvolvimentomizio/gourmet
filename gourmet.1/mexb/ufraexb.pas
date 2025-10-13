unit ufraexb;

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
  Tfraexb = class(Tfrabase)
    uqtabelaexbcodigo: TIntegerField;
    uqtabelaexbidentificacao: TStringField;
    uqtabelaexbregistro: TDateField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraexb: Tfraexb;

const
  vPlIdMd = '';
  vPlTitMdl = 'Cadastro de Imagens';

implementation

uses
  ufexb;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraexb := Tfraexb.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraexb := Tfraexb.Create(pCargaFrame);
  try
    fraexb.CriaAcoesDeAcesso;
  finally
    fraexb.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraexb.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  criaformulario(Tfexb, uqtabelaexbcodigo.AsString, '');
end;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraexb := Tfraexb.Create(pCargaFrame);
  Result := fraexb;
end;

exports formuFrame, defineacesso, execute;

procedure Tfraexb.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  criaformulario(Tfexb, '', '');
end;

end.
