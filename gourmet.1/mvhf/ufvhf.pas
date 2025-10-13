unit ufvhf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfvhf = class(Tfrmbase)
    registrovhfcodigo: TIntegerField;
    registrovhfidentificacao: TStringField;
    registrofclcodigo: TIntegerField;
    registrovhfvalor: TFloatField;
    registrovhfdatainicial: TDateField;
    registrovhfdatafinal: TDateField;
    Label1: TLabel;
    vhfcodigo: TDBEdit;
    Label2: TLabel;
    vhfidentificacao: TDBEdit;
    Label3: TLabel;
    fclcodigo: TDBEdit;
    Label4: TLabel;
    etdcodigo: TDBEdit;
    Label5: TLabel;
    vhfvalor: TDBEdit;
    Label6: TLabel;
    vhfdatainicial: TDBEdit;
    Label7: TLabel;
    vhfdatafinal: TDBEdit;
    clb: TUniQuery;
    registroetdcodigo: TIntegerField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    fcl: TUniQuery;
    fclfclcodigo: TIntegerField;
    fclfclidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    registrofclidentificacao: TStringField;
    registroanfcodigo: TIntegerField;
    anf: TUniQuery;
    anfanfcodigo: TIntegerField;
    anfanfidentificacao: TStringField;
    registroanfidentificacao: TStringField;
    Label8: TLabel;
    anfcodigo: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fvhf: Tfvhf;

implementation

{$R *.dfm}

end.
