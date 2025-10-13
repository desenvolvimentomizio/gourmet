inherited fecf: Tfecf
  ActiveControl = ecfidentificacao
  Caption = 'Impressora Fiscal'
  ClientHeight = 201
  ClientWidth = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 172
    Width = 420
    inherited bconfirma: TBitBtn
      Left = 266
    end
    inherited bcancela: TBitBtn
      Left = 341
    end
    inherited bfechar: TBitBtn
      Left = 201
    end
  end
  inherited paginas: TPageControl
    Width = 420
    Height = 172
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = ecfcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 38
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Impressora'
        FocusControl = ecfidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 65
        Width = 77
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo Documento'
        FocusControl = ecftipodoc
      end
      object Label4: TLabel
        Left = 152
        Top = 65
        Width = 34
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Modelo'
        FocusControl = ecfmodelo
      end
      object Label5: TLabel
        Left = 8
        Top = 92
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#186' S'#233'rie'
        FocusControl = ecfserie
      end
      object Label6: TLabel
        Left = 8
        Top = 119
        Width = 27
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Caixa'
        FocusControl = ecfcaixa
      end
      object ecfcodigo: TDBEdit
        Left = 97
        Top = 8
        Width = 42
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ecfcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ecfidentificacao: TDBEdit
        Left = 97
        Top = 35
        Width = 306
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ecfidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ecftipodoc: TDBEdit
        Left = 97
        Top = 62
        Width = 42
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ecftipodoc'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object ecfmodelo: TDBEdit
        Left = 193
        Top = 62
        Width = 211
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ecfmodelo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object ecfserie: TDBEdit
        Left = 97
        Top = 89
        Width = 306
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ecfserie'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object ecfcaixa: TDBEdit
        Left = 97
        Top = 116
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ecfcaixa'
        DataSource = DSRegistro
        TabOrder = 5
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '03.08.19.001-01'
  end
  inherited consulta: TUniQuery
    Left = 348
    Top = 65520
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select ecfcodigo,ecfidentificacao,ecftipodoc,ecfcaixa,ecfmodelo,' +
        'ecfserie from ecf'
      'where ecfcodigo=:ecfcodigo')
    Top = 65520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ecfcodigo'
        Value = nil
      end>
    object registroecfcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ecfcodigo'
    end
    object registroecfidentificacao: TStringField
      DisplayLabel = 'Impressora'
      FieldName = 'ecfidentificacao'
      Size = 50
    end
    object registroecftipodoc: TStringField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'ecftipodoc'
      Size = 3
    end
    object registroecfcaixa: TIntegerField
      DisplayLabel = 'Caixa'
      FieldName = 'ecfcaixa'
    end
    object registroecfmodelo: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'ecfmodelo'
      Size = 30
    end
    object registroecfserie: TStringField
      DisplayLabel = 'N'#186' S'#233'rie'
      FieldName = 'ecfserie'
      Size = 30
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
