unit ufrascl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase;

type
  Tfrascl = class(Tfrabase)
    uqtabelasclchave: TIntegerField;
    uqtabelaflhchave: TIntegerField;
    uqtabelaflhidentificacao: TStringField;
    uqtabelascldata: TDateField;
    uqtabelavhfausente: TIntegerField;
    uqtabelavhfausenteidentificacao: TStringField;
    uqtabelavhfsubstituto: TIntegerField;
    uqtabelavhfsubstitutoidentificacao: TStringField;
    uqtabelasclhoras: TFloatField;
    uqtabelasclobservacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frascl: Tfrascl;

      // In�cio ID do M�dulo frascl
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Substitui��es';

  // Fim ID do M�dulo frascl


implementation

uses
  ufscl;

{$R *.dfm}



function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frascl := Tfrascl.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frascl := Tfrascl.Create(pCargaFrame);
  try
    frascl.CriaAcoesDeAcesso;
  finally
    frascl.Free;
  end;
end;
exports defineacesso, formuFrame;







procedure Tfrascl.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfscl ,uqtabelasclchave.AsString ,'');
end;

procedure Tfrascl.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfscl ,'' ,'');
end;

end.
