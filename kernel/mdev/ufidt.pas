unit ufidt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfidt = class(Tfrmbase)
    registroidtchave: TIntegerField;
    registromdtchave: TIntegerField;
    registroitmchave: TIntegerField;
    registromeschave: TIntegerField;
    registroflacodigo: TIntegerField;
    registroidtquantidade: TIntegerField;
    registroidtmotivo: TStringField;
    registrounicodigo: TIntegerField;
    registroidtvalor: TFloatField;
    registroidtdesconto: TFloatField;
    registroidttotal: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fidt: Tfidt;

implementation

{$R *.dfm}

end.
