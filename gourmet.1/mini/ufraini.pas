unit ufraini;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, upegabase, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess, Uni, Vcl.DBCtrls;

type
  Tfraini = class(TFrame)
    Panel1: TPanel;
    registro: TUniQuery;
    registrocfgcodigo: TIntegerField;
    registrocfgetdempresa: TIntegerField;
    registrocfginscricaomun: TStringField;
    registrocfgsuframa: TStringField;
    registrocrtcodigo: TIntegerField;
    registrocfglogo: TBlobField;
    registrotalcodigo: TIntegerField;
    Panel2: TPanel;
    Panel3: TPanel;
    Dregistro: TDataSource;
    DBImage1: TDBImage;
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(pCargaFrame: TCargaFrame);
  end;

var
  fraini: Tfraini;

  // Início ID do Módulo fravnd
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Início';

  // Fim ID do Módulo fravndv

implementation

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin

  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraini := Tfraini.Create(pCargaFrame);
  fraini.registro.Close;
  fraini.registro.Connection := pCargaFrame.Conexao;
  fraini.registro.ParamByName('cfgcodigo').AsInteger := pCargaFrame.Acesso.Filial;
  fraini.registro.Open;


end;

exports formuFrame;

constructor Tfraini.Create(pCargaFrame: TCargaFrame);
begin
  inherited Create(pCargaFrame.AOwner);
  Self.Visible := true;

  Parent := pCargaFrame.Parent;


end;

end.
