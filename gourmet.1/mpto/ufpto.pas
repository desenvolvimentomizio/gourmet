unit ufpto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uFuncoes;

type
  Tfpto = class(Tfrmbase)
    registroptochave: TIntegerField;
    registroptodata: TDateField;
    registroclbcodigo: TIntegerField;
    registroptoiniciomanha: TTimeField;
    registroptofinalmanha: TTimeField;
    registroptoiniciotarde: TTimeField;
    registroptofinaltarde: TTimeField;
    registroclbautorizaextra: TIntegerField;
    registroptomotivoextra: TStringField;
    registroptoinicioextra: TTimeField;
    registroptofinalextra: TTimeField;
    Label1: TLabel;
    ptochave: TDBEdit;
    Label2: TLabel;
    ptodata: TDBEdit;
    Label3: TLabel;
    clbcodigo: TDBEdit;
    Label4: TLabel;
    ptoiniciomanha: TDBEdit;
    Label5: TLabel;
    ptofinalmanha: TDBEdit;
    Label6: TLabel;
    ptoiniciotarde: TDBEdit;
    Label7: TLabel;
    ptofinaltarde: TDBEdit;
    Label8: TLabel;
    clbautorizaextra: TDBEdit;
    Label9: TLabel;
    ptomotivoextra: TDBEdit;
    Label10: TLabel;
    ptoinicioextra: TDBEdit;
    Label11: TLabel;
    ptofinalextra: TDBEdit;
    registroptotipositinimanha: TIntegerField;
    registroptotipositfinmanha: TIntegerField;
    registroptotipositinitarde: TIntegerField;
    registroptotipositfintarde: TIntegerField;
    ptotipositinimanha: TDBRadioGroup;
    ptotipositinitarde: TDBRadioGroup;
    ptotipositfinmanha: TDBRadioGroup;
    ptotipositfintarde: TDBRadioGroup;
    registrohrtchave: TIntegerField;
    hrt: TUniQuery;
    hrthrtchave: TIntegerField;
    hrthrtidentificacao: TStringField;
    Label12: TLabel;
    hrtchave: TDBEdit;
    registrohrtidentificacao: TStringField;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpto: Tfpto;

implementation

{$R *.dfm}

procedure Tfpto.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registroptodata.AsString := hoje(Application, ZCone);
end;

end.
