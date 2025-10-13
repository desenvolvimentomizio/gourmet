unit ufprj;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni;

type
  Tfprj = class(Tfrmbase)
    registroprjcodigo: TIntegerField;
    registroprjidentificacao: TStringField;
    Label1: TLabel;
    prjcodigo: TDBEdit;
    Label2: TLabel;
    prjidentificacao: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fprj: Tfprj;

  // Início ID do Módulo fraprj
const
  vPlIdMd = '03.07.80.001-01';

  // Fim ID do Módulo fraprj

implementation

{$R *.dfm}

procedure Tfprj.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
