unit ufmdv;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfmdv = class(Tfrmbase)
    registromdvchave: TIntegerField;
    registromdacodigo: TIntegerField;
    registromdvdescricao: TStringField;
    Label1: TLabel;
    mdvchave: TDBEdit;
    mdvdescricao: TDBMemo;
    Label2: TLabel;
    bvalidar: TButton;
    Plfns: TPanel;
    Spt1: TSplitter;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bvalidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    hfns: Thandle;

  end;

var
  fmdv: Tfmdv;

implementation

{$R *.dfm}

procedure Tfmdv.bvalidarClick(Sender: TObject);
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

  bconfirma.Enabled := true;

  hfns := CarregaFrame('mfns', Plfns, self.zcone, 'Funções do Módulo');

end;

procedure Tfmdv.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
self.registromdacodigo.AsString:=self.vChaveMestre;
end;

end.
