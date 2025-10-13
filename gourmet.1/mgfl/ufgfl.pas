unit ufgfl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,DateUtils,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfgfl = class(Tfrmbase)
    registrogflchave: TIntegerField;
    registrogfldatainicial: TDateField;
    registrogfldatafinal: TDateField;
    registrogflagrupamento: TIntegerField;
    Label1: TLabel;
    gflchave: TDBEdit;
    Label2: TLabel;
    gfldatainicial: TDBEdit;
    Label3: TLabel;
    gfldatafinal: TDBEdit;
    gflagrupamento: TDBRadioGroup;
    btGerar: TButton;
    plflf: TPanel;
    flf: TUniQuery;
    flfflfchave: TIntegerField;
    flfgflchave: TIntegerField;
    flfflfdia: TDateField;
    cpa: TUniQuery;
    cre: TUniQuery;
    ccodeb: TUniQuery;
    ccocre: TUniQuery;
    rh: TUniQuery;
    flfflfvalorcpa: TFloatField;
    flfflfvalorcre: TFloatField;
    flfflfvalorccodeb: TFloatField;
    flfflfvalorccocre: TFloatField;
    flfflfvalorrh: TFloatField;
    flfflfsaldo: TFloatField;
    procedure btGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fgfl: Tfgfl;

implementation

{$R *.dfm}

procedure Tfgfl.btGerarClick(Sender: TObject);
var
  i, x: integer;
  dia:Tdate;
  vlSaldo:Double;
begin
  inherited;
  if registro.State <> dsbrowse then
    registro.Post;

  flf.Close;
  flf.ParamByName('gflchave').AsInteger := gflchave.Field.AsInteger;
  flf.Open;
  // limpa os dados deste fluxo;
  while not flf.Eof do
  begin
    flf.Delete;
  end;


  // cria dias para calcular o fluxo diario
  x := 0;
  dia:= gfldatainicial.Field.AsDateTime;
  vlSaldo:=0;
  while True do
  begin

    x := x + 1;
    flf.Append;
    flfgflchave.AsInteger := gflchave.Field.AsInteger;
    flfflfdia.AsDateTime := dia;


    flfflfvalorcpa.AsFloat := 0;
    cpa.Close;
    cpa.ParamByName('dia').AsDate:=flfflfdia.AsFloat;
    cpa.Open;
    flfflfvalorcpa.AsFloat:=cpa.FieldByName('valor').AsCurrency;


    flfflfvalorcre.AsFloat := 0;
    cre.Close;
    cre.ParamByName('dia').AsDate:=flfflfdia.AsFloat;
    cre.Open;
    flfflfvalorcre.AsFloat:=cre.FieldByName('valor').AsCurrency;



    flfflfvalorccodeb.AsFloat := 0;
    ccodeb.Close;
    ccodeb.ParamByName('dia').AsDate:=flfflfdia.AsFloat;
    ccodeb.Open;
    flfflfvalorccodeb.AsFloat:=ccodeb.FieldByName('valor').AsCurrency;


    flfflfvalorccocre.AsFloat := 0;
    ccocre.Close;
    ccocre.ParamByName('dia').AsDate:=flfflfdia.AsFloat;
    ccocre.Open;
    flfflfvalorccocre.AsFloat:=ccocre.FieldByName('valor').AsCurrency;


    flfflfvalorrh.AsFloat := 0;
    rh.Close;
    rh.ParamByName('dia').AsDate:=flfflfdia.AsFloat;
    rh.Open;
    flfflfvalorrh.AsFloat:=rh.FieldByName('valor').AsCurrency;


    vlSaldo:=vlSaldo+flfflfvalorcre.AsFloat-flfflfvalorcpa.AsFloat+flfflfvalorccocre.AsFloat-flfflfvalorccodeb.AsFloat-flfflfvalorrh.AsFloat;

    flfflfsaldo.AsFloat :=vlSaldo;
    flf.Post;
    dia:=IncDay( gfldatainicial.Field.AsDateTime, x);

    if dia>gfldatafinal.Field.AsDateTime then
    break;


  end;

  bconfirma.Click;




end;

end.
