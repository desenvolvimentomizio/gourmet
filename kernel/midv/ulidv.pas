unit ulidv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, upegabase, ufrabase, ufraidv;

type
  Tlidv = class(Tlfrmbase)
    fraidv: Tfraidv;
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpRetorno: string;

  end;

var
  lidv: Tlidv;

const
  vplidmd = '00.00.00.000-00';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
var
  vlEtdcodigo: string;
begin
  pCargaFrame.Titulo := vPlTitMdl;



  lidv := Tlidv.Create(pCargaFrame);
  try

   { lidv.fraidv.consulta.Close;
    lidv.fraidv.consulta.sql.Text := 'select etdcodigo from mes where meschave=' + pCargaFrame.Filtro;
    lidv.fraidv.consulta.Open;

    vlEtdcodigo := lidv.fraidv.consulta.FieldByName('etdcodigo').AsString;
    lidv.fraidv.vpetdcodigo:=vlEtdcodigo;

    lidv.fraidv.uqtabela.FilterSQL := 'mes.etdcodigo=' + vlEtdcodigo;}

    lidv.ShowModal;
    Result := lidv.vpRetorno;
  finally
    lidv.Free;
  end;
end;

exports formu;

procedure Tlidv.bcancelaClick(Sender: TObject);
var
  vlmdtchave: string;
begin
  vpRetorno := '';

  if lidv.fraidv.mdt.Active then
  begin
    if lidv.fraidv.mdtmdtchave.AsString <> '' then
    begin

      vlmdtchave := lidv.fraidv.mdtmdtchave.AsString;

      lidv.fraidv.consulta.Close;
      lidv.fraidv.consulta.sql.Text := 'delete from idt where mdtchave=' + vlmdtchave;
      lidv.fraidv.consulta.ExecSQL;

      lidv.fraidv.consulta.Close;
      lidv.fraidv.consulta.sql.Text := 'delete from mdt where mdtchave=' + vlmdtchave;
      lidv.fraidv.consulta.ExecSQL;

    end;
  end;

  inherited;

end;

procedure Tlidv.bconfirmaClick(Sender: TObject);
begin
  vpRetorno := lidv.fraidv.uqtabelameschave.AsString;

  inherited;

end;

end.
