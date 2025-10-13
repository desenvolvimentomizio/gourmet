inherited fajtbase: Tfajtbase
  ActiveControl = punbase
  Caption = 'Altera'#231#227'o de Custo Base'
  ClientHeight = 142
  ClientWidth = 342
  ExplicitWidth = 358
  ExplicitHeight = 181
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 113
    Width = 342
    inherited bconfirma: TBitBtn
      Left = 188
    end
    inherited bcancela: TBitBtn
      Left = 263
    end
    inherited bfechar: TBitBtn
      Left = 123
    end
  end
  inherited paginas: TPageControl
    Width = 342
    Height = 113
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label5: TLabel
        Left = 8
        Top = 6
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
      end
      object Label7: TLabel
        Left = 8
        Top = 33
        Width = 82
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pre'#231'o de Compra'
      end
      object Label1: TLabel
        Left = 8
        Top = 60
        Width = 69
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Base do Custo'
      end
      object punidentificacao: TDBEdit
        Left = 136
        Top = 3
        Width = 113
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = clSilver
        DataField = 'punidentificacao'
        DataSource = DSRegistro
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object puncusto: TDBEdit
        Left = 136
        Top = 30
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = 16767152
        DataField = 'puncusto'
        DataSource = DSRegistro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object punbase: TDBEdit
        Left = 136
        Top = 57
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        Color = clWhite
        DataField = 'punbase'
        DataSource = DSRegistro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select puncodigo, procodigo, punbase, punidentificacao,puncusto ' +
        'from pun where puncodigo=:puncodigo and procodigo=:procodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'puncodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object registropuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object registroprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object registropunbase: TFloatField
      FieldName = 'punbase'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registropunidentificacao: TStringField
      FieldName = 'punidentificacao'
      Size = 50
    end
    object registropuncusto: TFloatField
      FieldName = 'puncusto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
