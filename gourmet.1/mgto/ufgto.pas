unit ufgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfgto = class(Tfrmbase)
    registrogtocodigo: TIntegerField;
    registrogtoidentificacao: TStringField;
    Label1: TLabel;
    gtocodigo: TDBEdit;
    Label2: TLabel;
    gtoidentificacao: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fgto: Tfgto;

  // Início ID do Módulo fgto
const
  vPlIdMd = '03.10.81.002-02';

  // Fim ID do Módulo fgto


implementation

{$R *.dfm}

procedure Tfgto.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

end.
