unit UntPDVApi;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.Layouts, FMX.ListBox,
  IdBaseComponent, IdComponent, IdCustomTCPServer, IdCustomHTTPServer,
  IdHTTPServer, IdContext, untSTONEIntent,uFancyDialog, json,
  System.SyncObjs, FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, System.Skia,
  FMX.Skia;

type
  TFrmPDVApi = class(TForm)
    lytGeral: TLayout;
    recGeral: TRectangle;
    lytBack: TLayout;
    lstListaPedidos: TListBox;
    lytNavegacao: TLayout;
    Layout17: TLayout;
    Rectangle2: TRectangle;
    lytMenuMain: TLayout;
    Rectangle1: TRectangle;
    Text6: TText;
    Image8: TImage;
    Rectangle6: TRectangle;
    Image1: TImage;
    lytMenu: TLayout;
    rectAbas: TRectangle;
    imgAbaDashboard: TImage;
    imgAbaPedido: TImage;
    imgAbaCliente: TImage;
    imgAbaMais: TImage;
    Rectangle3: TRectangle;
    txtNsuTransacao: TText;
    httpServer: TIdHTTPServer;
    SkAnimatedImage1: TSkAnimatedImage;
    Label1: TLabel;
    txtIP: TText;
    procedure Image8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure httpServerCommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
     Mensa : TFancyDialog;
    procedure TEFResultadoRecebido(Sender: TObject);
    function GetWiFiIP: string;
  public

  end;

var
  FrmPDVApi: TFrmPDVApi;
  TipoPagamento, Valor, Parcelas, Pedido: string;
  StoneTEF                  : TStoneTEF;
  FResponseEvent            : Boolean;
  JsonObject                : TJSONObject;
  vPassou                   : integer;

implementation

uses
  System.Messaging, USession
  {$IFDEF ANDROID}
  , Androidapi.Helpers,
  Androidapi.JNI.Net,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNIBridge, FMX.Platform.Android
  {$ENDIF}
  ;

{$R *.fmx}

function TFrmPDVApi.GetWiFiIP: string;
{$IFDEF ANDROID}
var
  WifiMgr: JWifiManager;
  WifiInfo: JWifiInfo;
  ipAddress: Integer;
{$ENDIF}
begin
{$IFDEF ANDROID}
  WifiMgr   := TJWifiManager.Wrap((TAndroidHelper.Context.getSystemService(TJContext.JavaClass.WIFI_SERVICE) as ILocalObject).GetObjectID);
  WifiInfo  := WifiMgr.getConnectionInfo;
  ipAddress := WifiInfo.getIpAddress;

  Result := Format('%d.%d.%d.%d', [
    (ipAddress and $FF),
    (ipAddress shr 8 and $FF),
    (ipAddress shr 16 and $FF),
    (ipAddress shr 24 and $FF)
  ]);
{$ENDIF}
end;

procedure TFrmPDVApi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  HTTPServer.Active := False;
  Mensa.DisposeOf;
  {$IFDEF ANDROID}
    if Assigned(StoneTEF) then
    begin
      TMessageManager.DefaultManager.Unsubscribe(TMessageResultNotification, StoneTEF.HandleActivityMessage); // Desinscreve antes de liberar
      FreeAndNil( StoneTEF );
    end;
  {$ENDIF}
end;

procedure TFrmPDVApi.FormCreate(Sender: TObject);
begin
 try
       TSession.TEF_AdquirentePOS := tadSTONE;
       Mensa                      := TFancyDialog.Create(Self);
       if HTTPServer.Active then
        HTTPServer.Active := False;

        HTTPServer.DefaultPort := 9911;
        HTTPServer.Active      := True;

        {$IFDEF ANDROID}
         StoneTEF   := TStoneTEF.Create(nil);
         txtIP.Text := 'IP: ' + GetWiFiIP;
        {$ENDIF}
 except on e:Exception do
 begin
      Mensa.Show(TIconDialog.Error, 'Atenção', e.Message, 'OK');
 end;

 end;
end;

procedure TFrmPDVApi.httpServerCommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
var
  Response       : string;
  xSender        : TObject;
  TEF            : Boolean;
  PGTO_Descricao : string;
  PGTO_Parcelas  : Integer;
  ValorPagoStr   : string;
  xValTransacao  : Integer;
  Vero_Pgto      : string;
  xTipoTransacao : string;

begin
  if ARequestInfo.Command = 'POST' then
  begin
    if ARequestInfo.URI = '/Pagamento' then
    begin
          FResponseEvent := False;
          vPassou        := 0;

          TipoPagamento := ARequestInfo.RawHeaders.Values['tipopagamento'];
          Valor         := ARequestInfo.RawHeaders.Values['valor'];
          Parcelas      := ARequestInfo.RawHeaders.Values['parcelas'].PadLeft(1,'1');
          Pedido        := ARequestInfo.RawHeaders.Values['pedido'].PadLeft(1,'1');

          // ININIA PROCEDIMENTOS DO TEF
          PGTO_Descricao        := TipoPagamento;
          PGTO_Parcelas         := StrToInt(Parcelas.PadLeft(1,'1'));
