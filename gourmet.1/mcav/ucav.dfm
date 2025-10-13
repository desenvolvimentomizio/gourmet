inherited fcav: Tfcav
  Caption = 'fcav'
  ClientHeight = 551
  ClientWidth = 738
  ExplicitWidth = 754
  ExplicitHeight = 590
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 522
    Width = 738
    inherited bconfirma: TBitBtn
      Left = 584
    end
    inherited bcancela: TBitBtn
      Left = 659
    end
    inherited bfechar: TBitBtn
      Left = 519
    end
  end
  inherited paginas: TPageControl
    Width = 738
    Height = 522
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cavchave,'
      '  acocodigo,'
      '  etdcodigo,'
      '  cavregistro,'
      '  cavpasta,'
      '  umocodigo,'
      '  crfcodigo,'
      '  cavvaloracao,'
      '  cavdiavcto,'
      '  cavpercentualmes,'
      '  cavvalormes,'
      '  cavobservacao'
      'FROM cav where cavchave=:cavchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cavchave'
        Value = nil
      end>
    object registrocavchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'cavchave'
    end
    object registrocavpasta: TStringField
      FieldName = 'cavpasta'
    end
    object registroacocodigo: TIntegerField
      FieldName = 'acocodigo'
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object registrocavregistro: TDateField
      FieldName = 'cavregistro'
    end
    object registroumocodigo: TIntegerField
      FieldName = 'umocodigo'
    end
    object registrocrfcodigo: TIntegerField
      FieldName = 'crfcodigo'
    end
    object registrocavvaloracao: TFloatField
      FieldName = 'cavvaloracao'
    end
    object registrocavdiavcto: TIntegerField
      FieldName = 'cavdiavcto'
    end
    object registrocavpercentualmes: TFloatField
      FieldName = 'cavpercentualmes'
    end
    object registrocavvalormes: TFloatField
      FieldName = 'cavvalormes'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
