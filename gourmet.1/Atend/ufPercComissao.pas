unit ufPercComissao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.DB, DBAccess, Uni;

type
  TfPercComissao = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    DSRegistro: TUniDataSource;
    iocpercentual: TDBEdit;
    Label1: TLabel;
    Panel2: TPanel;
    lbTecnico: TLabel;
    Label5: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure iocpercentualExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPercComissao: TfPercComissao;

implementation

{$R *.dfm}

procedure TfPercComissao.bcancelaClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfPercComissao.bconfirmaClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfPercComissao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TfPercComissao.iocpercentualExit(Sender: TObject);
begin
  if iocpercentual.Field.AsString = '' then
  begin
    ShowMessage('Campo obrigatório!');
    iocpercentual.SetFocus;
  end;
end;

end.
