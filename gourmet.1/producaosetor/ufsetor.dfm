object fsetor: Tfsetor
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'S E T O R '
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
    Width = 320
    Height = 417
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
  object UnimBitBtnSelecionar: TUnimBitBtn
    Left = 0
    Top = 417
    Width = 320
    Height = 63
    Hint = ''
    Align = alBottom
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
    ExplicitLeft = -166
    ExplicitTop = 1
    ExplicitWidth = 486
  end
  object UniDataSourceMit: TUniDataSource
    DataSet = UniMainModule.mit
    Left = 72
    Top = 192
  end
end
