unit ufppe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, ACBrBase, ACBrBAL, Vcl.DBCtrls,
  ACBrDevice,uPegaBase,ACBrDeviceSerial;

type
  Tfppe = class(Tfrmbase)
    ACBrBAL: TACBrBAL;
    registroitochave: TIntegerField;
    registroitoquantidade: TFloatField;
    Label1: TLabel;
    plPeso: TPanel;
    toquantidade: TDBText;
    trm: TUniQuery;
    TmBalanca: TTimer;
    trmtrmcodigo: TIntegerField;
    trmtrmidentificacao: TStringField;
    trmtrmbalamodelo: TStringField;
    trmtrmbalaporta: TStringField;
    trmtrmbalabaud: TStringField;
    trmtrmbalahandshake: TStringField;
    trmtrmbalaparity: TStringField;
    trmtrmbalastop: TStringField;
    trmtrmbaladata: TStringField;
    LbPeso: TLabel;
    btPesar: TButton;
    procedure TmBalancaTimer(Sender: TObject);
    procedure ACBrBALLePeso(Peso: Double; Resposta: AnsiString);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fppe: Tfppe;

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fppe := Tfppe.Create(pCargaFrame);
  fppe.ShowModal;
  fppe.Free;
end;

exports formulario;



procedure Tfppe.ACBrBALLePeso(Peso: Double; Resposta: AnsiString);
var
  vRetorno: Integer;
begin
  try
    TmBalanca.Enabled := False;
    LbPeso.Caption := '';
    LbPeso.Font.Color := clWhite;
    if Peso > 0 then
    begin
      LbPeso.Caption := 'Produto pesado com sucesso !';
      registroitoquantidade.AsFloat := Peso;
      ACBrBAL.MonitorarBalanca := False;
      bconfirma.Enabled;
      bconfirma.SetFocus;

    end
    else
    begin
      vRetorno := Trunc(ACBrBAL.UltimoPesoLido);
      LbPeso.Font.Color := clYellow;
      case vRetorno of
        0:
          begin
            LbPeso.Font.Color := clWhite;
            LbPeso.Caption := 'Coloque o produto sobre a Balança!';
            TmBalanca.Enabled := True;
          end;
        -1:
          LbPeso.Caption := 'Peso Instavel ! ' + sLineBreak + 'Efetuando nova leitura, Aguarde ... ';
        -2:
          LbPeso.Caption := 'Peso Negativo !';
        -10:
          LbPeso.Caption := 'Sobrepeso !';
      end;
      sleep(300);
      TmBalanca.Enabled := True;
    end;
  except
    TmBalanca.Enabled := True;
    LbPeso.Font.Color := clYellow;
    LbPeso.Caption := 'Falha de comunicação com a balança !';
  end;

end;

procedure Tfppe.FormShow(Sender: TObject);
begin
  trm.Close;
  trm.ParamByName('trmcodigo').AsInteger := acesso.Terminal;
  trm.Open;
  inherited;

  TmBalanca.Enabled:=true;

end;

procedure Tfppe.TmBalancaTimer(Sender: TObject);
begin
  inherited;
  // se houver conecção aberta, Fecha a conecção
  if ACBrBAL.Ativo then
    ACBrBAL.Desativar;

  // configura porta de comunicação

  ACBrBAL.Modelo := TACBrBALModelo(2); // balToledo
  ACBrBAL.Device.HandShake := TACBrHandShake(0); // nenhum
  ACBrBAL.Device.Parity := TACBrSerialParity(0); // none
  ACBrBAL.Device.Stop := TACBrSerialStop(0); // s1
  ACBrBAL.Device.Data := trmtrmbaladata.AsInteger;
  ACBrBAL.Device.Baud := trmtrmbalabaud.AsInteger;
  ACBrBAL.Device.Porta := trmtrmbalaporta.asstring;

  // Conecta com a balança
  ACBrBAL.Ativar;

  if ACBrBAL.Ativo then
  begin
    bconfirma.Enabled := True;
    ACBrBAL.LePeso(2000);

  end;
end;



end.
