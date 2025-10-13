object dtmxml: Tdtmxml
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 524
  Width = 765
  object ACBrNFe1: TACBrNFe
    MAIL = ACBrMail1
    Configuracoes.Geral.SSLLib = libCustom
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsMsXml
    Configuracoes.Geral.ExibirErroSchema = False
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
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
  object qXmlCfg: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'select * from xmlcfg')
    Left = 71
    Top = 363
  end
  object qXmlRes: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'select * from xmlnfe')
    Left = 165
    Top = 361
  end
  object qXmlDfe: TFDQuery
    Connection = Conn
    Left = 268
    Top = 359
  end
  object qXmlNfe: TFDQuery
    Connection = Conn
    Left = 366
    Top = 355
  end
  object AutoExec: TTimer
    Enabled = False
    OnTimer = AutoExecTimer
    Left = 648
    Top = 30
  end
  object Conn: TFDConnection
    Params.Strings = (
      'Database=D:\Distribui'#231#227'o DFe - NFe\bin\DownloadXml.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 71
    Top = 56
  end
  object pXmlCfg: TDataSetProvider
    DataSet = qXmlCfg
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnUpdateData = pXmlCfgUpdateData
    Left = 72
    Top = 408
  end
  object XmlCfg: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'pXmlCfg'
    AfterOpen = XmlCfgAfterOpen
    AfterPost = XmlCfgAfterPost
    OnNewRecord = XmlCfgNewRecord
    Left = 72
    Top = 455
    object XmlCfgidDFe: TIntegerField
      FieldName = 'idDFe'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object XmlCfgultNSU: TIntegerField
      FieldName = 'ultNSU'
      ProviderFlags = [pfInUpdate]
    end
    object XmlCfgUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object XmlCfgTimeInterval: TIntegerField
      FieldName = 'TimeInterval'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object XmlCfgNumeroSerie: TStringField
      FieldName = 'NumeroSerie'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object XmlCfgidDFeAutoInc: TIntegerField
      FieldName = 'idDFeAutoInc'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object XmlCfgSenha: TStringField
      FieldName = 'Senha'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object XmlCfgArquivoPFX: TWideStringField
      FieldName = 'ArquivoPFX'
      ProviderFlags = [pfInUpdate]
      Size = 254
    end
    object XmlCfgPathDB: TWideStringField
      FieldName = 'PathDB'
      ProviderFlags = [pfInUpdate]
      Size = 254
    end
    object XmlCfgSSLLib: TStringField
      FieldName = 'SSLLib'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 2
    end
    object XmlCfgAutoExecute: TIntegerField
      FieldName = 'AutoExecute'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object XmlCfgAutoTimer: TIntegerField
      FieldName = 'AutoTimer'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object pXmlRes: TDataSetProvider
    DataSet = qXmlRes
    Options = [poAutoRefresh, poPropogateChanges, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    OnUpdateData = pXmlResUpdateData
    Left = 165
    Top = 409
  end
  object XmlRes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pXmlRes'
    Left = 163
    Top = 456
  end
  object pXmlDfe: TDataSetProvider
    DataSet = qXmlDfe
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 268
    Top = 404
  end
  object XmlDfe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pXmlDfe'
    Left = 266
    Top = 449
  end
  object pXmlNfe: TDataSetProvider
    DataSet = qXmlNfe
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 368
    Top = 400
  end
  object XmlNfe: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pXmlNfe'
    Left = 366
    Top = 445
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 189
    Top = 53
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 189
    Top = 102
  end
  object FDSQLiteValidate1: TFDSQLiteValidate
    DriverLink = FDPhysSQLiteDriverLink1
    Left = 187
    Top = 162
  end
end
