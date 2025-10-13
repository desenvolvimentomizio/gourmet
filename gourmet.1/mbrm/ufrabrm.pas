unit ufrabrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, VirtualTable, MemDS,
  DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, uPegaBase;

type
  Tfrabrm = class(Tfrabase)
    uqtabelabrmcodigo: TIntegerField;
    uqtabelarmbcodigo: TIntegerField;
    uqtabelabolchave: TIntegerField;
    uqtabelatibcodigo: TIntegerField;
    uqtabelatibreferencia: TStringField;
    uqtabelacarcodigo: TIntegerField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelarmbregistro: TDateTimeField;
    uqtabelatibidentificacao: TStringField;
    uqtabelarmbnumero: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        procedure Carregar; override;
  end;

var
  frabrm: Tfrabrm;


  // Início ID do Módulo frabrm
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Ocorrências em Boletos';

  // Fim ID do Módulo frabrm

implementation

uses
  ufbrm;

{$R *.dfm}


procedure Tfrabrm.ActIncluirExecute(Sender: TObject);
begin
  inherited;
 if CriaFormulario(Tfbrm, '', Self.vChaveMestre) then
    Self.vretorno := Self.vchave
  else
    Self.vretorno := '0';
end;

procedure Tfrabrm.Carregar;
begin
  if FormaFrame = ffDocado then
  begin
    uqtabela.Filter := 'bolchave=' + vChaveMestre ;
    uqtabela.Filtered := True;
  end
  else if FormaFrame = ffFormu then
    if Pos('bolchave= ', TxtFiltro) > 0 then
      vChaveMestre := Trim(copy(TxtFiltro, Pos('bolchave = ', TxtFiltro) + 11, 10));

  inherited;

end;

end.
