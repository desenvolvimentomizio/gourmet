object dtmxml: Tdtmxml
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 524
  Width = 765
  object ACBrNFe1: TACBrNFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsMsXml
    Configuracoes.Geral.ExibirErroSchema = False
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.IncluirQRCodeXMLNFCe = False
    Configuracoes.Arquivos.PathSalvar = '.\Salvar\'
    Configuracoes.Arquivos.PathSchemas = '.\Schemas\'
    Configuracoes.Arquivos.IniServicos = 'UrlsTXT.txt'
    Configuracoes.Arquivos.AdicionarLiteral = True
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.Arquivos.SepararPorMes = True
    Configuracoes.Arquivos.EmissaoPathNFe = True
    Configuracoes.Arquivos.SalvarEvento = True
    Configuracoes.Arquivos.PathNFe = '.\NFe'
    Configuracoes.Arquivos.PathInu = '.\Inu'
    Configuracoes.Arquivos.PathEvento = '.\Eventos'
    Configuracoes.Arquivos.DownloadNFe.PathDownload = '.\Download'
    Configuracoes.WebServices.UF = 'ES'
    Configuracoes.WebServices.Ambiente = taProducao
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    DANFE = ACBrNFeDANFeRL1
    Left = 514
    Top = 38
  end
  object ACBrNFeDANFeRL1: TACBrNFeDANFeRL
    ACBrNFe = ACBrNFe1
    PathPDF = '.\PDFs\'
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiRetrato
    NumCopias = 1
    ImprimeNomeFantasia = False
    ImprimirDescPorc = False
    ImprimirTotalLiquido = True
    MargemInferior = 0.700000000000000000
    MargemSuperior = 0.700000000000000000
    MargemEsquerda = 0.700000000000000000
    MargemDireita = 0.700000000000000000
    CasasDecimais.Formato = tdetInteger
    CasasDecimais._qCom = 4
    CasasDecimais._vUnCom = 4
    CasasDecimais._Mask_qCom = '###,###,###,##0.00'
    CasasDecimais._Mask_vUnCom = '###,###,###,##0.00'
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    ImprimirItens = True
    ViaConsumidor = True
    TamanhoLogoHeight = 0
    TamanhoLogoWidth = 0
    RecuoEndereco = 0
    RecuoEmpresa = 0
    LogoemCima = False
    TamanhoFonteEndereco = 0
    RecuoLogo = 0
    LarguraCodProd = 54
    ExibirEAN = False
    QuebraLinhaEmDetalhamentoEspecifico = True
    ExibeCampoFatura = False
    ImprimirUnQtVlComercial = iuComercial
    ImprimirDadosDocReferenciados = True
    Left = 514
    Top = 102
  end
  object ACBrMail1: TACBrMail
    Host = '127.0.0.1'
    Port = '25'
    SetSSL = False
    SetTLS = False
    Attempts = 3
    DefaultCharset = UTF_8
    IDECharset = UTF_8
    Left = 514
    Top = 174
  end
  object AutoExec: TTimer
    Enabled = False
    OnTimer = AutoExecTimer
    Left = 648
    Top = 30
  end
  object pXmlCfg: TDataSetProvider
    DataSet = qXmlCfg
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnUpdateData = pXmlCfgUpdateData
    Left = 87
    Top = 213
  end
  object XmlCfg: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'pXmlCfg'
    AfterOpen = XmlCfgAfterOpen
    AfterPost = XmlCfgAfterPost
    Left = 87
    Top = 260
  end
  object pXmlRes: TDataSetProvider
    DataSet = qXmlRes
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnUpdateData = pXmlResUpdateData
    Left = 180
    Top = 214
  end
  object XmlRes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pXmlRes'
    Left = 178
    Top = 261
  end
  object pXmlDfe: TDataSetProvider
    DataSet = qXmlDfe
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 283
    Top = 209
  end
  object XmlDfe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pXmlDfe'
    Left = 281
    Top = 254
  end
  object pXmlNfe: TDataSetProvider
    DataSet = qXmlNfe
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 383
    Top = 210
  end
  object XmlNfe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pXmlNfe'
    Left = 381
    Top = 255
  end
  object Conn: TSQLConnection
    DriverName = 'SQLite'
    Params.Strings = (
      'DriverUnit=Data.DbxSqlite'
      
        'DriverPackageLoader=TDBXSqliteDriverLoader,DBXSqliteDriver250.bp' +
        'l'
      
        'MetaDataPackageLoader=TDBXSqliteMetaDataCommandFactory,DbxSqlite' +
        'Driver250.bpl'
      'FailIfMissing=True'
      'Database=')
    Left = 85
    Top = 50
  end
  object qXmlCfg: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from xmlcfg')
    SQLConnection = Conn
    Left = 85
    Top = 165
  end
  object qXmlRes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from xmlnfe')
    SQLConnection = Conn
    Left = 180
    Top = 165
  end
  object qXmlDfe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conn
    Left = 285
    Top = 165
  end
  object qXmlNfe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = Conn
    Left = 385
    Top = 165
  end
end
