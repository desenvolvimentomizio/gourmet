unit ulcarboletos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, uPegaBase;

type
  Tlcarboletos = class(TForm)
    car: TUniQuery;
    Dcar: TDataSource;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    DBGLista: TDBGrid;
    carcarcodigo: TIntegerField;
    carcaridentificacao: TStringField;
    carctaidentificacao: TStringField;
    cartctcodigo: TIntegerField;
    carsenidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure DBGListaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    FZCone: TUniConnection;
    vpRetorno: String;
    vpClbCodigo: String;
  end;

var
  lcarboletos: Tlcarboletos;

implementation

{$R *.dfm}

function listacarteirasboletos(owner: TApplication; Acesso: TAcesso; zCone: TUniConnection): string;
begin
  lcarboletos := Tlcarboletos.Create(owner);
  try
    lcarboletos.FZCone := zCone;
    lcarboletos.vpClbCodigo := Acesso.Usuario.ToString;
    lcarboletos.ShowModal;
    Result := lcarboletos.vpRetorno;
  finally
    lcarboletos.Free;
  end;
end;

Exports listacarteirasboletos;

procedure Tlcarboletos.bcancelaClick(Sender: TObject);
begin
  vpRetorno := '';
  ModalResult := mrCancel;
end;

procedure Tlcarboletos.bconfirmaClick(Sender: TObject);
begin
  vpRetorno := carcarcodigo.AsString;
  ModalResult := mrOK;
end;

procedure Tlcarboletos.DBGListaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bconfirma.Click;

  if Key = #27 then
    bcancela.Click;

end;

procedure Tlcarboletos.FormShow(Sender: TObject);
begin
  car.Connection := FZCone;
  car.Close;
  car.Params[0].AsString := self.vpClbCodigo;
  car.Open;
end;

exports listacarteirasboletos;

end.
