object lcarboletos: Tlcarboletos
  Left = 0
  Top = 0
  ActiveControl = DBGLista
  BorderIcons = []
  Caption = 'Carteiras para emiss'#227'o de boletos banc'#225'rios'
  ClientHeight = 300
  ClientWidth = 622
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
  object pbotoes: TPanel
    Left = 0
    Top = 271
    Width = 622
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Pesquisando'
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
      Left = 468
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 543
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = bcancelaClick
    end
  end
  object DBGLista: TDBGrid
    Left = 0
    Top = 0
    Width = 622
    Height = 271
    Align = alClient
    BorderStyle = bsNone
    Color = clCream
    DataSource = Dcar
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = DBGListaKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'caridentificacao'
        Width = 201
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ctaidentificacao'
        Width = 360
        Visible = True
      end>
  end
  object car: TUniQuery
    SQL.Strings = (
      'SELECT carcodigo'
      '     , caridentificacao'
      '     , cta.ctaidentificacao'
      '     , cta.tctcodigo'
      '     , sen.senidentificacao'
      'FROM car'
      '  INNER JOIN cta'
      '    ON car.ctacodigo = cta.ctacodigo'
      '  INNER JOIN sen'
      '    ON sen.sencodigo = car.cargeraboleto'
      '  INNER JOIN ctc'
      '   ON cta.ctacodigo = ctc.ctacodigo'
      ''
      '  where car.cargeraboleto=1'
      '  AND ctc.clbcodigo=:clbcodigo')
    Left = 352
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object carcarcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'carcodigo'
    end
    object carcaridentificacao: TStringField
      DisplayLabel = 'Carteira de Cobran'#231'a'
      FieldName = 'caridentificacao'
      Size = 35
    end
    object carctaidentificacao: TStringField
      DisplayLabel = 'Conta Vinculada'
      FieldName = 'ctaidentificacao'
      Size = 50
    end
    object cartctcodigo: TIntegerField
      FieldName = 'tctcodigo'
    end
    object carsenidentificacao: TStringField
      DisplayLabel = 'Gera Boleto'
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object Dcar: TDataSource
    DataSet = car
    Left = 392
    Top = 104
  end
end
