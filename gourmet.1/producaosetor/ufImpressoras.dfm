object fImpressoras: TfImpressoras
  Left = 0
  Top = 0
  ClientHeight = 555
  ClientWidth = 494
  Caption = 'Setor'
  TitleButtons = <>
  OnClose = UnimFormClose
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimDBGridPedidos: TUnimDBGrid
    Left = 0
    Top = 0
    Width = 494
    Height = 480
    Hint = ''
    Align = alClient
    DataSource = UniDataSourceMit
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'    var _heig' +
        'ht = 35;'#13#10#13#10'    config.itemConfig = {'#13#10'        height: _height'#13#10 +
        '    };'#13#10#13#10'    config.headerContainer = {'#13#10'        height: _heigh' +
        't'#13#10'    };'#13#10'    '#13#10'   '#13#10'    '#13#10'}')
    Options = [dgRowLines, dgConfirmDelete, dgAutoRefreshRow]
    WebOptions.Paged = False
    WebOptions.FetchAll = True
    ShowEditorOnEdit = False
    Font.Height = -27
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    Font.OverrideDefaults = [ovFontHeight]
    Columns = <
      item
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Title.Caption = 'mitidentificacao'
        FieldName = 'mitidentificacao'
        Width = 400
      end>
  end
  object UnimPanelSelecao: TUnimPanel
    AlignWithMargins = True
    Left = 3
    Top = 483
    Width = 488
    Height = 69
    Hint = ''
    Align = alBottom
    ExplicitTop = 408
    ExplicitWidth = 457
    object UnimBitBtnSelecionar: TUnimBitBtn
      Left = 1
      Top = 1
      Width = 486
      Height = 63
      Hint = ''
      Align = alTop
      Caption = 
        '<button type="button" class="btn btn-primary btn-lg btn-block"> ' +
        '         Selecionar Setor       </button>'
      Font.Color = clNavy
      Font.Height = -27
      Font.Style = [fsBold]
      Font.OverrideDefaults = [ovFontName, ovFontHeight]
      LayoutConfig.Padding = '5'
      LayoutConfig.Margin = '5'
      OnClick = UnimBitBtnSelecionarClick
      ExplicitWidth = 455
    end
  end
  object UniDataSourceMit: TUniDataSource
    DataSet = UniMainModule.mit
    Left = 72
    Top = 192
  end
end
