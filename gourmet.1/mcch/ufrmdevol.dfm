inherited frmdevol: Tfrmdevol
  Caption = 'Devolu'#231#227'o de Cheque'
  ClientHeight = 756
  ClientWidth = 586
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 727
    Width = 586
    inherited bconfirma: TBitBtn
      Left = 432
    end
    inherited bcancela: TBitBtn
      Left = 507
    end
    inherited bfechar: TBitBtn
      Left = 367
    end
  end
  inherited paginas: TPageControl
    Width = 586
    Height = 727
    inherited Principal: TTabSheet
      object Label12: TLabel
        Left = 11
        Top = 280
        Width = 100
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Motivo da Devolu'#231#227'o'
        FocusControl = mdccodigo
      end
      object GroupBox1: TGroupBox
        Left = 11
        Top = 16
        Width = 526
        Height = 233
        CustomHint = BalloonHint
        Caption = ' Informa'#231#245'es do Cheque Devolvido '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 28
          Top = 37
          Width = 49
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Nr. Chave'
          FocusControl = chechave
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 28
          Top = 64
          Width = 38
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Emiss'#227'o'
          FocusControl = cheemissao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 328
          Top = 64
          Width = 55
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Vencimento'
          FocusControl = chevencimento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 28
          Top = 91
          Width = 55
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Nr. Cheque'
          FocusControl = chenumero
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 293
          Top = 91
          Width = 47
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Nr. Conta'
          FocusControl = checonta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 28
          Top = 118
          Width = 38
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Ag'#234'ncia'
          FocusControl = cheagencia
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 424
          Top = 118
          Width = 29
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Banco'
          FocusControl = bcocodigo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 28
          Top = 145
          Width = 142
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Nome do Emitente do Cheque'
          FocusControl = chenome
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 28
          Top = 172
          Width = 85
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Nr. Doc. Emitente'
          FocusControl = chedocumento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 28
          Top = 199
          Width = 42
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Telefone'
          FocusControl = chetelefone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 343
          Top = 199
          Width = 40
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Valor R$'
          FocusControl = chevalor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object chechave: TDBEdit
          Left = 184
          Top = 34
          Width = 81
          Height = 21
          CustomHint = BalloonHint
          DataField = 'chechave'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object cheemissao: TDBEdit
          Left = 184
          Top = 61
          Width = 105
          Height = 21
          CustomHint = BalloonHint
          DataField = 'cheemissao'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object chevencimento: TDBEdit
          Left = 396
          Top = 61
          Width = 109
          Height = 21
          CustomHint = BalloonHint
          DataField = 'chevencimento'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object chenumero: TDBEdit
          Left = 184
          Top = 88
          Width = 93
          Height = 21
          CustomHint = BalloonHint
          DataField = 'chenumero'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object checonta: TDBEdit
          Left = 348
          Top = 88
          Width = 157
          Height = 21
          CustomHint = BalloonHint
          DataField = 'checonta'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object cheagencia: TDBEdit
          Left = 184
          Top = 115
          Width = 134
          Height = 21
          CustomHint = BalloonHint
          DataField = 'cheagencia'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object bcocodigo: TDBEdit
          Left = 468
          Top = 115
          Width = 37
          Height = 21
          CustomHint = BalloonHint
          DataField = 'bcocodigo'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object chenome: TDBEdit
          Left = 184
          Top = 142
          Width = 321
          Height = 21
          CustomHint = BalloonHint
          DataField = 'chenome'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object chedocumento: TDBEdit
          Left = 184
          Top = 169
          Width = 321
          Height = 21
          CustomHint = BalloonHint
          DataField = 'chedocumento'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object chetelefone: TDBEdit
          Left = 184
          Top = 196
          Width = 141
          Height = 21
          CustomHint = BalloonHint
          DataField = 'chetelefone'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object chevalor: TDBEdit
          Left = 389
          Top = 196
          Width = 116
          Height = 21
          CustomHint = BalloonHint
          DataField = 'chevalor'
          DataSource = Dche
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
      end
      object mdccodigo: TDBEdit
        Left = 117
        Top = 277
        Width = 32
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mdccodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 408
    Caption = '02.02.14.002-02'
  end
  inherited DSRegistro: TUniDataSource
    Left = 200
    Top = 268
  end
  inherited cfg: TUniQuery
    Left = 424
    Top = 280
  end
  inherited consulta: TUniQuery
    Left = 380
    Top = 372
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select ltcchave, chechave, dtlchave, schcodigo, mdccodigo from l' +
        'tc where ltc.ltcchave=:ltcchave')
    Left = 116
    Top = 244
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltcchave'
        Value = nil
      end>
    object registroltcchave: TIntegerField
      FieldName = 'ltcchave'
    end
    object registrochechave: TIntegerField
      FieldName = 'chechave'
    end
    object registromdccodigo: TIntegerField
      DisplayLabel = 'Motivo da Devolu'#231#227'o'
      FieldName = 'mdccodigo'
    end
    object registromdcidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'mdcidentificacao'
      LookupDataSet = mdc
      LookupKeyFields = 'mdccodigo'
      LookupResultField = 'mdcidentificacao'
      KeyFields = 'mdccodigo'
      Size = 150
      Lookup = True
    end
    object registrodtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object registroschcodigo: TIntegerField
      FieldName = 'schcodigo'
    end
  end
  inherited dcp: TUniQuery
    Left = 360
    Top = 65520
  end
  inherited dtb: TUniQuery
    Left = 296
    Top = 65520
  end
  inherited coa: TUniQuery
    Left = 252
    Top = 65520
  end
  inherited pfr: TUniQuery
    Left = 92
    Top = 352
  end
  inherited psf: TUniQuery
    Left = 148
    Top = 336
  end
  inherited dcl: TUniQuery
    Left = 144
    Top = 396
  end
  inherited cau: TUniQuery
    Left = 248
    Top = 368
  end
  inherited err: TUniQuery
    Left = 428
    Top = 400
  end
  inherited BalloonHint: TBalloonHint
    Left = 296
    Top = 384
  end
  object cco: TUniQuery
    SQL.Strings = (
      
        'select ccochave, ctacodigo, toccodigo, cedcodigo, clbcodigo, tfi' +
        'codigo, moecodigo, ccoemissao, ccovencimento, cconumero,'
      
        ' ccohistorico, ccovalor, ccochaveorig, ccochavedest, ccoconcilia' +
        'do, ccoextenso,etdcodigo, ccodatamov,ccohoraregistro, ccodatareg' +
        'istro,'
      'ccofavorecido from cco where cco.ccochave=:ccochave')
    Left = 192
    Top = 380
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object ccoccochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object ccoctacodigo: TIntegerField
      FieldName = 'ctacodigo'
      Required = True
    end
    object ccoctaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ctaidentificacao'
      LookupKeyFields = 'ctacodigo'
      LookupResultField = 'ctaidentificacao'
      KeyFields = 'ctacodigo'
      Size = 50
      Lookup = True
    end
    object ccoccoemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ccoemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object ccoccovencimento: TDateField
      FieldName = 'ccovencimento'
      Required = True
    end
    object ccotoccodigo: TIntegerField
      DisplayLabel = 'OP'
      FieldName = 'toccodigo'
    end
    object ccocedcodigo: TIntegerField
      DisplayLabel = 'N'
      FieldName = 'cedcodigo'
      Required = True
    end
    object ccoclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ccotficodigo: TIntegerField
      DisplayLabel = 'TFI'
      FieldName = 'tficodigo'
    end
    object ccomoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object ccocconumero: TStringField
      FieldName = 'cconumero'
      Size = 15
    end
    object ccoccohistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccohistorico'
      Size = 50
    end
    object ccoccovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'ccovalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ccoccochaveorig: TIntegerField
      FieldName = 'ccochaveorig'
    end
    object ccoccochavedest: TIntegerField
      FieldName = 'ccochavedest'
    end
    object ccoccoconciliado: TIntegerField
      DisplayLabel = 'C'
      FieldName = 'ccoconciliado'
    end
    object ccoccoextenso: TStringField
      FieldName = 'ccoextenso'
      Size = 2000
    end
    object ccoetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object ccoccodatamov: TDateField
      FieldName = 'ccodatamov'
    end
    object ccoccodataregistro: TDateField
      FieldName = 'ccodataregistro'
    end
    object ccoccohoraregistro: TTimeField
      FieldName = 'ccohoraregistro'
    end
    object ccoccofavorecido: TStringField
      FieldName = 'ccofavorecido'
      Size = 80
    end
  end
  object mdc: TUniQuery
    SQL.Strings = (
      'select mdccodigo,  mdcidentificacao from mdc')
    Left = 296
    Top = 484
    object mdcmdccodigo: TIntegerField
      FieldName = 'mdccodigo'
    end
    object mdcmdcidentificacao: TStringField
      FieldName = 'mdcidentificacao'
      Size = 250
    end
  end
  object che: TUniQuery
    SQL.Strings = (
      
        'select  chechave,cheemissao,chevencimento,chenumero,checonta,che' +
        'agencia,'
      
        'bcocodigo,chenome,chedocumento,chetelefone,chevalor from che whe' +
        're che.chechave=:chechave')
    Left = 260
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chechave'
        Value = nil
      end>
    object chechechave: TIntegerField
      FieldName = 'chechave'
    end
    object checheemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
      EditMask = '!99/99/9999;1;_'
    end
    object chechevencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'chevencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object chechenumero: TStringField
      DisplayLabel = 'Nr. Cheque'
      FieldName = 'chenumero'
      Size = 10
    end
    object checheconta: TStringField
      DisplayLabel = 'Nr. Conta'
      FieldName = 'checonta'
      Size = 15
    end
    object checheagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cheagencia'
      Size = 10
    end
    object chebcocodigo: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object chechenome: TStringField
      DisplayLabel = 'Nome do Emitente do Cheque'
      FieldName = 'chenome'
      Size = 50
    end
    object chechedocumento: TStringField
      DisplayLabel = 'Nr. Doc. Emitente'
      FieldName = 'chedocumento'
      Size = 30
    end
    object chechetelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'chetelefone'
    end
    object chechevalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'chevalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Dche: TUniDataSource
    DataSet = che
    Left = 296
    Top = 252
  end
end
