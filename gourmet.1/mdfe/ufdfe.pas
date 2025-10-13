unit ufdfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls  ;

type
  Tfdfe = class(Tfrmbase)
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    registrodfechave: TIntegerField;
    registroflacodigo: TIntegerField;
    registrodfechaveacesso: TStringField;
    registrodfemodelo: TIntegerField;
    registrodfeserie: TIntegerField;
    registrodfenumero: TIntegerField;
    registrodfedoc1: TStringField;
    registrodfeinscest: TStringField;
    registrodfeidentificacao: TStringField;
    registrodfeemissao: TDateTimeField;
    registrodfevalor: TFloatField;
    registrodfemanifdatahoraevento: TDateTimeField;
    registrodfemanifprotocolo: TStringField;
    registrodfemanifcestat: TIntegerField;
    registrodfemanifestado: TIntegerField;
    dfechaveacesso: TDBEdit;
    dfeidentificacao: TDBEdit;
    dfedoc1: TDBEdit;
    dfeemissao: TDBEdit;
    Label3: TLabel;
    dfevalor: TDBEdit;
    cfgcfgultimonsu: TIntegerField;
    cfgcfgviasnfe: TIntegerField;
    cfgcfgnumeronfe: TIntegerField;
    cfgcfgserienfe: TStringField;
    cfgcfgnumeronfce: TIntegerField;
    cfgcfgserienfce: TStringField;
    cfgcfgobs1: TIntegerField;
    cfgcfgobs2: TIntegerField;
    cfgcfgobs3: TIntegerField;
    cfgcfgobs4: TIntegerField;
    cfgcfgdescrinfe: TIntegerField;
    cfgcfgmodonfe: TIntegerField;
    cfgcfgservarqnfes: TStringField;
    cfgcfgnumecertifa1: TStringField;
    cfgcfgsenhacertificado: TStringField;
    cfgcfgsenhacertificadoa1: TStringField;
    cfgcfgmodoautenticacao: TIntegerField;
    cfgcfgdatahoraultimadfe: TDateTimeField;
    cfgcfgusanfc: TIntegerField;
    cfgetdapelido: TStringField;
    cfgetdidentificacao: TStringField;
    cfgetddoc1: TStringField;
    cfgufssigla: TStringField;
    cfgufscodigo: TStringField;
    rgpTipoManifestacao: TRadioGroup;
    registrodfeoperacao: TIntegerField;
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdfe: Tfdfe;

implementation

{$R *.dfm}

procedure Tfdfe.bconfirmaClick(Sender: TObject);
begin

  if rgpTipoManifestacao.ItemIndex = 0 then
    registrodfeoperacao.AsInteger := 0
  else if rgpTipoManifestacao.ItemIndex = 1 then
    registrodfeoperacao.AsInteger := 2
  else if rgpTipoManifestacao.ItemIndex = 2 then
    registrodfeoperacao.AsInteger := 3;

  inherited;

end;

end.
