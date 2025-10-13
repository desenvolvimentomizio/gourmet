object fListaItens: TfListaItens
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Selecione o Item'
  ClientHeight = 693
  ClientWidth = 907
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
  object plRodaPe: TPanel
    Left = 0
    Top = 655
    Width = 907
    Height = 38
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 2
    TabOrder = 0
    object Panel9: TPanel
      Left = 643
      Top = 2
      Width = 262
      Height = 34
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object BtnConfirmar: TButton
        Left = 22
        Top = 0
        Width = 120
        Height = 34
        Align = alRight
        Caption = 'Confirma'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ModalResult = 1
        ParentFont = False
        TabOrder = 0
        OnClick = BtnConfirmarClick
      end
      object bcancela: TButton
        Left = 142
        Top = 0
        Width = 120
        Height = 34
        Align = alRight
        Caption = '&Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ModalResult = 2
        ParentFont = False
        TabOrder = 1
        OnClick = bcancelaClick
      end
    end
  end
  object lista: TDBGrid
    Left = 0
    Top = 0
    Width = 907
    Height = 655
    TabStop = False
    Align = alClient
    BorderStyle = bsNone
    Color = 13303807
    DataSource = Dlito
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'itoitem'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'procodigo'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pronome'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'itoquantidade'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'unisimbolo'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'itoacrescimototal'
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'itoacrescimosaldo'
        Title.Caption = 'Saldo R$'
        Width = 130
        Visible = True
      end>
  end
  object Dlito: TDataSource
    DataSet = FprinciEnt.lito
    Left = 368
    Top = 264
  end
end
