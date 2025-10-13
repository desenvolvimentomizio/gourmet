unit ufrfc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, System.ImageList;

type
  Tfrfc = class(Tfrmbase)
    Label3: TLabel;
    rfcloja: TDBEdit;
    Label4: TLabel;
    rfccontato: TDBEdit;
    Label5: TLabel;
    rfcfonecont: TDBEdit;
    Label6: TLabel;
    rfcvlrcompras: TDBEdit;
    Label7: TLabel;
    rfcatrasomed: TDBEdit;
    Label9: TLabel;
    Label1: TLabel;
    rfcdescricao: TDBMemo;
    Label8: TLabel;
    rfcdtcad: TDBEdit;
    registrorfccodigo: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrorfcloja: TStringField;
    registrorfccontato: TStringField;
    registrorfcfonecont: TStringField;
    registrorfcvlrcompras: TFloatField;
    registrorfcatrasomed: TStringField;
    registrorfcdtcons: TDateField;
    registrorfcdtcad: TDateField;
    registrorfcdescricao: TStringField;
    rfcdtcons: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frfc: Tfrfc;

  // Início ID do Módulo frarfc
const
  vPlIdMd = '01.01.01.003-02';

  // Fim ID do Módulo frarfc

implementation

{$R *.dfm}

procedure Tfrfc.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
end;

procedure Tfrfc.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrorfcdtcons.AsFloat := Date;
end;

end.
