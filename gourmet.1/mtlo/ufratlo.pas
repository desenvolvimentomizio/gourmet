unit ufratlo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uPegaBase;

type
  Tfratlo = class(Tfrabase)
    uqtabelatlocodigo: TIntegerField;
    uqtabelatloidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratlo: Tfratlo;

    // Início ID do Módulo fratlo
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Lotações';

  // Fim ID do Módulo fratlo

implementation

uses
  uftlo;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratlo := Tfratlo.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratlo := Tfratlo.Create(pCargaFrame);
  try
    fratlo.CriaAcoesDeAcesso;
  finally
    fratlo.Free;
  end;
end;

exports defineacesso, formuFrame;


procedure Tfratlo.ActAlterarExecute(Sender: TObject);
begin
  inherited;
    CriaFormulario(Tftlo ,uqtabelatlocodigo.AsString ,'');
end;

procedure Tfratlo.ActIncluirExecute(Sender: TObject);
begin
  inherited;
    CriaFormulario(Tftlo ,'' ,'');
end;

end.
