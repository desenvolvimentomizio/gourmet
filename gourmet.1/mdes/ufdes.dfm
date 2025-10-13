object fdes: Tfdes
  Left = 0
  Top = 0
  ActiveControl = percentual
  BorderIcons = []
  Caption = 'Descontos'
  ClientHeight = 243
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label2: TLabel
    Left = 20
    Top = 92
    Width = 155
    Height = 16
    Caption = 'Percentual de Desconto'
  end
  object Label1: TLabel
    Left = 20
    Top = 136
    Width = 140
    Height = 16
    Caption = 'Valor do Desconto R$'
  end
  object Label3: TLabel
    Left = 20
    Top = 180
    Width = 169
    Height = 16
    Caption = 'Valor L'#237'quido da Venda R$'
  end
  object Label4: TLabel
    Left = 20
    Top = 53
    Width = 178
    Height = 16
    Caption = 'Desconto M'#225'ximo Permitido'
  end
  object pbotoes: TPanel
    Left = 0
    Top = 214
    Width = 329
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Alterando'
      Color = 4227327
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
      Left = 175
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 250
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Cancela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = bcancelaClick
    end
  end
  object percentual: TDBEdit
    Left = 220
    Top = 89
    Width = 85
    Height = 24
    DataField = 'despercentual'
    DataSource = Ddes
    TabOrder = 1
    OnKeyPress = FormKeyPress
    OnKeyUp = percentualKeyUp
  end
  object valor: TDBEdit
    Left = 220
    Top = 133
    Width = 85
    Height = 24
    DataField = 'desvalor'
    DataSource = Ddes
    TabOrder = 2
    OnKeyPress = FormKeyPress
    OnKeyUp = valorKeyUp
  end
  object liquido: TDBEdit
    Left = 220
    Top = 177
    Width = 85
    Height = 24
    DataField = 'desliquido'
    DataSource = Ddes
    TabOrder = 3
    OnEnter = liquidoEnter
    OnExit = liquidoExit
    OnKeyPress = FormKeyPress
    OnKeyUp = liquidoKeyUp
  end
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = 'T'#237'tulo'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    object bruto: TDBEdit
      Left = 220
      Top = 3
      Width = 85
      Height = 21
      TabStop = False
      AutoSize = False
      DataField = 'desbruto'
      DataSource = Ddes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  object plpercmax: TPanel
    Left = 220
    Top = 50
    Width = 85
    Height = 23
    BevelOuter = bvLowered
    Caption = '0'
    TabOrder = 5
  end
  object Ddes: TUniDataSource
    DataSet = des
    Left = 104
    Top = 104
  end
  object des: TVirtualTable
    Left = 56
    Top = 104
    Data = {04000000000000000000}
    object desdespercentual: TFloatField
      FieldName = 'despercentual'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object desdesvalor: TFloatField
      FieldName = 'desvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object desdesliquido: TFloatField
      FieldName = 'desliquido'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object desdesbruto: TFloatField
      FieldName = 'desbruto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
end
