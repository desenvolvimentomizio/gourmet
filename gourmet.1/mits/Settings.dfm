object FormSettings: TFormSettings
  Left = 576
  Top = 276
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  BorderWidth = 8
  Caption = 'Settings'
  ClientHeight = 185
  ClientWidth = 228
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object CheckListBox: TCheckListBox
    Left = 0
    Top = 0
    Width = 228
    Height = 151
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BorderStyle = bsNone
    Ctl3D = True
    ItemHeight = 13
    Items.Strings = (
      'Mostrar anota'#231#245'es'
      'Otimizar para display LCD'
      'Sa'#237'da de texto nativo'
      'Sa'#237'da em escala de cinza'
      'Limitar o tamanho do cache de imagem'
      'Use meio-tom para alongamento de imagem'
      'Render para impress'#227'o'
      'Ordem reversa de bytes'
      'Anti-aliasing no texto'
      'Anti-aliasing em imagens'
      'Anti-aliasing em caminhos')
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 0
  end
  object BitBtnOK: TBitBtn
    Left = 72
    Top = 160
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    NumGlyphs = 2
    TabOrder = 1
  end
  object BitBtnCancel: TBitBtn
    Left = 152
    Top = 160
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    NumGlyphs = 2
    TabOrder = 2
  end
end
