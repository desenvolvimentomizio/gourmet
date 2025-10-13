unit ufehf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, ufuncoes,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfehf = class(Tfrmbase)
    registroehfchave: TIntegerField;
    registroflhchave: TIntegerField;
    registrovhfcodigo: TIntegerField;
    registrotthcodigo: TIntegerField;
    Label1: TLabel;
    ehfchave: TDBEdit;
    Label2: TLabel;
    flhchave: TDBEdit;
    Label3: TLabel;
    vhfcodigo: TDBEdit;
    Label4: TLabel;
    tthcodigo: TDBEdit;
    Label5: TLabel;
    ehfhoras: TDBEdit;
    flh: TUniQuery;
    flhflhchave: TIntegerField;
    flhflhidentificacao: TStringField;
    vhf: TUniQuery;
    vhfvhfcodigo: TIntegerField;
    vhfvhfidentificacao: TStringField;
    tth: TUniQuery;
    tthtthcodigo: TIntegerField;
    tthtthidentificacao: TStringField;
    registroflhidentificacao: TStringField;
    registrovhfidentificacao: TStringField;
    registrotthidentificacao: TStringField;
    registroehfhoras: TStringField;
    registroclbcodigo: TIntegerField;
    registroehfregistro: TDateTimeField;
    procedure flhchaveExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fehf: Tfehf;

implementation

{$R *.dfm}

procedure Tfehf.flhchaveExit(Sender: TObject);
begin
  inherited;
  self.txtFiltro := 'eflcodigo=' + inttostr(eflCriada) + ' or ' + 'eflcodigo=' + inttostr(eflCalculada);

  if ActiveControl = bcancela then
    exit;

  self.ValidaSaida(Sender);
end;

procedure Tfehf.FormShow(Sender: TObject);
begin
  inherited;
  self.txtFiltro := 'eflcodigo=' + inttostr(eflCriada) + ' or ' + 'eflcodigo=' + inttostr(eflCalculada);

end;

procedure Tfehf.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registroehfregistro.AsString := agora(application, ZCone);

end;

end.
