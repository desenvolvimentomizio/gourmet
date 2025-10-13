inherited fmar: Tfmar
  ActiveControl = maridentificacao
  Caption = 'Marca'
  ClientHeight = 119
  ClientWidth = 458
  ExplicitWidth = 474
  ExplicitHeight = 158
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 90
    Width = 458
    ExplicitTop = 112
    ExplicitWidth = 458
    inherited bconfirma: TBitBtn
      Left = 304
      ExplicitLeft = 304
    end
    inherited bcancela: TBitBtn
      Left = 379
      ExplicitLeft = 379
    end
    inherited bfechar: TBitBtn
      Left = 239
      ExplicitLeft = 239
    end
  end
  inherited paginas: TPageControl
    Width = 458
    Height = 90
    ExplicitWidth = 458
    ExplicitHeight = 112
    inherited Principal: TTabSheet
      ExplicitWidth = 450
      ExplicitHeight = 62
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = marcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 29
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Marca'
        FocusControl = maridentificacao
      end
      object marcodigo: TDBEdit
        Left = 144
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'marcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object maridentificacao: TDBEdit
        Left = 144
        Top = 30
        Width = 265
        Height = 21
        CustomHint = BalloonHint
        DataField = 'maridentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited consulta: TUniQuery
    Left = 352
    Top = 4
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select marcodigo,maridentificacao,marpercentual from mar where m' +
        'arcodigo=:marcodigo')
    Left = 268
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'marcodigo'
        Value = nil
      end>
    object registromarcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'marcodigo'
    end
    object registromaridentificacao: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'maridentificacao'
      Required = True
      Size = 35
    end
    object registromarpercentual: TFloatField
      DisplayLabel = 'Margem  de lucro deseja'
      FieldName = 'marpercentual'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
  end
end
