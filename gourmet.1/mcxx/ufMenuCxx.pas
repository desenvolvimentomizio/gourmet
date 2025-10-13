unit ufMenuCxx;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfmenucxx = class(Tfrmbase)
    plidentificacao: TPanel;
    plDinheiro: TPanel;
    btabertura: TBitBtn;
    Panel1: TPanel;
    btsangria: TBitBtn;
    Panel3: TPanel;
    btsuprimento: TBitBtn;
    Panel5: TPanel;
    btfechamento: TBitBtn;
    cta: tuniquery;
    ctactacodigo: TIntegerField;
    ctactaidentificacao: TStringField;
    clb: tuniquery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    cxxsangrias: TDBEdit;
    cxxsuprimentos: TDBEdit;
    cxxsaldoaber: TDBEdit;
    cxxsaldofecha: TDBEdit;
    registroccxchave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registroclbidentificacao: TStringField;
    registroctacodigo: TIntegerField;
    registroctaidentificacao: TStringField;
    registrocxxturno: TIntegerField;
    registrocxxdataber: TDateField;
    registrocxxhoraaber: TTimeField;
    registrocxxsaldoaber: TFloatField;
    registrocxxdatafecha: TDateField;
    registrocxxhorafecha: TTimeField;
    registrocxxsaldofecha: TFloatField;
    registrocxxsangrias: TFloatField;
    registrocxxsuprimentos: TFloatField;
    Label1: TLabel;
    clbcodigo: TDBEdit;
    Label2: TLabel;
    ctacodigo: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmenucxx: Tfmenucxx;

implementation

{$R *.dfm}

end.
