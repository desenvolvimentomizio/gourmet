unit ufbcapro;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufbca, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Buttons, DBAccess, Uni, MemDS;

type
  Tfbcapro = class(Tfbca)
    uqtabelaprocodigo: TIntegerField;
    uqtabelaproncm: TStringField;
    uqtabelapronome: TStringField;
    uqtabelaprosaldo: TFloatField;
    uqtabelagrpidentificacao: TStringField;
    uqtabelamaridentificacao: TStringField;
    uqtabelaicmaliquotas: TStringField;
    uqtabelaproativo: TIntegerField;
    uqtabelaproreferencia: TStringField;
    uqtabelaproobs: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbcapro: Tfbcapro;

implementation

{$R *.dfm}

end.
