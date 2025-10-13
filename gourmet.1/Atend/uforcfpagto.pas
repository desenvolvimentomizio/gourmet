unit uforcfpagto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.DBCtrls;

type
  Tforcfpagto = class(TForm)
    Label1: TLabel;
    orcdescrpagto: TDBMemo;
    Dregistro: TDataSource;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    bfechar: TBitBtn;
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  forcfpagto: Tforcfpagto;

implementation

{$R *.dfm}


procedure Tforcfpagto.bcancelaClick(Sender: TObject);
begin
  if Dregistro.DataSet.State <> dsbrowse then
    begin
      Dregistro.DataSet.cancel;
    end;
    modalresult:=mrcancel;
end;

procedure Tforcfpagto.bconfirmaClick(Sender: TObject);
begin
  if Dregistro.DataSet.State <> dsbrowse then
    begin
      Dregistro.DataSet.post;
    end;
    modalresult:=mrok;
end;

end.
