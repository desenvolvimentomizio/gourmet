unit ufrassn;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfrassn = class(Tfrabase)
    uqtabelassncodigo: TIntegerField;
    uqtabelassnfaturamento: TStringField;
    uqtabelassnaliquota: TFloatField;
    uqtabelassnirpj: TFloatField;
    uqtabelassncsll: TFloatField;
    uqtabelassncofins: TFloatField;
    uqtabelassnpis: TFloatField;
    uqtabelassncpp: TFloatField;
    uqtabelassnicms: TFloatField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frassn: Tfrassn;

  // Início ID do Módulo frassn
const
  vPlIdMd = '03.08.20.006-01';
  vPlTitMdl = 'Tabela de Cálculo para Faixa do Simples Nacional';

  // Fim ID do Módulo frassn

implementation

{$R *.dfm}

uses ufssn;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frassn := Tfrassn.Create(pCargaFrame);
end;

exports formuFrame;

procedure Tfrassn.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfssn, self.uqtabelassncodigo.AsString, '');
end;

procedure Tfrassn.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfssn, '', '');
end;

end.
