unit ufitf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,ufuncoes;

type
  Tfitf = class(Tfrmbase)
    registroitfchave: TIntegerField;
    registroorcchave: TIntegerField;
    registrofercodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registroitfdatasaida: TDateField;
    Label1: TLabel;
    itfchave: TDBEdit;
    Label2: TLabel;
    fercodigo: TDBEdit;
    fer: TUniQuery;
    ferfercodigo: TIntegerField;
    ferferidentificacao: TStringField;
    registroferidentificacao: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fitf: Tfitf;

implementation

{$R *.dfm}

procedure Tfitf.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
registroorcchave.AsString:=self.vChaveMestre;
registroclbcodigo.AsInteger:=acesso.Usuario;
registroitfdatasaida.AsString:=hoje(application,ZCone);

end;

end.
