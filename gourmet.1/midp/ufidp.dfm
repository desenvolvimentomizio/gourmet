inherited fidp: Tfidp
  ActiveControl = idpidentificacao
  Caption = 'Item de M'#243'dulo de Projeto'
  ClientHeight = 124
  ClientWidth = 654
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 95
    Width = 654
    inherited bconfirma: TBitBtn
      Left = 500
    end
    inherited bcancela: TBitBtn
      Left = 575
    end
    inherited bfechar: TBitBtn
      Left = 435
    end
  end
  inherited paginas: TPageControl
    Width = 654
    Height = 95
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = idpcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = idpidentificacao
      end
      object idpcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 53
        Height = 21
        CustomHint = BalloonHint
        DataField = 'idpcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object idpidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 502
        Height = 21
        CustomHint = BalloonHint
        DataField = 'idpidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select idpcodigo, idpidentificacao from idp where idpcodigo=:idp' +
        'codigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'idpcodigo'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idpcodigo'
        ParamType = ptUnknown
      end>
    object registroidpcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'idpcodigo'
      Required = True
    end
    object registroidpidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'idpidentificacao'
      Required = True
      Size = 50
    end
  end
end
