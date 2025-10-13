unit ufrattc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase, System.ImageList, Vcl.ImgList;

type
  Tfrattc = class(Tfrabase)
    uqtabelattccodigo: TIntegerField;
    uqtabelattcidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frattc: Tfrattc;

    // Início ID do Módulo frattc
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Tipo de Chamado';

  // Fim ID do Módulo frattc


implementation

uses
  ufttc;

{$R *.dfm}



function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frattc := Tfrattc.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frattc := Tfrattc.Create(pCargaFrame);
  try
    frattc.CriaAcoesDeAcesso;
  finally
    frattc.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfrattc.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfttc, uqtabelattccodigo.AsString, '');
end;

procedure Tfrattc.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfttc, '', '');
end;

end.
