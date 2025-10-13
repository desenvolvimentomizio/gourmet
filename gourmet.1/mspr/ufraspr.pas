unit ufraspr;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.ComCtrls, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, DBAccess,
  System.Actions;

type
  Tfraspr = class(Tfrabase)
    uqtabelasprcodigo: TIntegerField;
    uqtabelasprdtinicial: TDateField;
    uqtabelasprdtfinal: TDateField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    psh: tuniquery;
    pshpshchave: TIntegerField;
    pshsprcodigo: TIntegerField;
    pshhmdchave: TIntegerField;
    pshpshdata: TDateField;
    pshpshhora: TTimeField;
    pshhmdtitulo: TStringField;
    pshhmddescricao: TStringField;
    Dpsh: tunidatasource;
    DBGPsh: TDBGrid;
    GroupBox1: TGroupBox;
    hmddescricao: TDBMemo;
    ActHistorico: TAction;
    Histrico1: TMenuItem;
    GroupBox2: TGroupBox;
    hhm: tuniquery;
    hhmhhmchave: TIntegerField;
    hhmhhmdata: TDateField;
    hhmhhmhora: TTimeField;
    hhmtehidentificacao: TStringField;
    Dhhm: tunidatasource;
    hhmpshchave: TIntegerField;
    Splitter1: TSplitter;
    hhmhhmdescricao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActHistoricoExecute(Sender: TObject);
    procedure DpshDataChange(Sender: TObject; Field: TField);
  private
  public
    { Public declarations }
  end;

var
  fraspr: Tfraspr;

  // Início ID do Módulo fraspr
const
  vPlIdMd = '03.07.80.008-01';
  vPlTitMdl = 'Sprint';

  // Fim ID do Módulo fraspr

implementation

{$R *.dfm}

uses ufspr, ufhhm;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fraspr := Tfraspr.Create(AOwner);
    fraspr.Visible := False;
    fraspr.IdModulo := vPlIdMd;
    fraspr.titulo := vPlTitMdl;
    fraspr.Parent := tab;
    fraspr.VTabParent := tab;

    fraspr.Align := alclient;
    fraspr.modulo := vmodulo;
    fraspr.zcone := conexao;
    fraspr.vusrcodigo := vusuario;
    fraspr.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fraspr.edbusca.Tag := 1;
      fraspr.PlFiltros.Visible := True;
    end;

    fraspr.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    fraspr := Tfraspr.Create(AOwner);
    fraspr.defineacesso(AOwner, fraspr, conexao, vPlTitMdl);
  finally
    freeandnil(fraspr);
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraspr.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfspr, fspr, self.uqtabelasprcodigo.AsString, '');
end;

procedure Tfraspr.ActHistoricoExecute(Sender: TObject);
var
  rg: Integer;
begin
  inherited;
  rg := self.psh.RecNo;
  CriaFormulario(Tfhhm, fhhm, '', self.pshhmdchave.AsString + ',' + self.pshpshchave.AsString);
  self.psh.RecNo := rg;
end;

procedure Tfraspr.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfspr, fspr, '', '');
end;

procedure Tfraspr.DpshDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  hhm.Close;
  hhm.Params[0].AsInteger := self.pshpshchave.AsInteger;
  hhm.Open;
end;

procedure Tfraspr.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  psh.Close;
  psh.Params[0].AsInteger := self.uqtabelasprcodigo.AsInteger;
  psh.Open;
end;

end.
