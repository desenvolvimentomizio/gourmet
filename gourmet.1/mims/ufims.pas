unit ufims;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  ufuncoes,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtDlgs;

type
  Tfims = class(Tfrmbase)
    registroimsidentificacao: TStringField;
    registroimsimagem: TBlobField;
    registroimscodigo: TIntegerField;
    Label1: TLabel;
    imscodigo: TDBEdit;
    Label2: TLabel;
    imsidentificacao: TDBEdit;
    registroclbcodigo: TIntegerField;
    Label3: TLabel;
    imsimagem: TDBImage;
    btCarregaImagem: TButton;
    Label4: TLabel;
    OpenPictureDialog: TOpenPictureDialog;
    registroimsregistro: TDateField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure btCarregaImagemClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fims: Tfims;

implementation

{$R *.dfm}

procedure Tfims.btCarregaImagemClick(Sender: TObject);
var
  BlobField: TBlobField;
  FileName: string;
begin
  inherited;
  if OpenPictureDialog.Execute then
  begin

    BlobField := registro.FieldByName('imsimagem') as TBlobField;
    FileName := OpenPictureDialog.FileName;
    BlobField.LoadFromFile(FileName);
  end;
end;

procedure Tfims.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registroimsregistro.AsString := hoje(application, ZCone)
end;

end.
