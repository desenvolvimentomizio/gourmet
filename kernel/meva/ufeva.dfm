inherited feva: Tfeva
  ActiveControl = flhchave
  Caption = 'Lan'#231'amento Mensal'
  ClientHeight = 280
  ClientWidth = 709
  ExplicitWidth = 725
  ExplicitHeight = 319
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 251
    Width = 709
    ExplicitTop = 251
    ExplicitWidth = 709
    inherited bconfirma: TBitBtn
      Left = 555
      ExplicitLeft = 555
    end
    inherited bcancela: TBitBtn
      Left = 630
      Caption = 'Cancelar'
      ExplicitLeft = 630
    end
    inherited bfechar: TBitBtn
      Left = 490
      ExplicitLeft = 490
    end
  end
  inherited paginas: TPageControl
    Width = 709
    Height = 251
    ExplicitWidth = 709
    ExplicitHeight = 251
    inherited Principal: TTabSheet
      OnEnter = PrincipalEnter
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 701
      ExplicitHeight = 223
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = evachave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 73
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Folha Gerencial'
        FocusControl = flhchave
      end
      object Label3: TLabel
        Left = 8
        Top = 114
        Width = 34
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Evento'
        FocusControl = evfcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador'
        FocusControl = etdcodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 195
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = evavalor
      end
      object Label6: TLabel
        Left = 8
        Top = 168
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento'
        FocusControl = evahistorico
      end
      object Label7: TLabel
        Left = 8
        Top = 141
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
        FocusControl = phgcodigo
      end
      object Label8: TLabel
        Left = 8
        Top = 60
        Width = 99
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data do Lan'#231'amento'
        FocusControl = evadata
      end
      object evachave: TDBEdit
        Left = 136
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evachave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object flhchave: TDBEdit
        Left = 136
        Top = 30
        Width = 54
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhchave'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = flhchaveExit
      end
      object evfcodigo: TDBEdit
        Left = 136
        Top = 111
        Width = 54
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evfcodigo'
        DataSource = DSRegistro
        TabOrder = 4
        OnEnter = evfcodigoEnter
        OnExit = evfcodigoExit
      end
      object etdcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 54
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object evavalor: TDBEdit
        Left = 136
        Top = 192
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evavalor'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object evahistorico: TDBEdit
        Left = 136
        Top = 165
        Width = 537
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evahistorico'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object phgcodigo: TDBEdit
        Left = 136
        Top = 138
        Width = 54
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 5
        OnEnter = phgcodigoEnter
      end
      object evadata: TDBEdit
        Left = 136
        Top = 57
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evadata'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 604
    Top = 152
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  evachave,'
      '  flhchave,'
      '  evfcodigo,'
      '  phgcodigo,'
      '  etdcodigo,'
      '  tevcodigo,'
      '  evahistorico,'
      '  evavalor,'
      '  clbcodigo,'
      '  eflcodigo,'
      '  evacriacao,'
      '  evadata'
      'FROM eva where evachave=:evachave')
    Left = 604
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'evachave'
        Value = nil
      end>
    object registroevachave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'evachave'
    end
    object registroflhchave: TIntegerField
      DisplayLabel = 'Folha Gerencial'
      FieldName = 'flhchave'
      Required = True
    end
    object registroflhidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'flhidentificacao'
      LookupDataSet = flh
      LookupKeyFields = 'flhchave'
      LookupResultField = 'flhidentificacao'
      KeyFields = 'flhchave'
      Size = 50
      Lookup = True
    end
    object registroevfcodigo: TIntegerField
      DisplayLabel = 'Evento'
      FieldName = 'evfcodigo'
      Required = True
    end
    object registroevfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'evfidentificacao'
      LookupDataSet = evf
      LookupKeyFields = 'evfcodigo'
      LookupResultField = 'evfidentificacao'
      KeyFields = 'evfcodigo'
      Size = 50
      Lookup = True
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 50
      Lookup = True
    end
    object registroevavalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'evavalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrophgcodigo: TIntegerField
      FieldName = 'phgcodigo'
      Required = True
    end
    object registrophgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'phgidentificacao'
      LookupDataSet = phg
      LookupKeyFields = 'phgcodigo'
      LookupResultField = 'phgidentificacao'
      KeyFields = 'phgcodigo'
      Size = 50
      Lookup = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroevacriacao: TDateTimeField
      FieldName = 'evacriacao'
    end
    object registrotevcodigo: TIntegerField
      FieldName = 'tevcodigo'
    end
    object registroevahistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'evahistorico'
      Size = 50
    end
    object registroeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
    end
    object registroevadata: TDateField
      DisplayLabel = 'Data do Lan'#231'amento'
      FieldName = 'evadata'
      Required = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      
        'select etd.etdcodigo, etdidentificacao from etd, etv where etd.e' +
        'tdcodigo=etv.etdcodigo and etv.tvicodigo=3 and etd.tsecodigo=0')
    Left = 600
    Top = 40
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object evf: TUniQuery
    SQL.Strings = (
      'SELECT evfcodigo'
      '     , evfidentificacao'
      '     , tevcodigo'
      '     , evfpelocco'
      'FROM evf'
      'WHERE tevcodigo = 2')
    Left = 664
    Top = 72
    object evfevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
    end
    object evfevfidentificacao: TStringField
      FieldName = 'evfidentificacao'
      Size = 50
    end
    object evftevcodigo: TIntegerField
      FieldName = 'tevcodigo'
    end
    object evfevfpelocco: TIntegerField
      FieldName = 'evfpelocco'
    end
  end
  object flh: TUniQuery
    SQL.Strings = (
      'SELECT'
      'flh.flhchave,  '
      
        'concat(flh.flhidentificacao,'#39' - '#39', tfl.tflidentificacao) as flhi' +
        'dentificacao'
      'FROM flh'
      '  INNER JOIN tfl'
      '    ON flh.tflcodigo = tfl.tflcodigo'
      '  where (eflcodigo=1) or (eflcodigo=2)')
    Left = 344
    Top = 40
    object flhflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object flhflhidentificacao: TStringField
      FieldName = 'flhidentificacao'
      Size = 50
    end
  end
  object cco: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccochave,'
      '  ctacodigo,'
      '  toccodigo,'
      '  cedcodigo,'
      '  clbcodigo,'
      '  tficodigo,'
      '  moecodigo,'
      '  ccoemissao,'
      '  ccovencimento,'
      '  cconumero,'
      '  ccohistorico,'
      '  ccovalor,'
      '  ccochaveorig,'
      '  ccochavedest,'
      '  ccoconciliado,'
      '  ccoextenso,'
      '  etdcodigo,'
      '  ccodatamov,'
      '  ccohoraregistro,'
      '  ccodataregistro,'
      '  ccofavorecido,'
      '  phgcodigo'
      'FROM cco'
      'WHERE cco.ccochave = :ccochave'
      'AND cco.ctacodigo = :ctacodigo')
    Left = 256
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end>
    object ccoccochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object ccoctacodigo: TIntegerField
      FieldName = 'ctacodigo'
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
      DisplayLabel = 'Conciliado'
      FieldName = 'ccoconciliado'
      Required = True
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
    object ccophgcodigo: TIntegerField
      DisplayLabel = 'Hist'#243'rico Base'
      FieldName = 'phgcodigo'
      Required = True
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 656
    Top = 200
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
  object ACBrExtenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 380
    Top = 272
  end
  object efc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  efcchave,'
      '  evachave,'
      '  ccochave'
      'FROM efc limit 0')
    Left = 240
    Top = 352
    object efcefcchave: TIntegerField
      FieldName = 'efcchave'
    end
    object efcccochave: TIntegerField
      FieldName = 'ccochave'
    end
    object efcevachave: TIntegerField
      FieldName = 'evachave'
    end
  end
end
