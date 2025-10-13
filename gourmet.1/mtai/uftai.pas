unit uftai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftai = class(Tfrmbase)
    registrotaichave: TIntegerField;
    registrotaiiniciovalidade: TDateField;
    registrotaifinalvalidade: TDateField;
    registroufscodigoorigem: TStringField;
    registroufscodigodestino: TStringField;
    registrotaialiquota: TFloatField;
    ufs: TUniQuery;
    ufsufscodigo: TStringField;
    ufsufsnome: TStringField;
    registroufsufsnomeorigem: TStringField;
    registroufsufsnomedestino: TStringField;
    Label1: TLabel;
    taichave: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    taialiquota: TDBEdit;
    Label5: TLabel;
    taiiniciovalidade: TDBEdit;
    Label6: TLabel;
    taifinalvalidade: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftai: Tftai;

implementation

{$R *.dfm}

end.
