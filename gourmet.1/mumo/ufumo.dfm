inherited fumo: Tfumo
  ActiveControl = umoidentificacao
  Caption = 'Unidade Mont'#225'ria'
  ClientHeight = 140
  ClientWidth = 399
  ExplicitWidth = 415
  ExplicitHeight = 179
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 111
    Width = 399
    ExplicitTop = 111
    ExplicitWidth = 399
    inherited bconfirma: TBitBtn
      Left = 245
      ExplicitLeft = 245
    end
    inherited bcancela: TBitBtn
      Left = 320
      ExplicitLeft = 320
    end
    inherited bfechar: TBitBtn
      Left = 180
      ExplicitLeft = 180
    end
  end
  inherited paginas: TPageControl
    Width = 399
    Height = 111
    ExplicitWidth = 399
    ExplicitHeight = 111
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 391
      ExplicitHeight = 83
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = umocodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        Caption = 'Identifica'#231#227'o'
        FocusControl = umoidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 22
        Height = 13
        Caption = 'Sigla'
        FocusControl = umosigla
      end
      object umocodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 49
        Height = 21
        DataField = 'umocodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object umoidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 244
        Height = 21
        DataField = 'umoidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object umosigla: TDBEdit
        Left = 136
        Top = 57
        Width = 41
        Height = 21
        DataField = 'umosigla'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited cfg: TUniQuery
    Left = 388
    Top = 100
  end
  inherited consulta: TUniQuery
    Left = 384
    Top = 148
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  umocodigo,'
      '  umoidentificacao,'
      '  umosigla'
      'FROM umo where umocodigo=:umocodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'umocodigo'
        Value = nil
      end>
    object registroumocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'umocodigo'
    end
    object registroumoidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'umoidentificacao'
      Required = True
      Size = 50
    end
    object registroumosigla: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'umosigla'
      Required = True
      Size = 5
    end
  end
  inherited dcp: TUniQuery
    Left = 464
    Top = 244
  end
  inherited dtb: TUniQuery
    Left = 420
    Top = 244
  end
  inherited coa: TUniQuery
    Left = 384
    Top = 244
  end
  inherited cpg: TUniQuery
    Left = 380
    Top = 304
  end
  inherited cpc: TUniQuery
    Left = 381
    Top = 353
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 444
    Top = 52
  end
  inherited lou: TUniQuery
    Left = 384
    Top = 48
  end
end
