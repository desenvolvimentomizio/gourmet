unit ufdmc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls;

type
  Tfdmc = class(Tfrmbase)
    registrodmccodigo: TIntegerField;
    registrodmcidentificacao: TStringField;
    Label1: TLabel;
    dmccodigo: TDBEdit;
    Label2: TLabel;
    dmcidentificacao: TDBEdit;
    bValidar: TButton;
    plGre: TPanel;
    BvTopo: TBevel;
    SplLista: TSplitter;
    procedure bValidarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    hgre: THandle;
  end;

var
  fdmc: Tfdmc;

implementation

{$R *.dfm}

procedure Tfdmc.bValidarClick(Sender: TObject);
begin
  inherited;

  Self.bValidar.Visible := False;

  If (Self.registro.State = dsEdit) Then
    Self.registro.Post
  Else If (Self.registro.State = dsInsert) Then
    Self.registro.Post;

  if hgre = 0 then
    hgre := CarregaFrame('mgre', plGre, 'Grupos de Demonstrações Contábeis');

end;

end.
