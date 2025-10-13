unit ufbrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfbrm = class(Tfrmbase)
    registrobrmcodigo: TIntegerField;
    registrobolchave: TIntegerField;
    registrormbcodigo: TIntegerField;
    registrotibcodigo: TIntegerField;
    tib: TUniQuery;
    tibtibcodigo: TIntegerField;
    tibtibidentificacao: TStringField;
    Label1: TLabel;
    brmcodigo: TDBEdit;
    Label2: TLabel;
    tibcodigo: TDBEdit;
    rmb: TUniQuery;
    rmbrmbcodigo: TIntegerField;
    rmbcarcodigo: TIntegerField;
    rmbclbcodigo: TIntegerField;
    rmbtrmcodigo: TIntegerField;
    rmbrmbnumero: TIntegerField;
    rmbrmbregistro: TDateTimeField;
    registrotibidentificacao: TStringField;
    procedure tibcodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpBcoCodigo: String;
    vpCarCodigo: String;
  end;

var
  fbrm: Tfbrm;

implementation

{$R *.dfm}

procedure Tfbrm.bconfirmaClick(Sender: TObject);
begin
  if psituacao.Caption = 'Incluindo' then
  begin
    rmb.Open;
    rmb.Append;
    rmbcarcodigo.AsString := vpCarCodigo;
    rmbclbcodigo.AsInteger := acesso.Usuario;
    rmbtrmcodigo.AsInteger := acesso.Terminal;
    rmb.post;
    registrormbcodigo.AsInteger:=rmbrmbcodigo.AsInteger;
  end;

  inherited;

end;

procedure Tfbrm.FormShow(Sender: TObject);
begin

  inherited;

  consulta.Close;
  consulta.SQL.Text := 'select rfi.bcocodigo, rfi.carcodigo from bol, rfi where bol.rfichave=rfi.rfichave and rfi.flacodigo=' + acesso.Filial.ToString + ' and bol.bolchave=' +
    vChaveMestre;
  consulta.Open;

  vpBcoCodigo := consulta.Fields[0].AsString;
  vpCarCodigo := consulta.Fields[1].AsString;

end;

procedure Tfbrm.tibcodigoEnter(Sender: TObject);
begin
  inherited;
  txtFiltro := 'bcocodigo=' + vpBcoCodigo;
end;

end.
