inherited feta: Tfeta
  ActiveControl = etaidentificacao
  Caption = 'Est'#225'gio'
  ClientHeight = 121
  ClientWidth = 448
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 92
    Width = 448
    inherited bconfirma: TBitBtn
      Left = 294
    end
    inherited bcancela: TBitBtn
      Left = 369
    end
    inherited bfechar: TBitBtn
      Left = 229
    end
  end
  inherited paginas: TPageControl
    Width = 448
    Height = 92
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = etacodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 35
        Height = 13
        Caption = 'Est'#225'gio'
        FocusControl = etaidentificacao
      end
      object etacodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 53
        Height = 21
        DataField = 'etacodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etaidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 293
        Height = 21
        DataField = 'etaidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select etacodigo, etaidentificacao from eta where etacodigo=:eta' +
        'codigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'etacodigo'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etacodigo'
        ParamType = ptUnknown
      end>
    object registroetacodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etacodigo'
      Required = True
    end
    object registroetaidentificacao: TStringField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'etaidentificacao'
      Required = True
      Size = 35
    end
  end
end
