unit ufrcrtrans;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, System.SysUtils, System.ImageList;

type
  Tfrcrtrans = class(Tfrmbase)
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registrorcrchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroetdidentificacao: TStringField;
    registrocedcodigo: TIntegerField;
    registrorcrvalor: TFloatField;
    registrorcrdata: TDateField;
    registrorcrhistorico: TStringField;
    registrotcrcodigo: TIntegerField;
    registrotsccodigo: TIntegerField;
    registrotnccodigo: TIntegerField;
    registrorcrhora: TTimeField;
    Label1: TLabel;
    rcrchave: TDBEdit;
    rcrdata: TDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    etdcodigo: TDBEdit;
    rcrvalor: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    rcrhistorico: TDBMemo;
    mce: TUniQuery;
    mcercrchave: TIntegerField;
    mcetmccodigo: TIntegerField;
    mceclbcodigo: TIntegerField;
    mcemcemotivo: TStringField;
    mcemecregistro: TDateTimeField;
    tfr: TUniQuery;
    tfrrcrdestino: TIntegerField;
    tfrrcrorigem: TIntegerField;
    tfrtfrchave: TIntegerField;
    plItens: TPanel;
    bSelecionar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure rcrhistoricoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    hrcr: THandle;
  end;

var
  frcrtrans: Tfrcrtrans;

  // Início ID do Módulo frcrtrans
const
  vPlIdMd = '02.02.87.002-03';


  // Fim ID do Módulo frcrtrans

implementation

{$R *.dfm}

procedure Tfrcrtrans.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfrcrtrans.rcrhistoricoExit(Sender: TObject);
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
