object ffiltrocoluna: Tffiltrocoluna
  Left = 0
  Top = 0
  Caption = 'Filtro de Coluna'
  ClientHeight = 473
  ClientWidth = 233
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnMouseLeave = FormMouseLeave
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object plrodape: TPanel
    Left = 0
    Top = 436
    Width = 233
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 0
    object btCancela: TButton
      Left = 154
      Top = 4
      Width = 75
      Height = 29
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 0
      OnClick = btCancelaClick
    end
    object btConfirma: TButton
      Left = 79
      Top = 4
      Width = 75
      Height = 29
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = btConfirmaClick
    end
    object plregistros: TPanel
      Left = 4
      Top = 4
      Width = 75
      Height = 29
      Align = alClient
      BevelOuter = bvNone
      Caption = '0'
      TabOrder = 2
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 233
    Height = 105
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object plbuscaFiltro: TPanel
      Left = 0
      Top = 72
      Width = 233
      Height = 33
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 9
        Top = 12
        Width = 46
        Height = 13
        Caption = 'Pesquisar'
      end
      object edPesquisar: TEdit
        Left = 67
        Top = 8
        Width = 160
        Height = 21
        TabOrder = 0
      end
    end
  end
  object plCentroPesquisa: TPanel
    Left = 0
    Top = 105
    Width = 233
    Height = 331
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 2
    object DBGLista: TDBGrid
      Left = 1
      Top = 19
      Width = 231
      Height = 311
      Align = alClient
      BorderStyle = bsNone
      DataSource = Dtmp
      Options = [dgColumnResize, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGListaCellClick
      OnDrawColumnCell = DBGListaDrawColumnCell
      OnDblClick = DBGListaDblClick
      OnKeyDown = DBGListaKeyDown
    end
    object plmarcartodos: TPanel
      Left = 1
      Top = 1
      Width = 231
      Height = 18
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object cbMarcar: TCheckBox
        Left = 25
        Top = 1
        Width = 145
        Height = 17
        Caption = '(Selecionar Tudo)'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = cbMarcarClick
      end
    end
  end
  object Dtmp: TUniDataSource
    DataSet = tmp
    Left = 72
    Top = 249
  end
  object tmp: TUniQuery
    Constraints = <>
    Left = 112
    Top = 273
  end
  object filtro: TUniQuery
    Constraints = <>
    Left = 176
    Top = 281
  end
  object consulta: TUniQuery
    Constraints = <>
    Left = 168
    Top = 233
  end
end
