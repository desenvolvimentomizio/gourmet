inherited fafc: Tfafc
  ActiveControl = afcdatainicial
  Caption = 'Altera'#231#227'o do Valor'
  ClientHeight = 146
  ClientWidth = 300
  ExplicitWidth = 316
  ExplicitHeight = 185
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 117
    Width = 300
    ExplicitTop = 117
    ExplicitWidth = 300
    inherited bconfirma: TBitBtn
      Left = 146
      ExplicitLeft = 146
    end
    inherited bcancela: TBitBtn
      Left = 221
      ExplicitLeft = 221
    end
    inherited bfechar: TBitBtn
      Left = 81
      ExplicitLeft = 81
    end
  end
  inherited paginas: TPageControl
    Width = 300
    Height = 117
    ExplicitWidth = 300
    ExplicitHeight = 117
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 292
      ExplicitHeight = 89
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = afcchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 74
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data para in'#237'cio'
        FocusControl = afcdatainicial
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 77
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor Atualizado'
        FocusControl = afcvalor
      end
      object afcchave: TDBEdit
        Left = 176
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'afcchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object afcdatainicial: TDBEdit
        Left = 176
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'afcdatainicial'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object afcvalor: TDBEdit
        Left = 176
        Top = 57
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'afcvalor'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  afcchave,'
      '  fclcodigo,'
      '  afcdatainicial,'
      '  afcdatafinal,'
      '  afcvalor,'
      '  clbcodigo,'
      '  afcregistro'
      'FROM afc where afcchave=:afcchave ')
    Left = 268
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'afcchave'
        Value = nil
      end>
    object registroafcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'afcchave'
    end
    object registroafcdatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'afcdatainicial'
      Required = True
    end
    object registroafcvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'afcvalor'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroafcregistro: TDateTimeField
      FieldName = 'afcregistro'
    end
    object registrofclcodigo: TIntegerField
      FieldName = 'fclcodigo'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroafcdatafinal: TDateField
      FieldName = 'afcdatafinal'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
