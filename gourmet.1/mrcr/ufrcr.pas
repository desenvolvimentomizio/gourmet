unit ufrcr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, System.SysUtils, System.ImageList;

type
  Tfrcr = class(Tfrmbase)
    registrorcrchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrocedcodigo: TIntegerField;
    registrorcrvalor: TFloatField;
    registrorcrdata: TDateField;
    registrorcrhistorico: TStringField;
    registrotcrcodigo: TIntegerField;
    registrotsccodigo: TIntegerField;
    registrotnccodigo: TIntegerField;
    Label1: TLabel;
    rcrchave: TDBEdit;
    Label2: TLabel;
    rcrdata: TDBEdit;
    Label3: TLabel;
    rcrvalor: TDBEdit;
    Label4: TLabel;
    rcrhistorico: TDBMemo;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    Label5: TLabel;
    etdcodigo: TDBEdit;
    registrorcrhora: TTimeField;
    mce: TUniQuery;
    mcercrchave: TIntegerField;
    mcetmccodigo: TIntegerField;
    mceclbcodigo: TIntegerField;
    mcemcemotivo: TStringField;
    mcemecregistro: TDateTimeField;
    procedure etdcodigoEnter(Sender: TObject);
    procedure rcrhistoricoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frcr: Tfrcr;

  // Início ID do Módulo frcr
const
  vPlIdMd = '02.02.87.002-02';


  // Fim ID do Módulo frcr

implementation

{$R *.dfm}

procedure Tfrcr.etdcodigoEnter(Sender: TObject);
begin
  (* Módulo mcli lê este filtro e oculta o cadastro do consumidor *)

end;

procedure Tfrcr.rcrhistoricoExit(Sender: TObject);
begin
  if Self.ActiveControl = bcancela then
    Exit;

  if Trim(rcrhistorico.Field.AsString) = '' then
  begin
    ShowMessage('Campo obrigatório!');
    rcrhistorico.SetFocus;
  end;
end;

end.
