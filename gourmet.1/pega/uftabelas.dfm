object ftabelas: Tftabelas
  Left = 0
  Top = 0
  Caption = 'Tabelas do Sistema'
  ClientHeight = 564
  ClientWidth = 332
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
  object DBGridTabelas: TDBGrid
    Left = 0
    Top = 0
    Width = 332
    Height = 564
    Align = alClient
    DataSource = Dconsulta
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnTitleClick = DBGridTabelasTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'tabela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'registros'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'campos'
        Visible = True
      end>
  end
  object Dconsulta: TDataSource
    DataSet = tabes
    Left = 120
    Top = 144
  end
  object tabes: TVirtualTable
    Left = 104
    Top = 192
    Data = {03000000000000000000}
    object tabestabela: TStringField
      DisplayLabel = 'Tabela'
      FieldName = 'tabela'
      Size = 25
    end
    object tabesregistros: TIntegerField
      DisplayLabel = 'Registros'
      FieldName = 'registros'
    end
    object tabescampos: TIntegerField
      FieldName = 'campos'
    end
  end
end
