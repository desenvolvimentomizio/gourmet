inherited ftli: Tftli
  ActiveControl = tliidentificacao
  Caption = 'Tipo de Afastamento'
  ClientHeight = 142
  ExplicitWidth = 812
  ExplicitHeight = 181
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 113
  end
  inherited paginas: TPageControl
    Height = 113
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tlicodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = tliidentificacao
      end
      object Label10: TLabel
        Left = 8
        Top = 61
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sele'#231#227'o de Cor'
      end
      object tlicodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tlicodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tliidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 486
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tliidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object plcor: TPanel
        Left = 136
        Top = 57
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        Caption = 'cor'
        TabOrder = 2
        OnClick = plcorClick
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tlicodigo,'
      '  tliidentificacao,'
      '  tlicor'
      'FROM tli where tlicodigo=:tlicodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tlicodigo'
        Value = nil
      end>
    object registrotlicodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tlicodigo'
    end
    object registrotliidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tliidentificacao'
      Size = 50
    end
    object registrotlicor: TStringField
      DisplayLabel = 'Cor'
      FieldName = 'tlicor'
      Size = 30
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object ColorDialog: TColorDialog
    Left = 276
  end
end
