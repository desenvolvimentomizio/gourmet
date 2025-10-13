unit ufgri;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfgri = class(Tfrmbase)
    registrogricodigo: TIntegerField;
    registrogrpcodigo: TIntegerField;
    registrotcicodigo: TIntegerField;
    Label1: TLabel;
    gricodigo: TDBEdit;
    Label2: TLabel;
    grpcodigo: TDBEdit;
    Label3: TLabel;
    tcicodigo: TDBEdit;
    grp: TUniQuery;
    grpgrpcodigo: TIntegerField;
    grpgrpidentificacao: TStringField;
    tci: TUniQuery;
    tcitcicodigo: TIntegerField;
    tcitciidentificacao: TStringField;
    registrogrpidentificacao: TStringField;
    registrotciidentificacao: TStringField;
    registrogriminuretardo: TIntegerField;
    rel: TUniQuery;
    registrorelcompleto: TStringField;
    registrorelgrupo: TStringField;
    Label5: TLabel;
    relcompleto: TDBEdit;
    Label6: TLabel;
    relgrupo: TDBEdit;
    relrelcodigo: TStringField;
    relrelidentificacao: TStringField;
    registrorelcomidentificacao: TStringField;
    registrorelgruidentificacao: TStringField;
    registrogriimprimeauto: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosengriimprimeauto: TStringField;
    Label7: TLabel;
    griimprimeauto: TDBEdit;
    registrogricardapio: TIntegerField;
    registrogriconveniencia: TIntegerField;
    registrogrientrega: TIntegerField;
    registrosengricardapio: TStringField;
    registrosengriconveniencia: TStringField;
    registrosengrientrega: TStringField;
    Label8: TLabel;
    gricardapio: TDBEdit;
    Label10: TLabel;
    grientrega: TDBEdit;
    registrogrivias: TIntegerField;
    registrogripedidoaux: TIntegerField;
    registrosengripedidoaux: TStringField;
    Label4: TLabel;
    gripedidoaux: TDBEdit;
    registrogricontrolaproducao: TIntegerField;
    registrosengricontrolaproducao: TStringField;
    Label9: TLabel;
    gricontrolaproducao: TDBEdit;
    sep: TUniQuery;
    sepsepcodigo: TIntegerField;
    sepsepidentificacao: TStringField;
    registrosepcodigo: TIntegerField;
    registrosepidentificacao: TStringField;
    Label11: TLabel;
    sepcodigo: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fgri: Tfgri;

implementation

{$R *.dfm}

procedure Tfgri.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrogriminuretardo.AsInteger := 0;
  registrogrivias.AsInteger := 1;
  registrogriconveniencia.AsInteger := 0;
  registrogriminuretardo.AsInteger := 0;
end;

end.
