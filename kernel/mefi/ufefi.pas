unit ufefi;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, Dialogs, System.ImageList;

type
  Tfefi = class(Tfrmbase)
    registroefichave: TIntegerField;
    registroevfcodigo: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroefidtinicial: TDateField;
    registroefidtfinal: TDateField;
    registroefivalor: TFloatField;
    Label1: TLabel;
    efichave: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    Label3: TLabel;
    evfcodigo: TDBEdit;
    Label4: TLabel;
    efidtinicial: TDBEdit;
    Label5: TLabel;
    efidtfinal: TDBEdit;
    Label6: TLabel;
    efivalor: TDBEdit;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    evf: TUniQuery;
    evfevfcodigo: TIntegerField;
    evfevfidentificacao: TStringField;
    registroevfidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    registroclbcodigo: TIntegerField;
    registroeficriacao: TDateTimeField;
    registrophgcodigo: TIntegerField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    phgcodigo: TDBEdit;
    Label7: TLabel;
    evftevcodigo: TIntegerField;
    evfevfpelocco: TIntegerField;
    tfl: TUniQuery;
    tfltflcodigo: TIntegerField;
    tfltflidentificacao: TStringField;
    registrotflcodigo: TIntegerField;
    registrotflidentificacao: TStringField;
    Label8: TLabel;
    tflcodigo: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure evfcodigoEnter(Sender: TObject);
    procedure efidtfinalEnter(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fefi: Tfefi;

const
  vPlIdMd = '02.12.90.002-02';

implementation

{$R *.dfm}

procedure Tfefi.bconfirmaClick(Sender: TObject);
begin
  if efivalor.Field.AsFloat <= 0 then
  begin
    ShowMessage('Valor inválido!' + #13 + 'Necessita ser um valor positivo.');
    efivalor.SetFocus;
    exit;
  end;
  inherited;

end;

procedure Tfefi.efidtfinalEnter(Sender: TObject);
begin
  { inherited; }

end;

procedure Tfefi.evfcodigoEnter(Sender: TObject);
begin

   self.txtFiltro := 'tev.tevcodigo=1 and evfpelocco=0';

    inherited;
end;

procedure Tfefi.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;
end;

procedure Tfefi.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := Acesso.Usuario;
  registroeficriacao.AsFloat := now;
end;

end.
