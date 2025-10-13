inherited fetl: Tfetl
  ActiveControl = etllimitetotal
  Caption = 'Cr'#233'dito e Faturamento'
  ClientHeight = 247
  ClientWidth = 534
  ExplicitWidth = 550
  ExplicitHeight = 286
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 218
    Width = 534
    ExplicitTop = 218
    ExplicitWidth = 534
    inherited bconfirma: TBitBtn
      Left = 380
      ExplicitLeft = 380
    end
    inherited bcancela: TBitBtn
      Left = 455
      ExplicitLeft = 455
    end
    inherited bfechar: TBitBtn
      Left = 315
      ExplicitLeft = 315
    end
  end
  inherited paginas: TPageControl
    Width = 534
    Height = 218
    ExplicitWidth = 534
    ExplicitHeight = 218
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 526
      ExplicitHeight = 190
      object Label1: TLabel
        Left = 3
        Top = 6
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = etlchave
      end
      object Label3: TLabel
        Left = 3
        Top = 33
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Limite de Cr'#233'dito'
        FocusControl = etllimitetotal
      end
      object Label4: TLabel
        Left = 3
        Top = 60
        Width = 100
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Faturamento'
      end
      object letldias: TLabel
        Left = 3
        Top = 138
        Width = 68
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Dias / Dia Fixo'
        FocusControl = etldias
      end
      object Label2: TLabel
        Left = 3
        Top = 165
        Width = 172
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual de Desconto conveniado'
        FocusControl = etldescontopadrao
      end
      object etlchave: TDBEdit
        Left = 196
        Top = 3
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etlchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etllimitetotal: TDBEdit
        Left = 196
        Top = 30
        Width = 109
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etllimitetotal'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object etldias: TDBEdit
        Left = 196
        Top = 135
        Width = 45
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etldias'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object etltipo: TDBRadioGroup
        Left = 196
        Top = 57
        Width = 185
        Height = 72
        CustomHint = BalloonHint
        Caption = ' Tipo de Faturamento '
        DataField = 'etltipo'
        DataSource = DSRegistro
        Items.Strings = (
          'Intervalo de Dias'
          'Dia Fixo')
        TabOrder = 2
        TabStop = True
        Values.Strings = (
          '1'
          '2'
          '')
      end
      object etldescontopadrao: TDBEdit
        Left = 196
        Top = 162
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etldescontopadrao'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Top = 0
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etlchave,'
      '  etdcodigo,'
      '  etllimitetotal,'
      '  etltipo,'
      '  etldias,'
      '  etldescontopadrao'
      'FROM etl'
      'where etlchave=:etlchave')
    BeforePost = registroBeforePost
    Left = 340
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etlchave'
        Value = nil
      end>
    object registroetlchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'etlchave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Entidade'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetllimitetotal: TFloatField
      DisplayLabel = 'Limite de Cr'#233'dito'
      FieldName = 'etllimitetotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroetltipo: TIntegerField
      DisplayLabel = 'Tipo de Faturamento'
      FieldName = 'etltipo'
      Required = True
    end
    object registroetldias: TIntegerField
      DisplayLabel = 'Dias / Dia Fixo'
      FieldName = 'etldias'
      Required = True
    end
    object registroetldescontopadrao: TFloatField
      DisplayLabel = 'Desconto Padr'#227'o'
      FieldName = 'etldescontopadrao'
      Required = True
      DisplayFormat = '#,##0.0'
      EditFormat = '#,##0.0'
    end
  end
  inherited BalloonHint: TBalloonHint
    Left = 452
    Top = 96
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
