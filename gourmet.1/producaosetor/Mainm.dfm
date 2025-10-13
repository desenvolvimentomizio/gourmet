object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 606
  Caption = 'TODOS SETORES - Controle de Produ'#231#227'o'
  OnShow = UnimFormShow
  BorderIcons = []
  ClientEvents.UniEvents.Strings = (
    
      'window.beforeInit=function window.beforeInit(sender, config)'#13#10'{'#13 +
      #10'    '#13#10'  var _height = 40;'#13#10#13#10'    config.itemConfig = {'#13#10'       ' +
      ' height: _height'#13#10'    };'#13#10#13#10'    config.headerContainer = {'#13#10'    ' +
      '    height: _height'#13#10'    };'#13#10#13#10' config.itemTpl='#13#10#39'<table style="' +
      'width:100%;white-space:nowrap;vertical-align:middle;">'#39'+'#13#10#39'<tr>'#39 +
      '+'#13#10#39'<td style="color:#000000;font-weight:700;padding-left:5px;" ' +
      'colspan="2">{0}</td>'#39'+'#13#10#39'</tr>'#39'+'#13#10#39'</tr>'#39'+'#13#10#39'</table>'#39';'#13#10'}')
  ScreenMask.ShowMessage = False
  CloseButton.Visible = False
  TitleButtons = <>
  OnCreate = UnimFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object unimPltopo: TUnimPanel
    Left = 0
    Top = 0
    Width = 606
    Height = 35
    Hint = ''
    Align = alTop
    object lbRelogio: TUnimLabel
      AlignWithMargins = True
      Left = 207
      Top = 4
      Width = 128
      Height = 27
      Hint = ''
      AutoSize = False
      Caption = '00:00:00'
      Align = alLeft
      ParentFont = False
    end
    object UnimBitBtn1: TUnimBitBtn
      Left = 478
      Top = 1
      Width = 127
      Height = 33
      Hint = ''
      Align = alRight
      Caption = 'Atualizar'
      OnClick = UnimBitBtn1Click
    end
    object UnimBitBtn2: TUnimBitBtn
      Left = 351
      Top = 1
      Width = 127
      Height = 33
      Hint = ''
      Align = alRight
      Caption = 'Setor'
      OnClick = UnimBitBtn2Click
    end
    object UnimLabel1: TUnimLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 197
      Height = 27
      Hint = ''
      AutoSize = False
      Caption = 'PODE ATUALIZAR'
      Align = alLeft
      ParentFont = False
    end
  end
  object UnimDBGridPedidos: TUnimDBGrid
    Left = 0
    Top = 35
    Width = 606
    Height = 370
    Hint = ''
    Align = alClient
    DataSource = UniDataSourceImm
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
    OnClick = UnimDBGridPedidosClick
    Columns = <
      item
        EditorItems.Strings = (
          '0'
          '1')
        Font.Height = -31
        Font.Name = 'Cambria'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Font.Quality = fqClearType
        Font.OverrideDefaults = [ovFontHeight]
        AllowHTML = True
        Title.Caption = ' '
        FieldName = 'marca'
        Width = 75
        ReadOnly = True
        CheckBoxField.AutoPost = True
        CheckBoxField.FieldValues = #39'1'#39';'#39'0'#39
      end
      item
        UseDefaultEditor = True
        Font.Height = -31
        Font.Name = 'Cambria'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Font.OverrideDefaults = [ovFontHeight]
        Title.Caption = 'Nr.Ped.'
        Title.Font.Height = -19
        Title.Font.Pitch = fpVariable
        Title.Font.Quality = fqAntialiased
        FieldName = 'pdgnumero'
        Width = 110
        ReadOnly = True
      end
      item
        Font.Height = -31
        Font.Name = 'Cambria'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Title.Caption = 'Setor'
        FieldName = 'immdestino'
        Width = 110
      end
      item
        UseDefaultEditor = True
        Font.Height = -31
        Font.Name = 'Cambria'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Font.Quality = fqClearType
        Font.OverrideDefaults = [ovFontHeight]
        AllowHTML = True
        Title.Caption = 'Produto'
        Title.Font.Height = -19
        Title.Font.Pitch = fpVariable
        Title.Font.Quality = fqAntialiased
        FieldName = 'pronome'
        Width = 350
        ReadOnly = True
      end
      item
        Font.Height = -31
        Font.Name = 'Cambria'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Title.Caption = 'Hora'
        FieldName = 'horapedido'
        Visible = False
        Width = 134
        ReadOnly = True
      end
      item
        Font.Height = -31
        Font.Name = 'Cambria'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Title.Caption = 'Tempo'
        Title.Font.Height = -20
        FieldName = 'tempo'
        Width = 130
        ReadOnly = True
      end
      item
        Font.Height = -31
        Font.Name = 'Cambria'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        Title.Caption = 'Setor'
        FieldName = 'mitidentificacao'
        Width = 180
        ReadOnly = True
      end>
  end
  object UnimPanelSelecao: TUnimPanel
    AlignWithMargins = True
    Left = 3
    Top = 408
    Width = 600
    Height = 69
    Hint = ''
    Align = alBottom
    object UnimBitBtnSelecionar: TUnimBitBtn
      Left = 1
      Top = 1
      Width = 598
      Height = 63
      Hint = ''
      Align = alTop
      Caption = 
        '<button type="button" class="btn btn-primary btn-lg btn-block"> ' +
        '         Selecionar Colaborador       </button>'
      Font.Color = clNavy
      Font.Height = -27
      Font.Style = [fsBold]
      Font.OverrideDefaults = [ovFontName, ovFontHeight]
      LayoutConfig.Padding = '5'
      LayoutConfig.Margin = '5'
      OnClick = UnimBitBtnSelecionarClick
    end
  end
  object UniDataSourceImm: TUniDataSource
    DataSet = UniMainModule.imm
    Left = 72
    Top = 192
  end
  object AtualzadorAutomatico: TUnimTimer
    Interval = 5000
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = AtualzadorAutomaticoTimer
    Left = 184
    Top = 192
  end
end
