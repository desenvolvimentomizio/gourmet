unit ufraumo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, DAScript, UniScript,
   System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable,
  MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase;

type
  Tfraumo = class(Tfrabase)
    uqtabelaumocodigo: TIntegerField;
    uqtabelaumoidentificacao: TStringField;
    uqtabelaumosigla: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraumo: Tfraumo;

const
  vPlIdMd = '';
  vPlTitMdl = 'Unidades Monetárias';

implementation

uses
  ufumo;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraumo := Tfraumo.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraumo := Tfraumo.Create(pCargaFrame);
  try
    fraumo.CriaAcoesDeAcesso;
  finally
    fraumo.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraumo.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfumo, self.uqtabelaumocodigo.AsString, '');
end;

procedure Tfraumo.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfumo, '', '');
end;

end.
