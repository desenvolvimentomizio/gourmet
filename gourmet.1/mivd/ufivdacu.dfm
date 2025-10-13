inherited fivdacu: Tfivdacu
  ActiveControl = edBarra
  Caption = 'Invent'#225'rio diponivel - ACUMULATIVO'
  ClientHeight = 227
  ClientWidth = 654
  ExplicitWidth = 670
  ExplicitHeight = 266
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 198
    Width = 654
    ExplicitTop = 198
    ExplicitWidth = 654
    inherited bconfirma: TBitBtn
      Left = 500
      ExplicitLeft = 500
    end
    inherited bcancela: TBitBtn
      Left = 575
      ExplicitLeft = 575
    end
    inherited bfechar: TBitBtn
      Left = 435
      ExplicitLeft = 435
    end
  end
  inherited paginas: TPageControl
    Width = 654
    Height = 198
    ExplicitWidth = 654
    ExplicitHeight = 198
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 646
      ExplicitHeight = 170
      object Label2: TLabel
        Left = 8
        Top = 6
        Width = 49
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Chave'
        FocusControl = ivdchave
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
        Top = 141
        Width = 111
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade Acumulada'
        FocusControl = ivdquantidade
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Custo Unit'#225'rio R$'
        FocusControl = ivdvalor
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Total do Item R$'
        FocusControl = ivdtotal
      end
      object Label6: TLabel
        Left = 8
        Top = 60
        Width = 56
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade'
        FocusControl = ivdquantidade
      end
      object ivdchave: TDBEdit
        Left = 140
        Top = 3
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ivdchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object procodigo: TDBEdit
        Left = 140
        Top = 30
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = procodigoExit
      end
      object ivdquantidade: TDBEdit
        Left = 140
        Top = 138
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'ivdquantidade'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 6
        OnChange = ivdquantidadeChange
      end
      object ivdvalor: TDBEdit
        Left = 140
        Top = 84
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'ivdvalor'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object ivdtotal: TDBEdit
        Left = 140
        Top = 111
        Width = 117
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'ivdtotal'
        DataSource = DSRegistro
        TabOrder = 5
        OnEnter = ivdtotalEnter
        OnExit = ivdtotalExit
      end
      object edQuantidade: TEdit
        Left = 140
        Top = 57
        Width = 121
        Height = 21
        CustomHint = BalloonHint
        TabOrder = 3
        OnChange = edQuantidadeChange
        OnKeyPress = edQuantidadeKeyPress
      end
      object edBarra: TEdit
        Left = 140
        Top = 30
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        Color = 16777088
        TabOrder = 1
        OnKeyPress = edBarraKeyPress
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 708
    Top = 176
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT c.cfgcodigo'
      '     , cc.cfgetdempresa'
      '     , cs.cfgusagrade'
      'FROM cfg c'
      '  JOIN cfgmcfg cc'
      '    ON c.cfgcodigo = cc.cfgcodigo'
      '  JOIN cfgmsai cs'
      '    ON c.cfgcodigo = cs.cfgcodigo')
    object cfgcfgusagrade: TIntegerField
      FieldName = 'cfgusagrade'
    end
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select ivdchave, spdchave, procodigo, pcccodigo, ivdquantidade, '
      
        'ivdvalor, ivdtotal, ivdproprietario, ivddescricao, etdcodigo fro' +
        'm ivd where ivdchave=:ivdchave')
    Left = 708
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ivdchave'
        Value = nil
      end>
    object registroivdchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'ivdchave'
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
    object registroivdquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'ivdquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroivdvalor: TFloatField
      DisplayLabel = 'Custo Unit'#225'rio R$'
      FieldName = 'ivdvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroivdtotal: TFloatField
      DisplayLabel = 'Total do Item R$'
      FieldName = 'ivdtotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroivdproprietario: TStringField
      FieldName = 'ivdproprietario'
      Required = True
      FixedChar = True
      Size = 1
    end
    object registroivddescricao: TStringField
      FieldName = 'ivddescricao'
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
  object pun: TUniQuery
    SQL.Strings = (
      
        'select puncusto from pun,pro where pun.unicodigo=pro.unicodigo a' +
        'nd pro.procodigo=:procodigo')
    Left = 428
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'procodigo'
        Value = nil
      end>
    object punpuncusto: TFloatField
      FieldName = 'puncusto'
      Required = True
    end
  end
  object spd: TUniQuery
    SQL.Strings = (
      
        'select spdchave, spdexercicio, spddatainicial, spddatafinal, spd' +
        'databalanco, pcccodigo from spd where spdativo=1')
    Left = 504
    Top = 32
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
end
