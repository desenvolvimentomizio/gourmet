unit ufisa;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfisa = class(Tfrmbase)
    registroisachave: TIntegerField;
    registrosbrcodigo: TIntegerField;
    registroprocodigo: TIntegerField;
    Label1: TLabel;
    isachave: TDBEdit;
    Label2: TLabel;
    sbrcodigo: TDBEdit;
    Label3: TLabel;
    procodigo: TDBEdit;
    sbr: TUniQuery;
    sbrsbrcodigo: TIntegerField;
    sbrsbridentificacao: TStringField;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    registrosbridentificacao: TStringField;
    registropronome: TStringField;
    registroisaquantidade: TFloatField;
    Label4: TLabel;
    isaquantidade: TDBEdit;
    prounisimbolo: TStringField;
    unisimbolo: TDBText;
    Dpro: TDataSource;
    registrosenadicionavel: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenidentificacao: TStringField;
    Label5: TLabel;
    senadicionavel: TDBEdit;
    registroisaprincipal: TIntegerField;
    registrosenisaprincipal: TStringField;
    Label6: TLabel;
    isaprincipal: TDBEdit;
    procedure procodigoEnter(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fisa: Tfisa;

implementation

{$R *.dfm}

procedure Tfisa.procodigoEnter(Sender: TObject);
begin
  inherited;
  self.txtFiltro := 'tsocodigo=1';
end;

procedure Tfisa.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrosbrcodigo.AsString := vChaveMestre;
  registrosenadicionavel.AsInteger:=0;
  registroisaprincipal.AsInteger:=0;
end;

end.
