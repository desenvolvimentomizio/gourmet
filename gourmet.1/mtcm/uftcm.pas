unit uftcm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftcm = class(Tfrmbase)
    registrotcmcodigo: TIntegerField;
    registrotcmidentificacao: TStringField;
    Label1: TLabel;
    tcmcodigo: TDBEdit;
    Label2: TLabel;
    tcmidentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftcm: Tftcm;

implementation

{$R *.dfm}

end.
