unit ufpos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfpos = class(Tfrmbase)
    registroposcodigo: TIntegerField;
    registroposidentificacao: TStringField;
    registroposnumeroserie: TStringField;
    Label1: TLabel;
    poscodigo: TDBEdit;
    Label2: TLabel;
    posidentificacao: TDBEdit;
    Label3: TLabel;
    posnumeroserie: TDBEdit;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    registroclbcodigo: TIntegerField;
    clbcodigo: TDBEdit;
    Label4: TLabel;
    registroclbidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpos: Tfpos;

  // Início ID do Módulo fpos
const
  vPlIdMd = '00.00.00.000-00';

  // Fim ID do Módulo fpos

implementation

{$R *.dfm}

procedure Tfpos.FormShow(Sender: TObject);
begin
  inherited;
  IdModulo := vPlIdMd;
  inherited;
end;

end.
