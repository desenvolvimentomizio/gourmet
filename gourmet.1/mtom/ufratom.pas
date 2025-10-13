unit ufratom;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfratom = class(Tfrabase)
    uqtabelatomchave: TIntegerField;
    uqtabelatofcodigo: TIntegerField;
    uqtabelatofidentificacao: TStringField;
    uqtabelameschave: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    FMesChave: String;
    procedure SetMesChave(const Value: String);
    { Private declarations }
  published
    property MesChave: String read FMesChave write SetMesChave;
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fratom: Tfratom;

  // Início ID do Módulo fratom
const
  vPlIdMd = '02.04.80.009-01';
  vPlTitMdl = 'Informações Complementares';

  // Fim ID do Módulo fratom

implementation

{$R *.dfm}

uses uftom;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratom := Tfratom.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratom := Tfratom.Create(pCargaFrame);
  try
    fratom.CriaAcoesDeAcesso;
  finally
    fratom.Free;
  end;
end;
 exports  formuFrame,defineacesso;



procedure Tfratom.ActAlterarExecute(Sender: TObject);
begin
  MostraFormu('mtof', uqtabelatofcodigo.AsString, '');

  uqtabela.Refresh;
end;

procedure Tfratom.ActIncluirExecute(Sender: TObject);
var
  vlTofCodigo: String;
begin
  vlTofCodigo := MostraFormu('mtof', '', '');

  if vlTofCodigo = '' then
    Exit;

  consulta.Close;
  consulta.SQL.Text := 'INSERT INTO tom (tofcodigo, meschave) VALUES (' + vlTofCodigo + ',' + MesChave + ')';
  consulta.ExecSQL;

  uqtabela.Refresh;
end;

procedure Tfratom.Carregar;
begin
  if FormaFrame = ffFormu then
    if TxtFiltro <> '' then
      MesChave := TxtFiltro;

  inherited;

end;

procedure Tfratom.SetMesChave(const Value: String);
begin
  FMesChave := Value;

  uqtabela.Params[0].AsString := FMesChave;
end;

end.
