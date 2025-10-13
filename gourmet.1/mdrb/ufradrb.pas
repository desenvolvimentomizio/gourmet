unit ufradrb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfradrb = class(Tfrabase)
    uqtabeladrbcodigo: TIntegerField;
    uqtabelartbcodigo: TIntegerField;
    uqtabelatcbcodigo: TIntegerField;
    uqtabeladrbcstcsosn: TStringField;
    uqtabeladrbperbaicms: TFloatField;
    uqtabeladrbaliqicms: TFloatField;
    uqtabeladrbaliqicmsst: TFloatField;
    uqtabeladrbivaicmsst: TFloatField;
    uqtabeladrbdestacaicms: TIntegerField;
    uqtabeladrbdestacaicmsst: TIntegerField;
    uqtabeladrbdestacaipi: TIntegerField;
    uqtabeladrbinfoadicfisco: TStringField;
    uqtabelacfocfop: TStringField;
    uqtabelaotbcodigo: TIntegerField;
    uqtabelatcbidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;

  end;

var
  fradrb: Tfradrb;

  // Início ID do Módulo frartb
const
  vPlIdMd = '01.11.20.002-01';
  vPlTitMdl = 'Detalhe Regras Tributárias';

  // Fim ID do Módulo frartb

implementation

{$R *.dfm}

uses ufdrb;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fradrb := Tfradrb.Create(pCargaFrame);
  Result := fradrb;
end;

exports execute;

procedure Tfradrb.ActAlterarExecute(Sender: TObject);
begin

  if CriaFormulario(Tfdrb, Self.uqtabeladrbcodigo.AsString, Self.vChaveMestre) then
    Self.vretorno := Self.vchave
  else
    Self.vretorno := '0';
end;

procedure Tfradrb.ActAtualizarExecute(Sender: TObject);
begin

  if txtfiltro <> '' then
  begin
    Self.uqtabela.Filter := txtfiltro;
    Self.uqtabela.Filtered := True;
  end;

  inherited;

end;

procedure Tfradrb.ActIncluirExecute(Sender: TObject);
begin
  if CriaFormulario(Tfdrb, '', Self.vChaveMestre) then
    Self.vretorno := Self.vchave
  else
    Self.vretorno := '0';
end;

procedure Tfradrb.Carregar;
begin

  if vChaveMestre <> '' then
  begin
    uqtabela.Filter := 'rtbcodigo = ' + vChaveMestre;
    uqtabela.Filtered := True;
  end;

  inherited;

end;

end.
