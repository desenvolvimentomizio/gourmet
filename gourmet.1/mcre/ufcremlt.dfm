inherited fcremlt: Tfcremlt
  Caption = 'Contas a Receber'
  ClientHeight = 490
  ClientWidth = 695
  ExplicitWidth = 711
  ExplicitHeight = 529
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 461
    Width = 695
    ExplicitTop = 461
    ExplicitWidth = 695
    inherited bconfirma: TBitBtn
      Left = 541
      ExplicitLeft = 541
    end
    inherited bcancela: TBitBtn
      Left = 616
      ExplicitLeft = 616
    end
    inherited bfechar: TBitBtn
      Left = 476
      ExplicitLeft = 476
    end
  end
  inherited paginas: TPageControl
    Width = 695
    Height = 461
    ExplicitWidth = 695
    ExplicitHeight = 461
    inherited Principal: TTabSheet
      ExplicitWidth = 687
      ExplicitHeight = 433
      inherited v: TBevel
        Width = 687
        ExplicitWidth = 687
      end
      inherited Label2: TLabel
        Width = 33
        Caption = 'Cliente'
        ExplicitWidth = 33
      end
      inherited lmoecodigo: TLabel
        Top = 249
        ExplicitTop = 249
      end
      inherited Label16: TLabel
        Left = 281
        Top = 222
        ExplicitLeft = 281
        ExplicitTop = 222
      end
      inherited BGerarRepeticoes: TBitBtn
        TabOrder = 19
      end
      inherited titvalorparcela: TDBEdit
        TabOrder = 10
        OnEnter = titvalorparcelaEnter
      end
      inherited titvctoinicial: TDBEdit
        OnEnter = titvctoinicialEnter
      end
      inherited carcodigo: TDBEdit
        OnExit = carcodigoExit
      end
      inherited moecodigo: TDBEdit
        Top = 246
        TabOrder = 12
        ExplicitTop = 246
      end
      inherited titmoradia: TDBEdit
        TabOrder = 13
      end
      inherited titpercmesmora: TDBEdit
        Width = 106
        TabOrder = 14
        ExplicitWidth = 106
      end
      inherited titdiasdesc: TDBEdit
        TabOrder = 15
      end
      inherited titvalodesc: TDBEdit
        TabOrder = 16
      end
      inherited titdiasmulta: TDBEdit
        TabOrder = 17
      end
      inherited titvalomulta: TDBEdit
        TabOrder = 18
      end
      inherited tithistorico: TDBEdit
        TabOrder = 20
      end
      inherited titprevisao: TDBEdit
        Left = 424
        Top = 219
        TabOrder = 9
        ExplicitLeft = 424
        ExplicitTop = 219
      end
    end
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgdtinictb, cfgdtfinctb,cfgportadorpadrao from cfg,cfgmc' +
        're where cfg.cfgcodigo=cfgmcre.cfgcodigo and flacodigo=:flacodig' +
        'o')
    object cfgcfgportadorpadrao: TIntegerField
      FieldName = 'cfgportadorpadrao'
    end
  end
  inherited registro: TUniQuery
    Left = 640
    Top = 188
  end
  inherited lou: TUniQuery
    Left = 576
    Top = 136
  end
  object v_rfi: TUniQuery
    SQL.Strings = (
      
        'select rfichave, rfinumero, rfihistorico, rfivencimento from v_r' +
        'fi where rfichave=:rfichave')
    Left = 524
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
    object v_rfirfinumero: TStringField
      FieldName = 'rfinumero'
    end
    object v_rfirfihistorico: TStringField
      FieldName = 'rfihistorico'
      Size = 50
    end
    object v_rfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object v_rfirfivencimento: TDateField
      FieldName = 'rfivencimento'
    end
  end
  object ajustarfi: TUniQuery
    Left = 404
    Top = 120
  end
end
