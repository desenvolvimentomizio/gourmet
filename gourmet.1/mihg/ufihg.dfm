object fihg: Tfihg
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Importar Hist'#243'ricos XTDC - WK Sistemas'
  ClientHeight = 117
  ClientWidth = 635
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
  object Label1: TLabel
    Left = 20
    Top = 16
    Width = 91
    Height = 13
    Caption = 'Arquivo a Importar'
  end
  object spdbpcgdebito: TSpeedButton
    Left = 584
    Top = 13
    Width = 23
    Height = 21
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
      E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
      1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
      09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
      AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
      AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
      FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
      EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
      FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
      D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
      FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
      FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
      E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
      FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
      CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
      BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    OnClick = spdbpcgdebitoClick
  end
  object EdtArquivo: TEdit
    Left = 140
    Top = 13
    Width = 441
    Height = 21
    TabOrder = 0
  end
  object mostra: TProgressBar
    Left = 140
    Top = 52
    Width = 467
    Height = 17
    TabOrder = 1
  end
  object pbotoes: TPanel
    Left = 0
    Top = 88
    Width = 635
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 2
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Importando'
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
      Left = 481
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 556
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = bcancelaClick
    end
  end
  object abrirarquivo: TOpenDialog
    Left = 24
    Top = 40
  end
  object consulta: tuniquery
    Params = <>
    Left = 60
    Top = 44
  end
  object phg: tuniquery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao, phgcomplemento from phg')
    Params = <>
    Left = 116
    Top = 12
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
    object phgphgcomplemento: TStringField
      FieldName = 'phgcomplemento'
      Size = 50
    end
  end
end
