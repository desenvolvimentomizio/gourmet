inherited fmrv: Tfmrv
  ActiveControl = mrvidentificacao
  Caption = 'Cadastro de Marca de Ve'#237'culos'
  ClientHeight = 211
  ClientWidth = 439
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 182
    Width = 439
    inherited bconfirma: TBitBtn
      Left = 285
    end
    inherited bcancela: TBitBtn
      Left = 360
    end
    inherited bfechar: TBitBtn
      Left = 220
    end
  end
  inherited paginas: TPageControl
    Width = 439
    Height = 182
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 24
        Top = 48
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = mrvcodigo
      end
      object Label2: TLabel
        Left = 24
        Top = 75
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = mrvidentificacao
      end
      object mrvcodigo: TDBEdit
        Left = 110
        Top = 45
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mrvcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object mrvidentificacao: TDBEdit
        Left = 110
        Top = 72
        Width = 200
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mrvidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = mrvidentificacaoExit
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT m.mrvcodigo'
      '     , m.mrvidentificacao'
      'FROM mrv m'
      'WHERE m.mrvcodigo = :mrvcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mrvcodigo'
        Value = nil
      end>
    object registromrvcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mrvcodigo'
    end
    object registromrvidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'mrvidentificacao'
      Required = True
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
