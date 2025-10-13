inherited favh: Tfavh
  ActiveControl = avhdatainicial
  Caption = 'Altera'#231#227'o de Valor'
  ClientHeight = 147
  ExplicitWidth = 812
  ExplicitHeight = 186
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 118
    ExplicitTop = 118
    inherited bconfirma: TBitBtn
      ExplicitLeft = 636
      ExplicitTop = 2
    end
  end
  inherited paginas: TPageControl
    Height = 118
    ExplicitHeight = 118
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 90
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = avhchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 74
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data para in'#237'cio'
        FocusControl = avhdatainicial
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 77
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor Atualizado'
        FocusControl = avhvalor
      end
      object avhchave: TDBEdit
        Left = 176
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'avhchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object avhdatainicial: TDBEdit
        Left = 176
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'avhdatainicial'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object avhvalor: TDBEdit
        Left = 176
        Top = 57
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'avhvalor'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  avhchave,'
      '  vhfcodigo,'
      '  fclcodigo,'
      '  avhdatainicial,'
      '  avhdatafinal,'
      '  avhvalor,'
      '  clbcodigo,'
      '  avhregistro'
      'FROM avh where avhchave=:avhchave')
    Left = 292
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'avhchave'
        Value = nil
      end>
    object registroavhchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'avhchave'
    end
    object registrovhfcodigo: TIntegerField
      FieldName = 'vhfcodigo'
    end
    object registrofclcodigo: TIntegerField
      FieldName = 'fclcodigo'
    end
    object registroavhdatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'avhdatainicial'
    end
    object registroavhvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'avhvalor'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroavhregistro: TDateTimeField
      DisplayLabel = 'Altera'#231#227'o'
      FieldName = 'avhregistro'
    end
    object registroavhdatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'avhdatafinal'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
