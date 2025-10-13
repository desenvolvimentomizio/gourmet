unit ufpsm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, ufuncoes;

type
  Tfpsm = class(Tfrmbase)
    registropsmchave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registropsmregistro: TDateTimeField;
    registropsmtexto01: TStringField;
    registropsmtexto02: TStringField;
    registropsmtexto03: TStringField;
    registropsmtexto04: TStringField;
    registropsmtexto05: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    psmtexto01: TDBMemo;
    Label2: TLabel;
    psmtexto02: TDBMemo;
    psmtexto03: TDBMemo;
    psmtexto04: TDBMemo;
    psmtexto05: TDBMemo;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    qtletras1: TLabel;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure psmtexto01KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpsm: Tfpsm;

implementation

{$R *.dfm}

procedure Tfpsm.psmtexto01KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  qtletras1.Caption := 'Letras: ' + IntToStr(length(psmtexto01.Text));
  application.ProcessMessages;
end;

procedure Tfpsm.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registropsmregistro.AsString := agora(application, zcone);
  self.registroclbcodigo.AsInteger := acesso.Usuario;
end;

end.
