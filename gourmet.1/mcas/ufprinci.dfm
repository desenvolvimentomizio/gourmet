object fprinci: Tfprinci
  Left = 0
  Top = 0
  Caption = 'fprinci'
  ClientHeight = 700
  ClientWidth = 1341
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object mensagens: TStatusBar
    Left = 0
    Top = 680
    Width = 1341
    Height = 20
    AutoHint = True
    BiDiMode = bdLeftToRight
    DragMode = dmAutomatic
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Panels = <
      item
        Width = 230
      end
      item
        Alignment = taCenter
        Width = 100
      end
      item
        Alignment = taCenter
        Width = 100
      end
      item
        Alignment = taCenter
        Width = 0
      end
      item
        Alignment = taCenter
        Width = 120
      end
      item
        Alignment = taCenter
        Text = 'IP:'
        Width = 110
      end
      item
        Alignment = taCenter
        Width = 75
      end
      item
        Alignment = taCenter
        Width = 55
      end
      item
        Alignment = taCenter
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 90
      end
      item
        Alignment = taCenter
        Width = 200
      end>
    ParentBiDiMode = False
    UseSystemFont = False
  end
  object PCMenu: TPageControl
    Left = 0
    Top = 25
    Width = 1341
    Height = 97
    Align = alTop
    TabOrder = 1
  end
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1341
    Height = 25
    Align = alTop
    Caption = 'PlTitulo'
    TabOrder = 2
  end
end
