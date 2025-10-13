unit ufmit;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfmit = class(Tfrmbase)
    registromitcodigo: TIntegerField;
    registromitidentificacao: TStringField;
    registroecfcodigo: TIntegerField;
    Label1: TLabel;
    mitcodigo: TDBEdit;
    Label2: TLabel;
    mitidentificacao: TDBEdit;
    Label3: TLabel;
    ecfcodigo: TDBEdit;
    registrotipcodigo: TIntegerField;
    tip: tuniquery;
    tiptipcodigo: TIntegerField;
    registrotipidentificacao: TStringField;
    Label4: TLabel;
    tipcodigo: TDBEdit;
    ecf: tuniquery;
    ecfecfcodigo: TIntegerField;
    ecfecfidentificacao: TStringField;
    ecfecfserie: TStringField;
    registroecfidentificacao: TStringField;
    tiptipidentificacao: TStringField;
    procedure tipcodigoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmit: Tfmit;

const
  vPlIdMd = '01.06.86.275-02';

implementation

{$R *.dfm}

procedure Tfmit.tipcodigoExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);
  if self.tipcodigo.Field.AsInteger = 1 then
  begin
    self.ecfcodigo.Enabled := true;
    self.ecfcodigo.SetFocus;
  end
  else
  begin
    self.ecfcodigo.Field.AsInteger := 0;
    self.ecfcodigo.Enabled := false;
    self.bconfirma.SetFocus;

  end;

end;

end.