//          ValorPagoStr          := FormatFloat('#,##0.00', StrToFloat( Valor.Replace('.','').Replace(',','.') ));
//          ValorPagoStr          := StringReplace(ValorPagoStr, '.', '', [rfReplaceAll]);
//          ValorPagoStr          := StringReplace(ValorPagoStr, ',', '', [rfReplaceAll]);
//          xValTransacao         := StrToIntDef(ValorPagoStr, 0);

          // Modelo da SmartPOS

          {$REGION 'Transação SmartPOS'}
            StoneTEF.Amount            := '';
            StoneTEF.atk               := '';
            StoneTEF.Authorizationcode := '';
            StoneTEF.Brand             := '';
            StoneTEF.Erro              := '';
            StoneTEF.Code              := '';

           {$REGION 'STONE'}
            if TSession.TEF_AdquirentePOS = tadSTONE then
            begin
                    TEF       := True;
                 {$IFDEF ANDROID}

                   if Pos('CREDITO', PGTO_Descricao) <> 0 then
                   BEGIN
                       xTipoTransacao := StoneTEF.TRANSACAO_CREDITO;
                       if PGTO_Parcelas <= 1 then
                        Vero_Pgto := StoneTEF.CREDITO_A_VISTA
                       else
                        Vero_Pgto := StoneTEF.CREDITO_PARC_SEM_JUROS;
                   END;

                   if Pos('DEBITO', PGTO_Descricao) <> 0 then
                   begin
                    xTipoTransacao := StoneTEF.TRANSACAO_DEBITO;
                    Vero_Pgto      := '';
                   end;

                   if Pos('PIX', PGTO_Descricao) <> 0 then
                   begin
                    xTipoTransacao := StoneTEF.TRANSACAO_PIX;
                    Vero_Pgto      := '';
                   end;

                   StoneTEF.OnResultadoRecebido := TEFResultadoRecebido;

                   StoneTEF.startPayment(xTipoTransacao,
                                         Valor,
                                         '',
                                         Vero_Pgto,
                                         PGTO_Parcelas.ToString,
                                         Pedido
                                        );
                 {$ENDIF}
            end;
          {$ENDREGION}
          {$ENDREGION}

      while not FResponseEvent do
      Continue;

      try
        Response := JsonObject.ToString;
      finally
        //JsonObject.Free;
      end;

      txtNsuTransacao.Text        := 'Nsu da última transação: ' + TSession.TEF_NSU;

      AResponseInfo.ContentType   := 'application/json';
      AResponseInfo.ContentText   := '{"status": "success", "message": ' + Response + '}';
      AResponseInfo.ContentLength := Length(AResponseInfo.ContentText);
      AResponseInfo.ResponseNo    := 200; // OK
    end
    else
    begin
      AResponseInfo.ResponseNo    := 404; // Not Found
      AResponseInfo.ContentText   := 'Endpoint não encontrado';
      AResponseInfo.ContentLength := Length(AResponseInfo.ContentText);
    end;
  end
  else
  begin
    AResponseInfo.ResponseNo    := 405;
    AResponseInfo.ContentText   := 'Método não permitido';
    AResponseInfo.ContentLength := Length(AResponseInfo.ContentText);
  end;
end;

procedure TFrmPDVApi.TEFResultadoRecebido(Sender: TObject);
begin

       {$REGION 'Transação SmartPOS'}
       {$IFDEF ANDROID}
               Sleep(250);
               JsonObject     := TJSONObject.Create;

               if TSession.TEF_AdquirentePOS = tadSTONE then
               begin
                   Inc(vPassou);
                   TSession.TEF_NSU            := StoneTEF.atk;
                   TSession.TEF_TIPO           := '';
                   TSession.TEF_BANDEIRA       := StoneTEF.Brand;
                   TSession.TEF_ADQUIRENTE     := 'STONE';
                   TSession.TEF_CNPJADQUIRENTE := '';

                   JsonObject.AddPair('NSU'            , TSession.TEF_NSU);
                   JsonObject.AddPair('TipoTransacao'  , TSession.TEF_TIPO);
                   JsonObject.AddPair('Bandeira'       , TSession.TEF_BANDEIRA);
                   JsonObject.AddPair('NomeAdquirente' , TSession.TEF_ADQUIRENTE);
                   JsonObject.AddPair('CnpjAdquirente' , TSession.TEF_CNPJADQUIRENTE);

                   FResponseEvent := True;

                   if StoneTEF.atk = '' then
                    Exit;

               end;

               if TSession.TEF_AdquirentePOS = tadPAGBANK then
               BEGIN


               END;

       {$ENDIF}
       {$ENDREGION}

end;

procedure TFrmPDVApi.Image8Click(Sender: TObject);
begin
  {$IFDEF ANDROID}
    MainActivity.finish;
  {$ELSE}
    Application.Terminate;
  {$ENDIF}
end;

end.
