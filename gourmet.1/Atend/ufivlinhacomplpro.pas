unit ufivlinhacomplpro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Data.DB;

type
  Tfivlinhacomplpro = class(TForm)
    Label1: TLabel;
    pbotoes: TPanel;
    Dregistro: TDataSource;
    itoprocomple: TDBMemo;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    psituacao: TPanel;
    procedure bconfirmaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fivlinhacomplpro: Tfivlinhacomplpro;

implementation


{$R *.dfm}

procedure Tfivlinhacomplpro.bcancelaClick(Sender: TObject);
begin
  if Dregistro.DataSet.State <> dsbrowse then
  begin
    Dregistro.DataSet.cancel;
  end;
  close;
end;

procedure Tfivlinhacomplpro.bconfirmaClick(Sender: TObject);
begin
  if Dregistro.DataSet.State <> dsbrowse then
    Dregistro.DataSet.post;

  close;

end;

procedure Tfivlinhacomplpro.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Sender is TDBEdit) then
    if (Sender as TDBEdit).Field.DataType = ftfloat then
    begin
      If (Key = '.') or (Key = ',') Then
      begin
        if (Pos(',', (Sender as TDBEdit).Text) = 0) and (Pos('.', (Sender as TDBEdit).Text) = 0) then
        begin
          Key := #0;
          Key := ',';
        end
        else
        begin
          Key := #0;
        end;
      end;
    end;

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

  End;
end;

end.
