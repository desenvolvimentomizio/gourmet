object UniServerModule: TUniServerModule
  OldCreateOrder = False
  TempFolder = 'temp\'
  SessionTimeout = 183600000
  Port = 8078
  Title = 'Gourmet -  Produ'#231#227'o'
  SuppressErrors = []
  Bindings = <>
  CustomFiles.Strings = (
    
      'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap' +
      '.min.css'
    
      'https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popp' +
      'er.min.js'
    
      'https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.' +
      'min.js')
  CustomCSS.Strings = (
    '.x-grid .x-grid-cell {'
    '    height: 60px !important;'
    '    line-height: 60px !important;'
    '    font-family: '#39'Times New Roman'#39', Times, serif;'
    '    font-size:  21pt;'
    '}'
    ''
    ''
    '.mGridCliente .x-grid-column {'
    '    border-style: solid;'
    '    border-width: 1px 1px 0;'
    '    height: 30px;'
    '    line-height: 30px;'
    '    padding: 0 8px;'
    '    vertical-align: middle;'
    '    font-family: '#39'Trebuchet MS'#39', Arial, Helvetica, sans-serif;'
    '    font-size:  9pt;'
    '    font-weight: bold;'
    '    width: 100%;'
    '    text-align: center;'
    '    background-color: #4CAF50;'
    '    color: white;'#9
    '}'
    ''
    '.mGridCliente .x-grid-cell {'
    '    height: 40px !important;'
    '    line-height: 30px !important;'
    '    font-family: '#39'Trebuchet MS'#39', Arial, Helvetica, sans-serif;'
    '    font-size:  18pt;'
    '    font-weight: bold;'
    '    color: black;'
    '    border-collapse: collapse;'
    '    width: 100%;'#9
    '    background-color: #99ccff;'
    '}')
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
  Height = 150
  Width = 215
end
