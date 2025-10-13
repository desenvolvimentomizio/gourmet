inherited ftcc: Tftcc
  ActiveControl = tccidentificacao
  Caption = 'Tipo de Contrato'
  ClientHeight = 159
  ClientWidth = 525
  ExplicitWidth = 541
  ExplicitHeight = 198
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 130
    Width = 525
    ExplicitTop = 130
    ExplicitWidth = 525
    inherited bconfirma: TBitBtn
      Left = 371
      ExplicitLeft = 371
    end
    inherited bcancela: TBitBtn
      Left = 446
      ExplicitLeft = 446
    end
    inherited bfechar: TBitBtn
      Left = 306
      ExplicitLeft = 306
    end
  end
  inherited paginas: TPageControl
    Width = 525
    Height = 130
    ExplicitWidth = 525
    ExplicitHeight = 130
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 517
      ExplicitHeight = 102
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tcccodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = tccidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 22
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sigla'
        FocusControl = tccsigla
      end
      object tcccodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcccodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tccidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 361
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tccidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tccsigla: TDBEdit
        Left = 136
        Top = 57
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tccsigla'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select tcccodigo,tccsigla, tccidentificacao from tcc where tccco' +
        'digo=:tcccodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcccodigo'
        Value = nil
      end>
    object registrotcccodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tcccodigo'
    end
    object registrotccidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tccidentificacao'
      Required = True
      Size = 50
    end
    object registrotccsigla: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'tccsigla'
      Required = True
      Size = 5
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
