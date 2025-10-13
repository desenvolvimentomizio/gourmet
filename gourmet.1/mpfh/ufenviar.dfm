object fenviar: Tfenviar
  Left = 0
  Top = 0
  ActiveControl = DBGridFlh
  BorderIcons = []
  Caption = 'Enviar para Folha'
  ClientHeight = 281
  ClientWidth = 291
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 200
    Height = 13
    Caption = 'Selecione a Folha de Destino para o envio'
  end
  object pbotoes: TPanel
    Left = 0
    Top = 252
    Width = 291
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    ExplicitLeft = -139
    ExplicitTop = 286
    ExplicitWidth = 796
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Enviando'
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
      Left = 137
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
      ExplicitLeft = 642
    end
    object bcancela: TBitBtn
      Left = 212
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
      ExplicitLeft = 717
    end
  end
  object DBGridFlh: TDBGrid
    Left = 24
    Top = 56
    Width = 249
    Height = 169
    DataSource = Dflh
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'flhchave'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'flhidentificacao'
        Width = 150
        Visible = True
      end>
  end
  object flh: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  flh.flhchave,'
      
        '  CONCAT(flh.flhidentificacao, '#39' '#39', tflidentificacao) flhidentif' +
        'icacao'
      'FROM flh'
      '  INNER JOIN tfl'
      '    ON flh.tflcodigo = tfl.tflcodigo'
      'WHERE eflcodigo IN (1, 2) and flh.flhchave<>:flhchave'
      'ORDER BY flhano DESC, flhmes DESC')
    Left = 56
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end>
    object flhflhchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'flhchave'
    end
    object flhflhidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o da Folha'
      FieldName = 'flhidentificacao'
      Size = 50
    end
  end
  object Dflh: TDataSource
    DataSet = flh
    Left = 160
    Top = 112
  end
end
