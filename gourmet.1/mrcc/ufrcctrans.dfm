inherited frctrans: Tfrctrans
  ActiveControl = etdcodigo
  ClientHeight = 607
  ExplicitHeight = 646
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 578
    ExplicitTop = 578
  end
  inherited paginas: TPageControl
    Height = 578
    ExplicitHeight = 578
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 731
      ExplicitHeight = 550
      inherited rcrvalor: TDBEdit
        TabStop = False
        Enabled = False
        ReadOnly = True
      end
      inherited rcrhistorico: TDBMemo
        Top = 434
        ExplicitTop = 434
      end
      inherited plItens: TPanel
        Top = 115
        Height = 283
        BevelOuter = bvNone
        Caption = ''
        ExplicitTop = 115
        ExplicitHeight = 283
        object DBLista: TDBGrid
          Left = 0
          Top = 0
          Width = 565
          Height = 283
          CustomHint = BalloonHint
          Align = alClient
          DataSource = Drcr
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
              FieldName = 'rcrchave'
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
              FieldName = 'rcrdata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rcrvalor'
              Visible = True
            end>
        end
      end
    end
  end
  inherited bSelecionar: TBitBtn
    Left = 152
    Top = 108
    Width = 137
    Caption = 'Selecionar Cr'#233'ditos'
    OnClick = bSelecionarClick
    ExplicitLeft = 152
    ExplicitTop = 108
    ExplicitWidth = 137
  end
  inherited DSRegistro: TUniDataSource
    Top = 216
  end
  inherited registro: TUniQuery
    Top = 168
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object rcr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rcr.rcrchave,'
      '  rcr.rcrvalor,'
      '  etd.etdidentificacao,'
      '  rcr.etdcodigo,'
      '  rcr.rcrdata,'
      '  tfr.rcrdestino,'
      '  tfr.rcrorigem'
      'FROM tfr'
      '  INNER JOIN rcr'
      '    ON tfr.rcrorigem = rcr.rcrchave'
      '  INNER JOIN etd'
      '    ON rcr.etdcodigo = etd.etdcodigo'
      '    where tfr.rcrdestino =:rcrchave')
    Constraints = <>
    Left = 632
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rcrchave'
        Value = nil
      end>
    object rcrrcrchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'rcrchave'
    end
    object rcretdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object rcretdidentificacao: TStringField
      DisplayLabel = 'Raz'#227'o Social - Nome'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object rcrrcrdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rcrdata'
    end
    object rcrrcrorigem: TIntegerField
      DisplayLabel = 'Origem'
      FieldName = 'rcrorigem'
    end
    object rcrrcrdestino: TIntegerField
      FieldName = 'rcrdestino'
    end
    object rcrrcrvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rcrvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Drcr: TDataSource
    DataSet = rcr
    Left = 664
    Top = 304
  end
end
