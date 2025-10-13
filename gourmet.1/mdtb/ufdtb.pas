unit ufdtb;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, 
System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Data.DB, MemDS, DBAccess,     
 Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  Tfdtb = class(Tfrmbase)
    registrodtbcodigo: TIntegerField;
    registrodtbtabela: TStringField;
    registrodtbdescricao: TStringField;
    Label1: TLabel;
    dtbcodigo: TDBEdit;
    Label2: TLabel;
    dtbtabela: TDBEdit;
    Label3: TLabel;
    dtbdescricao: TDBMemo;
  private
  public
    { Public declarations }
  end;

var
  fdtb: Tfdtb;

constvplidmd='03.09.80.004-01';implementation

{$R *.dfm}

end.
