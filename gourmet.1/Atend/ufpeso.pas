unit ufpeso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, ACBrBase, ACBrBAL,
  Vcl.ExtCtrls, Data.DB, ACBrDevice, Vcl.Imaging.pngimage,
  ACBrDeviceSerial;

type
  Tfpeso = class(TForm)
    plRodaPe: TPanel;
    Panel9: TPanel;
    BtnConfirmar: TButton;
    Button2: TButton;
    Button1: TButton;
    TmBalanca: TTimer;
    ACBrBAL: TACBrBAL;
    PnSabores: TPanel;
    Label5: TLabel;
    Label2: TLabel;
    LbPeso: TLabel;
    itovalor: TDBEdit;
    itoquantidade: TDBEdit;
    Dito: TDataSource;
    Dlito: TDataSource;
    Dtrm: TDataSource;
    IImagem: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure itoquantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure itoquantidadeExit(Sender: TObject);
    procedure itoquantidadeEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ACBrBALLePeso(Peso: Double; Resposta: AnsiString);
    procedure TmBalancaTimer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button2Click(Sender: TObject);
  private
    procedure ParametrizarBalanca;
    procedure PreparaInclusao;
    procedure ConfirmarItemPesado;
    procedure ConfirmaItem;
    { Private declarations }
  public
    { Public declarations }
    vpConfirma: Boolean;
    VpQuantidade: Double;
  end;

var
  fpeso: Tfpeso;

implementation

{$R *.dfm}

procedure Tfpeso.ConfirmaItem;
begin
  if (Length(itoquantidade.Field.AsString) > 0) and (StrToFloat(itoquantidade.Field.AsString) = 0) then
    Exit;

  if Dito.State in [DsInsert, DsEdit] then
  begin
    if itoquantidade.Field.AsFloat < 0.002 then
    begin
      ShowMessage('Atenção, quantidade informada é invalida, verifique !');
      itoquantidade.SelectAll;
      itoquantidade.SetFocus;
      Exit;
    end;

  end;
  PreparaInclusao;
  vpConfirma := True;
  modalresult:=mrok;
end;

procedure Tfpeso.ConfirmarItemPesado;

begin

  if Dito.State in [DsInsert, DsEdit] then
  begin
    if itoquantidade.Field.AsFloat < 0.002 then
    begin
      ShowMessage('Atenção, quantidade informada é invalida, verifique !');
      Exit;
    end;
  end;
  PreparaInclusao;
  vpConfirma := True;
  modalresult:=mrok;

end;

procedure Tfpeso.ACBrBALLePeso(Peso: Double; Resposta: AnsiString);
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
      itoquantidade.Field.AsFloat := Peso;
      VpQuantidade := Peso;
      ACBrBAL.MonitorarBalanca := False;
      ConfirmarItemPesado;
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
    VpQuantidade := 0;
    TmBalanca.Enabled := True;
    LbPeso.Font.Color := clYellow;
    LbPeso.Caption := 'Falha de comunicação com a balança !';
  end;

end;

procedure Tfpeso.Button1Click(Sender: TObject);
begin
  ACBrBAL.LePeso;
end;

procedure Tfpeso.Button2Click(Sender: TObject);
begin
  modalresult:=mrcancel;
end;

procedure Tfpeso.itoquantidadeEnter(Sender: TObject);
begin
  itoquantidade.Color := $0080FFFF;
end;

procedure Tfpeso.itoquantidadeExit(Sender: TObject);
begin
  itoquantidade.Color := clWhite;

  if Length(itoquantidade.Text) = 0 then
    itoquantidade.Field.AsInteger := 1;
end;

procedure Tfpeso.itoquantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = ',') then
    if AnsiPos(',', (Sender as TDBEdit).Text) > 0 then
      Key := #0;

  if Key in [',', '.'] then
    Key := ',';

  if Key = #13 then
  begin
    if Length(itoquantidade.Text) > 0 then
    begin
      itoquantidade.Field.AsFloat := StrToFloat(itoquantidade.Field.AsString);
      ConfirmaItem;
    end;
  end;

  if not(Key in ['0' .. '9', ',', '.', Chr(8)]) then
    Key := #0
end;

procedure Tfpeso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TmBalanca.Enabled := False;
end;

procedure Tfpeso.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ACBrBAL.Ativo then
    ACBrBAL.Desativar;

end;

procedure Tfpeso.FormShow(Sender: TObject);
begin

  vpConfirma := False;

  itoquantidade.Field.AsFloat := 0;
  ParametrizarBalanca;

  itoquantidade.SelectAll;
  itoquantidade.SetFocus;

end;

procedure Tfpeso.ParametrizarBalanca;
begin
  if ACBrBAL.Ativo then
    ACBrBAL.Desativar;

  if Dtrm.DataSet.FieldByName('trmbalaporta').AsString <> '' then
  begin

    // configura porta de comunicação
    ACBrBAL.Modelo := TACBrBALModelo(2); // balToledo
    ACBrBAL.Device.HandShake := TACBrHandShake(0); // nenhum
    ACBrBAL.Device.Parity := TACBrSerialParity(0); // none
    ACBrBAL.Device.Stop := TACBrSerialStop(0); // s1
    ACBrBAL.Device.Data := Dtrm.DataSet.FieldByName('trmbaladata').AsInteger;
    ACBrBAL.Device.Baud := Dtrm.DataSet.FieldByName('trmbalabaud').AsInteger;
    ACBrBAL.Device.Porta := Dtrm.DataSet.FieldByName('trmbalaporta').AsString;

    // Conecta com a balança
    ACBrBAL.Ativar;

    if ACBrBAL.Ativo then
    begin
      // ACBrBAL.MonitorarBalanca := True;
      TmBalanca.Enabled := True;
      LbPeso.Font.Color := clWhite;
      LbPeso.Caption := 'Coloque o produto sobre a Balança';
    end
    else
      LbPeso.Caption := 'Falha de comunicação com a balança !';
  end
  else
    LbPeso.Caption := ''
end;

procedure Tfpeso.PreparaInclusao;
begin

end;

procedure Tfpeso.TmBalancaTimer(Sender: TObject);
begin
  ACBrBAL.LePeso;
end;

end.
