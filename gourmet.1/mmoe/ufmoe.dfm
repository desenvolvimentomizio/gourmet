inherited fmoe: Tfmoe
  Caption = 'Moedas e Indicadores'
  ClientHeight = 148
  ClientWidth = 579
  ExplicitWidth = 595
  ExplicitHeight = 187
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 119
    Width = 579
    ExplicitTop = 119
    ExplicitWidth = 579
    inherited bconfirma: TBitBtn
      Left = 425
      ExplicitLeft = 425
    end
    inherited bcancela: TBitBtn
      Left = 500
      ExplicitLeft = 500
    end
    inherited bfechar: TBitBtn
      Left = 360
      ExplicitLeft = 360
    end
  end
  inherited paginas: TPageControl
    Width = 579
    Height = 119
    ExplicitWidth = 579
    ExplicitHeight = 119
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 571
      ExplicitHeight = 91
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = moecodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 43
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identificacao'
        FocusControl = moeidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 70
        Width = 36
        Height = 13
        CustomHint = BalloonHint
        Caption = 'S'#237'mbolo'
        FocusControl = moesimbolo
      end
      object moecodigo: TDBEdit
        Left = 136
        Top = 13
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'moecodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object moeidentificacao: TDBEdit
        Left = 136
        Top = 40
        Width = 394
        Height = 21
        CustomHint = BalloonHint
        DataField = 'moeidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object moesimbolo: TDBEdit
        Left = 136
        Top = 67
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'moesimbolo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select moecodigo,moeidentificacao,moesimbolo from moe where moe.' +
        'moecodigo=:moecodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'moecodigo'
        Value = nil
      end>
    object registromoecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'moecodigo'
    end
    object registromoeidentificacao: TStringField
      DisplayLabel = 'Identificacao'
      FieldName = 'moeidentificacao'
      Required = True
      Size = 30
    end
    object registromoesimbolo: TStringField
      DisplayLabel = 'S'#237'mbolo'
      FieldName = 'moesimbolo'
      Required = True
      Size = 5
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
