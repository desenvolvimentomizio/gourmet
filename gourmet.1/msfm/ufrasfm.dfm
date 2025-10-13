object frasfm: Tfrasfm
  Left = 0
  Top = 0
  Width = 862
  Height = 664
  Color = clHighlight
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object plRodaPe: TPanel
    Left = 0
    Top = 0
    Width = 862
    Height = 41
    Align = alTop
    TabOrder = 0
    object btCapturar: TButton
      Left = 576
      Top = 10
      Width = 121
      Height = 25
      Caption = 'Capturar Dados'
      TabOrder = 0
    end
  end
  object WebBrowser: TWebBrowser
    Left = 3
    Top = 198
    Width = 862
    Height = 395
    TabOrder = 1
    ControlData = {
      4C00000017590000D32800000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object Acoes: TActionList
    Left = 536
    Top = 296
    object ActSair: TAction
      Caption = 'Sair'
      OnExecute = ActSairExecute
    end
  end
end
