inherited fccu: Tfccu
  Caption = 'Centro de Custo'
  ClientHeight = 153
  ClientWidth = 446
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 124
    Width = 446
    inherited bconfirma: TBitBtn
      Left = 292
    end
    inherited bcancela: TBitBtn
      Left = 367
    end
    inherited bfechar: TBitBtn
      Left = 227
    end
  end
  inherited paginas: TPageControl
    Width = 446
    Height = 124
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = ccucodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 38
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = ccuidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 65
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
      end
      object ccucodigo: TDBEdit
        Left = 88
        Top = 8
        Width = 177
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccucodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ccuidentificacao: TDBEdit
        Left = 88
        Top = 35
        Width = 337
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccuidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ccudtinicio: TDBEdit
        Left = 88
        Top = 62
        Width = 101
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccudtinicio'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select ccucodigo,ccuidentificacao,ccudtinicio from ccu where ccu' +
        'codigo=:ccucodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccucodigo'
        Value = nil
      end>
    object registroccucodigo: TStringField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ccucodigo'
      Size = 60
    end
    object registroccuidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ccuidentificacao'
      Size = 60
    end
    object registroccudtinicio: TDateField
      FieldName = 'ccudtinicio'
      EditMask = '!99/99/9999;1;_'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
