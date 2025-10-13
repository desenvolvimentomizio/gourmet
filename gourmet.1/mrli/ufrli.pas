unit ufrli;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, ufuncoes, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfrli = class(Tfrmbase)
    registrorlichave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrotlicodigo: TIntegerField;
    registrorlidatainicial: TDateField;
    registrorlidatafinal: TDateField;
    registroclbcodigo: TIntegerField;
    registrorliregistro: TDateTimeField;
    Label1: TLabel;
    rlichave: TDBEdit;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    tli: TUniQuery;
    tlitlicodigo: TIntegerField;
    tlitliidentificacao: TStringField;
    registrotliidentificacao: TStringField;
    tlicodigo: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    rlidatainicial: TDBEdit;
    Label5: TLabel;
    rlidatafinal: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frli: Tfrli;

implementation

{$R *.dfm}

procedure Tfrli.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registrorliregistro.AsString := agora(application, zcone);

end;

end.
