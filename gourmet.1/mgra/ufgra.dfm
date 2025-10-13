inherited fgra: Tfgra
  ActiveControl = graidentificacao
  Caption = 'Grade de Produtos'
  ClientWidth = 367
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Width = 367
    inherited bconfirma: TBitBtn
      Left = 213
    end
    inherited bcancela: TBitBtn
      Left = 288
    end
    inherited bfechar: TBitBtn
      Left = 148
    end
  end
  inherited paginas: TPageControl
    Width = 367
    inherited Principal: TTabSheet
      object Bvregistro: TBevel
        Left = 0
        Top = 0
        Width = 359
        Height = 121
        CustomHint = BalloonHint
        Align = alTop
        Shape = bsBottomLine
      end
      object Label1: TLabel
        Left = 24
        Top = 32
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = gracodigo
      end
      object Label2: TLabel
        Left = 24
        Top = 59
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = graidentificacao
      end
      object gracodigo: TDBEdit
        Left = 103
        Top = 29
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gracodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object graidentificacao: TDBEdit
        Left = 103
        Top = 56
        Width = 150
        Height = 21
        CustomHint = BalloonHint
        DataField = 'graidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object bvalidar: TButton
        Left = 259
        Top = 56
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 2
        OnClick = bvalidarClick
      end
      object PlDetalhe: TPanel
        Left = 0
        Top = 121
        Width = 359
        Height = 255
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 3
        Visible = False
        object PlItens: TPanel
          Left = 4
          Top = 4
          Width = 351
          Height = 247
          CustomHint = BalloonHint
          Align = alClient
          TabOrder = 0
          object listaitens: TDBGrid
            Left = 1
            Top = 25
            Width = 349
            Height = 221
            CustomHint = BalloonHint
            Align = alClient
            DataSource = DSgat
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = listaitensDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'atrcodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'atridentificacao'
                Visible = True
              end>
          end
          object plbotoesitens: TPanel
            Left = 1
            Top = 1
            Width = 349
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
            TabOrder = 1
            object BActIncluir: TBitBtn
              Left = 90
              Top = 1
              Width = 64
              Height = 22
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'Incluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = BActIncluirClick
            end
            object BActAlterar: TBitBtn
              Left = 154
              Top = 1
              Width = 64
              Height = 22
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'Alterar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Visible = False
            end
            object BActEcluir: TBitBtn
              Left = 218
              Top = 1
              Width = 64
              Height = 22
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = BActEcluirClick
            end
            object Panel3: TPanel
              Left = 1
              Top = 1
              Width = 89
              Height = 22
              CustomHint = BalloonHint
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'Itens'
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 164
    Top = 248
  end
  inherited consulta: TUniQuery
    Left = 312
    Top = 28
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  gra.gracodigo,'
      '  gra.graidentificacao'
      'FROM gra'
      'WHERE gra.gracodigo = :gracodigo')
    Left = 164
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gracodigo'
        Value = nil
      end>
    object registrogracodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'gracodigo'
    end
    object registrograidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'graidentificacao'
      Required = True
      Size = 40
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object gat: TUniQuery
    KeyFields = 'gracodigo'
    SQLDelete.Strings = (
      'DELETE'
      '  FROM gat'
      'WHERE gat.gatcodigo = :gatcodigo')
    SQL.Strings = (
      'SELECT'
      '  gat.gatcodigo,'
      '  gat.gracodigo,'
      '  gat.atrcodigo'
      'FROM gat'
      'WHERE gat.gracodigo = :gracodigo')
    MasterSource = DSRegistro
    MasterFields = 'gracodigo'
    DetailFields = 'gracodigo'
    Left = 240
    Top = 205
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gracodigo'
        Value = nil
      end>
    object gatgatcodigo: TIntegerField
      FieldName = 'gatcodigo'
    end
    object gatgracodigo: TIntegerField
      FieldName = 'gracodigo'
    end
    object gatatrcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'atrcodigo'
    end
    object gatatridentificacao: TStringField
      DisplayLabel = 'Atributo'
      FieldKind = fkLookup
      FieldName = 'atridentificacao'
      LookupDataSet = atr
      LookupKeyFields = 'atrcodigo'
      LookupResultField = 'atridentificacao'
      KeyFields = 'atrcodigo'
      Size = 40
      Lookup = True
    end
  end
  object DSgat: TUniDataSource
    DataSet = gat
    Left = 240
    Top = 261
  end
  object atr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  atr.atrcodigo,'
      '  atr.atridentificacao'
      'FROM atr')
    Left = 288
    Top = 229
    object atratrcodigo: TIntegerField
      FieldName = 'atrcodigo'
    end
    object atratridentificacao: TStringField
      FieldName = 'atridentificacao'
      Size = 40
    end
  end
end
