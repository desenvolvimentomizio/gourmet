inherited frza: Tfrza
  ActiveControl = frcdtinicial
  Caption = 'Emiss'#227'o do Raz'#227'o'
  ClientHeight = 557
  ClientWidth = 545
  ExplicitWidth = 561
  ExplicitHeight = 596
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 528
    Width = 545
    ExplicitTop = 528
    ExplicitWidth = 545
    inherited bconfirma: TBitBtn
      Left = 391
      ExplicitLeft = 391
    end
    inherited bcancela: TBitBtn
      Left = 466
      ExplicitLeft = 466
    end
    inherited bfechar: TBitBtn
      Left = 326
      ExplicitLeft = 326
    end
    object mostrafiliais: TProgressBar
      Left = 105
      Top = 6
      Width = 128
      Height = 17
      CustomHint = BalloonHint
      Smooth = True
      Step = 1
      TabOrder = 4
      Visible = False
    end
    object bedit: TButton
      Left = 281
      Top = 4
      Width = 45
      Height = 21
      CustomHint = BalloonHint
      Align = alRight
      Caption = 'Edita'
      TabOrder = 5
      OnClick = beditClick
    end
    object bexportar: TButton
      Left = 193
      Top = 4
      Width = 88
      Height = 21
      CustomHint = BalloonHint
      Align = alRight
      Caption = 'Exportar EXCEL'
      TabOrder = 6
      OnClick = bexportarClick
    end
  end
  inherited paginas: TPageControl
    Width = 545
    Height = 528
    ExplicitWidth = 545
    ExplicitHeight = 528
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = frcdtinicial
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = frcdtfinal
      end
      object Sp1: TSplitter
        Left = 0
        Top = 324
        Width = 537
        Height = 3
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
        ExplicitTop = 319
        ExplicitWidth = 455
      end
      object Sp2: TSplitter
        Left = 0
        Top = 117
        Width = 537
        Height = 3
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
        ExplicitTop = 112
        ExplicitWidth = 455
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 150
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Imprimir contas sem movimento'
        FocusControl = frczeradas
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Selecionar contas'
        FocusControl = frcparcial
      end
      object frcdtinicial: TDBEdit
        Left = 172
        Top = 3
        Width = 101
        Height = 21
        CustomHint = BalloonHint
        DataField = 'frcdtinicial'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object frcdtfinal: TDBEdit
        Left = 172
        Top = 30
        Width = 101
        Height = 21
        CustomHint = BalloonHint
        DataField = 'frcdtfinal'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object plfiliais: TPanel
        Left = 0
        Top = 327
        Width = 537
        Height = 173
        CustomHint = BalloonHint
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 5
        object PlTopoFiliais: TPanel
          Left = 1
          Top = 1
          Width = 535
          Height = 29
          CustomHint = BalloonHint
          Align = alTop
          BevelOuter = bvLowered
          BorderWidth = 3
          TabOrder = 0
          object bativartodas: TBitBtn
            Left = 436
            Top = 4
            Width = 95
            Height = 21
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'Ativar Todas'
            TabOrder = 0
            OnClick = bativartodasClick
          end
          object bdesativar: TBitBtn
            Left = 246
            Top = 4
            Width = 95
            Height = 21
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'Desativar'
            TabOrder = 1
            OnClick = bdesativarClick
          end
          object bativar: TBitBtn
            Left = 151
            Top = 4
            Width = 95
            Height = 21
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'Ativar'
            TabOrder = 2
            OnClick = bativarClick
          end
          object bdesativartodas: TBitBtn
            Left = 341
            Top = 4
            Width = 95
            Height = 21
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'Desativar Todas'
            TabOrder = 3
            OnClick = bdesativartodasClick
          end
          object Panel1: TPanel
            Left = 4
            Top = 4
            Width = 157
            Height = 21
            CustomHint = BalloonHint
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'Filiais para o Raz'#227'o'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 4
          end
        end
        object DBLista: TDBGrid
          Left = 1
          Top = 30
          Width = 535
          Height = 142
          CustomHint = BalloonHint
          Align = alClient
          DataSource = Dfcb
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBListaDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'marca'
              Width = 18
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flacodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flaidentificacao'
              Visible = True
            end>
        end
      end
      object PlContas: TPanel
        Left = 0
        Top = 120
        Width = 537
        Height = 204
        CustomHint = BalloonHint
        Align = alBottom
        TabOrder = 4
        object PlBotoes: TPanel
          Left = 1
          Top = 30
          Width = 76
          Height = 173
          CustomHint = BalloonHint
          Align = alLeft
          ParentBackground = False
          TabOrder = 0
          object SBBotoes: TScrollBox
            Left = 1
            Top = 1
            Width = 74
            Height = 133
            CustomHint = BalloonHint
            Align = alTop
            BevelEdges = []
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 0
            object bincluir: TBitBtn
              Left = 0
              Top = 0
              Width = 74
              Height = 25
              CustomHint = BalloonHint
              Align = alTop
              Caption = 'Incluir'
              Margin = 10
              TabOrder = 0
              TabStop = False
              OnClick = bincluirClick
              ExplicitLeft = -5
              ExplicitTop = 1
            end
            object balterar: TBitBtn
              Left = 0
              Top = 25
              Width = 74
              Height = 25
              CustomHint = BalloonHint
              Align = alTop
              Caption = 'Alterar'
              Margin = 10
              TabOrder = 1
              TabStop = False
              OnClick = balterarClick
            end
            object bexcluir: TBitBtn
              Left = 0
              Top = 50
              Width = 74
              Height = 25
              CustomHint = BalloonHint
              Align = alTop
              Caption = 'Excluir'
              Margin = 10
              TabOrder = 2
              TabStop = False
              OnClick = bexcluirClick
            end
          end
        end
        object PlTopoContas: TPanel
          Left = 1
          Top = 1
          Width = 535
          Height = 29
          CustomHint = BalloonHint
          Align = alTop
          BevelOuter = bvLowered
          BorderWidth = 3
          TabOrder = 1
          object Panel3: TPanel
            Left = 4
            Top = 4
            Width = 157
            Height = 21
            CustomHint = BalloonHint
            Align = alLeft
            BevelOuter = bvNone
            Caption = 'Contas para o Raz'#227'o'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Microsoft Sans Serif'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object Pltipo: TPanel
            Left = 425
            Top = 4
            Width = 106
            Height = 21
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'Total'
            Color = 16744448
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
          end
          object mostracontas: TProgressBar
            Left = 167
            Top = 6
            Width = 82
            Height = 17
            CustomHint = BalloonHint
            Smooth = True
            Step = 1
            TabOrder = 2
            Visible = False
          end
          object mostrafrp: TProgressBar
            Left = 255
            Top = 6
            Width = 82
            Height = 17
            CustomHint = BalloonHint
            Smooth = True
            Step = 1
            TabOrder = 3
            Visible = False
          end
        end
        object DBContas: TDBGrid
          Left = 77
          Top = 30
          Width = 459
          Height = 173
          CustomHint = BalloonHint
          Align = alClient
          DataSource = Dfrp
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBListaDblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'pcgcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcgidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'seacodigo'
              Title.Caption = 'T'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfpoperacao'
              Visible = True
            end>
        end
      end
      object frczeradas: TDBEdit
        Left = 172
        Top = 84
        Width = 26
        Height = 21
        CustomHint = BalloonHint
        DataField = 'frczeradas'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object frcparcial: TDBEdit
        Left = 172
        Top = 57
        Width = 26
        Height = 21
        CustomHint = BalloonHint
        DataField = 'frcparcial'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = frcparcialExit
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 280
    Top = 0
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'select * from cfg')
    Left = 324
    Top = 60
  end
  inherited consulta: TUniQuery
    Left = 376
    Top = 44
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select frcchave, clbcodigo, frcdtinicial,frcdtfinal, frczeradas,' +
        'frcparcial from frc where frcchave=:frcchave and clbcodigo=:clbc' +
        'odigo')
    BeforePost = registroBeforePost
    Left = 444
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'frcchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object registrofrcchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'frcchave'
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
    end
    object registrofrcdtinicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'frcdtinicial'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registrofrcdtfinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'frcdtfinal'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registrofrczeradas: TIntegerField
      DisplayLabel = 'Imprimir contas sem movimento'
      FieldName = 'frczeradas'
      Required = True
    end
    object registrosenzeradas: TStringField
      FieldKind = fkLookup
      FieldName = 'senzeradas'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'frczeradas'
      Size = 5
      Lookup = True
    end
    object registrofrcparcial: TIntegerField
      FieldName = 'frcparcial'
      Required = True
    end
    object registrosenparcial: TStringField
      FieldKind = fkLookup
      FieldName = 'senparcial'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'frcparcial'
      Size = 5
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 456
    Top = 104
  end
  inherited dtb: TUniQuery
    Left = 420
    Top = 140
  end
  inherited coa: TUniQuery
    Left = 344
    Top = 140
  end
  inherited pfr: TUniQuery
    Left = 236
    Top = 65520
  end
  inherited psf: TUniQuery
    Left = 336
    Top = 0
  end
  inherited dcl: TUniQuery
    Left = 340
    Top = 65520
  end
  inherited cpg: TUniQuery
    Top = 256
  end
  inherited cpc: TUniQuery
    Left = 37
    Top = 361
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object rza: TUniQuery
    SQL.Strings = (
      
        'select rmgchave, clbcodigo, flacodigo, phgcodigo, rmgdata, rmgva' +
        'lor, rmgcomplemento, pcgcodigo, cedcodigo, pcgcontra,rzaoperacao' +
        ' from rza order by flacodigo, pcgcodigo,rmgdata')
    Left = 312
    Top = 356
    object rzarmgchave: TIntegerField
      FieldName = 'rmgchave'
    end
    object rzaflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object rzaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object rzaphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object rzarmgdata: TDateField
      FieldName = 'rmgdata'
    end
    object rzarmgvalor: TFloatField
      FieldName = 'rmgvalor'
    end
    object rzarmgcomplemento: TStringField
      FieldName = 'rmgcomplemento'
      Size = 300
    end
    object rzapcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object rzacedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object rzapcgcontra: TIntegerField
      FieldName = 'pcgcontra'
    end
    object rzarzaoperacao: TIntegerField
      FieldName = 'rzaoperacao'
    end
  end
  object fcb: TUniQuery
    SQL.Strings = (
      
        'select fcbchave, flacodigo, clbcodigo, fcbmarca from fcb where c' +
        'lbcodigo=:clbcodigo')
    OnCalcFields = fcbCalcFields
    Left = 312
    Top = 412
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object fcbfcbchave: TIntegerField
      FieldName = 'fcbchave'
    end
    object fcbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object fcbflacodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'flacodigo'
    end
    object fcbflaidentificacao: TStringField
      DisplayLabel = 'Filial'
      FieldKind = fkLookup
      FieldName = 'flaidentificacao'
      LookupDataSet = fla
      LookupKeyFields = 'flacodigo'
      LookupResultField = 'flaidentificacao'
      KeyFields = 'flacodigo'
      Size = 50
      Lookup = True
    end
    object fcbfcbmarca: TIntegerField
      FieldName = 'fcbmarca'
    end
    object fcbmarca: TStringField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'marca'
      Size = 1
      Calculated = True
    end
  end
  object Dfcb: TUniDataSource
    DataSet = fcb
    Left = 344
    Top = 412
  end
  object fla: TUniQuery
    SQL.Strings = (
      'select flacodigo, flaidentificacao from fla')
    Left = 524
    Top = 96
    object flaflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object flaflaidentificacao: TStringField
      FieldName = 'flaidentificacao'
      Size = 50
    end
  end
  object frp: TUniQuery
    SQL.Strings = (
      
        'select frpchave, frcchave, frp.pcgcodigo, pcg.seacodigo, pcgiden' +
        'tificacao,cfpcodigo from frp,pcg where frp.pcgcodigo=pcg.pcgcodi' +
        'go')
    OnCalcFields = frpCalcFields
    Left = 432
    Top = 228
    object frpfrpchave: TIntegerField
      FieldName = 'frpchave'
    end
    object frpfrcchave: TIntegerField
      FieldName = 'frcchave'
    end
    object frppcgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pcgcodigo'
    end
    object frppcgidentificacao: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'pcgidentificacao'
      Size = 50
    end
    object frpseacodigo: TIntegerField
      FieldName = 'seacodigo'
    end
    object frpcfpoperacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'cfpoperacao'
      Calculated = True
    end
    object frpcfpcodigo: TIntegerField
      FieldName = 'cfpcodigo'
    end
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'select pcgcodigo, pcgidentificacao from pcg')
    Left = 548
    Top = 28
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 50
    end
  end
  object Dfrp: TUniDataSource
    DataSet = frp
    Left = 372
    Top = 232
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 316
    Top = 232
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object rmg: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '  rmgchave,'
      '  mlg.flacodigo,'
      '  rmg.phgcodigo,'
      '  rmgdata,'
      '  rmgvalor,'
      '  rmgcomplemento,'
      '  rmg.pcgcodigo,'
      '  rmg.cedcodigo,'
      '  phg.phgidentificacao '
      ' '
      'FROM rmg,'
      '     fla,'
      '     fcb,'
      '     frp,'
      '     frc,'
      '     frf,'
      '     mlg,'
      '     phg'
      'WHERE rmg.mlgchave = mlg.mlgchave'
      'AND mlg.flacodigo = fla.flacodigo'
      'AND fla.flacodigo = fcb.flacodigo'
      'AND fcb.fcbmarca = 1'
      'AND frc.frcchave = frp.frcchave'
      'AND frc.frcchave = frf.frcchave'
      'AND rmg.phgcodigo = phg.phgcodigo'
      'and fcb.clbcodigo=:clbcodigo '
      'and rmg.rmgdata>=:datainicial'
      'and rmg.rmgdata<=:datafinal'
      'AND rmg.pcgcodigo = frp.pcgcodigo')
    OnCalcFields = rmgCalcFields
    Left = 372
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datainicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datafinal'
        Value = nil
      end>
    object rmgrmgchave: TIntegerField
      FieldName = 'rmgchave'
    end
    object rmgflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object rmgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object rmgrmgdata: TDateField
      FieldName = 'rmgdata'
    end
    object rmgrmgvalor: TFloatField
      FieldName = 'rmgvalor'
    end
    object rmgrmgcomplemento: TStringField
      FieldName = 'rmgcomplemento'
      Size = 300
    end
    object rmgrzaoperacao: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'rzaoperacao'
      Calculated = True
    end
    object rmgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object rmgcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object rmgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
  object frxDialogControls: TfrxDialogControls
    Left = 119
    Top = 60
  end
  object frxBarCodeObject: TfrxBarCodeObject
    Left = 227
    Top = 72
  end
  object frxCrossObject: TfrxCrossObject
    Left = 200
    Top = 268
  end
  object frxDados: TfrxDBDataset
    UserName = 'frxDados'
    CloseDataSource = False
    DataSet = rza
    BCDToCurrency = False
    Left = 200
    Top = 316
  end
  object frxUniDACComponents: TfrxUniDACComponents
    Left = 120
    Top = 192
  end
  object frxDesigner: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 208
    Top = 204
  end
  object frxReport: TfrxReport
    Version = '5.5.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41180.374187615740000000
    ReportOptions.LastChange = 41180.374187615740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 116
    Top = 248
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frf: TUniQuery
    SQL.Strings = (
      'select frcchave, flacodigo from frf')
    Left = 428
    Top = 288
    object frffrcchave: TIntegerField
      FieldName = 'frcchave'
    end
    object frfflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object zeradas: TUniQuery
    Left = 192
    Top = 408
  end
end
