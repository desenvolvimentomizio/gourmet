unit uftob;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,    
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftob = class(Tfrmbase)
    bco: tuniquery;
    registrotobidentificacao: TStringField;
    bcobconome: TStringField;
    Label1: TLabel;
    tobcodigo: TDBEdit;
    registrobconome: TStringField;
    Label2: TLabel;
    Identificação: TDBEdit;
    Label3: TLabel;
    bcocodigo: TDBEdit;
    registrotobcodigo: TStringField;
    bcobcocodigo: TStringField;
    registrobcocodigo: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftob: Tftob;

  // Início ID do Módulo fratob
const
  vPlIdMd = '00.00.00.000-01';

  // Fim ID do Módulo fratob

implementation

{$R *.dfm}

procedure Tftob.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
