unit ufgdp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfgdp = class(Tfrmbase)
    Label1: TLabel;
    gdpcodigo: TDBEdit;
    Label2: TLabel;
    gdpidentificacao: TDBEdit;
    registrogdpcodigo: TIntegerField;
    registrogdpidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fgdp: Tfgdp;

  // Início ID do Módulo fragdp
const
  vPlIdMd = '03.07.80.011-01';

  // Fim ID do Módulo fragdp

implementation

{$R *.dfm}

procedure Tfgdp.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
