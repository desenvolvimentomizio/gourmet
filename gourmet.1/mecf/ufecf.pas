unit ufecf;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfecf = class(Tfrmbase)
    registroecfcodigo: TIntegerField;
    registroecfidentificacao: TStringField;
    registroecftipodoc: TStringField;
    registroecfcaixa: TIntegerField;
    registroecfmodelo: TStringField;
    registroecfserie: TStringField;
    Label1: TLabel;
    ecfcodigo: TDBEdit;
    Label2: TLabel;
    ecfidentificacao: TDBEdit;
    Label3: TLabel;
    ecftipodoc: TDBEdit;
    Label4: TLabel;
    ecfmodelo: TDBEdit;
    ecfserie: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    ecfcaixa: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fecf: Tfecf;

  // Início ID do Módulo fraecf
const
  vPlIdMd = '03.08.19.001-02';

  // Fim ID do Módulo fraecf

implementation

{$R *.dfm}

procedure Tfecf.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
