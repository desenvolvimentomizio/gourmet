object fUnimFormClb: TfUnimFormClb
  Left = 0
  Top = 0
  ClientHeight = 544
  ClientWidth = 506
  Caption = 'Selecione os Colaboradores:'
  BorderIcons = []
  CloseButton.Visible = False
  TitleButtons = <>
  OnClose = UnimFormClose
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object UnimDBGridClb: TUnimDBGrid
    Left = 0
    Top = 0
    Width = 506
    Height = 494
    Hint = ''
    Align = alClient
    DataSource = UniDataSourceClb
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'       var _h' +
        'eight = 40;'#13#10#13#10'    config.itemConfig = {'#13#10'        height: _heigh' +
        't'#13#10'    };'#13#10#13#10'    config.headerContainer = {'#13#10'        height: _he' +
        'ight'#13#10'    };'#13#10'    '#13#10' '#13#10'}')
    Options = [dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete]
    WebOptions.Paged = False
    Font.Height = -20
    OnClick = UnimDBGridClbClick
    Columns = <
      item
        Font.Height = -27
        Title.Caption = 'Sele'#231#227'o'
        Title.Font.Height = -24
        FieldName = 'clbmarca'
        Width = 100
      end
      item
        Font.Height = -27
        Title.Caption = 'Colaborador'
        Title.Font.Height = -24
        FieldName = 'clbidentificacao'
        Width = 350
      end>
  end
  object UnimPanel1: TUnimPanel
    Left = 0
    Top = 494
    Width = 506
    Height = 50
    Hint = ''
    Align = alBottom
    object UnimBitBtn1: TUnimBitBtn
      AlignWithMargins = True
      Left = 230
      Top = 4
      Width = 133
      Height = 42
      Hint = ''
      Align = alRight
      Caption = 'Confirma'
      OnClick = UnimBitBtn1Click
    end
    object UnimBitBtnCancela: TUnimBitBtn
      AlignWithMargins = True
      Left = 369
      Top = 4
      Width = 133
      Height = 42
      Hint = ''
      Align = alRight
      Caption = 'Cancela'
      OnClick = UnimBitBtnCancelaClick
    end
  end
  object UniDataSourceClb: TUniDataSource
    DataSet = UniMainModule.clb
    Left = 240
    Top = 208
  end
end
