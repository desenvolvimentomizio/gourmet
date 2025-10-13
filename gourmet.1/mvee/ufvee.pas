unit ufvee;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfvee = class(Tfrmbase)
    registroveechave: TIntegerField;
    registroveicodigo: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroedrcodigo: TIntegerField;
    Label1: TLabel;
    veicodigo: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    Label3: TLabel;
    edrcodigo: TDBEdit;
    Label4: TLabel;
    veechave: TDBEdit;
    vei: TUniQuery;
    veiveicodigo: TIntegerField;
    registroveiidentificacao: TStringField;
    edr: TUniQuery;
    edredrcodigo: TIntegerField;
    edredridentificacao: TStringField;
    registroedridentificacao: TStringField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    veiveiidentificacao: TStringField;
    procedure edrcodigoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fvee: Tfvee;

implementation

{$R *.dfm}

procedure Tfvee.edrcodigoEnter(Sender: TObject);
begin
  inherited;
  self.txtFiltro:='etdcodigo='+etdcodigo.Field.AsString;

end;

end.
