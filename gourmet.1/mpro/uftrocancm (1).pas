unit uftrocancm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftrocancm = class(TForm)
    Label1: TLabel;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    tpocodigo: TDBEdit;
    Label2: TLabel;
    Dsregistro: TUniDataSource;
    registro: TUniQuery;
    registroprocodigo: TIntegerField;
    registroproncm: TStringField;
    registrotpocodigo: TIntegerField;
    consulta: TUniQuery;
    tcg: TUniQuery;
    tcgtcgncm: TStringField;
    tcgtcgaliqnac: TFloatField;
    tcgtcgaliqimp: TFloatField;
    Dtcg: TUniDataSource;
    edNovoNCM: TEdit;
    proncm: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftrocancm: Tftrocancm;

implementation

{$R *.dfm}

procedure Tftrocancm.bcancelaClick(Sender: TObject);
begin
  If Dsregistro.DataSet.State <> dsBrowse Then
    Dsregistro.DataSet.Cancel;

  ModalResult := mrCancel;
end;

procedure Tftrocancm.bconfirmaClick(Sender: TObject);
begin

  If (Application.MessageBox(PChar('Confirma a realização do seguinte ajuste?' + #13 + #13 + 'NCM Antigo: ' + proncm.Field.Text + #13 + #13 + 'NCM Novo: ' +
    edNovoNCM.Text), 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION) = IDYES) Then
  begin

    consulta.Close;
    consulta.SQL.Text := 'update pro set proncm=' + QuotedStr(edNovoNCM.Text) + ' where proncm=' + QuotedStr(proncm.Field.Text);
    consulta.ExecSQL;

  end;
  If Dsregistro.DataSet.State <> dsBrowse Then
    Dsregistro.DataSet.Cancel;
  ModalResult := mrok;

end;

procedure Tftrocancm.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = ';' Then
  Begin
    Key := #0;
  End;

  If Key = '\' Then
  Begin
    Key := #0;
  End;

  If Key = #13 Then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bcancela.Click;
  End;
end;

procedure Tftrocancm.FormShow(Sender: TObject);
begin
  consulta.Connection := Self.tcg.Connection;

end;

end.
