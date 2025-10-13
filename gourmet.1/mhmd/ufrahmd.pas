unit ufrahmd;

interface

uses
  Winapi.Windows, Winapi.Messages, uni, Vcl.ComCtrls, amSplitter, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, ufuncoes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, MemDS, VirtualTable, Data.DB,
  Vcl.Menus,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Imaging.pngimage, DBAccess,
  System.Actions;

type
  Tfrahmd = class(Tfrabase)
    uqtabelahmdchave: TIntegerField;
    uqtabelahmdtitulo: TStringField;
    uqtabelahmddescricao: TStringField;
    uqtabelamdpcodigo: TIntegerField;
    uqtabelatehcodigo: TIntegerField;
    uqtabelahmdhoras: TIntegerField;
    uqtabelapegoschave: TStringField;
    uqtabelatehidentificacao: TStringField;
    uqtabelamdpidentificacao: TStringField;
    hmddescricao: TDBMemo;
    uqtabelahmddata: TDateField;
    uqtabelahmdhora: TTimeField;
    tsh: tuniquery;
    psh: tuniquery;
    ActHistorico: TAction;
    GroupBox1: TGroupBox;
    DBGHistorico: TDBGrid;
    Dhhm: tunidatasource;
    hhm: tuniquery;
    hhmhhmchave: TIntegerField;
    hhmhhmdata: TDateField;
    hhmhhmhora: TTimeField;
    hhmtehidentificacao: TStringField;
    hhmpshchave: TIntegerField;
    hhmhhmdescricao: TStringField;
    Histrico1: TMenuItem;
    hhmclbidentificacao: TStringField;
    uqtabelahmdprioridade: TIntegerField;
    uqtabelaprjidentificacao: TStringField;
    uqtabelaprjcodigo: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActHistoricoExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActSairExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frahmd: Tfrahmd;

  // Início ID do Módulo framdp
const
  vPlIdMd = '03.07.80.005-01';
  vPlTitMdl = 'Histórias dos Módulos';

  // Fim ID do Módulo framdp

implementation

{$R *.dfm}

uses ufhmd, ufhht;

type
  TFriendly = class(TCustomDBGrid);

function formuFrame(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string; tab: TTabSheet; vTrmCodigo: String): string;
var
  vch: string;
begin
  try
    frahmd := Tfrahmd.Create(AOwner);
    frahmd.Visible := False;
    frahmd.IdModulo := vPlIdMd;
    frahmd.titulo := vPlTitMdl;
    frahmd.Parent := tab;
    frahmd.VTabParent := tab;

    frahmd.Align := alclient;
    frahmd.modulo := vmodulo;
    frahmd.zcone := conexao;
    frahmd.vusrcodigo := vusuario;
    frahmd.vbTrmCodigo := vTrmCodigo;

    if vtipolista = 1 then
    begin
      frahmd.edbusca.Tag := 1;
      frahmd.PlFiltros.Visible := True;
    end;

    frahmd.carregar;
    frahmd.CarregarColunas(frahmd.DBGHistorico);

  finally
  end;
end;

procedure defineacesso(AOwner: TComponent; conexao: tuniconnection; vmodu: string);
begin
  try
    frahmd := Tfrahmd.Create(AOwner);
    frahmd.defineacesso(AOwner, frahmd, conexao, vPlTitMdl);
  finally
    freeandnil(frahmd);
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrahmd.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfhmd, fhmd, self.uqtabelahmdchave.AsString, '');
end;

procedure Tfrahmd.ActHistoricoExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfhht, fhht, '', self.uqtabelahmdchave.AsString);
  self.ActAtualizar.Execute;
end;

procedure Tfrahmd.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfhmd, fhmd, '', '');
end;

procedure Tfrahmd.ActSairExecute(Sender: TObject);
begin
  frahmd.SalvarColunas(frahmd.DBGHistorico);
  inherited;
end;

procedure Tfrahmd.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin
  { inherited; }

  fixRect := Rect;

  If Odd(DSTabela.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  With (Sender As TDBGrid).Canvas Do
  Begin
    case self.uqtabelatehcodigo.AsInteger of
      1:
        Font.Color := clRed;
      2, 6, 7:
        Font.Color := clMaroon;
      3:
        Font.Color := clNavy;
      4:
        Font.Color := clGreen;
    end;

    If gdSelected In State Then
    begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(fixRect);
      Font.Color := clWhite;
    end;

    with TFriendly(DBGLista) do
      if TDataLink(DataLink).ActiveRecord = Row - 1 then
        with Canvas do
        begin
          Brush.Color := PEG_COR_SELCGRID; // $004080FF;$004080FF;
          DefaultDrawColumnCell(fixRect, DataCol, Column, State);
        end;
  End;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

procedure Tfrahmd.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  hhm.Close;
  hhm.Params[0].AsInteger := self.uqtabelahmdchave.AsInteger;
  hhm.Open;
end;

end.
