unit uftrodpr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tftrocadpr = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    consulta: TUniQuery;
    dpr: TUniQuery;
    Ddpr: TDataSource;
    grp: TUniQuery;
    grpgrpcodigo: TIntegerField;
    grpgrpidentificacao: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Dgrp: TDataSource;
    plgrpidentificacao: TPanel;
    grpidentificacao: TDBText;
    dprdprcodigo: TIntegerField;
    dprdpridentificacao: TStringField;
    DBGriddpr: TDBGrid;
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftrocadpr: Tftrocadpr;

implementation

{$R *.dfm}

procedure Tftrocadpr.bcancelaClick(Sender: TObject);
begin
  modalresult := mrcancel;
end;

procedure Tftrocadpr.bconfirmaClick(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text := 'update pro set dprcodigo=' +dprdprcodigo.AsString + ' where grpcodigo=' +grpgrpcodigo.AsString;
  consulta.ExecSQL;

  modalresult := mrOk;

end;

end.
