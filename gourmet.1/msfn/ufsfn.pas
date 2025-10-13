unit ufsfn;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfsfn = class(Tfrmbase)
    registrosfncodigo: TIntegerField;
    registrounicodigo: TIntegerField;
    registroprocodigo: TIntegerField;
    registrosfnquantidade: TFloatField;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    uni: TUniQuery;
    uniunicodigo: TIntegerField;
    uniuninome: TStringField;
    registrouninome: TStringField;
    registropronome: TStringField;
    Label1: TLabel;
    sfncodigo: TDBEdit;
    Label4: TLabel;
    sfnquantidade: TDBEdit;
    Label2: TLabel;
    unicodigo: TDBEdit;
    Label3: TLabel;
    procodigo: TDBEdit;
    registrosfnordem: TIntegerField;
    Label5: TLabel;
    sfnordem: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsfn: Tfsfn;

  // Início ID do Módulo fsfn
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo fsfn

implementation

{$R *.dfm}

procedure Tfsfn.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

end.
