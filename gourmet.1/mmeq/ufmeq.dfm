inherited fmeq: Tfmeq
  ActiveControl = meqidentificacao
  Caption = 'Cadastro de Marca de Equipamentos'
  ClientHeight = 202
  ClientWidth = 444
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 173
    Width = 444
    inherited bconfirma: TBitBtn
      Left = 290
    end
    inherited bcancela: TBitBtn
      Left = 365
    end
    inherited bfechar: TBitBtn
      Left = 225
    end
  end
  inherited paginas: TPageControl
    Width = 444
    Height = 173
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 16
        Top = 48
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = meqcodigo
      end
      object Label2: TLabel
        Left = 16
        Top = 75
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = meqidentificacao
      end
      object meqcodigo: TDBEdit
        Left = 100
        Top = 45
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'meqcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object meqidentificacao: TDBEdit
        Left = 100
        Top = 72
        Width = 250
        Height = 21
        CustomHint = BalloonHint
        DataField = 'meqidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = meqidentificacaoExit
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT m.meqcodigo'
      '     , m.meqidentificacao'
      'FROM meq m'
      'WHERE m.meqcodigo = :meqcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meqcodigo'
        Value = nil
      end>
    object registromeqcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'meqcodigo'
    end
    object registromeqidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'meqidentificacao'
      Required = True
      Size = 60
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
