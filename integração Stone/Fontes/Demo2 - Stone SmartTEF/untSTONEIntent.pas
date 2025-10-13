unit untSTONEIntent;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls,FMX.Platform
  {$IFDEF ANDROID}
  ,Androidapi.JNI.GraphicsContentViewText,
  Androidapi.Helpers,
  System.Messaging,
  Androidapi.JNI.App,
  Androidapi.JNI.Net,
  FMX.Platform.Android,
  Androidapi.JNI.Os,
  Androidapi.JNI.JavaTypes
  {$ENDIF}
  ;

type TStoneTEF = class

    private
    FOnResultadoRecebido: TNotifyEvent;
    FEerro: String;
    FPan: string;
    FCode: string;
    FAmount: string;
    FBrand: string;
    FxMessage: string;
    FAuthorization_code: string;
    FAuthorizationcode: string;
    Fatk: string;

    function valor(pValor: string): string;

    public
     {$IFDEF ANDROID}
       procedure startPayment(transactionType, amount, editable_amount, installment_type, installment_count, order_id: string);
       procedure startCancel(transactionType, amount, editable_amount, installment_type, installment_count, order_id: string);

       procedure HandleActivityMessage(const Sender: TObject; const M: TMessage);
       function HandleAppEvent(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;
       function HandleIntentAction(const Data: JIntent): Boolean;

       constructor Create(AOwner: TComponent);
       destructor Destroy;
     {$ENDIF}

    const
     RETURN_SCHEME                         = 'stone-DTSmartTEF';
     RETURN_SCHEME_CANCEL                  = 'stone-DTSmartTEF-cancel';

     TRANSACAO_CREDITO                     = 'CREDIT';
     TRANSACAO_DEBITO                      = 'DEBIT';
     TRANSACAO_PIX                         = 'PIX';
     TRANSACAO_VOUCHER                     = 'VOUCHER';
     TRANSACAO_INSTANT_PAYMENT             = 'INSTANT_PAYMENT';

     CREDITO_A_VISTA                       = 'NONE';     // A VISTA
     CREDITO_PARC_SEM_JUROS                = 'MERCHANT'; // PARCELADO SEM JUROS
     CREDITO_PARC_COM_JUROS                = 'ISSUER';   // PARCELADO SOM JUROS

    published
     property OnResultadoRecebido : TNotifyEvent read FOnResultadoRecebido write FOnResultadoRecebido;
     property Erro                : String       read FEerro               write FEerro;
     property Code                : string       read FCode                write FCode;
     property Amount              : string       read FAmount              write FAmount;
     property Authorizationcode   : string       read FAuthorizationcode   write FAuthorizationcode;
     property Brand               : string       read FBrand               write FBrand;
     property Pan                 : string       read FPan                 write FPan;
     property atk                 : string       read Fatk                 write Fatk;
     property xMessage            : string       read FxMessage            write FxMessage;

end;

implementation

uses
  System.Net.URLClient;

{ TStoneTEF }

{$IFDEF ANDROID}
constructor TStoneTEF.Create(AOwner: TComponent);
var
  AppEventService: IFMXApplicationEventService;
begin
     inherited Create;

  if TPlatformServices.Current.SupportsPlatformService(IFMXApplicationEventService, AppEventService) then
    AppEventService.SetApplicationEventHandler(HandleAppEvent);

  MainActivity.registerIntentAction(TJIntent.JavaClass.ACTION_VIEW);
  TMessageManager.DefaultManager.SubscribeToMessage(TMessageReceivedNotification, HandleActivityMessage);

end;

destructor TStoneTEF.Destroy;
begin
  TMessageManager.DefaultManager.Unsubscribe(TMessageReceivedNotification, HandleActivityMessage);
  inherited Destroy;
end;

procedure TStoneTEF.HandleActivityMessage(const Sender: TObject;
  const M: TMessage);
begin
  if M is TMessageReceivedNotification then
  begin
    HandleIntentAction(TMessageReceivedNotification(M).Value);
  end;
end;

function TStoneTEF.HandleAppEvent(AAppEvent: TApplicationEvent; AContext: TObject): Boolean;
var
  StartupIntent: JIntent;
begin
  Result := False;
  if AAppEvent = TApplicationEvent.BecameActive then
  begin
    StartupIntent := MainActivity.getIntent;
    if StartupIntent <> nil then
      HandleIntentAction(StartupIntent);
  end;
end;

function TStoneTEF.HandleIntentAction(const Data: JIntent): Boolean;
var
  Extras: JBundle;
  ResponseURI: TURI;
begin
  Result := False;

  if Data <> nil then
  begin

    if trim(JStringToString(Data.getDataString)) <> '' then
    begin
      ResponseURI := TURI.Create(JStringToString(Data.getDataString));

      FCode              := ResponseURI.ParameterByName['code'];

      Sleep(250);
      if FCode = '0' then
      begin
            FAmount            := FormatFloat('#,##0.00', StrToFloatDef(ResponseURI.ParameterByName['amount'], 0) / 100);
            FAuthorizationcode := ResponseURI.ParameterByName['authorization_code'];
            FBrand             := ResponseURI.ParameterByName['brand'];
            FPan               := ResponseURI.ParameterByName['pan'];
            Fatk               := ResponseURI.ParameterByName['atk'];
      end else begin
            FxMessage          := ResponseURI.URLDecode(ResponseURI.ParameterByName['message']);
      end;

      if Assigned(FOnResultadoRecebido) then
       FOnResultadoRecebido(Self);

    end;

  end;

end;

procedure TStoneTEF.startCancel(transactionType, amount, editable_amount,
  installment_type, installment_count, order_id: string);
var
  Intent: JIntent;
  lUri: string;
begin
  Intent := TJIntent.Create;
  transactionType := '&transaction_type=' + transactionType;
  amount := '&amount=' + amount;
  if editable_amount <> '' then
    editable_amount := '&editable_amount=' + editable_amount;
  if installment_type <> '' then
    installment_type := '&installment_type=' + installment_type;
  if installment_count <> '' then
    installment_count := '&installment_count=' + installment_count;
  if order_id <> '' then
    order_id := '&order_id=' + order_id;

   lUri := 'cancel-app://cancel?return_scheme=' + RETURN_SCHEME_CANCEL;

  Intent := TJIntent.JavaClass.init(TJIntent.JavaClass.ACTION_VIEW, TJNet_uri.javaclass.parse(StringToJString(lUri)));
  Intent.setFlags(TJIntent.JavaClass.FLAG_ACTIVITY_NEW_TASK or TJIntent.JavaClass.FLAG_ACTIVITY_CLEAR_TASK);

  try
    MainActivity.startActivity(Intent);
  except
    on E: Exception do
      raise Exception.Create(e.message);
  end;

end;

procedure TStoneTEF.startPayment(transactionType, amount, editable_amount,
  installment_type, installment_count, order_id: string);
var
  Intent: JIntent;
  lUri: string;
begin
  if transactionType = 'DEBIT' then
    installment_count := '';

  Intent := TJIntent.Create;
  transactionType := '&transaction_type=' + transactionType;
  amount := '&amount=' + amount;
  if editable_amount <> '' then
    editable_amount := '&editable_amount=' + editable_amount;
  if installment_type <> '' then
    installment_type := '&installment_type=' + installment_type;
  if installment_count <> '' then
    installment_count := '&installment_count=' + installment_count;
  if order_id <> '' then
    order_id := '&order_id=' + order_id;

  lUri := 'payment-app://pay?return_scheme=' + RETURN_SCHEME + transactionType + amount + editable_amount + installment_type + installment_count + order_id;
  Intent := TJIntent.JavaClass.init(TJIntent.JavaClass.ACTION_VIEW, TJNet_uri.javaclass.parse(StringToJString(lUri)));

  try
    MainActivity.startActivity(Intent);
  except
    on E: Exception do
     raise Exception.Create(e.message);
  end;
end;
{$ENDIF}

function TStoneTEF.valor(pValor: string): string;
begin
      pValor := StringReplace(pValor, ',', '.', [rfReplaceAll]);
      Result := StringReplace(pValor, '.', '', [rfReplaceAll]);
end;

end.
