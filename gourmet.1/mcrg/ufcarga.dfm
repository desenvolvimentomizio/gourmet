object fcarga: Tfcarga
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Carga Produtos'
  ClientHeight = 218
  ClientWidth = 227
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
  object Bevel1: TBevel
    Left = 16
    Top = 24
    Width = 189
    Height = 65
  end
  object Label1: TLabel
    Left = 30
    Top = 39
    Width = 69
    Height = 13
    Caption = 'Tipo de carga:'
  end
  object Label4: TLabel
    Left = 16
    Top = 8
    Width = 115
    Height = 13
    Caption = 'Configura'#231#227'o da Carga:'
  end
  object destinocarga: TLabel
    Left = 16
    Top = 112
    Width = 189
    Height = 13
    AutoSize = False
  end
  object produtoaenviados: TLabel
    Left = 16
    Top = 158
    Width = 189
    Height = 13
    AutoSize = False
  end
  object pbotoes: TPanel
    Left = 0
    Top = 187
    Width = 227
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    object bconfirma: TBitBtn
      Left = 73
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 0
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 148
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 1
      OnClick = bcancelaClick
    end
  end
  object mostra: TProgressBar
    Left = 16
    Top = 136
    Width = 189
    Height = 16
    TabOrder = 1
  end
  object tipocarga: TComboBox
    Left = 30
    Top = 55
    Width = 155
    Height = 21
    TabOrder = 2
    Text = 'tipocarga'
    Items.Strings = (
      'Enviar TODOS'
      'Enviar S'#243' Alterados')
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo from pro where procarga=1')
    Left = 116
    Top = 4
  end
  object consulta: TUniQuery
    Left = 68
    Top = 65524
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'select cfgvertabelaibpt from cfgmsai')
    Left = 152
    Top = 4
    object cfgcfgvertabelaibpt: TIntegerField
      FieldName = 'cfgvertabelaibpt'
    end
  end
  object apv: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  apv.puncodigo, '
      '  apv.apvprecoav,'
      '  apv.apvprecoap,'
      '  apv.apvdatahora,'
      '  clb.clbidentificacao,'
      '  pun.procodigo,'
      '  apv.apvchave'
      'FROM apv'
      '  INNER JOIN clb'
      '    ON apv.clbcodigo = clb.clbcodigo'
      '  INNER JOIN pun'
      '    ON apv.puncodigo = pun.puncodigo'
      'where spvcodigo=1 and procodigo=:procodigo'
      'order by apvchave desc')
    Left = 191
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object apvpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object apvapvprecoav: TFloatField
      DisplayLabel = 'Pre'#231'o a Vista'
      FieldName = 'apvprecoav'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object apvapvprecoap: TFloatField
      DisplayLabel = 'Pre'#231'o a Prazo'
      FieldName = 'apvprecoap'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object apvapvdatahora: TDateTimeField
      DisplayLabel = 'Atualizado'
      FieldName = 'apvdatahora'
    end
    object apvclbidentificacao: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbidentificacao'
      Size = 35
    end
    object apvapvchave: TIntegerField
      FieldName = 'apvchave'
    end
  end
end
