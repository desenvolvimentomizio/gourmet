unit ufpmo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, System.ImageList,
  Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfpmo = class(Tfrmbase)
    registropmocodigo: TIntegerField;
    registropmoidentificacao: TStringField;
    registropmopercentualavista: TFloatField;
    registropmopercentualaprazo: TFloatField;
    registropmodatainicial: TDateField;
    registropmodatafinal: TDateField;
    Label1: TLabel;
    pmocodigo: TDBEdit;
    Label2: TLabel;
    pmoidentificacao: TDBEdit;
    Label3: TLabel;
    pmopercentualavista: TDBEdit;
    Label5: TLabel;
    pmodatainicial: TDBEdit;
    Label6: TLabel;
    pmodatafinal: TDBEdit;
    registrostgcodigo: TIntegerField;
    registrosipcodigo: TIntegerField;
    registropmoseg: TIntegerField;
    registropmoseginicio: TTimeField;
    registropmosegfinal: TTimeField;
    registropmosegvalsemtaxa: TFloatField;
    registropmoterinicio: TTimeField;
    registropmoterfinal: TTimeField;
    registropmotervalsemtaxa: TFloatField;
    registropmoqua: TIntegerField;
    registropmoquainicio: TTimeField;
    registropmoquafinal: TTimeField;
    registropmoquavalsemtaxa: TFloatField;
    registropmoqui: TIntegerField;
    registropmoquiinicio: TTimeField;
    registropmoquifinal: TTimeField;
    registropmoquivalsemtaxa: TFloatField;
    registropmosex: TIntegerField;
    registropmosexinicio: TTimeField;
    registropmosexfinal: TTimeField;
    registropmosexvalsemtaxa: TFloatField;
    registropmosab: TIntegerField;
    registropmosabinicio: TTimeField;
    registropmosabfinal: TTimeField;
    registropmosabvalsemtaxa: TFloatField;
    registropmodom: TIntegerField;
    registropmodominicio: TTimeField;
    registropmodomfinal: TTimeField;
    registropmodomvalsemtaxa: TFloatField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenpmoseg: TStringField;
    registropmoter: TIntegerField;
    registrosenpmoter: TStringField;
    registrosenpmoqua: TStringField;
    registrosenpmoqui: TStringField;
    registrosenpmosex: TStringField;
    registrosenpmosab: TStringField;
    registrosenpmodom: TStringField;
    Label4: TLabel;
    pmoseg: TDBEdit;
    pmoseginicio: TDBEdit;
    Label7: TLabel;
    pmosegfinal: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    pmosegvalsemtaxa: TDBEdit;
    Label11: TLabel;
    pmoter: TDBEdit;
    pmoterinicio: TDBEdit;
    pmoterfinal: TDBEdit;
    pmotervalsemtaxa: TDBEdit;
    Label12: TLabel;
    pmoqua: TDBEdit;
    pmoquainicio: TDBEdit;
    pmoquafinal: TDBEdit;
    pmoquavalsemtaxa: TDBEdit;
    Label13: TLabel;
    pmoqui: TDBEdit;
    pmoquiinicio: TDBEdit;
    pmoquifinal: TDBEdit;
    pmoquivalsemtaxa: TDBEdit;
    Label14: TLabel;
    pmosex: TDBEdit;
    pmosexinicio: TDBEdit;
    pmosexfinal: TDBEdit;
    pmosexvalsemtaxa: TDBEdit;
    Label15: TLabel;
    pmosab: TDBEdit;
    pmosabinicio: TDBEdit;
    pmosabfinal: TDBEdit;
    pmosabvalsemtaxa: TDBEdit;
    Label16: TLabel;
    pmodom: TDBEdit;
    pmodominicio: TDBEdit;
    pmodomfinal: TDBEdit;
    pmodomvalsemtaxa: TDBEdit;
    procedure registroBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpmo: Tfpmo;

implementation

{$R *.dfm}

procedure Tfpmo.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registropmopercentualavista.AsFloat:=registropmopercentualaprazo.AsFloat;
end;

end.
