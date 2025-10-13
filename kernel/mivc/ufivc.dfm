inherited fivc: Tfivc
  ActiveControl = ivcdatahorainicio
  Caption = 'Contagen de Estoque'
  ClientHeight = 145
  ClientWidth = 304
  ExplicitWidth = 320
  ExplicitHeight = 184
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 116
    Width = 304
    inherited bconfirma: TBitBtn
      Left = 150
    end
    inherited bcancela: TBitBtn
      Left = 225
    end
    inherited bfechar: TBitBtn
      Left = 85
    end
  end
  inherited paginas: TPageControl
    Width = 304
    Height = 116
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 45
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registros'
        FocusControl = ivcchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'In'#237'cio da Contagem'
        FocusControl = ivcdatahorainicio
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Final da Contagem'
        FocusControl = ivcdatahorafinal
      end
      object ivcchave: TDBEdit
        Left = 136
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ivcchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ivcdatahorainicio: TDBEdit
        Left = 136
        Top = 30
        Width = 142
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ivcdatahorainicio'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ivcdatahorafinal: TDBEdit
        Left = 136
        Top = 57
        Width = 142
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ivcdatahorafinal'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ivcchave,'
      '  ivcdatahorainicio,'
      '  ivcdatahorafinal,'
      '  clbcodigo'
      'FROM ivc where ivcchave=:ivcchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ivcchave'
        Value = nil
      end>
    object registroivcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registros'
      FieldName = 'ivcchave'
    end
    object registroivcdatahorainicio: TDateTimeField
      DisplayLabel = 'In'#237'cio da Contagem'
      FieldName = 'ivcdatahorainicio'
      Required = True
      EditMask = '!99/99/0000 !90:00;1;_'
    end
    object registroivcdatahorafinal: TDateTimeField
      DisplayLabel = 'Final da Contagem'
      FieldName = 'ivcdatahorafinal'
      EditMask = '!99/99/0000 !90:00;1;_'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
