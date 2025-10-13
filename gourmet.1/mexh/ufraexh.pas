unit ufraexh;

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
  Tfraexh = class(Tfrabase)
    uqtabelaexhcodigo: TIntegerField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaexbcodigo: TIntegerField;
    uqtabelaexhsegunda: TIntegerField;
    uqtabelaexhterca: TIntegerField;
    uqtabelaexhquarta: TIntegerField;
    uqtabelaexhquinta: TIntegerField;
    uqtabelaexhsexta: TIntegerField;
    uqtabelaexhsabado: TIntegerField;
    uqtabelaexhdomingo: TIntegerField;
    uqtabelaexhidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraexh: Tfraexh;

const
  vPlIdMd = 'Controle de Dias';
  vPlTitMdl = 'Controle de Dias';

implementation

uses
  ufexh;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraexh := Tfraexh.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraexh := Tfraexh.Create(pCargaFrame);
  try
    fraexh.CriaAcoesDeAcesso;
  finally
    fraexh.Free;
  end;
end;


function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraexh := Tfraexh.Create(pCargaFrame);

  // incluido por daniel 23/012018 15:26
  fraexh.vChaveMestre:=pCargaFrame.ChaveMestre;

  Result := fraexh;
end;

exports formuFrame, defineacesso, execute;

procedure Tfraexh.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  // incluido por daniel 23/012018 15:26
  criaformulario(Tfexh, uqtabelaexhcodigo.AsString, vChaveMestre);
end;

procedure Tfraexh.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  // incluido por daniel 23/012018 15:26
  criaformulario(Tfexh, '', vChaveMestre);
end;

end.
