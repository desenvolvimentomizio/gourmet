unit uftmf;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,     
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftmf = class(Tfrmbase)
    ced: tuniquery;
    cedcedcodigo: TIntegerField;
    cedcedidentificacao: TStringField;
    registrotmfcodigo: TIntegerField;
    registrotmfidentificacao: TStringField;
    registrocedcodigo: TIntegerField;
    registrocedidentificacao: TStringField;
    Label1: TLabel;
    tmcodigo: TDBEdit;
    Label2: TLabel;
    tmfIdentificacao: TDBEdit;
    Label3: TLabel;
    cedcodigo: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftmf: Tftmf;

implementation

{$R *.dfm}

end.
