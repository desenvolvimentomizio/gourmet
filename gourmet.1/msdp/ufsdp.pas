unit ufsdp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfsdp = class(Tfrmbase)
    registrosdpcodigo: TIntegerField;
    registrosdpidentificacao: TStringField;
    Label1: TLabel;
    sdpcodigo: TDBEdit;
    Label2: TLabel;
    sdpidentificacao: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsdp: Tfsdp;

  // Início ID do Módulo frasdp
const
  vPlIdMd = '03.07.80.012-02';

  // Fim ID do Módulo frasdp

implementation

{$R *.dfm}

procedure Tfsdp.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
