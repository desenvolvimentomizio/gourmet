inherited fdtb: Tfdtb
  ActiveControl = dtbcodigo
  Caption = 'Descri'#231#227'o da Tabela'
  ClientHeight = 228
  ClientWidth = 573
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 199
    Width = 573
    inherited bconfirma: TBitBtn
      Left = 419
    end
    inherited bcancela: TBitBtn
      Left = 494
    end
    inherited bfechar: TBitBtn
      Left = 354
    end
  end
  inherited paginas: TPageControl
    Width = 573
    Height = 199
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = dtbcodigo
      end
      object Label2: TLabel
        Left = 9
        Top = 30
        Width = 32
        Height = 13
        Caption = 'Tabela'
        FocusControl = dtbtabela
      end
      object Label3: TLabel
        Left = 9
        Top = 57
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object dtbcodigo: TDBEdit
        Left = 136
        Top = 0
        Width = 41
        Height = 21
        DataField = 'dtbcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object dtbtabela: TDBEdit
        Left = 136
        Top = 27
        Width = 422
        Height = 21
        DataField = 'dtbtabela'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object dtbdescricao: TDBMemo
        Left = 136
        Top = 54
        Width = 425
        Height = 115
        DataField = 'dtbdescricao'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select dtbcodigo,dtbtabela,dtbdescricao from dtb where dtb.dtbco' +
        'digo=:dtbcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtbcodigo'
      end>
    object registrodtbcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'dtbcodigo'
      Required = True
    end
    object registrodtbtabela: TStringField
      DisplayLabel = 'Tabela'
      FieldName = 'dtbtabela'
      Size = 50
    end
    object registrodtbdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'dtbdescricao'
      Size = 250
    end
  end
end
