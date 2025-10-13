inherited faco: Tfaco
  ActiveControl = acoidentificacao
  Caption = 'Tipo de A'#231#227'o'
  ClientHeight = 146
  ClientWidth = 615
  ExplicitWidth = 631
  ExplicitHeight = 185
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 117
    Width = 615
    inherited bconfirma: TBitBtn
      Left = 461
    end
    inherited bcancela: TBitBtn
      Left = 536
    end
    inherited bfechar: TBitBtn
      Left = 396
    end
  end
  inherited paginas: TPageControl
    Width = 615
    Height = 117
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = acocodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        Caption = 'Identifica'#231#227'o'
        FocusControl = acoidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 22
        Height = 13
        Caption = 'Sigla'
        FocusControl = acosigla
      end
      object acocodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 49
        Height = 21
        DataField = 'acocodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object acoidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 462
        Height = 21
        DataField = 'acoidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object acosigla: TDBEdit
        Left = 136
        Top = 57
        Width = 49
        Height = 21
        DataField = 'acosigla'
        DataSource = DSRegistro
        MaxLength = 5
        TabOrder = 2
      end
    end
  end
  inherited cfg: TUniQuery
    Left = 452
    Top = 180
  end
  inherited consulta: TUniQuery
    Left = 448
    Top = 228
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  acocodigo,'
      '  acoidentificacao,'
      '  acosigla'
      'FROM aco where acocodigo=:acocodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'acocodigo'
        Value = nil
      end>
    object registroacocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'acocodigo'
    end
    object registroacoidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'acoidentificacao'
      Required = True
      Size = 50
    end
    object registroacosigla: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'acosigla'
      Required = True
      Size = 5
    end
  end
  inherited dcp: TUniQuery
    Left = 528
    Top = 324
  end
  inherited dtb: TUniQuery
    Left = 484
    Top = 324
  end
  inherited coa: TUniQuery
    Left = 448
    Top = 324
  end
  inherited cpg: TUniQuery
    Left = 444
    Top = 384
  end
  inherited cpc: TUniQuery
    Left = 445
    Top = 433
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 508
    Top = 132
  end
  inherited lou: TUniQuery
    Left = 448
    Top = 128
  end
end
