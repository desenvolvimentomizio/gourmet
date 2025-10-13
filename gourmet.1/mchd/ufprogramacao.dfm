inherited fprogramacao: Tfprogramacao
  ActiveControl = chddataatendimento
  Caption = 'Programa'#231#227'o'
  ClientHeight = 116
  ClientWidth = 341
  ExplicitWidth = 357
  ExplicitHeight = 155
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 87
    Width = 341
    inherited bconfirma: TBitBtn
      Left = 187
    end
    inherited bcancela: TBitBtn
      Left = 262
    end
    inherited bfechar: TBitBtn
      Left = 122
    end
  end
  inherited paginas: TPageControl
    Width = 341
    Height = 87
    ExplicitTop = -2
    ExplicitHeight = 98
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 5
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = chdchave
      end
      object Label2: TLabel
        Left = 8
        Top = 32
        Width = 142
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Programa'#231#227'o de Atendimento'
        FocusControl = chddataatendimento
      end
      object chdchave: TDBEdit
        Left = 162
        Top = 2
        Width = 71
        Height = 21
        CustomHint = BalloonHint
        DataField = 'chdchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object chddataatendimento: TDBEdit
        Left = 162
        Top = 29
        Width = 95
        Height = 21
        CustomHint = BalloonHint
        DataField = 'chddataatendimento'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select chdchave, chddataatendimento,ttccodigo from chd where chd' +
        'chave=:chdchave')
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chdchave'
        Value = nil
      end>
    object registrochdchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'chdchave'
    end
    object registrochddataatendimento: TDateField
      DisplayLabel = 'Prograna'#231#227'o de Atendimento'
      FieldName = 'chddataatendimento'
      Required = True
    end
    object registrottccodigo: TIntegerField
      FieldName = 'ttccodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tec: TUniQuery
    SQL.Strings = (
      
        'select teccodigo, tecidentificacao, tecsituacao from tec where t' +
        'tccodigo=:ttccodigo and tecsituacao=8')
    Left = 268
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ttccodigo'
        Value = nil
      end>
    object tecteccodigo: TIntegerField
      FieldName = 'teccodigo'
    end
    object tectecidentificacao: TStringField
      FieldName = 'tecidentificacao'
      Size = 50
    end
    object tectecsituacao: TIntegerField
      FieldName = 'tecsituacao'
    end
  end
  object ech: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  echchave,'
      '  chdchave,'
      '  echregistro,'
      '  clbcodigo,'
      '  teccodigo'
      'FROM ech limit 0')
    Left = 120
    Top = 8
    object echechchave: TIntegerField
      FieldName = 'echchave'
    end
    object echchdchave: TIntegerField
      FieldName = 'chdchave'
    end
    object echechregistro: TDateTimeField
      FieldName = 'echregistro'
    end
    object echclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object echteccodigo: TIntegerField
      FieldName = 'teccodigo'
    end
  end
end
