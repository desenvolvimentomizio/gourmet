unit ufexb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  ufuncoes, upegabase, ufrabase,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfexb = class(Tfrmbase)
    registroexbcodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    Label1: TLabel;
    exbcodigo: TDBEdit;
    Label2: TLabel;
    registroexbidentificacao: TStringField;
    exbidentificacao: TDBEdit;
    btnvalidar: TButton;
    Plexi: TPanel;
    Plexh: TPanel;
    registroexbregistro: TDateField;
    DataSource1: TDataSource;
    procedure btnvalidarClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fexb: Tfexb;

implementation

{$R *.dfm}
{ Tfexb }

procedure Tfexb.btnvalidarClick(Sender: TObject);

begin
  inherited;

  try
    registro.Post;
    registro.Edit;

    CarregaFrame('mexh', Plexh, 'Controle de Dias');

    CarregaFrame('mexi', Plexi, 'Controle Horarios');
  except

  end;

end;

procedure Tfexb.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registroexbregistro.AsString := hoje(application, ZCone)
end;

end.
