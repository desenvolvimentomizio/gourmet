object FrmListaCaixas: TFrmListaCaixas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Lista de Caixas'
  ClientHeight = 369
  ClientWidth = 757
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 331
    Width = 757
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Panel9: TPanel
      Left = 495
      Top = 0
      Width = 262
      Height = 38
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BtnConfirmar: TButton
        Left = 6
        Top = 6
        Width = 120
        Height = 31
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BtnConfirmarClick
      end
      object Button2: TButton
        Left = 132
        Top = 4
        Width = 120
        Height = 31
        Caption = '&Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button2Click
      end
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 757
    Height = 331
    Align = alClient
    Color = clCream
    DataSource = DmDados.Dccx
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'ccxchave'
        Title.Caption = 'Caixa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ccxdataber'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ccxhoraaber'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ccxsaldofecha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ccxdatafecha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ccxhorafecha'
        Visible = True
      end>
  end
end
