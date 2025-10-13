inherited fivu: Tfivu
  ActiveControl = cd
  Caption = 'Invent'#225'rio Unificado'
  ClientHeight = 207
  ClientWidth = 525
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 178
    Width = 525
    inherited bconfirma: TBitBtn
      Left = 371
    end
    inherited bcancela: TBitBtn
      Left = 446
    end
    inherited bfechar: TBitBtn
      Left = 306
    end
  end
  inherited paginas: TPageControl
    Width = 525
    Height = 178
    inherited Principal: TTabSheet
      object Label2: TLabel
        Left = 8
        Top = 6
        Width = 49
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Chave'
        FocusControl = ivtchave
      end
      object Label1: TLabel
        Left = 8
        Top = 33
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Produto'
        FocusControl = procodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 56
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade'
        FocusControl = ivtquantidade
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Custo Unit'#225'rio R$'
        FocusControl = ivtvalor
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Total do Item R$'
        FocusControl = ivttotal
      end
      object ivtchave: TDBEdit
        Left = 140
        Top = 3
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ivtchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object procodigo: TDBEdit
        Left = 140
        Top = 30
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = procodigoExit
      end
      object ivtquantidade: TDBEdit
        Left = 140
        Top = 57
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ivtquantidade'
        DataSource = DSRegistro
        TabOrder = 3
        OnChange = ivtquantidadeChange
      end
      object ivtvalor: TDBEdit
        Left = 140
        Top = 84
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'ivtvalor'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object ivttotal: TDBEdit
        Left = 140
        Top = 111
        Width = 117
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'ivttotal'
        DataSource = DSRegistro
        TabOrder = 5
        OnEnter = ivttotalEnter
        OnExit = ivttotalExit
      end
      object cd: TEdit
        Left = 140
        Top = 30
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        Color = clAqua
        TabOrder = 1
        OnExit = cdExit
        OnKeyPress = cdKeyPress
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select ivtchave, spdchave, procodigo, pcccodigo, ivtquantidade, '
      
        'ivtvalor, ivttotal, ivtproprietario, ivtdescricao, etdcodigo fro' +
        'm ivt where ivtchave=:ivtchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ivtchave'
        Value = nil
      end>
    object registroivtchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'ivtchave'
    end
    object registrospdchave: TIntegerField
      FieldName = 'spdchave'
      Required = True
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object registropronome: TStringField
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigo'
      Size = 60
      Lookup = True
    end
    object registropcccodigo: TStringField
      FieldName = 'pcccodigo'
      Required = True
      Size = 60
    end
    object registroivtquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'ivtquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroivtvalor: TFloatField
      DisplayLabel = 'Custo Unit'#225'rio R$'
      FieldName = 'ivtvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroivttotal: TFloatField
      DisplayLabel = 'Total do Item R$'
      FieldName = 'ivttotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroivtproprietario: TStringField
      FieldName = 'ivtproprietario'
      Required = True
      FixedChar = True
      Size = 1
    end
    object registroivtdescricao: TStringField
      FieldName = 'ivtdescricao'
      Size = 1000
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 380
    Top = 48
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 60
    end
  end
  object spd: TUniQuery
    SQL.Strings = (
      
        'select spdchave, spdexercicio, spddatainicial, spddatafinal, spd' +
        'databalanco, pcccodigo from spd where spdativo=1')
    Left = 480
    Top = 48
    object spdspdchave: TIntegerField
      FieldName = 'spdchave'
    end
    object spdspdexercicio: TIntegerField
      FieldName = 'spdexercicio'
      Required = True
    end
    object spdspddatainicial: TDateField
      FieldName = 'spddatainicial'
      Required = True
    end
    object spdspddatafinal: TDateField
      FieldName = 'spddatafinal'
      Required = True
    end
    object spdspddatabalanco: TDateField
      FieldName = 'spddatabalanco'
      Required = True
    end
    object spdpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Required = True
      Size = 30
    end
  end
  object ivt: TUniQuery
    SQL.Strings = (
      
        'select ivtchave, ivt.spdchave, ivt.procodigo, ivtquantidade, ivt' +
        'valor, ivttotal, spd.spdexercicio,pronome from ivt, spd, pro whe' +
        're'
      
        'ivt.spdchave=spd.spdchave and ivt.procodigo=pro.procodigo and sp' +
        'd.spdativo=1')
    Left = 320
    Top = 32
    object ivtivtchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ivtchave'
    end
    object ivtspdexercicio: TIntegerField
      DisplayLabel = 'Exerc'#237'cio'
      FieldName = 'spdexercicio'
      ReadOnly = True
      Required = True
    end
    object ivtspdchave: TIntegerField
      FieldName = 'spdchave'
      Required = True
    end
    object ivtprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object ivtpronome: TStringField
      DisplayLabel = 'Descri'#231#227'o do Item'
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object ivtivtquantidade: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'ivtquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object ivtivtvalor: TFloatField
      DisplayLabel = 'Valor Unit. R$'
      FieldName = 'ivtvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ivtivttotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'ivttotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
end
