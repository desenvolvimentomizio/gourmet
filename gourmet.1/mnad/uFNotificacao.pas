unit uFNotificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TFNotificacao = class(TForm)
    lTitulo: TLabel;
    lRodape: TLabel;
    ImagemAlerta: TImage;
    ImagemErro: TImage;
    texto: TMemo;
    Painel: TPanel;

  private
    function MostraAlertaDesktop(Mensagem: String; Tipo: Integer; PodeFechar: Boolean = True): Integer;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FNotificacao: TFNotificacao;

implementation

{$R *.dfm}

function Alerta(AOwner: TComponent; Mensagem: String; Tipo: Integer; PodeFechar: Boolean): string;
begin
  try
    FNotificacao := TFNotificacao.Create(AOwner);
    FNotificacao.MostraAlertaDesktop(Mensagem, Tipo, PodeFechar);
  finally
  end;
end;

exports Alerta;

Function TFNotificacao.MostraAlertaDesktop(Mensagem: String; Tipo: Integer; PodeFechar: Boolean = True): Integer;
Var
  I: Integer;
  BarraIniciar: HWND;
  { Barra Iniciar } TmAltura: Integer;
  TmRect: TRect;
  XTop: Integer;
  XIniTop: Integer;
Begin
  // localiza o Handle da janela iniciar
  BarraIniciar := FindWindow('Shell_TrayWnd', Nil);
  // Pega o "retângulo" que envolve a barra e sua altura
  GetWindowRect(BarraIniciar, TmRect);
  TmAltura := TmRect.Bottom - TmRect.Top;
  FNotificacao := TFNotificacao.Create(Self);

  ImagemAlerta.visible := false;
  ImagemErro.visible := false;

  If PodeFechar Then
    FNotificacao.BorderIcons := [BiSystemMenu, BiMinimize]
  Else
    FNotificacao.BorderIcons := [];

  FNotificacao.texto.Lines.Text := Mensagem;

  Result := FNotificacao.Handle;

  With FNotificacao Do
  Begin

    Left := Screen.Width - Width - 5; // ClientWidth;

    If TmRect.Top = -2 Then
      TmAltura := 10;

    // Pega o top final
    XTop := Screen.Height - Height - TmAltura - 10;

    // Pega o top inicial
    XIniTop := Screen.Height + Height + TmAltura;
    Top := XIniTop;

    For I := XIniTop Downto XTop Do
    Begin
      Top := Top - 1;
      Show;
      Update;
      if Tipo = 1 then
      begin
        lTitulo.caption := 'ATENÇÃO' + #13 + #13 + 'E R R O !';
        ImagemAlerta.visible := False;
        ImagemErro.visible := True;

        color := clRed;
      end
      else
      begin
        lTitulo.caption := 'ATENÇÃO' + #13 + #13 + 'A L E R T A !';
        ImagemErro.visible := false;
        ImagemAlerta.visible := True;

        color := clYellow;
      end;
      Application.ProcessMessages;
      Sleep(5);
    End;
  End;
End;

end.
