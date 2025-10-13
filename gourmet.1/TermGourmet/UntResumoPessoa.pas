unit UntResumoPessoa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Mask,Data.DB;

type
  TFrmResumoPessoa = class(TForm)
    Panel11: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel9: TPanel;
    Button2: TButton;
    Panel6: TPanel;
    Label3: TLabel;
    EdtPessoas: TDBEdit;
    procedure Button2Click(Sender: TObject);
    procedure EdtPessoasEnter(Sender: TObject);
    procedure EdtPessoasExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmResumoPessoa: TFrmResumoPessoa;

implementation

uses
  UntDmDados;

{$R *.dfm}

procedure TFrmResumoPessoa.Button2Click(Sender: TObject);
begin

if DmDados.orc.State=dsbrowse then
begin
  DmDados.orc.Edit;
end;

  DmDados.orc.Post;
  Close;
end;

procedure TFrmResumoPessoa.EdtPessoasEnter(Sender: TObject);
begin
  EdtPessoas.SelectAll;
end;

procedure TFrmResumoPessoa.EdtPessoasExit(Sender: TObject);
begin
  if Length(EdtPessoas.Text) = 0 then
    DmDados.orcorcpessoas.AsInteger := 1;
end;

end.
