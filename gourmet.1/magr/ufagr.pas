unit ufagr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfagr = class(Tfrmbase)
    registroagrchave: TIntegerField;
    registrogrecodigo: TIntegerField;
    registrocedcodigo: TIntegerField;
    registrogredestino: TIntegerField;
    Label1: TLabel;
    agrchave: TDBEdit;
    Label2: TLabel;
    grecodigo: TDBEdit;
    Label3: TLabel;
    cedcodigo: TDBEdit;
    Label4: TLabel;
    gredestino: TDBEdit;
    gre: TUniQuery;
    gregrecodigo: TIntegerField;
    gregreidentificacao: TStringField;
    ced: TUniQuery;
    cedcedcodigo: TIntegerField;
    cedcedidentificacao: TStringField;
    registrogreidentificacao: TStringField;
    registrocedidentificacao: TStringField;
    registrogredesidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fagr: Tfagr;

  // Início ID do Módulo fagr
const
  vPlIdMd = '00.00.00.000-00';

  // Fim ID do Módulo fagr
implementation

{$R *.dfm}

procedure Tfagr.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

end.
