unit ufadr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, UPegaBase;

type
  Tfadr = class(Tfrmbase)
    registroadrchave: TIntegerField;
    registroadrdatainicial: TDateField;
    registroadrdatafinal: TDateField;
    registroclbcodigo: TIntegerField;
    registroadrsituacao: TIntegerField;
    Label1: TLabel;
    adrchave: TDBEdit;
    Label2: TLabel;
    adrdatainicial: TDBEdit;
    Label3: TLabel;
    adrdatafinal: TDBEdit;
    rdr: TUniQuery;
    rdrrdrchave: TIntegerField;
    rdradrchave: TIntegerField;
    rdrpcgcodigo: TIntegerField;
    rdrrdrvalor: TFloatField;
    rdrcedcodigo: TIntegerField;
    rdrphgcodigo: TIntegerField;
    rdrgrecodigo: TIntegerField;
    rdrpcrcomplhist: TStringField;
    fat: TUniQuery;
    fatpcgcodigo: TIntegerField;
    fatpcrvalor: TFloatField;
    fatphgcodigo: TIntegerField;
    cmv: TUniQuery;
    cmvpcgcodigo: TIntegerField;
    cmvpcrvalor: TFloatField;
    cmvphgcodigo: TIntegerField;
    cus: TUniQuery;
    cuspcgcodigo: TIntegerField;
    cuspcrvalor: TFloatField;
    cusphgcodigo: TIntegerField;
    flh: TUniQuery;
    flhpcgcodigo: TIntegerField;
    flhpcrvalor: TFloatField;
    flhphgcodigo: TIntegerField;
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fadr: Tfadr;


  // Início ID do Módulo fadr
const
  vPlIdMd = '01.01.00.001-01';
  vPlTitMdl = 'Apuração do DRE';

  // Fim ID do Módulo fadr


implementation

{$R *.dfm}


function formulario(pCargaFrame: TCargaFrame): string;
begin
  fadr := Tfadr.Create(pCargaFrame);
  fadr.ShowModal;
  fadr.Free;
end;

exports formulario;



procedure Tfadr.bconfirmaClick(Sender: TObject);
var
  i: integer;
begin
  if registro.State <> dsBrowse then
    registro.Post;

  rdr.Close;
  rdr.ParamByName('adrchave').AsInteger := registroadrchave.AsInteger;
  rdr.Open;
  while not rdr.Eof do
  begin
    rdr.Delete;
  end;

  fat.Close;
  fat.ParamByName('datainicial').AsDate := registroadrdatainicial.AsFloat;
  fat.ParamByName('datafinal').AsDate := registroadrdatafinal.AsFloat;
  fat.Open;

  fat.First;
  while not fat.Eof do
  begin

    rdr.Append;
    rdradrchave.AsInteger := registroadrchave.AsInteger;
    rdrpcgcodigo.AsInteger := fatpcgcodigo.AsInteger;
    rdrrdrvalor.AsCurrency := fatpcrvalor.AsCurrency;
    rdrphgcodigo.AsInteger := fatphgcodigo.AsInteger;

    consulta.Close;
    consulta.SQL.Text := 'SELECT dre.grecodigo FROM pcg  INNER JOIN dre ON pcg.pcgcodigo = dre.pcgcodigo INNER JOIN gre ON dre.grecodigo = gre.grecodigo   WHERE pcg.pcgcodigo=' +
      fatpcgcodigo.AsString;
    consulta.Open;

    rdrgrecodigo.AsString := consulta.FieldByName('grecodigo').AsString;
    rdrpcrcomplhist.AsString := '';
    rdr.Post;


    fat.Next;
  end;

  cmv.Close;
  cmv.ParamByName('datainicial').AsDate := registroadrdatainicial.AsFloat;
  cmv.ParamByName('datafinal').AsDate := registroadrdatafinal.AsFloat;
  cmv.Open;

  cmv.First;
  while not cmv.Eof do
  begin

    rdr.Append;
    rdradrchave.AsInteger := registroadrchave.AsInteger;
    rdrpcgcodigo.AsInteger := cmvpcgcodigo.AsInteger;
    rdrrdrvalor.AsCurrency := cmvpcrvalor.AsCurrency;
    rdrphgcodigo.AsInteger := cmvphgcodigo.AsInteger;

    consulta.Close;
    consulta.SQL.Text := 'SELECT dre.grecodigo FROM pcg  INNER JOIN dre ON pcg.pcgcodigo = dre.pcgcodigo INNER JOIN gre ON dre.grecodigo = gre.grecodigo   WHERE pcg.pcgcodigo=' +
      cmvpcgcodigo.AsString;
    consulta.Open;

    rdrgrecodigo.AsString := consulta.FieldByName('grecodigo').AsString;
    rdrpcrcomplhist.AsString := '';
    rdr.Post;


    cmv.Next;
  end;




  cus.Close;
  cus.ParamByName('datainicial').AsDate := registroadrdatainicial.AsFloat;
  cus.ParamByName('datafinal').AsDate := registroadrdatafinal.AsFloat;
  cus.Open;


  cus.First;
  while not cus.Eof do
  begin

    rdr.Append;
    rdradrchave.AsInteger := registroadrchave.AsInteger;
    rdrpcgcodigo.AsInteger := cuspcgcodigo.AsInteger;
    rdrrdrvalor.AsCurrency := cuspcrvalor.AsCurrency;
    rdrphgcodigo.AsInteger := cusphgcodigo.AsInteger;

    consulta.Close;
    consulta.SQL.Text := 'SELECT dre.grecodigo FROM pcg  INNER JOIN dre ON pcg.pcgcodigo = dre.pcgcodigo INNER JOIN gre ON dre.grecodigo = gre.grecodigo   WHERE pcg.pcgcodigo=' +
      cuspcgcodigo.AsString;
    consulta.Open;

    rdrgrecodigo.AsString := consulta.FieldByName('grecodigo').AsString;
    rdrpcrcomplhist.AsString := '';
    rdr.Post;


    cus.Next;
  end;




  flh.Close;
  flh.ParamByName('datainicial').AsDate := registroadrdatainicial.AsFloat;
  flh.ParamByName('datafinal').AsDate := registroadrdatafinal.AsFloat;
  flh.Open;


  flh.First;
  while not flh.Eof do
  begin

    rdr.Append;
    rdradrchave.AsInteger := registroadrchave.AsInteger;
    rdrpcgcodigo.AsInteger := flhpcgcodigo.AsInteger;
    rdrrdrvalor.AsCurrency := flhpcrvalor.AsCurrency;
    rdrphgcodigo.AsInteger := flhphgcodigo.AsInteger;

    consulta.Close;
    consulta.SQL.Text := 'SELECT dre.grecodigo FROM pcg  INNER JOIN dre ON pcg.pcgcodigo = dre.pcgcodigo INNER JOIN gre ON dre.grecodigo = gre.grecodigo   WHERE pcg.pcgcodigo=' +
      flhpcgcodigo.AsString;
    consulta.Open;

    rdrgrecodigo.AsString := consulta.FieldByName('grecodigo').AsString;
    rdrpcrcomplhist.AsString := '';
    rdr.Post;


    flh.Next;
  end;


  if registro.State = dsBrowse then
    registro.Edit;

  inherited;
end;

end.
