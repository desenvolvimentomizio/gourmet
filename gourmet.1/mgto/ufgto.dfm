inherited fgto: Tfgto
  ActiveControl = gtoidentificacao
  Caption = 'Grupo de Tipo do Campos para Contabiliza'#231#227'o'
  ClientHeight = 126
  ClientWidth = 636
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 97
    Width = 636
    inherited bconfirma: TBitBtn
      Left = 482
    end
    inherited bcancela: TBitBtn
      Left = 557
    end
    inherited bfechar: TBitBtn
      Left = 417
    end
  end
  inherited paginas: TPageControl
    Width = 636
    Height = 97
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = gtocodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = gtoidentificacao
      end
      object gtocodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gtocodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object gtoidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 459
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gtoidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select gtocodigo, gtoidentificacao from gto where gtocodigo=:gto' +
        'codigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gtocodigo'
        Value = nil
      end>
    object registrogtocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'gtocodigo'
    end
    object registrogtoidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'gtoidentificacao'
      Required = True
      Size = 35
    end
  end
end
