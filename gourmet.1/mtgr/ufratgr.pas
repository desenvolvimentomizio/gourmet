unit ufratgr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase;

type
  Tfratgr = class(Tfrabase)
    uqtabelatgrcodigo: TIntegerField;
    uqtabelatgridentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratgr: Tfratgr;


  // Início ID do Módulo fratgr
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Tipos de Grupos de Produtos';

  // Fim ID do Módulo fratgr


implementation

uses
  uftgr;

{$R *.dfm}



function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratgr := Tfratgr.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratgr := Tfratgr.Create(pCargaFrame);
  try
    fratgr.CriaAcoesDeAcesso;
  finally
    fratgr.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfratgr.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftgr, self.UQTabelatgrcodigo.AsString, '');
end;

procedure Tfratgr.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftgr, '', '');
end;

end.
