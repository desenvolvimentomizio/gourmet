unit ufete;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, uPegaBase, System.ImageList;

type
  Tfete = class(Tfrmbase)
    registroetecodigo: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroetecontato: TStringField;
    registroetedepartamento: TStringField;
    registroeteemail: TStringField;
    Label1: TLabel;
    etecontato: TDBEdit;
    Label2: TLabel;
    etedepartamento: TDBEdit;
    eteemail: TDBEdit;
    Label3: TLabel;
    registroeteenvianfe: TIntegerField;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenenvianfe: TStringField;
    eteenvianfe: TDBEdit;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fete: Tfete;

  // Início ID do Módulo fraete
const
  vPlIdMd = '01.01.80.003-02';

  // Fim ID do Módulo fraete

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fete := Tfete.Create(pCargaFrame);
  fete.ShowModal;
  fete.Free;
end;

exports formulario;

procedure Tfete.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
