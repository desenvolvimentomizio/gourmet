unit ufrafin;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfrafin = class(Tfrabase)
    uqtabelafincodigo: TIntegerField;
    uqtabelatrmcodigo: TIntegerField;
    uqtabelafinimpressora: TIntegerField;
    uqtabelamdaidentificacao: TStringField;
    uqtabelacitcodigo: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frafin: Tfrafin;

  // Início ID do Módulo frafin
const
  vPlIdMd = '03.08.19.002-01';
  vPlTitMdl = 'Finalizadores';

  // Fim ID do Módulo frafin

implementation

{$R *.dfm}

uses uffin;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frafin := Tfrafin.Create(pCargaFrame);
  Result := frafin;
end;

exports execute;

procedure Tfrafin.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tffin, self.uqtabelafincodigo.AsString, self.vChaveMestre);
end;

procedure Tfrafin.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tffin, '', self.vChaveMestre);
end;

end.
