unit ufito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,Uni,
  Dialogs, Grids, DBGrids, DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, DBAccess;

type
  Tfito = class(TForm)
    Dqpro: tunidatasource;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    Dregistro: tunidatasource;
    plunidades: TPanel;
    lista: TDBGrid;
    PlTitulo: TPanel;
    plcomplemento: TPanel;
    Panel1: TPanel;
    itoprocomple: TDBMemo;
    plquantidade: TPanel;
    Panel2: TPanel;
    itoquantidade: TDBEdit;
    Label1: TLabel;
    bmais: TButton;
    bmenos: TButton;
    pronome: TDBMemo;
    plsabores: TPanel;
    bcancela: TBitBtn;
    procedure listaDblClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bcancelaClick(Sender: TObject);
    procedure bmaisClick(Sender: TObject);
    procedure bmenosClick(Sender: TObject);
    procedure itoquantidadeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fito: Tfito;

implementation

uses ufprincirest;

{$R *.dfm}

procedure Tfito.bcancelaClick(Sender: TObject);
begin
  modalresult := mrcancel;
end;

procedure Tfito.bconfirmaClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tfito.bmaisClick(Sender: TObject);
begin
  itoquantidade.Field.AsFloat:=itoquantidade.Field.AsFloat+1;

end;

procedure Tfito.bmenosClick(Sender: TObject);
begin
  itoquantidade.Field.AsFloat:=itoquantidade.Field.AsFloat-1;

end;

procedure Tfito.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key='.' then
     key:=',';

  if Key = #13 then
  begin
    Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure Tfito.itoquantidadeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=40 then
  lista.SetFocus;
end;

procedure Tfito.listaDblClick(Sender: TObject);
begin
  self.bconfirma.Click;
end;

end.
