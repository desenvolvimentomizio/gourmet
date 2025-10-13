unit ufratrm;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfratrm = class(Tfrabase)
    uqtabelatrmcodigo: TIntegerField;
    uqtabelatrmidentificacao: TStringField;
    ActConta: TAction;
    ctr: tuniquery;
    ctrctrcodigo: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActContaExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
  private
  public
    { Public declarations }
  end;

var
  fratrm: Tfratrm;

  // Início ID do Módulo fratrm
const
  vPlIdMd = '02.03.81.001-01';
  vPlTitMdl = 'Terminais';

  // Fim ID do Módulo fratrm

implementation

{$R *.dfm}

uses uftrm, ufctr;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratrm := Tfratrm.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratrm := Tfratrm.Create(pCargaFrame);
  try
    fratrm.CriaAcoesDeAcesso;
  finally
    fratrm.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfratrm.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftrm, self.uqtabelatrmcodigo.AsString, '');
end;

procedure Tfratrm.ActContaExecute(Sender: TObject);
var
  vctacodigo: string;
begin
  inherited;

  vctacodigo := self.ctrctrcodigo.AsString;

  if vctacodigo = '' then
    vctacodigo := '0';

  CriaFormulario(Tfctr, vctacodigo, self.uqtabelatrmcodigo.AsString);
end;

procedure Tfratrm.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftrm, '', '');
end;

procedure Tfratrm.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabela.Active then
  begin
    if self.uqtabelatrmcodigo.AsString <> '' then
    begin
      ctr.Close;
      ctr.Params[0].AsInteger := self.uqtabelatrmcodigo.AsInteger;
      ctr.Open;
    end;
  end;
end;

end.
