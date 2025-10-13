inherited fitmimv: Tfitmimv
  ActiveControl = listaitens
  Caption = 'Entrada de Estoque por Varia'#231#227'o'
  ClientHeight = 661
  ClientWidth = 1008
  ExplicitWidth = 1024
  ExplicitHeight = 700
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 632
    Width = 1008
    ExplicitTop = 632
    ExplicitWidth = 1008
    inherited bconfirma: TBitBtn
      Left = 854
      ExplicitLeft = 854
    end
    inherited bcancela: TBitBtn
      Left = 929
      Visible = False
      ExplicitLeft = 929
    end
    inherited bfechar: TBitBtn
      Left = 789
      ExplicitLeft = 789
    end
  end
  inherited paginas: TPageControl
    Width = 1008
    Height = 632
    ExplicitWidth = 1008
    ExplicitHeight = 632
    inherited Principal: TTabSheet
      object PlDetalhe: TPanel
        Left = 0
        Top = 0
        Width = 1000
        Height = 604
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 0
        object PlItens: TPanel
          Left = 4
          Top = 4
          Width = 992
          Height = 596
          CustomHint = BalloonHint
          Align = alClient
          TabOrder = 0
          object SpDetalhe: TSplitter
            Left = 1
            Top = 312
            Width = 990
            Height = 3
            Cursor = crVSplit
            CustomHint = BalloonHint
            Align = alBottom
          end
          object PlObs: TPanel
            Left = 1
            Top = 315
            Width = 990
            Height = 280
            CustomHint = BalloonHint
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object PlObsdetalhe: TPanel
              Left = 0
              Top = 0
              Width = 990
              Height = 280
              CustomHint = BalloonHint
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object Panel2: TPanel
                Left = 0
                Top = 0
                Width = 990
                Height = 24
                CustomHint = BalloonHint
                Align = alTop
                BevelOuter = bvNone
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
                object Panel4: TPanel
                  Left = 0
                  Top = 0
                  Width = 160
                  Height = 24
                  CustomHint = BalloonHint
                  Align = alLeft
                  BevelOuter = bvNone
                  Caption = 'Varia'#231#245'es de Produtos'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                end
              end
              object DBListaVar: TDBGrid
                Left = 0
                Top = 24
                Width = 990
                Height = 256
                CustomHint = BalloonHint
                Align = alClient
                DataSource = DSVrpImv
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                ParentFont = False
                TabOrder = 1
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                OnColEnter = DBListaVarColEnter
                OnDrawColumnCell = DBListaVarDrawColumnCell
                OnKeyDown = DBListaVarKeyDown
                OnKeyPress = DBListaVarKeyPress
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'procodigo'
                    ReadOnly = True
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'vrpcodigo'
                    ReadOnly = True
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'pronome'
                    ReadOnly = True
                    Width = 350
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'imvquantidade'
                    Visible = True
                  end>
              end
            end
          end
          object listaitens: TDBGrid
            Left = 1
            Top = 25
            Width = 990
            Height = 287
            CustomHint = BalloonHint
            Align = alClient
            DataSource = DSRegistro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = listaitensDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'itmchave'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'procodigo'
                Width = 65
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
                FieldName = 'unisimbolo'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmquantidade'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmvalor'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmtotal'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmdesconto'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmsaldo'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Diferenca'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'procodigoori'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pronomeori'
                Visible = True
              end>
          end
          object plbotoesitens: TPanel
            Left = 1
            Top = 1
            Width = 990
            Height = 24
            CustomHint = BalloonHint
            Align = alTop
            BevelOuter = bvLowered
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
            object Panel3: TPanel
              Left = 1
              Top = 1
              Width = 150
              Height = 22
              CustomHint = BalloonHint
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'Itens da Nota Fiscal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 52
    Top = 456
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  itm.itmchave,'
      '  itm.procodigo,'
      '  pro.pronome,'
      '  itm.pronomeori,'
      '  itm.procodigoori,'
      '  SUM(itm.itmquantidade * itm.itmcontendo) AS itmquantidade,'
      '  uni.unisimbolo,'
      '  itm.itmvalor,'
      '  SUM(itm.itmtotal) AS itmtotal,'
      '  SUM(itm.itmdesconto) AS itmdesconto,'
      '  SUM(itm.itmtotal - itm.itmdesconto) AS itmsaldo'
      'FROM itm'
      '  JOIN pro'
      '    ON itm.procodigo = pro.procodigo'
      '  CROSS JOIN uni'
      '    ON itm.unicodigobase = uni.unicodigo'
      'WHERE itm.meschave = :meschave'
      'AND IFNULL(pro.gracodigo, 0) > 0'
      'GROUP BY itm.procodigo'
      'ORDER BY itm.itmitem')
    OnCalcFields = registroCalcFields
    Left = 52
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object registroitmchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'itmchave'
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
    end
    object registropronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      Size = 150
    end
    object registrounisimbolo: TStringField
      DisplayLabel = 'Un.'
      FieldName = 'unisimbolo'
      Size = 6
    end
    object registroitmquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itmquantidade'
    end
    object registroitmvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itmvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmtotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itmtotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmdesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'itmdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroitmsaldo: TFloatField
      DisplayLabel = 'Saldo R$'
      FieldName = 'itmsaldo'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroDiferenca: TFloatField
      DisplayLabel = 'Diferen'#231'a'
      FieldKind = fkCalculated
      FieldName = 'Diferenca'
      Calculated = True
    end
    object registroprocodigoori: TStringField
      DisplayLabel = 'C'#243'digo Fornecedor'
      FieldName = 'procodigoori'
    end
    object registropronomeori: TStringField
      DisplayLabel = 'Descri'#231#227'o Fornecedor'
      FieldName = 'pronomeori'
      Size = 80
    end
  end
  object vtVrpImv: TVirtualTable [17]
    IndexFieldNames = 'pronome'
    FieldDefs = <
      item
        Name = 'vrpcodigo'
        DataType = ftInteger
      end
      item
        Name = 'itmchave'
        DataType = ftInteger
      end
      item
        Name = 'procodigo'
        DataType = ftInteger
      end
      item
        Name = 'pronome'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'imvquantidade'
        DataType = ftFloat
      end>
    AfterInsert = vtVrpImvAfterInsert
    Left = 128
    Top = 392
    Data = {
      030005000900767270636F6469676F0300000000000000080069746D63686176
      650300000000000000090070726F636F6469676F030000000000000007007072
      6F6E6F6D6501009600000000000D00696D767175616E74696461646506000000
      00000000000000000000}
    object vtVrpImvvrpcodigo: TIntegerField
      DisplayLabel = 'Varia'#231#227'o'
      FieldName = 'vrpcodigo'
    end
    object vtVrpImvitmchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'itmchave'
    end
    object vtVrpImvprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
    end
    object vtVrpImvpronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      Size = 150
    end
    object vtVrpImvimvquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'imvquantidade'
      OnSetText = vtVrpImvimvquantidadeSetText
    end
  end
  object DSVrpImv: TUniDataSource [18]
    DataSet = vtVrpImv
    Left = 192
    Top = 392
  end
  object vrp: TUniQuery [19]
    SQL.Strings = (
      'SELECT'
      '  vv.vrpcodigo,'
      '  itm.itmchave,'
      '  itm.procodigo,'
      '  vv.pronome,'
      '  IFNULL(imv.imvquantidade, 0) AS imvquantidade'
      'FROM v_vrp vv'
      '  LEFT JOIN pro'
      '    ON vv.procodigo = pro.procodigo'
      '  JOIN itm'
      '    ON pro.procodigo = itm.procodigo'
      '  LEFT JOIN imv'
      
        '    ON itm.itmchave = imv.itmchave AND vv.vrpcodigo = imv.vrpcod' +
        'igo'
      'WHERE IFNULL(pro.gracodigo, 0) > 0'
      'AND itm.meschave = :meschave')
    Left = 200
    Top = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object vrpvrpcodigo: TIntegerField
      FieldName = 'vrpcodigo'
    end
    object vrpitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object vrpprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object vrppronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
    object vrpimvquantidade: TFloatField
      FieldName = 'imvquantidade'
    end
  end
  object vtImvTotal: TVirtualTable [20]
    Left = 280
    Top = 392
    Data = {03000000000000000000}
    object vtImvTotalitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object vtImvTotalimvquantidade: TFloatField
      FieldName = 'imvquantidade'
    end
  end
  object imv: TUniQuery [21]
    SQL.Strings = (
      'SELECT'
      '  imv.imvchave,'
      '  imv.itmchave,'
      '  imv.vrpcodigo,'
      '  imv.imvquantidade'
      'FROM imv'
      'WHERE imv.itmchave = :itmchave')
    Left = 153
    Top = 479
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itmchave'
        Value = nil
      end>
    object imvimvchave: TIntegerField
      FieldName = 'imvchave'
    end
    object imvitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object imvvrpcodigo: TIntegerField
      FieldName = 'vrpcodigo'
    end
    object imvimvquantidade: TFloatField
      FieldName = 'imvquantidade'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
