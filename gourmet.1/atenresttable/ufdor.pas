unit ufdor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls;

type
  Tfdor = class(TForm)
    Panel1: TPanel;
    btconfirma: TButton;
    btcancela: TButton;
    ToolBar1: TToolBar;
    Label1: TLabel;
    procedure btconfirmaClick(Sender: TObject);
    procedure btcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdor: Tfdor;

implementation

{$R *.fmx}

procedure Tfdor.btcancelaClick(Sender: TObject);
begin
   modalresult:=mrcancel;
end;

procedure Tfdor.btconfirmaClick(Sender: TObject);
begin
   modalresult:=mrok;
end;

end.
