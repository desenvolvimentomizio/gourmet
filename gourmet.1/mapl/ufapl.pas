unit ufapl;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, ufraapl, System.Actions, Vcl.ActnList,
  MemDS, DBAccess, Uni;

type
  Tfapl = class(Tfrmbase)
    registroaplcodigo: TIntegerField;
    registroaplidentificacao: TStringField;
    registroapldescricao: TStringField;
    registroaplexe: TStringField;
    Label1: TLabel;
    aplcodigo: TDBEdit;
    Label2: TLabel;
    aplidentificacao: TDBEdit;
    Label3: TLabel;
    aplexe: TDBEdit;
    apldescricao: TDBMemo;
    Label4: TLabel;
    bvalidar: TButton;
    Plpla: TPanel;
    Spt1: TSplitter;
    procedure bvalidarClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure salvacolunasframes;
    { Private declarations }
  public
    { Public declarations }
       hapl: Thandle;
  end;

var
  fapl: Tfapl;

implementation

{$R *.dfm}

procedure Tfapl.bcancelaClick(Sender: TObject);
begin

  if self.psituacao.Caption = 'Incluindo' then
  begin
    self.registro.ReadOnly := false;
    self.registro.Delete;
    close;
  end
  else
  begin
    close;
  end;
 { inherited;}
end;

procedure Tfapl.bconfirmaClick(Sender: TObject);
var
  pode: boolean;
begin

  pode := true;

  If pode Then
  Begin
    If self.bconfirma.Caption = 'Confirma' Then
    Begin

      salvacolunasframes;

    end;

    close;

    if registro.State <> dsbrowse then
    begin
      Inherited;
    end;
  End;

end;

procedure Tfapl.bvalidarClick(Sender: TObject);
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

  hapl := CarregaFrame('mapl', Plpla, self.zcone, 'Gestão');

end;


procedure Tfapl.FormShow(Sender: TObject);
begin
  inherited;
  If (self.registro.State = dsedit) Then
  Begin
    self.bvalidar.Click;
  End;

end;

procedure Tfapl.salvacolunasframes;
var
  fra: Tframe;
begin

  if hapl <> 0 then
  begin
    fra := nil;
    fra := Tfraapl(application.FindComponent('fraapl'));
    if fra <> nil then
    begin
      if (fra is Tfraapl) then
      begin
        (fra as Tfraapl).salvacolunas;
      end;
    End;
  end;
end;


end.
