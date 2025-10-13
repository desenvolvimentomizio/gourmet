inherited fidt: Tfidt
  Caption = 'fidt'
  ClientHeight = 402
  ClientWidth = 702
  ExplicitWidth = 718
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 373
    Width = 702
    inherited bconfirma: TBitBtn
      Left = 548
    end
    inherited bcancela: TBitBtn
      Left = 623
    end
    inherited bfechar: TBitBtn
      Left = 483
    end
  end
  inherited paginas: TPageControl
    Width = 702
    Height = 373
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 376
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  idtchave,'
      '  mdtchave,'
      '  itmchave,'
      '  meschave,'
      '  flacodigo,'
      '  idtquantidade,'
      '  idtmotivo,'
      '  unicodigo,'
      '  idtvalor,'
      '  idtdesconto,'
      '  idttotal'
      '  FROM'
      '  idt where idtchave=:idtchave ')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idtchave'
        Value = nil
      end>
    object registroidtchave: TIntegerField
      FieldName = 'idtchave'
    end
    object registromdtchave: TIntegerField
      FieldName = 'mdtchave'
    end
    object registroitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object registromeschave: TIntegerField
      FieldName = 'meschave'
    end
    object registroflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object registroidtquantidade: TIntegerField
      FieldName = 'idtquantidade'
    end
    object registroidtmotivo: TStringField
      FieldName = 'idtmotivo'
      Size = 100
    end
    object registrounicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object registroidtvalor: TFloatField
      FieldName = 'idtvalor'
    end
    object registroidtdesconto: TFloatField
      FieldName = 'idtdesconto'
    end
    object registroidttotal: TFloatField
      FieldName = 'idttotal'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
