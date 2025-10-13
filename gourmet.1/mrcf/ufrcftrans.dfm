inherited frcftrans: Tfrcftrans
  Caption = 'frcftrans'
  ClientHeight = 581
  ExplicitHeight = 620
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 552
    ExplicitTop = 552
  end
  inherited paginas: TPageControl
    Height = 552
    ExplicitHeight = 552
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 524
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = rcfchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 23
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data'
        FocusControl = rcfdata
      end
      object Label5: TLabel
        Left = 8
        Top = 60
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cliente de Destino'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 407
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = rcfvalor
      end
      object Label4: TLabel
        Left = 8
        Top = 434
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
      end
      object rcfchave: TDBEdit
        Left = 148
        Top = 3
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rcfchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object rcfdata: TDBEdit
        Left = 148
        Top = 30
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rcfdata'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object etdcodigo: TDBEdit
        Left = 148
        Top = 57
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object rcfvalor: TDBEdit
        Left = 148
        Top = 404
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'rcfvalor'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 3
      end
      object rcfhistorico: TDBMemo
        Left = 148
        Top = 434
        Width = 565
        Height = 69
        CustomHint = BalloonHint
        DataField = 'rcfhistorico'
        DataSource = DSRegistro
        MaxLength = 250
        TabOrder = 4
      end
      object bSelecionar: TBitBtn
        Left = 148
        Top = 84
        Width = 137
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Selecionar Cr'#233'ditos'
        TabOrder = 5
        OnClick = bSelecionarClick
      end
      object plItens: TPanel
        Left = 148
        Top = 115
        Width = 565
        Height = 283
        CustomHint = BalloonHint
        BevelOuter = bvNone
        TabOrder = 6
        object DBLista: TDBGrid
          Left = 0
          Top = 0
          Width = 565
          Height = 283
          CustomHint = BalloonHint
          Align = alClient
          DataSource = Drcf
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBListaDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'rcfchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 270
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcfdata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcfvalor'
              Visible = True
            end>
        end
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rcfchave,'
      '  etdcodigo,'
      '  cedcodigo,'
      '  rcfvalor,'
      '  rcfdata,'
      '  rcfhistorico,'
      '  tcrcodigo,'
      '  tsccodigo,'
      '  tnccodigo,'
      '  rcfhora'
      'FROM rcf where rcfchave=:rcfchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rcfchave'
        Value = nil
      end>
    object registrorcfchave: TIntegerField
      FieldName = 'rcfchave'
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object registrocedcodigo: TIntegerField
      FieldName = 'cedcodigo'
      Required = True
    end
    object registrorcfvalor: TFloatField
      FieldName = 'rcfvalor'
      Required = True
    end
    object registrorcfdata: TDateField
      FieldName = 'rcfdata'
    end
    object registrorcfhistorico: TStringField
      FieldName = 'rcfhistorico'
      Size = 200
    end
    object registrotcrcodigo: TIntegerField
      FieldName = 'tcrcodigo'
      Required = True
    end
    object registrotsccodigo: TIntegerField
      FieldName = 'tsccodigo'
    end
    object registrotnccodigo: TIntegerField
      FieldName = 'tnccodigo'
    end
    object registrorcfhora: TTimeField
      FieldName = 'rcfhora'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object rcf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rcf.rcfchave,'
      '  rcf.rcfvalor,'
      '  etd.etdidentificacao,'
      '  rcf.etdcodigo,'
      '  rcf.rcfdata,'
      '  tff.rcfdestino,'
      '  tff.rcforigem'
      'FROM tff'
      '  INNER JOIN rcf'
      '    ON tff.rcforigem = rcf.rcfchave'
      '  INNER JOIN etd'
      '    ON rcf.etdcodigo = etd.etdcodigo'
      '    where tff.rcfdestino =:rcfchave')
    Constraints = <>
    Left = 612
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rcfchave'
        Value = nil
      end>
    object rcfrcfchave: TIntegerField
      FieldName = 'rcfchave'
    end
    object rcfrcfvalor: TFloatField
      FieldName = 'rcfvalor'
      Required = True
    end
    object rcfetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      ReadOnly = True
      Required = True
      Size = 60
    end
    object rcfetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object rcfrcfdata: TDateField
      FieldName = 'rcfdata'
    end
    object rcfrcfdestino: TIntegerField
      FieldName = 'rcfdestino'
      ReadOnly = True
      Required = True
    end
    object rcfrcforigem: TIntegerField
      FieldName = 'rcforigem'
      ReadOnly = True
      Required = True
    end
  end
  object Drcf: TDataSource
    DataSet = rcf
    Left = 640
    Top = 312
  end
end
