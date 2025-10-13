inherited fivd: Tfivd
  ActiveControl = procodigo
  Caption = 'Invent'#225'rio'
  ClientHeight = 611
  ClientWidth = 653
  ExplicitWidth = 669
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 582
    Width = 653
    TabOrder = 2
    ExplicitTop = 582
    ExplicitWidth = 653
    inherited bconfirma: TBitBtn
      Left = 499
      ExplicitLeft = 499
    end
    inherited bcancela: TBitBtn
      Left = 574
      ExplicitLeft = 574
    end
    inherited bfechar: TBitBtn
      Left = 434
      ExplicitLeft = 434
    end
  end
  inherited paginas: TPageControl
    Width = 653
    Height = 582
    ExplicitWidth = 653
    ExplicitHeight = 582
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 645
      ExplicitHeight = 554
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
        Top = 60
        Width = 56
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade'
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
      object SpDetalhe: TSplitter
        Left = 0
        Top = 259
        Width = 645
        Height = 5
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
        Visible = False
      end
      object ivdchave: TDBEdit
        Left = 140
        Top = 3
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ivdchave'
        DataSource = DSRegistro
        TabOrder = 1
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
        Top = 57
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ivdquantidade'
        DataSource = DSRegistro
        TabOrder = 3
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
      object ivdproprietario: TDBRadioGroup
        Left = 140
        Top = 138
        Width = 357
        Height = 93
        CustomHint = BalloonHint
        Caption = ' Indicador de propriedade/posse do item '
        DataField = 'ivdproprietario'
        DataSource = DSRegistro
        Items.Strings = (
          'Item de propriedade do informante e em seu poder'
          'Item de propriedade do informante em posse de terceiros'
          'Item de propriedade de terceiros em posse do informante')
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object PnlVariacoes: TPanel
        Left = 0
        Top = 264
        Width = 645
        Height = 290
        CustomHint = BalloonHint
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 6
        Visible = False
        object PlObsdetalhe: TPanel
          Left = 0
          Top = 0
          Width = 645
          Height = 290
          CustomHint = BalloonHint
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 645
            Height = 24
            CustomHint = BalloonHint
            Align = alTop
            BevelOuter = bvNone
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 160
              Height = 24
              CustomHint = BalloonHint
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'Varia'#231#245'es de Produtos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object PnlTotalVar: TPanel
              Left = 485
              Top = 0
              Width = 160
              Height = 24
              CustomHint = BalloonHint
              Align = alRight
              BevelOuter = bvNone
              Caption = 'Total Varia'#231#245'es: 0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
          end
          object DBListaVar: TDBGrid
            Left = 0
            Top = 24
            Width = 645
            Height = 266
            CustomHint = BalloonHint
            Align = alClient
            DataSource = DSVrpIvv
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnColEnter = DBListaVarColEnter
            OnDrawColumnCell = DBListaVarDrawColumnCell
            OnKeyDown = DBListaVarKeyDown
            OnKeyPress = DBListaVarKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'procodigo'
                ReadOnly = True
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'vrpcodigo'
                ReadOnly = True
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pronome'
                ReadOnly = True
                Width = 350
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ivvquantidade'
                Visible = True
              end>
          end
        end
      end
      object bValidar: TBitBtn
        Left = 503
        Top = 206
        Width = 75
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 7
        Visible = False
        OnClick = bValidarClick
      end
    end
  end
  inherited lbcodigojanela: TPanel
    TabOrder = 0
  end
  inherited DSRegistro: TUniDataSource
    Left = 328
    Top = 40
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
    Top = 104
    object cfgcfgusagrade: TIntegerField
      FieldName = 'cfgusagrade'
    end
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
  end
  inherited consulta: TUniQuery
    Left = 432
    Top = 380
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select ivdchave, spdchave, procodigo, pcccodigo, ivdquantidade, '
      
        'ivdvalor, ivdtotal, ivdproprietario, ivddescricao, etdcodigo fro' +
        'm ivd where ivdchave=:ivdchave')
    Left = 436
    Top = 432
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
  inherited cpg: TUniQuery
    Left = 28
    Top = 360
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
    Left = 480
    Top = 48
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
  object vtVrpIvv: TVirtualTable
    IndexFieldNames = 'pronome'
    FieldDefs = <
      item
        Name = 'vrpcodigo'
        DataType = ftInteger
      end
      item
        Name = 'ivdchave'
        DataType = ftInteger
      end
      item
        Name = 'procodigo'
        DataType = ftInteger
      end
      item
        Name = 'pronome'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'ivvquantidade'
        DataType = ftFloat
      end>
    AfterInsert = vtVrpIvvAfterInsert
    Left = 128
    Top = 392
    Data = {
      040005000900767270636F6469676F0300000000000000080069766463686176
      650300000000000000090070726F636F6469676F030000000000000007007072
      6F6E6F6D6501009600000000000D006976767175616E74696461646506000000
      00000000000000000000}
    object vtVrpIvvvrpcodigo: TIntegerField
      DisplayLabel = 'Varia'#231#227'o'
      FieldName = 'vrpcodigo'
    end
    object vtVrpIvvivdchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'ivdchave'
    end
    object vtVrpIvvprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
    end
    object vtVrpIvvpronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      Size = 150
    end
    object vtVrpIvvivvquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'ivvquantidade'
      OnSetText = vtVrpIvvivvquantidadeSetText
    end
  end
  object DSVrpIvv: TUniDataSource
    DataSet = vtVrpIvv
    Left = 192
    Top = 392
  end
  object vrp: TUniQuery
    SQL.Strings = (
      'SELECT vv.vrpcodigo'
      '     , ivd.ivdchave'
      '     , ivd.procodigo'
      '     , vv.pronome'
      '     , IFNULL(ivv.ivvquantidade, 0) AS ivvquantidade'
      'FROM v_vrp vv'
      '  LEFT JOIN pro'
      '    ON vv.procodigo = pro.procodigo'
      '  JOIN ivd'
      '    ON pro.procodigo = ivd.procodigo'
      '  LEFT JOIN ivv'
      '    ON ivd.ivdchave = ivv.ivdchave'
      '    AND vv.vrpcodigo = ivv.vrpcodigo'
      'WHERE IFNULL(pro.gracodigo, 0) > 0'
      'AND ivd.ivdchave = :ivdchave')
    Left = 200
    Top = 480
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ivdchave'
        Value = nil
      end>
    object vrpvrpcodigo: TIntegerField
      FieldName = 'vrpcodigo'
    end
    object vrpivdchave: TIntegerField
      FieldName = 'ivdchave'
    end
    object vrpprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object vrppronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
    object vrpivvquantidade: TFloatField
      FieldName = 'ivvquantidade'
    end
  end
  object ivv: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ivv.ivvchave,'
      '  ivv.ivdchave,'
      '  ivv.vrpcodigo,'
      '  ivv.ivvquantidade'
      'FROM ivv'
      'WHERE ivv.ivdchave = :ivdchave')
    Left = 132
    Top = 473
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ivdchave'
        Value = nil
      end>
    object ivvivvchave: TIntegerField
      FieldName = 'ivvchave'
    end
    object ivvivdchave: TIntegerField
      FieldName = 'ivdchave'
    end
    object ivvvrpcodigo: TIntegerField
      FieldName = 'vrpcodigo'
    end
    object ivvivvquantidade: TFloatField
      FieldName = 'ivvquantidade'
    end
  end
end
