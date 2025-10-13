object fverificacao: Tfverificacao
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Verifica'#231#227'o'
  ClientHeight = 87
  ClientWidth = 157
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
  object dau: tuniquery
    SQL.Strings = (
      'select * from dau')
    Params = <>
    Left = 56
    Top = 20
    object dauclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object dauactcodigo: TIntegerField
      FieldName = 'actcodigo'
    end
    object daudauativo: TIntegerField
      FieldName = 'dauativo'
    end
  end
  object consulta: tuniquery
    Params = <>
    Left = 104
    Top = 24
  end
end
