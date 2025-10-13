object FrmTransacaoTEF: TFrmTransacaoTEF
  Left = 0
  Top = 0
  ActiveControl = Panel1
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'TEF'
  ClientHeight = 217
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 217
    Align = alClient
    BevelInner = bvRaised
    Color = 4227327
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object bCancelarResp: TButton
      Left = 359
      Top = 161
      Width = 164
      Height = 23
      Caption = 'Cancelar Processamento'
      TabOrder = 0
      TabStop = False
      OnClick = bCancelarRespClick
    end
    object pMensagem: TPanel
      Left = 10
      Top = 38
      Width = 516
      Height = 117
      BevelOuter = bvNone
      BevelWidth = 2
      BorderStyle = bsSingle
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object pMensagemOperador: TPanel
        Left = 0
        Top = 0
        Width = 512
        Height = 113
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lMensagemOperador: TLabel
          Left = 1
          Top = 1
          Width = 510
          Height = 111
          Align = alClient
          Alignment = taCenter
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
          WordWrap = True
          ExplicitWidth = 5
          ExplicitHeight = 18
        end
      end
    end
    object Panel9: TPanel
      Left = 2
      Top = 2
      Width = 532
      Height = 26
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '   Gerencial TEF'
      Color = 14317667
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object StatusBar: TStatusBar
      Left = 2
      Top = 192
      Width = 532
      Height = 23
      Panels = <
        item
          Width = 100
        end
        item
          Width = 100
        end
        item
          Width = 100
        end
        item
          Width = 50
        end>
    end
  end
  object ACBrTEFD: TACBrTEFD
    Identificacao.NomeAplicacao = 'ATENDPDV'
    Identificacao.VersaoAplicacao = '16.0.0.1'
    Identificacao.SoftwareHouse = 'P'#233'gasus'
    Identificacao.RazaoSocial = 'ESPENS & CIA LTDA ME'
    EsperaSTS = 7
    CHQEmGerencial = True
    SuportaSaque = False
    SuportaDesconto = False
    TEFDial.ArqLOG = 'TEF_DIAL.log'
    TEFDial.Habilitado = True
    TEFDial.ArqTemp = 'C:\TEF_DIAL\req\intpos.tmp'
    TEFDial.ArqReq = 'C:\TEF_DIAL\req\intpos.001'
    TEFDial.ArqSTS = 'C:\TEF_DIAL\resp\intpos.sts'
    TEFDial.ArqResp = 'C:\TEF_DIAL\resp\intpos.001'
    TEFDial.GPExeName = 'C:\TEF_DIAL\tef_dial.exe'
    TEFDisc.ArqTemp = 'C:\TEF_Disc\req\intpos.tmp'
    TEFDisc.ArqReq = 'C:\TEF_Disc\req\intpos.001'
    TEFDisc.ArqSTS = 'C:\TEF_Disc\resp\intpos.sts'
    TEFDisc.ArqResp = 'C:\TEF_Disc\resp\intpos.001'
    TEFDisc.GPExeName = 'C:\TEF_Disc\tef_Disc.exe'
    TEFHiper.ArqTemp = 'c:\HiperTEF\req\IntPos.tmp'
    TEFHiper.ArqReq = 'C:\HiperTEF\req\IntPos.001'
    TEFHiper.ArqSTS = 'C:\HiperTEF\resp\IntPos.sts'
    TEFHiper.ArqResp = 'C:\HiperTEF\resp\IntPos.001'
    TEFHiper.GPExeName = 'C:\HiperTEF\HiperTEF.exe'
    TEFCliSiTef.ArqLOG = 'CliSiTef.log'
    TEFCliSiTef.LogDebug = True
    TEFCliSiTef.EnderecoIP = '127.0.0.1'
    TEFCliSiTef.CodigoLoja = '00001019'
    TEFCliSiTef.NumeroTerminal = 'SW169562'
    TEFCliSiTef.OnExibeMenu = ACBrTEFD1CliSiTefExibeMenu
    TEFCliSiTef.OnObtemCampo = ACBrTEFD1CliSiTefObtemCampo
    TEFCliSiTef.UsaUTF8 = True
    TEFVeSPague.ArqLOG = 'VeSPague.log'
    TEFVeSPague.Aplicacao = 'ACBr_TEFDDemo'
    TEFVeSPague.AplicacaoVersao = '1.0'
    TEFVeSPague.GPExeName = 'C:\VeSPague\Client\VeSPagueClient.bat'
    TEFVeSPague.GPExeParams = '189.115.24.32 65432'
    TEFVeSPague.EnderecoIP = 'localhost'
    TEFVeSPague.Porta = '60906'
    TEFVeSPague.TimeOut = 500
    TEFVeSPague.TemPendencias = False
    TEFVeSPague.TransacaoCRT = 'Cartao Vender'
    TEFVeSPague.TransacaoCHQ = 'Cheque Consultar'
    TEFVeSPague.TransacaoCNC = 'Administracao Cancelar'
    TEFVeSPague.TransacaoReImpressao = 'Administracao Reimprimir'
    TEFVeSPague.TransacaoPendente = 'Administracao Pendente'
    TEFGPU.ArqTemp = 'C:\TEF_GPU\req\intpos.tmp'
    TEFGPU.ArqReq = 'C:\TEF_GPU\req\intpos.001'
    TEFGPU.ArqSTS = 'C:\TEF_GPU\resp\intpos.sts'
    TEFGPU.ArqResp = 'C:\TEF_GPU\resp\intpos.001'
    TEFGPU.GPExeName = 'C:\TEF_GPU\GPU.exe'
    TEFBanese.ArqTemp = 'C:\bcard\req\pergunta.tmp'
    TEFBanese.ArqReq = 'C:\bcard\req\pergunta.txt'
    TEFBanese.ArqSTS = 'C:\bcard\resp\status.txt'
    TEFBanese.ArqResp = 'C:\bcard\resp\resposta.txt'
    TEFBanese.ArqRespBkp = 'C:\bcard\resposta.txt'
    TEFBanese.ArqRespMovBkp = 'C:\bcard\copiamovimento.txt'
    TEFAuttar.ArqTemp = 'C:\Auttar_TefIP\req\intpos.tmp'
    TEFAuttar.ArqReq = 'C:\Auttar_TefIP\req\intpos.001'
    TEFAuttar.ArqSTS = 'C:\Auttar_TefIP\resp\intpos.sts'
    TEFAuttar.ArqResp = 'C:\Auttar_TefIP\resp\intpos.001'
    TEFAuttar.GPExeName = 'C:\Program Files (x86)\Auttar\IntegradorTEF-IP.exe'
    TEFGood.ArqTemp = 'C:\good\gettemp.dat'
    TEFGood.ArqReq = 'C:\good\getreq.dat'
    TEFGood.ArqSTS = 'C:\good\getstat.dat'
    TEFGood.ArqResp = 'C:\good\getresp.dat'
    TEFGood.GPExeName = 'C:\good\GETGoodMed.exe'
    TEFFoxWin.ArqTemp = 'C:\FwTEF\req\intpos.tmp'
    TEFFoxWin.ArqReq = 'C:\FwTEF\req\intpos.001'
    TEFFoxWin.ArqSTS = 'C:\FwTEF\rsp\intpos.sts'
    TEFFoxWin.ArqResp = 'C:\FwTEF\rsp\intpos.001'
    TEFFoxWin.GPExeName = 'C:\FwTEF\bin\FwTEF.exe'
    TEFCliDTEF.ArqResp = ''
    TEFPetrocard.ArqTemp = 'C:\CardTech\req\intpos.tmp'
    TEFPetrocard.ArqReq = 'C:\CardTech\req\intpos.001'
    TEFPetrocard.ArqSTS = 'C:\CardTech\resp\intpos.sts'
    TEFPetrocard.ArqResp = 'C:\CardTech\resp\intpos.001'
    TEFPetrocard.GPExeName = 'C:\CardTech\sac.exe'
    TEFCrediShop.ArqTemp = 'C:\tef_cshp\req\intpos.tmp'
    TEFCrediShop.ArqReq = 'C:\tef_cshp\req\intpos.001'
    TEFCrediShop.ArqSTS = 'C:\tef_cshp\resp\intpos.sts'
    TEFCrediShop.ArqResp = 'C:\tef_cshp\resp\intpos.001'
    TEFCrediShop.GPExeName = 'C:\tef_cshp\vpos_tef.exe'
    TEFTicketCar.ArqTemp = 'C:\TCS\TX\INTTCS.tmp'
    TEFTicketCar.ArqReq = 'C:\TCS\TX\INTTCS.001'
    TEFTicketCar.ArqSTS = 'C:\TCS\RX\INTTCS.RET'
    TEFTicketCar.ArqResp = 'C:\TCS\RX\INTTCS.001'
    TEFTicketCar.GPExeName = 'C:\TCS\tcs.exe'
    TEFTicketCar.NumLoja = 0
    TEFTicketCar.NumCaixa = 0
    TEFTicketCar.AtualizaPrecos = False
    TEFConvCard.ArqTemp = 'C:\ger_convenio\tx\crtsol.tmp'
    TEFConvCard.ArqReq = 'C:\ger_convenio\tx\crtsol.001'
    TEFConvCard.ArqSTS = 'C:\ger_convenio\rx\crtsol.ok'
    TEFConvCard.ArqResp = 'C:\ger_convenio\rx\crtsol.001'
    TEFConvCard.GPExeName = 'C:\ger_convcard\convcard.exe'
    OnAguardaResp = ACBrTEFDAguardaResp
    OnExibeMsg = ACBrTEFDExibeMsg
    OnComandaECF = ACBrTEFDComandaECF
    OnComandaECFAbreVinculado = ACBrTEFDComandaECFAbreVinculado
    OnComandaECFImprimeVia = ACBrTEFDComandaECFImprimeVia
    OnInfoECF = ACBrTEFDInfoECF
    OnAntesFinalizarRequisicao = ACBrTEFDAntesFinalizarRequisicao
    OnMudaEstadoReq = ACBrTEFDMudaEstadoReq
    OnGravarLog = ACBrTEFDGravarLog
    Left = 242
    Top = 91
  end
  object TimerProcessaTransacao: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerProcessaTransacaoTimer
    Left = 120
    Top = 91
  end
end
