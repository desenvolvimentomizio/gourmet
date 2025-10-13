inherited ft01: Tft01
  ActiveControl = t01nomecliente
  Caption = 'Dados Adicionais de Venda'
  ClientHeight = 250
  ClientWidth = 571
  ExplicitWidth = 587
  ExplicitHeight = 289
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 221
    Width = 571
    ExplicitTop = 173
    ExplicitWidth = 571
    inherited bconfirma: TBitBtn
      Left = 417
      ExplicitLeft = 417
    end
    inherited bcancela: TBitBtn
      Left = 492
      ExplicitLeft = 492
      ExplicitTop = 4
    end
    inherited bfechar: TBitBtn
      Left = 352
      ExplicitLeft = 352
    end
  end
  inherited paginas: TPageControl
    Width = 571
    Height = 221
    ExplicitWidth = 571
    ExplicitHeight = 173
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 563
      ExplicitHeight = 193
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = t01chave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do cliente'
        FocusControl = t01nomecliente
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Telefone'
        FocusControl = t01telefone
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do Animal'
        FocusControl = t01nomeanimal
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 55
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Peso em Kg'
        FocusControl = t01pesoanimal
      end
      object Label6: TLabel
        Left = 8
        Top = 168
        Width = 135
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Previs'#227'o da pr'#243'xima compra'
        FocusControl = t01proxidatamacompra
      end
      object Label7: TLabel
        Left = 8
        Top = 141
        Width = 125
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Dura'#231#227'o estimada em dias'
        FocusControl = t01proximacompra
      end
      object t01chave: TDBEdit
        Left = 152
        Top = 3
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 't01chave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object t01nomecliente: TDBEdit
        Left = 152
        Top = 30
        Width = 414
        Height = 21
        CustomHint = BalloonHint
        DataField = 't01nomecliente'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object t01telefone: TDBEdit
        Left = 152
        Top = 57
        Width = 169
        Height = 21
        CustomHint = BalloonHint
        DataField = 't01telefone'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object t01nomeanimal: TDBEdit
        Left = 152
        Top = 84
        Width = 414
        Height = 21
        CustomHint = BalloonHint
        DataField = 't01nomeanimal'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object t01pesoanimal: TDBEdit
        Left = 152
        Top = 111
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 't01pesoanimal'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object t01proxidatamacompra: TDBEdit
        Left = 152
        Top = 165
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 't01proxidatamacompra'
        DataSource = DSRegistro
        TabOrder = 6
        OnEnter = t01proxidatamacompraEnter
        OnExit = t01proxidatamacompraExit
      end
      object t01proximacompra: TDBEdit
        Left = 152
        Top = 138
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 't01proximacompra'
        DataSource = DSRegistro
        TabOrder = 5
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 428
    Top = 152
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  t01chave,'
      '  t01nomecliente,'
      '  t01nomeanimal,'
      '  t01telefone,'
      '  t01pesoanimal,'
      '  t01proximacompra,'
      '  t01proxidatamacompra,'
      '  orcchave,'
      '  meschave'
      'FROM t01 where t01chave=:t01chave')
    Left = 428
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 't01chave'
        Value = nil
      end>
    object registrot01chave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 't01chave'
    end
    object registrot01nomecliente: TStringField
      DisplayLabel = 'Nome do cliente'
      FieldName = 't01nomecliente'
      Size = 50
    end
    object registrot01telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 't01telefone'
    end
    object registrot01nomeanimal: TStringField
      DisplayLabel = 'Nome do Animal'
      FieldName = 't01nomeanimal'
      Size = 50
    end
    object registrot01pesoanimal: TFloatField
      DisplayLabel = 'Peso em Kg'
      FieldName = 't01pesoanimal'
    end
    object registrot01proximacompra: TIntegerField
      DisplayLabel = 'Dura'#231#227'o estimada em dias'
      FieldName = 't01proximacompra'
    end
    object registrot01proxidatamacompra: TDateField
      DisplayLabel = 'Previs'#227'o da pr'#243'xima compra'
      FieldName = 't01proxidatamacompra'
    end
    object registroorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object registromeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  inherited dtb: TUniQuery
    Left = 52
    Top = 276
  end
  inherited psf: TUniQuery
    Left = 568
    Top = 28
  end
  inherited acoesfrm: TActionList
    Left = 492
    Top = 52
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
