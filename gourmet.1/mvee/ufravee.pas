unit ufravee;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, uPegaBase,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  Tfravee = class(Tfrabase)
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaedrcomple: TStringField;
    uqtabelaveiplaca: TStringField;
    uqtabelaveechave: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fravee: Tfravee;


  // Início ID do Módulo fravee
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Placas de Veiculos';

  // Fim ID do Módulo fravee


implementation

uses
  ufvee;

{$R *.dfm}



function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fravee := Tfravee.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fravee := Tfravee.Create(pCargaFrame);
  try
    fravee.CriaAcoesDeAcesso;
  finally
    fravee.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfravee.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfvee, uqtabelaveechave.AsString , '');
end;

procedure Tfravee.ActIncluirExecute(Sender: TObject);
begin
  inherited;
     CriaFormulario(Tfvee, '', '');

end;

end.
