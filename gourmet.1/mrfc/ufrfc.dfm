inherited frfc: Tfrfc
  ActiveControl = rfcloja
  Caption = 'Refer'#234'ncia Comercial'
  ClientHeight = 265
  ClientWidth = 460
  ExplicitWidth = 476
  ExplicitHeight = 304
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 236
    Width = 460
    ExplicitTop = 236
    ExplicitWidth = 460
    inherited bconfirma: TBitBtn
      Left = 306
      ExplicitLeft = 306
    end
    inherited bcancela: TBitBtn
      Left = 381
      ExplicitLeft = 381
    end
    inherited bfechar: TBitBtn
      Left = 241
      ExplicitLeft = 241
    end
  end
  inherited paginas: TPageControl
    Width = 460
    Height = 236
    ExplicitWidth = 460
    ExplicitHeight = 236
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 452
      ExplicitHeight = 208
      object Label3: TLabel
        Left = 8
        Top = 10
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Loja'
        FocusControl = rfcloja
      end
      object Label4: TLabel
        Left = 8
        Top = 37
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contato'
      end
      object Label5: TLabel
        Left = 271
        Top = 37
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Telefone'
        FocusControl = rfcfonecont
      end
      object Label6: TLabel
        Left = 8
        Top = 64
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor das Compras'
        FocusControl = rfcvlrcompras
      end
      object Label7: TLabel
        Left = 280
        Top = 64
        Width = 102
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Atraso M'#233'dio em dias'
        FocusControl = rfcatrasomed
      end
      object Label9: TLabel
        Left = 8
        Top = 91
        Width = 70
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Cadastro'
      end
      object Label1: TLabel
        Left = 8
        Top = 118
        Width = 63
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Observa'#231#245'es'
      end
      object Label8: TLabel
        Left = 18
        Top = 178
        Width = 68
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Consulta'
      end
      object rfcloja: TDBEdit
        Left = 99
        Top = 7
        Width = 341
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rfcloja'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object rfccontato: TDBEdit
        Left = 99
        Top = 34
        Width = 118
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rfccontato'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object rfcfonecont: TDBEdit
        Left = 319
        Top = 34
        Width = 121
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rfcfonecont'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object rfcvlrcompras: TDBEdit
        Left = 99
        Top = 61
        Width = 118
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rfcvlrcompras'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object rfcatrasomed: TDBEdit
        Left = 388
        Top = 61
        Width = 52
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rfcatrasomed'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object rfcdescricao: TDBMemo
        Left = 99
        Top = 115
        Width = 341
        Height = 57
        CustomHint = BalloonHint
        DataField = 'rfcdescricao'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object rfcdtcad: TDBEdit
        Left = 99
        Top = 88
        Width = 98
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rfcdtcad'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object rfcdtcons: TDBEdit
        Left = 99
        Top = 178
        Width = 98
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rfcdtcons'
        DataSource = DSRegistro
        TabOrder = 7
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select rfccodigo,etdcodigo,rfcloja,rfccontato,rfcfonecont,rfcdtc' +
        'ad,rfcatrasomed,rfcdtcons,rfcvlrcompras,rfcdescricao from rfc'
      'where  rfccodigo=:rfccodigo and rfc.etdcodigo=:etdcodigo')
    Left = 224
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfccodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object registrorfccodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'rfccodigo'
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object registrorfcloja: TStringField
      DisplayLabel = 'Loja'
      FieldName = 'rfcloja'
      Size = 30
    end
    object registrorfccontato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'rfccontato'
      Size = 30
    end
    object registrorfcfonecont: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'rfcfonecont'
    end
    object registrorfcvlrcompras: TFloatField
      DisplayLabel = 'Vl. Compras'
      FieldName = 'rfcvlrcompras'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrorfcatrasomed: TStringField
      DisplayLabel = 'Atraso M'#233'dio'
      FieldName = 'rfcatrasomed'
      EditMask = '9999;1;_'
      Size = 5
    end
    object registrorfcdtcons: TDateField
      DisplayLabel = 'Data Consulta'
      FieldName = 'rfcdtcons'
      EditMask = '!99/99/9999;1;_'
    end
    object registrorfcdtcad: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'rfcdtcad'
      EditMask = '!99/99/9999;1;_'
    end
    object registrorfcdescricao: TStringField
      FieldName = 'rfcdescricao'
      Size = 200
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
