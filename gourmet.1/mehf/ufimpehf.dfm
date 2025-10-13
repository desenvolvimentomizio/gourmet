inherited fimpehf: Tfimpehf
  Caption = 'Importadore de Horas'
  ClientHeight = 666
  ExplicitWidth = 812
  ExplicitHeight = 705
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 637
    ExplicitTop = 637
    inherited bconfirma: TBitBtn
      ExplicitLeft = 636
      ExplicitTop = 2
    end
  end
  inherited paginas: TPageControl
    Height = 637
    ExplicitHeight = 637
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 609
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
      object btCarregaArquivo: TButton
        Left = 616
        Top = 57
        Width = 121
        Height = 22
        CustomHint = BalloonHint
        Caption = 'Carrega Arquivo'
        TabOrder = 3
        OnClick = btCarregaArquivoClick
      end
      object pllista: TPanel
        Left = 0
        Top = 168
        Width = 788
        Height = 441
        CustomHint = BalloonHint
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 4
        object DBGridehf: TDBGrid
          Left = 25
          Top = 241
          Width = 786
          Height = 223
          CustomHint = BalloonHint
          DataSource = Dhoras
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
              Width = 80
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
              FieldName = 'evfhoras'
              Visible = True
            end>
        end
        object MemoArq: TMemo
          Left = 1
          Top = 25
          Width = 786
          Height = 168
          CustomHint = BalloonHint
          Align = alTop
          Lines.Strings = (
            'MemoArq')
          TabOrder = 1
        end
        object plTituloLinhas: TPanel
          Left = 1
          Top = 1
          Width = 786
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
          Width = 786
          Height = 24
          CustomHint = BalloonHint
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 4
          Caption = 'plTituloRegistros'
          TabOrder = 3
        end
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
        TabOrder = 5
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
        TabOrder = 6
        Values.Strings = (
          '1'
          '2')
      end
    end
  end
  object btProcessar: TButton [3]
    Left = 620
    Top = 148
    Width = 121
    Height = 25
    CustomHint = BalloonHint
    Caption = 'Processar'
    TabOrder = 3
    OnClick = btProcessarClick
  end
  inherited DSRegistro: TUniDataSource
    Left = 292
    Top = 240
  end
  inherited cfg: TUniQuery
    Left = 660
    Top = 172
  end
  inherited consulta: TUniQuery
    Left = 712
    Top = 148
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
    Left = 324
    Top = 208
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
  inherited pfr: TUniQuery
    Left = 688
    Top = 244
  end
  inherited psf: TUniQuery
    Left = 728
    Top = 148
  end
  inherited acoesfrm: TActionList
    Left = 724
    Top = 108
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
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
    Left = 492
    Top = 328
    object flhflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object flhflhidentificacao: TStringField
      FieldName = 'flhidentificacao'
      Size = 50
    end
  end
  object horas: TVirtualTable
    Left = 516
    Top = 152
    Data = {04000000000000000000}
    object horasetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'd.Colaborador'
      FieldName = 'etdcodigo'
    end
    object horasetdidentificacao: TStringField
      DisplayLabel = 'Nome do Colaborador'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object horasevfcodigo: TIntegerField
      DisplayLabel = 'Cod.Evento'
      FieldName = 'evfcodigo'
    end
    object horasevfidentificacao: TStringField
      DisplayLabel = 'Evento da Folha'
      FieldName = 'evfidentificacao'
      Size = 50
    end
    object horasevfhoras: TTimeField
      DisplayLabel = 'Horas'
      FieldName = 'evfhoras'
    end
    object horasdtrnumeregistro: TStringField
      FieldName = 'dtrnumeregistro'
    end
    object horasrbccodigo: TStringField
      FieldName = 'rbccodigo'
    end
    object horasvhfcodigo: TIntegerField
      FieldName = 'vhfcodigo'
    end
    object horastthcodigo: TIntegerField
      FieldName = 'tthcodigo'
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      
        'select etd.etdcodigo, etdidentificacao, etddoc1, dtr.dtrnumeregi' +
        'stro from etd, dtr WHERE dtr.etdcodigo=etd.etdcodigo'
      '')
    Left = 220
    Top = 240
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
  object evf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  evf.evfcodigo,'
      '  rbccodigo,'
      '  evfidentificacao,'
      '  tthcodigo'
      'FROM evf,tth WHERE tth.evfcodigo=evf.evfcodigo')
    Left = 244
    Top = 200
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
    object evftthcodigo: TIntegerField
      FieldName = 'tthcodigo'
    end
  end
  object OpenTextFileDialog: TOpenTextFileDialog
    Left = 568
    Top = 368
  end
  object Dhoras: TDataSource
    DataSet = horas
    Left = 420
    Top = 160
  end
  object ehf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ehfchave,'
      '  flhchave,'
      '  vhfcodigo,'
      '  tthcodigo,'
      '  ehfhoras,'
      '  clbcodigo,'
      '  ehfregistro'
      
        'FROM ehf where   flhchave=:flhchave and vhfcodigo=:vhfcodigo and' +
        ' tthcodigo=:tthcodigo and ehfhoras=:ehfhoras'
      ''
      ''
      '  '
      '')
    Left = 412
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vhfcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tthcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ehfhoras'
        Value = nil
      end>
    object ehfehfchave: TIntegerField
      FieldName = 'ehfchave'
    end
    object ehfflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object ehfvhfcodigo: TIntegerField
      FieldName = 'vhfcodigo'
    end
    object ehftthcodigo: TIntegerField
      FieldName = 'tthcodigo'
    end
    object ehfehfhoras: TStringField
      FieldName = 'ehfhoras'
      Size = 10
    end
    object ehfclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object ehfehfregistro: TDateTimeField
      FieldName = 'ehfregistro'
    end
  end
  object vhf: TUniQuery
    SQL.Strings = (
      'select vhfcodigo from vhf where etdcodigo=:etdcodigo')
    Left = 276
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object vhfvhfcodigo: TIntegerField
      FieldName = 'vhfcodigo'
    end
  end
end
