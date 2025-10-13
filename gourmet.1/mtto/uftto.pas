unit uftto;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, MemDS, DBAccess,   
   Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  Tftto = class(Tfrmbase)
    registrottocodigo: TIntegerField;
    Label1: TLabel;
    ttocodigo: TDBEdit;
    Label2: TLabel;
    registrottoidentificacao: TStringField;
    ttoidentificacao: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  ftto: Tftto;

  // Início ID do Módulo fratto
const
  vPlIdMd = '02.04.11.006-02';

  // Fim ID do Módulo fratto

implementation

{$R *.dfm}

procedure Tftto.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
