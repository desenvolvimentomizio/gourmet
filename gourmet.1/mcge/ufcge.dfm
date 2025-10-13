inherited fcge: Tfcge
  ActiveControl = cgeidentificacao
  Caption = 'Or'#231'amento Gerencial'
  ClientHeight = 202
  ClientWidth = 550
  ExplicitWidth = 566
  ExplicitHeight = 241
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 173
    Width = 550
    ExplicitTop = 173
    ExplicitWidth = 550
    inherited bconfirma: TBitBtn
      Left = 396
      ExplicitLeft = 396
    end
    inherited bcancela: TBitBtn
      Left = 471
      ExplicitLeft = 471
    end
    inherited bfechar: TBitBtn
      Left = 331
      ExplicitLeft = 331
    end
  end
  inherited paginas: TPageControl
    Width = 550
    Height = 173
    ExplicitWidth = 550
    ExplicitHeight = 173
    inherited Principal: TTabSheet
      ExplicitWidth = 542
      ExplicitHeight = 145
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = cgechave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = cgeidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = cgedatainicial
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = cgedatafinal
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 106
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ano no formato AAAA'
        FocusControl = cgeano
      end
      object cgechave: TDBEdit
        Left = 136
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cgechave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cgeidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 393
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cgeidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cgedatainicial: TDBEdit
        Left = 136
        Top = 57
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cgedatainicial'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object cgedatafinal: TDBEdit
        Left = 136
        Top = 84
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cgedatafinal'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object cgeano: TDBEdit
        Left = 136
        Top = 111
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cgeano'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cgechave,'
      '  cgeidentificacao,'
      '  cgedatainicial,'
      '  cgedatafinal,'
      '  cgeobservacao,'
      '  cgepercotimista,'
      '  cgeperpecimista,'
      '  cgeano,'
      '  clbcodigo,'
      '  cgeregistro'
      'FROM cge where cgechave=:cgechave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cgechave'
        Value = nil
      end>
    object registrocgechave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'cgechave'
    end
    object registrocgeidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cgeidentificacao'
      Required = True
      Size = 50
    end
    object registrocgedatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'cgedatainicial'
      Required = True
    end
    object registrocgedatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'cgedatafinal'
      Required = True
    end
    object registrocgeobservacao: TStringField
      FieldName = 'cgeobservacao'
      Size = 500
    end
    object registrocgeano: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'cgeano'
      Required = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrocgeregistro: TDateTimeField
      FieldName = 'cgeregistro'
    end
  end
end
