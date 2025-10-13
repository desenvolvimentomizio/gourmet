inherited fraecb: Tfraecb
  ActiveControl = bconfirma
  Caption = 'Gerar carga para Balan'#231'as'
  ClientHeight = 451
  ClientWidth = 784
  ExplicitWidth = 800
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 422
    Width = 784
    ExplicitTop = 422
    ExplicitWidth = 784
    inherited bconfirma: TBitBtn
      Left = 630
      ExplicitLeft = 630
    end
    inherited bcancela: TBitBtn
      Left = 705
      ExplicitLeft = 705
    end
    inherited bfechar: TBitBtn
      Left = 565
      ExplicitLeft = 565
    end
    object mostra: TProgressBar
      Left = 99
      Top = 4
      Width = 126
      Height = 21
      CustomHint = BalloonHint
      Align = alLeft
      TabOrder = 4
    end
  end
  inherited paginas: TPageControl
    Width = 784
    Height = 422
    ExplicitWidth = 784
    ExplicitHeight = 422
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 776
      ExplicitHeight = 394
      object lcfgcaminhotoledo: TLabel
        Left = 8
        Top = 6
        Width = 193
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Caminho da aplica'#231#227'o da balan'#231'a Toledo'
        FocusControl = cfgcaminhotoledo
      end
      object lcfgcaminhofilizola: TLabel
        Left = 8
        Top = 33
        Width = 192
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Caminho da aplica'#231#227'o da balan'#231'a Filizola'
        FocusControl = cfgcaminhofilizola
      end
      object lcfgcaminhoramuza: TLabel
        Left = 8
        Top = 60
        Width = 199
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Caminho da aplica'#231#227'o da balan'#231'a Ramuza'
        FocusControl = cfgcaminhoramuza
      end
      object Label33: TLabel
        Left = 8
        Top = 87
        Width = 189
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome padr'#227'o para Setores de Balan'#231'as'
        FocusControl = cfgsetorbalanca
      end
      object cfgcaminhotoledo: TDBEdit
        Left = 216
        Top = 3
        Width = 270
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfgcaminhotoledo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 0
      end
      object cfgcaminhofilizola: TDBEdit
        Left = 216
        Top = 30
        Width = 270
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfgcaminhofilizola'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 1
      end
      object cfgcaminhoramuza: TDBEdit
        Left = 216
        Top = 57
        Width = 270
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'cfgcaminhoramuza'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 2
      end
      object cfgsetorbalanca: TDBEdit
        Left = 216
        Top = 84
        Width = 270
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgsetorbalanca'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 228
    Top = 136
  end
  inherited cfg: TUniQuery
    Left = 340
    Top = 148
  end
  inherited consulta: TUniQuery
    Left = 120
    Top = 132
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT cfgmsai.cfgcaminhotoledo'
      '     , cfgmsai.cfgcaminhofilizola'
      '     , cfgmsai.cfgcaminhoramuza'
      '     , cfgmsai.cfgsetorbalanca'
      '  FROM cfg'
      ' INNER JOIN cfgmsai ON cfg.cfgcodigo = cfgmsai.cfgcodigo'
      ' WHERE cfg.flacodigo = :flacodigo')
    Left = 164
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object registrocfgcaminhotoledo: TStringField
      FieldName = 'cfgcaminhotoledo'
      Size = 250
    end
    object registrocfgcaminhofilizola: TStringField
      FieldName = 'cfgcaminhofilizola'
      Size = 250
    end
    object registrocfgcaminhoramuza: TStringField
      FieldName = 'cfgcaminhoramuza'
      Size = 250
    end
    object registrocfgsetorbalanca: TStringField
      FieldName = 'cfgsetorbalanca'
      Size = 100
    end
  end
  inherited acoesfrm: TActionList
    Left = 396
    Top = 20
    inherited ActConfiguracoes: TAction
      Category = 'Cargas'
      Enabled = False
    end
    object ActConfirma: TAction
      Category = 'Cargas'
      Caption = 'Enviar Carga'
      OnExecute = bconfirmaClick
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pro: TUniQuery
    Left = 260
    Top = 248
  end
end
