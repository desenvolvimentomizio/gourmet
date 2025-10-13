inherited fsdp: Tfsdp
  ActiveControl = sdpidentificacao
  Caption = 'Sub-Grupos de Projetos'
  ClientHeight = 119
  ClientWidth = 727
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 90
    Width = 727
    inherited bconfirma: TBitBtn
      Left = 573
    end
    inherited bcancela: TBitBtn
      Left = 648
    end
    inherited bfechar: TBitBtn
      Left = 508
    end
  end
  inherited paginas: TPageControl
    Width = 727
    Height = 90
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = sdpcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = sdpidentificacao
      end
      object sdpcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sdpcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object sdpidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 574
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sdpidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select sdpcodigo, sdpidentificacao from sdp where sdpcodigo=:sdp' +
        'codigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sdpcodigo'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sdpcodigo'
        ParamType = ptUnknown
      end>
    object registrosdpcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'sdpcodigo'
      Required = True
    end
    object registrosdpidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'sdpidentificacao'
      Required = True
      Size = 50
    end
  end
end
