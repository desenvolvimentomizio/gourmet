unit uframwh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc,  System.ImageList, Vcl.ImgList,
  Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, upegabase;

type
  Tframwh = class(Tfrabase)
    uqtabelamwhchave: TIntegerField;
    uqtabelamwhtexto: TStringField;
    uqtabelamwhimagem: TBlobField;
    uqtabelamwhsegunda: TIntegerField;
    uqtabelamwhterca: TIntegerField;
    uqtabelamwhquarta: TIntegerField;
    uqtabelamwhquinta: TIntegerField;
    uqtabelamwhsexta: TIntegerField;
    uqtabelamwhsabado: TIntegerField;
    uqtabelamwhdomingo: TIntegerField;
    uqtabelamwhtipo: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  framwh: Tframwh;


  // Início ID do Módulo fravrp
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Mensagens do Whats';

  // Fim ID do Módulo fravrp


implementation

uses
  ufmwh;

{$R *.dfm}




function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.titulo := vPlTitMdl;
  framwh := Tframwh.Create(pCargaFrame);
  Result := framwh;
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.titulo := vPlTitMdl;
  framwh := Tframwh.Create(pCargaFrame);
  try
    framwh.CriaAcoesDeAcesso;
  finally
    framwh.Free;
  end;
end;



function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  framwh := Tframwh.Create(pCargaFrame);
end;
exports execute, defineacesso, formuFrame;

procedure Tframwh.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfmwh, self.uqtabelamwhchave.AsString,'');
end;

procedure Tframwh.ActIncluirExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tfmwh, '','');
end;

end.
