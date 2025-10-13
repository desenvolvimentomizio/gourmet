inherited ffin: Tffin
  Caption = 'Finalizador'
  ClientHeight = 156
  ClientWidth = 704
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 127
    Width = 704
    inherited bconfirma: TBitBtn
      Left = 550
    end
    inherited bcancela: TBitBtn
      Left = 625
    end
    inherited bfechar: TBitBtn
      Left = 485
    end
  end
  inherited paginas: TPageControl
    Width = 704
    Height = 127
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 14
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = fincodigo
      end
      object Label4: TLabel
        Left = 14
        Top = 60
        Width = 123
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Finalizador da Impressora'
        FocusControl = finimpressora
      end
      object Label3: TLabel
        Left = 14
        Top = 33
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Modalidade'
        FocusControl = mdacodigo
      end
      object fincodigo: TDBEdit
        Left = 143
        Top = 3
        Width = 39
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fincodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object finimpressora: TDBEdit
        Left = 143
        Top = 57
        Width = 39
        Height = 21
        CustomHint = BalloonHint
        DataField = 'finimpressora'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object mdacodigo: TDBEdit
        Left = 143
        Top = 30
        Width = 39
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mdacodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select fincodigo,citcodigo,trmcodigo,finimpressora,mdacodigo fro' +
        'm fin'
      'where fincodigo=:fincodigo')
    Left = 324
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fincodigo'
        Value = nil
      end>
    object registrofincodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fincodigo'
    end
    object registrocitcodigo: TIntegerField
      FieldName = 'citcodigo'
    end
    object registrotrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object registromdacodigo: TIntegerField
      DisplayLabel = 'Modalidade'
      FieldName = 'mdacodigo'
    end
    object registromdaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'mdaidentificacao'
      LookupDataSet = mda
      LookupKeyFields = 'mdacodigo'
      LookupResultField = 'mdaidentificacao'
      KeyFields = 'mdacodigo'
      Size = 35
      Lookup = True
    end
    object registrofinimpressora: TIntegerField
      DisplayLabel = 'Impressora'
      FieldName = 'finimpressora'
      Required = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object mda: TUniQuery
    SQL.Strings = (
      'select mdacodigo, mdaidentificacao from mda')
    Left = 488
    Top = 72
    object mdamdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
    object mdamdaidentificacao: TStringField
      FieldName = 'mdaidentificacao'
      Size = 35
    end
  end
end
