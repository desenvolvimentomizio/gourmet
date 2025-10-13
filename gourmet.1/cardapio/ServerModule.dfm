object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  Port = 8057
  Title = 'New Application'
  SuppressErrors = []
  Bindings = <>
  CustomCSS.Strings = (
    '</style>'
    '<script>'
    '  if('#39'serviceWorker'#39' in navigator) {'
    '    navigator.serviceWorker.register('#39'sw.js'#39');'
    '  };'
    ''
    'window.addEventListener('#39'load'#39', function() {'
    '  window.history.pushState({ noBackExitsApp: true }, '#39#39')'
    '})'
    ''
    'window.addEventListener('#39'popstate'#39', function(event) {'
    '  if (event.state && event.state.noBackExitsApp) {'
    '    window.history.pushState({ noBackExitsApp: true }, '#39#39')'
    '  }'
    '})  '
    '  '
    '</script>'
    '<style>')
  CustomMeta.Strings = (
    '<meta name="theme-color" content="#000000" />'
    '<link rel="manifest" href="/manifest.webmanifest">')
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 527
  Width = 524
end
