object framoniimpnet: Tframoniimpnet
  Left = 0
  Top = 0
  Width = 275
  Height = 180
  TabOrder = 0
  object plImpressoras: TPanel
    Left = 0
    Top = 0
    Width = 275
    Height = 180
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 2
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object PnIntegracoes: TPanel
      AlignWithMargins = True
      Left = 184
      Top = 5
      Width = 86
      Height = 173
      Margins.Bottom = 0
      Align = alRight
      BevelOuter = bvNone
      Color = 12615680
      ParentBackground = False
      TabOrder = 0
      object PnWhats: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 80
        Height = 18
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'WHATS'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 62
      end
      object PnAIQ: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 45
        Width = 80
        Height = 18
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'A I Q'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 62
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 66
        Width = 80
        Height = 18
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'PnAIQ'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        Visible = False
        ExplicitWidth = 62
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 87
        Width = 80
        Height = 18
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'PnWhats'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        Visible = False
        ExplicitWidth = 62
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 108
        Width = 80
        Height = 18
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'PnWhats'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        Visible = False
        ExplicitWidth = 62
      end
      object PnNUC: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 80
        Height = 18
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Caption = 'N U C'
        Color = 8404992
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 5
        ExplicitWidth = 62
      end
    end
  end
  object gri: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '       tci.tcicodigo'
      '  FROM tci'
      ' INNER JOIN mit ON tci.mitcodigo = mit.mitcodigo'
      ' INNER JOIN gri '
      '    ON tci.tcicodigo = gri.tcicodigo and gri.griimprimeauto=1')
    AutoCalcFields = False
    Left = 104
    Top = 64
    object gritcicodigo: TIntegerField
      FieldName = 'tcicodigo'
    end
  end
  object verifica: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = verificaTimer
    Left = 144
    Top = 64
  end
  object tcisituacao: TUniQuery
    Left = 65527
    Top = 24
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo, '
      '  cfgmgoustatusaiq,'
      '  cfgmgoustatusnuc,'
      '  cfgmgoustatusifood,'
      '  cfgmgoustatusproducao,'
      '  cfgmgoustatusentrega,'
      '  cfgmgoustatuscozinha,'
      '  cfgmgoustatuswhats'
      '  FROM cfgmgou '
      '  WHERE cfgcodigo=1')
    Left = 112
    Top = 120
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgmgoustatusaiq: TDateTimeField
      FieldName = 'cfgmgoustatusaiq'
    end
    object cfgcfgmgoustatusnuc: TDateTimeField
      FieldName = 'cfgmgoustatusnuc'
    end
    object cfgcfgmgoustatusifood: TDateTimeField
      FieldName = 'cfgmgoustatusifood'
    end
    object cfgcfgmgoustatusproducao: TDateTimeField
      FieldName = 'cfgmgoustatusproducao'
    end
    object cfgcfgmgoustatusentrega: TDateTimeField
      FieldName = 'cfgmgoustatusentrega'
    end
    object cfgcfgmgoustatuscozinha: TDateTimeField
      FieldName = 'cfgmgoustatuscozinha'
    end
    object cfgcfgmgoustatuswhats: TDateTimeField
      FieldName = 'cfgmgoustatuswhats'
    end
  end
end
