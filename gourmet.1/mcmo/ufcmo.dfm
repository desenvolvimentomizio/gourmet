inherited fcmo: Tfcmo
  ActiveControl = cmodata
  Caption = 'Cota'#231#245'es e Moedas'
  ClientHeight = 178
  ClientWidth = 512
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 149
    Width = 512
    inherited bconfirma: TBitBtn
      Left = 358
    end
    inherited bcancela: TBitBtn
      Left = 433
    end
    inherited bfechar: TBitBtn
      Left = 293
    end
  end
  inherited paginas: TPageControl
    Width = 512
    Height = 149
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = cmochave
      end
      object Label2: TLabel
        Left = 8
        Top = 43
        Width = 23
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data'
        FocusControl = cmodata
      end
      object Label3: TLabel
        Left = 8
        Top = 70
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cota'#231#227'o'
        FocusControl = cmocotacao
      end
      object Label4: TLabel
        Left = 8
        Top = 97
        Width = 68
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo Moeda'
        FocusControl = moecodigo
      end
      object cmochave: TDBEdit
        Left = 136
        Top = 13
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cmochave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cmodata: TDBEdit
        Left = 136
        Top = 40
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cmodata'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cmocotacao: TDBEdit
        Left = 136
        Top = 67
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cmocotacao'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object moecodigo: TDBEdit
        Left = 136
        Top = 94
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'moecodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select cmochave,cmodata,cmocotacao,moecodigo from cmo where cmo.' +
        'cmochave=:cmochave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cmochave'
        Value = nil
      end>
    object registrocmochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cmochave'
      Visible = False
    end
    object registrocmodata: TDateField
      FieldName = 'cmodata'
    end
    object registrocmocotacao: TFloatField
      FieldName = 'cmocotacao'
    end
    object registromoecodigo: TIntegerField
      FieldName = 'moecodigo'
      Required = True
    end
    object registromoeidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'moeidentificacao'
      LookupDataSet = moe
      LookupKeyFields = 'moecodigo'
      LookupResultField = 'moeidentificacao'
      KeyFields = 'moecodigo'
      Size = 30
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object moe: TUniQuery
    SQL.Strings = (
      'select moecodigo,moeidentificacao from moe')
    Left = 280
    Top = 48
    object moemoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object moemoeidentificacao: TStringField
      FieldName = 'moeidentificacao'
      Size = 30
    end
  end
end
