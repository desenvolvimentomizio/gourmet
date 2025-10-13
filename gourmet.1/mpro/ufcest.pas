unit ufcest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, MemDS, DBAccess, Uni, uFuncoes;

type
  Tfcest = class(TForm)
    Label1: TLabel;
    procest: TDBEdit;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    tpocodigo: TDBEdit;
    Dsregistro: TUniDataSource;
    registro: TUniQuery;
    registroprocodigo: TIntegerField;
    registrotpocodigo: TIntegerField;
    Dtcg: TUniDataSource;
    consulta: TUniQuery;
    registroprocest: TStringField;
    tce: TUniQuery;
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DsregistroStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure procestExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcest: Tfcest;

implementation

{$R *.dfm}

procedure Tfcest.bcancelaClick(Sender: TObject);
begin
  If Dsregistro.DataSet.State <> dsBrowse Then
    Dsregistro.DataSet.Cancel;

  ModalResult := mrCancel;

end;

procedure Tfcest.bconfirmaClick(Sender: TObject);
begin



  If Dsregistro.DataSet.State <> dsBrowse Then
  Begin
    Dsregistro.DataSet.Post;
  End;

  { * ajusta valores no banco, e marca para enviar carga para pdvs * }
  consulta.Close;
  consulta.SQL.Text := 'UPDATE pro SET procarga = 1 WHERE procodigo = ' + registroprocodigo.AsString;
  consulta.Execsql;

  ModalResult := mrOk;

end;

procedure Tfcest.DsregistroStateChange(Sender: TObject);
begin
  If Dsregistro.DataSet <> Nil Then
    If Dsregistro.DataSet.State = dsInsert Then
      psituacao.Caption := 'Incluindo'
    Else If Dsregistro.DataSet.State = dsEdit Then
      psituacao.Caption := 'Alterando'
    Else
      psituacao.Caption := '';
end;

procedure Tfcest.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfcest.FormShow(Sender: TObject);
begin
  consulta.Connection := Self.tce.Connection;
end;

procedure Tfcest.procestExit(Sender: TObject);
begin
  if (Self.tpocodigo.Field.AsInteger <> tpoServicos) and (Self.tpocodigo.Field.AsInteger <> tpoOutras) then
  begin
    if Self.procest.Field.AsString <> '' then
    begin

      Self.tce.Close;
      Self.tce.Params[0].AsString := Self.procest.Field.AsString;
      Self.tce.Open;

      if tce.RecordCount = 0 then
      begin
        ShowMessage('ATENÇÃO: CEST inválido, não foi localizado!');
        procest.SetFocus;
      end;
    end;
  end;

end;

end.
