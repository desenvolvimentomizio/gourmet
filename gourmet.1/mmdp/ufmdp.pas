unit ufmdp;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, System.Actions,
  Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.ImgList, PngImageList;

type
  Tfmdp = class(Tfrmbase)
    registromdpcodigo: TIntegerField;
    registromdpidentificacao: TStringField;
    registromdpdescricao: TStringField;
    registroprjcodigo: TIntegerField;
    Label1: TLabel;
    mdpcodigo: TDBEdit;
    Label2: TLabel;
    mdpidentificacao: TDBEdit;
    Label3: TLabel;
    prjcodigo: TDBEdit;
    Label4: TLabel;
    mdpdescricao: TDBMemo;

    prj: tuniquery;
    prjprjcodigo: TIntegerField;
    prjprjidentificacao: TStringField;
    registroprjidentificacao: TStringField;
    idp: tuniquery;
    idpidpcodigo: TIntegerField;
    idpidpidentificacao: TStringField;
    registromdpordem: TIntegerField;
    Label5: TLabel;
    mdpordem: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fmdp: Tfmdp;

  // Início ID do Módulo framdp
const
  vPlIdMd = '03.07.80.006-02';

  // Fim ID do Módulo framdp

implementation

{$R *.dfm}

procedure Tfmdp.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
