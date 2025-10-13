object fvpr: Tfvpr
  Left = 0
  Top = 0
  Caption = 'Verifica'#231#227'o de Itens'
  ClientHeight = 352
  ClientWidth = 1008
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PlBotoes: TPanel
    Left = 0
    Top = 28
    Width = 100
    Height = 324
    Align = alLeft
    ParentBackground = False
    TabOrder = 0
    object ImageLogoBase: TImage
      Left = 1
      Top = 244
      Width = 98
      Height = 61
      Align = alBottom
      AutoSize = True
    end
    object PlInfo: TPanel
      Left = 1
      Top = 305
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
    object BFechar: TBitBtn
      Left = 1
      Top = 1
      Width = 98
      Height = 25
      Align = alTop
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = BFecharClick
    end
  end
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1008
    Height = 28
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 6
    Caption = 'Verifica'#231#227'o de Itens para emiss'#227'o de Documento Fiscal'
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
      Height = 16
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
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 100
    Top = 28
    Width = 908
    Height = 324
    Align = alClient
    TabOrder = 2
    object DBGLista: TDBGrid
      Left = 1
      Top = 36
      Width = 906
      Height = 245
      Align = alTop
      BorderStyle = bsNone
      Color = clCream
      DataSource = DSItmPro
      DrawingStyle = gdsGradient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBGListaDrawColumnCell
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
          Width = 340
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'proncm'
          Width = 61
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantidade'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'prosaldo'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tpoidentificacao'
          Width = 200
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PodeSaldo'
          Width = 30
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PodeNCM'
          Width = 30
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PodeTipo'
          Width = 30
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 906
      Height = 35
      Align = alTop
      Alignment = taLeftJustify
      Caption = 'Verifique o Saldo, NCM ou Tipo de Produto dos itens abaixo.'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object plIdChaveFilial: TPanel
        Left = 576
        Top = 1
        Width = 329
        Height = 33
        Align = alRight
        Alignment = taRightJustify
        BevelOuter = bvNone
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 296
      Width = 906
      Height = 27
      Align = alBottom
      TabOrder = 2
      object ImgCorretos: TImage
        Left = 646
        Top = 6
        Width = 16
        Height = 16
      end
      object ImgErros: TImage
        Left = 790
        Top = 6
        Width = 16
        Height = 16
      end
      object Label1: TLabel
        Left = 668
        Top = 5
        Width = 79
        Height = 16
        Caption = 'Itens corretos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 812
        Top = 5
        Width = 84
        Height = 16
        Caption = 'Itens com erro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object ItmPro: TUniQuery
    SQL.Strings = (
      'SELECT itm.procodigo'
      '     , pro.pronome'
      '     , pro.proncm'
      
        '     , ROUND(SUM(itm.itmquantidade * itm.itmcontendo), 5)       ' +
        '                          AS quantidade'
      '     , pro.tpocodigo'
      '     , tpo.tpoidentificacao'
      '     , pro.prosaldo'
      '     , mes.toecodigo'
      '     , toe.ttecodigo'
      '     , IF(tpo.tpocodigo IN (SELECT otp.tpocodigo'
      '                              FROM otp'
      
        '                             WHERE mes.toecodigo = otp.toecodigo' +
        '), '#39'1'#39', '#39'0'#39')              AS itmPodeTipo'
      
        '     , IF((ROUND(SUM(itm.itmquantidade * itm.itmcontendo), 5) <=' +
        ' pro.prosaldo), '#39'1'#39', IF(pro.proestoque='#39'0'#39','#39'1'#39',  '#39'0'#39')) AS itmPod' +
        'eSaldo'
      '     , IF((SELECT tcg.tcgncm'
      '             FROM tcg'
      
        '            WHERE pro.proncm = tcg.tcgncm LIMIT 1) IS NOT NULL, ' +
        #39'1'#39', IF((select ttocodigo from toe  where toecodigo=itm.toecodig' +
        'o limit 1)=6    ,'#39'1'#39','#39'0'#39'))                 AS itmPodeNCM'
      '  FROM itm'
      ' INNER JOIN pro ON itm.procodigo = pro.procodigo'
      ' INNER JOIN tpo ON pro.tpocodigo = tpo.tpocodigo'
      ' INNER JOIN mes ON mes.meschave = itm.meschave'
      ''
      ' INNER JOIN toe ON itm.toecodigo = toe.toecodigo'
      ' INNER JOIN (SELECT @Quantidade := 0) Contador'
      ' WHERE tpo.tpocodigo <> 9'
      '   AND itm.meschave = :meschave'
      '   AND itm.flacodigo = :flacodigo'
      ' GROUP BY itm.procodigo;')
    OnCalcFields = ItmProCalcFields
    Left = 200
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object ItmProprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
    end
    object ItmPropronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      Size = 255
    end
    object ItmProquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
    object ItmProtpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object ItmProprosaldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'prosaldo'
    end
    object ItmProttecodigo: TIntegerField
      FieldName = 'ttecodigo'
    end
    object ItmProtoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object ItmProtpoidentificacao: TStringField
      DisplayLabel = 'Tipo de Produto'
      FieldName = 'tpoidentificacao'
      Size = 50
    end
    object ItmProproncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'proncm'
      Size = 8
    end
    object ItmProPodeNCM: TBooleanField
      DisplayLabel = 'NCM'
      FieldKind = fkCalculated
      FieldName = 'PodeNCM'
      Calculated = True
    end
    object ItmProPodeSaldo: TBooleanField
      DisplayLabel = 'Saldo'
      FieldKind = fkCalculated
      FieldName = 'PodeSaldo'
      Calculated = True
    end
    object ItmProPodeTipo: TBooleanField
      DisplayLabel = 'Tipo'
      FieldKind = fkCalculated
      FieldName = 'PodeTipo'
      Calculated = True
    end
    object ItmProitmPodeTipo: TStringField
      FieldName = 'itmPodeTipo'
    end
    object ItmProitmPodeSaldo: TStringField
      FieldName = 'itmPodeSaldo'
    end
    object ItmProitmPodeNCM: TStringField
      FieldName = 'itmPodeNCM'
    end
  end
  object DSItmPro: TUniDataSource
    DataSet = ItmPro
    Left = 264
    Top = 184
  end
  object ImageList: TImageList
    Left = 424
    Top = 192
    Bitmap = {
      494C010102005400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF010000
      0000FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF0100000000FFFFFF01FFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01000000001A1A
      D5FF00000000FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF010000
      00001A1AD5FF00000000FFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01C8D8CD39FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01000000001A1AD5FF1A1A
      D5FF1A1AD5FF00000000FFFFFF01FFFFFF01FFFFFF01FFFFFF01000000001A1A
      D5FF1A1AD5FF1A1AD5FF00000000FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FCFCFC0372BA879911BC42FF7DBD8F8DFFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01000000001A1AD5FF1A1AD5FF1A1A
      D5FF1A1AD5FF1A1AD5FF00000000FFFFFF01FFFFFF01000000001A1AD5FF1A1A
      D5FF1A1AD5FF1A1AD5FF1A1AD5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01FFFFFF01FFFFFF01F6F7
      F60962B97CAD19C04AFF1AC04BFF19C04AFF6DBB84A1FAFAFA05FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01000000001A1AD5FF1A1A
      D5FF1A1AD5FF1A1AD5FF1A1AD5FF00000000000000001A1AD5FF1A1AD5FF1A1A
      D5FF1A1AD5FF1A1AD5FF00000000FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01FFFFFF01EEF2EF1153BA
      72C124C555FF27C557FF27C557FF27C557FF23C555FF60BA7BB3F6F8F609FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01000000001A1A
      D5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1A
      D5FF1A1AD5FF00000000FFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01E5EBE71B4BBC6FD132CA
      62FF35CB64FF35CB64FF35CB64FF35CB64FF35CB64FF31CA61FF56BD76C3EFF2
      F011FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF010000
      00001A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1919D5FF1A1A
      D5FF00000000FFFFFF01FFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DBE5DE2746C16EDF40D070FF44D1
      72FF44D172FF3CCF6DFF33C864FB3FD06FFF44D172FF44D172FF3FD06FFF50C0
      75D1E6ECE81BFFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01000000001A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF0000
      0000FFFFFF01FFFFFF01FFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3CCB1693DD16FFF52D77FFF53D7
      7FFF47D476FF69C186B3E2EBE51F57C27BCB4AD579FF53D77FFF53D77FFF4ED6
      7CFF4DC476DDDDE7E025FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01000000001A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF0000
      000000000000FFFFFF01FFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01A7CEB56546D478FD4ED8
      7EFF7BC5959FFAFBFA05FFFFFF01F2F5F30D68C388B953D982FF60DC8CFF60DC
      8CFF5CDB89FF4CCB79E9D1E1D733FFFFFF01FFFFFF01FFFFFF01FFFFFF010000
      00001A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1A
      D5FF00000000FFFFFF01FFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01FFFFFF01B6D5C15594CA
      A781FFFFFF01FFFFFF01FFFFFF01FFFFFF01FAFBFA057AC696A359DD89FF6DE1
      97FF6DE197FF6AE095FF4FD07EF1C8DCCF3FFFFFFF01FFFFFF01000000001A1A
      D5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1AD5FF1A1A
      D5FF1A1AD5FF00000000FFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF018CC8A38D5EE0
      8EFF77E5A0FF72E49DFF55D284EDCDDFD439FFFFFF01000000001A1AD5FF1A1A
      D5FF1A1AD5FF1A1AD5FF1A1AD5FF00000000000000001A1AD5FF1A1AD5FF1A1A
      D5FF1A1AD5FF1A1AD5FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01A1CD
      B2735DE08FFD5FD18BDFDBE7E029FFFFFF01000000001A1AD5FF1A1AD5FF1A1A
      D5FF1A1AD5FF1A1AD5FF00000000FFFFFF01FFFFFF01000000001A1AD5FF1A1A
      D5FF1A1AD5FF1A1AD5FF1A1AD5FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01C2D8CB47E9EFEB19FFFFFF01FFFFFF01FFFFFF01000000001A1AD5FF1A1A
      D5FF1A1AD5FF00000000FFFFFF01FFFFFF01FFFFFF01FFFFFF01000000001A1A
      D5FF1A1AD5FF1A1AD5FF00000000FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01000000001A1A
      D5FF00000000FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF010000
      00001A1AD5FF0000000000000000FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF010000
      0000FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFFFF01FFFF
      FF0100000000FFFFFF01FFFFFF01FFFFFF010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000001008000000000000281400000000
      0000442200000000000082410000000000004182000000000000200400000000
      0000100800000000000008100000000000000818000000000000100800000000
      0000200400000000000041830000000000008241000000000000442200000000
      0000281600000000000010080000000000000000000000000000000000000000
      000000000000}
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgmsai.cfgcodigo,'
      '  cfgmsai.cfgcontrolaestoque,'
      '  cfgmsai.cfgcontrolaestoquedisp,'
      ''
      '  /*Identifica se utiliza PDV*/'
      '  cfg.cfgusapdv'
      'FROM cfg,'
      '     cfgmsai'
      'WHERE cfg.cfgcodigo = cfgmsai.cfgcodigo')
    Left = 340
    Top = 124
    object cfgcfgcontrolaestoque: TIntegerField
      FieldName = 'cfgcontrolaestoque'
    end
    object cfgcfgusapdv: TIntegerField
      FieldName = 'cfgusapdv'
    end
  end
  object tcg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tcg.tcgncm'
      'FROM tcg'
      'WHERE tcg.tcgncm = :tcgncm')
    Left = 412
    Top = 124
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcgncm'
        Value = nil
      end>
    object tcgtcgncm: TStringField
      FieldName = 'tcgncm'
      Size = 8
    end
  end
  object mes: TUniQuery
    SQL.Strings = (
      'SELECT m.meschave'
      'FROM mes m'
      'WHERE CASE m.tdfcodigo'
      '  WHEN '#39'2D'#39' THEN m.temcodigo = 9'
      '  WHEN '#39'55'#39' THEN m.temcodigo = 4'
      '  WHEN '#39'65'#39' THEN m.temcodigo = 4'
      'END'
      'AND m.meschave = :meschave'
      'AND m.flacodigo = :flacodigo')
    Left = 340
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
  end
end
