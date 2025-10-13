unit ufracrf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, DAScript, UniScript,
   System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable,
  MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase;

type
  Tfracrf = class(Tfrabase)
    uqtabelacrfcodigo: TIntegerField;
    uqtabelacrfidentificacao: TStringField;
    uqtabelacrfsigla: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fracrf: Tfracrf;

const
  vPlIdMd = '';
  vPlTitMdl = 'Índices de Correção Montária';

implementation

uses
  ufcrf;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracrf := Tfracrf.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracrf := Tfracrf.Create(pCargaFrame);
  try
    fracrf.CriaAcoesDeAcesso;
  finally
    fracrf.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfracrf.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfcrf, self.uqtabelacrfcodigo.AsString, '');
end;

procedure Tfracrf.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfcrf, '', '');
end;

end.
