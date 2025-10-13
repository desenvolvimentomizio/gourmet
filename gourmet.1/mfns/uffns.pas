unit uffns;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tffns = class(Tfrmbase)
    registrofnscodigo: TIntegerField;
    registrofnsidentificacao: TStringField;
    registrotfncodigo: TIntegerField;
    tfn: tuniquery;
    tfntfncodigo: TIntegerField;
    tfntfnidentificacao: TStringField;
    registrotfnidentificacao: TStringField;
    Label1: TLabel;
    fnscodigo: TDBEdit;
    Label2: TLabel;
    fnsidentificacao: TDBEdit;
    Label3: TLabel;
    tfncodigo: TDBEdit;
    bvalidar: TButton;
    Plfnv: TPanel;
    Spt1: TSplitter;
    registromdvchave: TIntegerField;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bvalidarClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    hfnv: Thandle;
  end;

var
  ffns: Tffns;

implementation

{$R *.dfm}

procedure Tffns.bconfirmaClick(Sender: TObject);
begin
  { inherited; }

  close;

end;

procedure Tffns.bvalidarClick(Sender: TObject);
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
  End;
  self.registro.Edit;

  bconfirma.Enabled := true;

  hfnv := CarregaFrame('mfnv', Plfnv, self.zcone, 'Versão das Funções');

end;

procedure Tffns.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if registro.State = dsinsert then
  begin
    self.registromdvchave.AsString := self.vChaveMestre;
  end;
end;

end.
