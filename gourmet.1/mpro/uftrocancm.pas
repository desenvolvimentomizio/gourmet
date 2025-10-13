unit uftrocancm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ufuncoes;

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
    Label3: TLabel;
    edNovoCEST: TEdit;
    tce: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure edNovoCESTExit(Sender: TObject);
    procedure edNovoNCMExit(Sender: TObject);
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

  if edNovoNCM.Text = '' then
  begin
    ShowMessage('Novo NCM não pode ficar em branco, para troca apenas do CEST, repita o NCM ja informado em amarelo!');
    exit;
  end;
  If (Application.MessageBox(PChar('Confirma a realização do seguinte ajuste?' + #13 + #13 + 'NCM Antigo: ' + proncm.Field.Text + #13 + #13 + 'NCM Novo: ' + edNovoNCM.Text),
    'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION) = IDYES) Then
  begin

    consulta.Close;
    consulta.SQL.Text := 'update pro set  procest=' + QuotedStr(edNovoCEST.Text) + ' ,proncm=' + QuotedStr(edNovoNCM.Text) + ' where proncm=' + QuotedStr(proncm.Field.Text);
    consulta.ExecSQL;

  end;
  If Dsregistro.DataSet.State <> dsBrowse Then
    Dsregistro.DataSet.Cancel;
  ModalResult := mrok;

end;

procedure Tftrocancm.edNovoCESTExit(Sender: TObject);
begin
  if (Self.tpocodigo.Field.AsInteger <> tpoServicos) and (Self.tpocodigo.Field.AsInteger <> tpoOutras) then
  begin
    if edNovoCEST.Text <> '' then
    begin
      if LENGTH(edNovoCEST.Text) <> 7 then
      begin
        ShowMessage('ATENÇÃO:Tamanho de CEST inválido!');
        edNovoCEST.SetFocus;
      end
      else
      begin

        Self.tce.Close;
        Self.tce.Params[0].AsString := edNovoCEST.Text;
        Self.tce.Open;

        if tce.RecordCount = 0 then
        begin
          ShowMessage('ATENÇÃO: CEST inválido, não foi localizado!');
          edNovoCEST.SetFocus;
        end;
      end;
    end;
  end;
end;

procedure Tftrocancm.edNovoNCMExit(Sender: TObject);
begin


    Self.tcg.Close;
    Self.tcg.Params[0].AsString := edNovoNCM.Text;
    Self.tcg.Open;

    if tcg.RecordCount = 0 then
    begin
      ShowMessage('ATENÇÃO: NCM inválido, não foi localizada alíquota para este NCM!');
      edNovoNCM.SetFocus;
    end;


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
