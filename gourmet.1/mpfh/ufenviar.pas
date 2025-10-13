unit ufenviar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Grids, Vcl.DBGrids;

type
  Tfenviar = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    flh: TUniQuery;
    Dflh: TDataSource;
    flhflhchave: TIntegerField;
    flhflhidentificacao: TStringField;
    Label1: TLabel;
    DBGridFlh: TDBGrid;
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpFlhChaveDestino:string;


  end;

var
  fenviar: Tfenviar;

implementation

{$R *.dfm}

procedure Tfenviar.bcancelaClick(Sender: TObject);
begin
vpFlhChaveDestino:='0';
modalresult:=mrcancel;
end;

procedure Tfenviar.bconfirmaClick(Sender: TObject);
begin
vpFlhChaveDestino:=flhflhchave.AsString;
modalresult:=mrok;
end;

end.
