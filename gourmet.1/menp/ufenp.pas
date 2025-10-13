unit ufenp;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.ImageList, ufuncoes;

type
  Tfenp = class(Tfrmbase)
    are: tuniquery;
    rue: tuniquery;
    pde: tuniquery;
    ane: tuniquery;
    registroenpcodigo: TIntegerField;
    registroarecodigo: TIntegerField;
    registroruecodigo: TIntegerField;
    registropdecodigo: TIntegerField;
    registroanecodigo: TIntegerField;
    arearecodigo: TIntegerField;
    areareidentificacao: TStringField;
    rueruecodigo: TIntegerField;
    ruerueidentificacao: TStringField;
    pdepdecodigo: TIntegerField;
    pdepdeidentificacao: TStringField;
    aneanecodigo: TIntegerField;
    aneaneidentificacao: TStringField;
    registroareidentificacao: TStringField;
    registrorueidentificacao: TStringField;
    registropdeidentificacao: TStringField;
    registroaneidentificacao: TStringField;
    Label1: TLabel;
    enpcodigo: TDBEdit;
    Label2: TLabel;
    arecodigo: TDBEdit;
    Label3: TLabel;
    ruecodigo: TDBEdit;
    Label4: TLabel;
    pdecodigo: TDBEdit;
    Label5: TLabel;
    anecodigo: TDBEdit;
    PnlEndereco: TPanel;
    ConsultaEnp: tuniquery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgmenpnivel1: TStringField;
    cfgcfgmenpnivel2: TStringField;
    cfgcfgmenpnivel3: TStringField;
    cfgcfgmenpnivel4: TStringField;
    cfgcfgmenpnivel5: TStringField;
    registroflacodigo: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure arecodigoExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    procedure AtualizaEndereco;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fenp: Tfenp;

  // Início ID do Módulo fraenp
const
  vPlIdMd = '01.01.05.018-02';

  // Fim ID do Módulo fraenp

implementation

{$R *.dfm}

procedure Tfenp.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  cfg.Params[0].AsInteger := acesso.Filial;
  cfg.Open;

  if cfgcfgmenpnivel1.asstring <> '' then
    Label2.Caption := UpperNome(cfgcfgmenpnivel1.asstring);

  if cfgcfgmenpnivel2.asstring <> '' then
    Label3.Caption := UpperNome(cfgcfgmenpnivel2.asstring);

  if cfgcfgmenpnivel3.asstring <> '' then
    Label4.Caption := UpperNome(cfgcfgmenpnivel3.asstring);

  if cfgcfgmenpnivel4.asstring <> '' then
    Label5.Caption := UpperNome(cfgcfgmenpnivel4.asstring);

  inherited;
  AtualizaEndereco;
end;

procedure Tfenp.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registroflacodigo.AsInteger:=acesso.Filial;
end;

procedure Tfenp.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registroflacodigo.asinteger:=acesso.Filial;
end;

procedure Tfenp.arecodigoExit(Sender: TObject);
begin
  AtualizaEndereco;
  ValidaSaida(Sender);
end;

procedure Tfenp.AtualizaEndereco;
var
  vEndereco: String;
begin
  vEndereco := registroareidentificacao.asstring;
  vEndereco := vEndereco + '.' + registrorueidentificacao.asstring;
  vEndereco := vEndereco + '.' + registropdeidentificacao.asstring;
  vEndereco := vEndereco + '.' + registroaneidentificacao.asstring;

  PnlEndereco.Caption := 'Endereço: ' + vEndereco;
  PnlEndereco.Repaint;
end;

procedure Tfenp.bconfirmaClick(Sender: TObject);
begin
  consulta.SQL.Text := 'SELECT enp.enpcodigo FROM enp ';
  consulta.SQL.Add('WHERE enp.arecodigo = ' + registroarecodigo.asstring + ' ');
  consulta.SQL.Add('AND enp.ruecodigo = ' + registroruecodigo.asstring + ' ');
  consulta.SQL.Add('AND enp.pdecodigo = ' + registropdecodigo.asstring + ' ');
  consulta.SQL.Add('AND enp.anecodigo = ' + registroanecodigo.asstring + ' ');

  if Self.Situacao = 'Alterando' then
    consulta.SQL.Add('AND enp.enpcodigo <> ' + registroenpcodigo.asstring);

  consulta.Open;

  if consulta.IsEmpty then
    inherited
  else
    Application.MessageBox(PChar('Este endereço já está cadastrado!!' + #13 + #13 + 'Código: ' + consulta.FieldByName('enpcodigo').asstring), 'Duplicidade de endereço',
      MB_ICONWARNING + MB_OK);
end;

end.
