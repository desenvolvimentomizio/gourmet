unit ufdrb;

interface

uses
  Winapi.Windows, System.SysUtils, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  Tfdrb = class(Tfrmbase)
    registrodrbcodigo: TIntegerField;
    registrortbcodigo: TIntegerField;
    registrotcbcodigo: TIntegerField;
    registrodrbcstcsosn: TStringField;
    registrodrbperbaicms: TFloatField;
    registrodrbaliqicms: TFloatField;
    registrodrbaliqicmsst: TFloatField;
    registrodrbivaicmsst: TFloatField;
    registrodrbdestacaicms: TIntegerField;
    registrodrbdestacaicmsst: TIntegerField;
    registrodrbdestacaipi: TIntegerField;
    registrodrbinfoadicfisco: TStringField;
    registrocfocfop: TStringField;
    registrootbcodigo: TIntegerField;
    tcb: TUniQuery;
    tcbtcbcodigo: TIntegerField;
    tcbtcbidentificacao: TStringField;
    registrotcbidentificacao: TStringField;
    cfo: TUniQuery;
    cfocfocfop: TStringField;
    cfocfoidentificacao: TStringField;
    registrocfoidentificacao: TStringField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosendrbdestacaicms: TStringField;
    registrosendrbdestacaicmsst: TStringField;
    registrosendrbdestacaipi: TStringField;
    Label1: TLabel;
    drbcodigo: TDBEdit;
    Label2: TLabel;
    otbcodigo: TDBEdit;
    Label3: TLabel;
    tcbcodigo: TDBEdit;
    Label4: TLabel;
    drbcstcsosn: TDBEdit;
    Label5: TLabel;
    drbperbaicms: TDBEdit;
    Label6: TLabel;
    drbaliqicms: TDBEdit;
    Label7: TLabel;
    drbaliqicmsst: TDBEdit;
    Label8: TLabel;
    drbivaicmsst: TDBEdit;
    Label9: TLabel;
    cfocfop: TDBEdit;
    Label10: TLabel;
    drbdestacaicms: TDBEdit;
    Label11: TLabel;
    drbdestacaicmsst: TDBEdit;
    Label12: TLabel;
    drbdestacaipi: TDBEdit;
    drbinfoadicfisco: TDBMemo;
    Label13: TLabel;
    otb: TUniQuery;
    otbotbidentificacao: TStringField;
    otbotbcodigo: TIntegerField;
    registrootbidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdrb: Tfdrb;

  // Início ID do Módulo fdrb
const
  vPlIdMd = '01.11.20.002-02';

  // Fim ID do Módulo fdrb

implementation

{$R *.dfm}

procedure Tfdrb.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

end.
