unit ufbpa;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,

  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, PngImageList;

type
  Tfbpa = class(Tfrmbase)
    registrobpacodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registroflacodigo: TIntegerField;
    registrogbpcodigo: TIntegerField;
    registrobpaidentificacao: TStringField;
    registrobpadataaquis: TDateField;
    registrobpavaloraquis: TFloatField;
    registrobpamesesvida: TIntegerField;
    registrobpavalorvenda: TFloatField;
    registrobpalocal: TStringField;
    fla: tuniquery;
    flaflacodigo: TIntegerField;
    flaflaidentificacao: TStringField;
    registroflaidentificacao: TStringField;
    gbp: tuniquery;
    gbpgbpcodigo: TIntegerField;
    gbpgbpidentificacao: TStringField;
    registrogbpidentificacao: TStringField;
    clb: tuniquery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    registroclbidentificacao: TStringField;
    Label1: TLabel;
    bpacodigo: TDBEdit;
    Label2: TLabel;
    clbcodigo: TDBEdit;
    Label3: TLabel;
    flacodigo: TDBEdit;
    Label4: TLabel;
    gbpcodigo: TDBEdit;
    Label5: TLabel;
    bpaidentificacao: TDBEdit;
    Label6: TLabel;
    bpadataaquis: TDBEdit;
    Label7: TLabel;
    bpavaloraquis: TDBEdit;
    Label8: TLabel;
    bpamesesvida: TDBEdit;
    Label9: TLabel;
    bpavalorvenda: TDBEdit;
    Label10: TLabel;
    bpalocal: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  fbpa: Tfbpa;

  // Início ID do Módulo frabpa
const
  vPlIdMd = '02.02.16.001-01';

  // Fim ID do Módulo frabpa

implementation

{$R *.dfm}

procedure Tfbpa.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

end.
