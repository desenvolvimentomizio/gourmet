unit ufrapct;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfrapct = class(Tfrabase)
    uqtabelapctchave: TIntegerField;
    uqtabelaflaidentificacao: TStringField;
    uqtabelaflacodigo: TIntegerField;
    uqtabelapctidentificacao: TStringField;
    uqtabelatdgcodigo: TIntegerField;
    uqtabelatdgidentificacao: TStringField;
    uqtabelatogorigctacre: TIntegerField;
    uqtabelatogidentificacaodeb: TStringField;
    uqtabelatogidentificacaocre: TStringField;
    uqtabelatogorigctadeb: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Carregar; override;

    procedure descarregar; OVERLOAD;
  end;

var
  frapct: Tfrapct;

  // Início ID do Módulo frapct
const
  vPlIdMd = '03.06.81.010-01';
  vPlTitMdl = 'Processos de Contabilização';

  // Fim ID do Módulo frapct

implementation

{$R *.dfm}

uses ufpct;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapct := Tfrapct.Create(pCargaFrame);
  Result := frapct;
end;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapct := Tfrapct.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frapct := Tfrapct.Create(pCargaFrame);
  try
    frapct.CriaAcoesDeAcesso;
  finally
    frapct.Free;
  end;
end;

exports formuFrame, defineacesso, execute;

procedure Tfrapct.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfpct, Self.uqtabelapctchave.AsString, vChaveMestre);
end;

procedure Tfrapct.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfpct, '', vChaveMestre);
end;

procedure Tfrapct.Carregar;
begin

  if FormaFrame = ffDocado then
    if vChaveMestre <> '' then
    begin
      uqtabela.Filter := 'tdgcodigo = ' + vChaveMestre;;
      uqtabela.Filtered := True;
    end;

  inherited;

end;

procedure Tfrapct.descarregar;
begin
  salvacolunas;

end;

end.
