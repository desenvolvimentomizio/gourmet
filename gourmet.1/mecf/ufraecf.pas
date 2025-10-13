unit ufraecf;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfraecf = class(Tfrabase)
    uqtabelaecfcodigo: TIntegerField;
    uqtabelaecfidentificacao: TStringField;
    uqtabelaecftipodoc: TStringField;
    uqtabelaecfcaixa: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fraecf: Tfraecf;

  // Início ID do Módulo fraecf
const
  vPlIdMd = '03.08.19.001-01';
  vPlTitMdl = 'Cadastro de Emissor de Cupom Fiscal - ECF';

  // Fim ID do Módulo fraecf

implementation

{$R *.dfm}

uses ufecf;

procedure Tfraecf.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfecf, self.uqtabelaecfcodigo.AsString, '');
end;

procedure Tfraecf.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfecf, '', '');
end;

end.
