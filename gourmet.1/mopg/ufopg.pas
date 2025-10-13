unit ufopg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfopg = class(Tfrmbase)
    registroopgcodigo: TIntegerField;
    registrogrpcodigo: TIntegerField;
    registroopccodigo: TIntegerField;
    grp: TUniQuery;
    grpgrpcodigo: TIntegerField;
    grpgrpidentificacao: TStringField;
    registrogrpidentificacao: TStringField;
    opc: TUniQuery;
    opcopccodigo: TIntegerField;
    opcopcidentificacao: TStringField;
    registroopcidentificacao: TStringField;
    Label1: TLabel;
    opgcodigo: TDBEdit;
    grpcodigo: TDBEdit;
    Label3: TLabel;
    opccodigo: TDBEdit;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fopg: Tfopg;

implementation

{$R *.dfm}

end.
