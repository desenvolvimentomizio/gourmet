object lcaixaentregadores: Tlcaixaentregadores
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Fechar caixa do entregador'
  ClientHeight = 379
  ClientWidth = 996
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 19
  object listaOrcs: TDBGrid
    Left = 0
    Top = 0
    Width = 996
    Height = 330
    Align = alClient
    BorderStyle = bsNone
    Color = 14349255
    DataSource = Dclb
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -24
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'clbcodigo'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clbidentificacao'
        Width = 404
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'maquina'
        Width = 430
        Visible = True
      end>
  end
  object plBotoes: TPanel
    Left = 0
    Top = 330
    Width = 996
    Height = 49
    Align = alBottom
    BorderWidth = 6
    TabOrder = 1
    object btConfirma: TButton
      Left = 749
      Top = 7
      Width = 120
      Height = 35
      Align = alRight
      Caption = 'Confirma'
      ModalResult = 1
      TabOrder = 0
    end
    object btCancela: TButton
      Left = 869
      Top = 7
      Width = 120
      Height = 35
      Align = alRight
      Caption = 'Cancela'
      ModalResult = 2
      TabOrder = 1
    end
    object btSelecionarMaquinaPOS: TButton
      Left = 7
      Top = 7
      Width = 258
      Height = 35
      Align = alLeft
      Caption = 'Selecionar Maquina POS'
      TabOrder = 2
      OnClick = btSelecionarMaquinaPOSClick
    end
  end
  object Dclb: TDataSource
    DataSet = FprinciEntregas.clbcax
    Left = 312
    Top = 144
  end
  object consulta: TUniQuery
    Connection = FprinciEntregas.Conexao
    Left = 360
    Top = 128
  end
end
