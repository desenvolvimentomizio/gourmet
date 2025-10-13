unit uftce;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  Tftce = class(Tfrmbase)
    registrotcechave: TIntegerField;
    registrotceanexo: TStringField;
    registrotceitem: TStringField;
    registrotcecest: TStringField;
    registrotcedescricao: TStringField;
    Label1: TLabel;
    tcechave: TDBEdit;
    Label2: TLabel;
    tceanexo: TDBEdit;
    Label3: TLabel;
    tceitem: TDBEdit;
    Label4: TLabel;
    tcecest: TDBEdit;
    tcedescricao: TDBMemo;
    registrotcencm: TStringField;
    Label5: TLabel;
    tcencm: TDBEdit;
    Label6: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftce: Tftce;

implementation

{$R *.dfm}

end.
