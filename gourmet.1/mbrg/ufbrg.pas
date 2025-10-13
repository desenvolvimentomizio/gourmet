unit ufbrg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfbrg = class(Tfrmbase)
    registrobrgchave: TIntegerField;
    registrogrpcodigo: TIntegerField;
    registrobrdcodigo: TIntegerField;
    grp: TUniQuery;
    grpgrpcodigo: TIntegerField;
    grpgrpidentificacao: TStringField;
    brd: TUniQuery;
    brdbrdcodigo: TIntegerField;
    brdbrdidentificacao: TStringField;
    registrogrpidentificacao: TStringField;
    registrobrdidentificacao: TStringField;
    Label1: TLabel;
    brgchave: TDBEdit;
    Label2: TLabel;
    grpcodigo: TDBEdit;
    Label3: TLabel;
    brdcodigo: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbrg: Tfbrg;

  // Início ID do Módulo fbrg
const
  vPlIdMd = '00.00.00.000-01';

  // Fim ID do Módulo fbrg

implementation

{$R *.dfm}

end.
