object fdescsimb: Tfdescsimb
  Left = 0
  Top = 0
  ActiveControl = uniidentificacao
  BorderIcons = []
  Caption = 'Cadastro de Unidade'
  ClientHeight = 214
  ClientWidth = 413
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
  object paginas: TPageControl
    Left = 0
    Top = 0
    Width = 413
    Height = 185
    ActivePage = Principal
    Align = alClient
    TabOrder = 0
    object Principal: TTabSheet
      Caption = 'Principal'
      object Label1: TLabel
        Left = 12
        Top = 96
        Width = 93
        Height = 13
        Caption = 'S'#237'mbolo da Unidade'
      end
      object Label2: TLabel
        Left = 12
        Top = 123
        Width = 94
        Height = 13
        Caption = 'Nome para Unidade'
      end
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 405
        Height = 83
        Align = alTop
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          ''
          '   ATEN'#199#195'O:  A unidade abaixo, foi detectada na importa'#231#227'o da '
          'NFE, o sistema vai cadastra-la. '
          ''
          '   Por favor informe o nome a ser utilizado para a mesma. ')
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
      end
      object unisimbolo: TEdit
        Left = 139
        Top = 93
        Width = 42
        Height = 21
        TabStop = False
        Color = clBtnFace
        TabOrder = 1
      end
      object uniidentificacao: TEdit
        Left = 139
        Top = 120
        Width = 138
        Height = 21
        CharCase = ecUpperCase
        Color = clYellow
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
    end
  end
  object pbotoes: TPanel
    Left = 0
    Top = 185
    Width = 413
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 1
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
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
      Left = 334
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
  end
end
