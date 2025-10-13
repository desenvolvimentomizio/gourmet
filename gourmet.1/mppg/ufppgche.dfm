inherited fppgche: Tfppgche
  ActiveControl = ipgnumerocheque
  Caption = 'Ajustar n'#250'mero do Cheque'
  ClientHeight = 117
  ClientWidth = 276
  ExplicitWidth = 292
  ExplicitHeight = 156
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 88
    Width = 276
    inherited bconfirma: TBitBtn
      Left = 122
    end
    inherited bcancela: TBitBtn
      Left = 197
    end
    inherited bfechar: TBitBtn
      Left = 57
    end
  end
  inherited paginas: TPageControl
    Width = 276
    Height = 88
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = ipgchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero do Cheque'
        FocusControl = ipgnumerocheque
      end
      object ipgchave: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ipgchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ipgnumerocheque: TDBEdit
        Left = 136
        Top = 30
        Width = 113
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ipgnumerocheque'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select ipgchave,  ipgnumerocheque from ipg where ipgchave=:ipgch' +
        'ave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ipgchave'
        Value = nil
      end>
    object registroipgchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'ipgchave'
    end
    object registroipgnumerocheque: TStringField
      DisplayLabel = 'N'#250'mero do Cheque'
      FieldName = 'ipgnumerocheque'
      Size = 15
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
