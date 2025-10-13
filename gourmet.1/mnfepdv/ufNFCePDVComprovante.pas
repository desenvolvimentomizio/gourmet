unit ufNFCePDVComprovante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfNFCePDVComprovante = class(TForm)
    plformulario: TPanel;
    plCentro: TPanel;
    plTitulo: TPanel;
    plMensagem: TLabel;
    plvalor: TPanel;
    Panel2: TPanel;
    btOK: TBitBtn;
    btCancel: TBitBtn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
  private
    procedure AjustaaoMonitor;
    { Private declarations }
  public
    { Public declarations }
    vpPodeFechar:Boolean;
    vpBotaoPadra:String;
    vpLarguraTela :Integer;
    vpAlturaTela :Integer;


  end;

var
  fNFCePDVComprovante: TfNFCePDVComprovante;

implementation

{$R *.dfm}

procedure TfNFCePDVComprovante.btCancelClick(Sender: TObject);
begin
  vpPodeFechar:=True;
  ModalResult:=mrCancel;
end;

procedure TfNFCePDVComprovante.btOKClick(Sender: TObject);
begin
  vpPodeFechar:=True;
  ModalResult:=MrOK;
end;

procedure TfNFCePDVComprovante.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := vpPodeFechar;
end;

procedure TfNFCePDVComprovante.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  Begin
    Key := #0;
    try
      vpPodeFechar:=true;
      ModalResult:=MrOK;
    except
    //  ModalResult:=mrCancel;
    end;

  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    vpPodeFechar:=fALSE;
  End;

end;

procedure TfNFCePDVComprovante.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (((Shift = [ssAlt]) And (Key = VK_F4))) then
    Abort;


  if  Key = 27 then
  begin
    vpPodeFechar:=fALSE;
    Abort;
  end;
end;


procedure TfNFCePDVComprovante.AjustaaoMonitor;
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


procedure TfNFCePDVComprovante.FormShow(Sender: TObject);
begin
  vpPodeFechar:=False;
  AjustaaoMonitor;
end;

end.
