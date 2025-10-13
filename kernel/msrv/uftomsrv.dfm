inherited ftomsrv: Tftomsrv
  Caption = 'Observa'#231#245'es'
  ClientHeight = 194
  ClientWidth = 805
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 165
    Width = 805
    inherited bconfirma: TBitBtn
      Left = 651
    end
    inherited bcancela: TBitBtn
      Left = 726
    end
    inherited bfechar: TBitBtn
      Left = 586
    end
  end
  inherited paginas: TPageControl
    Width = 805
    Height = 165
    inherited Principal: TTabSheet
      object Label2: TLabel
        Left = 12
        Top = 5
        Width = 109
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo da Observa'#231#227'o'
        FocusControl = tofcodigo
      end
      object Label1: TLabel
        Left = 12
        Top = 33
        Width = 141
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento da Observa'#231#227'o'
        FocusControl = tofcodigo
      end
      object tofcodigo: TDBEdit
        Left = 159
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tofcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tomobs: TDBMemo
        Left = 159
        Top = 30
        Width = 562
        Height = 51
        CustomHint = BalloonHint
        DataField = 'tomobs'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '02.04.09.001-05'
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select tomchave,meschave,tofcodigo, tomobs from tom where tomcha' +
        've=:tomchave and meschave=:meschave')
    Left = 200
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tomchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object registrotomchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'tomchave'
    end
    object registromeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object registrotofcodigo: TIntegerField
      FieldName = 'tofcodigo'
    end
    object registrotofidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tofidentificacao'
      LookupDataSet = tof
      LookupKeyFields = 'tofcodigo'
      LookupResultField = 'tofidentificacao'
      KeyFields = 'tofcodigo'
      Size = 250
      Lookup = True
    end
    object registrotomobs: TStringField
      FieldName = 'tomobs'
      Size = 200
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tof: TUniQuery
    SQL.Strings = (
      'select tofcodigo, tofidentificacao from tof')
    Left = 360
    Top = 88
    object toftofcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'tofcodigo'
    end
    object toftofidentificacao: TStringField
      FieldName = 'tofidentificacao'
      Required = True
      Size = 350
    end
  end
  object Dtof: TUniDataSource
    DataSet = tof
    Left = 456
    Top = 76
  end
end
