unit ufratcm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase, System.ImageList, Vcl.ImgList;

type
  Tfratcm = class(Tfrabase)
    uqtabelatcmcodigo: TIntegerField;
    uqtabelatcmidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratcm: Tfratcm;


      // Início ID do Módulo frattc
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Categorias dos Chamados';

  // Fim ID do Módulo frattc

implementation

uses
  uftcm;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratcm := Tfratcm.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratcm := Tfratcm.Create(pCargaFrame);
  try
    fratcm.CriaAcoesDeAcesso;
  finally
    fratcm.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfratcm.ActAlterarExecute(Sender: TObject);
begin
  inherited;
   CriaFormulario(tftcm, uqtabelatcmcodigo.AsString , '');
end;

procedure Tfratcm.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tftcm, '', '');
end;

end.
