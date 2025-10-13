unit uPrincipal;

interface

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  System.Messaging,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Objects,
  FMX.MultiView,
  FMX.Effects,
  FMX.Edit,
  FMX.Memo.Types,
  FMX.ScrollBox,
  FMX.Memo,
  FMX.Platform,
  System.Net.URLClient,
  FMX.Layouts,
  System.TypInfo,untSTONEIntent
  {$IFDEF ANDROID}
    ,FMX.Helpers.Android,
    Androidapi.JNI.JavaTypes,
    Androidapi.Helpers,
    Androidapi.JNI.Net,
    FMX.Platform.Android,
    Androidapi.JNI.Os,
    Androidapi.JNI.GraphicsContentViewText
  {$ENDIF}
  ;

type
  TfrmPrincipal = class(TForm)
    rect_toolbar: TRectangle;
    rect_container: TRectangle;
    Label1: TLabel;
    MultiView: TMultiView;
    rect_valor: TRectangle;
    rect_credito: TRectangle;
    Label2: TLabel;
    edt_valor: TEdit;
    rect_debito: TRectangle;
    Label3: TLabel;
    rect_memo_log: TRectangle;
    mmo_log: TMemo;
    Label4: TLabel;
    lyt_tipo_credito: TLayout;
    rect_bg: TRectangle;
    rect_btn_credito: TRectangle;
    rect_credito_avista: TRectangle;
    Label5: TLabel;
    rect_credito_parcelado: TRectangle;
    Label6: TLabel;
    btn_close: TSpeedButton;
    lyt_close: TLayout;
    btnPrintDemo: TButton;
    btnLerStatusPrint: TButton;
    Label7: TLabel;
    Rectangle1: TRectangle;
    Label8: TLabel;
    Rectangle2: TRectangle;
    Label9: TLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure rect_creditoClick(Sender: TObject);
    procedure rect_debitoClick(Sender: TObject);
    procedure edt_valorTyping(Sender: TObject);
    procedure rect_credito_avistaClick(Sender: TObject);
    procedure rect_credito_parceladoClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
    procedure btnPrintDemoClick(Sender: TObject);
    procedure Rectangle1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Rectangle2Click(Sender: TObject);
  private
    procedure StoneTEFResultadoRecebido(Sender: TObject);
    procedure Log(const Msg: string);
  public

  end;

var
  frmPrincipal : TfrmPrincipal;
  TStone       : TStoneTEF;

implementation

{$R *.fmx}


function valor(pValor: string): string;
begin
  pValor := StringReplace(pValor, ',', '.', [rfReplaceAll]);
  Result := StringReplace(pValor, '.', '' , [rfReplaceAll]);
end;

procedure TfrmPrincipal.btn_closeClick(Sender: TObject);
begin
  lyt_tipo_credito.Visible := False;
end;

procedure TfrmPrincipal.btnPrintDemoClick(Sender: TObject);
begin
  mmo_log.Lines.Clear;
end;

procedure TfrmPrincipal.edt_valorTyping(Sender: TObject);
begin
  TThread.Queue(nil,
    procedure
    var
      txt, txt2: string;
      x: integer;
    begin
      txt := edt_valor.Text;
      txt2 := '';
      for x := 0 to Length(txt) - 1 do
        if (txt.Chars[x] in ['0'..'9']) then
          txt2 := txt2 + txt.Chars[x];

      txt := txt2;
      edt_valor.Text := FormatFloat('#,##0.00', StrToFloatDef(txt, 0) / 100);
      edt_valor.GoToTextEnd;
    end);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  {$IFDEF ANDROID}
    TStone := TStoneTEF.Create(nil);
  {$ENDIF}
end;

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
 {$IFDEF ANDROID}
   if Assigned(TStone) then
  TStone.Free;
 {$ENDIF}
end;

procedure TfrmPrincipal.Rectangle1Click(Sender: TObject);
begin
  try
    mmo_log.Lines.Clear;
    TStone.OnResultadoRecebido := StoneTEFResultadoRecebido;
    {$IFDEF ANDROID}
      TStone.startCancel(TStone.TRANSACAO_CREDITO, valor(edt_valor.Text), 'true',TStone.CREDITO_PARC_SEM_JUROS,'','' );
    {$ENDIF}

  except
    on E: Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TfrmPrincipal.Rectangle2Click(Sender: TObject);
begin
  try
    mmo_log.Lines.Clear;

    TStone.OnResultadoRecebido := StoneTEFResultadoRecebido;
    {$IFDEF ANDROID}
    TStone.startPayment(TStone.TRANSACAO_PIX, valor(edt_valor.Text), '', TStone.CREDITO_A_VISTA, '', '123');
    {$ENDIF}
  except
    on E: Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TfrmPrincipal.rect_creditoClick(Sender: TObject);
begin
  lyt_tipo_credito.Visible := True;
end;

procedure TfrmPrincipal.rect_credito_avistaClick(Sender: TObject);
begin
  try
    mmo_log.Lines.Clear;

    TStone.OnResultadoRecebido := StoneTEFResultadoRecebido;
    {$IFDEF ANDROID}
    TStone.startPayment(TStone.TRANSACAO_CREDITO, valor(edt_valor.Text), '', TStone.CREDITO_A_VISTA, '', '123');
    {$ENDIF}
  except
    on E: Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TfrmPrincipal.rect_credito_parceladoClick(Sender: TObject);
begin
  lyt_tipo_credito.Visible := False;
  mmo_log.Lines.Clear;
  try
   TStone.OnResultadoRecebido := StoneTEFResultadoRecebido;
   {$IFDEF ANDROID}
   TStone. startPayment(TStone.TRANSACAO_CREDITO, valor(edt_valor.Text), '', TStone.CREDITO_PARC_SEM_JUROS, '2', '123');
   {$ENDIF}
  except
    on E: Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TfrmPrincipal.rect_debitoClick(Sender: TObject);
begin


  lyt_tipo_credito.Visible := False;
  mmo_log.Lines.Clear;

  TStone.OnResultadoRecebido := StoneTEFResultadoRecebido;
  {$IFDEF ANDROID}
    TStone.startPayment( TStone.TRANSACAO_DEBITO, valor(edt_valor.Text), '', '', '', '123' );
  {$ENDIF}
end;

procedure TfrmPrincipal.StoneTEFResultadoRecebido(Sender: TObject);
begin
    try
        try
         if Length(TStone.atk) > 0 then
         begin
          mmo_log.lines.Clear;
          Log('Resultado da transação recebida:');
          Log('Code: '              + TStone.Code);
          Log('Amount: '            + TStone.Amount);
          Log('Authorizationcode: ' + TStone.Authorizationcode);
          Log('Brand: '             + TStone.Brand);
          Log('Pan: '               + TStone.Pan);
          Log('Atk: '               + TStone.atk);
          Log('Message: '           + TStone.xMessage);
          Log('Erro: '              + TStone.Erro);
         end;
        except

        end;
    finally

    end;
end;

procedure TfrmPrincipal.Log(const Msg: string);
begin
  mmo_log.Lines.Add(Msg);
end;

end.

