inherited fpad: Tfpad
  Caption = 'Aliquotas'
  ClientHeight = 229
  ExplicitHeight = 268
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 200
    ExplicitTop = 169
  end
  inherited paginas: TPageControl
    Height = 200
    ExplicitHeight = 169
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 141
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = padcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
        FocusControl = padidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 158
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo Exce'#231#227'o da Tabela de IPI'
        FocusControl = padextipi
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 30
        Height = 13
        CustomHint = BalloonHint
        Caption = '% PIS'
        FocusControl = padpis
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 52
        Height = 13
        CustomHint = BalloonHint
        Caption = '% COFINS'
        FocusControl = padcofins
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 94
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo PIS/COFINS'
        FocusControl = padcodigopiscofins
      end
      object padcodigo: TDBEdit
        Left = 172
        Top = 3
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'padcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object padidentificacao: TDBEdit
        Left = 172
        Top = 30
        Width = 278
        Height = 21
        CustomHint = BalloonHint
        DataField = 'padidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object padextipi: TDBEdit
        Left = 172
        Top = 57
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'padextipi'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object padpis: TDBEdit
        Left = 172
        Top = 84
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'padpis'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object padcofins: TDBEdit
        Left = 172
        Top = 111
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'padcofins'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object padcodigopiscofins: TDBEdit
        Left = 172
        Top = 138
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'padcodigopiscofins'
        DataSource = DSRegistro
        TabOrder = 5
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  padcodigo,'
      '  padidentificacao,'
      '  padextipi,'
      '  padncm,'
      '  padpis,'
      '  padcofins,'
      '  padcodigopiscofins'
      'FROM pad where padcodigo=:padcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'padcodigo'
        Value = nil
      end>
    object registropadcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'padcodigo'
    end
    object registropadidentificacao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'padidentificacao'
      Required = True
      Size = 50
    end
    object registropadncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'padncm'
      Size = 10
    end
    object registropadpis: TFloatField
      DisplayLabel = '% PIS'
      FieldName = 'padpis'
      Required = True
      DisplayFormat = '##0.000'
      EditFormat = '##0.000'
    end
    object registropadcofins: TFloatField
      DisplayLabel = '% COFINS'
      FieldName = 'padcofins'
      Required = True
      DisplayFormat = '##0.000'
      EditFormat = '##0.000'
    end
    object registropadextipi: TStringField
      FieldName = 'padextipi'
      Size = 5
    end
    object registropadcodigopiscofins: TStringField
      DisplayLabel = 'C'#243'digo PIS/COFINS'
      FieldName = 'padcodigopiscofins'
      Required = True
      Size = 3
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
