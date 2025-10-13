inherited fresgat: Tfresgat
  ActiveControl = ccovalor
  Caption = 'Resgate de Cheques'
  ClientHeight = 165
  ClientWidth = 564
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 136
    Width = 564
    inherited bconfirma: TBitBtn
      Left = 410
    end
    inherited bcancela: TBitBtn
      Left = 485
    end
    inherited bfechar: TBitBtn
      Left = 345
    end
  end
  inherited paginas: TPageControl
    Width = 564
    Height = 136
    inherited Principal: TTabSheet
      inherited Label10: TLabel
        Left = 396
        Width = 69
        Caption = 'Caixa Principal'
        Visible = False
      end
      inherited Label7: TLabel
        Left = 8
        Top = 60
        Width = 156
        Caption = 'Total de Cheques a Resgatar R$'
      end
      inherited ccochave: TDBEdit
        Left = 179
        Width = 54
      end
      inherited ccovalor: TDBEdit
        Left = 179
        Top = 30
        Width = 98
        TabOrder = 5
        OnExit = ccovalorExit
      end
      inherited ccohistorico: TDBMemo
        Left = 179
      end
      inherited ctacodigo: TDBEdit
        Left = 491
        Top = 33
        DataSource = DSRegistro
        Visible = False
      end
      inherited ctacodigoOri: TDBEdit
        Left = 179
        Top = 57
      end
      object ccovalorrec: TDBEdit
        Left = 298
        Top = 33
        Width = 98
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccovalor'
        DataSource = Dcco
        TabOrder = 4
        OnEnter = ccovalorrecEnter
      end
    end
  end
  inherited registro: TUniQuery
    inherited registroccohistorico: TStringField
      Required = True
    end
  end
  inherited Dcco: TUniDataSource
    Left = 232
    Top = 65520
  end
  inherited dtl: TUniQuery
    Left = 448
    Top = 136
  end
  inherited lte: TUniQuery
    Left = 352
    Top = 92
  end
end
