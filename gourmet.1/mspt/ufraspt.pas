unit ufraspt;

interface

uses
  Winapi.Windows, Winapi.Messages, uni, Vcl.ComCtrls, amSplitter, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, DBAccess,
  System.Actions;

type
  Tfraspt = class(Tfrabase)
    uqtabelasptcodigo: TIntegerField;
    uqtabelasptdtinicial: TDateField;
    uqtabelasptdtfinal: TDateField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    GroupBox1: TGroupBox;
    hmddescricao: TDBMemo;
    DBGPsh: TDBGrid;
    tsh: tuniquery;
    tshtshchave: TIntegerField;
    tshsptcodigo: TIntegerField;
    tshhmdchave: TIntegerField;
    tshtshdata: TDateField;
    tshtshhora: TTimeField;
    tshhmdtitulo: TStringField;
    tshhmddescricao: TStringField;
    Dtsh: tunidatasource;
    ActHistorico: TAction;
    Histrico1: TMenuItem;
    hhm: tuniquery;
    hhmhhmchave: TIntegerField;
    hhmhhmdata: TDateField;
    hhmhhmhora: TTimeField;
    hhmtehidentificacao: TStringField;
    Dhhm: tunidatasource;
    GroupBox2: TGroupBox;
    DBGHistorico: TDBGrid;
    hhmtshchave: TIntegerField;
    Splitter1: TSplitter;
    hhmhhmdescricao: TStringField;
    VoltarparaExecuo1: TMenuItem;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActHistoricoExecute(Sender: TObject);
    procedure DtshDataChange(Sender: TObject; Field: TField);
  private
  public
    { Public declarations }
  end;

var
  fraspt: Tfraspt;

  // Início ID do Módulo fraspt
const
  vPlIdMd = '03.07.80.009-01';
  vPlTitMdl = 'Sprint para Teste';

  // Fim ID do Módulo fraspt

implementation

{$R *.dfm}

uses ufspt, ufhht;

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    fraspt := Tfraspt.Create(AOwner);
    fraspt.Visible := False;
    fraspt.IdModulo := vPlIdMd;
    fraspt.titulo := vPlTitMdl;
    fraspt.Parent := tab;
    fraspt.VTabParent := tab;

    fraspt.Align := alclient;
    fraspt.modulo := vmodulo;
    fraspt.zcone := conexao;
    fraspt.vusrcodigo := vusuario;
    fraspt.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      fraspt.edbusca.Tag := 1;
      fraspt.PlFiltros.Visible := True;
    end;

    fraspt.carregar;

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    fraspt := Tfraspt.Create(AOwner);
    fraspt.defineacesso(AOwner, fraspt, conexao, vPlTitMdl);
  finally
    freeandnil(fraspt);
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraspt.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfspt, fspt, self.uqtabelasptcodigo.AsString, self.vChaveMestre);
end;

procedure Tfraspt.ActHistoricoExecute(Sender: TObject);
var
  rg: Integer;
begin
  inherited;
  self.tsh.RecNo := rg;
  CriaFormulario(Tfhht, fhht, '', self.tshhmdchave.AsString + ',' + self.tshtshchave.AsString);
  self.ActAtualizar.Execute;
  rg := self.tsh.RecNo;

  if tsh.RecordCount = 0 then
  begin

    consulta.Close;
    consulta.SQL.Text := 'delete from spt where sptcodigo=' + self.uqtabelasptcodigo.AsString;
    consulta.ExecSQL;

  end;
end;

procedure Tfraspt.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfspt, fspt, '', self.vChaveMestre);
end;

procedure Tfraspt.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  tsh.Close;
  tsh.Params[0].AsInteger := self.uqtabelasptcodigo.AsInteger;
  tsh.Open;
end;

procedure Tfraspt.DtshDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  hhm.Close;
  hhm.Params[0].AsInteger := self.tshtshchave.AsInteger;
  hhm.Open;

end;

end.
