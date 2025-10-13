unit ufraprm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase,
  VirtualTable, Data.DB, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, uPegaBase;

type
  Tfraprm = class(Tfrabase)
    uqtabelaprmcodigo: TIntegerField;
    uqtabelaflacodigo: TIntegerField;
    uqtabelaflaidentificacao: TStringField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelapronome: TStringField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelaprmprecocompra: TFloatField;
    uqtabelaprmpercmargemlucro: TFloatField;
    uqtabelaprmprecovenda: TFloatField;
    uqtabelaprmimpostovenda: TFloatField;
    uqtabelaprmcomissaovenda: TFloatField;
    uqtabelaprmfretevenda: TFloatField;
    uqtabelaprmcustooperacional: TFloatField;
    uqtabelaprmtaxajuros: TFloatField;
    uqtabelaprminadimplencia: TFloatField;
    uqtabelaprmregistro: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fraprm: Tfraprm;

  // Início ID do Módulo fraprm
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Precificação de Mercadorias';

  // Fim ID do Módulo fraprm

implementation

{$R *.dfm}
{ Tfraprm }

procedure Tfraprm.Carregar;
begin
  if FormaFrame = ffFormu then
    if vChaveMestre <> '' then
    begin
      uqtabela.ParamByName('procodigo').AsString := vChaveMestre;
      uqtabela.ParamByName('flacodigo').AsInteger := Acesso.Filial;
    end;

  inherited;
end;

end.
