unit ufmda;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfmda = class(Tfrmbase)
    registromdacodigo: TIntegerField;
    registromdaidentificacao: TStringField;
    registromdabpl: TStringField;
    Label1: TLabel;
    mdacodigo: TDBEdit;
    Label2: TLabel;
    mdaidentificacao: TDBEdit;
    Label3: TLabel;
    mdabpl: TDBEdit;
    bvalidar: TButton;
    PlmdV: TPanel;
    Spt1: TSplitter;
    procedure bvalidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     hmdv: Thandle;

  end;

var
  fmda: Tfmda;

implementation

{$R *.dfm}

procedure Tfmda.bvalidarClick(Sender: TObject);
begin
  inherited;
  self.bvalidar.Visible := false;
  If (self.registro.State = dsedit) Then
  Begin
    self.registro.Post;
  End
  Else If (self.registro.State = dsinsert) Then
  Begin
    self.registro.Post;
    self.registro.ReadOnly := true;
  End;

  bconfirma.Enabled := true;

  hmdv := CarregaFrame('mmdv', Plmdv, self.zcone, 'Versões do Módulo');

end;

end.
