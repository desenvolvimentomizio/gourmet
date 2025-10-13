inherited fgbp: Tfgbp
  ActiveControl = gbpcodigo
  Caption = 'Grupo de Bens Patrimoniais'
  ClientHeight = 132
  ClientWidth = 605
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 103
    Width = 605
    inherited bconfirma: TBitBtn
      Left = 451
    end
    inherited bcancela: TBitBtn
      Left = 526
    end
    inherited bfechar: TBitBtn
      Left = 386
    end
  end
  inherited paginas: TPageControl
    Width = 605
    Height = 103
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 3
        Top = 19
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = gbpcodigo
      end
      object Label2: TLabel
        Left = 3
        Top = 46
        Width = 62
        Height = 13
        Caption = 'Identificacao'
        FocusControl = gbpidentificacao
      end
      object gbpcodigo: TDBEdit
        Left = 136
        Top = 16
        Width = 57
        Height = 21
        DataField = 'gbpcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object gbpidentificacao: TDBEdit
        Left = 136
        Top = 43
        Width = 425
        Height = 21
        DataField = 'gbpidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select gbpcodigo,gbpidentificacao from gbp where gbp.gbpcodigo=:' +
        'gbpcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gbpcodigo'
      end>
    object registrogbpcodigo: TIntegerField
      FieldName = 'gbpcodigo'
      Required = True
    end
    object registrogbpidentificacao: TStringField
      FieldName = 'gbpidentificacao'
      Size = 50
    end
  end
end
