inherited fivg: Tfivg
  Caption = 'Registro de Invent'#225'rio'
  ClientHeight = 400
  ExplicitHeight = 439
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 371
    ExplicitTop = 371
    inherited bconfirma: TBitBtn
      ExplicitLeft = 636
      ExplicitTop = 2
    end
    object mostra: TProgressBar
      Left = 128
      Top = 6
      Width = 345
      Height = 17
      CustomHint = BalloonHint
      TabOrder = 4
    end
  end
  inherited paginas: TPageControl
    Height = 371
    ExplicitHeight = 371
    inherited Principal: TTabSheet
      ExplicitHeight = 343
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = ivgchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Empresa'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Filial'
        FocusControl = flacodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 91
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Opera'#231#227'o de Sa'#237'da'
        FocusControl = toesaida
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 103
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Opera'#231#227'o de Entrada'
        FocusControl = toeentrada
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 146
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Periodo do Invent'#225'rio Anterior'
        FocusControl = spdchaveanterior
      end
      object Label7: TLabel
        Left = 8
        Top = 168
        Width = 132
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Periodo do Invent'#225'rio Atual'
        FocusControl = spdchaveinventario
      end
      object ivgchave: TDBEdit
        Left = 159
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ivgchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 159
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 1
      end
      object flacodigo: TDBEdit
        Left = 159
        Top = 57
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flacodigo'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 2
      end
      object toesaida: TDBEdit
        Left = 159
        Top = 84
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'toesaida'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object toeentrada: TDBEdit
        Left = 159
        Top = 111
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'toeentrada'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object spdchaveanterior: TDBEdit
        Left = 160
        Top = 138
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'spdchaveanterior'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object spdchaveinventario: TDBEdit
        Left = 159
        Top = 165
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'spdchaveinventario'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object ivgtipo: TDBRadioGroup
        Left = 159
        Top = 215
        Width = 210
        Height = 49
        CustomHint = BalloonHint
        Caption = ' Tipo de Invent'#225'rio '
        Columns = 2
        DataField = 'ivgtipo'
        DataSource = DSRegistro
        Items.Strings = (
          'Saldo'
          'Saldo Dispon'#237'vel')
        TabOrder = 7
        Values.Strings = (
          '1'
          '2')
      end
      object ivgvalor: TDBRadioGroup
        Left = 159
        Top = 270
        Width = 366
        Height = 49
        CustomHint = BalloonHint
        Caption = ' Tipo c'#225'lculo de Custo '
        Columns = 2
        DataField = 'ivgvalor'
        DataSource = DSRegistro
        Items.Strings = (
          'Custo M'#233'dio'
          #218'ltimo Custo de Compra')
        TabOrder = 8
        Values.Strings = (
          '1'
          '2')
      end
    end
  end
  object CheckBoxZerarNegativos: TCheckBox [3]
    Left = 164
    Top = 216
    Width = 365
    Height = 17
    CustomHint = BalloonHint
    Caption = 'Colocar saldo 0 - ZERO para produtos com saldo negativo'
    TabOrder = 3
  end
  inherited DSRegistro: TUniDataSource
    Left = 316
    Top = 56
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgetdempresa'
      'FROM cfgmcfg,'
      '     cfg'
      'WHERE cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      'AND cfg.flacodigo = :flacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ivgchave,'
      '  etdcodigo,'
      '  flacodigo,'
      '  toesaida,'
      '  toeentrada,'
      '  spdchaveanterior,'
      '  spdchaveinventario,'
      '  clbcodigo,'
      '  ivgregistro,'
      '  ivgtipo,'
      '  ivgvalor'
      'FROM ivg'
      '  where ivgchave=:ivgchave')
    Left = 364
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ivgchave'
        Value = nil
      end>
    object registroivgchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'ivgchave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Empresa'
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
    object registroflacodigo: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'flacodigo'
      Required = True
    end
    object registroflaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'flaidentificacao'
      LookupDataSet = fla
      LookupKeyFields = 'flacodigo'
      LookupResultField = 'flaidentificacao'
      KeyFields = 'flacodigo'
      Size = 50
      Lookup = True
    end
    object registrotoesaida: TIntegerField
      DisplayLabel = 'Opera'#231#227'o de Sa'#237'da'
      FieldName = 'toesaida'
      Required = True
    end
    object registrotoesaidaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'toesaidaidentificacao'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'toesaida'
      Size = 50
      Lookup = True
    end
    object registrotoeentrada: TIntegerField
      DisplayLabel = 'Opera'#231#227'o de Entrada'
      FieldName = 'toeentrada'
      Required = True
    end
    object registrotoeentradaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'toeentradaidentificacao'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'toeentrada'
      Size = 50
      Lookup = True
    end
    object registrospdchaveanterior: TIntegerField
      DisplayLabel = 'Periodo do Invent'#225'rio Anterior'
      FieldName = 'spdchaveanterior'
    end
    object registrospdanterior: TStringField
      FieldKind = fkLookup
      FieldName = 'spdanterior'
      LookupDataSet = spd
      LookupKeyFields = 'spdchave'
      LookupResultField = 'spdidentificacao'
      KeyFields = 'spdchaveanterior'
      Size = 50
      Lookup = True
    end
    object registrospdchaveinventario: TIntegerField
      DisplayLabel = 'Periodo do Invent'#225'rio Atual'
      FieldName = 'spdchaveinventario'
      Required = True
    end
    object registrospdinventario: TStringField
      FieldKind = fkLookup
      FieldName = 'spdinventario'
      LookupDataSet = spd
      LookupKeyFields = 'spdchave'
      LookupResultField = 'spdidentificacao'
      KeyFields = 'spdchaveinventario'
      Size = 50
      Lookup = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroivgtipo: TIntegerField
      DisplayLabel = 'Tipo de Invent'#225'rio'
      FieldName = 'ivgtipo'
    end
    object registroivgregistro: TDateTimeField
      FieldName = 'ivgregistro'
    end
    object registroivgvalor: TIntegerField
      FieldName = 'ivgvalor'
    end
  end
  inherited dcp: TUniQuery
    Left = 680
    Top = 100
  end
  inherited dtb: TUniQuery
    Left = 636
    Top = 100
  end
  inherited coa: TUniQuery
    Left = 600
    Top = 100
  end
  inherited cau: TUniQuery
    Left = 536
    Top = 280
  end
  inherited BalloonHint: TBalloonHint
    Left = 556
    Top = 328
  end
  inherited cpg: TUniQuery
    Left = 596
    Top = 160
  end
  inherited cpc: TUniQuery
    Left = 597
    Top = 209
  end
  inherited lou: TUniQuery
    Left = 488
    Top = 216
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 500
    Top = 200
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object fla: TUniQuery
    SQL.Strings = (
      
        'select flacodigo, flaidentificacao from fla where flacodigo=:fla' +
        'codigo')
    Left = 436
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object flaflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object flaflaidentificacao: TStringField
      FieldName = 'flaidentificacao'
      Size = 50
    end
  end
  object toe: TUniQuery
    SQL.Strings = (
      'select toecodigo, toeidentificacao from toe')
    Left = 460
    Top = 152
    object toetoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Size = 50
    end
  end
  object spd: TUniQuery
    SQL.Strings = (
      'SELECT spdchave'
      
        ' ,concat(spdexercicio, '#39' '#39',  spddatainicial,'#39' '#39', spddatafinal) a' +
        's spdidentificacao'
      ' ,spddatainicial'
      ' ,spddatafinal'
      ' , spddatabalanco  '
      'FROM spd')
    Left = 540
    Top = 200
    object spdspdchave: TIntegerField
      FieldName = 'spdchave'
    end
    object spdspdidentificacao: TStringField
      FieldName = 'spdidentificacao'
      Size = 50
    end
    object spdspddatainicial: TDateField
      FieldName = 'spddatainicial'
    end
    object spdspddatafinal: TDateField
      FieldName = 'spddatafinal'
    end
    object spdspddatabalanco: TDateField
      FieldName = 'spddatabalanco'
    end
  end
  object GeraInventarioSaldo: TUniQuery
    SQL.Strings = (
      'START TRANSACTION;'
      ''
      'SET @ChaveSPED = :SpdChave;'
      'SET @CodigoEmpresa = :EtdCodigo;'
      ''
      
        '-- Definir data posterior ao '#250'ltimo invent'#225'rio registrado at'#233' o ' +
        'dia que deseja gerar o invent'#225'rio.'
      'CALL InventarioTemporario(:DataInicial, :DataFinal, :Preco);'
      ''
      'DELETE'
      '  FROM ivt'
      ' WHERE ivt.spdchave = @ChaveSPED;'
      ''
      
        'INSERT INTO ivt (ivt.ivtchave, ivt.spdchave, ivt.procodigo, ivt.' +
        'pcccodigo, ivt.ivtquantidade, ivt.ivtvalor, ivt.ivttotal, ivt.iv' +
        'tproprietario, ivt.ivtdescricao, ivt.etdcodigo, ivt.ivtregistro)'
      '  SELECT @auto_increment    id'
      '       , @ChaveSPED         spdchave'
      '       , tivt.procodigo     procodigo'
      '       , '#39'1.01.03.01.01'#39'    pccchave'
      '       , tivt.ivtquantidade quantidade'
      '       , tivt.ivtvalor      custo'
      '       , tivt.ivttotal      total'
      '       , '#39'0'#39'                proprietario'
      '       , '#39#39'                 descricao'
      '       , @CodigoEmpresa     etdempresa'
      
        '       , CONCAT( (SELECT spddatabalanco from spd WHERE spdchave=' +
        '@ChaveSPED limit 1),'#39' '#39' ,'#39'23:59:59'#39') registro'
      '    FROM tivt'
      '   ORDER BY tivt.procodigo;'
      ''
      'COMMIT;')
    Left = 708
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SpdChave'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'EtdCodigo'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DataInicial'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DataFinal'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Preco'
        Value = nil
      end>
  end
  object GeraInventarioSaldoDisp: TUniQuery
    SQL.Strings = (
      'START TRANSACTION;'
      ''
      'SET @ChaveSPED = :SpdChave;'
      'SET @CodigoEmpresa = :EtdCodigo;'
      ''
      
        '-- Definir data posterior ao '#250'ltimo invent'#225'rio registrado at'#233' o ' +
        'dia que deseja gerar o invent'#225'rio.'
      'CALL InventarioTemporarioDisp(:DataInicial, :DataFinal, :Preco);'
      ''
      'DELETE'
      '  FROM ivd'
      ' WHERE ivd.spdchave = @ChaveSPED;'
      ''
      
        ' INSERT INTO ivd (ivd.ivdchave, ivd.spdchave, ivd.procodigo, ivd' +
        '.pcccodigo, ivd.ivdquantidade, ivd.ivdvalor, ivd.ivdtotal, ivd.i' +
        'vdproprietario, ivd.ivddescricao, ivd.etdcodigo, ivd.ivdregistro' +
        ')'
      '  SELECT @auto_increment    id'
      '       , @ChaveSPED         spdchave'
      '       , tivd.procodigo     procodigo'
      '       , '#39'1.01.03.01.01'#39'    pccchave'
      '       , tivd.ivdquantidade quantidade'
      '       , tivd.ivdvalor      custo'
      '       , tivd.ivdtotal      total'
      '       , '#39'0'#39'                proprietario'
      '       , '#39#39'                 descricao'
      '       , @CodigoEmpresa     etdempresa'
      
        '       , CONCAT( (SELECT spddatabalanco from spd WHERE spdchave=' +
        '@ChaveSPED limit 1),'#39' '#39' , '#39'23:59:59'#39'  ) registro'
      '    FROM tivd'
      '   ORDER BY tivd.procodigo;'
      ''
      'COMMIT;')
    Left = 708
    Top = 200
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SpdChave'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'EtdCodigo'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DataInicial'
        Value = nil
      end
      item
        DataType = ftDate
        Name = 'DataFinal'
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Preco'
        Value = nil
      end>
  end
  object dataperiodoantorior: TUniQuery
    SQL.Strings = (
      'select spddatabalanco from spd where spdchave=:spdchave')
    Left = 68
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'spdchave'
        Value = nil
      end>
  end
  object dataperiodoatual: TUniQuery
    SQL.Strings = (
      'select spddatabalanco from spd where spdchave=:spdchave')
    Left = 68
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'spdchave'
        Value = nil
      end>
  end
  object ivtnegativo: TUniQuery
    Left = 708
    Top = 256
  end
  object ivdnegativo: TUniQuery
    Left = 708
    Top = 312
  end
  object preco: TUniQuery
    SQL.Strings = (
      'call listaultimocustoinventario(:pdata)')
    Left = 428
    Top = 272
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'pdata'
        Value = nil
      end>
  end
end
