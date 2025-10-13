inherited ffer: Tffer
  ActiveControl = feridentificacao
  Caption = 'Utens'#237'lio ou Ferramenta'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paginas: TPageControl
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = fercodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = feridentificacao
      end
      object fercodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fercodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object feridentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 278
        Height = 21
        CustomHint = BalloonHint
        DataField = 'feridentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select fercodigo, feridentificacao from fer where fercodigo=:fer' +
        'codigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fercodigo'
        Value = nil
      end>
    object registrofercodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'fercodigo'
    end
    object registroferidentificacao: TStringField
      FieldName = 'feridentificacao'
      Required = True
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
