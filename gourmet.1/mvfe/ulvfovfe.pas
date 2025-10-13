unit ulvfovfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufravfovfe,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Uni;

type
  Tlvfovfe = class(Tlfrmbase)
    fravfovfe: Tfravfovfe;
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lvfovfe: Tlvfovfe;

implementation

{$R *.dfm}

function BuscaAtendimento(AOwner: TComponent; conexao: TUniConnection; vUsuario: String; vClbCodigo, vVfeCodigo: Integer; vVfeData: TDate): String;
var
  lfram: Tfravfovfe;
begin
  lvfovfe := Tlvfovfe.Create(AOwner);
  try
    lfram := lvfovfe.fravfovfe as Tfravfovfe;
    lfram.IdModulo := vPlIdMd;
    lfram.titulo := vPlTitMdl;

    lfram.zcone := conexao;
    lfram.Acesso.Usuario := StrToInt(vUsuario);

    lfram.ClbCodigo := vClbCodigo;
    lfram.VfeCodigo := vVfeCodigo;
    lfram.VfeData := vVfeData;

    lfram.edbusca.Tag := 1;

    lfram.carregar;

    lvfovfe.ShowModal;
  finally
    FreeAndNil(lvfovfe);
  end;
end;
exports BuscaAtendimento;

procedure Tlvfovfe.bcancelaClick(Sender: TObject);
begin
  if fravfovfe.zcone.TransactionCount > 0 then
    fravfovfe.zcone.Rollback;

  inherited;
end;

procedure Tlvfovfe.bconfirmaClick(Sender: TObject);
begin
  if fravfovfe.zcone.TransactionCount > 0 then
    try
      fravfovfe.zcone.Commit;
    except
      fravfovfe.zcone.Rollback;
      Exit;
    end;

  inherited;
end;

end.
