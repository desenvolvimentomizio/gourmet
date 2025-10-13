unit ufgre;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, System.ImageList;

type
  Tfgre = class(Tfrmbase)
    registrogrecodigo: TIntegerField;
    registrogreidentificacao: TStringField;
    ced: TUniQuery;
    cedcedcodigo: TIntegerField;
    cedcedidentificacao: TStringField;
    Label1: TLabel;
    grecodigo: TDBEdit;
    Label2: TLabel;
    greidentificacao: TDBEdit;
    plDre: TPanel;
    bValidar: TButton;
    registrodmccodigo: TIntegerField;
    dmc: TUniQuery;
    dmcdmccodigo: TIntegerField;
    dmcdmcidentificacao: TStringField;
    registrodmcidentificacao: TStringField;
    registrogreposicao: TIntegerField;
    Label3: TLabel;
    greposicao: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bValidarClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    hdre: THandle;
  end;

var
  fgre: Tfgre;

  // Início ID do Módulo fgre
const
  vPlIdMd = '00.00.00.000-00';

  // Fim ID do Módulo fgre

implementation

{$R *.dfm}

procedure Tfgre.bValidarClick(Sender: TObject);
begin
  inherited;
  Self.bValidar.Visible := False;

  If (Self.registro.State = dsEdit) Then
    Self.registro.Post
  Else If (Self.registro.State = dsInsert) Then
    Self.registro.Post;

  hdre := CarregaFrame('mdre', plDre, 'Contas para Grupos de Demonstrações Contábeis');

end;

procedure Tfgre.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfgre.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Self.registrodmccodigo.AsString := vChaveMestre;

end;

end.
