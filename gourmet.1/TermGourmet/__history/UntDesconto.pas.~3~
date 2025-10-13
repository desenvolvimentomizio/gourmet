unit UntDesconto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfDesconto = class(TForm)
    plformulario: TPanel;
    plCentro: TPanel;
    plTitulo: TPanel;
    plMensagem: TLabel;
    plvalor: TPanel;
    Panel2: TPanel;
    btOK: TBitBtn;
    btCancel: TBitBtn;
    Panel1: TPanel;
    ltprincipal: TLabel;
    edValor: TEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edValorKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vpLarguraTela: Integer;
    vpAlturaTela: Integer;

    ffValorDesconto: Currency;
    procedure AjustaaoMonitor;

  public
    { Public declarations }
    vpValorMaximo:Currency;
    property ValorDesconto: currency  read ffValorDesconto write ffValorDesconto;

  end;

var
  fDesconto: TfDesconto;

implementation

{$R *.dfm}

procedure TfDesconto.edValorKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
//

end;

procedure TfDesconto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (((Shift = [ssAlt]) And (Key = VK_F4))) then
    Abort;
end;

procedure TfDesconto.FormKeyPress(Sender: TObject; var Key: Char);
var
  validaValor:Currency;
  vlDecimal:String;
begin

  if (Sender is TEdit) then
      if not(Key in [#0, #13, #27, #8, #3, #$16, ',', '0' .. '9']) then
      begin
        Key := #0;
        Exit;
      end;
      If (Key = '.') Then
      begin
          Key := #0;
          Key := ',';
      end;
      If (Key = ',') Then
      begin
        if (Pos(',', (Sender as TEdit).Text) = 0) then
        begin
          Key := #0;
          Key := ',';
        end
        else
        begin
          Key := #0;
        end;
      end;


  If Key = ';' Then
  Begin
    Key := #0;
  End;

  If Key = #13 Then
  Begin
    Key := #0;
    try

      if pos(',', edValor.Text)>0 then
      begin
        vlDecimal:=copy(edValor.Text,pos(',', edValor.Text)+1,2);
        edValor.Text:=copy(edValor.Text,1,pos(',', edValor.Text))+vlDecimal;
      end;

      validaValor:=StrToCurr(edValor.Text);
      if validaValor>99999.99 then
      begin
        edValor.Text:='0,00';
        edValor.SetFocus;
        exit;
      end;

      ValorDesconto:=validaValor;

      ModalResult:=MrOK;
    except
      on E: Exception do
      begin

      ModalResult:=mrCancel;
      end;

    end;

  End
  Else If Key = #27 Then
  Begin
      Key := #0;
      ModalResult:=mrCancel;
  End;


end;

procedure TfDesconto.FormShow(Sender: TObject);
begin
  AjustaaoMonitor;
end;

procedure TfDesconto.AjustaaoMonitor;
begin

  if vpLarguraTela = 0 then
    vpLarguraTela := screen.Width;

  if vpAlturaTela = 0 then
    vpAlturaTela := screen.Height;

  WindowState := wsMaximized;

  scaled := True;
   Height := Longint(Height) * Longint(screen.Height) DIV vpAlturaTela;
   Width := Longint(Width) * Longint(screen.Width) DIV vpLarguraTela;
    scaleBy(screen.Width, vpLarguraTela);

  plCentro.left:=(vpLarguraTela div 2) - (plCentro.Width div 2);
  plCentro.top:=(vpAlturaTela div 2) - (plCentro.Height div 2);

end;

end.
