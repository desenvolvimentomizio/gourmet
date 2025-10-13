unit ufratth;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase;

type
  Tfratth = class(Tfrabase)
    uqtabelatthcodigo: TIntegerField;
    uqtabelatthidentificacao: TStringField;
    uqtabelatthpercentual: TFloatField;
    uqtabelatthnatureza: TIntegerField;
    uqtabelacedidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratth: Tfratth;


  // In�cio ID do M�dulo fratth
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Tipos de Horas';

  // Fim ID do M�dulo fratth


implementation

uses
  uftth;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratth := Tfratth.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratth := Tfratth.Create(pCargaFrame);
  try
    fratth.CriaAcoesDeAcesso;
  finally
    fratth.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfratth.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tftth, uqtabelatthcodigo.AsString , '');
end;

procedure Tfratth.ActIncluirExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tftth, '' , '');
end;

end.
