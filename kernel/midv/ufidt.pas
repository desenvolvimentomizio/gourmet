unit ufidt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfidt = class(Tfrmbase)
    registroidtchave: TIntegerField;
    registromdtchave: TIntegerField;
    registroitmchave: TIntegerField;
    registromeschave: TIntegerField;
    registroflacodigo: TIntegerField;
    registroidtmotivo: TStringField;
    registrounicodigo: TIntegerField;
    registroidtvalor: TFloatField;
    registroidtdesconto: TFloatField;
    registroidttotal: TFloatField;
    Label1: TLabel;
    idtchave: TDBEdit;
    Label2: TLabel;
    idtquantidade: TDBEdit;
    Label3: TLabel;
    registroidtquantidade: TFloatField;
    toe: TUniQuery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    registrotoecodigo: TIntegerField;
    registrotoeidentificacao: TStringField;
    Label4: TLabel;
    toecodigo: TDBEdit;
    ufs: TUniQuery;
    ufsufssigla: TStringField;
    ufstedcodigo: TIntegerField;
    ufsetdcodigo: TIntegerField;
    cfgufssigla: TStringField;
    cfgetddoc1: TStringField;
    cfgcfgetdempresa: TIntegerField;
    cfgcfgobs1: TIntegerField;
    cfgcfgobs2: TIntegerField;
    cfgcfgobs3: TIntegerField;
    cfgcfgobs4: TIntegerField;
    cfgcfgnumeronfe: TIntegerField;
    cfgcfgserienfe: TStringField;
    cfgcfgnumecertif: TStringField;
    cfgcrtcodigo: TIntegerField;
    cfgcfgdtinictb: TDateField;
    cfgcfgdatapadrao: TDateField;
    procedure FormShow(Sender: TObject);
    procedure idtquantidadeExit(Sender: TObject);
    procedure toecodigoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fidt: Tfidt;

implementation

{$R *.dfm}

procedure Tfidt.FormShow(Sender: TObject);
begin
  inherited;


  label3.Caption:=vChaveMestre;
  toecodigo.Field.Text:=txtFiltro;

  ufs.Open;
  cfg.Open;


end;

procedure Tfidt.idtquantidadeExit(Sender: TObject);
var
 vl1:string;
 vl2:string;
begin
  inherited;
  ValidaSaida(sender);


   vl1:=formatfloat('#0.00000',strtofloat(label3.Caption));
  vl2:=formatfloat('#0.00000',idtquantidade.Field.AsFloat);


  if strtofloat(vl1)<strtofloat(vl2) then
  begin
    ShowMessage('Não é possível informar quantidade maior que a quantidade de origem!');
    idtquantidade.SetFocus;
  end;

  if idtquantidade.Field.AsFloat=0 then
  begin
    ShowMessage('Não é possível devolver quantidade ZERADA!');
    idtquantidade.SetFocus;
  end;

end;

procedure Tfidt.toecodigoEnter(Sender: TObject);
begin
  inherited;

  if ufsufssigla.AsString = cfgufssigla.AsString then
  begin
    txtFiltro := 'ttocodigo=3 and ttecodigo=1 and ttmcodigo=0 and toeorigem=' + QuotedStr('5');

  end
  else
  begin
    txtFiltro := 'ttocodigo=3 and ttecodigo=1 and ttmcodigo=0 and toeorigem=' + QuotedStr('6');
  end;


end;

end.
