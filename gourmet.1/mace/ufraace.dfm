object fraace: Tfraace
  Left = 0
  Top = 0
  Width = 1160
  Height = 578
  Color = clWhite
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  object Splitter: TSplitter
    Left = 904
    Top = 0
    Width = 6
    Height = 578
    Align = alRight
    Beveled = True
    ExplicitLeft = 892
    ExplicitTop = 3
  end
  object plAcelerato: TPanel
    Left = 0
    Top = 0
    Width = 904
    Height = 578
    Align = alClient
    BevelOuter = bvNone
    Caption = 'plAcelerato'
    TabOrder = 0
    ExplicitLeft = 3
    ExplicitWidth = 1066
    object WebBrowser: TWebBrowser
      Left = 0
      Top = 0
      Width = 904
      Height = 578
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitWidth = 952
      ExplicitHeight = 576
      ControlData = {
        4C0000006E5D0000BD3B00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object plDireita: TPanel
    Left = 910
    Top = 0
    Width = 250
    Height = 578
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 660
    object SplitterMensagens: TSplitter
      Left = 0
      Top = 289
      Width = 250
      Height = 6
      Cursor = crVSplit
      Align = alTop
      Beveled = True
      ExplicitTop = 225
    end
    object plMensagens: TPanel
      Left = 0
      Top = 0
      Width = 250
      Height = 289
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object WebBrowserMensagens: TWebBrowser
        Left = 0
        Top = 0
        Width = 250
        Height = 289
        Align = alClient
        TabOrder = 0
        ExplicitTop = -6
        ControlData = {
          4C0000006E5D0000BD3B00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
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
