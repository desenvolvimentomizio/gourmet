inherited fech: Tfech
  Caption = 'Est'#225'gio'
  ClientHeight = 530
  ClientWidth = 555
  ExplicitWidth = 571
  ExplicitHeight = 569
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 501
    Width = 555
    ExplicitTop = 501
    ExplicitWidth = 555
    inherited bconfirma: TBitBtn
      Left = 401
      ExplicitLeft = 401
    end
    inherited bcancela: TBitBtn
      Left = 476
      ExplicitLeft = 476
    end
    inherited bfechar: TBitBtn
      Left = 336
      ExplicitLeft = 336
    end
  end
  inherited paginas: TPageControl
    Width = 555
    Height = 501
    ExplicitWidth = 555
    ExplicitHeight = 501
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 547
      ExplicitHeight = 473
      object dbEstagio: TDBRadioGroup
        Left = 0
        Top = 0
        Width = 547
        Height = 473
        CustomHint = BalloonHint
        Align = alClient
        Caption = 'Est'#225'gio'
        DataField = 'teccodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  echchave,'
      '  chdchave,'
      '  echregistro,'
      '  clbcodigo,'
      '  teccodigo'
      'FROM ech where echchave=:echchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'echchave'
        Value = nil
      end>
    object registroechchave: TIntegerField
      FieldName = 'echchave'
    end
    object registrochdchave: TIntegerField
      FieldName = 'chdchave'
    end
    object registroechregistro: TDateTimeField
      FieldName = 'echregistro'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroteccodigo: TIntegerField
      FieldName = 'teccodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tec: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  teccodigo,'
      '  tecidentificacao,'
      '  ttccodigo,'
      '  tecposicao'
      'FROM tec where ttccodigo=:ttccodigo order by tecposicao')
    Left = 228
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ttccodigo'
        Value = nil
      end>
    object tecteccodigo: TIntegerField
      FieldName = 'teccodigo'
    end
    object tecttccodigo: TIntegerField
      FieldName = 'ttccodigo'
    end
    object tectecidentificacao: TStringField
      FieldName = 'tecidentificacao'
      Size = 50
    end
    object tectecposicao: TIntegerField
      FieldName = 'tecposicao'
    end
  end
end
