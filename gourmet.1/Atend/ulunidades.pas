unit ulunidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tlunidades = class(TForm)
    Dqpro: TDataSource;
    lista: TDBGrid;
    PlTitulo: TPanel;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    procedure listaDblClick(Sender: TObject);
    procedure listaKeyPress(Sender: TObject; var Key: Char);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lunidades: Tlunidades;

implementation



{$R *.dfm}

procedure Tlunidades.bconfirmaClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tlunidades.listaDblClick(Sender: TObject);
begin
  self.bconfirma.Click;
end;

procedure Tlunidades.listaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    self.bconfirma.Click;
  end;
end;

end.
