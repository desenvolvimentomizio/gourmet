unit ufvtc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, System.ImageList, Vcl.ImgList, PngImageList, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  Tfvtc = class(Tfrmbase)
    registrovtcchave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrotpvcodigo: TIntegerField;
    registrovtcinicio: TDateField;
    registrovtcfinal: TDateField;
    Label1: TLabel;
    vtcchave: TDBEdit;
    Label2: TLabel;
    clbcodigo: TDBEdit;
    Label3: TLabel;
    tpvcodigo: TDBEdit;
    Label4: TLabel;
    vtcinicio: TDBEdit;
    Label5: TLabel;
    vtcfinal: TDBEdit;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    registroclbidentificacao: TStringField;
    tpv: TUniQuery;
    tpvtpvcodigo: TIntegerField;
    tpvtpvidentificacao: TStringField;
    registrotpvidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fvtc: Tfvtc;

implementation

{$R *.dfm}

end.
