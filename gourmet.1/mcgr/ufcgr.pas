unit ufcgr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfcgr = class(Tfrmbase)
    registrocgrcodigo: TIntegerField;
    registrocgridentificacao: TStringField;
    Label1: TLabel;
    cgrcodigo: TDBEdit;
    Label2: TLabel;
    cgridentificacao: TDBEdit;
    registrocgrordem: TIntegerField;
    registrocgrremoto: TIntegerField;
    registrocgrdestaque: TIntegerField;
    registroimgcodigo: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrocgrimagem: TBlobField;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    cgrdestaque: TDBEdit;
    cgrordem: TDBEdit;
    cgrremoto: TDBEdit;
    btCarregaImagem: TButton;
    cgrimagem: TDBImage;
    registrosencgrremoto: TStringField;
    registrosencgrdestaque: TStringField;
    OpenPictureDialog: TOpenDialog;
    procedure btCarregaImagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcgr: Tfcgr;

implementation

{$R *.dfm}

procedure Tfcgr.btCarregaImagemClick(Sender: TObject);
var
  BlobField: TBlobField;
  FileName: string;
begin
  if OpenPictureDialog.Execute then
  begin

    BlobField := registro.FieldByName('cgrimagem') as TBlobField;
    FileName := OpenPictureDialog.FileName;
    BlobField.LoadFromFile(FileName);
  end;

end;

end.
