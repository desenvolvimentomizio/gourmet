inherited fidm: Tfidm
  Caption = 'Sele'#231#227'o para envio'
  ClientHeight = 635
  ClientWidth = 750
  ExplicitWidth = 766
  ExplicitHeight = 674
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 606
    Width = 750
    inherited bconfirma: TBitBtn
      Left = 596
    end
    inherited bcancela: TBitBtn
      Left = 671
    end
    inherited bfechar: TBitBtn
      Left = 531
    end
  end
  inherited paginas: TPageControl
    Width = 750
    Height = 606
    inherited Principal: TTabSheet
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 742
        Height = 41
        CustomHint = BalloonHint
        Align = alTop
        Caption = 'Panel1'
        TabOrder = 0
        ExplicitLeft = 248
        ExplicitTop = 344
        ExplicitWidth = 185
      end
      object DBGListaete: TDBGrid
        Left = 0
        Top = 41
        Width = 742
        Height = 537
        CustomHint = BalloonHint
        Align = alClient
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select mdrchave from mdr where mdrchave=:mdrchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdrchave'
        Value = nil
      end>
    object registromdrchave: TIntegerField
      FieldName = 'mdrchave'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  0 idmmarca,'
      '  etd.etdcodigo,'
      '  etdidentificacao,'
      '  etdapelido,'
      '  ete.etecodigo,'
      '  eteemail,'
      '  etecontato'
      'FROM etd,'
      '     ete'
      'WHERE '
      ' etd.etdcodigo = ete.etdcodigo')
    Left = 284
    Top = 216
    object etdidmmarca: TIntegerField
      DisplayLabel = 'M'
      FieldName = 'idmmarca'
    end
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      DisplayLabel = 'Raz'#227'o Social ou Nome'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object etdetdapelido: TStringField
      FieldName = 'etdapelido'
      Size = 50
    end
    object etdetecodigo: TIntegerField
      FieldName = 'etecodigo'
    end
    object etdeteemail: TStringField
      FieldName = 'eteemail'
      Size = 200
    end
    object etdetecontato: TStringField
      FieldName = 'etecontato'
      Size = 30
    end
  end
  object Detd: TDataSource
    DataSet = etd
    Left = 308
    Top = 216
  end
end
