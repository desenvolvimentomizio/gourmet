unit uftso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftso = class(Tfrmbase)
    registrotsoemail: TStringField;
    registrotsotelefone: TStringField;
    registrotsoidentificacao: TStringField;
    Label1: TLabel;
    tsoemail: TDBEdit;
    Label2: TLabel;
    tsotelefone: TDBEdit;
    Label3: TLabel;
    tsoidentificacao: TDBEdit;
    registrotsoempresa: TStringField;
    Label4: TLabel;
    tsoempresa: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftso: Tftso;

implementation

{$R *.dfm}

end.
