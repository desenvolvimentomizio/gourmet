unit ufdep;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfdep = class(Tfrmbase)
    registrodepchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrodepidentificacao: TStringField;
    registrodepdatanascimento: TDateField;
    registrogpacodigo: TIntegerField;
    gpa: TUniQuery;
    gpagpacodigo: TIntegerField;
    gpagpaidentificacao: TStringField;
    registrogpaidentificacao: TStringField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    Label1: TLabel;
    depchave: TDBEdit;
    etdcodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    gpacodigo: TDBEdit;
    Label4: TLabel;
    depdatanascimento: TDBEdit;
    Label5: TLabel;
    depidentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdep: Tfdep;

implementation

{$R *.dfm}

end.
