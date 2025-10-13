unit ufevc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, uPegaBase;

type
  Tfevc = class(Tfrmbase)
    registroetvcodigo: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrotvicodigo: TIntegerField;
    registropcgcodigo: TIntegerField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    tvi: TUniQuery;
    tvitvicodigo: TIntegerField;
    tvitviidentificacao: TStringField;
    registrotviidentificacao: TStringField;
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    registropcgidentificacao: TStringField;
    Label1: TLabel;
    etvcodigo: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    Label3: TLabel;
    tvicodigo: TDBEdit;
    Label4: TLabel;
    pcgcodigo: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fevc: Tfevc;

  // Início ID do Módulo fevc
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Conta Contábil para a Entidade';

  // Fim ID do Módulo fevc

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fevc := Tfevc.Create(pCargaFrame);
  fevc.ShowModal;
  fevc.Free;
end;

exports formulario;

end.
