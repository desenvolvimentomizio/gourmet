unit ufratco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage,uPegaBase;

type
  Tfratco = class(Tfrabase)
    uqtabelatcochave: TIntegerField;
    uqtabelavhfcodigo: TIntegerField;
    uqtabelattbcodigo: TIntegerField;
    uqtabelattbidentificacao: TStringField;
    uqtabelatcodescricao: TStringField;
    uqtabelatcovalorhora: TFloatField;
    uqtabelatcohoras: TTimeField;
    uqtabelaflhidentificacao1: TStringField;
    uqtabelaflhidentificacao2: TStringField;
    uqtabelavhfidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratco: Tfratco;


  // Início ID do Módulo fratco
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Trabalhos de Conclusão';

  // Fim ID do Módulo fratco


implementation

uses
  uftco;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratco := Tfratco.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratco := Tfratco.Create(pCargaFrame);
  try
    fratco.CriaAcoesDeAcesso;
  finally
    fratco.Free;
  end;
end;
exports defineacesso, formuFrame;

procedure Tfratco.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftco, uqtabelatcochave.asstring, '');
end;

procedure Tfratco.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftco, '', '');
end;

end.
