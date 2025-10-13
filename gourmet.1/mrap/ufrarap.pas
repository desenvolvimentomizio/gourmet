unit ufrarap;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, DAScript, UniScript,
   System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable,
  MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase;

type
  Tfrarap = class(Tfrabase)
    uqtabelarapchave: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelacavpasta: TStringField;
    uqtabelarappercentual: TFloatField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frarap: Tfrarap;

  const
  vPlIdMd = '';
  vPlTitMdl = 'Participações';

implementation

uses
  ufrap;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frarap := Tfrarap.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frarap := Tfrarap.Create(pCargaFrame);
  try
    frarap.CriaAcoesDeAcesso;
  finally
    frarap.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrarap.ActAlterarExecute(Sender: TObject);
begin
  inherited;
   CriaFormulario(Tfrap, uqtabelarapchave.AsString,vChaveMestre);
end;

procedure Tfrarap.ActIncluirExecute(Sender: TObject);
begin
  inherited;
   CriaFormulario(Tfrap, '',vChaveMestre);
end;

end.
