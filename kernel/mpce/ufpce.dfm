inherited fpce: Tfpce
  ActiveControl = pcedatahorainicio
  Caption = 'Per'#237'odo de Contagem'
  ClientHeight = 152
  ClientWidth = 325
  ExplicitWidth = 341
  ExplicitHeight = 191
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 119
    Width = 319
    ExplicitTop = 119
    ExplicitWidth = 319
    inherited psituacao: TPanel
      ExplicitHeight = 22
    end
    inherited bconfirma: TBitBtn
      Left = 146
      ExplicitLeft = 146
      ExplicitHeight = 22
    end
    inherited bcancela: TBitBtn
      Left = 232
      ExplicitLeft = 232
      ExplicitHeight = 22
    end
    inherited bfechar: TBitBtn
      Left = 60
      ExplicitLeft = 60
      ExplicitHeight = 22
    end
  end
  inherited paginas: TPageControl
    Width = 325
    Height = 116
    ExplicitWidth = 325
    ExplicitHeight = 116
    inherited Principal: TTabSheet
      ExplicitWidth = 317
      ExplicitHeight = 88
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = pcechave
      end
      object lbpcedatahorainicio: TLabel
        Left = 8
        Top = 33
        Width = 98
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data e hora do inicio'
        FocusControl = pcedatahorainicio
      end
      object lbpcedatahorafinal: TLabel
        Left = 8
        Top = 60
        Width = 97
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data e hora do Final'
        FocusControl = pcedatahorafinal
      end
      object pcechave: TDBEdit
        Left = 132
        Top = 3
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcechave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object pcedatahorainicio: TDBEdit
        Left = 132
        Top = 30
        Width = 149
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcedatahorainicio'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object pcedatahorafinal: TDBEdit
        Left = 132
        Top = 57
        Width = 149
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcedatahorafinal'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcechave,'
      '  pcedatahorainicio,'
      '  pcedatahorafinal,'
      '  clbcodigo'
      'FROM pce where pcechave=:pcechave')
    Left = 292
    Top = 0
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcechave'
        Value = nil
      end>
    object registropcechave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'pcechave'
    end
    object registropcedatahorainicio: TDateTimeField
      DisplayLabel = 'Data e hora do inicio'
      FieldName = 'pcedatahorainicio'
      Required = True
      EditMask = '!99/99/0000 99:99:99;1;_'
    end
    object registropcedatahorafinal: TDateTimeField
      DisplayLabel = 'Data e hora do Final'
      FieldName = 'pcedatahorafinal'
      EditMask = '!99/99/0000 99:99:99;1;_'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
  end
end
