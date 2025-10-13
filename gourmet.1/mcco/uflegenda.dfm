inherited flegenda: Tflegenda
  Caption = 'Legenda'
  ClientHeight = 122
  ClientWidth = 477
  Font.Height = -16
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 48
    Top = 24
    Width = 262
    Height = 19
    Caption = 'Registro conciliado com o Banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 49
    Width = 350
    Height = 19
    Caption = 'Registro ainda sem conciliado com o Banco'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 74
    Width = 401
    Height = 19
    Caption = 'Registro com vencimento superior a data de hoje'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
end
