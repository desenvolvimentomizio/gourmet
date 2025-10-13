unit ufgop;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfgop = class(Tfrmbase)
    registrogopchave: TIntegerField;
    registroprocodigo: TIntegerField;
    registrogopordem: TIntegerField;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    registropronome: TStringField;
    Label1: TLabel;
    gopchave: TDBEdit;
    Label2: TLabel;
    procodigo: TDBEdit;
    Label3: TLabel;
    gopordem: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fgop: Tfgop;

  // Início ID do Módulo fgop
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo fgop

implementation

{$R *.dfm}

end.
