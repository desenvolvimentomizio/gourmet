unit ufspu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfspu = class(Tfrmbase)
    registrospucodigo: TIntegerField;
    pun: TUniQuery;
    punpuncodigo: TIntegerField;
    punpunidentificacao: TStringField;
    registrosbrcodigo: TIntegerField;
    registropuncodigo: TIntegerField;
    registropunidentificacao: TStringField;
    Label1: TLabel;
    spucodigo: TDBEdit;
    Label2: TLabel;
    puncodigo: TDBEdit;
    Label3: TLabel;
    spupreco: TDBEdit;
    registrospupreco: TCurrencyField;
    registroprocodigo: TIntegerField;
    Label4: TLabel;
    produto: TDBEdit;
    registroproduto: TIntegerField;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    Label5: TLabel;
    procodigo: TDBEdit;
    propronome: TStringField;
    registropronome: TStringField;
    registrospuadicional: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenspuadicional: TStringField;
    Label6: TLabel;
    spuadicional: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure puncodigoEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vpprocodigo: string;
  public
    { Public declarations }
  end;

var
  fspu: Tfspu;

implementation

{$R *.dfm}

procedure Tfspu.FormShow(Sender: TObject);
begin
  if pos('=', txtFiltro)>0 then
  begin
  vpprocodigo := trim(copy(txtFiltro, pos('=', txtFiltro) + 1, 200));
  end
  else
  begin
  vpprocodigo := txtFiltro;
  end;

  inherited;

end;

procedure Tfspu.puncodigoEnter(Sender: TObject);
begin

  inherited;
  Self.txtFiltro := 'procodigo=' + vpprocodigo;

end;

procedure Tfspu.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  Self.registroprocodigo.AsString := vpprocodigo;
  Self.registrosbrcodigo.AsString := vChaveMestre;
end;

end.
