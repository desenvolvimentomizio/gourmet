unit uflic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, ufuncoes,
  Vcl.DBGrids, Vcl.Mask;

type
  Tflic = class(Tfrmbase)
    mdp: TUniQuery;
    mdpmdpcodigo: TIntegerField;
    mdpmdpidentificacao: TStringField;
    btm: TUniQuery;
    btmbtmcodigo: TIntegerField;
    btmbtmidentificacao: TStringField;
    Dmdp: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    lic: TUniQuery;
    Dlic: TDataSource;
    Panel3: TPanel;
    liclicchave: TIntegerField;
    licbtmcodigo: TIntegerField;
    licbtmidentificacao: TStringField;
    Dbtm: TDataSource;
    DBGridMdp: TDBGrid;
    DBGridBtm: TDBGrid;
    DBGridLic: TDBGrid;
    SBIncluirTodos: TSpeedButton;
    SBIncluirUm: TSpeedButton;
    SBExcluirUn: TSpeedButton;
    SBExcluirTodos: TSpeedButton;
    licreg: TUniQuery;
    licreglicchave: TIntegerField;
    licregetdcodigo: TIntegerField;
    licregmdpcodigo: TIntegerField;
    licreggrmcodigo: TIntegerField;
    licregbtmcodigo: TIntegerField;
    licreglicdatainicial: TDateField;
    licreglicdatafinal: TDateField;
    licreglicusuarios: TIntegerField;
    btmgrmcodigo: TIntegerField;
    registrolicchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrolicusuarios: TIntegerField;
    Label1: TLabel;
    licchave: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    Label3: TLabel;
    licusuarios: TDBEdit;
    licbtmimagem: TBlobField;
    btmbtmimagem: TBlobField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
    procedure DmdpDataChange(Sender: TObject; Field: TField);
    procedure bconfirmaClick(Sender: TObject);
    procedure SBExcluirUnClick(Sender: TObject);
    procedure SBExcluirTodosClick(Sender: TObject);
    procedure SBIncluirUmClick(Sender: TObject);
    procedure SBIncluirTodosClick(Sender: TObject);
  private
    procedure AtualizaListas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  flic: Tflic;

implementation

{$R *.dfm}

procedure Tflic.bconfirmaClick(Sender: TObject);
begin

  registro.Cancel;
  { inherited; }
  close;

end;

procedure Tflic.DmdpDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  // AtualizaListas;
  btm.close;
  btm.ParamByName('mdpcodigo').AsInteger := mdpmdpcodigo.AsInteger;
  btm.ParamByName('etdcodigo').AsString := registroetdcodigo.AsString;
  btm.Open;

  lic.close;
  lic.ParamByName('mdpcodigo').AsInteger := mdpmdpcodigo.AsInteger;
  lic.ParamByName('etdcodigo').AsString := registroetdcodigo.AsString;
  lic.Open;

end;

procedure Tflic.FormShow(Sender: TObject);
begin

   mdp.Open;
  inherited;

  if psituacao.Caption = 'Alterando' then
  begin
    btm.close;
    btm.ParamByName('mdpcodigo').AsInteger := mdpmdpcodigo.AsInteger;
    btm.ParamByName('etdcodigo').AsString := registroetdcodigo.AsString;
    btm.Open;

    lic.close;
    lic.ParamByName('mdpcodigo').AsInteger := mdpmdpcodigo.AsInteger;
    lic.ParamByName('etdcodigo').AsString := registroetdcodigo.AsString;
    lic.Open;
  end;




end;

procedure Tflic.SBExcluirTodosClick(Sender: TObject);
begin
  inherited;

  lic.First;
  while not lic.Eof do
  begin
    consulta.close;
    consulta.SQL.Text := 'delete from lic where licchave=' + liclicchave.AsString;
    consulta.ExecSQL;

    lic.Next;
  end;
  AtualizaListas;
end;

procedure Tflic.SBExcluirUnClick(Sender: TObject);
begin
  inherited;
  consulta.close;
  consulta.SQL.Text := 'delete from lic where licchave=' + liclicchave.AsString;
  consulta.ExecSQL;

  AtualizaListas;

end;

procedure Tflic.SBIncluirTodosClick(Sender: TObject);
begin
  inherited;

  btm.First;
  while not btm.Eof do
  begin
    licreg.Open;
    licreg.Append;
    licregetdcodigo.AsString := registroetdcodigo.AsString;
    licregmdpcodigo.AsInteger := mdpmdpcodigo.AsInteger;
    licreggrmcodigo.AsInteger := btmgrmcodigo.AsInteger;
    licregbtmcodigo.AsInteger := btmbtmcodigo.AsInteger;
    licreglicdatainicial.AsString := hoje(application, zcone);
    licreglicusuarios.AsInteger := licreglicusuarios.AsInteger;
    licreg.post;
    btm.Next;
  end;

  AtualizaListas;
end;

procedure Tflic.SBIncluirUmClick(Sender: TObject);
begin
  inherited;

  licreg.Open;
  licreg.Append;
  licregetdcodigo.AsString := registroetdcodigo.AsString;
  licregmdpcodigo.AsInteger := mdpmdpcodigo.AsInteger;
  licreggrmcodigo.AsInteger := btmgrmcodigo.AsInteger;
  licregbtmcodigo.AsInteger := btmbtmcodigo.AsInteger;
  licreglicdatainicial.AsString := hoje(application, zcone);
  licreglicusuarios.AsInteger := licreglicusuarios.AsInteger;
  licreg.post;
  AtualizaListas;

end;

procedure Tflic.AtualizaListas;
begin
  btm.close;
  btm.ParamByName('mdpcodigo').AsInteger := mdpmdpcodigo.AsInteger;
  btm.ParamByName('etdcodigo').AsString := registroetdcodigo.AsString;
  btm.Open;

  lic.close;
  lic.ParamByName('mdpcodigo').AsInteger := mdpmdpcodigo.AsInteger;
  lic.ParamByName('etdcodigo').AsString := registroetdcodigo.AsString;
  lic.Open;
end;

end.
