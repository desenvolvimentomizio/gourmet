inherited fcgg: Tfcgg
  ActiveControl = cggcodigo
  Caption = 'Agrupamento Cont'#225'bil'
  ClientHeight = 118
  ClientWidth = 626
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 89
    Width = 626
    inherited bconfirma: TBitBtn
      Left = 472
    end
    inherited bcancela: TBitBtn
      Left = 547
    end
    inherited bfechar: TBitBtn
      Left = 407
    end
  end
  inherited paginas: TPageControl
    Width = 626
    Height = 89
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = cggcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = cggidentificacao
      end
      object cggcodigo: TDBEdit
        Left = 148
        Top = 3
        Width = 37
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cggcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cggidentificacao: TDBEdit
        Left = 148
        Top = 30
        Width = 453
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cggidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cggcodigo,'
      '  cggidentificacao'
      'FROM cgg'
      'where cggcodigo=:cggcodigo')
    Left = 292
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cggcodigo'
        Value = nil
      end>
    object registrocggcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cggcodigo'
      Required = True
    end
    object registrocggidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cggidentificacao'
      Required = True
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
