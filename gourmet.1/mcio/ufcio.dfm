inherited fcio: Tfcio
  ActiveControl = cioidentificacao
  Caption = 'Condi'#231#227'o do Imposto'
  ClientHeight = 127
  ClientWidth = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 98
    Width = 485
    inherited bconfirma: TBitBtn
      Left = 331
    end
    inherited bcancela: TBitBtn
      Left = 406
    end
    inherited bfechar: TBitBtn
      Left = 266
    end
  end
  inherited paginas: TPageControl
    Width = 485
    Height = 98
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = ciocodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = cioidentificacao
      end
      object ciocodigo: TDBEdit
        Left = 148
        Top = 3
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ciocodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cioidentificacao: TDBEdit
        Left = 148
        Top = 30
        Width = 312
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cioidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 354
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select ciocodigo, cioidentificacao from cio where ciocodigo=:cio' +
        'codigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ciocodigo'
        Value = nil
      end>
    object registrociocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ciocodigo'
    end
    object registrocioidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cioidentificacao'
      Required = True
      Size = 35
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
