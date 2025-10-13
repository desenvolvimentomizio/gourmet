inherited ftto: Tftto
  ActiveControl = ttoidentificacao
  Caption = 'Tipos de Opera'#231#227'o de Estoque'
  ClientHeight = 120
  ClientWidth = 628
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 91
    Width = 628
    inherited bconfirma: TBitBtn
      Left = 474
    end
    inherited bcancela: TBitBtn
      Left = 549
    end
    inherited bfechar: TBitBtn
      Left = 409
    end
  end
  inherited paginas: TPageControl
    Width = 628
    Height = 91
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 3
        Top = 11
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = ttocodigo
      end
      object Label2: TLabel
        Left = 3
        Top = 38
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
      end
      object ttocodigo: TDBEdit
        Left = 136
        Top = 8
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttocodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ttoidentificacao: TDBEdit
        Left = 136
        Top = 35
        Width = 470
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttoidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select ttocodigo,ttoidentificacao from tto where tto.ttocodigo=t' +
        'tocodigo')
    Left = 268
    Top = 24
    object registrottocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ttocodigo'
    end
    object registrottoidentificacao: TStringField
      FieldName = 'ttoidentificacao'
      Required = True
      Size = 50
    end
  end
end
