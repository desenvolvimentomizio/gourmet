object fdov: Tfdov
  Left = 0
  Top = 0
  ActiveControl = listaItens
  Caption = 'Opera'#231#227'o'
  ClientHeight = 531
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PlBotoes: TPanel
    Left = 0
    Top = 30
    Width = 100
    Height = 501
    Align = alLeft
    ParentBackground = False
    TabOrder = 0
    object ImageLogoBase: TImage
      Left = 1
      Top = 421
      Width = 98
      Height = 61
      Align = alBottom
      AutoSize = True
    end
    object PlInfo: TPanel
      Left = 1
      Top = 482
      Width = 98
      Height = 18
      Align = alBottom
      Alignment = taLeftJustify
      BevelOuter = bvLowered
      BorderWidth = 2
      Caption = 'ProductVersion'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object bConfirma: TBitBtn
      Left = 1
      Top = 1
      Width = 98
      Height = 24
      Hint = 'ENTER - Confirma o registro '
      Align = alTop
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bConfirmaClick
    end
  end
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 30
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 6
    Caption = 'Defini'#231#227'o de Opera'#231#227'o'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object plid: TPanel
      Left = 876
      Top = 6
      Width = 126
      Height = 18
      Align = alRight
      BevelOuter = bvNone
      Caption = '00-00-000'
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 100
    Top = 30
    Width = 908
    Height = 501
    Align = alClient
    TabOrder = 2
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 906
      Height = 35
      Align = alTop
      Caption = 'Defina a Opera'#231#227'o para cada item.'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object listaItens: TDBGrid
      Left = 1
      Top = 36
      Width = 906
      Height = 464
      Align = alClient
      DataSource = DSItm
      DrawingStyle = gdsGradient
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnColEnter = listaItensColEnter
      OnColExit = listaItensColExit
      OnDrawColumnCell = listaItensDrawColumnCell
      OnKeyDown = listaItensKeyDown
      OnKeyPress = listaItensKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'procodigo'
          ReadOnly = True
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pronome'
          ReadOnly = True
          Width = 380
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'toecodigo'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'toeidentificacao'
          ReadOnly = True
          Width = 370
          Visible = True
        end>
    end
  end
  object itm: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  itm.itmchave,'
      '  itm.procodigo,'
      '  itm.toecodigo,'
      '  itm.cfocfop,'
      '  itm.cfocfopdestinacao '
      'FROM itm '
      'WHERE itm.meschave = :meschave')
    Left = 288
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object itmprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
    end
    object itmpronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigo'
      Size = 150
      Lookup = True
    end
    object itmtoecodigo: TIntegerField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'toecodigo'
    end
    object itmtoeidentificacao: TStringField
      DisplayLabel = 'Descri'#231#227'o da Opera'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'toeidentificacao'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'toecodigo'
      Size = 100
      Lookup = True
    end
    object itmcfocfop: TStringField
      FieldName = 'cfocfop'
      Size = 5
    end
    object itmcfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
  end
  object DSItm: TUniDataSource
    DataSet = itm
    OnStateChange = DSItmStateChange
    Left = 232
    Top = 168
  end
  object pro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pro.procodigo,'
      '  pro.pronome'
      'FROM pro')
    Left = 344
    Top = 248
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
  end
  object toe: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  toe.toecodigo,'
      '  toe.toeidentificacao'
      'FROM toe')
    Left = 392
    Top = 248
    object toetoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Size = 100
    end
  end
  object qConsulta: TUniQuery
    Left = 296
    Top = 304
  end
  object qNoEstado: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  vDest.UFDestinatario,'
      '  vEmit.UFEmitente'
      'FROM'
      '/*Busca UF do DESTINAT'#193'RIO*/'
      '(SELECT'
      '    edr.ufscodigo AS UFDestinatario'
      '  FROM edr'
      '  WHERE edr.etdcodigo = :etdcodigo'
      '  AND edr.edritem = :edritem) vDest,'
      ''
      '/*Busca UF do EMITENTE*/'
      '(SELECT'
      '    edr.ufscodigo AS UFEmitente'
      '  FROM edr,'
      '       cfgmcfg'
      '  WHERE edr.etdcodigo = cfgmcfg.cfgetdempresa) vEmit')
    Left = 460
    Top = 302
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'edritem'
        Value = nil
      end>
    object qNoEstadoUFDestinatario: TStringField
      FieldName = 'UFDestinatario'
      Size = 2
    end
    object qNoEstadoUFEmitente: TStringField
      FieldName = 'UFEmitente'
      Size = 2
    end
  end
end
