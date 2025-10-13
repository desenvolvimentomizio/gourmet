unit ufprogramacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ufuncoes;

type
  Tfprogramacao = class(Tfrmbase)
    registrochddataatendimento: TDateField;
    registrochdchave: TIntegerField;
    Label1: TLabel;
    chdchave: TDBEdit;
    Label2: TLabel;
    chddataatendimento: TDBEdit;
    tec: TUniQuery;
    registrottccodigo: TIntegerField;
    tecteccodigo: TIntegerField;
    ech: TUniQuery;
    echechchave: TIntegerField;
    echchdchave: TIntegerField;
    echechregistro: TDateTimeField;
    echclbcodigo: TIntegerField;
    echteccodigo: TIntegerField;
    tectecidentificacao: TStringField;
    tectecsituacao: TIntegerField;
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fprogramacao: Tfprogramacao;

implementation

{$R *.dfm}

procedure Tfprogramacao.bconfirmaClick(Sender: TObject);
begin
  tec.Close;
  tec.ParamByName('ttccodigo').AsInteger := registrottccodigo.AsInteger;
  tec.Open;

  ech.Open;
  ech.Append;
  echchdchave.AsInteger := registrochdchave.AsInteger;
  echechregistro.AsString := agora(application, ZCone);
  echclbcodigo.AsInteger := acesso.Usuario;
  echteccodigo.AsInteger := tecteccodigo.AsInteger;
  ech.Post;

  inherited;

end;

end.
