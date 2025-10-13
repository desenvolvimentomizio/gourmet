object fbusca: Tfbusca
  Left = 0
  Top = 0
  Caption = 'Busca'
  ClientHeight = 300
  ClientWidth = 635
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
  object ptopo: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 0
    object edbusca: TEdit
      Left = 2
      Top = 2
      Width = 341
      Height = 31
      Align = alClient
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edbuscaKeyPress
      OnKeyUp = edbuscaKeyUp
    end
    object pordem: TPanel
      Left = 343
      Top = 2
      Width = 290
      Height = 31
      Align = alRight
      BevelOuter = bvNone
      Caption = 'Pesquisar por: Nome'
      Color = clYellow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      object Panel1: TPanel
        Left = 273
        Top = 0
        Width = 17
        Height = 31
        Align = alRight
        BevelOuter = bvNone
        ParentBackground = False
        TabOrder = 0
        object bmais: TButton
          Left = 0
          Top = 0
          Width = 17
          Height = 14
          Hint = 'Muda pesquisa para o PR'#211'XIMO '#13'campo da lista'
          Align = alTop
          Caption = '+'
          TabOrder = 0
          OnClick = bmaisClick
        end
        object bmenos: TButton
          Left = 0
          Top = 17
          Width = 17
          Height = 14
          Hint = 'Muda pesquisa para o campo '#13'ANTERIOR da lista'
          Align = alBottom
          Caption = '-'
          TabOrder = 1
          OnClick = bmenosClick
        end
      end
    end
  end
  object listabusca: TDBGrid
    Left = 0
    Top = 35
    Width = 635
    Height = 265
    Align = alClient
    DataSource = Dconsulta
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = listabuscaDrawColumnCell
    OnDblClick = listabuscaDblClick
    OnKeyPress = listabuscaKeyPress
    OnTitleClick = listabuscaTitleClick
  end
  object Dconsulta: TUniDataSource
    Left = 168
    Top = 100
  end
end
