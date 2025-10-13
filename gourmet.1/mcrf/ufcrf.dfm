inherited fcrf: Tfcrf
  ActiveControl = crfidentificacao
  Caption = #205'ndice de Corre'#231#227'o Mont'#225'ria'
  ClientHeight = 148
  ClientWidth = 486
  ExplicitWidth = 502
  ExplicitHeight = 187
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 119
    Width = 486
    ExplicitTop = 119
    inherited bconfirma: TBitBtn
      Left = 332
    end
    inherited bcancela: TBitBtn
      Left = 407
    end
    inherited bfechar: TBitBtn
      Left = 267
    end
  end
  inherited paginas: TPageControl
    Width = 486
    Height = 119
    ExplicitHeight = 119
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 91
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = crfcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = crfidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 22
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sigla'
        FocusControl = crfsigla
      end
      object crfcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'crfcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object crfidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 330
        Height = 21
        CustomHint = BalloonHint
        DataField = 'crfidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object crfsigla: TDBEdit
        Left = 136
        Top = 57
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'crfsigla'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  crfcodigo,'
      '  crfidentificacao,'
      '  crfsigla'
      'FROM crf where crfcodigo=:crfcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'crfcodigo'
        Value = nil
      end>
    object registrocrfcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'crfcodigo'
    end
    object registrocrfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'crfidentificacao'
      Required = True
      Size = 50
    end
    object registrocrfsigla: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'crfsigla'
      Required = True
      Size = 5
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
