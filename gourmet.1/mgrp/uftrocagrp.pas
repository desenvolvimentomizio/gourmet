unit uftrocagrp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess, Uni;

type
  Tftrocagrp = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    edOrigem: TEdit;
    edDestino: TEdit;
    Label3: TLabel;
    consulta: TUniQuery;
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftrocagrp: Tftrocagrp;

implementation

{$R *.dfm}

procedure Tftrocagrp.bcancelaClick(Sender: TObject);
begin
  modalresult := mrcancel;
end;

procedure Tftrocagrp.bconfirmaClick(Sender: TObject);
begin

  consulta.Close;
  consulta.SQL.Text := 'update pro set grpcodigo=' + edDestino.Text + ' where grpcodigo=' + edOrigem.Text;
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'delete from grp where grpcodigo=' + edOrigem.Text;
  consulta.ExecSQL;

  modalresult := mrOk;

end;

end.
