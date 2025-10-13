object fbiome: Tfbiome
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Registro Biom'#233'trica'
  ClientHeight = 352
  ClientWidth = 248
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblCallback: TLabel
    Left = 40
    Top = 329
    Width = 49
    Height = 16
    AutoSize = False
    Caption = '*'
  end
  object clbidentificacao: TDBText
    Left = 8
    Top = 235
    Width = 232
    Height = 17
    DataField = 'clbidentificacao'
    DataSource = Dclb
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 16
    Top = 8
    Width = 120
    Height = 13
    Caption = 'Selecione o Colaborador:'
  end
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 101
    Height = 13
    Caption = 'Pesquisar pelo nome '
  end
  object bregistra: TButton
    Left = 107
    Top = 290
    Width = 63
    Height = 25
    Caption = 'Registrar'
    TabOrder = 0
    OnClick = bregistraClick
  end
  object EdtUserID: TEdit
    Left = 8
    Top = 258
    Width = 32
    Height = 21
    TabStop = False
    ImeName = 'Microsoft IME 2003'
    ReadOnly = True
    TabOrder = 1
    Text = '1'
    Visible = False
  end
  object LVUsers: TListView
    Left = 268
    Top = 18
    Width = 365
    Height = 151
    Columns = <
      item
        Caption = 'User ID'
        Width = 105
      end
      item
        Caption = 'FP ID'
        Width = 110
      end
      item
        Caption = 'Sample NO.'
        Width = 110
      end>
    GridLines = True
    ReadOnly = True
    RowSelect = True
    TabOrder = 2
    ViewStyle = vsReport
    Visible = False
  end
  object Button1: TButton
    Left = 176
    Top = 290
    Width = 64
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object LVCandidate: TListView
    Left = 268
    Top = 192
    Width = 365
    Height = 106
    Columns = <
      item
        Caption = 'User ID'
        Width = 80
      end
      item
        Caption = 'FP ID'
        Width = 80
      end
      item
        Caption = 'Sample NO.'
        Width = 82
      end
      item
        Caption = 'Confidence'
        Width = 83
      end>
    GridLines = True
    ReadOnly = True
    RowSelect = True
    TabOrder = 4
    ViewStyle = vsReport
    Visible = False
  end
  object DBGridClb: TDBGrid
    Left = 8
    Top = 64
    Width = 225
    Height = 161
    DataSource = Dclb
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'clbcodigo'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clbidentificacao'
        Width = 140
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 8
    Top = 290
    Width = 65
    Height = 25
    Caption = 'Remover'
    TabOrder = 6
    OnClick = Button2Click
  end
  object EditPesquisa: TEdit
    Left = 115
    Top = 37
    Width = 118
    Height = 21
    TabOrder = 7
    OnKeyUp = EditPesquisaKeyUp
  end
  object Dclb: TDataSource
    DataSet = clb
    OnDataChange = DclbDataChange
    Left = 200
    Top = 65524
  end
  object clb: TUniQuery
    SQL.Strings = (
      
        'select clbcodigo, clbidentificacao,clbcodigobio from clb where c' +
        'lbrelogio=1 order by clbidentificacao')
    Left = 168
    Top = 65528
    object clbclbcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'clbidentificacao'
      Size = 50
    end
    object clbclbcodigobio: TStringField
      FieldName = 'clbcodigobio'
      Size = 250
    end
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgarquivobio'
      'FROM cfgmflh where cfgcodigo=:cfgcodigo')
    Left = 104
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgarquivobio: TBlobField
      FieldName = 'cfgarquivobio'
    end
  end
end
