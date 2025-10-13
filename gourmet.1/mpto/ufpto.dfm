inherited fpto: Tfpto
  ActiveControl = ptodata
  Caption = 'Registro de Ponto'
  ClientHeight = 375
  ClientWidth = 665
  ExplicitWidth = 681
  ExplicitHeight = 414
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 346
    Width = 665
    ExplicitTop = 346
    ExplicitWidth = 665
    inherited bconfirma: TBitBtn
      Left = 511
      ExplicitLeft = 511
    end
    inherited bcancela: TBitBtn
      Left = 586
      ExplicitLeft = 586
    end
    inherited bfechar: TBitBtn
      Left = 446
      ExplicitLeft = 446
    end
  end
  inherited paginas: TPageControl
    Width = 665
    Height = 346
    ExplicitWidth = 665
    ExplicitHeight = 346
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 657
      ExplicitHeight = 318
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Registro'
        FocusControl = ptochave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 23
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data'
        FocusControl = ptodata
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador'
        FocusControl = clbcodigo
      end
      object Label4: TLabel
        Left = 7
        Top = 130
        Width = 73
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Entrada Manh'#227
        FocusControl = ptoiniciomanha
      end
      object Label5: TLabel
        Left = 352
        Top = 127
        Width = 61
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sa'#237'da Manh'#227
        FocusControl = ptofinalmanha
      end
      object Label6: TLabel
        Left = 7
        Top = 173
        Width = 69
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Entrada Tarde'
        FocusControl = ptoiniciotarde
      end
      object Label7: TLabel
        Left = 355
        Top = 173
        Width = 57
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sa'#237'da Tarde'
        FocusControl = ptofinaltarde
      end
      object Label8: TLabel
        Left = 8
        Top = 200
        Width = 52
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Autorizado'
        FocusControl = clbautorizaextra
      end
      object Label9: TLabel
        Left = 8
        Top = 227
        Width = 32
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Motivo'
        FocusControl = ptomotivoextra
      end
      object Label10: TLabel
        Left = 8
        Top = 254
        Width = 67
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Entrada Extra'
        FocusControl = ptoinicioextra
      end
      object Label11: TLabel
        Left = 214
        Top = 251
        Width = 55
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sa'#237'da Extra'
        FocusControl = ptofinalextra
      end
      object Label12: TLabel
        Left = 8
        Top = 87
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de hor'#225'rio'
        FocusControl = hrtchave
      end
      object ptochave: TDBEdit
        Left = 128
        Top = 3
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ptochave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ptodata: TDBEdit
        Left = 128
        Top = 30
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ptodata'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object clbcodigo: TDBEdit
        Left = 128
        Top = 57
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object ptoiniciomanha: TDBEdit
        Left = 127
        Top = 127
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ptoiniciomanha'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object ptofinalmanha: TDBEdit
        Left = 419
        Top = 124
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ptofinalmanha'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object ptoiniciotarde: TDBEdit
        Left = 127
        Top = 170
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ptoiniciotarde'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object ptofinaltarde: TDBEdit
        Left = 418
        Top = 170
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ptofinaltarde'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object clbautorizaextra: TDBEdit
        Left = 128
        Top = 197
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbautorizaextra'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object ptomotivoextra: TDBEdit
        Left = 128
        Top = 224
        Width = 509
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ptomotivoextra'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object ptoinicioextra: TDBEdit
        Left = 128
        Top = 251
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ptoinicioextra'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object ptofinalextra: TDBEdit
        Left = 275
        Top = 251
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ptofinalextra'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object ptotipositinimanha: TDBRadioGroup
        Left = 198
        Top = 109
        Width = 147
        Height = 41
        CustomHint = BalloonHint
        Caption = ' Situa'#231#227'o '
        Columns = 2
        DataField = 'ptotipositinimanha'
        DataSource = DSRegistro
        Items.Strings = (
          'Normal'
          'Abonada')
        TabOrder = 12
        Values.Strings = (
          '1'
          '2')
      end
      object ptotipositinitarde: TDBRadioGroup
        Left = 198
        Top = 152
        Width = 147
        Height = 41
        CustomHint = BalloonHint
        Caption = ' Situa'#231#227'o '
        Columns = 2
        DataField = 'ptotipositinitarde'
        DataSource = DSRegistro
        Items.Strings = (
          'Normal'
          'Abonada')
        TabOrder = 13
        Values.Strings = (
          '1'
          '2')
      end
      object ptotipositfinmanha: TDBRadioGroup
        Left = 489
        Top = 109
        Width = 147
        Height = 41
        CustomHint = BalloonHint
        Caption = ' Situa'#231#227'o '
        Columns = 2
        DataField = 'ptotipositfinmanha'
        DataSource = DSRegistro
        Items.Strings = (
          'Normal'
          'Abonada')
        TabOrder = 14
        Values.Strings = (
          '1'
          '2')
      end
      object ptotipositfintarde: TDBRadioGroup
        Left = 489
        Top = 152
        Width = 147
        Height = 41
        CustomHint = BalloonHint
        Caption = ' Situa'#231#227'o '
        Columns = 2
        DataField = 'ptotipositfintarde'
        DataSource = DSRegistro
        Items.Strings = (
          'Normal'
          'Abonada')
        TabOrder = 15
        Values.Strings = (
          '1'
          '2')
      end
      object hrtchave: TDBEdit
        Left = 127
        Top = 84
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'hrtchave'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 492
    Top = 472
  end
  inherited cfg: TUniQuery
    Left = 676
    Top = 124
  end
  inherited consulta: TUniQuery
    Left = 720
    Top = 204
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ptochave,'
      '  ptodata,'
      '  clbcodigo,'
      '  ptoiniciomanha,'
      '  ptofinalmanha,'
      '  ptoiniciotarde,'
      '  ptofinaltarde,'
      '  clbautorizaextra,'
      '  ptomotivoextra,'
      '  ptoinicioextra,'
      '  ptofinalextra,'
      '  ptotipositinimanha,'
      '  ptotipositfinmanha,'
      '  ptotipositinitarde,'
      '  ptotipositfintarde,'
      '  hrtchave'
      ''
      'FROM pto where ptochave=:ptochave')
    Left = 412
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ptochave'
        Value = nil
      end>
    object registroptochave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ptochave'
    end
    object registroptodata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'ptodata'
      Required = True
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbcodigo'
      Required = True
    end
    object registroptoiniciomanha: TTimeField
      DisplayLabel = 'Entrada Manh'#227
      FieldName = 'ptoiniciomanha'
      EditMask = '!90:00:00;1;_'
    end
    object registroptofinalmanha: TTimeField
      DisplayLabel = 'Sa'#237'da Manh'#227
      FieldName = 'ptofinalmanha'
      EditMask = '!90:00:00;1;_'
    end
    object registroptoiniciotarde: TTimeField
      DisplayLabel = 'Entrada Tarde'
      FieldName = 'ptoiniciotarde'
      EditMask = '!90:00:00;1;_'
    end
    object registroptofinaltarde: TTimeField
      DisplayLabel = 'Sa'#237'da Tarde'
      FieldName = 'ptofinaltarde'
      EditMask = '!90:00:00;1;_'
    end
    object registroclbautorizaextra: TIntegerField
      DisplayLabel = 'Autorizado'
      FieldName = 'clbautorizaextra'
    end
    object registroptomotivoextra: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'ptomotivoextra'
      Size = 250
    end
    object registroptoinicioextra: TTimeField
      DisplayLabel = 'Entrada Extra'
      FieldName = 'ptoinicioextra'
      EditMask = '!90:00:00;1;_'
    end
    object registroptofinalextra: TTimeField
      DisplayLabel = 'Sa'#237'da Extra'
      FieldName = 'ptofinalextra'
      EditMask = '!90:00:00;1;_'
    end
    object registroptotipositinimanha: TIntegerField
      FieldName = 'ptotipositinimanha'
    end
    object registroptotipositfinmanha: TIntegerField
      FieldName = 'ptotipositfinmanha'
    end
    object registroptotipositinitarde: TIntegerField
      FieldName = 'ptotipositinitarde'
    end
    object registroptotipositfintarde: TIntegerField
      FieldName = 'ptotipositfintarde'
    end
    object registrohrtchave: TIntegerField
      FieldName = 'hrtchave'
      Required = True
    end
    object registrohrtidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'hrtidentificacao'
      LookupDataSet = hrt
      LookupKeyFields = 'hrtchave'
      LookupResultField = 'hrtidentificacao'
      KeyFields = 'hrtchave'
      Size = 150
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 816
  end
  inherited dtb: TUniQuery
    Left = 772
  end
  inherited coa: TUniQuery
    Left = 736
  end
  inherited pfr: TUniQuery
    Left = 672
    Top = 180
  end
  inherited psf: TUniQuery
    Left = 696
    Top = 188
  end
  inherited dcl: TUniQuery
    Left = 724
    Top = 320
  end
  inherited err: TUniQuery
    Left = 576
    Top = 284
  end
  inherited BalloonHint: TBalloonHint
    Left = 316
    Top = 320
  end
  inherited acoesfrm: TActionList
    Left = 596
    Top = 308
  end
  inherited cpg: TUniQuery
    Left = 732
    Top = 264
  end
  inherited cpc: TUniQuery
    Left = 789
    Top = 305
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 484
    Top = 300
  end
  object hrt: TUniQuery
    SQL.Strings = (
      
        'SELECT hrtchave, CONCAT(hrtinimanha,'#39' '#39', hrtfinmanha,'#39' '#39', hrtini' +
        'tarde, '#39' '#39' , hrtfinmanha) hrtidentificacao    from hrt')
    Left = 388
    Top = 56
    object hrthrtchave: TIntegerField
      FieldName = 'hrtchave'
    end
    object hrthrtidentificacao: TStringField
      FieldName = 'hrtidentificacao'
      Size = 150
    end
  end
end
