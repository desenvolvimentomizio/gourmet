unit ufadv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  ufuncoes;

type
  Tfadv = class(Tfrmbase)
    registroetdcodigo: TIntegerField;
    registroetdidentificacao: TStringField;
    registroetdapelido: TStringField;
    registroetddeletar: TIntegerField;
    registrotpecodigo: TIntegerField;
    registroetddatacad: TDateField;
    registroetddataalt: TDateField;
    registroetddoc1: TStringField;
    registroetdobs: TStringField;
    registrotsecodigo: TIntegerField;
    registrotcbcodigo: TIntegerField;
    registroetdsuframa: TStringField;
    Label1: TLabel;
    etdcodigo: TDBEdit;
    Label2: TLabel;
    etdidentificacao: TDBEdit;
    Label3: TLabel;
    etdapelido: TDBEdit;
    Label4: TLabel;
    etdobs: TDBMemo;
    edr: TUniQuery;
    ufs: TUniQuery;
    ufsufscodigo: TStringField;
    ufsufsnome: TStringField;
    ufsufssigla: TStringField;
    cdd: TUniQuery;
    cddcddcodigo: TStringField;
    cddcddnome: TStringField;
    edredrcodigo: TIntegerField;
    edretdcodigo: TIntegerField;
    edrtedcodigo: TIntegerField;
    edredrrua: TStringField;
    edredrnumero: TStringField;
    edredrcxpostal: TStringField;
    edredrcomple: TStringField;
    edredrbairro: TStringField;
    edrcddcodigo: TStringField;
    edrcddnome: TStringField;
    edrufscodigo: TStringField;
    edrufsnome: TStringField;
    edredrobs: TStringField;
    edredrinscest: TStringField;
    edredrcep: TStringField;
    edrufssigla: TStringField;
    edredrinscmun: TStringField;
    edredritem: TIntegerField;
    Label9: TLabel;
    edrrua: TDBEdit;
    Label10: TLabel;
    edrnumero: TDBEdit;
    Label5: TLabel;
    edrobs: TDBMemo;
    Label11: TLabel;
    edrcomple: TDBEdit;
    Label12: TLabel;
    edrbairro: TDBEdit;
    Label13: TLabel;
    edrcxpostal: TDBEdit;
    Label6: TLabel;
    ufscodigo: TDBEdit;
    Label7: TLabel;
    edrinscmun: TDBEdit;
    Label14: TLabel;
    cddcodigo: TDBEdit;
    Label16: TLabel;
    edrcep: TDBEdit;
    Dedr: TDataSource;
    etv: TUniQuery;
    etvetvcodigo: TIntegerField;
    etvetdcodigo: TIntegerField;
    etvtvicodigo: TIntegerField;
    DBText1: TDBText;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure edrAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cddcodigoEnter(Sender: TObject);
    procedure ufscodigoExit(Sender: TObject);
    procedure edrBeforePost(DataSet: TDataSet);
    procedure etvBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fadv: Tfadv;

implementation

{$R *.dfm}

procedure Tfadv.bconfirmaClick(Sender: TObject);
begin
 if registro.State <> dsbrowse then
 begin
    registro.Post;

    if etv.State<>dsbrowse then
      etv.Post;
    registro.Edit;
  end;



  inherited;

end;

procedure Tfadv.cddcodigoEnter(Sender: TObject);
begin
  inherited;
  Self.txtFiltro := ' ufscodigo=' + chr(39) + Self.ufscodigo.Field.AsString + chr(39);
end;

procedure Tfadv.edrAfterInsert(DataSet: TDataSet);
begin
  inherited;
  edrtedcodigo.AsInteger := 1;
  edredritem.AsInteger := 1;
end;

procedure Tfadv.edrBeforePost(DataSet: TDataSet);
begin
  inherited;
  edretdcodigo.AsInteger := registroetdcodigo.AsInteger;


end;

procedure Tfadv.etvBeforePost(DataSet: TDataSet);
begin
  inherited;
 etvetdcodigo.AsInteger := registroetdcodigo.AsInteger;
 etvtvicodigo.AsInteger :=6;
end;

procedure Tfadv.FormShow(Sender: TObject);
var
 vlSituacao:string;
begin

  inherited;
   vlSituacao:=psituacao.Caption;

  if vlSituacao = 'Incluindo' then
  begin
    edr.Append;
    etv.open;
    etv.Append;
  end
  else
  begin

    edr.Close;
    edr.FilterSQL:='etdcodigo='+etdcodigo.Field.AsString;
    edr.Open;

    edr.Edit;
    etv.Edit;
  end;

end;

procedure Tfadv.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroetddeletar.AsInteger := 0;
  registrotpecodigo.AsInteger := 9;
  registroetddatacad.AsString := hoje(application, ZCone);
  registroetddataalt.AsString := hoje(application, ZCone);
  registroetddoc1.AsInteger := 0;
  registrotsecodigo.AsInteger := 0;
  registrotcbcodigo.AsInteger := 3;
end;

procedure Tfadv.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registroetddataalt.AsString := hoje(application, ZCone);

end;

procedure Tfadv.ufscodigoExit(Sender: TObject);
begin
  inherited;
  Self.ValidaSaida(Sender);
  Self.txtFiltro := ' ufscodigo=' + chr(39) + Self.ufscodigo.Field.AsString + chr(39);

end;

end.
