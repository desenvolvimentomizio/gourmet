unit ufcfg;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit;

type
  Tfcfg = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfg: Tfcfg;

implementation

{$R *.fmx}

uses ufprinciatentable;

procedure Tfcfg.Button1Click(Sender: TObject);
begin
 close;
end;

procedure Tfcfg.Button2Click(Sender: TObject);
begin

  fprinciatentable.vpTrmCodigo:=edit1.text;
  fprinciatentable.vpIpservidor:=edit2.text;

  modalresult:=mrok;

end;

end.
