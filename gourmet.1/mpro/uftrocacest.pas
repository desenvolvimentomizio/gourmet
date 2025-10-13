unit uftrocacest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, MemDS, DBAccess, Uni, Vcl.Mask, Vcl.DBCtrls, ufuncoes;

type
  Tftrocacest = class(TForm)
    Label1: TLabel;
    procest: TDBEdit;
    Label2: TLabel;
    edNovoCEST: TEdit;
    Dtcg: TUniDataSource;
    Dsregistro: TUniDataSource;
    registro: TUniQuery;
    registroprocodigo: TIntegerField;
    registrotpocodigo: TIntegerField;
    consulta: TUniQuery;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    tpocodigo: TDBEdit;
    registroprocest: TStringField;
    tce: TUniQuery;
    UniQuery1: TUniQuery;
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edNovoCESTExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftrocacest: Tftrocacest;

implementation

{$R *.dfm}

procedure Tftrocacest.bcancelaClick(Sender: TObject);
begin
  If Dsregistro.DataSet.State <> dsBrowse Then
    Dsregistro.DataSet.Cancel;

  ModalResult := mrCancel;
end;

procedure Tftrocacest.bconfirmaClick(Sender: TObject);
begin
  If (Application.MessageBox(PChar('Confirma a realização do seguinte ajuste?' + #13 + #13 + 'CEST Antigo: ' + procest.Field.Text + #13 + #13 + 'CEST Novo: ' + edNovoCEST.Text),
    'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION) = IDYES) Then
  begin

    consulta.Close;
    consulta.SQL.Text := 'update pro set procest=' + QuotedStr(edNovoCEST.Text) + ' where procest=' + QuotedStr(procest.Field.Text);
    consulta.ExecSQL;

  end;
  If Dsregistro.DataSet.State <> dsBrowse Then
    Dsregistro.DataSet.Cancel;
  ModalResult := mrok;

end;

procedure Tftrocacest.edNovoCESTExit(Sender: TObject);
begin
  if self.ActiveControl <> bcancela then
  begin

    if (self.tpocodigo.Field.AsInteger <> tpoServicos) and (self.tpocodigo.Field.AsInteger <> tpoOutras) then
    begin
      if edNovoCEST.Text <> '' then
      begin

        self.tce.Close;
        self.tce.Params[0].AsString := edNovoCEST.Text;
        self.tce.Open;

        if tce.RecordCount = 0 then
        begin
          ShowMessage('ATENÇÃO: CEST inválido, não foi localizado!');
          procest.SetFocus;
        end;
      end;
    end;
  end;

end;

procedure Tftrocacest.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tftrocacest.FormShow(Sender: TObject);
begin
  consulta.Connection := self.tce.Connection;
end;

end.
