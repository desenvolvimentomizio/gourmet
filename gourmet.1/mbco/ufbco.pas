unit ufbco;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList;

type
  Tfbco = class(Tfrmbase)
    registrobcocodigo: TStringField;
    registrobconome: TStringField;
    Label1: TLabel;
    bcocodigo: TDBEdit;
    Label2: TLabel;
    bconome: TDBEdit;
    registrobcoativo: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenbcoativo: TStringField;
    Label3: TLabel;
    bcoativo: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fbco: Tfbco;

  // Início ID do Módulo frabco
const
  vPlIdMd = '01.02.07.001-02';

  // Fim ID do Módulo frabco
implementation

{$R *.dfm}

procedure Tfbco.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
