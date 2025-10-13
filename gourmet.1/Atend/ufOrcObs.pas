unit ufOrcObs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TfOrcObs = class(TForm)
    orcobs: TDBMemo;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    Dregistro: TDataSource;
    Panel2: TPanel;
    lblCaracteresObs: TLabel;
    Label5: TLabel;
    procedure orcobsChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure orcobsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOrcObs: TfOrcObs;

implementation

{$R *.dfm}

procedure TfOrcObs.bcancelaClick(Sender: TObject);
begin
  if Dregistro.DataSet.State <> dsBrowse then
    Dregistro.DataSet.Cancel;

  Close;
end;

procedure TfOrcObs.bconfirmaClick(Sender: TObject);
begin
  if Dregistro.DataSet.State <> dsBrowse then
    Dregistro.DataSet.Post;

  Close;
end;

procedure TfOrcObs.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #27 then
    bcancela.Click;
end;

procedure TfOrcObs.FormShow(Sender: TObject);
begin
  lblCaracteresObs.Caption := IntToStr(orcobs.Field.Size - Length(orcobs.Text));
end;

procedure TfOrcObs.orcobsChange(Sender: TObject);
begin
  lblCaracteresObs.Caption := IntToStr(orcobs.Field.Size - Length(orcobs.Text));
end;

procedure TfOrcObs.orcobsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = Ord('A')) and (ssCtrl in Shift) then
  begin
    TMemo(Sender).SelectAll;
    Key := 0;
  end;
end;

end.
