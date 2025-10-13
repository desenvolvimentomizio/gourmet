object frfr: Tfrfr
  Left = 0
  Top = 0
  Caption = 'Central de Relat'#243'rios'
  ClientHeight = 605
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object FileListBox1: TFileListBox
    Left = 0
    Top = 0
    Width = 754
    Height = 576
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 14
    Mask = 'c:\Superrelat\*.fr3'
    ParentFont = False
    TabOrder = 0
    OnClick = FileListBox1Click
  end
  object Edit1: TEdit
    Left = 15
    Top = 517
    Width = 269
    Height = 21
    TabOrder = 1
    Visible = False
  end
  object pbotoes: TPanel
    Left = 0
    Top = 576
    Width = 754
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 2
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Pesquisando'
      Color = 4227327
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
    object bconfirma: TBitBtn
      Left = 600
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Imprimir'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bfechar: TBitBtn
      Left = 675
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = bfecharClick
    end
    object bnovo: TBitBtn
      Left = 450
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Novo'
      TabOrder = 3
      OnClick = bnovoClick
    end
    object bedita: TBitBtn
      Left = 525
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Editar'
      TabOrder = 4
      OnClick = beditaClick
    end
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
    Left = 96
    Top = 122
  end
  object frxBarCodeObject: TfrxBarCodeObject
    Left = 263
    Top = 68
  end
  object frxCrossObject: TfrxCrossObject
    Left = 264
    Top = 120
  end
  object frxDialogControls: TfrxDialogControls
    Left = 263
    Top = 16
  end
  object DSdados: TUniDataSource
    AutoEdit = False
    Left = 95
    Top = 249
  end
  object frxDados: TfrxDBDataset
    UserName = 'frxDados'
    CloseDataSource = False
    DataSource = DSdados
    BCDToCurrency = False
    Left = 96
    Top = 184
  end
  object frxReport: TfrxReport
    Version = '6.9.14'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.AllowEdit = False
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.DoubleBuffered = False
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41882.460103402800000000
    ReportOptions.LastChange = 41882.466562951400000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnUserFunction = frxReportUserFunction
    Left = 96
    Top = 64
  end
  object frxUniDACComponents: TfrxUniDACComponents
    Left = 95
    Top = 304
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 512
    Top = 132
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 512
    Top = 184
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 512
    Top = 79
  end
  object frxHTML5DivExport1: TfrxHTML5DivExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    MultiPage = False
    Formatted = False
    PictureFormat = pfPNG
    UnifiedPictures = True
    Navigation = False
    EmbeddedPictures = True
    EmbeddedCSS = True
    Outline = False
    HTML5 = True
    AllPictures = False
    ExportAnchors = True
    PictureTag = 0
    Left = 408
    Top = 185
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbeddedFonts = True
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = True
    PDFStandard = psPDFA_2a
    PDFVersion = pv17
    Left = 408
    Top = 79
  end
  object frxCSVExport1: TfrxCSVExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Separator = ';'
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    NoSysSymbols = True
    ForcedQuotes = False
    Left = 408
    Top = 133
  end
  object frxDotMatrixExport1: TfrxDotMatrixExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EscModel = 0
    GraphicFrames = False
    SaveToFile = False
    UseIniSettings = True
    Left = 408
    Top = 248
  end
  object consulta: TUniQuery
    Left = 400
    Top = 336
  end
  object frxRichObject1: TfrxRichObject
    Left = 263
    Top = 172
  end
  object frxChartObject1: TfrxChartObject
    Left = 263
    Top = 224
  end
  object frxGradientObject1: TfrxGradientObject
    Left = 262
    Top = 280
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 264
    Top = 336
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    UTF8 = False
    OpenAfterExport = False
    DeleteEmptyColumns = True
    Left = 504
    Top = 240
  end
  object cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgcodigo, cfgprevisualizarimpressao from cfgmsai where c' +
        'fgcodigo=:flacodigo')
    Left = 512
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgprevisualizarimpressao: TIntegerField
      FieldName = 'cfgprevisualizarimpressao'
    end
  end
end
