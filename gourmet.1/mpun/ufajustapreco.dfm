object fajustapreco: Tfajustapreco
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Altera'#231#227'o de Pre'#231'o'
  ClientHeight = 172
  ClientWidth = 477
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
  object Label5: TLabel
    Left = 11
    Top = 7
    Width = 60
    Height = 13
    Caption = 'identifica'#231#227'o'
  end
  object Label1: TLabel
    Left = 11
    Top = 34
    Width = 39
    Height = 13
    Caption = 'Unidade'
  end
  object Label3: TLabel
    Left = 11
    Top = 61
    Width = 77
    Height = 13
    Caption = 'C'#243'digo de Barra'
    FocusControl = punbarra
  end
  object Label4: TLabel
    Left = 11
    Top = 88
    Width = 113
    Height = 13
    Caption = 'Pre'#231'o A VISTA Atual R$'
    FocusControl = punprecoav
  end
  object Label7: TLabel
    Left = 11
    Top = 115
    Width = 118
    Height = 13
    Caption = 'Pre'#231'o A PRAZO Atual R$'
    FocusControl = punprecoap
  end
  object Label6: TLabel
    Left = 290
    Top = 88
    Width = 71
    Height = 13
    Caption = 'Novo Pre'#231'o R$'
  end
  object Label8: TLabel
    Left = 290
    Top = 113
    Width = 71
    Height = 13
    Caption = 'Novo Pre'#231'o R$'
  end
  object pbotoes: TPanel
    Left = 0
    Top = 141
    Width = 477
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 74
      Height = 23
      Align = alLeft
      BevelOuter = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = 13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object bconfirma: TBitBtn
      Left = 323
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 398
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = bcancelaClick
    end
  end
  object punbarra: TDBEdit
    Left = 136
    Top = 58
    Width = 157
    Height = 21
    TabStop = False
    DataField = 'punbarra'
    Enabled = False
    TabOrder = 1
  end
  object punprecoav: TDBEdit
    Left = 136
    Top = 85
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'punprecoav'
    Enabled = False
    TabOrder = 2
  end
  object punprecoap: TDBEdit
    Left = 136
    Top = 112
    Width = 121
    Height = 21
    TabStop = False
    DataField = 'punprecoap'
    Enabled = False
    TabOrder = 3
  end
  object unisimbolo: TDBEdit
    Left = 136
    Top = 31
    Width = 37
    Height = 21
    TabStop = False
    DataField = 'unisimbolo'
    Enabled = False
    TabOrder = 4
  end
  object punidentificacao: TDBEdit
    Left = 136
    Top = 4
    Width = 113
    Height = 21
    TabStop = False
    DataField = 'punidentificacao'
    Enabled = False
    TabOrder = 5
  end
  object novopunprecoav: TEdit
    Left = 376
    Top = 85
    Width = 85
    Height = 21
    Alignment = taRightJustify
    TabOrder = 6
  end
  object novopunprecoap: TEdit
    Left = 376
    Top = 112
    Width = 85
    Height = 21
    Alignment = taRightJustify
    TabOrder = 7
  end
  object registro: TUniQuery
    SQL.Strings = (
      
        'select punprecoav,punprecoap,procodigo,puncodigo from pun where ' +
        'puncodigo=:puncodigo')
    Left = 364
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'puncodigo'
        Value = nil
      end>
    object registropuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object registroprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object registropunprecoav: TFloatField
      FieldName = 'punprecoav'
    end
    object registropunprecoap: TFloatField
      FieldName = 'punprecoap'
    end
  end
  object Dsregistro: TUniDataSource
    DataSet = registro
    OnStateChange = DsregistroStateChange
    Left = 412
    Top = 24
  end
  object consulta: TUniQuery
    Left = 428
    Top = 65404
  end
end
