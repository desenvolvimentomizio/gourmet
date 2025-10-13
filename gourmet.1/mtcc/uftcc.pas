unit uftcc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftcc = class(Tfrmbase)
    registrotccidentificacao: TStringField;
    registrotccsigla: TStringField;
    Label1: TLabel;
    tcccodigo: TDBEdit;
    Label2: TLabel;
    tccidentificacao: TDBEdit;
    Label3: TLabel;
    tccsigla: TDBEdit;
    registrotcccodigo: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftcc: Tftcc;

implementation

{$R *.dfm}

end.
