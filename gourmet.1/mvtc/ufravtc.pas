unit ufravtc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,uPegaBase;

type
  Tfravtc = class(Tfrabase)
    uqtabelavtcchave: TIntegerField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelatpvcodigo: TIntegerField;
    uqtabelavtcinicio: TDateField;
    uqtabelavtcfinal: TDateField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelatpvidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fravtc: Tfravtc;


  // In�cio ID do M�dulo fravtc
const
  vPlIdMd = '00.00.0.000-01';
  vPlTitMdl = 'Tabelas de Pre�o Autorizadas';

  // Fim ID do M�dulo fravtc

implementation

uses
  ufvtc;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fravtc := Tfravtc.Create(pCargaFrame);
end;


procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fravtc := Tfravtc.Create(pCargaFrame);
  try
    fravtc.CriaAcoesDeAcesso;
  finally
    fravtc.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfravtc.ActAlterarExecute(Sender: TObject);
begin
  inherited;
     CriaFormulario(Tfvtc, uqtabelavtcchave.AsString, '');
end;

procedure Tfravtc.ActIncluirExecute(Sender: TObject);
begin
  inherited;
     CriaFormulario(Tfvtc, '', '');
end;

end.
