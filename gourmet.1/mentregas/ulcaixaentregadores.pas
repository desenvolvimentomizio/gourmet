unit ulcaixaentregadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, upegabase, uni, MemDS, DBAccess;

type
  Tlcaixaentregadores = class(TForm)
    listaOrcs: TDBGrid;
    plBotoes: TPanel;
    btConfirma: TButton;
    btCancela: TButton;
    Dclb: TDataSource;
    btSelecionarMaquinaPOS: TButton;
    consulta: TUniQuery;
    procedure btSelecionarMaquinaPOSClick(Sender: TObject);
  private
    function MostraLista(pModulo: String; pFiltro: string = ''; pChaveMestre: string = ''): string;
    { Private declarations }
  public
    { Public declarations }
     ZCone: TUniConnection;
     Acesso:Tacesso;
  end;

var
  lcaixaentregadores: Tlcaixaentregadores;

implementation

uses
  uFprinciEntregas;

{$R *.dfm}

function Tlcaixaentregadores.MostraLista(pModulo: String; pFiltro: string = ''; pChaveMestre: string = ''): string;
var
  ExecForm: function(CargaFrame: TCargaFrame): String;
  vlCargaFrame: TCargaFrame;
  pack:THandle;
begin

  { if InternetAtiva then
    begin
    VerAtualizacao(pModulo);
    end; }

  Result := '';
  pack := LoadPackage('modulos\' + pModulo + '.bpl');
  if pack <> 0 then
    try
      @ExecForm := GetProcAddress(pack, Pchar('formu'));
      if Assigned(ExecForm) then
      begin
        vlCargaFrame := CargaFrameFormu(Application, pack, ZCone, Acesso, pFiltro, pChaveMestre);
        Result := ExecForm(vlCargaFrame);
      end;
    finally

    end;
end;


procedure Tlcaixaentregadores.btSelecionarMaquinaPOSClick(Sender: TObject);
var
  vlposcodigo:string;
begin
  inherited;

  vlposcodigo:=MostraLista('mpos','clbcodigo='+FprinciEntregas.clbcax.DataSource.DataSet.FieldByName('clbcodigo').AsString);

  if vlposcodigo<>'' then
  begin

    consulta.close;
    consulta.Connection:=ZCone;
    consulta.SQL.Text:='update pos set  clbcodigo='+FprinciEntregas.clbcax.DataSource.DataSet.FieldByName('clbcodigo').AsString+
     ' where poscodigo='+vlposcodigo;
    consulta.ExecSQL ;

    Dclb.DataSet.close;
    Dclb.DataSet.Open;
  end;
end;


end.
