inherited lexp: Tlexp
  ActiveControl = procodigo
  Caption = 'Extrato de Produto'
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel [0]
    Left = 0
    Top = 0
    Width = 1032
    Height = 101
    Align = alTop
  end
  object Label1: TLabel [1]
    Left = 12
    Top = 11
    Width = 31
    Height = 13
    Caption = 'Chave'
    FocusControl = expchave
  end
  object Label2: TLabel [2]
    Left = 12
    Top = 38
    Width = 38
    Height = 13
    Caption = 'Produto'
    FocusControl = procodigo
  end
  object Label3: TLabel [3]
    Left = 12
    Top = 65
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
    FocusControl = expdtinicial
  end
  object Label4: TLabel [4]
    Left = 400
    Top = 65
    Width = 48
    Height = 13
    Caption = 'Data Final'
    FocusControl = expdtfinal
  end
  inherited pbotoes: TPanel
    TabOrder = 6
  end
  object expchave: TDBEdit
    Left = 140
    Top = 8
    Width = 65
    Height = 21
    DataField = 'expchave'
    DataSource = DSRegistro
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object procodigo: TDBEdit
    Left = 140
    Top = 35
    Width = 65
    Height = 21
    DataField = 'procodigo'
    DataSource = DSRegistro
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object expdtinicial: TDBEdit
    Left = 140
    Top = 62
    Width = 81
    Height = 21
    DataField = 'expdtinicial'
    DataSource = DSRegistro
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object expdtfinal: TDBEdit
    Left = 463
    Top = 62
    Width = 82
    Height = 21
    DataField = 'expdtfinal'
    DataSource = DSRegistro
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object bvisualizar: TButton
    Left = 573
    Top = 62
    Width = 148
    Height = 21
    Caption = 'Visualizar Extrato'
    TabOrder = 4
    OnClick = bvisualizarClick
  end
  object listaDisp: TDBGrid
    Left = 0
    Top = 101
    Width = 1032
    Height = 296
    Align = alTop
    DataSource = Dexdisp
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = FormKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'eprdata'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'eprorigem'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'eprchavedoc'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'eprtipodoc'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'eprnumero'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'unicodigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'eprquanti'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'epracumulado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'eprmultiplicador'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estoque'
        Width = 64
        Visible = True
      end>
  end
  object Dexdisp: tunidatasource
    DataSet = expdisp
    Left = 724
    Top = 160
  end
  object registro: tuniquery
    AfterInsert = registroAfterInsert
    SQL.Strings = (
      
        'select expchave, procodigo, clbcodigo, expdtinicial, expdtfinal ' +
        'from exp where expchave=:expchave')
    Params = <
      item
        DataType = ftUnknown
        Name = 'expchave'
        ParamType = ptUnknown
      end>
    Left = 444
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'expchave'
        ParamType = ptUnknown
      end>
    object registroexpchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'expchave'
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
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
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
    end
    object registroexpdtinicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'expdtinicial'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registroexpdtfinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'expdtfinal'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
  end
  object DSRegistro: tunidatasource
    DataSet = registro
    Left = 388
    Top = 128
  end
  object pro: tuniquery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Params = <>
    Left = 636
    Top = 300
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 60
    end
  end
  object expdisp: tuniquery
    SQL.Strings = (
      'CALL extratoProdutoDisp(:produto, :dtInicial, :dtFinal)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtInicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtFinal'
        ParamType = ptUnknown
      end>
    Left = 724
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtInicial'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtFinal'
        ParamType = ptUnknown
      end>
    object expdispeprcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'eprcodigo'
      Visible = False
    end
    object expdispprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      DisplayWidth = 8
      FieldName = 'procodigo'
      Required = True
      Visible = False
    end
    object expdispetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object expdispeprdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'eprdata'
    end
    object expdispeprorigem: TStringField
      DisplayLabel = 'Movimento'
      DisplayWidth = 12
      FieldName = 'eprorigem'
      Size = 15
    end
    object expdispeprchavedoc: TIntegerField
      DisplayLabel = 'Chave'
      DisplayWidth = 8
      FieldName = 'eprchavedoc'
      Required = True
    end
    object expdispeprtipodoc: TStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 8
      FieldName = 'eprtipodoc'
      Size = 8
    end
    object expdispeprnumero: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 12
      FieldName = 'eprnumero'
    end
    object expdispunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object expdispeprquanti: TFloatField
      DisplayLabel = 'Quant.'
      DisplayWidth = 8
      FieldName = 'eprquanti'
    end
    object expdispepracumulado: TFloatField
      DisplayLabel = 'Saldo'
      DisplayWidth = 8
      FieldName = 'epracumulado'
      ReadOnly = True
    end
    object expdispeprmultiplicador: TFloatField
      DisplayLabel = 'Multipl.'
      DisplayWidth = 6
      FieldName = 'eprmultiplicador'
    end
    object expdisptmecodigo: TIntegerField
      DisplayLabel = 'Estoque'
      DisplayWidth = 5
      FieldName = 'tmecodigo'
      Visible = False
    end
    object expdispttecodigo: TIntegerField
      FieldName = 'ttecodigo'
      Visible = False
    end
    object expdispestoque: TStringField
      DisplayLabel = 'Estoque'
      FieldKind = fkCalculated
      FieldName = 'estoque'
      Size = 5
      Calculated = True
    end
  end
end
