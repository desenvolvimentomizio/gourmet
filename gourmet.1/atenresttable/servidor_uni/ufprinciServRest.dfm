object fprinciServRest: TfprinciServRest
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Servidor Rodando ...'
  ClientHeight = 439
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF009999
    999999999999999999999999999994444F00F40F444444444444444444499C44
    4F00F40F444444444444444444499CC44F0F0F0F444444440000004444499CCC
    4F0F0F0F444440008888880044499CCCCF04F00F444008888888888804499CCC
    CF00000F4008F8F8F8F8888804499CCCCF04F00F0F8F88888888800004499CCC
    CF0F0040F8F8F8F8F800078804499CCCCCF0040F8F888F880077787804499CCC
    CCCFC0F8F8F8F8F00787878044499CCCCCCC0F8F8F8F80070878788044499CCC
    CCC0F8F8F8F807770787880444499CCCCCC0FFFF8F8077780878780444499CCC
    CC08F8F8F80F77870787804444499CCCCC0FFF8F80F0F7780878044444499CCC
    C0F8F8F8078F0F870787044444499CCCC0FF8FF07777F0F80880444444499CCC
    C0F8F8F077878F0F0804444444499CCC0FFFFF07777878F00044444444499CCC
    0FF8F000000000000F4F444444499CCC0FFFF07778787880F0F0F44444499CCC
    0FF807878787870CCF00F44444499CCC0FFF0778787870CCF000F44444499CCC
    0FF8078787800CCCCFFF0F4444499CCC0FF07878780CCCCCCCCCFF4444499CCC
    C0F0777700CCCCCCCCCCCC4444499CCCC0F07700CCCCCCCCCCCCCCC444499CCC
    CC0000CCCCCCCCCCCCCCCCCC44499CCCCCCCCCCCCCCCCCCCCCCCCCCCC4499CCC
    CCCCCCCCCCCCCCCCCCCCCCCCCC49999999999999999999999999999999990000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object plrodape: TPanel
    Left = 0
    Top = 408
    Width = 530
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object plip: TPanel
      Left = 1
      Top = 1
      Width = 168
      Height = 29
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object plbanco: TPanel
      Left = 169
      Top = 1
      Width = 128
      Height = 29
      Align = alLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object plrelogio: TPanel
      Left = 297
      Top = 1
      Width = 72
      Height = 29
      Align = alLeft
      Caption = '00:00:00'
      TabOrder = 2
    end
    object bfechar: TButton
      Left = 423
      Top = 4
      Width = 100
      Height = 25
      Caption = 'Fechar Servidor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = bfecharClick
    end
  end
  object erros: TMemo
    Left = 0
    Top = 41
    Width = 530
    Height = 360
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 530
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    Caption = 'ATEN'#199#195'O:  SERVIDOR DOS TABLES, N'#195'O FECHAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object btMinimizar: TButton
      Left = 407
      Top = 10
      Width = 100
      Height = 25
      Caption = 'Minimizar'
      TabOrder = 0
      OnClick = btMinimizarClick
    end
  end
  object consulta: TUniQuery
    Connection = conexao
    Left = 144
    Top = 144
  end
  object cfg: TUniQuery
    Connection = conexao
    SQL.Strings = (
      'select * from cfg, cfgmsai '
      'where cfg.cfgcodigo=cfgmsai.cfgcodigo')
    Left = 312
    Top = 64
    object cfgcfgidentificacao: TStringField
      FieldName = 'cfgidentificacao'
      Size = 50
    end
    object cfgcfgnumepedido: TIntegerField
      FieldName = 'cfgnumepedido'
    end
  end
  object inicializar: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = inicializarTimer
    Left = 328
    Top = 152
  end
  object qclb: TUniQuery
    Connection = conexao
    Left = 384
    Top = 64
  end
  object ioc: TUniQuery
    Connection = conexao
    Left = 176
    Top = 157
  end
  object imm: TUniQuery
    Connection = conexao
    AfterInsert = immAfterInsert
    Left = 136
    Top = 197
  end
  object ito: TUniQuery
    Connection = conexao
    Left = 464
    Top = 168
  end
  object qpro: TUniQuery
    Connection = conexao
    Left = 48
    Top = 149
  end
  object Query1: TUniQuery
    Connection = conexao
    Left = 464
    Top = 112
  end
  object Query: TUniQuery
    Connection = conexao
    Left = 464
    Top = 56
  end
  object unis: TUniQuery
    Connection = conexao
    Left = 384
    Top = 173
  end
  object pro: TUniQuery
    Connection = conexao
    Left = 176
    Top = 205
  end
  object clb: TUniQuery
    Connection = conexao
    Left = 56
    Top = 96
  end
  object zorc: TUniQuery
    Connection = conexao
    Left = 176
    Top = 104
  end
  object totais: TUniQuery
    Connection = conexao
    Left = 384
    Top = 120
  end
  object conexao: TUniConnection
    ProviderName = 'MySQL'
    Database = 'rei2805'
    Username = 'root'
    Server = '192.168.5.110'
    LoginPrompt = False
    AfterConnect = conexaoAfterConnect
    Left = 56
    Top = 200
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 56
    Top = 264
  end
  object UniSQLMonitor: TUniSQLMonitor
    Left = 184
    Top = 296
  end
  object eMesas: TUniQuery
    Connection = conexaoe
    Left = 64
    Top = 360
  end
  object atrazo: TUniQuery
    Connection = conexaoe
    SQL.Strings = (
      'SELECT'
      '  imm.immhorapedido,'
      '  imm.immhoraentrega'
      'FROM ito,'
      '     imm'
      'WHERE ito.itochave = imm.itochave'
      'AND imm.immimpresso = 1'
      'AND ito.stocodigo IN (1, 2)'
      'AND ito.orcchave = :orcchave'
      'order by   imm.immhoraentrega')
    Left = 104
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object atrazoimmhorapedido: TTimeField
      DisplayLabel = 'Pedido'
      FieldName = 'immhorapedido'
      EditMask = '!90:00;1;_'
    end
    object atrazoimmhoraentrega: TTimeField
      DisplayLabel = 'Entrega'
      FieldName = 'immhoraentrega'
      EditMask = '!90:00;1;_'
    end
  end
  object conexaoe: TUniConnection
    Left = 176
    Top = 352
  end
  object zorci: TUniQuery
    Connection = conexao
    Left = 8
    Top = 200
  end
end
