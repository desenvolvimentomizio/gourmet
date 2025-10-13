inherited fajtcustoesp: Tfajtcustoesp
  Caption = 'Altera'#231#227'o de Custo, Margem e Pre'#231'os de Venda'
  ClientHeight = 351
  ClientWidth = 582
  ExplicitWidth = 598
  ExplicitHeight = 390
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 322
    Width = 582
    ExplicitTop = 322
    ExplicitWidth = 582
    inherited bconfirma: TBitBtn
      Left = 428
      ExplicitLeft = 428
    end
    inherited bcancela: TBitBtn
      Left = 503
      ExplicitLeft = 503
    end
    inherited bfechar: TBitBtn
      Left = 363
      ExplicitLeft = 363
    end
  end
  inherited paginas: TPageControl
    Width = 582
    Height = 322
    ExplicitWidth = 582
    ExplicitHeight = 322
    inherited Principal: TTabSheet
      ExplicitWidth = 574
      ExplicitHeight = 294
      inherited lppunprecoap: TLabel
        Top = 265
        ExplicitTop = 265
      end
      inherited Label6: TLabel
        Width = 111
        Caption = '% de Margem de Lucro'
        ExplicitWidth = 111
      end
      object lpunmargemap: TLabel [8]
        Left = 8
        Top = 238
        Width = 121
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Margem de Lucro a Prazo'
        FocusControl = punbarra
      end
      object lpunpercacresavap: TLabel [9]
        Left = 8
        Top = 211
        Width = 126
        Height = 13
        CustomHint = BalloonHint
        Caption = '% de Adicional para Prazo'
        FocusControl = punbarra
      end
      inherited punidentificacao: TDBEdit
        Left = 152
        ExplicitLeft = 152
      end
      inherited punbarra: TDBEdit
        Left = 152
        ExplicitLeft = 152
      end
      inherited punprecoav: TDBEdit
        Tag = 45
        Left = 152
        TabStop = True
        Color = clWhite
        ReadOnly = False
        OnExit = punprecoavExit
        ExplicitLeft = 152
      end
      inherited punprecoap: TDBEdit
        Tag = 45
        Left = 152
        Top = 262
        TabStop = True
        Color = clWhite
        ReadOnly = False
        TabOrder = 9
        OnEnter = punprecoapEnter
        OnExit = punprecoapExit
        ExplicitLeft = 152
        ExplicitTop = 262
      end
      inherited punmultiplicador: TDBEdit
        Left = 152
        ExplicitLeft = 152
      end
      inherited unicodigo: TDBEdit
        Left = 152
        ExplicitLeft = 152
      end
      inherited puncusto: TDBEdit
        Tag = 45
        Left = 152
        ExplicitLeft = 152
      end
      inherited punmargem: TDBEdit
        Tag = 45
        Left = 152
        Color = clWhite
        ReadOnly = False
        OnExit = punmargemExit
        ExplicitLeft = 152
      end
      object punmargemap: TDBEdit
        Tag = 45
        Left = 151
        Top = 235
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        Color = clWhite
        DataField = 'punmargemap'
        DataSource = DSRegistro
        TabOrder = 8
        OnEnter = punmargemapEnter
        OnExit = punmargemapExit
      end
      object punpercacresavap: TDBEdit
        Tag = 45
        Left = 152
        Top = 208
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        Color = clWhite
        DataField = 'punpercacresavap'
        DataSource = DSRegistro
        TabOrder = 7
        OnExit = punmargemExit
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 460
    Top = 56
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgdoisprecos, cfgmodoatuapro, cfgpercentacresaprazo, cfg' +
        'mostrapercentuais  from cfg, cfgmsai where cfg.cfgcodigo=cfgmsai' +
        '.cfgcodigo')
    Left = 508
    Top = 196
    object cfgcfgpercentacresaprazo: TFloatField
      FieldName = 'cfgpercentacresaprazo'
    end
    object cfgcfgmostrapercentuais: TIntegerField
      FieldName = 'cfgmostrapercentuais'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select puncodigo, procodigo,  punprecoav,punprecoap, punidentifi' +
        'cacao,'
      
        'unicodigo,punmultiplicador,punbarra,puncusto, punmargem, punmarg' +
        'emap,punpercacresavap, punbase from pun where puncodigo=:puncodi' +
        'go and procodigo=:procodigo')
    Left = 336
    Top = 64
    inherited registropunprecoav: TFloatField
      Required = True
    end
    inherited registropunprecoap: TFloatField
      Required = True
    end
    inherited registropunmargem: TFloatField
      Required = True
    end
    inherited registropunmargemap: TFloatField
      Required = True
    end
    object registropunpercacresavap: TFloatField
      FieldName = 'punpercacresavap'
      Required = True
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object registropunbase: TFloatField
      FieldName = 'punbase'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited rpu: TUniQuery
    Left = 440
    Top = 240
  end
end
