unit ufrapsm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase;

type
  Tfrapsm = class(Tfrabase)
    uqtabelapsmchave: TIntegerField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelapsmregistro: TDateTimeField;
    uqtabelapsmtexto01: TStringField;
    uqtabelapsmtexto02: TStringField;
    uqtabelapsmtexto03: TStringField;
    uqtabelapsmtexto04: TStringField;
    uqtabelapsmtexto05: TStringField;
    ActEnviarSMS: TAction;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActEnviarSMSExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frapsm: Tfrapsm;

implementation

uses
  ufpsm;


  // Início ID do Módulo frapsm
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Programação de envio SMS';

  // Fim ID do Módulo frapsm

{$R *.dfm}




function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapsm := Tfrapsm.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frapsm := Tfrapsm.Create(pCargaFrame);
  try
    frapsm.CriaAcoesDeAcesso;
  finally
    frapsm.Free;
  end;
end;

exports defineacesso, formuFrame;




procedure Tfrapsm.ActAlterarExecute(Sender: TObject);
begin
  inherited;
   CriaFormulario(Tfpsm, uqtabelapsmchave.AsString, '');
end;

procedure Tfrapsm.ActEnviarSMSExecute(Sender: TObject);
begin
  inherited;
  mostralista('msms','',uqtabelapsmchave.AsString);
end;

procedure Tfrapsm.ActIncluirExecute(Sender: TObject);
begin
  inherited;
   CriaFormulario(Tfpsm, '', '');
end;

end.
