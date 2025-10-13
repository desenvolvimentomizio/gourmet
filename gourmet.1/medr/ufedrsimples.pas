unit ufedrsimples;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, System.ImageList;

type
  Tfedrsimples = class(Tfrmbase)
    ted: TUniQuery;
    tedtedcodigo: TIntegerField;
    tedtedidentificacao: TStringField;
    registroedrcodigo: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrotedcodigo: TIntegerField;
    registrotedidentificacao: TStringField;
    registroedrrua: TStringField;
    registroedrnumero: TStringField;
    registroedrcomple: TStringField;
    registroedrbairro: TStringField;
    registrocddcodigo: TStringField;
    registroufscodigo: TStringField;
    registroedrobs: TStringField;
    registroedrinscest: TStringField;
    registroedrcep: TStringField;
    registroedrinscmun: TStringField;
    registroedritem: TIntegerField;
    Label9: TLabel;
    edrrua: TDBEdit;
    Label10: TLabel;
    edrnumero: TDBEdit;
    Label2: TLabel;
    edrobs: TDBMemo;
    Label12: TLabel;
    cfgcddcodigo: TStringField;
    cfgufscodigo: TStringField;
    cfgedrcep: TStringField;
    bai: TUniQuery;
    baibaicodigo: TIntegerField;
    baibaiidentificacao: TStringField;
    Dbai: TUniDataSource;
    edrbairro: TDBLookupComboBox;
    Button1: TButton;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edrbairroEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fedrsimples: Tfedrsimples;

  // Início ID do Módulo fedrsimples
const
  vPlIdMd = '01.01.80.001-03';

  // Fim ID do Módulo fedrsimples

implementation

{$R *.dfm}

procedure Tfedrsimples.bconfirmaClick(Sender: TObject);
begin
  if edrbairro.Text = '' then
  begin
    ShowMessage('Selecione o bairro!');
    edrbairro.SetFocus;
    exit;
  end;

  inherited;

end;

procedure Tfedrsimples.Button1Click(Sender: TObject);
begin
  MostraFormu('mbai', '', '');
  bai.Close;
  bai.Open;
end;

procedure Tfedrsimples.edrbairroEnter(Sender: TObject);
begin
  inherited;
  edrbairro.DropDown;
end;

procedure Tfedrsimples.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
  if Self.psituacao.Caption = 'Incluindo' then
  begin
    registroufscodigo.AsString := Self.cfgufscodigo.AsString;
    registrocddcodigo.AsString := Self.cfgcddcodigo.AsString;
    registroedrcep.AsString := cfgedrcep.AsString;
  end;
  cfg.Open;

  bai.Open;

  Self.Width := 650;
  Self.Height := 280;
end;

procedure Tfedrsimples.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  registroedrinscest.AsString := '';
  consulta.Close;
  consulta.SQL.Text := 'Select count(edrcodigo) as qtd from edr where etdcodigo=' + vChaveMestre { + ' and tedcodigo=1' };
  consulta.Open;

  cfg.Open;
  registroedritem.AsInteger := consulta.Fields[0].AsInteger + 1;
  registrocddcodigo.AsString := cfgcddcodigo.AsString;
  registroufscodigo.AsInteger := cfgufscodigo.AsInteger;
  Self.registrotedcodigo.AsInteger := 1;
  edrrua.SetFocus;

end;

end.
