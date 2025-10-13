inherited fffi: Tfffi
  ActiveControl = fficodigo
  Caption = 'Finalizador Financeiro'
  ClientHeight = 224
  ClientWidth = 508
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 195
    Width = 508
    inherited bconfirma: TBitBtn
      Left = 354
    end
    inherited bcancela: TBitBtn
      Left = 429
    end
    inherited bfechar: TBitBtn
      Left = 289
    end
  end
  inherited paginas: TPageControl
    Width = 508
    Height = 195
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 13
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = fficodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 40
        Width = 62
        Height = 13
        Caption = 'Identifica'#231#227'o'
        FocusControl = ffiidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 67
        Width = 20
        Height = 13
        Caption = 'Tipo'
      end
      object fficodigo: TDBEdit
        Left = 136
        Top = 10
        Width = 41
        Height = 21
        DataField = 'fficodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ffiidentificacao: TDBEdit
        Left = 136
        Top = 37
        Width = 353
        Height = 21
        DataField = 'ffiidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 136
        Top = 67
        Width = 353
        Height = 94
        Caption = '| Tipos |'
        DataField = 'ffitipo'
        DataSource = DSRegistro
        Items.Strings = (
          'Dinheiro'
          'Cheque'
          'Cart'#227'o'
          'Boleto'
          'Outros')
        ParentBackground = True
        TabOrder = 2
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '9')
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select fficodigo,ffiidentificacao,ffitipo from ffi where ffi.ffi' +
        'codigo=:fficodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fficodigo'
      end>
    object registrofficodigo: TIntegerField
      FieldName = 'fficodigo'
      Required = True
    end
    object registroffiidentificacao: TStringField
      FieldName = 'ffiidentificacao'
      Required = True
      Size = 35
    end
    object registroffitipo: TIntegerField
      FieldName = 'ffitipo'
      Required = True
    end
  end
end
