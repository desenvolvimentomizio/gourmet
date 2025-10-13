unit ufmfi;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList;

type
  Tfmfi = class(Tfrmbase)
    registromeacodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registromeamotivo: TStringField;
    Label1: TLabel;
    meacodigo: TDBEdit;
    meamotivo: TDBMemo;
    Label2: TLabel;
    ccm: TUniQuery;
    ccmmeacodigo: TIntegerField;
    ccmccochave: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmfi: Tfmfi;

  // Início ID do Módulo fmfi
const
  vPlIdMd = '02.02.15.002-03';

implementation

{$R *.dfm}

procedure Tfmfi.bconfirmaClick(Sender: TObject);
begin
  inherited;

  ccm.Open;
  ccm.Append;
  ccmmeacodigo.AsInteger := self.registromeacodigo.AsInteger;
  ccmccochave.AsString := self.vChaveMestre;
  ccm.Post;
end;

procedure Tfmfi.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

end;

procedure Tfmfi.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := Acesso.Usuario;

end;

end.
