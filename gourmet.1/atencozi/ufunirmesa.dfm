object funirmesa: Tfunirmesa
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Unir / Transferir Mesas'
  ClientHeight = 595
  ClientWidth = 881
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object btenviatodos: TSpeedButton
    Left = 419
    Top = 152
    Width = 33
    Height = 33
    Caption = '>>'
    OnClick = btenviatodosClick
  end
  object btenviaitem: TSpeedButton
    Left = 419
    Top = 191
    Width = 33
    Height = 33
    Caption = '>'
    OnClick = btenviaitemClick
  end
  object btvoltatodos: TSpeedButton
    Left = 419
    Top = 447
    Width = 33
    Height = 33
    Caption = '<<'
    OnClick = btvoltatodosClick
  end
  object btvoltaitem: TSpeedButton
    Left = 419
    Top = 486
    Width = 33
    Height = 33
    Caption = '<'
    OnClick = btvoltaitemClick
  end
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 881
    Height = 30
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 6
    Caption = 'MESAS'
    Color = 16765606
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object pbotoes: TPanel
    Left = 0
    Top = 566
    Width = 881
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 1
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 141
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object bconfirma: TBitBtn
      Left = 727
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 802
      Top = 4
      Width = 75
      Height = 21
      Hint = 'Esc - Cancela'
      Align = alRight
      Caption = 'Cancela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bcancelaClick
    end
  end
  object plmesaori: TPanel
    Left = 0
    Top = 30
    Width = 373
    Height = 536
    Align = alLeft
    TabOrder = 2
    object Label1: TLabel
      Left = 12
      Top = 20
      Width = 42
      Height = 19
      Caption = 'Mesa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object origem: TEdit
      Left = 72
      Top = 17
      Width = 41
      Height = 27
      TabStop = False
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = FormKeyPress
    end
    object listaorigem: TDBGrid
      Left = 1
      Top = 60
      Width = 371
      Height = 475
      TabStop = False
      Color = 13303807
      DataSource = Dori
      DrawingStyle = gdsGradient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDblClick = listaorigemDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'procodigo'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pronome'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'itoquantidade'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'unisimbolo'
          Width = 25
          Visible = True
        end>
    end
  end
  object plmesades: TPanel
    Left = 513
    Top = 30
    Width = 368
    Height = 536
    Align = alRight
    TabOrder = 3
    object Label2: TLabel
      Left = 12
      Top = 20
      Width = 42
      Height = 19
      Caption = 'Mesa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object destino: TEdit
      Left = 68
      Top = 17
      Width = 41
      Height = 27
      Color = 14548923
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = destinoExit
      OnKeyPress = FormKeyPress
    end
    object listadestino: TDBGrid
      Left = -3
      Top = 60
      Width = 371
      Height = 475
      TabStop = False
      Color = 14548923
      DataSource = Ddes
      DrawingStyle = gdsGradient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDblClick = listadestinoDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'procodigo'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'pronome'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'itoquantidade'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'unisimbolo'
          Width = 25
          Visible = True
        end>
    end
  end
  object litoori: TUniQuery
    Connection = fprincirest.Conexao
    SQL.Strings = (
      'SELECT '
      '    ito.itochave,'
      '    ito.itoitem,'
      '    ito.itoquantidade,'
      '    ito.procodigo,'
      '    pro.pronome,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itovalorav,'
      '        ito.itovalorap) AS itovalor,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itototalav,'
      '        ito.itototalap) AS itototal,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itodescontoav,'
      '        ito.itodescontoap) AS itodesconto,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itosaldoav,'
      '        ito.itosaldoap) AS itosaldo,'
      '    pro.prosaldodisp,'
      '    uni.unisimbolo,'
      '    ito.unicodigo,'
      '    ito.orcchave,'
      '    ito.tdecodigo,'
      '    pro.proreferencia,'
      '    ito.itoproservico,'
      '    ito.itoinfadprod,'
      '   pro.tpocodigo,'
      '   ito.itoprocomple,'
      '  imm.immhorapedido,'
      ' imm.immhoraentrega'
      'FROM'
      '    ito,'
      '    pro,'
      '    uni,'
      '    imm,'
      '    orc'
      'WHERE'
      '    ito.orcchave = orc.orcchave'
      '        AND ito.procodigo = pro.procodigo'
      '        AND ito.itochave = imm.itochave'
      '        AND imm.immimpresso=1'
      '        AND ito.unicodigo = uni.unicodigo'
      '        AND ito.stocodigo IN (1, 2)'
      '        AND ito.orcchave = :orcchave')
    ReadOnly = True
    AutoCalcFields = False
    Left = 240
    Top = 284
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object litooriitochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'itochave'
    end
    object litooriorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object litooriprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object litooripronome: TStringField
      DisplayLabel = 'Produto / Servi'#231'o'
      FieldName = 'pronome'
      Required = True
      Size = 150
    end
    object litooriitoquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itoquantidade'
    end
    object litooriunisimbolo: TStringField
      DisplayLabel = 'Uni.'
      DisplayWidth = 6
      FieldName = 'unisimbolo'
      Required = True
      Size = 6
    end
  end
  object litodes: TUniQuery
    SQL.Strings = (
      'SELECT '
      '    ito.itochave,'
      '    ito.itoitem,'
      '    ito.itoquantidade,'
      '    ito.procodigo,'
      '    pro.pronome,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itovalorav,'
      '        ito.itovalorap) AS itovalor,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itototalav,'
      '        ito.itototalap) AS itototal,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itodescontoav,'
      '        ito.itodescontoap) AS itodesconto,'
      '    IF(orc.puocodigo = 0,'
      '        ito.itosaldoav,'
      '        ito.itosaldoap) AS itosaldo,'
      '    pro.prosaldodisp,'
      '    uni.unisimbolo,'
      '    ito.unicodigo,'
      '    ito.orcchave,'
      '    ito.tdecodigo,'
      '    pro.proreferencia,'
      '    ito.itoproservico,'
      '    ito.itoinfadprod,'
      '   pro.tpocodigo,'
      '   ito.itoprocomple,'
      '  imm.immhorapedido,'
      ' imm.immhoraentrega'
      'FROM'
      '    ito,'
      '    pro,'
      '    uni,'
      '    imm,'
      '    orc'
      'WHERE'
      '    ito.orcchave = orc.orcchave'
      '        AND ito.procodigo = pro.procodigo'
      '        AND ito.itochave = imm.itochave'
      '        AND imm.immimpresso=1'
      '        AND ito.unicodigo = uni.unicodigo'
      '        AND ito.stocodigo IN (1, 2)'
      '        AND ito.orcchave = :orcchave')
    ReadOnly = True
    AutoCalcFields = False
    Left = 564
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object litodesitochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'itochave'
    end
    object litodesorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object litodesprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object litodespronome: TStringField
      DisplayLabel = 'Produto / Servi'#231'o'
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object litodesitoquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itoquantidade'
    end
    object litodesunisimbolo: TStringField
      DisplayLabel = 'Uni.'
      DisplayWidth = 6
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
  end
  object ori: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 204
    Top = 188
    object oriitochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'itochave'
    end
    object oriorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object oriprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object oripronome: TStringField
      DisplayLabel = 'Produto / Servi'#231'o'
      FieldName = 'pronome'
      Required = True
      Size = 150
    end
    object oriitoquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itoquantidade'
    end
    object oriunisimbolo: TStringField
      DisplayLabel = 'Uni.'
      DisplayWidth = 6
      FieldName = 'unisimbolo'
      Required = True
      Size = 6
    end
  end
  object des: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 656
    Top = 212
    object desitochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'itochave'
    end
    object desorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object desprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object despronome: TStringField
      DisplayLabel = 'Produto / Servi'#231'o'
      FieldName = 'pronome'
      Required = True
      Size = 150
    end
    object desitoquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itoquantidade'
    end
    object desunisimbolo: TStringField
      DisplayLabel = 'Uni.'
      DisplayWidth = 6
      FieldName = 'unisimbolo'
      Required = True
      Size = 6
    end
  end
  object Ddes: TUniDataSource
    DataSet = des
    Left = 700
    Top = 212
  end
  object Dori: TUniDataSource
    DataSet = ori
    Left = 140
    Top = 188
  end
  object consulta: TUniQuery
    Connection = fprincirest.Conexao
    Left = 420
    Top = 248
  end
end
