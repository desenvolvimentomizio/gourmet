object UniServerModule: TUniServerModule
  OldCreateOrder = False
  AutoCoInitialize = True
  TempFolder = 'temp\'
  SessionTimeout = 600000000
  Title = 'Gourmet 3.5'
  SuppressErrors = [errObjectNotFound, errAjax]
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomCSS.Strings = (
    '.Fonte1: {font-size: 15px;'
    '    color: black;'
    '    font-weight: bold;}'
    ''
    ''
    ''
    '.Fonte11 {border-radius:10px;'
    '    background-color: rgb(211,235,225) !important;'
    '    border: 1px solid rgb(142,28,36); }')
  ServerMessages.UnavailableErrMsg = 'Falha de comunica'#231#227'o'
  ServerMessages.LoadingMessage = 'Carregando...'
  ServerMessages.TerminateMessage = 'Sess'#227'o web terminada'
  ISAPIOptions.ThreadPoolsize = 200
  ISAPIOptions.ThreadRecycleCount = 200
  ServerLimits.ThreadPoolSize = 1000
  ServerLimits.MaxSessions = 500
  ServerLimits.MaxRequests = 400
  ServerLimits.MaxConnections = 2000
  ServerLimits.MaxGDIObjects = 20000
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.DetailedLog = True
  ConnectionFailureRecovery.ErrorMessage = 'Aguarde'
  ConnectionFailureRecovery.RetryMessage = 'Reconectando...'
  ConnectionFailureRecovery.TextColor = clGreen
  HTTPServerOptions.MaxAliveSecs = 240
  HTTPServerOptions.MaxPoolSize = 850
  Height = 150
  Width = 215
end
