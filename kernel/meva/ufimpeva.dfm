inherited fimpeva: Tfimpeva
  Caption = 'fimpeva'
  ClientHeight = 681
  ClientWidth = 760
  ExplicitWidth = 776
  ExplicitHeight = 720
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 652
    Width = 760
    inherited bconfirma: TBitBtn
      Left = 606
    end
    inherited bcancela: TBitBtn
      Left = 681
    end
    inherited bfechar: TBitBtn
      Left = 541
    end
  end
  inherited paginas: TPageControl
    Width = 760
    Height = 652
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 752
      ExplicitHeight = 624
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = rifchave
      end
      object Label2: TLabel
        Left = 9
        Top = 33
        Width = 73
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Folha Gerencial'
        FocusControl = flhchave
      end
      object Label3: TLabel
        Left = 9
        Top = 60
        Width = 91
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Arquivo a Importar'
        FocusControl = rifnomearquivo
      end
      object rifchave: TDBEdit
        Left = 136
        Top = 3
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rifchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object flhchave: TDBEdit
        Left = 136
        Top = 30
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhchave'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object rifnomearquivo: TDBEdit
        Left = 136
        Top = 57
        Width = 465
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rifnomearquivo'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 2
      end
      object riftipocodigo: TDBRadioGroup
        Left = 136
        Top = 92
        Width = 257
        Height = 57
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Colaborador'
        Columns = 3
        DataField = 'riftipocodigo'
        DataSource = DSRegistro
        Items.Strings = (
          'Gerencial'
          'Fiscal'
          'Fun'#231#227'o')
        TabOrder = 3
        Values.Strings = (
          '1'
          '2'
          '3')
      end
      object riftipoevento: TDBRadioGroup
        Left = 408
        Top = 92
        Width = 193
        Height = 57
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Evento / Rubirca'
        Columns = 2
        DataField = 'riftipoevento'
        DataSource = DSRegistro
        Items.Strings = (
          'Evento'
          'Rubrica')
        TabOrder = 4
        Values.Strings = (
          '1'
          '2')
      end
      object btCarregaArquivo: TButton
        Left = 616
        Top = 57
        Width = 121
        Height = 22
        CustomHint = BalloonHint
        Caption = 'Carrega Arquivo'
        TabOrder = 5
        OnClick = btCarregaArquivoClick
      end
      object btProcessar: TButton
        Left = 616
        Top = 124
        Width = 121
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Processar'
        TabOrder = 6
        OnClick = btProcessarClick
      end
      object pllista: TPanel
        Left = 0
        Top = 179
        Width = 752
        Height = 445
        CustomHint = BalloonHint
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 7
        ExplicitTop = 168
        ExplicitWidth = 788
        ExplicitHeight = 441
        object DBGridehf: TDBGrid
          Left = 1
          Top = 217
          Width = 750
          Height = 227
          CustomHint = BalloonHint
          Align = alClient
          DataSource = Deventos
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'evfcodigo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'evfidentificacao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'evavalor'
              Visible = True
            end>
        end
        object MemoArq: TMemo
          Left = 1
          Top = 25
          Width = 750
          Height = 168
          CustomHint = BalloonHint
          Align = alTop
          Lines.Strings = (
            'MemoArq')
          TabOrder = 1
          ExplicitWidth = 786
        end
        object plTituloLinhas: TPanel
          Left = 1
          Top = 1
          Width = 750
          Height = 24
          CustomHint = BalloonHint
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = 'Linhas de arquivo texto a importar: '
          TabOrder = 2
        end
        object plTituloRegistros: TPanel
          Left = 1
          Top = 193
          Width = 750
          Height = 24
          CustomHint = BalloonHint
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = 'plTituloRegistros'
          TabOrder = 3
        end
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rifchave,'
      '  flhchave,'
      '  rifarquivo,'
      '  clbcodigo,'
      '  rifregistro,'
      '  rifnomearquivo,'
      '  riftipocodigo,'
      '  riftipoevento'
      '  '
      'FROM rif where rifchave=:rifchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rifchave'
        Value = nil
      end>
    object registrorifchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'rifchave'
    end
    object registroflhchave: TIntegerField
      DisplayLabel = 'Folha de Pagamento'
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
    object registrorifarquivo: TBlobField
      DisplayLabel = 'Arquivo'
      FieldName = 'rifarquivo'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrorifregistro: TDateTimeField
      FieldName = 'rifregistro'
    end
    object registrorifnomearquivo: TStringField
      FieldName = 'rifnomearquivo'
      Required = True
      Size = 250
    end
    object registroriftipoevento: TIntegerField
      FieldName = 'riftipoevento'
    end
    object registroriftipocodigo: TIntegerField
      FieldName = 'riftipocodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      
        'select etd.etdcodigo, etdidentificacao, etddoc1, dtr.dtrnumeregi' +
        'stro from etd, dtr WHERE dtr.etdcodigo=etd.etdcodigo'
      '')
    Left = 292
    Top = 224
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object etdetddoc1: TStringField
      FieldName = 'etddoc1'
      Size = 50
    end
    object etddtrnumeregistro: TStringField
      FieldName = 'dtrnumeregistro'
    end
  end
  object flh: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  flh.flhchave,'
      
        '  CONCAT(flhidentificacao, '#39' - '#39', tflidentificacao) flhidentific' +
        'acao'
      'FROM flh,'
      '     tfl'
      'WHERE flh.tflcodigo = tfl.tflcodigo'
      'AND eflcodigo = 2 AND flh.tflcodigo=1'
      'ORDER BY CONCAT(flhidentificacao, '#39' - '#39', tflidentificacao) DESC')
    Left = 300
    Top = 280
    object flhflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object flhflhidentificacao: TStringField
      FieldName = 'flhidentificacao'
      Size = 50
    end
  end
  object OpenTextFileDialog: TOpenTextFileDialog
    Left = 312
    Top = 32
  end
  object eventos: TVirtualTable
    Left = 412
    Top = 347
    Data = {04000000000000000000}
    object eventosetdcodigo: TIntegerField
      DisplayLabel = 'Cod.Colab.'
      FieldName = 'etdcodigo'
    end
    object eventosetdidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object eventosevfcodigo: TIntegerField
      DisplayLabel = 'cod.Ev.'
      FieldName = 'evfcodigo'
    end
    object eventosevfidentificacao: TStringField
      DisplayLabel = 'Evento da folha'
      FieldName = 'evfidentificacao'
      Size = 50
    end
    object eventosdtrnumeregistro: TIntegerField
      FieldName = 'dtrnumeregistro'
    end
    object eventosevavalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'evavalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object eventospcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
  end
  object eva: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  evachave,'
      '  flhchave,'
      '  evfcodigo,'
      '  etdcodigo,'
      '  eflcodigo,'
      '  tevcodigo,'
      '  phgcodigo,'
      '  evavalor,'
      '  evahistorico,'
      '  clbcodigo,'
      '  evacriacao,'
      '  evabase,'
      '  evapercentual,'
      '  evavalorunitario,'
      '  fclcodigo,'
      '  evaresumido'
      
        'FROM eva where  evfcodigo=:evfcodigo and  etdcodigo=:etdcodigo a' +
        'nd  flhchave=:flhchave and evavalor=:evavalor')
    Left = 244
    Top = 435
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'evfcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'evavalor'
        Value = nil
      end>
    object evaevachave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'evachave'
    end
    object evaflhchave: TIntegerField
      DisplayLabel = 'Folha Gerencial'
      FieldName = 'flhchave'
      Required = True
    end
    object evaevfcodigo: TIntegerField
      DisplayLabel = 'Evento'
      FieldName = 'evfcodigo'
      Required = True
    end
    object evaetdcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'etdcodigo'
      Required = True
    end
    object evaevavalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'evavalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object evaphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
      Required = True
    end
    object evaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object evaevacriacao: TDateTimeField
      FieldName = 'evacriacao'
    end
    object evatevcodigo: TIntegerField
      FieldName = 'tevcodigo'
    end
    object evaevahistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'evahistorico'
      Size = 50
    end
    object evaeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
    end
  end
  object evf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  evf.evfcodigo,'
      '  rbccodigo,'
      '  evfidentificacao,'
      '  pcgcodigo'
      'FROM evf ')
    Left = 308
    Top = 448
    object evfevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
    end
    object evfrbccodigo: TIntegerField
      FieldName = 'rbccodigo'
    end
    object evfevfidentificacao: TStringField
      FieldName = 'evfidentificacao'
      Size = 50
    end
    object evfpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
  end
  object Deventos: TDataSource
    DataSet = eventos
    Left = 452
    Top = 355
  end
end
